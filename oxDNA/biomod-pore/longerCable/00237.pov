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
	<24.105703, 34.905106, 35.323383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222900, 35.186893, 35.064808>,  <24.293219, 35.355965, 34.909664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222900, 35.186893, 35.064808>,  <24.105703, 34.905106, 35.323383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222900, 35.186893, 35.064808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805847, 0.181910, 0.563489,
		0.514554, -0.686025, -0.514396,
		0.292994, 0.704470, -0.646434,
		24.310799, 35.398235, 34.870876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843821, 34.934719, 35.389648>,  <24.105703, 34.905106, 35.323383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843821, 34.934719, 35.389648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103477, 34.720261, 35.605484>,  <25.259272, 34.591587, 35.734985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103477, 34.720261, 35.605484>,  <24.843821, 34.934719, 35.389648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103477, 34.720261, 35.605484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128140, 0.776306, 0.617195,
		-0.749795, -0.331505, 0.572635,
		0.649144, -0.536147, 0.539591,
		25.298220, 34.559418, 35.767361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558413, 34.779278, 36.049747>,  <24.843821, 34.934719, 35.389648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558413, 34.779278, 36.049747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954571, 34.813648, 36.006416>,  <25.192266, 34.834270, 35.980419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954571, 34.813648, 36.006416>,  <24.558413, 34.779278, 36.049747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954571, 34.813648, 36.006416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003919, 0.765696, 0.643190,
		0.138212, -0.637437, 0.758005,
		0.990395, 0.085926, -0.108327,
		25.251690, 34.839428, 35.973919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.742712, 34.900574, 36.642113>,  <24.558413, 34.779278, 36.049747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.742712, 34.900574, 36.642113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064693, 35.044025, 36.453037>,  <25.257883, 35.130096, 36.339592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064693, 35.044025, 36.453037>,  <24.742712, 34.900574, 36.642113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064693, 35.044025, 36.453037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111087, 0.691484, 0.713799,
		0.582843, -0.627086, 0.516775,
		0.804955, 0.358626, -0.472688,
		25.306181, 35.151615, 36.311230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251326, 35.048553, 37.130238>,  <24.742712, 34.900574, 36.642113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251326, 35.048553, 37.130238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336103, 35.285969, 36.819679>,  <25.386971, 35.428417, 36.633347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336103, 35.285969, 36.819679>,  <25.251326, 35.048553, 37.130238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336103, 35.285969, 36.819679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227596, 0.742621, 0.629853,
		0.950411, -0.310197, 0.022306,
		0.211944, 0.593542, -0.776394,
		25.399687, 35.464031, 36.586761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990255, 35.298168, 37.183132>,  <25.251326, 35.048553, 37.130238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990255, 35.298168, 37.183132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782587, 35.593979, 37.011757>,  <25.657986, 35.771465, 36.908932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782587, 35.593979, 37.011757>,  <25.990255, 35.298168, 37.183132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782587, 35.593979, 37.011757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438034, 0.660682, 0.609610,
		0.733886, 0.128820, -0.666945,
		-0.519169, 0.739529, -0.428438,
		25.626837, 35.815838, 36.883224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369160, 35.787056, 37.317192>,  <25.990255, 35.298168, 37.183132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369160, 35.787056, 37.317192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021914, 35.981625, 37.277645>,  <25.813566, 36.098366, 37.253918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021914, 35.981625, 37.277645>,  <26.369160, 35.787056, 37.317192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021914, 35.981625, 37.277645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292571, 0.662339, 0.689717,
		0.400976, 0.569827, -0.717297,
		-0.868113, 0.486420, -0.098867,
		25.761480, 36.127552, 37.247986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446354, 36.500736, 36.991463>,  <26.369160, 35.787056, 37.317192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446354, 36.500736, 36.991463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164032, 36.462967, 37.272297>,  <25.994638, 36.440308, 37.440796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164032, 36.462967, 37.272297>,  <26.446354, 36.500736, 36.991463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164032, 36.462967, 37.272297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610313, 0.422128, 0.670318,
		-0.359660, 0.901606, -0.240315,
		-0.705807, -0.094420, 0.702084,
		25.952290, 36.434643, 37.482922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758047, 36.945019, 37.444347>,  <26.446354, 36.500736, 36.991463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758047, 36.945019, 37.444347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457092, 36.783428, 37.652470>,  <26.276520, 36.686474, 37.777344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457092, 36.783428, 37.652470>,  <26.758047, 36.945019, 37.444347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457092, 36.783428, 37.652470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492324, 0.179917, 0.851614,
		-0.437640, 0.896904, 0.063518,
		-0.752388, -0.403972, 0.520306,
		26.231377, 36.662235, 37.808563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333496, 37.418316, 37.880993>,  <26.758047, 36.945019, 37.444347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333496, 37.418316, 37.880993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344385, 37.052204, 38.041752>,  <26.350920, 36.832539, 38.138206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344385, 37.052204, 38.041752>,  <26.333496, 37.418316, 37.880993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344385, 37.052204, 38.041752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454188, 0.369478, 0.810678,
		-0.890490, 0.160468, 0.425768,
		0.027224, -0.915279, 0.401899,
		26.352552, 36.777618, 38.162323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074650, 37.489624, 38.552643>,  <26.333496, 37.418316, 37.880993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074650, 37.489624, 38.552643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297575, 37.157738, 38.565132>,  <26.431330, 36.958607, 38.572628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297575, 37.157738, 38.565132>,  <26.074650, 37.489624, 38.552643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297575, 37.157738, 38.565132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453637, 0.335775, 0.825511,
		-0.695424, -0.445904, 0.563521,
		0.557315, -0.829714, 0.031227,
		26.464769, 36.908825, 38.574501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959843, 37.139778, 39.161568>,  <26.074650, 37.489624, 38.552643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959843, 37.139778, 39.161568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331444, 37.123608, 39.014423>,  <26.554405, 37.113907, 38.926136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331444, 37.123608, 39.014423>,  <25.959843, 37.139778, 39.161568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331444, 37.123608, 39.014423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344776, 0.455747, 0.820624,
		0.134477, -0.889191, 0.437327,
		0.929002, -0.040425, -0.367859,
		26.610144, 37.111481, 38.904064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430416, 36.903793, 39.764313>,  <25.959843, 37.139778, 39.161568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430416, 36.903793, 39.764313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589712, 37.102360, 39.455772>,  <26.685289, 37.221500, 39.270649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589712, 37.102360, 39.455772>,  <26.430416, 36.903793, 39.764313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589712, 37.102360, 39.455772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557214, 0.537053, 0.633314,
		0.728641, -0.682017, -0.062732,
		0.398240, 0.496414, -0.771348,
		26.709185, 37.251286, 39.224369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214083, 36.842228, 39.751499>,  <26.430416, 36.903793, 39.764313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214083, 36.842228, 39.751499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037209, 37.180874, 39.633030>,  <26.931084, 37.384060, 39.561947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037209, 37.180874, 39.633030>,  <27.214083, 36.842228, 39.751499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037209, 37.180874, 39.633030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395294, 0.480365, 0.782938,
		0.805117, 0.229127, -0.547071,
		-0.442186, 0.846611, -0.296177,
		26.904552, 37.434856, 39.544178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279463, 36.678562, 39.059750>,  <27.214083, 36.842228, 39.751499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279463, 36.678562, 39.059750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522285, 36.724964, 38.745293>,  <27.667978, 36.752804, 38.556618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522285, 36.724964, 38.745293>,  <27.279463, 36.678562, 39.059750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522285, 36.724964, 38.745293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381303, 0.825441, 0.416239,
		0.697202, -0.552440, 0.456858,
		0.607057, 0.116001, -0.786146,
		27.704403, 36.759766, 38.509449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414495, 36.173672, 38.424175>,  <27.279463, 36.678562, 39.059750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414495, 36.173672, 38.424175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141874, 36.260181, 38.703808>,  <26.978302, 36.312088, 38.871586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141874, 36.260181, 38.703808>,  <27.414495, 36.173672, 38.424175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141874, 36.260181, 38.703808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724772, -0.067706, -0.685654,
		-0.100959, -0.973982, 0.202896,
		-0.681552, 0.216277, 0.699079,
		26.937408, 36.325062, 38.913532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853233, 35.663406, 38.586437>,  <27.414495, 36.173672, 38.424175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853233, 35.663406, 38.586437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733315, 36.042675, 38.628563>,  <26.661364, 36.270237, 38.653839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733315, 36.042675, 38.628563>,  <26.853233, 35.663406, 38.586437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733315, 36.042675, 38.628563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673688, -0.132254, -0.727085,
		-0.675475, -0.288925, 0.678422,
		-0.299797, 0.948173, 0.105311,
		26.643375, 36.327126, 38.660156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130352, 35.715477, 38.854103>,  <26.853233, 35.663406, 38.586437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130352, 35.715477, 38.854103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220409, 36.020489, 38.611496>,  <26.274445, 36.203495, 38.465931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220409, 36.020489, 38.611496>,  <26.130352, 35.715477, 38.854103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220409, 36.020489, 38.611496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807063, -0.202795, -0.554548,
		-0.545856, 0.614351, 0.569748,
		0.225145, 0.762526, -0.606517,
		26.287952, 36.249249, 38.429543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525810, 36.092308, 38.764214>,  <26.130352, 35.715477, 38.854103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525810, 36.092308, 38.764214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726444, 36.249748, 38.456059>,  <25.846825, 36.344212, 38.271168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726444, 36.249748, 38.456059>,  <25.525810, 36.092308, 38.764214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726444, 36.249748, 38.456059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753847, -0.238016, -0.612424,
		-0.424416, 0.887933, 0.177332,
		0.501584, 0.393604, -0.770383,
		25.876919, 36.367828, 38.224945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992491, 36.238583, 38.382702>,  <25.525810, 36.092308, 38.764214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992491, 36.238583, 38.382702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272717, 36.318054, 38.108551>,  <25.440851, 36.365738, 37.944061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272717, 36.318054, 38.108551>,  <24.992491, 36.238583, 38.382702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272717, 36.318054, 38.108551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661994, -0.177630, -0.728157,
		-0.266409, 0.963834, 0.007080,
		0.700565, 0.198675, -0.685374,
		25.482885, 36.377655, 37.902939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640589, 36.309898, 37.827965>,  <24.992491, 36.238583, 38.382702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640589, 36.309898, 37.827965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012497, 36.301979, 37.680920>,  <25.235641, 36.297230, 37.592693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012497, 36.301979, 37.680920>,  <24.640589, 36.309898, 37.827965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.012497, 36.301979, 37.680920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362869, -0.217702, -0.906053,
		-0.062093, 0.975815, -0.209596,
		0.929769, -0.019796, -0.367610,
		25.291428, 36.296040, 37.570637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559362, 36.567478, 37.204811>,  <24.640589, 36.309898, 37.827965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559362, 36.567478, 37.204811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940434, 36.446255, 37.195351>,  <25.169077, 36.373520, 37.189674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940434, 36.446255, 37.195351>,  <24.559362, 36.567478, 37.204811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.940434, 36.446255, 37.195351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102369, -0.246581, -0.963700,
		0.286225, 0.920518, -0.265936,
		0.952678, -0.303059, -0.023655,
		25.226236, 36.355335, 37.188255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008451, 36.816376, 36.534054>,  <24.559362, 36.567478, 37.204811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008451, 36.816376, 36.534054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162380, 36.473240, 36.670307>,  <25.254738, 36.267361, 36.752060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162380, 36.473240, 36.670307>,  <25.008451, 36.816376, 36.534054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.162380, 36.473240, 36.670307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030966, -0.380842, -0.924121,
		0.922470, 0.345076, -0.173121,
		0.384824, -0.857836, 0.340630,
		25.277828, 36.215889, 36.772495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186407, 36.522602, 35.870575>,  <25.008451, 36.816376, 36.534054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186407, 36.522602, 35.870575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325239, 36.290295, 36.165123>,  <25.408539, 36.150909, 36.341854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325239, 36.290295, 36.165123>,  <25.186407, 36.522602, 35.870575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325239, 36.290295, 36.165123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308996, -0.670527, -0.674474,
		0.885469, 0.461634, -0.053274,
		0.347082, -0.580764, 0.736374,
		25.429363, 36.116066, 36.386036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788498, 36.201099, 35.599186>,  <25.186407, 36.522602, 35.870575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788498, 36.201099, 35.599186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649725, 35.959869, 35.886501>,  <25.566462, 35.815132, 36.058891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649725, 35.959869, 35.886501>,  <25.788498, 36.201099, 35.599186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649725, 35.959869, 35.886501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131337, -0.789548, -0.599470,
		0.928649, -0.113638, 0.353126,
		-0.346933, -0.603076, 0.718288,
		25.545645, 35.778946, 36.101986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264584, 35.631695, 35.606808>,  <25.788498, 36.201099, 35.599186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264584, 35.631695, 35.606808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942780, 35.501362, 35.805443>,  <25.749697, 35.423161, 35.924622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942780, 35.501362, 35.805443>,  <26.264584, 35.631695, 35.606808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942780, 35.501362, 35.805443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079787, -0.887796, -0.453268,
		0.588558, -0.325036, 0.740237,
		-0.804508, -0.325836, 0.496586,
		25.701427, 35.403610, 35.954418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496195, 34.972275, 35.660732>,  <26.264584, 35.631695, 35.606808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496195, 34.972275, 35.660732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110493, 34.939194, 35.761429>,  <25.879072, 34.919346, 35.821846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110493, 34.939194, 35.761429>,  <26.496195, 34.972275, 35.660732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110493, 34.939194, 35.761429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011117, -0.961834, -0.273409,
		0.264747, -0.260837, 0.928371,
		-0.964254, -0.082705, 0.251743,
		25.821217, 34.914383, 35.836952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392733, 34.724304, 36.340904>,  <26.496195, 34.972275, 35.660732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392733, 34.724304, 36.340904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996334, 34.675159, 36.319607>,  <25.758495, 34.645672, 36.306828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996334, 34.675159, 36.319607>,  <26.392733, 34.724304, 36.340904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996334, 34.675159, 36.319607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125707, -0.716636, -0.686025,
		0.046133, -0.686540, 0.725627,
		-0.990994, -0.122865, -0.053242,
		25.699036, 34.638302, 36.303635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249725, 33.944092, 36.356659>,  <26.392733, 34.724304, 36.340904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249725, 33.944092, 36.356659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954771, 34.130249, 36.160835>,  <25.777798, 34.241943, 36.043339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954771, 34.130249, 36.160835>,  <26.249725, 33.944092, 36.356659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954771, 34.130249, 36.160835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086938, -0.653356, -0.752042,
		-0.669849, -0.597110, 0.441319,
		-0.737390, 0.465387, -0.489562,
		25.733555, 34.269867, 36.013966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721371, 33.545872, 36.171764>,  <26.249725, 33.944092, 36.356659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721371, 33.545872, 36.171764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734465, 33.824478, 35.885048>,  <25.742321, 33.991642, 35.713017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734465, 33.824478, 35.885048>,  <25.721371, 33.545872, 36.171764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734465, 33.824478, 35.885048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372305, -0.674063, -0.637988,
		-0.927533, -0.245982, -0.281380,
		0.032734, 0.696514, -0.716796,
		25.744286, 34.033432, 35.670010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351078, 33.376163, 35.725170>,  <25.721371, 33.545872, 36.171764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351078, 33.376163, 35.725170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597393, 33.606995, 35.510586>,  <25.745182, 33.745495, 35.381836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597393, 33.606995, 35.510586>,  <25.351078, 33.376163, 35.725170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597393, 33.606995, 35.510586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152364, -0.755224, -0.637513,
		-0.773039, 0.310836, -0.552984,
		0.615788, 0.577077, -0.536458,
		25.782129, 33.780117, 35.349648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.205526, 33.417545, 34.972393>,  <25.351078, 33.376163, 35.725170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.205526, 33.417545, 34.972393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597052, 33.481045, 35.024120>,  <25.831966, 33.519146, 35.055157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597052, 33.481045, 35.024120>,  <25.205526, 33.417545, 34.972393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597052, 33.481045, 35.024120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204094, -0.705611, -0.678571,
		-0.016472, 0.690587, -0.723061,
		0.978813, 0.158750, 0.129322,
		25.890696, 33.528671, 35.062916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507687, 33.298538, 34.282639>,  <25.205526, 33.417545, 34.972393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507687, 33.298538, 34.282639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821398, 33.280567, 34.530151>,  <26.009624, 33.269783, 34.678658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821398, 33.280567, 34.530151>,  <25.507687, 33.298538, 34.282639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821398, 33.280567, 34.530151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449420, -0.646438, -0.616555,
		0.427705, 0.761643, -0.486794,
		0.784277, -0.044929, 0.618782,
		26.056681, 33.267090, 34.715786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031796, 33.176945, 33.847797>,  <25.507687, 33.298538, 34.282639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031796, 33.176945, 33.847797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165257, 33.062126, 34.206970>,  <26.245333, 32.993233, 34.422474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165257, 33.062126, 34.206970>,  <26.031796, 33.176945, 33.847797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165257, 33.062126, 34.206970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483892, -0.765301, -0.424455,
		0.809027, 0.576122, -0.116443,
		0.333652, -0.287049, 0.897931,
		26.265352, 32.976013, 34.476349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765453, 32.885391, 33.803768>,  <26.031796, 33.176945, 33.847797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765453, 32.885391, 33.803768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620197, 32.717674, 34.136593>,  <26.533043, 32.617043, 34.336288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620197, 32.717674, 34.136593>,  <26.765453, 32.885391, 33.803768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620197, 32.717674, 34.136593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450895, -0.860573, -0.236873,
		0.815366, 0.289153, 0.501566,
		-0.363142, -0.419292, 0.832059,
		26.511255, 32.591888, 34.386211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362619, 32.819412, 34.147942>,  <26.765453, 32.885391, 33.803768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362619, 32.819412, 34.147942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144844, 32.692665, 34.458599>,  <27.014179, 32.616615, 34.644993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144844, 32.692665, 34.458599>,  <27.362619, 32.819412, 34.147942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144844, 32.692665, 34.458599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206448, -0.948039, -0.242075,
		0.812999, 0.028543, 0.581565,
		-0.544437, -0.316870, 0.776648,
		26.981512, 32.597603, 34.691593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721479, 32.375118, 34.543331>,  <27.362619, 32.819412, 34.147942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721479, 32.375118, 34.543331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362328, 32.238445, 34.654377>,  <27.146837, 32.156441, 34.721004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362328, 32.238445, 34.654377>,  <27.721479, 32.375118, 34.543331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362328, 32.238445, 34.654377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262739, -0.921867, -0.284832,
		0.353243, -0.182805, 0.917498,
		-0.897879, -0.341678, 0.277613,
		27.092964, 32.135941, 34.737659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740139, 31.706352, 35.006996>,  <27.721479, 32.375118, 34.543331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740139, 31.706352, 35.006996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402119, 31.713120, 34.793228>,  <27.199306, 31.717180, 34.664967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402119, 31.713120, 34.793228>,  <27.740139, 31.706352, 35.006996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402119, 31.713120, 34.793228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201061, -0.916086, -0.346929,
		-0.495444, -0.400623, 0.770737,
		-0.845050, 0.016918, -0.534419,
		27.148603, 31.718195, 34.632904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271549, 31.242260, 35.163448>,  <27.740139, 31.706352, 35.006996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271549, 31.242260, 35.163448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237829, 31.311283, 34.770893>,  <27.217596, 31.352697, 34.535362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237829, 31.311283, 34.770893>,  <27.271549, 31.242260, 35.163448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237829, 31.311283, 34.770893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401565, -0.895489, -0.191948,
		-0.911942, -0.410271, 0.006200,
		-0.084302, 0.172556, -0.981385,
		27.212538, 31.363050, 34.476479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875099, 30.762529, 34.746094>,  <27.271549, 31.242260, 35.163448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875099, 30.762529, 34.746094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179882, 30.920256, 34.540596>,  <27.362753, 31.014893, 34.417297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179882, 30.920256, 34.540596>,  <26.875099, 30.762529, 34.746094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179882, 30.920256, 34.540596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483565, -0.874083, 0.046308,
		-0.430795, -0.283713, -0.856693,
		0.761959, 0.394317, -0.513744,
		27.408470, 31.038551, 34.386471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110624, 30.167665, 34.137356>,  <26.875099, 30.762529, 34.746094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110624, 30.167665, 34.137356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378159, 30.447506, 34.237930>,  <27.538679, 30.615410, 34.298275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378159, 30.447506, 34.237930>,  <27.110624, 30.167665, 34.137356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378159, 30.447506, 34.237930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740623, -0.656325, -0.143926,
		0.064333, 0.282481, -0.957113,
		0.668834, 0.699601, 0.251435,
		27.578808, 30.657387, 34.313362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966038, 30.801058, 33.835140>,  <27.110624, 30.167665, 34.137356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966038, 30.801058, 33.835140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090565, 31.165928, 33.728542>,  <27.165281, 31.384850, 33.664585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090565, 31.165928, 33.728542>,  <26.966038, 30.801058, 33.835140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090565, 31.165928, 33.728542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757447, 0.068829, -0.649258,
		-0.573893, 0.403984, 0.712351,
		0.311320, 0.912173, -0.266496,
		27.183960, 31.439579, 33.648594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397032, 31.224525, 33.763699>,  <26.966038, 30.801058, 33.835140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397032, 31.224525, 33.763699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665623, 31.393291, 33.520023>,  <26.826777, 31.494551, 33.373817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665623, 31.393291, 33.520023>,  <26.397032, 31.224525, 33.763699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665623, 31.393291, 33.520023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738703, 0.316088, -0.595320,
		-0.058618, 0.849751, 0.523915,
		0.671477, 0.421915, -0.609185,
		26.867065, 31.519865, 33.337269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959978, 31.741434, 34.155258>,  <26.397032, 31.224525, 33.763699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959978, 31.741434, 34.155258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320992, 31.710022, 34.324615>,  <26.537600, 31.691174, 34.426231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320992, 31.710022, 34.324615>,  <25.959978, 31.741434, 34.155258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320992, 31.710022, 34.324615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171398, 0.836477, 0.520509,
		-0.395038, -0.542347, 0.741488,
		0.902534, -0.078531, 0.423398,
		26.591751, 31.686462, 34.451633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850851, 31.885517, 34.847637>,  <25.959978, 31.741434, 34.155258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850851, 31.885517, 34.847637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241669, 31.965273, 34.817619>,  <26.476158, 32.013126, 34.799610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241669, 31.965273, 34.817619>,  <25.850851, 31.885517, 34.847637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241669, 31.965273, 34.817619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176674, 0.955164, 0.237587,
		0.119050, -0.218874, 0.968463,
		0.977043, 0.199387, -0.075043,
		26.534782, 32.025089, 34.795105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111984, 32.202190, 35.490211>,  <25.850851, 31.885517, 34.847637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111984, 32.202190, 35.490211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310883, 32.327030, 35.166401>,  <26.430222, 32.401936, 34.972115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310883, 32.327030, 35.166401>,  <26.111984, 32.202190, 35.490211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310883, 32.327030, 35.166401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148887, 0.949912, 0.274771,
		0.854738, -0.016100, 0.518809,
		0.497247, 0.312101, -0.809529,
		26.460056, 32.420662, 34.923542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680767, 32.673447, 35.679604>,  <26.111984, 32.202190, 35.490211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680767, 32.673447, 35.679604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589520, 32.776016, 35.303898>,  <26.534771, 32.837559, 35.078476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589520, 32.776016, 35.303898>,  <26.680767, 32.673447, 35.679604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589520, 32.776016, 35.303898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086775, 0.955502, 0.281933,
		0.969759, 0.145819, -0.195718,
		-0.228120, 0.256423, -0.939260,
		26.521084, 32.852943, 35.022121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991835, 33.284645, 35.614471>,  <26.680767, 32.673447, 35.679604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991835, 33.284645, 35.614471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722929, 33.272362, 35.318600>,  <26.561586, 33.264992, 35.141079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722929, 33.272362, 35.318600>,  <26.991835, 33.284645, 35.614471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722929, 33.272362, 35.318600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268288, 0.941326, 0.204761,
		0.689988, 0.336099, -0.641056,
		-0.672263, -0.030706, -0.739675,
		26.521250, 33.263149, 35.096699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161602, 33.791325, 35.083630>,  <26.991835, 33.284645, 35.614471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161602, 33.791325, 35.083630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772535, 33.705360, 35.118809>,  <26.539095, 33.653782, 35.139915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772535, 33.705360, 35.118809>,  <27.161602, 33.791325, 35.083630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772535, 33.705360, 35.118809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174238, 0.925820, 0.335407,
		-0.153504, 0.310916, -0.937959,
		-0.972665, -0.214915, 0.087944,
		26.480736, 33.640884, 35.145191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783802, 34.501305, 35.090809>,  <27.161602, 33.791325, 35.083630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783802, 34.501305, 35.090809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534199, 34.243759, 35.267918>,  <26.384438, 34.089230, 35.374184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534199, 34.243759, 35.267918>,  <26.783802, 34.501305, 35.090809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534199, 34.243759, 35.267918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459121, 0.760607, 0.459004,
		-0.632315, 0.083135, -0.770238,
		-0.624008, -0.643868, 0.442774,
		26.346996, 34.050598, 35.400749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501223, 34.772850, 35.007492>,  <26.783802, 34.501305, 35.090809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501223, 34.772850, 35.007492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559946, 35.009369, 35.324684>,  <27.595181, 35.151279, 35.514999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559946, 35.009369, 35.324684>,  <27.501223, 34.772850, 35.007492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559946, 35.009369, 35.324684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389763, -0.771388, 0.503035,
		0.909138, 0.235226, -0.343710,
		0.146807, 0.591294, 0.792981,
		27.603989, 35.186756, 35.562580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453711, 34.321701, 34.354645>,  <27.501223, 34.772850, 35.007492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453711, 34.321701, 34.354645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554558, 34.194183, 34.720116>,  <27.615067, 34.117672, 34.939400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554558, 34.194183, 34.720116>,  <27.453711, 34.321701, 34.354645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554558, 34.194183, 34.720116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314027, -0.920034, -0.234362,
		0.915327, -0.227832, -0.332068,
		0.252119, -0.318796, 0.913677,
		27.630194, 34.098545, 34.994217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106306, 34.056465, 34.535534>,  <27.453711, 34.321701, 34.354645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106306, 34.056465, 34.535534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430548, 33.922573, 34.727734>,  <28.625092, 33.842239, 34.843052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430548, 33.922573, 34.727734>,  <28.106306, 34.056465, 34.535534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430548, 33.922573, 34.727734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197918, -0.615648, -0.762762,
		0.551137, 0.713396, -0.432797,
		0.810603, -0.334728, 0.480501,
		28.673729, 33.822155, 34.871883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252628, 33.509174, 34.918331>,  <28.106306, 34.056465, 34.535534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252628, 33.509174, 34.918331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585154, 33.287872, 34.897057>,  <28.784670, 33.155090, 34.884293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585154, 33.287872, 34.897057>,  <28.252628, 33.509174, 34.918331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585154, 33.287872, 34.897057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207422, -0.397598, 0.893808,
		-0.515649, -0.732002, -0.445285,
		0.831314, -0.553253, -0.053187,
		28.834549, 33.121899, 34.881100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543242, 33.616001, 35.622860>,  <28.252628, 33.509174, 34.918331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543242, 33.616001, 35.622860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926193, 33.634468, 35.736904>,  <29.155964, 33.645550, 35.805332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926193, 33.634468, 35.736904>,  <28.543242, 33.616001, 35.622860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926193, 33.634468, 35.736904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227439, -0.487929, 0.842731,
		0.178026, -0.871661, -0.456633,
		0.957381, 0.046172, 0.285114,
		29.213408, 33.648319, 35.822437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890400, 32.949821, 35.870720>,  <28.543242, 33.616001, 35.622860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890400, 32.949821, 35.870720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045006, 33.262833, 36.065964>,  <29.137770, 33.450642, 36.183109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045006, 33.262833, 36.065964>,  <28.890400, 32.949821, 35.870720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045006, 33.262833, 36.065964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145996, -0.470655, 0.870155,
		0.910655, -0.407588, -0.067668,
		0.386513, 0.782532, 0.488110,
		29.160959, 33.497593, 36.212399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132198, 32.713585, 36.427769>,  <28.890400, 32.949821, 35.870720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132198, 32.713585, 36.427769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154377, 33.101536, 36.522644>,  <29.167685, 33.334309, 36.579567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154377, 33.101536, 36.522644>,  <29.132198, 32.713585, 36.427769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154377, 33.101536, 36.522644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177368, -0.224204, 0.958265,
		0.982581, -0.095203, 0.159594,
		0.055448, 0.969881, 0.237185,
		29.171011, 33.392502, 36.593800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607164, 32.831139, 36.998123>,  <29.132198, 32.713585, 36.427769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607164, 32.831139, 36.998123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311943, 33.100639, 36.983513>,  <29.134809, 33.262341, 36.974747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311943, 33.100639, 36.983513>,  <29.607164, 32.831139, 36.998123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311943, 33.100639, 36.983513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259124, -0.233043, 0.937308,
		0.623001, 0.701249, 0.346583,
		-0.738055, 0.673751, -0.036524,
		29.090527, 33.302765, 36.972557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441038, 33.122292, 37.590885>,  <29.607164, 32.831139, 36.998123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441038, 33.122292, 37.590885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079168, 33.156399, 37.423889>,  <28.862047, 33.176865, 37.323692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079168, 33.156399, 37.423889>,  <29.441038, 33.122292, 37.590885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079168, 33.156399, 37.423889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425679, -0.224823, 0.876500,
		-0.019123, 0.970661, 0.239688,
		-0.904672, 0.085269, -0.417489,
		28.807766, 33.181980, 37.298641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023321, 33.594513, 37.969952>,  <29.441038, 33.122292, 37.590885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023321, 33.594513, 37.969952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788893, 33.330120, 37.782497>,  <28.648235, 33.171482, 37.670025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788893, 33.330120, 37.782497>,  <29.023321, 33.594513, 37.969952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788893, 33.330120, 37.782497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442003, -0.223935, 0.868612,
		-0.679083, 0.716207, -0.160916,
		-0.586071, -0.660985, -0.468636,
		28.613071, 33.131824, 37.641907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185923, 33.723671, 38.067966>,  <29.023321, 33.594513, 37.969952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185923, 33.723671, 38.067966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302654, 33.349941, 37.986115>,  <28.372692, 33.125702, 37.937004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302654, 33.349941, 37.986115>,  <28.185923, 33.723671, 38.067966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302654, 33.349941, 37.986115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627990, -0.348541, 0.695807,
		-0.721433, -0.074547, -0.688461,
		0.291827, -0.934324, -0.204634,
		28.390202, 33.069645, 37.924725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781872, 33.692062, 37.387028>,  <28.185923, 33.723671, 38.067966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781872, 33.692062, 37.387028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457315, 33.689522, 37.620815>,  <27.262581, 33.688000, 37.761086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457315, 33.689522, 37.620815>,  <27.781872, 33.692062, 37.387028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457315, 33.689522, 37.620815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019990, -0.999658, 0.016894,
		0.584159, 0.025391, 0.811242,
		-0.811393, -0.006348, 0.584466,
		27.213898, 33.687618, 37.796154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317291, 34.240738, 37.222595>,  <27.781872, 33.692062, 37.387028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317291, 34.240738, 37.222595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684225, 34.083473, 37.197552>,  <28.904387, 33.989113, 37.182526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684225, 34.083473, 37.197552>,  <28.317291, 34.240738, 37.222595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684225, 34.083473, 37.197552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144338, 0.475013, -0.868061,
		0.371028, 0.787266, 0.492494,
		0.917336, -0.393160, -0.062611,
		28.959425, 33.965527, 37.178768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021643, 34.612358, 36.965176>,  <28.317291, 34.240738, 37.222595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021643, 34.612358, 36.965176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088572, 34.237701, 36.842079>,  <29.128729, 34.012909, 36.768223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088572, 34.237701, 36.842079>,  <29.021643, 34.612358, 36.965176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088572, 34.237701, 36.842079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253492, 0.342518, -0.904667,
		0.952757, 0.073360, 0.294742,
		0.167321, -0.936643, -0.307741,
		29.138767, 33.956707, 36.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787106, 34.507927, 36.692734>,  <29.021643, 34.612358, 36.965176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787106, 34.507927, 36.692734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600595, 34.184200, 36.549854>,  <29.488689, 33.989964, 36.464127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600595, 34.184200, 36.549854>,  <29.787106, 34.507927, 36.692734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600595, 34.184200, 36.549854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354379, 0.199087, -0.913663,
		0.810557, -0.552603, 0.193976,
		-0.466275, -0.809317, -0.357203,
		29.460712, 33.941406, 36.442692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331741, 33.986427, 36.369183>,  <29.787106, 34.507927, 36.692734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331741, 33.986427, 36.369183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966063, 33.947948, 36.211708>,  <29.746655, 33.924862, 36.117222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966063, 33.947948, 36.211708>,  <30.331741, 33.986427, 36.369183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966063, 33.947948, 36.211708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389970, 0.055604, -0.919147,
		0.110307, -0.993808, -0.013321,
		-0.914196, -0.096194, -0.393689,
		29.691803, 33.919090, 36.093601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231859, 33.397930, 36.013275>,  <30.331741, 33.986427, 36.369183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231859, 33.397930, 36.013275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999105, 33.675766, 35.844063>,  <29.859453, 33.842468, 35.742535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999105, 33.675766, 35.844063>,  <30.231859, 33.397930, 36.013275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999105, 33.675766, 35.844063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500011, -0.104691, -0.859668,
		-0.641403, -0.711749, -0.286384,
		-0.581886, 0.694589, -0.423031,
		29.824539, 33.884144, 35.717152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754322, 33.185825, 35.317730>,  <30.231859, 33.397930, 36.013275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754322, 33.185825, 35.317730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894976, 33.558079, 35.358280>,  <29.979368, 33.781429, 35.382610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894976, 33.558079, 35.358280>,  <29.754322, 33.185825, 35.317730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894976, 33.558079, 35.358280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505221, -0.097489, -0.857466,
		-0.788102, 0.352731, -0.504456,
		0.351633, 0.930632, 0.101376,
		30.000465, 33.837269, 35.388695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675049, 33.701767, 34.654354>,  <29.754322, 33.185825, 35.317730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675049, 33.701767, 34.654354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980911, 33.836163, 34.874321>,  <30.164429, 33.916798, 35.006302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980911, 33.836163, 34.874321>,  <29.675049, 33.701767, 34.654354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980911, 33.836163, 34.874321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599709, -0.058630, -0.798068,
		-0.235899, 0.940040, -0.246326,
		0.764658, 0.335987, 0.549920,
		30.210308, 33.936958, 35.039295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954660, 34.061039, 34.180798>,  <29.675049, 33.701767, 34.654354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954660, 34.061039, 34.180798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242159, 34.063473, 34.458897>,  <30.414658, 34.064934, 34.625755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242159, 34.063473, 34.458897>,  <29.954660, 34.061039, 34.180798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242159, 34.063473, 34.458897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673758, 0.240750, -0.698635,
		-0.171629, 0.970568, 0.168940,
		0.718745, 0.006081, 0.695247,
		30.457783, 34.065296, 34.667469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196037, 34.763206, 34.203487>,  <29.954660, 34.061039, 34.180798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196037, 34.763206, 34.203487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496920, 34.538441, 34.341145>,  <30.677448, 34.403580, 34.423740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496920, 34.538441, 34.341145>,  <30.196037, 34.763206, 34.203487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496920, 34.538441, 34.341145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593676, 0.351340, -0.723954,
		0.285892, 0.748872, 0.597877,
		0.752207, -0.561918, 0.344142,
		30.722582, 34.369865, 34.444386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813499, 35.247643, 34.300735>,  <30.196037, 34.763206, 34.203487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813499, 35.247643, 34.300735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913645, 34.861507, 34.271240>,  <30.973732, 34.629826, 34.253544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913645, 34.861507, 34.271240>,  <30.813499, 35.247643, 34.300735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913645, 34.861507, 34.271240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744180, 0.240599, -0.623144,
		0.619286, 0.101140, 0.778624,
		0.250361, -0.965341, -0.073733,
		30.988752, 34.571907, 34.249119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556044, 35.264935, 34.283100>,  <30.813499, 35.247643, 34.300735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556044, 35.264935, 34.283100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516472, 34.897980, 34.128895>,  <31.492729, 34.677807, 34.036373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516472, 34.897980, 34.128895>,  <31.556044, 35.264935, 34.283100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516472, 34.897980, 34.128895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744759, 0.188675, -0.640106,
		0.659960, -0.350438, 0.664565,
		-0.098930, -0.917385, -0.385510,
		31.486794, 34.622765, 34.013241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289410, 35.074429, 34.177860>,  <31.556044, 35.264935, 34.283100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289410, 35.074429, 34.177860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060642, 34.832329, 33.956383>,  <31.923380, 34.687069, 33.823498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060642, 34.832329, 33.956383>,  <32.289410, 35.074429, 34.177860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060642, 34.832329, 33.956383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699428, -0.007125, -0.714667,
		0.428608, -0.796003, 0.427405,
		-0.571922, -0.605251, -0.553693,
		31.889065, 34.650753, 33.790276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769489, 34.453239, 33.988804>,  <32.289410, 35.074429, 34.177860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769489, 34.453239, 33.988804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460228, 34.502316, 33.739906>,  <32.274673, 34.531761, 33.590569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460228, 34.502316, 33.739906>,  <32.769489, 34.453239, 33.988804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460228, 34.502316, 33.739906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632260, 0.071989, -0.771405,
		-0.049850, -0.989831, -0.133231,
		-0.773151, 0.122691, -0.622242,
		32.228283, 34.539124, 33.553234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994278, 34.185886, 33.375851>,  <32.769489, 34.453239, 33.988804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994278, 34.185886, 33.375851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679909, 34.404701, 33.260559>,  <32.491287, 34.535988, 33.191383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679909, 34.404701, 33.260559>,  <32.994278, 34.185886, 33.375851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679909, 34.404701, 33.260559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432859, 0.153888, -0.888229,
		-0.441538, -0.822843, -0.357733,
		-0.785925, 0.547035, -0.288228,
		32.444130, 34.568813, 33.174091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854183, 33.988892, 32.752293>,  <32.994278, 34.185886, 33.375851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854183, 33.988892, 32.752293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709671, 34.359188, 32.796993>,  <32.622963, 34.581364, 32.823814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709671, 34.359188, 32.796993>,  <32.854183, 33.988892, 32.752293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709671, 34.359188, 32.796993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424475, 0.269980, -0.864252,
		-0.830240, -0.264802, -0.490491,
		-0.361278, 0.925738, 0.111747,
		32.601288, 34.636909, 32.830517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692024, 34.212914, 32.145184>,  <32.854183, 33.988892, 32.752293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692024, 34.212914, 32.145184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690063, 34.571712, 32.321991>,  <32.688885, 34.786991, 32.428074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690063, 34.571712, 32.321991>,  <32.692024, 34.212914, 32.145184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690063, 34.571712, 32.321991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390562, 0.408631, -0.824913,
		-0.920564, 0.168588, -0.352336,
		-0.004905, 0.896994, 0.442015,
		32.688591, 34.840813, 32.454594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403805, 34.633102, 31.674847>,  <32.692024, 34.212914, 32.145184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403805, 34.633102, 31.674847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615868, 34.874832, 31.912746>,  <32.743107, 35.019871, 32.055485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615868, 34.874832, 31.912746>,  <32.403805, 34.633102, 31.674847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615868, 34.874832, 31.912746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438987, 0.404479, -0.802301,
		-0.725410, 0.686436, -0.050850,
		0.530161, 0.604320, 0.594750,
		32.774918, 35.056129, 32.091171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295517, 35.178768, 31.349583>,  <32.403805, 34.633102, 31.674847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295517, 35.178768, 31.349583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618248, 35.246807, 31.575893>,  <32.811886, 35.287632, 31.711679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618248, 35.246807, 31.575893>,  <32.295517, 35.178768, 31.349583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618248, 35.246807, 31.575893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359957, 0.617847, -0.699068,
		-0.468473, 0.767679, 0.437266,
		0.806824, 0.170098, 0.565776,
		32.860294, 35.297836, 31.745626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368881, 35.852806, 31.478628>,  <32.295517, 35.178768, 31.349583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368881, 35.852806, 31.478628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742359, 35.712448, 31.507166>,  <32.966446, 35.628235, 31.524288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742359, 35.712448, 31.507166>,  <32.368881, 35.852806, 31.478628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742359, 35.712448, 31.507166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296987, 0.647583, -0.701738,
		0.200032, 0.676397, 0.708854,
		0.933695, -0.350890, 0.071344,
		33.022469, 35.607182, 31.528568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686375, 36.412979, 31.437340>,  <32.368881, 35.852806, 31.478628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686375, 36.412979, 31.437340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958729, 36.131817, 31.355053>,  <33.122139, 35.963120, 31.305681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958729, 36.131817, 31.355053>,  <32.686375, 36.412979, 31.437340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958729, 36.131817, 31.355053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392921, 0.587620, -0.707331,
		0.618073, 0.400777, 0.676287,
		0.680881, -0.702909, -0.205718,
		33.162994, 35.920944, 31.293337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382484, 36.800194, 31.468040>,  <32.686375, 36.412979, 31.437340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382484, 36.800194, 31.468040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426411, 36.460766, 31.261019>,  <33.452766, 36.257107, 31.136806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426411, 36.460766, 31.261019>,  <33.382484, 36.800194, 31.468040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426411, 36.460766, 31.261019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247550, 0.527646, -0.812593,
		0.962631, -0.038885, 0.268009,
		0.109816, -0.848574, -0.517555,
		33.459354, 36.206192, 31.105753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908611, 37.041901, 31.109375>,  <33.382484, 36.800194, 31.468040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908611, 37.041901, 31.109375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782799, 36.723919, 30.901869>,  <33.707310, 36.533131, 30.777365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782799, 36.723919, 30.901869>,  <33.908611, 37.041901, 31.109375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782799, 36.723919, 30.901869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501336, 0.324948, -0.801917,
		0.806060, -0.512302, 0.296334,
		-0.314531, -0.794956, -0.518763,
		33.688438, 36.485432, 30.746241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459854, 36.764839, 30.694170>,  <33.908611, 37.041901, 31.109375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459854, 36.764839, 30.694170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116932, 36.623695, 30.544224>,  <33.911179, 36.539009, 30.454256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116932, 36.623695, 30.544224>,  <34.459854, 36.764839, 30.694170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116932, 36.623695, 30.544224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300076, 0.249171, -0.920798,
		0.418318, -0.901889, -0.107731,
		-0.857301, -0.352859, -0.374868,
		33.859741, 36.517838, 30.431763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638184, 36.459850, 30.122009>,  <34.459854, 36.764839, 30.694170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638184, 36.459850, 30.122009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248356, 36.523964, 30.059370>,  <34.014458, 36.562431, 30.021786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248356, 36.523964, 30.059370>,  <34.638184, 36.459850, 30.122009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248356, 36.523964, 30.059370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196703, 0.277161, -0.940473,
		-0.107338, -0.947360, -0.301641,
		-0.974570, 0.160283, -0.156599,
		33.955986, 36.572048, 30.012390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514420, 36.176151, 29.641079>,  <34.638184, 36.459850, 30.122009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514420, 36.176151, 29.641079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206772, 36.431698, 29.633957>,  <34.022182, 36.585026, 29.629684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206772, 36.431698, 29.633957>,  <34.514420, 36.176151, 29.641079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206772, 36.431698, 29.633957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175964, 0.184897, -0.966876,
		-0.614409, -0.746772, -0.254624,
		-0.769115, 0.638862, -0.017803,
		33.976036, 36.623356, 29.628616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337727, 36.153690, 28.967455>,  <34.514420, 36.176151, 29.641079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337727, 36.153690, 28.967455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143719, 36.480610, 29.091894>,  <34.027313, 36.676762, 29.166557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143719, 36.480610, 29.091894>,  <34.337727, 36.153690, 28.967455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143719, 36.480610, 29.091894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186686, 0.444310, -0.876206,
		-0.854345, -0.366899, -0.368077,
		-0.485020, 0.817297, 0.311099,
		33.998215, 36.725800, 29.185225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851940, 36.444962, 28.394110>,  <34.337727, 36.153690, 28.967455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851940, 36.444962, 28.394110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930878, 36.748947, 28.641825>,  <33.978241, 36.931339, 28.790453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930878, 36.748947, 28.641825>,  <33.851940, 36.444962, 28.394110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930878, 36.748947, 28.641825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086344, 0.615780, -0.783173,
		-0.976524, 0.208030, 0.055905,
		0.197348, 0.759960, 0.619286,
		33.990082, 36.976936, 28.827610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380409, 36.973961, 28.290329>,  <33.851940, 36.444962, 28.394110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380409, 36.973961, 28.290329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712292, 37.125462, 28.454348>,  <33.911423, 37.216362, 28.552759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712292, 37.125462, 28.454348>,  <33.380409, 36.973961, 28.290329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712292, 37.125462, 28.454348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159142, 0.543592, -0.824125,
		-0.535036, 0.749036, 0.390745,
		0.829705, 0.378753, 0.410045,
		33.961205, 37.239086, 28.577360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376316, 37.694408, 28.197725>,  <33.380409, 36.973961, 28.290329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376316, 37.694408, 28.197725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762661, 37.620365, 28.270227>,  <33.994469, 37.575939, 28.313728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762661, 37.620365, 28.270227>,  <33.376316, 37.694408, 28.197725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762661, 37.620365, 28.270227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259064, 0.695002, -0.670714,
		-0.001822, 0.694772, 0.719228,
		0.965858, -0.185104, 0.181257,
		34.052418, 37.564835, 28.324604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666477, 38.370491, 28.121038>,  <33.376316, 37.694408, 28.197725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666477, 38.370491, 28.121038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969730, 38.112087, 28.085449>,  <34.151680, 37.957047, 28.064096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969730, 38.112087, 28.085449>,  <33.666477, 38.370491, 28.121038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969730, 38.112087, 28.085449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456076, 0.622789, -0.635711,
		0.466086, 0.441372, 0.766783,
		0.758128, -0.646007, -0.088974,
		34.197170, 37.918285, 28.058758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219482, 38.743496, 28.423388>,  <33.666477, 38.370491, 28.121038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219482, 38.743496, 28.423388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361713, 38.460270, 28.179350>,  <34.447052, 38.290337, 28.032928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361713, 38.460270, 28.179350>,  <34.219482, 38.743496, 28.423388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361713, 38.460270, 28.179350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464124, 0.700348, -0.542311,
		0.811267, -0.090325, 0.577656,
		0.355576, -0.708063, -0.610092,
		34.468388, 38.247852, 27.996323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024239, 38.790401, 28.366842>,  <34.219482, 38.743496, 28.423388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024239, 38.790401, 28.366842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870758, 38.608273, 28.045483>,  <34.778667, 38.498993, 27.852667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870758, 38.608273, 28.045483>,  <35.024239, 38.790401, 28.366842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870758, 38.608273, 28.045483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423087, 0.686631, -0.591215,
		0.820835, -0.566758, -0.070820,
		-0.383703, -0.455327, -0.803398,
		34.755646, 38.471676, 27.804462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489311, 39.007740, 27.906378>,  <35.024239, 38.790401, 28.366842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489311, 39.007740, 27.906378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245983, 38.830868, 27.642733>,  <35.099987, 38.724747, 27.484545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245983, 38.830868, 27.642733>,  <35.489311, 39.007740, 27.906378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245983, 38.830868, 27.642733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176878, 0.734028, -0.655681,
		0.773736, -0.515443, -0.368309,
		-0.608315, -0.442178, -0.659114,
		35.063488, 38.698215, 27.444998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932453, 38.954514, 27.332256>,  <35.489311, 39.007740, 27.906378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932453, 38.954514, 27.332256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563522, 38.913334, 27.183279>,  <35.342163, 38.888626, 27.093893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563522, 38.913334, 27.183279>,  <35.932453, 38.954514, 27.332256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563522, 38.913334, 27.183279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265313, 0.532028, -0.804087,
		0.280925, -0.840446, -0.463392,
		-0.922329, -0.102945, -0.372441,
		35.286823, 38.882450, 27.071547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990829, 38.663811, 26.640280>,  <35.932453, 38.954514, 27.332256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990829, 38.663811, 26.640280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615570, 38.800335, 26.617020>,  <35.390415, 38.882248, 26.603064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615570, 38.800335, 26.617020>,  <35.990829, 38.663811, 26.640280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615570, 38.800335, 26.617020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278746, 0.644949, -0.711576,
		-0.205367, -0.683774, -0.700199,
		-0.938150, 0.341312, -0.058148,
		35.334126, 38.902729, 26.599575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858692, 38.635448, 25.917847>,  <35.990829, 38.663811, 26.640280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858692, 38.635448, 25.917847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631729, 38.906578, 26.104870>,  <35.495552, 39.069256, 26.217083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631729, 38.906578, 26.104870>,  <35.858692, 38.635448, 25.917847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631729, 38.906578, 26.104870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133171, 0.635872, -0.760219,
		-0.812598, -0.369089, -0.451064,
		-0.567407, 0.677821, 0.467556,
		35.461506, 39.109924, 26.245136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266102, 38.780010, 25.495695>,  <35.858692, 38.635448, 25.917847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266102, 38.780010, 25.495695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295383, 39.103325, 25.729385>,  <35.312950, 39.297314, 25.869598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295383, 39.103325, 25.729385>,  <35.266102, 38.780010, 25.495695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295383, 39.103325, 25.729385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186352, 0.564393, -0.804197,
		-0.979752, 0.167740, -0.109310,
		0.073202, 0.808284, 0.584224,
		35.317345, 39.345810, 25.904652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912891, 39.248970, 25.230917>,  <35.266102, 38.780010, 25.495695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912891, 39.248970, 25.230917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170612, 39.450825, 25.460775>,  <35.325245, 39.571938, 25.598690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170612, 39.450825, 25.460775>,  <34.912891, 39.248970, 25.230917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170612, 39.450825, 25.460775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164331, 0.642492, -0.748464,
		-0.746906, 0.576670, 0.331033,
		0.644303, 0.504634, 0.574646,
		35.363903, 39.602215, 25.633169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898632, 39.938351, 24.954872>,  <34.912891, 39.248970, 25.230917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898632, 39.938351, 24.954872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224377, 39.920677, 25.186338>,  <35.419823, 39.910072, 25.325218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224377, 39.920677, 25.186338>,  <34.898632, 39.938351, 24.954872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224377, 39.920677, 25.186338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443064, 0.691340, -0.570738,
		-0.374836, 0.721177, 0.582583,
		0.814366, -0.044188, 0.578667,
		35.468685, 39.907421, 25.359938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043194, 40.578465, 24.969254>,  <34.898632, 39.938351, 24.954872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043194, 40.578465, 24.969254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387505, 40.399632, 25.066568>,  <35.594090, 40.292332, 25.124958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387505, 40.399632, 25.066568>,  <35.043194, 40.578465, 24.969254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387505, 40.399632, 25.066568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508689, 0.771993, -0.381133,
		-0.017420, 0.451828, 0.891935,
		0.860774, -0.447078, 0.243288,
		35.645737, 40.265507, 25.139555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380035, 41.061306, 25.407173>,  <35.043194, 40.578465, 24.969254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380035, 41.061306, 25.407173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667774, 40.816391, 25.275936>,  <35.840416, 40.669441, 25.197193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667774, 40.816391, 25.275936>,  <35.380035, 41.061306, 25.407173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667774, 40.816391, 25.275936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556413, 0.790635, -0.255541,
		0.415866, 0.001267, 0.909425,
		0.719347, -0.612287, -0.328093,
		35.883579, 40.632706, 25.177507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018059, 41.530846, 25.469940>,  <35.380035, 41.061306, 25.407173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018059, 41.530846, 25.469940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128117, 41.220356, 25.243042>,  <36.194153, 41.034061, 25.106903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128117, 41.220356, 25.243042>,  <36.018059, 41.530846, 25.469940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128117, 41.220356, 25.243042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696448, 0.567671, -0.438988,
		0.662763, -0.274272, 0.696793,
		0.275147, -0.776225, -0.567247,
		36.210659, 40.987488, 25.072868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826611, 41.485939, 25.573296>,  <36.018059, 41.530846, 25.469940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826611, 41.485939, 25.573296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693733, 41.329006, 25.230198>,  <36.614006, 41.234844, 25.024340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693733, 41.329006, 25.230198>,  <36.826611, 41.485939, 25.573296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693733, 41.329006, 25.230198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577046, 0.634809, -0.513844,
		0.746102, -0.665651, 0.015519,
		-0.332189, -0.392335, -0.857743,
		36.594078, 41.211308, 24.972876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450127, 41.282238, 25.215288>,  <36.826611, 41.485939, 25.573296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450127, 41.282238, 25.215288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157127, 41.344421, 24.950176>,  <36.981327, 41.381733, 24.791109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157127, 41.344421, 24.950176>,  <37.450127, 41.282238, 25.215288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157127, 41.344421, 24.950176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622279, 0.547709, -0.559270,
		0.276066, -0.822099, -0.497937,
		-0.732500, 0.155460, -0.662779,
		36.937378, 41.391060, 24.751343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744862, 41.167332, 24.577532>,  <37.450127, 41.282238, 25.215288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744862, 41.167332, 24.577532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432175, 41.390938, 24.466957>,  <37.244564, 41.525101, 24.400612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432175, 41.390938, 24.466957>,  <37.744862, 41.167332, 24.577532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432175, 41.390938, 24.466957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598302, 0.547207, -0.585320,
		-0.175937, -0.622946, -0.762223,
		-0.781717, 0.559019, -0.276436,
		37.197659, 41.558643, 24.384026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802654, 41.247494, 23.844774>,  <37.744862, 41.167332, 24.577532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802654, 41.247494, 23.844774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529655, 41.521774, 23.945980>,  <37.365856, 41.686344, 24.006704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529655, 41.521774, 23.945980>,  <37.802654, 41.247494, 23.844774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529655, 41.521774, 23.945980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398258, 0.639160, -0.657925,
		-0.612857, -0.348264, -0.709308,
		-0.682493, 0.685702, 0.253015,
		37.324909, 41.727486, 24.021885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491810, 41.479683, 23.158178>,  <37.802654, 41.247494, 23.844774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491810, 41.479683, 23.158178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414871, 41.752312, 23.440588>,  <37.368710, 41.915890, 23.610033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414871, 41.752312, 23.440588>,  <37.491810, 41.479683, 23.158178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414871, 41.752312, 23.440588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223055, 0.730990, -0.644903,
		-0.955642, 0.033440, -0.292628,
		-0.192342, 0.681568, 0.706023,
		37.357170, 41.956783, 23.652395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378880, 42.106552, 22.808027>,  <37.491810, 41.479683, 23.158178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378880, 42.106552, 22.808027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433338, 42.238644, 23.181639>,  <37.466015, 42.317898, 23.405806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433338, 42.238644, 23.181639>,  <37.378880, 42.106552, 22.808027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433338, 42.238644, 23.181639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407483, 0.840698, -0.356630,
		-0.903007, 0.429155, -0.020106,
		0.136146, 0.330232, 0.934029,
		37.474182, 42.337715, 23.461847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960167, 42.718254, 22.864716>,  <37.378880, 42.106552, 22.808027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960167, 42.718254, 22.864716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255196, 42.700306, 23.134224>,  <37.432213, 42.689537, 23.295929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255196, 42.700306, 23.134224>,  <36.960167, 42.718254, 22.864716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255196, 42.700306, 23.134224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427412, 0.803496, -0.414382,
		-0.522782, 0.593616, 0.611816,
		0.737576, -0.044866, 0.673772,
		37.476467, 42.686848, 23.336355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378735, 42.755478, 22.496653>,  <36.960167, 42.718254, 22.864716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378735, 42.755478, 22.496653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392464, 42.866901, 22.112730>,  <36.400700, 42.933758, 21.882378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392464, 42.866901, 22.112730>,  <36.378735, 42.755478, 22.496653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392464, 42.866901, 22.112730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192120, 0.944298, 0.267191,
		0.980771, 0.175227, 0.085927,
		0.034322, 0.278562, -0.959805,
		36.402760, 42.950470, 21.824789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710236, 43.527283, 22.382893>,  <36.378735, 42.755478, 22.496653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710236, 43.527283, 22.382893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511829, 43.450874, 22.044075>,  <36.392784, 43.405029, 21.840784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511829, 43.450874, 22.044075>,  <36.710236, 43.527283, 22.382893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511829, 43.450874, 22.044075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386201, 0.922236, 0.018174,
		0.777701, 0.336143, -0.531215,
		-0.496014, -0.191021, -0.847042,
		36.363026, 43.393566, 21.789963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211754, 44.098995, 22.298708>,  <36.710236, 43.527283, 22.382893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211754, 44.098995, 22.298708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471752, 44.245094, 22.032145>,  <37.627750, 44.332756, 21.872208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471752, 44.245094, 22.032145>,  <37.211754, 44.098995, 22.298708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471752, 44.245094, 22.032145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612969, 0.266351, 0.743859,
		0.449193, -0.891991, -0.050761,
		0.649995, 0.365251, -0.666406,
		37.666752, 44.354671, 21.832222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902020, 44.361282, 22.340469>,  <37.211754, 44.098995, 22.298708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902020, 44.361282, 22.340469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168510, 44.485966, 22.611462>,  <38.328403, 44.560776, 22.774057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168510, 44.485966, 22.611462>,  <37.902020, 44.361282, 22.340469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168510, 44.485966, 22.611462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742668, 0.194782, 0.640706,
		0.067752, -0.929998, 0.361265,
		0.666224, 0.311709, 0.677483,
		38.368378, 44.579479, 22.814707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732307, 43.963043, 22.987083>,  <37.902020, 44.361282, 22.340469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732307, 43.963043, 22.987083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946445, 44.290401, 23.070639>,  <38.074928, 44.486816, 23.120771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946445, 44.290401, 23.070639>,  <37.732307, 43.963043, 22.987083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946445, 44.290401, 23.070639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593453, 0.188482, 0.782488,
		0.601012, -0.542869, 0.586582,
		0.535349, 0.818393, 0.208887,
		38.107052, 44.535919, 23.133305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019047, 43.909107, 23.688282>,  <37.732307, 43.963043, 22.987083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019047, 43.909107, 23.688282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906944, 44.261116, 23.534904>,  <37.839684, 44.472321, 23.442879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906944, 44.261116, 23.534904>,  <38.019047, 43.909107, 23.688282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906944, 44.261116, 23.534904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722406, 0.069694, 0.687948,
		0.632130, 0.469800, 0.616198,
		-0.280253, 0.880018, -0.383442,
		37.822868, 44.525120, 23.419872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035797, 44.510128, 24.227732>,  <38.019047, 43.909107, 23.688282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035797, 44.510128, 24.227732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740284, 44.526081, 23.958628>,  <37.562977, 44.535652, 23.797165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740284, 44.526081, 23.958628>,  <38.035797, 44.510128, 24.227732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740284, 44.526081, 23.958628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669932, -0.152207, 0.726653,
		-0.073419, 0.987544, 0.139166,
		-0.738784, 0.039882, -0.672762,
		37.518650, 44.538044, 23.756800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546738, 44.848583, 24.570000>,  <38.035797, 44.510128, 24.227732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546738, 44.848583, 24.570000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324829, 44.683483, 24.281038>,  <37.191685, 44.584423, 24.107660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324829, 44.683483, 24.281038>,  <37.546738, 44.848583, 24.570000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324829, 44.683483, 24.281038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723139, -0.190194, 0.664000,
		-0.411461, 0.890767, -0.192959,
		-0.554770, -0.412747, -0.722406,
		37.158398, 44.559658, 24.064316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889034, 45.108990, 24.782099>,  <37.546738, 44.848583, 24.570000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889034, 45.108990, 24.782099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895199, 44.777252, 24.558687>,  <36.898899, 44.578209, 24.424641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895199, 44.777252, 24.558687>,  <36.889034, 45.108990, 24.782099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895199, 44.777252, 24.558687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508984, -0.487311, 0.709551,
		-0.860638, 0.273345, -0.429634,
		0.015413, -0.829343, -0.558527,
		36.899822, 44.528450, 24.391129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198948, 44.793247, 24.720606>,  <36.889034, 45.108990, 24.782099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198948, 44.793247, 24.720606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505363, 44.537651, 24.692673>,  <36.689213, 44.384293, 24.675913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505363, 44.537651, 24.692673>,  <36.198948, 44.793247, 24.720606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505363, 44.537651, 24.692673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320867, -0.474261, 0.819829,
		-0.556980, -0.605616, -0.568334,
		0.766040, -0.638988, -0.069831,
		36.735176, 44.345955, 24.671722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968342, 44.109238, 24.679554>,  <36.198948, 44.793247, 24.720606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968342, 44.109238, 24.679554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328030, 44.088840, 24.853363>,  <36.543842, 44.076603, 24.957649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328030, 44.088840, 24.853363>,  <35.968342, 44.109238, 24.679554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328030, 44.088840, 24.853363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419068, -0.385662, 0.821978,
		0.125667, -0.921230, -0.368162,
		0.899216, -0.050989, 0.434523,
		36.597794, 44.073544, 24.983721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006752, 43.461624, 25.008678>,  <35.968342, 44.109238, 24.679554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006752, 43.461624, 25.008678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298733, 43.648785, 25.207970>,  <36.473923, 43.761082, 25.327545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298733, 43.648785, 25.207970>,  <36.006752, 43.461624, 25.008678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298733, 43.648785, 25.207970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292740, -0.444674, 0.846503,
		0.617632, -0.763761, -0.187617,
		0.729954, 0.467905, 0.498228,
		36.517719, 43.789158, 25.357439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286118, 42.941517, 25.454321>,  <36.006752, 43.461624, 25.008678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286118, 42.941517, 25.454321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455185, 43.268703, 25.610413>,  <36.556625, 43.465015, 25.704067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455185, 43.268703, 25.610413>,  <36.286118, 42.941517, 25.454321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455185, 43.268703, 25.610413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095766, -0.468484, 0.878266,
		0.901209, -0.333847, -0.276348,
		0.422671, 0.817967, 0.390231,
		36.581985, 43.514091, 25.727482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909321, 42.705830, 25.849873>,  <36.286118, 42.941517, 25.454321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909321, 42.705830, 25.849873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824818, 43.046013, 26.042572>,  <36.774117, 43.250122, 26.158192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824818, 43.046013, 26.042572>,  <36.909321, 42.705830, 25.849873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824818, 43.046013, 26.042572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133289, -0.513336, 0.847774,
		0.968299, 0.114890, 0.221805,
		-0.211262, 0.850463, 0.481749,
		36.761440, 43.301151, 26.187098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357517, 42.738857, 26.448206>,  <36.909321, 42.705830, 25.849873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357517, 42.738857, 26.448206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057159, 42.986797, 26.539366>,  <36.876945, 43.135563, 26.594063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057159, 42.986797, 26.539366>,  <37.357517, 42.738857, 26.448206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057159, 42.986797, 26.539366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095234, -0.443107, 0.891396,
		0.653519, 0.647641, 0.391758,
		-0.750895, 0.619853, 0.227902,
		36.831890, 43.172752, 26.607737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471970, 43.033501, 27.166990>,  <37.357517, 42.738857, 26.448206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471970, 43.033501, 27.166990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082237, 43.035114, 27.076960>,  <36.848396, 43.036083, 27.022942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082237, 43.035114, 27.076960>,  <37.471970, 43.033501, 27.166990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082237, 43.035114, 27.076960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189501, -0.554401, 0.810388,
		-0.121509, 0.832240, 0.540936,
		-0.974333, 0.004038, -0.225076,
		36.789936, 43.036327, 27.009438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227165, 43.016903, 27.807423>,  <37.471970, 43.033501, 27.166990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227165, 43.016903, 27.807423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880970, 42.946465, 27.619839>,  <36.673252, 42.904202, 27.507288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880970, 42.946465, 27.619839>,  <37.227165, 43.016903, 27.807423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880970, 42.946465, 27.619839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314829, -0.536954, 0.782664,
		-0.389635, 0.825027, 0.409286,
		-0.865486, -0.176098, -0.468959,
		36.621323, 42.893635, 27.479151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755753, 43.282936, 28.204849>,  <37.227165, 43.016903, 27.807423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755753, 43.282936, 28.204849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538837, 43.028919, 27.984797>,  <36.408688, 42.876507, 27.852764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538837, 43.028919, 27.984797>,  <36.755753, 43.282936, 28.204849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538837, 43.028919, 27.984797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586291, -0.182991, 0.789162,
		-0.601823, 0.750488, -0.273089,
		-0.542284, -0.635045, -0.550132,
		36.376152, 42.838406, 27.819757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050972, 43.541687, 28.165417>,  <36.755753, 43.282936, 28.204849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050972, 43.541687, 28.165417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074963, 43.143700, 28.133333>,  <36.089355, 42.904907, 28.114082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074963, 43.143700, 28.133333>,  <36.050972, 43.541687, 28.165417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074963, 43.143700, 28.133333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431767, -0.098307, 0.896612,
		-0.899989, -0.019145, -0.435492,
		0.059978, -0.994972, -0.080209,
		36.092957, 42.845207, 28.109270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497574, 43.299923, 28.483953>,  <36.050972, 43.541687, 28.165417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497574, 43.299923, 28.483953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665554, 42.938675, 28.448122>,  <35.766342, 42.721928, 28.426624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665554, 42.938675, 28.448122>,  <35.497574, 43.299923, 28.483953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665554, 42.938675, 28.448122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459845, -0.296839, 0.836916,
		-0.782422, -0.310272, -0.539951,
		0.419950, -0.903116, -0.089577,
		35.791538, 42.667740, 28.421249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957832, 42.730671, 28.483553>,  <35.497574, 43.299923, 28.483953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957832, 42.730671, 28.483553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309410, 42.587921, 28.610109>,  <35.520355, 42.502274, 28.686043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309410, 42.587921, 28.610109>,  <34.957832, 42.730671, 28.483553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309410, 42.587921, 28.610109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427831, -0.296824, 0.853730,
		-0.210756, -0.885743, -0.413571,
		0.878944, -0.356867, 0.316391,
		35.573093, 42.480858, 28.705027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767506, 42.212112, 28.756376>,  <34.957832, 42.730671, 28.483553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767506, 42.212112, 28.756376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133438, 42.219410, 28.917746>,  <35.352997, 42.223789, 29.014568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133438, 42.219410, 28.917746>,  <34.767506, 42.212112, 28.756376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133438, 42.219410, 28.917746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372544, -0.347453, 0.860516,
		0.155873, -0.937520, -0.311063,
		0.914831, 0.018247, 0.403426,
		35.407887, 42.224884, 29.038773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961300, 41.569569, 28.910847>,  <34.767506, 42.212112, 28.756376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961300, 41.569569, 28.910847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166122, 41.807919, 29.158306>,  <35.289017, 41.950928, 29.306782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166122, 41.807919, 29.158306>,  <34.961300, 41.569569, 28.910847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166122, 41.807919, 29.158306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390002, -0.480428, 0.785549,
		0.765307, -0.643521, -0.013614,
		0.512059, 0.595877, 0.618649,
		35.319740, 41.986683, 29.343901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154278, 41.135338, 29.481030>,  <34.961300, 41.569569, 28.910847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154278, 41.135338, 29.481030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161777, 41.506065, 29.631042>,  <35.166279, 41.728504, 29.721050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161777, 41.506065, 29.631042>,  <35.154278, 41.135338, 29.481030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161777, 41.506065, 29.631042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758182, -0.231342, 0.609624,
		0.651773, -0.295773, 0.698362,
		0.018750, 0.926822, 0.375032,
		35.167404, 41.784111, 29.743553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241112, 41.135620, 30.107357>,  <35.154278, 41.135338, 29.481030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241112, 41.135620, 30.107357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066334, 41.495216, 30.095333>,  <34.961468, 41.710972, 30.088118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066334, 41.495216, 30.095333>,  <35.241112, 41.135620, 30.107357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066334, 41.495216, 30.095333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602439, -0.267664, 0.751946,
		0.667944, 0.346667, 0.658539,
		-0.436942, 0.898987, -0.030061,
		34.935249, 41.764912, 30.086315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119896, 41.278149, 30.831070>,  <35.241112, 41.135620, 30.107357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119896, 41.278149, 30.831070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904053, 41.580284, 30.682325>,  <34.774548, 41.761566, 30.593079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904053, 41.580284, 30.682325>,  <35.119896, 41.278149, 30.831070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904053, 41.580284, 30.682325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645516, -0.087635, 0.758702,
		0.540491, 0.649445, 0.534874,
		-0.539609, 0.755342, -0.371862,
		34.742168, 41.806885, 30.570766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878819, 41.512604, 31.482964>,  <35.119896, 41.278149, 30.831070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878819, 41.512604, 31.482964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648354, 41.674587, 31.198980>,  <34.510075, 41.771778, 31.028589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648354, 41.674587, 31.198980>,  <34.878819, 41.512604, 31.482964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648354, 41.674587, 31.198980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804022, -0.124676, 0.581382,
		0.146923, 0.905793, 0.397432,
		-0.576162, 0.404962, -0.709960,
		34.475506, 41.796078, 30.985992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540104, 42.087147, 31.723249>,  <34.878819, 41.512604, 31.482964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540104, 42.087147, 31.723249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333771, 41.913036, 31.428101>,  <34.209972, 41.808571, 31.251011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333771, 41.913036, 31.428101>,  <34.540104, 42.087147, 31.723249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333771, 41.913036, 31.428101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776027, -0.127452, 0.617687,
		-0.362905, 0.891232, -0.272039,
		-0.515831, -0.435271, -0.737873,
		34.179020, 41.782455, 31.206739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839008, 42.246906, 31.898409>,  <34.540104, 42.087147, 31.723249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839008, 42.246906, 31.898409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810287, 41.944115, 31.638615>,  <33.793056, 41.762440, 31.482738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810287, 41.944115, 31.638615>,  <33.839008, 42.246906, 31.898409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810287, 41.944115, 31.638615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762367, -0.378229, 0.525108,
		-0.643149, 0.532848, -0.549939,
		-0.071800, -0.756978, -0.649484,
		33.788746, 41.717022, 31.443769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172882, 42.063385, 31.960321>,  <33.839008, 42.246906, 31.898409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172882, 42.063385, 31.960321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336826, 41.746094, 31.780186>,  <33.435192, 41.555721, 31.672104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336826, 41.746094, 31.780186>,  <33.172882, 42.063385, 31.960321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336826, 41.746094, 31.780186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683582, -0.593997, 0.424125,
		-0.603931, 0.134017, -0.785689,
		0.409857, -0.793225, -0.450345,
		33.459785, 41.508125, 31.645082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593662, 41.694199, 31.662348>,  <33.172882, 42.063385, 31.960321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593662, 41.694199, 31.662348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882130, 41.417976, 31.684441>,  <33.055210, 41.252243, 31.697697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882130, 41.417976, 31.684441>,  <32.593662, 41.694199, 31.662348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882130, 41.417976, 31.684441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648786, -0.645281, 0.403347,
		-0.242894, -0.326713, -0.913379,
		0.721165, -0.690558, 0.055232,
		33.098480, 41.210808, 31.701010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240757, 41.117298, 31.320028>,  <32.593662, 41.694199, 31.662348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240757, 41.117298, 31.320028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564808, 40.994675, 31.519917>,  <32.759239, 40.921101, 31.639851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564808, 40.994675, 31.519917>,  <32.240757, 41.117298, 31.320028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564808, 40.994675, 31.519917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510227, -0.788488, 0.343446,
		0.288738, -0.533205, -0.795187,
		0.810123, -0.306560, 0.499722,
		32.807846, 40.902706, 31.669832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428169, 40.399178, 31.122875>,  <32.240757, 41.117298, 31.320028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428169, 40.399178, 31.122875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587887, 40.457760, 31.484896>,  <32.683720, 40.492908, 31.702108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587887, 40.457760, 31.484896>,  <32.428169, 40.399178, 31.122875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587887, 40.457760, 31.484896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506783, -0.787383, 0.350998,
		0.764024, -0.598816, -0.240180,
		0.399297, 0.146452, 0.905049,
		32.707676, 40.501694, 31.756411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521221, 39.682636, 31.394472>,  <32.428169, 40.399178, 31.122875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521221, 39.682636, 31.394472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555168, 39.901154, 31.727785>,  <32.575535, 40.032265, 31.927773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555168, 39.901154, 31.727785>,  <32.521221, 39.682636, 31.394472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555168, 39.901154, 31.727785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451912, -0.724234, 0.520827,
		0.888016, -0.420773, 0.185411,
		0.084869, 0.546292, 0.833284,
		32.580627, 40.065041, 31.977770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778126, 39.268398, 32.016575>,  <32.521221, 39.682636, 31.394472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778126, 39.268398, 32.016575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581532, 39.572857, 32.185852>,  <32.463573, 39.755531, 32.287418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581532, 39.572857, 32.185852>,  <32.778126, 39.268398, 32.016575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581532, 39.572857, 32.185852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538127, -0.647492, 0.539605,
		0.684733, 0.037478, 0.727830,
		-0.491487, 0.761150, 0.423191,
		32.434086, 39.801201, 32.312809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772717, 39.109406, 32.795712>,  <32.778126, 39.268398, 32.016575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772717, 39.109406, 32.795712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480381, 39.376785, 32.740494>,  <32.304981, 39.537212, 32.707363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480381, 39.376785, 32.740494>,  <32.772717, 39.109406, 32.795712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480381, 39.376785, 32.740494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519429, -0.413473, 0.747819,
		0.442797, 0.618240, 0.649391,
		-0.730838, 0.668445, -0.138048,
		32.261131, 39.577320, 32.699078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578613, 39.256390, 33.440811>,  <32.772717, 39.109406, 32.795712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578613, 39.256390, 33.440811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274860, 39.392342, 33.218884>,  <32.092609, 39.473911, 33.085728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274860, 39.392342, 33.218884>,  <32.578613, 39.256390, 33.440811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274860, 39.392342, 33.218884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650621, -0.388549, 0.652474,
		0.006189, 0.856452, 0.516189,
		-0.759378, 0.339882, -0.554821,
		32.047047, 39.494305, 33.052437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126217, 39.525738, 33.934105>,  <32.578613, 39.256390, 33.440811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126217, 39.525738, 33.934105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915203, 39.462181, 33.600288>,  <31.788595, 39.424046, 33.399998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915203, 39.462181, 33.600288>,  <32.126217, 39.525738, 33.934105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915203, 39.462181, 33.600288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699858, -0.475576, 0.532941,
		-0.481568, 0.865206, 0.139681,
		-0.527533, -0.158891, -0.834544,
		31.756943, 39.414513, 33.349926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303364, 39.793869, 33.974598>,  <32.126217, 39.525738, 33.934105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303364, 39.793869, 33.974598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375008, 39.499111, 33.713860>,  <31.417994, 39.322258, 33.557415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375008, 39.499111, 33.713860>,  <31.303364, 39.793869, 33.974598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375008, 39.499111, 33.713860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771256, -0.516517, 0.371987,
		-0.610806, 0.436116, -0.660847,
		0.179109, -0.736894, -0.651849,
		31.428741, 39.278042, 33.518307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671255, 39.548248, 33.969837>,  <31.303364, 39.793869, 33.974598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671255, 39.548248, 33.969837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921402, 39.274231, 33.820370>,  <31.071491, 39.109821, 33.730690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921402, 39.274231, 33.820370>,  <30.671255, 39.548248, 33.969837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921402, 39.274231, 33.820370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421174, -0.699440, 0.577405,
		-0.656906, -0.203713, -0.725931,
		0.625370, -0.685044, -0.373667,
		31.109013, 39.068718, 33.708271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235775, 39.040718, 34.064224>,  <30.671255, 39.548248, 33.969837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235775, 39.040718, 34.064224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575058, 38.844585, 33.984104>,  <30.778627, 38.726906, 33.936031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575058, 38.844585, 33.984104>,  <30.235775, 39.040718, 34.064224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575058, 38.844585, 33.984104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471626, -0.871292, 0.135721,
		-0.241070, -0.020651, -0.970288,
		0.848206, -0.490331, -0.200303,
		30.829519, 38.697487, 33.924015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062754, 38.493500, 33.678337>,  <30.235775, 39.040718, 34.064224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062754, 38.493500, 33.678337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415133, 38.385979, 33.834122>,  <30.626560, 38.321465, 33.927593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415133, 38.385979, 33.834122>,  <30.062754, 38.493500, 33.678337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415133, 38.385979, 33.834122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351715, -0.922531, 0.158847,
		0.316591, -0.276914, -0.907242,
		0.880947, -0.268802, 0.389460,
		30.679417, 38.305340, 33.950958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099844, 37.768333, 33.503731>,  <30.062754, 38.493500, 33.678337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099844, 37.768333, 33.503731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371214, 37.817875, 33.793392>,  <30.534037, 37.847599, 33.967190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371214, 37.817875, 33.793392>,  <30.099844, 37.768333, 33.503731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371214, 37.817875, 33.793392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152344, -0.940545, 0.303589,
		0.718701, -0.316283, -0.619220,
		0.678425, 0.123855, 0.724155,
		30.574741, 37.855030, 34.010639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471327, 37.126575, 33.597656>,  <30.099844, 37.768333, 33.503731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471327, 37.126575, 33.597656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513218, 37.335762, 33.936016>,  <30.538353, 37.461273, 34.139030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513218, 37.335762, 33.936016>,  <30.471327, 37.126575, 33.597656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513218, 37.335762, 33.936016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282374, -0.799930, 0.529506,
		0.953571, -0.294312, 0.063898,
		0.104726, 0.522965, 0.845896,
		30.544636, 37.492653, 34.189785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788179, 36.668926, 34.026787>,  <30.471327, 37.126575, 33.597656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788179, 36.668926, 34.026787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615305, 36.921890, 34.283932>,  <30.511580, 37.073669, 34.438217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615305, 36.921890, 34.283932>,  <30.788179, 36.668926, 34.026787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615305, 36.921890, 34.283932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267882, -0.770731, 0.578111,
		0.861077, 0.077641, 0.502512,
		-0.432186, 0.632412, 0.642860,
		30.485649, 37.111614, 34.476791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152094, 36.492970, 34.667576>,  <30.788179, 36.668926, 34.026787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152094, 36.492970, 34.667576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810692, 36.675106, 34.768921>,  <30.605850, 36.784389, 34.829727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810692, 36.675106, 34.768921>,  <31.152094, 36.492970, 34.667576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810692, 36.675106, 34.768921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218928, -0.754575, 0.618617,
		0.472867, 0.472523, 0.743720,
		-0.853503, 0.455344, 0.253365,
		30.554642, 36.811710, 34.844929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072802, 36.655132, 35.381470>,  <31.152094, 36.492970, 34.667576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072802, 36.655132, 35.381470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682705, 36.678364, 35.296116>,  <30.448647, 36.692303, 35.244904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682705, 36.678364, 35.296116>,  <31.072802, 36.655132, 35.381470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682705, 36.678364, 35.296116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180661, -0.765712, 0.617290,
		-0.127542, 0.640557, 0.757245,
		-0.975241, 0.058074, -0.213384,
		30.390133, 36.695786, 35.232101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665018, 36.692039, 36.059799>,  <31.072802, 36.655132, 35.381470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665018, 36.692039, 36.059799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424557, 36.559620, 35.768864>,  <30.280281, 36.480167, 35.594303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424557, 36.559620, 35.768864>,  <30.665018, 36.692039, 36.059799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424557, 36.559620, 35.768864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279916, -0.765271, 0.579662,
		-0.748507, 0.552059, 0.367379,
		-0.601152, -0.331046, -0.727341,
		30.244211, 36.460304, 35.550663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998878, 37.050018, 36.567291>,  <30.665018, 36.692039, 36.059799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998878, 37.050018, 36.567291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154036, 37.085796, 36.934235>,  <31.247129, 37.107262, 37.154400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154036, 37.085796, 36.934235>,  <30.998878, 37.050018, 36.567291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154036, 37.085796, 36.934235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579713, 0.750095, -0.318262,
		-0.716569, 0.655254, 0.239104,
		0.387894, 0.089445, 0.917354,
		31.270403, 37.112629, 37.209442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033081, 37.700653, 37.056908>,  <30.998878, 37.050018, 36.567291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033081, 37.700653, 37.056908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361668, 37.481541, 37.120316>,  <31.558819, 37.350075, 37.158360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361668, 37.481541, 37.120316>,  <31.033081, 37.700653, 37.056908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361668, 37.481541, 37.120316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569311, 0.771766, -0.283306,
		0.032850, 0.322973, 0.945838,
		0.821466, -0.547782, 0.158519,
		31.608107, 37.317207, 37.167870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509329, 38.088669, 37.548992>,  <31.033081, 37.700653, 37.056908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509329, 38.088669, 37.548992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740650, 37.811653, 37.376499>,  <31.879442, 37.645443, 37.273003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740650, 37.811653, 37.376499>,  <31.509329, 38.088669, 37.548992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740650, 37.811653, 37.376499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666772, 0.705798, -0.239299,
		0.470086, -0.149147, 0.869928,
		0.578303, -0.692535, -0.431233,
		31.914141, 37.603893, 37.247128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196033, 38.046959, 37.948822>,  <31.509329, 38.088669, 37.548992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196033, 38.046959, 37.948822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255936, 37.881634, 37.589546>,  <32.291878, 37.782440, 37.373981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255936, 37.881634, 37.589546>,  <32.196033, 38.046959, 37.948822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255936, 37.881634, 37.589546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776965, 0.611013, -0.151617,
		0.611471, -0.675158, 0.412632,
		0.149758, -0.413310, -0.898191,
		32.300861, 37.757641, 37.320087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924782, 37.959652, 37.828918>,  <32.196033, 38.046959, 37.948822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924782, 37.959652, 37.828918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778374, 37.965878, 37.456726>,  <32.690529, 37.969612, 37.233410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778374, 37.965878, 37.456726>,  <32.924782, 37.959652, 37.828918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778374, 37.965878, 37.456726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732694, 0.621267, -0.277823,
		0.573752, -0.783444, -0.238796,
		-0.366016, 0.015563, -0.930479,
		32.668568, 37.970547, 37.177582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497715, 37.732388, 37.315060>,  <32.924782, 37.959652, 37.828918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497715, 37.732388, 37.315060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218739, 37.895351, 37.079231>,  <33.051353, 37.993130, 36.937733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218739, 37.895351, 37.079231>,  <33.497715, 37.732388, 37.315060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218739, 37.895351, 37.079231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712410, 0.483422, -0.508699,
		0.077764, -0.774804, -0.627400,
		-0.697442, 0.407408, -0.589571,
		33.009506, 38.017574, 36.902359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716198, 37.579872, 36.536552>,  <33.497715, 37.732388, 37.315060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716198, 37.579872, 36.536552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438988, 37.865719, 36.498512>,  <33.272663, 38.037228, 36.475689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438988, 37.865719, 36.498512>,  <33.716198, 37.579872, 36.536552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438988, 37.865719, 36.498512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577644, 0.471513, -0.666335,
		-0.431330, -0.516722, -0.739563,
		-0.693023, 0.714615, -0.095104,
		33.231079, 38.080105, 36.469982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490326, 37.630180, 35.766361>,  <33.716198, 37.579872, 36.536552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490326, 37.630180, 35.766361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391571, 37.973343, 35.946606>,  <33.332317, 38.179241, 36.054752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391571, 37.973343, 35.946606>,  <33.490326, 37.630180, 35.766361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391571, 37.973343, 35.946606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437440, 0.513597, -0.738149,
		-0.864691, 0.014871, -0.502083,
		-0.246892, 0.857903, 0.450608,
		33.317505, 38.230713, 36.081787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253506, 38.001400, 35.255814>,  <33.490326, 37.630180, 35.766361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253506, 38.001400, 35.255814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363129, 38.266418, 35.534645>,  <33.428902, 38.425430, 35.701946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363129, 38.266418, 35.534645>,  <33.253506, 38.001400, 35.255814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363129, 38.266418, 35.534645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425430, 0.566534, -0.705726,
		-0.862497, 0.489971, -0.126603,
		0.274060, 0.662547, 0.697082,
		33.445347, 38.465183, 35.743771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100475, 38.637901, 34.943611>,  <33.253506, 38.001400, 35.255814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100475, 38.637901, 34.943611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369854, 38.709393, 35.230534>,  <33.531483, 38.752285, 35.402687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369854, 38.709393, 35.230534>,  <33.100475, 38.637901, 34.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369854, 38.709393, 35.230534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473139, 0.641337, -0.604009,
		-0.567985, 0.746153, 0.347346,
		0.673449, 0.178725, 0.717303,
		33.571888, 38.763012, 35.445724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218822, 39.309746, 34.924698>,  <33.100475, 38.637901, 34.943611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218822, 39.309746, 34.924698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535919, 39.173676, 35.127022>,  <33.726177, 39.092033, 35.248417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535919, 39.173676, 35.127022>,  <33.218822, 39.309746, 34.924698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535919, 39.173676, 35.127022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600423, 0.578894, -0.551700,
		-0.105138, 0.741056, 0.663161,
		0.792741, -0.340173, 0.505811,
		33.773743, 39.071625, 35.278767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595608, 39.989914, 35.162041>,  <33.218822, 39.309746, 34.924698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595608, 39.989914, 35.162041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851105, 39.682163, 35.165287>,  <34.004402, 39.497513, 35.167236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851105, 39.682163, 35.165287>,  <33.595608, 39.989914, 35.162041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851105, 39.682163, 35.165287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655802, 0.538877, -0.528711,
		0.402403, 0.343035, 0.848763,
		0.638745, -0.769376, 0.008118,
		34.042728, 39.451351, 35.167721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225521, 40.214649, 35.326057>,  <33.595608, 39.989914, 35.162041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225521, 40.214649, 35.326057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335270, 39.863037, 35.170094>,  <34.401119, 39.652069, 35.076515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335270, 39.863037, 35.170094>,  <34.225521, 40.214649, 35.326057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335270, 39.863037, 35.170094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748650, 0.449740, -0.487090,
		0.603524, -0.158260, 0.781481,
		0.274376, -0.879027, -0.389910,
		34.417583, 39.599331, 35.053120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005314, 40.281792, 35.374660>,  <34.225521, 40.214649, 35.326057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005314, 40.281792, 35.374660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920689, 40.004463, 35.099110>,  <34.869915, 39.838066, 34.933781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920689, 40.004463, 35.099110>,  <35.005314, 40.281792, 35.374660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920689, 40.004463, 35.099110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586469, 0.473782, -0.656951,
		0.781854, -0.542990, 0.306376,
		-0.211562, -0.693320, -0.688876,
		34.857220, 39.796467, 34.892448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678196, 40.139202, 35.111439>,  <35.005314, 40.281792, 35.374660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678196, 40.139202, 35.111439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405182, 40.042458, 34.835571>,  <35.241371, 39.984409, 34.670052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405182, 40.042458, 34.835571>,  <35.678196, 40.139202, 35.111439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405182, 40.042458, 34.835571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577285, 0.400291, -0.711694,
		0.448200, -0.883895, -0.133591,
		-0.682538, -0.241861, -0.689670,
		35.200420, 39.969898, 34.628670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071064, 39.820019, 34.540886>,  <35.678196, 40.139202, 35.111439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071064, 39.820019, 34.540886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722557, 39.936184, 34.382622>,  <35.513451, 40.005882, 34.287663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722557, 39.936184, 34.382622>,  <36.071064, 39.820019, 34.540886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722557, 39.936184, 34.382622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490667, 0.534353, -0.688268,
		0.011543, -0.793806, -0.608061,
		-0.871270, 0.290411, -0.395663,
		35.461174, 40.023308, 34.263924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111320, 39.665058, 33.857029>,  <36.071064, 39.820019, 34.540886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111320, 39.665058, 33.857029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815590, 39.934395, 33.855606>,  <35.638153, 40.095997, 33.854752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815590, 39.934395, 33.855606>,  <36.111320, 39.665058, 33.857029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815590, 39.934395, 33.855606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467294, 0.509263, -0.722695,
		-0.484808, -0.535968, -0.691158,
		-0.739322, 0.673342, -0.003559,
		35.593792, 40.136398, 33.854538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880081, 39.786098, 33.105026>,  <36.111320, 39.665058, 33.857029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880081, 39.786098, 33.105026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772331, 40.092670, 33.338272>,  <35.707680, 40.276615, 33.478218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772331, 40.092670, 33.338272>,  <35.880081, 39.786098, 33.105026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772331, 40.092670, 33.338272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208907, 0.637582, -0.741517,
		-0.940103, -0.077930, -0.331862,
		-0.269376, 0.766431, 0.583113,
		35.691517, 40.322601, 33.513206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295322, 39.978111, 32.743950>,  <35.880081, 39.786098, 33.105026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295322, 39.978111, 32.743950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448265, 40.277893, 32.960144>,  <35.540031, 40.457764, 33.089859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448265, 40.277893, 32.960144>,  <35.295322, 39.978111, 32.743950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448265, 40.277893, 32.960144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214284, 0.497061, -0.840840,
		-0.898826, 0.437314, 0.029457,
		0.382353, 0.749457, 0.540481,
		35.562969, 40.502731, 33.122288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124287, 40.622768, 32.412426>,  <35.295322, 39.978111, 32.743950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124287, 40.622768, 32.412426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419037, 40.767578, 32.640797>,  <35.595886, 40.854462, 32.777821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419037, 40.767578, 32.640797>,  <35.124287, 40.622768, 32.412426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419037, 40.767578, 32.640797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333416, 0.540054, -0.772771,
		-0.588091, 0.759791, 0.277249,
		0.736874, 0.362021, 0.570927,
		35.640099, 40.876183, 32.812077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985950, 41.393494, 32.574478>,  <35.124287, 40.622768, 32.412426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985950, 41.393494, 32.574478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370594, 41.284805, 32.589832>,  <35.601379, 41.219593, 32.599045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370594, 41.284805, 32.589832>,  <34.985950, 41.393494, 32.574478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370594, 41.284805, 32.589832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214951, 0.658882, -0.720882,
		0.170587, 0.701458, 0.691994,
		0.961611, -0.271718, 0.038383,
		35.659077, 41.203289, 32.601349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291580, 41.887047, 32.192593>,  <34.985950, 41.393494, 32.574478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291580, 41.887047, 32.192593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603012, 41.639820, 32.236069>,  <35.789871, 41.491486, 32.262154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603012, 41.639820, 32.236069>,  <35.291580, 41.887047, 32.192593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603012, 41.639820, 32.236069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433829, 0.404948, -0.804866,
		0.453444, 0.673805, 0.583417,
		0.778576, -0.618065, 0.108695,
		35.836586, 41.454399, 32.268677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952358, 42.402733, 32.261520>,  <35.291580, 41.887047, 32.192593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952358, 42.402733, 32.261520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065609, 42.040874, 32.134109>,  <36.133560, 41.823761, 32.057663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065609, 42.040874, 32.134109>,  <35.952358, 42.402733, 32.261520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065609, 42.040874, 32.134109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452436, 0.418820, -0.787332,
		0.845659, 0.078806, 0.527874,
		0.283130, -0.904644, -0.318524,
		36.150547, 41.769482, 32.038551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664120, 42.424305, 32.099464>,  <35.952358, 42.402733, 32.261520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664120, 42.424305, 32.099464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538845, 42.101639, 31.898981>,  <36.463680, 41.908039, 31.778692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538845, 42.101639, 31.898981>,  <36.664120, 42.424305, 32.099464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538845, 42.101639, 31.898981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432089, 0.348933, -0.831592,
		0.845702, -0.477010, 0.239269,
		-0.313188, -0.806664, -0.501204,
		36.444889, 41.859638, 31.748619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277489, 41.929203, 32.000343>,  <36.664120, 42.424305, 32.099464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277489, 41.929203, 32.000343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020966, 41.893730, 31.695484>,  <36.867054, 41.872448, 31.512569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020966, 41.893730, 31.695484>,  <37.277489, 41.929203, 32.000343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020966, 41.893730, 31.695484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745435, 0.163359, -0.646251,
		0.181815, -0.982573, -0.038654,
		-0.641303, -0.088684, -0.762145,
		36.828575, 41.867126, 31.466841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726051, 41.835442, 31.485455>,  <37.277489, 41.929203, 32.000343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726051, 41.835442, 31.485455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412952, 41.833229, 31.236528>,  <37.225094, 41.831902, 31.087173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412952, 41.833229, 31.236528>,  <37.726051, 41.835442, 31.485455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412952, 41.833229, 31.236528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602314, 0.244881, -0.759770,
		0.156593, -0.969537, -0.188350,
		-0.782749, -0.005528, -0.622313,
		37.178127, 41.831570, 31.049835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881165, 41.333221, 30.932333>,  <37.726051, 41.835442, 31.485455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881165, 41.333221, 30.932333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638477, 41.621822, 30.798866>,  <37.492867, 41.794983, 30.718786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638477, 41.621822, 30.798866>,  <37.881165, 41.333221, 30.932333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638477, 41.621822, 30.798866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643963, 0.200014, -0.738448,
		-0.466051, -0.662899, -0.585970,
		-0.606719, 0.721498, -0.333666,
		37.456463, 41.838272, 30.698767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921921, 41.340275, 30.184614>,  <37.881165, 41.333221, 30.932333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921921, 41.340275, 30.184614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773975, 41.705070, 30.255575>,  <37.685207, 41.923950, 30.298151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773975, 41.705070, 30.255575>,  <37.921921, 41.340275, 30.184614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773975, 41.705070, 30.255575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611048, 0.382613, -0.692984,
		-0.699873, -0.147907, -0.698785,
		-0.369862, 0.911993, 0.177402,
		37.663017, 41.978668, 30.308796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710297, 41.529671, 29.564232>,  <37.921921, 41.340275, 30.184614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710297, 41.529671, 29.564232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715511, 41.894798, 29.727491>,  <37.718639, 42.113876, 29.825447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715511, 41.894798, 29.727491>,  <37.710297, 41.529671, 29.564232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715511, 41.894798, 29.727491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512552, 0.344376, -0.786572,
		-0.858557, 0.219452, -0.463379,
		0.013038, 0.912823, 0.408147,
		37.719421, 42.168644, 29.849936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466011, 41.949169, 29.041649>,  <37.710297, 41.529671, 29.564232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466011, 41.949169, 29.041649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680130, 42.158382, 29.306944>,  <37.808601, 42.283913, 29.466122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680130, 42.158382, 29.306944>,  <37.466011, 41.949169, 29.041649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680130, 42.158382, 29.306944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653679, 0.240764, -0.717452,
		-0.534938, 0.817597, -0.213018,
		0.535299, 0.523038, 0.663239,
		37.840721, 42.315292, 29.505917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672935, 42.477493, 28.603470>,  <37.466011, 41.949169, 29.041649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672935, 42.477493, 28.603470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930569, 42.539413, 28.903120>,  <38.085148, 42.576565, 29.082911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930569, 42.539413, 28.903120>,  <37.672935, 42.477493, 28.603470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930569, 42.539413, 28.903120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634627, 0.438630, -0.636280,
		-0.427088, 0.885234, 0.184271,
		0.644084, 0.154804, 0.749127,
		38.123795, 42.585854, 29.127859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824009, 43.174866, 28.653589>,  <37.672935, 42.477493, 28.603470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824009, 43.174866, 28.653589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127182, 42.994217, 28.841875>,  <38.309086, 42.885826, 28.954847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127182, 42.994217, 28.841875>,  <37.824009, 43.174866, 28.653589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127182, 42.994217, 28.841875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651846, 0.552157, -0.519827,
		-0.025144, 0.700829, 0.712886,
		0.757935, -0.451622, 0.470715,
		38.354561, 42.858730, 28.983089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272476, 43.689938, 28.850555>,  <37.824009, 43.174866, 28.653589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272476, 43.689938, 28.850555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498474, 43.360191, 28.864367>,  <38.634075, 43.162342, 28.872652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498474, 43.360191, 28.864367>,  <38.272476, 43.689938, 28.850555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498474, 43.360191, 28.864367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675018, 0.437765, -0.593896,
		0.474475, 0.358857, 0.803800,
		0.565000, -0.824368, 0.034527,
		38.667973, 43.112881, 28.874725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903172, 43.974716, 28.719414>,  <38.272476, 43.689938, 28.850555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903172, 43.974716, 28.719414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945900, 43.585922, 28.635674>,  <38.971535, 43.352646, 28.585430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945900, 43.585922, 28.635674>,  <38.903172, 43.974716, 28.719414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945900, 43.585922, 28.635674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589099, 0.231488, -0.774193,
		0.800969, -0.040630, 0.597325,
		0.106818, -0.971989, -0.209350,
		38.977947, 43.294327, 28.572868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695774, 43.923981, 28.515821>,  <38.903172, 43.974716, 28.719414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695774, 43.923981, 28.515821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485874, 43.624725, 28.353380>,  <39.359932, 43.445171, 28.255917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485874, 43.624725, 28.353380>,  <39.695774, 43.923981, 28.515821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485874, 43.624725, 28.353380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366201, 0.232264, -0.901083,
		0.768461, -0.621560, 0.152089,
		-0.524752, -0.748142, -0.406102,
		39.328449, 43.400284, 28.231550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204449, 43.514568, 28.123755>,  <39.695774, 43.923981, 28.515821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204449, 43.514568, 28.123755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832676, 43.438103, 27.997515>,  <39.609612, 43.392223, 27.921770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832676, 43.438103, 27.997515>,  <40.204449, 43.514568, 28.123755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832676, 43.438103, 27.997515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283471, 0.177595, -0.942393,
		0.236206, -0.965357, -0.110872,
		-0.929436, -0.191169, -0.315599,
		39.553844, 43.380753, 27.902836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251652, 43.048698, 27.630457>,  <40.204449, 43.514568, 28.123755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251652, 43.048698, 27.630457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914429, 43.252960, 27.562952>,  <39.712093, 43.375519, 27.522449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914429, 43.252960, 27.562952>,  <40.251652, 43.048698, 27.630457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914429, 43.252960, 27.562952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331557, 0.246411, -0.910688,
		-0.423465, -0.823717, -0.377051,
		-0.843058, 0.510658, -0.168763,
		39.661510, 43.406158, 27.512323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066700, 42.905167, 26.904728>,  <40.251652, 43.048698, 27.630457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066700, 42.905167, 26.904728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889080, 43.250484, 27.000679>,  <39.782509, 43.457676, 27.058250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889080, 43.250484, 27.000679>,  <40.066700, 42.905167, 26.904728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889080, 43.250484, 27.000679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248341, 0.375814, -0.892799,
		-0.860900, -0.336873, -0.381271,
		-0.444047, 0.863296, 0.239879,
		39.755867, 43.509472, 27.072643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618572, 42.318569, 27.157701>,  <40.066700, 42.905167, 26.904728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618572, 42.318569, 27.157701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886448, 42.023346, 27.124725>,  <41.047173, 41.846214, 27.104939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886448, 42.023346, 27.124725>,  <40.618572, 42.318569, 27.157701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886448, 42.023346, 27.124725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513653, -0.540490, 0.666356,
		-0.536328, -0.403944, -0.741067,
		0.669710, -0.738037, -0.082393,
		41.087353, 41.801929, 27.099993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162251, 41.684830, 27.003328>,  <40.618572, 42.318569, 27.157701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162251, 41.684830, 27.003328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513706, 41.547222, 27.135780>,  <40.724579, 41.464657, 27.215252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513706, 41.547222, 27.135780>,  <40.162251, 41.684830, 27.003328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513706, 41.547222, 27.135780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477461, -0.625030, 0.617550,
		-0.005483, -0.700704, -0.713431,
		0.878636, -0.344022, 0.331132,
		40.777298, 41.444016, 27.235119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238682, 40.886803, 26.845778>,  <40.162251, 41.684830, 27.003328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238682, 40.886803, 26.845778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462685, 40.988590, 27.161154>,  <40.597088, 41.049664, 27.350380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462685, 40.988590, 27.161154>,  <40.238682, 40.886803, 26.845778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462685, 40.988590, 27.161154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398888, -0.751283, 0.525798,
		0.726142, -0.608949, -0.319217,
		0.560006, 0.254472, 0.788440,
		40.630688, 41.064930, 27.397686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440636, 40.228992, 27.177700>,  <40.238682, 40.886803, 26.845778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440636, 40.228992, 27.177700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481422, 40.520184, 27.448889>,  <40.505894, 40.694897, 27.611603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481422, 40.520184, 27.448889>,  <40.440636, 40.228992, 27.177700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481422, 40.520184, 27.448889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285402, -0.631468, 0.720967,
		0.952968, -0.267011, 0.143377,
		0.101968, 0.727979, 0.677974,
		40.512012, 40.738579, 27.652281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605419, 39.882233, 27.727585>,  <40.440636, 40.228992, 27.177700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605419, 39.882233, 27.727585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487400, 40.228043, 27.890337>,  <40.416588, 40.435528, 27.987989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487400, 40.228043, 27.890337>,  <40.605419, 39.882233, 27.727585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487400, 40.228043, 27.890337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523927, -0.502493, 0.687751,
		0.799030, -0.010258, 0.601204,
		-0.295046, 0.864520, 0.406881,
		40.398888, 40.487400, 28.012402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733292, 39.845314, 28.493616>,  <40.605419, 39.882233, 27.727585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733292, 39.845314, 28.493616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447701, 40.119335, 28.435747>,  <40.276344, 40.283749, 28.401026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447701, 40.119335, 28.435747>,  <40.733292, 39.845314, 28.493616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447701, 40.119335, 28.435747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502791, -0.357852, 0.786856,
		0.487268, 0.634541, 0.599939,
		-0.713983, 0.685054, -0.144672,
		40.233505, 40.324852, 28.392345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568199, 39.981247, 29.147755>,  <40.733292, 39.845314, 28.493616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568199, 39.981247, 29.147755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263000, 40.141712, 28.945013>,  <40.079880, 40.237991, 28.823368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263000, 40.141712, 28.945013>,  <40.568199, 39.981247, 29.147755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263000, 40.141712, 28.945013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615171, -0.209872, 0.759946,
		0.198485, 0.891641, 0.406914,
		-0.762999, 0.401160, -0.506856,
		40.034100, 40.262058, 28.792955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077084, 40.348232, 29.650616>,  <40.568199, 39.981247, 29.147755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077084, 40.348232, 29.650616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865128, 40.286045, 29.317139>,  <39.737953, 40.248734, 29.117052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865128, 40.286045, 29.317139>,  <40.077084, 40.348232, 29.650616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865128, 40.286045, 29.317139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839539, -0.042893, 0.541604,
		-0.119960, 0.986910, -0.107790,
		-0.529891, -0.155464, -0.833695,
		39.706161, 40.239407, 29.067030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394875, 40.780075, 29.743279>,  <40.077084, 40.348232, 29.650616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394875, 40.780075, 29.743279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365829, 40.482365, 29.477713>,  <39.348404, 40.303738, 29.318373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365829, 40.482365, 29.477713>,  <39.394875, 40.780075, 29.743279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365829, 40.482365, 29.477713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909964, -0.223063, 0.349583,
		-0.408281, 0.629523, -0.661065,
		-0.072612, -0.744273, -0.663916,
		39.344048, 40.259083, 29.278538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707253, 40.881653, 29.505033>,  <39.394875, 40.780075, 29.743279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707253, 40.881653, 29.505033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799114, 40.517612, 29.367060>,  <38.854233, 40.299191, 29.284275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799114, 40.517612, 29.367060>,  <38.707253, 40.881653, 29.505033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799114, 40.517612, 29.367060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822980, -0.370788, 0.430373,
		-0.519579, 0.185035, -0.834146,
		0.229658, -0.910098, -0.344934,
		38.868011, 40.244583, 29.263580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056293, 40.544468, 29.303926>,  <38.707253, 40.881653, 29.505033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056293, 40.544468, 29.303926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302185, 40.236179, 29.370987>,  <38.449718, 40.051208, 29.411222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302185, 40.236179, 29.370987>,  <38.056293, 40.544468, 29.303926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302185, 40.236179, 29.370987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682665, -0.413428, 0.602534,
		-0.395078, -0.484834, -0.780288,
		0.614721, -0.770723, 0.167643,
		38.486603, 40.004963, 29.421282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639427, 39.921772, 29.146118>,  <38.056293, 40.544468, 29.303926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639427, 39.921772, 29.146118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938347, 39.800507, 29.382641>,  <38.117699, 39.727749, 29.524553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938347, 39.800507, 29.382641>,  <37.639427, 39.921772, 29.146118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938347, 39.800507, 29.382641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663718, -0.383465, 0.642209,
		0.032051, -0.872380, -0.487776,
		0.747295, -0.303162, 0.591305,
		38.162537, 39.709557, 29.560032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439579, 39.248085, 29.310509>,  <37.639427, 39.921772, 29.146118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439579, 39.248085, 29.310509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696934, 39.377869, 29.587860>,  <37.851349, 39.455738, 29.754271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696934, 39.377869, 29.587860>,  <37.439579, 39.248085, 29.310509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696934, 39.377869, 29.587860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600106, -0.348600, 0.719966,
		0.475312, -0.879320, -0.029577,
		0.643391, 0.324459, 0.693379,
		37.889950, 39.475208, 29.795874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681259, 38.646107, 29.714520>,  <37.439579, 39.248085, 29.310509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681259, 38.646107, 29.714520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733185, 38.967274, 29.947231>,  <37.764339, 39.159973, 30.086859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733185, 38.967274, 29.947231>,  <37.681259, 38.646107, 29.714520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733185, 38.967274, 29.947231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571242, -0.419024, 0.705763,
		0.810451, -0.423958, 0.404264,
		0.129817, 0.802919, 0.581781,
		37.772129, 39.208149, 30.121765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793919, 38.323944, 30.369036>,  <37.681259, 38.646107, 29.714520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793919, 38.323944, 30.369036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717960, 38.708916, 30.446663>,  <37.672386, 38.939899, 30.493240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717960, 38.708916, 30.446663>,  <37.793919, 38.323944, 30.369036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717960, 38.708916, 30.446663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540389, -0.267490, 0.797765,
		0.819707, 0.046621, 0.570883,
		-0.189898, 0.962432, 0.194070,
		37.660992, 38.997646, 30.504885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881039, 38.365875, 31.102640>,  <37.793919, 38.323944, 30.369036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881039, 38.365875, 31.102640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659447, 38.679367, 30.990303>,  <37.526493, 38.867462, 30.922901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659447, 38.679367, 30.990303>,  <37.881039, 38.365875, 31.102640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659447, 38.679367, 30.990303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746757, -0.318645, 0.583798,
		0.368051, 0.533133, 0.761779,
		-0.553979, 0.783732, -0.280843,
		37.493252, 38.914486, 30.906050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832066, 38.752224, 31.671810>,  <37.881039, 38.365875, 31.102640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832066, 38.752224, 31.671810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527477, 38.824478, 31.422800>,  <37.344727, 38.867828, 31.273394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527477, 38.824478, 31.422800>,  <37.832066, 38.752224, 31.671810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527477, 38.824478, 31.422800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647444, -0.258372, 0.716980,
		-0.031333, 0.949008, 0.313692,
		-0.761469, 0.180633, -0.622525,
		37.299038, 38.878670, 31.236042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439884, 39.059875, 32.116802>,  <37.832066, 38.752224, 31.671810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439884, 39.059875, 32.116802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182320, 38.991985, 31.818386>,  <37.027782, 38.951252, 31.639336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182320, 38.991985, 31.818386>,  <37.439884, 39.059875, 32.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182320, 38.991985, 31.818386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713210, -0.219837, 0.665585,
		-0.276972, 0.960659, 0.020507,
		-0.643909, -0.169722, -0.746040,
		36.989147, 38.941067, 31.594574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927460, 39.503555, 32.244823>,  <37.439884, 39.059875, 32.116802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927460, 39.503555, 32.244823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784950, 39.203423, 32.022083>,  <36.699444, 39.023342, 31.888439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784950, 39.203423, 32.022083>,  <36.927460, 39.503555, 32.244823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784950, 39.203423, 32.022083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515789, -0.339000, 0.786791,
		-0.779123, 0.567526, -0.266236,
		-0.356270, -0.750328, -0.556847,
		36.678070, 38.978325, 31.855030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314758, 39.338470, 32.522980>,  <36.927460, 39.503555, 32.244823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314758, 39.338470, 32.522980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386574, 39.016624, 32.296577>,  <36.429661, 38.823517, 32.160736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386574, 39.016624, 32.296577>,  <36.314758, 39.338470, 32.522980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386574, 39.016624, 32.296577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536038, -0.562455, 0.629530,
		-0.824882, 0.190379, -0.532283,
		0.179536, -0.804612, -0.566010,
		36.440434, 38.775242, 32.126774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674145, 39.147396, 32.481312>,  <36.314758, 39.338470, 32.522980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674145, 39.147396, 32.481312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959583, 38.868507, 32.453976>,  <36.130848, 38.701176, 32.437576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959583, 38.868507, 32.453976>,  <35.674145, 39.147396, 32.481312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959583, 38.868507, 32.453976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363957, -0.452311, 0.814218,
		-0.598597, -0.556149, -0.576524,
		0.713594, -0.697218, -0.068337,
		36.173660, 38.659344, 32.433475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309933, 38.570992, 32.546429>,  <35.674145, 39.147396, 32.481312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309933, 38.570992, 32.546429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681976, 38.443970, 32.620243>,  <35.905205, 38.367756, 32.664532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681976, 38.443970, 32.620243>,  <35.309933, 38.570992, 32.546429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681976, 38.443970, 32.620243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316164, -0.436585, 0.842279,
		-0.186904, -0.841756, -0.506472,
		0.930111, -0.317554, 0.184533,
		35.961010, 38.348705, 32.675602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232769, 37.844627, 32.910137>,  <35.309933, 38.570992, 32.546429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232769, 37.844627, 32.910137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611973, 37.953335, 32.976372>,  <35.839497, 38.018559, 33.016113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611973, 37.953335, 32.976372>,  <35.232769, 37.844627, 32.910137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611973, 37.953335, 32.976372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031471, -0.437720, 0.898560,
		0.316683, -0.857055, -0.406410,
		0.948009, 0.271769, 0.165591,
		35.896374, 38.034866, 33.026051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591816, 37.240841, 33.233150>,  <35.232769, 37.844627, 32.910137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591816, 37.240841, 33.233150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801296, 37.569221, 33.324162>,  <35.926987, 37.766251, 33.378769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801296, 37.569221, 33.324162>,  <35.591816, 37.240841, 33.233150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801296, 37.569221, 33.324162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270928, -0.413714, 0.869160,
		0.807671, -0.393540, -0.439083,
		0.523704, 0.820955, 0.227524,
		35.958408, 37.815510, 33.392418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225296, 36.931835, 33.536514>,  <35.591816, 37.240841, 33.233150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225296, 36.931835, 33.536514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213322, 37.316429, 33.645802>,  <36.206139, 37.547188, 33.711372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213322, 37.316429, 33.645802>,  <36.225296, 36.931835, 33.536514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213322, 37.316429, 33.645802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147749, -0.266077, 0.952561,
		0.988572, 0.068883, -0.134093,
		-0.029936, 0.961487, 0.273214,
		36.204342, 37.604874, 33.727764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899582, 37.159119, 33.783306>,  <36.225296, 36.931835, 33.536514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899582, 37.159119, 33.783306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620777, 37.389709, 33.953880>,  <36.453495, 37.528065, 34.056225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620777, 37.389709, 33.953880>,  <36.899582, 37.159119, 33.783306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620777, 37.389709, 33.953880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304422, -0.300551, 0.903878,
		0.649235, 0.759827, 0.033993,
		-0.697008, 0.576482, 0.426437,
		36.411674, 37.562653, 34.081810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190655, 37.391766, 34.355743>,  <36.899582, 37.159119, 33.783306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190655, 37.391766, 34.355743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800983, 37.439350, 34.432510>,  <36.567181, 37.467899, 34.478569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800983, 37.439350, 34.432510>,  <37.190655, 37.391766, 34.355743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800983, 37.439350, 34.432510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155377, -0.263545, 0.952051,
		0.163833, 0.957284, 0.238256,
		-0.974175, 0.118958, 0.191918,
		36.508732, 37.475037, 34.490086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296936, 37.344337, 35.025963>,  <37.190655, 37.391766, 34.355743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296936, 37.344337, 35.025963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901115, 37.389740, 34.990406>,  <36.663624, 37.416981, 34.969070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901115, 37.389740, 34.990406>,  <37.296936, 37.344337, 35.025963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901115, 37.389740, 34.990406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121619, -0.326085, 0.937485,
		0.077425, 0.938501, 0.336482,
		-0.989553, 0.113507, -0.088892,
		36.604248, 37.423794, 34.963737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021866, 37.613876, 35.718113>,  <37.296936, 37.344337, 35.025963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021866, 37.613876, 35.718113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742077, 37.410645, 35.517078>,  <36.574203, 37.288708, 35.396458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742077, 37.410645, 35.517078>,  <37.021866, 37.613876, 35.718113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742077, 37.410645, 35.517078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175960, -0.559170, 0.810165,
		-0.692658, 0.655124, 0.301723,
		-0.699473, -0.508076, -0.502589,
		36.532234, 37.258221, 35.366302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525494, 37.594292, 36.272816>,  <37.021866, 37.613876, 35.718113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525494, 37.594292, 36.272816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428829, 37.327446, 35.990944>,  <36.370831, 37.167339, 35.821823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428829, 37.327446, 35.990944>,  <36.525494, 37.594292, 36.272816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428829, 37.327446, 35.990944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245140, -0.660673, 0.709520,
		-0.938887, 0.344204, -0.003880,
		-0.241656, -0.667110, -0.704675,
		36.356331, 37.127312, 35.779541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838688, 37.310787, 36.466991>,  <36.525494, 37.594292, 36.272816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838688, 37.310787, 36.466991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038628, 37.050064, 36.238850>,  <36.158592, 36.893631, 36.101967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038628, 37.050064, 36.238850>,  <35.838688, 37.310787, 36.466991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038628, 37.050064, 36.238850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058495, -0.682420, 0.728616,
		-0.864135, -0.330836, -0.379235,
		0.499850, -0.651806, -0.570351,
		36.188583, 36.854523, 36.067745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497528, 36.670021, 36.668411>,  <35.838688, 37.310787, 36.466991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497528, 36.670021, 36.668411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842369, 36.580067, 36.486774>,  <36.049274, 36.526093, 36.377792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842369, 36.580067, 36.486774>,  <35.497528, 36.670021, 36.668411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842369, 36.580067, 36.486774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096498, -0.806861, 0.582806,
		-0.497454, -0.546260, -0.673899,
		0.862107, -0.224889, -0.454089,
		36.101002, 36.512600, 36.350548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440456, 35.885036, 36.493221>,  <35.497528, 36.670021, 36.668411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440456, 35.885036, 36.493221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819248, 36.011711, 36.514927>,  <36.046524, 36.087715, 36.527950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819248, 36.011711, 36.514927>,  <35.440456, 35.885036, 36.493221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819248, 36.011711, 36.514927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244119, -0.818981, 0.519303,
		0.208899, -0.478521, -0.852865,
		0.946978, 0.316682, 0.054268,
		36.103340, 36.106716, 36.531208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823059, 35.310188, 36.200905>,  <35.440456, 35.885036, 36.493221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823059, 35.310188, 36.200905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109798, 35.506622, 36.398884>,  <36.281841, 35.624481, 36.517670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109798, 35.506622, 36.398884>,  <35.823059, 35.310188, 36.200905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109798, 35.506622, 36.398884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231256, -0.837151, 0.495680,
		0.657765, -0.240866, -0.713673,
		0.716844, 0.491082, 0.494947,
		36.324852, 35.653946, 36.547367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473003, 34.946693, 36.153244>,  <35.823059, 35.310188, 36.200905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473003, 34.946693, 36.153244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510571, 35.176121, 36.478748>,  <36.533112, 35.313778, 36.674049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510571, 35.176121, 36.478748>,  <36.473003, 34.946693, 36.153244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510571, 35.176121, 36.478748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336642, -0.787522, 0.516219,
		0.936937, 0.225461, -0.267052,
		0.093922, 0.573565, 0.813758,
		36.538746, 35.348190, 36.722878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140179, 34.860191, 36.437649>,  <36.473003, 34.946693, 36.153244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140179, 34.860191, 36.437649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973728, 35.026413, 36.761169>,  <36.873859, 35.126144, 36.955280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973728, 35.026413, 36.761169>,  <37.140179, 34.860191, 36.437649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973728, 35.026413, 36.761169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329780, -0.759943, 0.560118,
		0.847400, 0.499804, 0.179189,
		-0.416122, 0.415552, 0.808801,
		36.848892, 35.151077, 37.003811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731018, 34.956261, 36.995201>,  <37.140179, 34.860191, 36.437649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731018, 34.956261, 36.995201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380497, 34.974758, 37.187016>,  <37.170185, 34.985855, 37.302105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380497, 34.974758, 37.187016>,  <37.731018, 34.956261, 36.995201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380497, 34.974758, 37.187016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357700, -0.604324, 0.711929,
		0.322716, 0.795396, 0.513030,
		-0.876302, 0.046240, 0.479538,
		37.117607, 34.988628, 37.330875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889790, 34.961163, 37.719784>,  <37.731018, 34.956261, 36.995201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889790, 34.961163, 37.719784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508034, 34.842335, 37.707886>,  <37.278980, 34.771038, 37.700745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508034, 34.842335, 37.707886>,  <37.889790, 34.961163, 37.719784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508034, 34.842335, 37.707886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220442, -0.768386, 0.600822,
		-0.201343, 0.566863, 0.798829,
		-0.954393, -0.297067, -0.029748,
		37.221714, 34.753216, 37.698959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737751, 34.865269, 38.465626>,  <37.889790, 34.961163, 37.719784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737751, 34.865269, 38.465626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501263, 34.630383, 38.244488>,  <37.359371, 34.489452, 38.111805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501263, 34.630383, 38.244488>,  <37.737751, 34.865269, 38.465626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501263, 34.630383, 38.244488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189845, -0.767548, 0.612233,
		-0.783849, 0.257008, 0.565268,
		-0.591219, -0.587211, -0.552850,
		37.323898, 34.454220, 38.078632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402611, 34.363789, 38.938152>,  <37.737751, 34.865269, 38.465626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402611, 34.363789, 38.938152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366348, 34.166519, 38.592075>,  <37.344589, 34.048157, 38.384430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366348, 34.166519, 38.592075>,  <37.402611, 34.363789, 38.938152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366348, 34.166519, 38.592075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166970, -0.864001, 0.474998,
		-0.981785, -0.101400, 0.160673,
		-0.090657, -0.493173, -0.865194,
		37.339149, 34.018566, 38.332516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943329, 33.768219, 38.912758>,  <37.402611, 34.363789, 38.938152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943329, 33.768219, 38.912758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245483, 33.709473, 38.657310>,  <37.426773, 33.674225, 38.504044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245483, 33.709473, 38.657310>,  <36.943329, 33.768219, 38.912758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245483, 33.709473, 38.657310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268456, -0.819667, 0.506042,
		-0.597771, -0.553694, -0.579735,
		0.755382, -0.146864, -0.638615,
		37.472099, 33.665413, 38.465725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855160, 33.164806, 38.737984>,  <36.943329, 33.768219, 38.912758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855160, 33.164806, 38.737984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246799, 33.218853, 38.677177>,  <37.481785, 33.251282, 38.640694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246799, 33.218853, 38.677177>,  <36.855160, 33.164806, 38.737984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246799, 33.218853, 38.677177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192223, -0.858967, 0.474580,
		-0.066447, -0.493881, -0.866987,
		0.979099, 0.135120, -0.152011,
		37.540527, 33.259388, 38.631573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124912, 32.478588, 38.505081>,  <36.855160, 33.164806, 38.737984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124912, 32.478588, 38.505081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440575, 32.704346, 38.601982>,  <37.629974, 32.839802, 38.660122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440575, 32.704346, 38.601982>,  <37.124912, 32.478588, 38.505081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440575, 32.704346, 38.601982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418782, -0.782986, 0.459952,
		0.449277, -0.261523, -0.854258,
		0.789159, 0.564393, 0.242256,
		37.677322, 32.873665, 38.674660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680107, 32.149521, 38.130234>,  <37.124912, 32.478588, 38.505081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680107, 32.149521, 38.130234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768951, 32.349213, 38.465240>,  <37.822258, 32.469028, 38.666245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768951, 32.349213, 38.465240>,  <37.680107, 32.149521, 38.130234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768951, 32.349213, 38.465240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353615, -0.841736, 0.407967,
		0.908638, 0.205545, -0.363494,
		0.222110, 0.499231, 0.837517,
		37.835583, 32.498981, 38.716496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392101, 32.035748, 38.340519>,  <37.680107, 32.149521, 38.130234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392101, 32.035748, 38.340519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177143, 32.120090, 38.667137>,  <38.048168, 32.170696, 38.863110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177143, 32.120090, 38.667137>,  <38.392101, 32.035748, 38.340519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177143, 32.120090, 38.667137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432287, -0.762485, 0.481398,
		0.724110, 0.611683, 0.318605,
		-0.537395, 0.210857, 0.816545,
		38.015926, 32.183346, 38.912102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702366, 31.597410, 38.892738>,  <38.392101, 32.035748, 38.340519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702366, 31.597410, 38.892738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407719, 31.785967, 39.086720>,  <38.230930, 31.899101, 39.203110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407719, 31.785967, 39.086720>,  <38.702366, 31.597410, 38.892738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407719, 31.785967, 39.086720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185080, -0.549185, 0.814949,
		0.650489, 0.690063, 0.317296,
		-0.736621, 0.471390, 0.484955,
		38.186733, 31.927383, 39.232204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990261, 31.600019, 39.542500>,  <38.702366, 31.597410, 38.892738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990261, 31.600019, 39.542500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597809, 31.641729, 39.607628>,  <38.362339, 31.666756, 39.646706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597809, 31.641729, 39.607628>,  <38.990261, 31.600019, 39.542500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597809, 31.641729, 39.607628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055295, -0.655615, 0.753068,
		0.185273, 0.747861, 0.637478,
		-0.981130, 0.104275, 0.162821,
		38.303471, 31.673012, 39.656475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941196, 31.706450, 40.335312>,  <38.990261, 31.600019, 39.542500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941196, 31.706450, 40.335312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594799, 31.572001, 40.187214>,  <38.386963, 31.491331, 40.098354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594799, 31.572001, 40.187214>,  <38.941196, 31.706450, 40.335312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594799, 31.572001, 40.187214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029849, -0.704335, 0.709240,
		-0.499170, 0.625246, 0.599914,
		-0.865990, -0.336125, -0.370246,
		38.335003, 31.471163, 40.076141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443279, 31.783367, 40.752895>,  <38.941196, 31.706450, 40.335312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443279, 31.783367, 40.752895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364738, 31.463804, 40.525494>,  <38.317612, 31.272066, 40.389053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364738, 31.463804, 40.525494>,  <38.443279, 31.783367, 40.752895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364738, 31.463804, 40.525494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152687, -0.597627, 0.787101,
		-0.968572, 0.067748, 0.239329,
		-0.196354, -0.798907, -0.568501,
		38.305832, 31.224133, 40.354942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945400, 31.428621, 41.132679>,  <38.443279, 31.783367, 40.752895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945400, 31.428621, 41.132679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127190, 31.166452, 40.891392>,  <38.236263, 31.009151, 40.746620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127190, 31.166452, 40.891392>,  <37.945400, 31.428621, 41.132679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127190, 31.166452, 40.891392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112729, -0.629434, 0.768834,
		-0.883596, -0.417418, -0.212179,
		0.454478, -0.655420, -0.603220,
		38.263535, 30.969826, 40.710426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658314, 30.771185, 41.305122>,  <37.945400, 31.428621, 41.132679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658314, 30.771185, 41.305122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015549, 30.723652, 41.131561>,  <38.229889, 30.695131, 41.027424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015549, 30.723652, 41.131561>,  <37.658314, 30.771185, 41.305122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015549, 30.723652, 41.131561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193409, -0.769382, 0.608806,
		-0.406180, -0.627639, -0.664144,
		0.893091, -0.118833, -0.433899,
		38.283474, 30.688002, 41.001392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836395, 30.019411, 41.429451>,  <37.658314, 30.771185, 41.305122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836395, 30.019411, 41.429451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057713, 30.047552, 41.097446>,  <38.190502, 30.064436, 40.898243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057713, 30.047552, 41.097446>,  <37.836395, 30.019411, 41.429451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057713, 30.047552, 41.097446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713477, -0.554279, 0.428631,
		-0.429902, -0.829352, -0.356875,
		0.553295, 0.070353, -0.830010,
		38.223701, 30.068659, 40.848442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961372, 29.336918, 41.116440>,  <37.836395, 30.019411, 41.429451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961372, 29.336918, 41.116440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256660, 29.595568, 41.039585>,  <38.433834, 29.750757, 40.993473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256660, 29.595568, 41.039585>,  <37.961372, 29.336918, 41.116440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256660, 29.595568, 41.039585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654437, -0.617463, 0.436408,
		0.163554, -0.447905, -0.878994,
		0.738216, 0.646623, -0.192138,
		38.478127, 29.789555, 40.981945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527798, 29.015623, 40.737957>,  <37.961372, 29.336918, 41.116440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527798, 29.015623, 40.737957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667072, 29.329020, 40.943832>,  <38.750637, 29.517057, 41.067356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667072, 29.329020, 40.943832>,  <38.527798, 29.015623, 40.737957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667072, 29.329020, 40.943832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613068, -0.605674, 0.507254,
		0.709163, 0.138918, -0.691223,
		0.348189, 0.783493, 0.514688,
		38.771530, 29.564068, 41.098240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230556, 29.000734, 40.639111>,  <38.527798, 29.015623, 40.737957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230556, 29.000734, 40.639111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127541, 29.174597, 40.984306>,  <39.065731, 29.278915, 41.191422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127541, 29.174597, 40.984306>,  <39.230556, 29.000734, 40.639111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127541, 29.174597, 40.984306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643581, -0.589018, 0.488734,
		0.720747, 0.681271, -0.128041,
		-0.257542, 0.434658, 0.862986,
		39.050278, 29.304995, 41.243202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787773, 29.258162, 40.996784>,  <39.230556, 29.000734, 40.639111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787773, 29.258162, 40.996784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503746, 29.184389, 41.268604>,  <39.333328, 29.140125, 41.431694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503746, 29.184389, 41.268604>,  <39.787773, 29.258162, 40.996784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503746, 29.184389, 41.268604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673187, -0.460770, 0.578369,
		0.206446, 0.868145, 0.451336,
		-0.710070, -0.184432, 0.679548,
		39.290726, 29.129059, 41.472469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001225, 29.598049, 41.707882>,  <39.787773, 29.258162, 40.996784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001225, 29.598049, 41.707882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777782, 29.267227, 41.733013>,  <39.643719, 29.068735, 41.748093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777782, 29.267227, 41.733013>,  <40.001225, 29.598049, 41.707882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777782, 29.267227, 41.733013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718033, -0.444270, 0.535773,
		-0.415202, 0.344393, 0.842022,
		-0.558601, -0.827053, 0.062824,
		39.610203, 29.019112, 41.751862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091492, 29.440804, 42.424583>,  <40.001225, 29.598049, 41.707882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091492, 29.440804, 42.424583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955639, 29.125505, 42.219322>,  <39.874126, 28.936327, 42.096165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955639, 29.125505, 42.219322>,  <40.091492, 29.440804, 42.424583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955639, 29.125505, 42.219322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693132, -0.578544, 0.429947,
		-0.635783, -0.209658, 0.742848,
		-0.339629, -0.788245, -0.513149,
		39.853748, 28.889032, 42.065376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865520, 28.933994, 42.923050>,  <40.091492, 29.440804, 42.424583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865520, 28.933994, 42.923050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955418, 28.739292, 42.585396>,  <40.009357, 28.622471, 42.382805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955418, 28.739292, 42.585396>,  <39.865520, 28.933994, 42.923050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955418, 28.739292, 42.585396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694405, -0.527730, 0.489186,
		-0.683588, -0.696111, 0.219402,
		0.224742, -0.486756, -0.844133,
		40.022839, 28.593266, 42.332157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869408, 28.212965, 43.018604>,  <39.865520, 28.933994, 42.923050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869408, 28.212965, 43.018604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120533, 28.321894, 42.726936>,  <40.271206, 28.387251, 42.551933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120533, 28.321894, 42.726936>,  <39.869408, 28.212965, 43.018604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120533, 28.321894, 42.726936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724366, -0.547256, 0.419291,
		-0.284861, -0.791423, -0.540835,
		0.627811, 0.272323, -0.729173,
		40.308876, 28.403591, 42.508186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337582, 27.726227, 43.048634>,  <39.869408, 28.212965, 43.018604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337582, 27.726227, 43.048634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531258, 27.997545, 42.827557>,  <40.647465, 28.160336, 42.694908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531258, 27.997545, 42.827557>,  <40.337582, 27.726227, 43.048634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531258, 27.997545, 42.827557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873408, -0.412311, 0.259148,
		-0.052105, -0.608208, -0.792066,
		0.484193, 0.678294, -0.552697,
		40.676514, 28.201033, 42.661747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963856, 27.404472, 43.392269>,  <40.337582, 27.726227, 43.048634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963856, 27.404472, 43.392269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268845, 27.472616, 43.142593>,  <41.451839, 27.513502, 42.992786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268845, 27.472616, 43.142593>,  <40.963856, 27.404472, 43.392269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268845, 27.472616, 43.142593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566139, 0.642712, -0.516146,
		0.313243, 0.746926, 0.586498,
		0.762473, 0.170360, -0.624189,
		41.497585, 27.523724, 42.955338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076355, 28.136547, 43.259361>,  <40.963856, 27.404472, 43.392269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076355, 28.136547, 43.259361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178776, 27.899891, 42.953575>,  <41.240227, 27.757896, 42.770103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178776, 27.899891, 42.953575>,  <41.076355, 28.136547, 43.259361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178776, 27.899891, 42.953575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612550, 0.512478, -0.601789,
		0.747812, 0.622358, -0.231190,
		0.256048, -0.591640, -0.764462,
		41.255589, 27.722399, 42.724236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345001, 28.471323, 42.629501>,  <41.076355, 28.136547, 43.259361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345001, 28.471323, 42.629501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169441, 28.134394, 42.504368>,  <41.064106, 27.932236, 42.429287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169441, 28.134394, 42.504368>,  <41.345001, 28.471323, 42.629501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169441, 28.134394, 42.504368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623416, 0.536188, -0.569082,
		0.647088, -0.054741, -0.760447,
		-0.438895, -0.842321, -0.312835,
		41.037773, 27.881697, 42.410519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196121, 28.512617, 41.921913>,  <41.345001, 28.471323, 42.629501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196121, 28.512617, 41.921913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941227, 28.242094, 42.069721>,  <40.788292, 28.079781, 42.158405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941227, 28.242094, 42.069721>,  <41.196121, 28.512617, 41.921913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941227, 28.242094, 42.069721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761913, 0.480773, -0.433988,
		0.115856, -0.558091, -0.821652,
		-0.637232, -0.676308, 0.369516,
		40.750057, 28.039202, 42.180576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832851, 28.333015, 41.346165>,  <41.196121, 28.512617, 41.921913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832851, 28.333015, 41.346165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623745, 28.228989, 41.670898>,  <40.498280, 28.166573, 41.865738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623745, 28.228989, 41.670898>,  <40.832851, 28.333015, 41.346165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623745, 28.228989, 41.670898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841180, 0.311884, -0.441751,
		-0.138314, -0.913835, -0.381806,
		-0.522767, -0.260067, 0.811838,
		40.466915, 28.150969, 41.914452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174240, 28.042206, 41.152958>,  <40.832851, 28.333015, 41.346165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174240, 28.042206, 41.152958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123276, 28.176224, 41.526379>,  <40.092697, 28.256634, 41.750431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123276, 28.176224, 41.526379>,  <40.174240, 28.042206, 41.152958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123276, 28.176224, 41.526379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884057, 0.388361, -0.260034,
		-0.449677, -0.858440, 0.246719,
		-0.127408, 0.335046, 0.933548,
		40.085052, 28.276737, 41.806442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486980, 27.697647, 41.458145>,  <40.174240, 28.042206, 41.152958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486980, 27.697647, 41.458145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601013, 28.044235, 41.622078>,  <39.669434, 28.252188, 41.720436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601013, 28.044235, 41.622078>,  <39.486980, 27.697647, 41.458145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601013, 28.044235, 41.622078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841054, 0.431209, -0.326629,
		-0.459736, -0.251572, 0.851677,
		0.285080, 0.866470, 0.409828,
		39.686539, 28.304176, 41.745026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929512, 27.929485, 41.890255>,  <39.486980, 27.697647, 41.458145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929512, 27.929485, 41.890255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146599, 28.257681, 41.818417>,  <39.276852, 28.454599, 41.775314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146599, 28.257681, 41.818417>,  <38.929512, 27.929485, 41.890255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146599, 28.257681, 41.818417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781804, 0.415330, -0.465063,
		-0.306987, 0.392807, 0.866869,
		0.542716, 0.820490, -0.179598,
		39.309414, 28.503828, 41.764538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885593, 28.660378, 42.150398>,  <38.929512, 27.929485, 41.890255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885593, 28.660378, 42.150398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107967, 28.968304, 42.275826>,  <39.241390, 29.153059, 42.351082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107967, 28.968304, 42.275826>,  <38.885593, 28.660378, 42.150398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107967, 28.968304, 42.275826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300433, 0.537818, -0.787713,
		-0.775036, 0.343708, 0.530268,
		0.555931, 0.769816, 0.313567,
		39.274746, 29.199249, 42.369896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501698, 29.360735, 42.278568>,  <38.885593, 28.660378, 42.150398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501698, 29.360735, 42.278568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874531, 29.412930, 42.143398>,  <39.098232, 29.444246, 42.062294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874531, 29.412930, 42.143398>,  <38.501698, 29.360735, 42.278568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874531, 29.412930, 42.143398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342237, 0.622962, -0.703415,
		0.118730, 0.771292, 0.625309,
		0.932082, 0.130488, -0.337929,
		39.154156, 29.452076, 42.042019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711517, 30.040619, 42.117245>,  <38.501698, 29.360735, 42.278568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711517, 30.040619, 42.117245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941204, 29.868670, 41.838535>,  <39.079014, 29.765501, 41.671310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941204, 29.868670, 41.838535>,  <38.711517, 30.040619, 42.117245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941204, 29.868670, 41.838535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353775, 0.637221, -0.684684,
		0.738323, 0.639655, 0.213824,
		0.574215, -0.429872, -0.696769,
		39.113468, 29.739708, 41.629505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105640, 30.570787, 41.764980>,  <38.711517, 30.040619, 42.117245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105640, 30.570787, 41.764980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036407, 30.247580, 41.539719>,  <38.994865, 30.053654, 41.404560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036407, 30.247580, 41.539719>,  <39.105640, 30.570787, 41.764980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036407, 30.247580, 41.539719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441974, 0.574703, -0.688750,
		0.880171, 0.129687, -0.456597,
		-0.173085, -0.808021, -0.563155,
		38.984482, 30.005173, 41.370773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423069, 30.667858, 41.043030>,  <39.105640, 30.570787, 41.764980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423069, 30.667858, 41.043030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106575, 30.423306, 41.048119>,  <38.916679, 30.276575, 41.051170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106575, 30.423306, 41.048119>,  <39.423069, 30.667858, 41.043030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106575, 30.423306, 41.048119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437583, 0.551536, -0.710161,
		0.427162, -0.567471, -0.703924,
		-0.791235, -0.611380, 0.012721,
		38.869205, 30.239891, 41.051933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293098, 30.453943, 40.340721>,  <39.423069, 30.667858, 41.043030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293098, 30.453943, 40.340721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964973, 30.459114, 40.569431>,  <38.768097, 30.462217, 40.706657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964973, 30.459114, 40.569431>,  <39.293098, 30.453943, 40.340721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964973, 30.459114, 40.569431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515482, 0.416322, -0.748968,
		-0.247725, -0.909125, -0.334849,
		-0.820311, 0.012929, 0.571771,
		38.718880, 30.462994, 40.740963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759609, 30.036999, 39.987419>,  <39.293098, 30.453943, 40.340721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759609, 30.036999, 39.987419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594036, 30.328327, 40.205853>,  <38.494690, 30.503124, 40.336914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594036, 30.328327, 40.205853>,  <38.759609, 30.036999, 39.987419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594036, 30.328327, 40.205853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412005, 0.385038, -0.825831,
		-0.811732, -0.566831, 0.140691,
		-0.413935, 0.728319, 0.546085,
		38.469856, 30.546824, 40.369678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979332, 30.117098, 39.772079>,  <38.759609, 30.036999, 39.987419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979332, 30.117098, 39.772079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071983, 30.464180, 39.948006>,  <38.127575, 30.672430, 40.053562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071983, 30.464180, 39.948006>,  <37.979332, 30.117098, 39.772079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071983, 30.464180, 39.948006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604637, 0.482586, -0.633660,
		-0.762078, -0.119156, 0.636426,
		0.231626, 0.867705, 0.439815,
		38.141472, 30.724491, 40.079948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731819, 30.593048, 39.404457>,  <37.979332, 30.117098, 39.772079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731819, 30.593048, 39.404457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812496, 30.807016, 39.732647>,  <37.860905, 30.935398, 39.929562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812496, 30.807016, 39.732647>,  <37.731819, 30.593048, 39.404457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812496, 30.807016, 39.732647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424111, 0.802784, -0.419128,
		-0.882864, -0.263436, 0.388784,
		0.201696, 0.534920, 0.820475,
		37.873005, 30.967493, 39.978790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128452, 31.012785, 39.616814>,  <37.731819, 30.593048, 39.404457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128452, 31.012785, 39.616814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490841, 31.143566, 39.724388>,  <37.708275, 31.222034, 39.788933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490841, 31.143566, 39.724388>,  <37.128452, 31.012785, 39.616814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490841, 31.143566, 39.724388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198525, 0.889184, -0.412236,
		-0.373913, 0.320083, 0.870480,
		0.905967, 0.326953, 0.268933,
		37.762630, 31.241652, 39.805069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022884, 31.692526, 39.876030>,  <37.128452, 31.012785, 39.616814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022884, 31.692526, 39.876030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410458, 31.677534, 39.778244>,  <37.643002, 31.668539, 39.719574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410458, 31.677534, 39.778244>,  <37.022884, 31.692526, 39.876030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410458, 31.677534, 39.778244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051377, 0.936385, -0.347195,
		0.241923, 0.348969, 0.905370,
		0.968934, -0.037480, -0.244462,
		37.701138, 31.666290, 39.704906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193932, 32.397243, 39.883549>,  <37.022884, 31.692526, 39.876030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193932, 32.397243, 39.883549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507927, 32.232140, 39.698757>,  <37.696323, 32.133080, 39.587883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507927, 32.232140, 39.698757>,  <37.193932, 32.397243, 39.883549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507927, 32.232140, 39.698757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286636, 0.903083, -0.319814,
		0.549209, 0.118631, 0.827222,
		0.784990, -0.412757, -0.461977,
		37.743423, 32.108311, 39.560165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814880, 32.748451, 40.086056>,  <37.193932, 32.397243, 39.883549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814880, 32.748451, 40.086056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882309, 32.575996, 39.731495>,  <37.922768, 32.472523, 39.518761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882309, 32.575996, 39.731495>,  <37.814880, 32.748451, 40.086056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882309, 32.575996, 39.731495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324467, 0.873421, -0.363121,
		0.930755, -0.226395, 0.287125,
		0.168572, -0.431139, -0.886399,
		37.932880, 32.446655, 39.465576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294266, 33.224606, 39.844284>,  <37.814880, 32.748451, 40.086056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294266, 33.224606, 39.844284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193558, 33.011929, 39.520824>,  <38.133133, 32.884323, 39.326748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193558, 33.011929, 39.520824>,  <38.294266, 33.224606, 39.844284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193558, 33.011929, 39.520824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011149, 0.833917, -0.551777,
		0.967723, -0.147937, -0.204029,
		-0.251771, -0.531692, -0.808650,
		38.118027, 32.852421, 39.278229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648056, 33.477543, 39.250034>,  <38.294266, 33.224606, 39.844284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648056, 33.477543, 39.250034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357258, 33.270470, 39.069599>,  <38.182777, 33.146225, 38.961338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357258, 33.270470, 39.069599>,  <38.648056, 33.477543, 39.250034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357258, 33.270470, 39.069599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057930, 0.700854, -0.710948,
		0.684180, -0.490734, -0.539516,
		-0.727009, -0.517671, -0.451082,
		38.139160, 33.115166, 38.934273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794415, 33.453815, 38.514950>,  <38.648056, 33.477543, 39.250034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794415, 33.453815, 38.514950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402523, 33.379147, 38.544022>,  <38.167389, 33.334347, 38.561466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402523, 33.379147, 38.544022>,  <38.794415, 33.453815, 38.514950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402523, 33.379147, 38.544022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177747, 0.642785, -0.745140,
		0.092378, -0.742955, -0.662936,
		-0.979731, -0.186670, 0.072679,
		38.108604, 33.323147, 38.565826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490383, 33.369389, 37.889980>,  <38.794415, 33.453815, 38.514950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490383, 33.369389, 37.889980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207878, 33.550102, 38.108002>,  <38.038376, 33.658531, 38.238815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207878, 33.550102, 38.108002>,  <38.490383, 33.369389, 37.889980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207878, 33.550102, 38.108002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051270, 0.735245, -0.675859,
		-0.706089, -0.505280, -0.496115,
		-0.706264, 0.451781, 0.545055,
		37.995998, 33.685638, 38.271519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992924, 32.959854, 37.303322>,  <38.490383, 33.369389, 37.889980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992924, 32.959854, 37.303322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221985, 33.232349, 37.120899>,  <39.359421, 33.395847, 37.011444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221985, 33.232349, 37.120899>,  <38.992924, 32.959854, 37.303322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221985, 33.232349, 37.120899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791802, -0.315460, 0.523005,
		0.212422, -0.660606, -0.720054,
		0.572648, 0.681238, -0.456058,
		39.393780, 33.436722, 36.984081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648983, 33.271278, 37.413933>,  <38.992924, 32.959854, 37.303322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648983, 33.271278, 37.413933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878201, 33.411903, 37.117817>,  <40.015732, 33.496277, 36.940147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878201, 33.411903, 37.117817>,  <39.648983, 33.271278, 37.413933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878201, 33.411903, 37.117817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055928, 0.917984, 0.392655,
		0.817614, -0.183606, 0.545707,
		0.573043, 0.351560, -0.740288,
		40.050114, 33.517372, 36.895729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305290, 33.407963, 37.695667>,  <39.648983, 33.271278, 37.413933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305290, 33.407963, 37.695667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228241, 33.632980, 37.374062>,  <40.182011, 33.767990, 37.181099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228241, 33.632980, 37.374062>,  <40.305290, 33.407963, 37.695667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228241, 33.632980, 37.374062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060492, 0.824606, 0.562464,
		0.979406, 0.059707, -0.192868,
		-0.192623, 0.562548, -0.804012,
		40.170456, 33.801746, 37.132858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822899, 34.021458, 37.576424>,  <40.305290, 33.407963, 37.695667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822899, 34.021458, 37.576424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451862, 34.106335, 37.453426>,  <40.229240, 34.157261, 37.379627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451862, 34.106335, 37.453426>,  <40.822899, 34.021458, 37.576424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451862, 34.106335, 37.453426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009132, 0.835682, 0.549138,
		0.373486, 0.506567, -0.777108,
		-0.927591, 0.212192, -0.307490,
		40.173584, 34.169991, 37.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022869, 33.818020, 36.875172>,  <40.822899, 34.021458, 37.576424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022869, 33.818020, 36.875172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335922, 33.858738, 36.629528>,  <41.523754, 33.883167, 36.482143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335922, 33.858738, 36.629528>,  <41.022869, 33.818020, 36.875172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335922, 33.858738, 36.629528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233779, 0.962388, -0.138411,
		0.576922, 0.251890, 0.776989,
		0.782629, 0.101791, -0.614110,
		41.570709, 33.889275, 36.445293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502296, 34.289665, 37.205849>,  <41.022869, 33.818020, 36.875172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502296, 34.289665, 37.205849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412937, 34.287964, 36.815960>,  <41.359322, 34.286942, 36.582027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412937, 34.287964, 36.815960>,  <41.502296, 34.289665, 37.205849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412937, 34.287964, 36.815960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250319, 0.966703, 0.053152,
		0.942036, 0.255864, -0.217026,
		-0.223400, -0.004255, -0.974718,
		41.345917, 34.286686, 36.523544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684109, 34.943863, 36.899414>,  <41.502296, 34.289665, 37.205849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684109, 34.943863, 36.899414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400917, 34.793930, 36.659992>,  <41.231003, 34.703968, 36.516338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400917, 34.793930, 36.659992>,  <41.684109, 34.943863, 36.899414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400917, 34.793930, 36.659992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511602, 0.856465, 0.068782,
		0.486857, 0.354916, -0.798125,
		-0.707979, -0.374836, -0.598552,
		41.188522, 34.681480, 36.480427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554562, 35.357536, 36.324863>,  <41.684109, 34.943863, 36.899414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554562, 35.357536, 36.324863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220234, 35.139816, 36.353542>,  <41.019638, 35.009186, 36.370750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220234, 35.139816, 36.353542>,  <41.554562, 35.357536, 36.324863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220234, 35.139816, 36.353542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548246, 0.820666, -0.161040,
		0.028813, -0.173909, -0.984340,
		-0.835821, -0.544300, 0.071699,
		40.969486, 34.976524, 36.375053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248020, 35.659401, 36.397625>,  <41.554562, 35.357536, 36.324863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248020, 35.659401, 36.397625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152851, 35.609715, 36.012302>,  <42.095749, 35.579903, 35.781109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152851, 35.609715, 36.012302>,  <42.248020, 35.659401, 36.397625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152851, 35.609715, 36.012302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747229, -0.657025, -0.099836,
		-0.620517, -0.743565, 0.249137,
		-0.237923, -0.124213, -0.963309,
		42.081474, 35.572453, 35.723309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356636, 34.916679, 36.239948>,  <42.248020, 35.659401, 36.397625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356636, 34.916679, 36.239948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381973, 35.150616, 35.916481>,  <42.397175, 35.290977, 35.722401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381973, 35.150616, 35.916481>,  <42.356636, 34.916679, 36.239948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381973, 35.150616, 35.916481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800587, -0.513576, -0.308709,
		-0.595860, -0.627857, -0.500747,
		0.063347, 0.584838, -0.808673,
		42.400978, 35.326069, 35.673878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411076, 34.598690, 35.554653>,  <42.356636, 34.916679, 36.239948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411076, 34.598690, 35.554653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593185, 34.953583, 35.524887>,  <42.702450, 35.166519, 35.507027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593185, 34.953583, 35.524887>,  <42.411076, 34.598690, 35.554653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593185, 34.953583, 35.524887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871698, -0.461195, -0.165658,
		-0.181295, 0.010556, -0.983372,
		0.455275, 0.887236, -0.074411,
		42.729767, 35.219753, 35.502563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705200, 34.473316, 34.943260>,  <42.411076, 34.598690, 35.554653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705200, 34.473316, 34.943260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903225, 34.745663, 35.159164>,  <43.022041, 34.909069, 35.288708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903225, 34.745663, 35.159164>,  <42.705200, 34.473316, 34.943260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903225, 34.745663, 35.159164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860096, -0.472028, -0.193455,
		0.123064, 0.560015, -0.819291,
		0.495066, 0.680862, 0.539757,
		43.051746, 34.949921, 35.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355431, 34.515633, 34.564167>,  <42.705200, 34.473316, 34.943260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355431, 34.515633, 34.564167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420086, 34.712067, 34.906559>,  <43.458881, 34.829929, 35.111996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420086, 34.712067, 34.906559>,  <43.355431, 34.515633, 34.564167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420086, 34.712067, 34.906559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932314, -0.360347, 0.030680,
		0.323517, 0.793084, -0.516096,
		0.161642, 0.491089, 0.855981,
		43.468578, 34.859394, 35.163353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079636, 34.922226, 34.577038>,  <43.355431, 34.515633, 34.564167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079636, 34.922226, 34.577038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962360, 34.849854, 34.952549>,  <43.891994, 34.806431, 35.177856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962360, 34.849854, 34.952549>,  <44.079636, 34.922226, 34.577038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962360, 34.849854, 34.952549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955830, -0.076793, 0.283711,
		0.020759, 0.980493, 0.195456,
		-0.293187, -0.180933, 0.938778,
		43.874405, 34.795574, 35.234184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635345, 35.034271, 34.965645>,  <44.079636, 34.922226, 34.577038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635345, 35.034271, 34.965645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756538, 35.316559, 35.221821>,  <44.829254, 35.485931, 35.375526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756538, 35.316559, 35.221821>,  <44.635345, 35.034271, 34.965645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756538, 35.316559, 35.221821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328512, -0.708183, 0.624945,
		0.894584, 0.021044, -0.446405,
		0.302985, 0.705715, 0.640443,
		44.847435, 35.528275, 35.413952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371292, 34.940182, 34.697937>,  <44.635345, 35.034271, 34.965645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371292, 34.940182, 34.697937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693096, 34.822224, 34.491714>,  <45.886177, 34.751450, 34.367981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693096, 34.822224, 34.491714>,  <45.371292, 34.940182, 34.697937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693096, 34.822224, 34.491714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593636, 0.427138, 0.682018,
		0.019089, -0.854744, 0.518698,
		0.804507, -0.294899, -0.515561,
		45.934448, 34.733753, 34.337048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865646, 34.778202, 35.193844>,  <45.371292, 34.940182, 34.697937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865646, 34.778202, 35.193844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073967, 34.790752, 34.852604>,  <46.198959, 34.798283, 34.647861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073967, 34.790752, 34.852604>,  <45.865646, 34.778202, 35.193844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073967, 34.790752, 34.852604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813587, 0.284398, 0.507142,
		0.258532, -0.958193, 0.122588,
		0.520804, 0.031377, -0.853099,
		46.230209, 34.800167, 34.596676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425678, 34.392467, 35.355167>,  <45.865646, 34.778202, 35.193844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425678, 34.392467, 35.355167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475380, 34.696609, 35.100163>,  <46.505199, 34.879093, 34.947159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475380, 34.696609, 35.100163>,  <46.425678, 34.392467, 35.355167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.475380, 34.696609, 35.100163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770064, 0.331289, 0.545206,
		0.625750, -0.558670, -0.544357,
		0.124251, 0.760352, -0.637516,
		46.512653, 34.924717, 34.908909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046803, 34.355282, 34.911823>,  <46.425678, 34.392467, 35.355167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046803, 34.355282, 34.911823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.933315, 34.735928, 34.959026>,  <46.865223, 34.964317, 34.987347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.933315, 34.735928, 34.959026>,  <47.046803, 34.355282, 34.911823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.933315, 34.735928, 34.959026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873301, 0.205600, 0.441672,
		0.396041, 0.228367, -0.889382,
		-0.283720, 0.951618, 0.118007,
		46.848198, 35.021412, 34.994427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.549213, 34.839157, 34.573601>,  <47.046803, 34.355282, 34.911823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.549213, 34.839157, 34.573601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349213, 35.006958, 34.876656>,  <47.229214, 35.107639, 35.058491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349213, 35.006958, 34.876656>,  <47.549213, 34.839157, 34.573601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.349213, 35.006958, 34.876656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863572, 0.307329, 0.399740,
		-0.065152, 0.854146, -0.515936,
		-0.499999, 0.419504, 0.757640,
		47.199215, 35.132809, 35.103947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.725788, 35.584888, 34.749325>,  <47.549213, 34.839157, 34.573601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.725788, 35.584888, 34.749325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611118, 35.350395, 35.052414>,  <47.542316, 35.209698, 35.234268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611118, 35.350395, 35.052414>,  <47.725788, 35.584888, 34.749325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.611118, 35.350395, 35.052414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799079, 0.289982, 0.526672,
		-0.528479, 0.756467, 0.385315,
		-0.286676, -0.586232, 0.757726,
		47.525116, 35.174526, 35.279732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.775276, 36.204235, 28.571260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395321, 36.256023, 28.457457>,  <37.167347, 36.287094, 28.389174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395321, 36.256023, 28.457457>,  <37.775276, 36.204235, 28.571260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395321, 36.256023, 28.457457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311490, -0.468062, 0.826978,
		-0.026102, 0.874161, 0.484935,
		-0.949891, 0.129467, -0.284509,
		37.110355, 36.294865, 28.372105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390072, 36.409130, 29.169922>,  <37.775276, 36.204235, 28.571260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390072, 36.409130, 29.169922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114342, 36.270191, 28.915623>,  <36.948902, 36.186829, 28.763044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114342, 36.270191, 28.915623>,  <37.390072, 36.409130, 29.169922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114342, 36.270191, 28.915623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455346, -0.474806, 0.753140,
		-0.563458, 0.808646, 0.169134,
		-0.689330, -0.347348, -0.635747,
		36.907543, 36.165985, 28.724899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783905, 36.416714, 29.538517>,  <37.390072, 36.409130, 29.169922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783905, 36.416714, 29.538517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666714, 36.165096, 29.250500>,  <36.596397, 36.014126, 29.077690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666714, 36.165096, 29.250500>,  <36.783905, 36.416714, 29.538517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666714, 36.165096, 29.250500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616552, -0.451294, 0.645134,
		-0.730770, 0.632957, -0.255618,
		-0.292982, -0.629046, -0.720043,
		36.578819, 35.976383, 29.034487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098263, 36.445889, 29.548637>,  <36.783905, 36.416714, 29.538517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098263, 36.445889, 29.548637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224781, 36.090878, 29.414625>,  <36.300694, 35.877869, 29.334217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224781, 36.090878, 29.414625>,  <36.098263, 36.445889, 29.548637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224781, 36.090878, 29.414625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466370, -0.453013, 0.759788,
		-0.826109, -0.084070, -0.557204,
		0.316296, -0.887531, -0.335031,
		36.319672, 35.824619, 29.314116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535496, 35.988815, 29.571749>,  <36.098263, 36.445889, 29.548637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535496, 35.988815, 29.571749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850159, 35.742428, 29.555025>,  <36.038956, 35.594597, 29.544991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850159, 35.742428, 29.555025>,  <35.535496, 35.988815, 29.571749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850159, 35.742428, 29.555025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397495, -0.557136, 0.729107,
		-0.472398, -0.556943, -0.683121,
		0.786663, -0.615966, -0.041807,
		36.086159, 35.557636, 29.542482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205769, 35.408588, 29.537781>,  <35.535496, 35.988815, 29.571749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205769, 35.408588, 29.537781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573883, 35.315151, 29.663324>,  <35.794750, 35.259087, 29.738649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573883, 35.315151, 29.663324>,  <35.205769, 35.408588, 29.537781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573883, 35.315151, 29.663324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391098, -0.571403, 0.721485,
		0.010802, -0.786721, -0.617214,
		0.920286, -0.233598, 0.313857,
		35.849968, 35.245071, 29.757481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192184, 34.700874, 29.542261>,  <35.205769, 35.408588, 29.537781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192184, 34.700874, 29.542261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496113, 34.782604, 29.789139>,  <35.678471, 34.831642, 29.937265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496113, 34.782604, 29.789139>,  <35.192184, 34.700874, 29.542261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496113, 34.782604, 29.789139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369098, -0.645940, 0.668227,
		0.535204, -0.735537, -0.415383,
		0.759818, 0.204320, 0.617195,
		35.724060, 34.843899, 29.974297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205635, 34.090607, 29.854275>,  <35.192184, 34.700874, 29.542261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205635, 34.090607, 29.854275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418575, 34.332695, 30.091022>,  <35.546337, 34.477947, 30.233070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418575, 34.332695, 30.091022>,  <35.205635, 34.090607, 29.854275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418575, 34.332695, 30.091022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232999, -0.567411, 0.789782,
		0.813828, -0.558344, -0.161043,
		0.532348, 0.605224, 0.591869,
		35.578281, 34.514263, 30.268583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580555, 33.650246, 30.245024>,  <35.205635, 34.090607, 29.854275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580555, 33.650246, 30.245024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551689, 33.984818, 30.462343>,  <35.534370, 34.185562, 30.592735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.551689, 33.984818, 30.462343>,  <35.580555, 33.650246, 30.245024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551689, 33.984818, 30.462343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357207, -0.530259, 0.768914,
		0.931234, -0.138585, 0.337043,
		-0.072160, 0.836432, 0.543299,
		35.530041, 34.235748, 30.625334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037201, 33.527008, 30.829575>,  <35.580555, 33.650246, 30.245024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037201, 33.527008, 30.829575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787952, 33.824890, 30.925182>,  <35.638401, 34.003620, 30.982548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787952, 33.824890, 30.925182>,  <36.037201, 33.527008, 30.829575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787952, 33.824890, 30.925182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158002, -0.419161, 0.894058,
		0.765997, 0.519343, 0.378855,
		-0.623124, 0.744706, 0.239019,
		35.601017, 34.048302, 30.996887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180630, 33.676731, 31.532946>,  <36.037201, 33.527008, 30.829575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180630, 33.676731, 31.532946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829449, 33.867901, 31.521751>,  <35.618740, 33.982601, 31.515036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829449, 33.867901, 31.521751>,  <36.180630, 33.676731, 31.532946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829449, 33.867901, 31.521751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200821, -0.314591, 0.927741,
		0.434584, 0.820136, 0.372175,
		-0.877957, 0.477922, -0.027984,
		35.566063, 34.011276, 31.513355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173912, 34.168488, 32.025627>,  <36.180630, 33.676731, 31.532946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173912, 34.168488, 32.025627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782856, 34.126957, 31.952475>,  <35.548222, 34.102039, 31.908583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782856, 34.126957, 31.952475>,  <36.173912, 34.168488, 32.025627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782856, 34.126957, 31.952475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149180, -0.270576, 0.951070,
		-0.148231, 0.957083, 0.249036,
		-0.977636, -0.103827, -0.182886,
		35.489567, 34.095810, 31.897610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770145, 34.643150, 32.530636>,  <36.173912, 34.168488, 32.025627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770145, 34.643150, 32.530636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554848, 34.329231, 32.407749>,  <35.425667, 34.140881, 32.334019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554848, 34.329231, 32.407749>,  <35.770145, 34.643150, 32.530636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554848, 34.329231, 32.407749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238989, -0.207429, 0.948608,
		-0.808192, 0.584006, -0.075911,
		-0.538247, -0.784799, -0.307213,
		35.393375, 34.093792, 32.315586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140244, 34.771412, 32.899220>,  <35.770145, 34.643150, 32.530636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140244, 34.771412, 32.899220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114891, 34.386227, 32.794384>,  <35.099678, 34.155117, 32.731483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114891, 34.386227, 32.794384>,  <35.140244, 34.771412, 32.899220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114891, 34.386227, 32.794384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355100, -0.223668, 0.907676,
		-0.932677, 0.150598, -0.327770,
		-0.063382, -0.962960, -0.262087,
		35.095875, 34.097340, 32.715759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476181, 34.635357, 33.093697>,  <35.140244, 34.771412, 32.899220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476181, 34.635357, 33.093697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.680378, 34.292606, 33.064972>,  <34.802895, 34.086956, 33.047737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.680378, 34.292606, 33.064972>,  <34.476181, 34.635357, 33.093697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680378, 34.292606, 33.064972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297065, -0.254112, 0.920424,
		-0.806941, -0.448533, -0.384271,
		0.510488, -0.856881, -0.071809,
		34.833523, 34.035542, 33.043430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082249, 34.246426, 33.503094>,  <34.476181, 34.635357, 33.093697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082249, 34.246426, 33.503094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420258, 34.034115, 33.477135>,  <34.623062, 33.906731, 33.461559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420258, 34.034115, 33.477135>,  <34.082249, 34.246426, 33.503094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420258, 34.034115, 33.477135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150091, -0.351925, 0.923916,
		-0.513232, -0.770991, -0.377050,
		0.845024, -0.530775, -0.064900,
		34.673763, 33.874882, 33.457664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856403, 33.556362, 33.664597>,  <34.082249, 34.246426, 33.503094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856403, 33.556362, 33.664597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.251411, 33.558033, 33.727566>,  <34.488419, 33.559036, 33.765347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.251411, 33.558033, 33.727566>,  <33.856403, 33.556362, 33.664597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251411, 33.558033, 33.727566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144794, -0.368976, 0.918091,
		0.061925, -0.929430, -0.363766,
		0.987522, 0.004181, 0.157425,
		34.547668, 33.559288, 33.774792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058788, 32.767094, 33.829697>,  <33.856403, 33.556362, 33.664597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058788, 32.767094, 33.829697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327599, 33.024551, 33.976177>,  <34.488884, 33.179028, 34.064064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327599, 33.024551, 33.976177>,  <34.058788, 32.767094, 33.829697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327599, 33.024551, 33.976177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073417, -0.434170, 0.897834,
		0.736881, -0.630251, -0.244519,
		0.672024, 0.643645, 0.366203,
		34.529205, 33.217644, 34.086037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580627, 32.366257, 34.270813>,  <34.058788, 32.767094, 33.829697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580627, 32.366257, 34.270813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.606564, 32.755234, 34.360390>,  <34.622128, 32.988621, 34.414135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.606564, 32.755234, 34.360390>,  <34.580627, 32.366257, 34.270813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606564, 32.755234, 34.360390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024398, -0.225888, 0.973848,
		0.997597, -0.057685, -0.038373,
		0.064844, 0.972444, 0.223938,
		34.626019, 33.046967, 34.427570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165955, 32.434017, 34.835121>,  <34.580627, 32.366257, 34.270813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165955, 32.434017, 34.835121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.923382, 32.751907, 34.845337>,  <34.777840, 32.942642, 34.851467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.923382, 32.751907, 34.845337>,  <35.165955, 32.434017, 34.835121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923382, 32.751907, 34.845337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053027, -0.072466, 0.995960,
		0.793367, 0.602626, 0.086088,
		-0.606430, 0.794727, 0.025537,
		34.741451, 32.990326, 34.852997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472771, 32.854164, 35.399288>,  <35.165955, 32.434017, 34.835121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472771, 32.854164, 35.399288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091682, 32.963604, 35.346420>,  <34.863029, 33.029266, 35.314701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091682, 32.963604, 35.346420>,  <35.472771, 32.854164, 35.399288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091682, 32.963604, 35.346420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171377, -0.124670, 0.977286,
		0.250905, 0.953731, 0.165664,
		-0.952721, 0.273597, -0.132167,
		34.805866, 33.045685, 35.306770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477245, 32.664722, 36.101776>,  <35.472771, 32.854164, 35.399288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477245, 32.664722, 36.101776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760597, 32.712296, 36.380074>,  <35.930607, 32.740841, 36.547050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760597, 32.712296, 36.380074>,  <35.477245, 32.664722, 36.101776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760597, 32.712296, 36.380074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674850, 0.174723, -0.716972,
		-0.206833, 0.977408, 0.043509,
		0.708377, 0.118932, 0.695743,
		35.973110, 32.747974, 36.588795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778728, 33.295406, 35.960133>,  <35.477245, 32.664722, 36.101776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778728, 33.295406, 35.960133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045326, 33.110260, 36.193897>,  <36.205284, 32.999172, 36.334156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.045326, 33.110260, 36.193897>,  <35.778728, 33.295406, 35.960133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045326, 33.110260, 36.193897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745505, 0.415864, -0.520845,
		-0.001952, 0.782821, 0.622243,
		0.666497, -0.462869, 0.584409,
		36.245274, 32.971397, 36.369221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240314, 33.842129, 36.148579>,  <35.778728, 33.295406, 35.960133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240314, 33.842129, 36.148579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.416298, 33.488125, 36.209496>,  <36.521889, 33.275723, 36.246048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.416298, 33.488125, 36.209496>,  <36.240314, 33.842129, 36.148579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416298, 33.488125, 36.209496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815949, 0.323129, -0.479390,
		0.375055, 0.335175, 0.864287,
		0.439956, -0.885011, 0.152295,
		36.548286, 33.222622, 36.255184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939060, 33.989510, 36.392899>,  <36.240314, 33.842129, 36.148579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939060, 33.989510, 36.392899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920391, 33.619759, 36.241451>,  <36.909187, 33.397907, 36.150581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920391, 33.619759, 36.241451>,  <36.939060, 33.989510, 36.392899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920391, 33.619759, 36.241451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775272, 0.205490, -0.597267,
		0.629901, -0.321408, 0.707051,
		-0.046675, -0.924376, -0.378617,
		36.906387, 33.342445, 36.127865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652939, 33.722942, 36.434010>,  <36.939060, 33.989510, 36.392899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652939, 33.722942, 36.434010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449528, 33.538086, 36.143402>,  <37.327480, 33.427170, 35.969040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449528, 33.538086, 36.143402>,  <37.652939, 33.722942, 36.434010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449528, 33.538086, 36.143402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652528, 0.343669, -0.675351,
		0.561790, -0.817506, 0.126797,
		-0.508527, -0.462144, -0.726515,
		37.296970, 33.399445, 35.925449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197670, 33.508331, 36.003403>,  <37.652939, 33.722942, 36.434010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197670, 33.508331, 36.003403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855663, 33.513966, 35.796036>,  <37.650459, 33.517345, 35.671616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855663, 33.513966, 35.796036>,  <38.197670, 33.508331, 36.003403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855663, 33.513966, 35.796036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489719, 0.350904, -0.798149,
		0.170671, -0.936305, -0.306926,
		-0.855013, 0.014087, -0.518416,
		37.599159, 33.518192, 35.640511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439297, 33.307697, 35.409927>,  <38.197670, 33.508331, 36.003403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439297, 33.307697, 35.409927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073071, 33.427975, 35.303097>,  <37.853336, 33.500141, 35.238998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073071, 33.427975, 35.303097>,  <38.439297, 33.307697, 35.409927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073071, 33.427975, 35.303097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372089, 0.381318, -0.846254,
		-0.152623, -0.874174, -0.461005,
		-0.915563, 0.300693, -0.267073,
		37.798401, 33.518181, 35.222977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296585, 32.977612, 34.710934>,  <38.439297, 33.307697, 35.409927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296585, 32.977612, 34.710934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051949, 33.293785, 34.724567>,  <37.905167, 33.483490, 34.732746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051949, 33.293785, 34.724567>,  <38.296585, 32.977612, 34.710934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051949, 33.293785, 34.724567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257561, 0.239648, -0.936072,
		-0.748073, -0.563720, -0.350153,
		-0.611596, 0.790436, 0.034082,
		37.868469, 33.530914, 34.734791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969646, 32.986801, 34.051384>,  <38.296585, 32.977612, 34.710934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969646, 32.986801, 34.051384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921638, 33.350563, 34.210667>,  <37.892834, 33.568821, 34.306236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921638, 33.350563, 34.210667>,  <37.969646, 32.986801, 34.051384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921638, 33.350563, 34.210667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150163, 0.413122, -0.898210,
		-0.981349, -0.048011, -0.186144,
		-0.120024, 0.909409, 0.398207,
		37.885632, 33.623386, 34.330128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518524, 33.350368, 33.621063>,  <37.969646, 32.986801, 34.051384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518524, 33.350368, 33.621063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698437, 33.643303, 33.825562>,  <37.806385, 33.819065, 33.948261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698437, 33.643303, 33.825562>,  <37.518524, 33.350368, 33.621063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698437, 33.643303, 33.825562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012304, 0.567282, -0.823432,
		-0.893054, 0.376655, 0.246142,
		0.449782, 0.732340, 0.511247,
		37.833370, 33.863007, 33.978935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200474, 33.941605, 33.263187>,  <37.518524, 33.350368, 33.621063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200474, 33.941605, 33.263187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522228, 34.072289, 33.461670>,  <37.715282, 34.150700, 33.580761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522228, 34.072289, 33.461670>,  <37.200474, 33.941605, 33.263187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522228, 34.072289, 33.461670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235455, 0.591515, -0.771149,
		-0.545454, 0.737138, 0.398883,
		0.804388, 0.326707, 0.496207,
		37.763546, 34.170300, 33.610531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262535, 34.672504, 33.235546>,  <37.200474, 33.941605, 33.263187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262535, 34.672504, 33.235546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637157, 34.574722, 33.336033>,  <37.861931, 34.516052, 33.396324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637157, 34.574722, 33.336033>,  <37.262535, 34.672504, 33.235546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637157, 34.574722, 33.336033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350226, 0.682043, -0.641996,
		-0.014404, 0.689246, 0.724384,
		0.936554, -0.244451, 0.251216,
		37.918125, 34.501389, 33.411396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575211, 35.272194, 33.420460>,  <37.262535, 34.672504, 33.235546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575211, 35.272194, 33.420460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874313, 35.024330, 33.325058>,  <38.053776, 34.875614, 33.267815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874313, 35.024330, 33.325058>,  <37.575211, 35.272194, 33.420460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874313, 35.024330, 33.325058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435945, 0.729127, -0.527566,
		0.500813, 0.290513, 0.815345,
		0.747755, -0.619657, -0.238509,
		38.098640, 34.838432, 33.253506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170467, 35.700085, 33.310143>,  <37.575211, 35.272194, 33.420460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170467, 35.700085, 33.310143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312580, 35.372738, 33.129452>,  <38.397846, 35.176331, 33.021038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312580, 35.372738, 33.129452>,  <38.170467, 35.700085, 33.310143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312580, 35.372738, 33.129452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401276, 0.569982, -0.717006,
		0.844248, 0.073471, 0.530893,
		0.355279, -0.818366, -0.451724,
		38.419163, 35.127228, 32.993935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925056, 35.668648, 33.308094>,  <38.170467, 35.700085, 33.310143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925056, 35.668648, 33.308094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815289, 35.431915, 33.004929>,  <38.749428, 35.289875, 32.823029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815289, 35.431915, 33.004929>,  <38.925056, 35.668648, 33.308094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815289, 35.431915, 33.004929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512018, 0.577218, -0.636126,
		0.813960, -0.562629, 0.144629,
		-0.274421, -0.591834, -0.757909,
		38.732964, 35.254364, 32.777557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549820, 35.657623, 32.789028>,  <38.925056, 35.668648, 33.308094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549820, 35.657623, 32.789028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225891, 35.510986, 32.605808>,  <39.031536, 35.423004, 32.495876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225891, 35.510986, 32.605808>,  <39.549820, 35.657623, 32.789028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225891, 35.510986, 32.605808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357431, 0.310827, -0.880698,
		0.465230, -0.876925, -0.120682,
		-0.809818, -0.366592, -0.458046,
		38.982944, 35.401009, 32.468395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792629, 35.308304, 32.162277>,  <39.549820, 35.657623, 32.789028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792629, 35.308304, 32.162277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402805, 35.374474, 32.101780>,  <39.168911, 35.414173, 32.065483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402805, 35.374474, 32.101780>,  <39.792629, 35.308304, 32.162277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402805, 35.374474, 32.101780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198302, 0.321815, -0.925803,
		-0.104476, -0.932239, -0.346431,
		-0.974557, 0.165423, -0.151243,
		39.110439, 35.424099, 32.056408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663857, 34.935066, 31.549837>,  <39.792629, 35.308304, 32.162277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663857, 34.935066, 31.549837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395321, 35.227715, 31.597218>,  <39.234200, 35.403305, 31.625647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395321, 35.227715, 31.597218>,  <39.663857, 34.935066, 31.549837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395321, 35.227715, 31.597218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297580, 0.412462, -0.861000,
		-0.678782, -0.542777, -0.494619,
		-0.671342, 0.731620, 0.118452,
		39.193916, 35.447201, 31.632753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122475, 34.936443, 31.004032>,  <39.663857, 34.935066, 31.549837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122475, 34.936443, 31.004032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.074242, 35.309837, 31.139126>,  <39.045300, 35.533875, 31.220182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.074242, 35.309837, 31.139126>,  <39.122475, 34.936443, 31.004032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074242, 35.309837, 31.139126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055339, 0.333368, -0.941171,
		-0.991159, -0.132180, 0.011460,
		-0.120584, 0.933485, 0.337735,
		39.038067, 35.589882, 31.240446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.661278, 35.240208, 30.555710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.779079, 35.589249, 30.711576>,  <38.849758, 35.798672, 30.805096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.779079, 35.589249, 30.711576>,  <38.661278, 35.240208, 30.555710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779079, 35.589249, 30.711576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043061, 0.419451, -0.906756,
		-0.954680, 0.250261, 0.161104,
		0.294501, 0.872600, 0.389665,
		38.867428, 35.851028, 30.828476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310513, 35.772476, 30.277220>,  <38.661278, 35.240208, 30.555710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310513, 35.772476, 30.277220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622124, 35.978542, 30.420174>,  <38.809090, 36.102180, 30.505945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622124, 35.978542, 30.420174>,  <38.310513, 35.772476, 30.277220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622124, 35.978542, 30.420174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055594, 0.510998, -0.857782,
		-0.624520, 0.688104, 0.369442,
		0.779028, 0.515163, 0.357383,
		38.855831, 36.133091, 30.527388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134205, 36.401852, 30.004782>,  <38.310513, 35.772476, 30.277220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134205, 36.401852, 30.004782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526257, 36.440174, 30.074257>,  <38.761486, 36.463169, 30.115942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526257, 36.440174, 30.074257>,  <38.134205, 36.401852, 30.004782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526257, 36.440174, 30.074257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116867, 0.428616, -0.895896,
		-0.160278, 0.898393, 0.408903,
		0.980129, 0.095805, 0.173690,
		38.820297, 36.468914, 30.126364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322681, 37.133484, 29.893406>,  <38.134205, 36.401852, 30.004782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322681, 37.133484, 29.893406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675068, 36.944584, 29.905294>,  <38.886501, 36.831245, 29.912428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675068, 36.944584, 29.905294>,  <38.322681, 37.133484, 29.893406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675068, 36.944584, 29.905294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308345, 0.525295, -0.793088,
		0.358919, 0.707848, 0.608382,
		0.880966, -0.472246, 0.029722,
		38.939358, 36.802910, 29.914211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896149, 37.650322, 29.932531>,  <38.322681, 37.133484, 29.893406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896149, 37.650322, 29.932531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.014721, 37.303364, 29.772657>,  <39.085865, 37.095188, 29.676733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.014721, 37.303364, 29.772657>,  <38.896149, 37.650322, 29.932531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014721, 37.303364, 29.772657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267256, 0.477112, -0.837221,
		0.916900, 0.141358, 0.373247,
		0.296428, -0.867400, -0.399685,
		39.103649, 37.043144, 29.652752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564846, 37.707008, 29.755653>,  <38.896149, 37.650322, 29.932531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564846, 37.707008, 29.755653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.455875, 37.399853, 29.523745>,  <39.390491, 37.215561, 29.384600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.455875, 37.399853, 29.523745>,  <39.564846, 37.707008, 29.755653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455875, 37.399853, 29.523745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449815, 0.431020, -0.782233,
		0.850559, -0.473891, 0.227985,
		-0.272427, -0.767886, -0.579771,
		39.374146, 37.169487, 29.349813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128696, 37.540096, 29.395449>,  <39.564846, 37.707008, 29.755653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128696, 37.540096, 29.395449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861862, 37.357090, 29.160273>,  <39.701763, 37.247284, 29.019167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861862, 37.357090, 29.160273>,  <40.128696, 37.540096, 29.395449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861862, 37.357090, 29.160273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391896, 0.455667, -0.799240,
		0.633572, -0.763573, -0.124670,
		-0.667086, -0.457519, -0.587940,
		39.661736, 37.219833, 28.983891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534676, 37.220238, 28.907894>,  <40.128696, 37.540096, 29.395449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534676, 37.220238, 28.907894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181118, 37.245464, 28.722528>,  <39.968983, 37.260601, 28.611309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181118, 37.245464, 28.722528>,  <40.534676, 37.220238, 28.907894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181118, 37.245464, 28.722528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463010, 0.257777, -0.848041,
		0.065970, -0.964144, -0.257050,
		-0.883895, 0.063071, -0.463414,
		39.915951, 37.264385, 28.583504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593365, 36.880692, 28.294762>,  <40.534676, 37.220238, 28.907894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593365, 36.880692, 28.294762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.284622, 37.131283, 28.251358>,  <40.099377, 37.281635, 28.225317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.284622, 37.131283, 28.251358>,  <40.593365, 36.880692, 28.294762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284622, 37.131283, 28.251358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352309, 0.279356, -0.893218,
		-0.529266, -0.727660, -0.436334,
		-0.771852, 0.626475, -0.108508,
		40.053066, 37.319225, 28.218805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376373, 36.845501, 27.584127>,  <40.593365, 36.880692, 28.294762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376373, 36.845501, 27.584127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185162, 37.180183, 27.691015>,  <40.070435, 37.380993, 27.755148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185162, 37.180183, 27.691015>,  <40.376373, 36.845501, 27.584127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185162, 37.180183, 27.691015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176182, 0.389388, -0.904067,
		-0.860491, -0.385095, -0.333553,
		-0.478033, 0.836708, 0.267218,
		40.041752, 37.431194, 27.771181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112625, 37.070816, 26.990433>,  <40.376373, 36.845501, 27.584127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112625, 37.070816, 26.990433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.094124, 37.397301, 27.220795>,  <40.083023, 37.593189, 27.359013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.094124, 37.397301, 27.220795>,  <40.112625, 37.070816, 26.990433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094124, 37.397301, 27.220795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311249, 0.559598, -0.768098,
		-0.949202, 0.143721, -0.279927,
		-0.046255, 0.816207, 0.575905,
		40.080246, 37.642162, 27.393566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756763, 37.530613, 26.597017>,  <40.112625, 37.070816, 26.990433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756763, 37.530613, 26.597017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955338, 37.755787, 26.861336>,  <40.074482, 37.890892, 27.019926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955338, 37.755787, 26.861336>,  <39.756763, 37.530613, 26.597017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955338, 37.755787, 26.861336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292884, 0.607965, -0.737968,
		-0.817172, 0.559891, 0.136940,
		0.496437, 0.562939, 0.660795,
		40.104267, 37.924667, 27.059574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692917, 38.252003, 26.412678>,  <39.756763, 37.530613, 26.597017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692917, 38.252003, 26.412678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011158, 38.283298, 26.652977>,  <40.202103, 38.302078, 26.797155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011158, 38.283298, 26.652977>,  <39.692917, 38.252003, 26.412678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011158, 38.283298, 26.652977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276312, 0.835613, -0.474766,
		-0.539138, 0.543719, 0.643196,
		0.795602, 0.078242, 0.600746,
		40.249840, 38.306770, 26.833200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674191, 38.923927, 26.757271>,  <39.692917, 38.252003, 26.412678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674191, 38.923927, 26.757271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048771, 38.785423, 26.734806>,  <40.273521, 38.702320, 26.721327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048771, 38.785423, 26.734806>,  <39.674191, 38.923927, 26.757271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048771, 38.785423, 26.734806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296552, 0.866975, -0.400513,
		0.187375, 0.358406, 0.914568,
		0.936455, -0.346263, -0.056163,
		40.329708, 38.681545, 26.717957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109802, 39.510983, 26.675846>,  <39.674191, 38.923927, 26.757271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109802, 39.510983, 26.675846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.371151, 39.233597, 26.554377>,  <40.527958, 39.067165, 26.481495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.371151, 39.233597, 26.554377>,  <40.109802, 39.510983, 26.675846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371151, 39.233597, 26.554377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432414, 0.671113, -0.602184,
		0.621392, 0.262135, 0.738347,
		0.653368, -0.693464, -0.303674,
		40.567162, 39.025558, 26.463274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609676, 39.874134, 26.420250>,  <40.109802, 39.510983, 26.675846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609676, 39.874134, 26.420250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.742897, 39.512505, 26.313120>,  <40.822830, 39.295528, 26.248842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.742897, 39.512505, 26.313120>,  <40.609676, 39.874134, 26.420250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742897, 39.512505, 26.313120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594712, 0.421831, -0.684380,
		0.731705, 0.068655, 0.678154,
		0.333053, -0.904071, -0.267826,
		40.842812, 39.241283, 26.232773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307701, 39.890827, 26.435740>,  <40.609676, 39.874134, 26.420250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307701, 39.890827, 26.435740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.179176, 39.630642, 26.160446>,  <41.102062, 39.474533, 25.995270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.179176, 39.630642, 26.160446>,  <41.307701, 39.890827, 26.435740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179176, 39.630642, 26.160446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288765, 0.624858, -0.725374,
		0.901874, -0.431806, -0.012941,
		-0.321307, -0.650459, -0.688233,
		41.082783, 39.435505, 25.953976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714378, 40.162407, 25.934803>,  <41.307701, 39.890827, 26.435740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714378, 40.162407, 25.934803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.439285, 39.927826, 25.763639>,  <41.274231, 39.787079, 25.660942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.439285, 39.927826, 25.763639>,  <41.714378, 40.162407, 25.934803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439285, 39.927826, 25.763639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096270, 0.510554, -0.854440,
		0.719555, -0.628818, -0.294666,
		-0.687730, -0.586449, -0.427908,
		41.232967, 39.751892, 25.635267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059044, 40.047043, 25.333460>,  <41.714378, 40.162407, 25.934803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059044, 40.047043, 25.333460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.685112, 39.947918, 25.231733>,  <41.460751, 39.888443, 25.170698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.685112, 39.947918, 25.231733>,  <42.059044, 40.047043, 25.333460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685112, 39.947918, 25.231733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034403, 0.649620, -0.759480,
		0.353418, -0.718736, -0.598760,
		-0.934833, -0.247814, -0.254314,
		41.404663, 39.873573, 25.155439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068237, 39.979237, 24.669312>,  <42.059044, 40.047043, 25.333460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068237, 39.979237, 24.669312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.702705, 40.080868, 24.796026>,  <41.483387, 40.141846, 24.872055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.702705, 40.080868, 24.796026>,  <42.068237, 39.979237, 24.669312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702705, 40.080868, 24.796026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038192, 0.722865, -0.689933,
		-0.404289, -0.642582, -0.650875,
		-0.913834, 0.254074, 0.316788,
		41.428555, 40.157089, 24.891062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539795, 39.904385, 24.112656>,  <42.068237, 39.979237, 24.669312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539795, 39.904385, 24.112656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422157, 40.175735, 24.381971>,  <41.351574, 40.338547, 24.543560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422157, 40.175735, 24.381971>,  <41.539795, 39.904385, 24.112656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422157, 40.175735, 24.381971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033893, 0.696596, -0.716663,
		-0.955174, -0.233590, -0.181875,
		-0.294099, 0.678374, 0.673287,
		41.333927, 40.379246, 24.583958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438141, 40.390205, 23.723488>,  <41.539795, 39.904385, 24.112656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438141, 40.390205, 23.723488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392365, 40.588642, 24.067766>,  <41.364899, 40.707703, 24.274332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392365, 40.588642, 24.067766>,  <41.438141, 40.390205, 23.723488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392365, 40.588642, 24.067766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038757, 0.867957, -0.495124,
		-0.992674, -0.023306, -0.118559,
		-0.114443, 0.496092, 0.860695,
		41.358032, 40.737469, 24.325975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673119, 40.743080, 23.602556>,  <41.438141, 40.390205, 23.723488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673119, 40.743080, 23.602556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276783, 40.702190, 23.567263>,  <40.038982, 40.677658, 23.546087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276783, 40.702190, 23.567263>,  <40.673119, 40.743080, 23.602556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276783, 40.702190, 23.567263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126645, 0.930201, 0.344511,
		0.046859, 0.352530, -0.934627,
		-0.990841, -0.102222, -0.088234,
		39.979530, 40.671524, 23.540792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211853, 41.250774, 23.042521>,  <40.673119, 40.743080, 23.602556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211853, 41.250774, 23.042521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098446, 41.139355, 23.409569>,  <40.030403, 41.072502, 23.629799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098446, 41.139355, 23.409569>,  <40.211853, 41.250774, 23.042521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098446, 41.139355, 23.409569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021864, 0.958515, 0.284203,
		-0.958717, 0.060514, -0.277848,
		-0.283519, -0.278545, 0.917622,
		40.013390, 41.055790, 23.684855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779873, 41.039242, 22.511862>,  <40.211853, 41.250774, 23.042521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779873, 41.039242, 22.511862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.461704, 40.942284, 22.289673>,  <39.270802, 40.884109, 22.156361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.461704, 40.942284, 22.289673>,  <39.779873, 41.039242, 22.511862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461704, 40.942284, 22.289673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523041, -0.188439, 0.831215,
		-0.306158, 0.951700, 0.023105,
		-0.795421, -0.242398, -0.555471,
		39.223076, 40.869564, 22.123032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108673, 41.304806, 22.760162>,  <39.779873, 41.039242, 22.511862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108673, 41.304806, 22.760162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.993004, 40.964111, 22.585382>,  <38.923603, 40.759693, 22.480515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.993004, 40.964111, 22.585382>,  <39.108673, 41.304806, 22.760162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993004, 40.964111, 22.585382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459834, -0.276751, 0.843778,
		-0.839603, 0.444920, -0.311629,
		-0.289170, -0.851736, -0.436950,
		38.906254, 40.708591, 22.454298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469090, 41.122997, 23.027086>,  <39.108673, 41.304806, 22.760162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469090, 41.122997, 23.027086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.613899, 40.777790, 22.886148>,  <38.700783, 40.570667, 22.801586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.613899, 40.777790, 22.886148>,  <38.469090, 41.122997, 23.027086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613899, 40.777790, 22.886148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440599, -0.491513, 0.751190,
		-0.821470, -0.116705, -0.558182,
		0.362021, -0.863015, -0.352343,
		38.722507, 40.518887, 22.780445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904167, 40.700588, 22.971281>,  <38.469090, 41.122997, 23.027086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904167, 40.700588, 22.971281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.209164, 40.442028, 22.982418>,  <38.392162, 40.286892, 22.989101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.209164, 40.442028, 22.982418>,  <37.904167, 40.700588, 22.971281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209164, 40.442028, 22.982418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517949, -0.584042, 0.624999,
		-0.387739, -0.490976, -0.780129,
		0.762487, -0.646404, 0.027845,
		38.437908, 40.248108, 22.990770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558086, 40.070255, 23.193449>,  <37.904167, 40.700588, 22.971281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558086, 40.070255, 23.193449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.946918, 40.007919, 23.263617>,  <38.180218, 39.970516, 23.305717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.946918, 40.007919, 23.263617>,  <37.558086, 40.070255, 23.193449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946918, 40.007919, 23.263617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234527, -0.668786, 0.705495,
		0.007374, -0.726939, -0.686663,
		0.972082, -0.155839, 0.175418,
		38.238544, 39.961166, 23.316242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533051, 39.310196, 23.232151>,  <37.558086, 40.070255, 23.193449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533051, 39.310196, 23.232151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877399, 39.449402, 23.380632>,  <38.084007, 39.532925, 23.469721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877399, 39.449402, 23.380632>,  <37.533051, 39.310196, 23.232151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877399, 39.449402, 23.380632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098193, -0.602186, 0.792294,
		0.499263, -0.718511, -0.484230,
		0.860868, 0.348015, 0.371202,
		38.135658, 39.553806, 23.491993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952324, 38.696735, 23.340687>,  <37.533051, 39.310196, 23.232151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952324, 38.696735, 23.340687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.071976, 38.999840, 23.572657>,  <38.143768, 39.181702, 23.711838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.071976, 38.999840, 23.572657>,  <37.952324, 38.696735, 23.340687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071976, 38.999840, 23.572657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188697, -0.548775, 0.814395,
		0.935368, -0.353041, -0.021168,
		0.299132, 0.757765, 0.579924,
		38.161716, 39.227169, 23.746634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083374, 38.382034, 23.964417>,  <37.952324, 38.696735, 23.340687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083374, 38.382034, 23.964417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124622, 38.751598, 24.111795>,  <38.149372, 38.973335, 24.200222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124622, 38.751598, 24.111795>,  <38.083374, 38.382034, 23.964417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124622, 38.751598, 24.111795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064093, -0.363480, 0.929395,
		0.992601, -0.119459, 0.021732,
		0.103125, 0.923911, 0.368447,
		38.155560, 39.028770, 24.222330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642548, 38.343822, 24.434473>,  <38.083374, 38.382034, 23.964417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642548, 38.343822, 24.434473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428043, 38.660549, 24.551397>,  <38.299339, 38.850586, 24.621552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428043, 38.660549, 24.551397>,  <38.642548, 38.343822, 24.434473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428043, 38.660549, 24.551397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043954, -0.372045, 0.927173,
		0.842906, 0.484360, 0.234318,
		-0.536262, 0.791820, 0.292310,
		38.267166, 38.898094, 24.639090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963978, 38.648926, 25.053459>,  <38.642548, 38.343822, 24.434473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963978, 38.648926, 25.053459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575241, 38.742943, 25.046724>,  <38.341999, 38.799355, 25.042683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575241, 38.742943, 25.046724>,  <38.963978, 38.648926, 25.053459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575241, 38.742943, 25.046724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113868, -0.405853, 0.906817,
		0.206305, 0.883198, 0.421188,
		-0.971840, 0.235041, -0.016838,
		38.283688, 38.813454, 25.041674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949329, 39.011826, 25.671360>,  <38.963978, 38.648926, 25.053459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949329, 39.011826, 25.671360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574078, 38.917114, 25.570280>,  <38.348927, 38.860287, 25.509632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574078, 38.917114, 25.570280>,  <38.949329, 39.011826, 25.671360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574078, 38.917114, 25.570280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205761, -0.205820, 0.956713,
		-0.278539, 0.949513, 0.144366,
		-0.938125, -0.236777, -0.252702,
		38.292641, 38.846081, 25.494469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613880, 39.125607, 26.298912>,  <38.949329, 39.011826, 25.671360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613880, 39.125607, 26.298912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355988, 38.904953, 26.087240>,  <38.201252, 38.772560, 25.960238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355988, 38.904953, 26.087240>,  <38.613880, 39.125607, 26.298912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355988, 38.904953, 26.087240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307848, -0.446275, 0.840279,
		-0.699683, 0.704657, 0.117907,
		-0.644727, -0.551632, -0.529178,
		38.162571, 38.739464, 25.928486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985527, 39.165958, 26.701544>,  <38.613880, 39.125607, 26.298912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985527, 39.165958, 26.701544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984947, 38.851185, 26.454731>,  <37.984600, 38.662319, 26.306643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984947, 38.851185, 26.454731>,  <37.985527, 39.165958, 26.701544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984947, 38.851185, 26.454731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258299, -0.595798, 0.760464,
		-0.966064, 0.160483, -0.202400,
		-0.001452, -0.786937, -0.617032,
		37.984512, 38.615105, 26.269621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305538, 38.821167, 26.685543>,  <37.985527, 39.165958, 26.701544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305538, 38.821167, 26.685543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547020, 38.521435, 26.576702>,  <37.691910, 38.341595, 26.511396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547020, 38.521435, 26.576702>,  <37.305538, 38.821167, 26.685543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547020, 38.521435, 26.576702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437580, -0.596780, 0.672590,
		-0.666380, -0.286979, -0.688172,
		0.603707, -0.749330, -0.272105,
		37.728134, 38.296635, 26.495071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857880, 38.296970, 26.626024>,  <37.305538, 38.821167, 26.685543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857880, 38.296970, 26.626024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210464, 38.108738, 26.641911>,  <37.422016, 37.995800, 26.651442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210464, 38.108738, 26.641911>,  <36.857880, 38.296970, 26.626024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210464, 38.108738, 26.641911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359896, -0.614918, 0.701677,
		-0.305773, -0.632796, -0.711388,
		0.881464, -0.470580, 0.039715,
		37.474903, 37.967564, 26.653826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669231, 37.731937, 26.483887>,  <36.857880, 38.296970, 26.626024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669231, 37.731937, 26.483887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.023060, 37.697025, 26.667149>,  <37.235359, 37.676079, 26.777105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.023060, 37.697025, 26.667149>,  <36.669231, 37.731937, 26.483887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023060, 37.697025, 26.667149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340210, -0.792707, 0.505838,
		0.319034, -0.603321, -0.730904,
		0.884576, -0.087281, 0.458157,
		37.288433, 37.670841, 26.804596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739613, 37.084160, 26.489437>,  <36.669231, 37.731937, 26.483887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739613, 37.084160, 26.489437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009308, 37.190479, 26.765047>,  <37.171124, 37.254269, 26.930414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009308, 37.190479, 26.765047>,  <36.739613, 37.084160, 26.489437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009308, 37.190479, 26.765047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212021, -0.824047, 0.525351,
		0.707426, -0.500299, -0.499249,
		0.674237, 0.265795, 0.689026,
		37.211578, 37.270218, 26.971754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954987, 36.431446, 26.720621>,  <36.739613, 37.084160, 26.489437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954987, 36.431446, 26.720621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079445, 36.694721, 26.994841>,  <37.154118, 36.852688, 27.159372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079445, 36.694721, 26.994841>,  <36.954987, 36.431446, 26.720621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079445, 36.694721, 26.994841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179065, -0.667835, 0.722449,
		0.933341, -0.347544, -0.089934,
		0.311144, 0.658187, 0.685551,
		37.172787, 36.892178, 27.200506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433544, 36.052517, 27.117849>,  <36.954987, 36.431446, 26.720621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433544, 36.052517, 27.117849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318604, 36.367954, 27.335308>,  <37.249641, 36.557217, 27.465782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318604, 36.367954, 27.335308>,  <37.433544, 36.052517, 27.117849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318604, 36.367954, 27.335308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240938, -0.608843, 0.755817,
		0.927027, 0.086199, 0.364953,
		-0.287350, 0.788594, 0.543645,
		37.232399, 36.604534, 27.498402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625034, 35.925499, 27.808249>,  <37.433544, 36.052517, 27.117849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625034, 35.925499, 27.808249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346622, 36.211433, 27.835243>,  <37.179577, 36.382992, 27.851440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346622, 36.211433, 27.835243>,  <37.625034, 35.925499, 27.808249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346622, 36.211433, 27.835243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376864, -0.443714, 0.813075,
		0.611160, 0.540491, 0.578233,
		-0.696030, 0.714834, 0.067488,
		37.137814, 36.425884, 27.855490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.075497, 33.969257, 33.048515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784115, 34.240410, 33.088177>,  <38.609287, 34.403103, 33.111973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784115, 34.240410, 33.088177>,  <39.075497, 33.969257, 33.048515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784115, 34.240410, 33.088177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219996, -0.368518, 0.903214,
		0.648810, 0.636139, 0.417580,
		-0.728456, 0.677880, 0.099150,
		38.565578, 34.443775, 33.117920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162415, 34.311604, 33.633785>,  <39.075497, 33.969257, 33.048515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162415, 34.311604, 33.633785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772537, 34.362614, 33.560341>,  <38.538612, 34.393219, 33.516273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772537, 34.362614, 33.560341>,  <39.162415, 34.311604, 33.633785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772537, 34.362614, 33.560341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213435, -0.286587, 0.933977,
		0.066485, 0.949529, 0.306552,
		-0.974692, 0.127525, -0.183609,
		38.480129, 34.400871, 33.505257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832653, 34.609756, 34.219883>,  <39.162415, 34.311604, 33.633785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832653, 34.609756, 34.219883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.491444, 34.503788, 34.040031>,  <38.286716, 34.440208, 33.932121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.491444, 34.503788, 34.040031>,  <38.832653, 34.609756, 34.219883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491444, 34.503788, 34.040031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328240, -0.397463, 0.856903,
		-0.405723, 0.878545, 0.252087,
		-0.853022, -0.264920, -0.449633,
		38.235538, 34.424313, 33.905140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428871, 34.784367, 34.653316>,  <38.832653, 34.609756, 34.219883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428871, 34.784367, 34.653316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226212, 34.512634, 34.440971>,  <38.104614, 34.349594, 34.313564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226212, 34.512634, 34.440971>,  <38.428871, 34.784367, 34.653316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226212, 34.512634, 34.440971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304457, -0.435092, 0.847349,
		-0.806603, 0.590937, 0.013614,
		-0.506653, -0.679330, -0.530861,
		38.074215, 34.308834, 34.281712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677040, 34.767914, 34.913387>,  <38.428871, 34.784367, 34.653316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677040, 34.767914, 34.913387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.752331, 34.424274, 34.723011>,  <37.797504, 34.218090, 34.608784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.752331, 34.424274, 34.723011>,  <37.677040, 34.767914, 34.913387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752331, 34.424274, 34.723011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489079, -0.502234, 0.713136,
		-0.851689, 0.098546, -0.514698,
		0.188222, -0.859098, -0.475944,
		37.808796, 34.166546, 34.580227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985477, 34.528141, 34.877327>,  <37.677040, 34.767914, 34.913387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985477, 34.528141, 34.877327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.244766, 34.227360, 34.829376>,  <37.400337, 34.046890, 34.800606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.244766, 34.227360, 34.829376>,  <36.985477, 34.528141, 34.877327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244766, 34.227360, 34.829376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572694, -0.585209, 0.574066,
		-0.501828, -0.303466, -0.809986,
		0.648221, -0.751957, -0.119881,
		37.439232, 34.001774, 34.793411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593136, 33.927711, 34.977669>,  <36.985477, 34.528141, 34.877327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593136, 33.927711, 34.977669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959972, 33.778259, 35.033295>,  <37.180077, 33.688587, 35.066669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959972, 33.778259, 35.033295>,  <36.593136, 33.927711, 34.977669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959972, 33.778259, 35.033295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368347, -0.660690, 0.654071,
		-0.152501, -0.651070, -0.743540,
		0.917095, -0.373628, 0.139064,
		37.235100, 33.666172, 35.075012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529594, 33.326893, 34.857937>,  <36.593136, 33.927711, 34.977669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529594, 33.326893, 34.857937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.849388, 33.368366, 35.094608>,  <37.041264, 33.393250, 35.236610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.849388, 33.368366, 35.094608>,  <36.529594, 33.326893, 34.857937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849388, 33.368366, 35.094608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415930, -0.615124, 0.669795,
		0.433400, -0.781584, -0.448655,
		0.799480, 0.103680, 0.591678,
		37.089233, 33.399471, 35.272110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804169, 32.619335, 35.014755>,  <36.529594, 33.326893, 34.857937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804169, 32.619335, 35.014755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.927006, 32.882397, 35.289909>,  <37.000706, 33.040234, 35.455002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.927006, 32.882397, 35.289909>,  <36.804169, 32.619335, 35.014755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927006, 32.882397, 35.289909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437322, -0.544461, 0.715759,
		0.845249, -0.520630, 0.120408,
		0.307089, 0.657652, 0.687888,
		37.019131, 33.079693, 35.496277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102543, 32.181179, 35.649513>,  <36.804169, 32.619335, 35.014755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102543, 32.181179, 35.649513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.008495, 32.540806, 35.797245>,  <36.952068, 32.756580, 35.885883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.008495, 32.540806, 35.797245>,  <37.102543, 32.181179, 35.649513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008495, 32.540806, 35.797245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457372, -0.437622, 0.774144,
		0.857631, 0.013093, 0.514099,
		-0.235117, 0.899064, 0.369330,
		36.937962, 32.810524, 35.908043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236843, 32.158947, 36.427776>,  <37.102543, 32.181179, 35.649513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236843, 32.158947, 36.427776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.011272, 32.477131, 36.339027>,  <36.875931, 32.668041, 36.285778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.011272, 32.477131, 36.339027>,  <37.236843, 32.158947, 36.427776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011272, 32.477131, 36.339027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648258, -0.259952, 0.715672,
		0.511614, 0.547417, 0.662258,
		-0.563926, 0.795462, -0.221872,
		36.842094, 32.715771, 36.272465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980537, 32.198410, 37.067356>,  <37.236843, 32.158947, 36.427776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980537, 32.198410, 37.067356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.769180, 32.442406, 36.831146>,  <36.642368, 32.588802, 36.689419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.769180, 32.442406, 36.831146>,  <36.980537, 32.198410, 37.067356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769180, 32.442406, 36.831146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682540, 0.108457, 0.722756,
		0.504918, 0.784955, 0.359033,
		-0.528391, 0.609986, -0.590525,
		36.610664, 32.625401, 36.653988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846424, 32.703033, 37.497036>,  <36.980537, 32.198410, 37.067356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846424, 32.703033, 37.497036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.565704, 32.715023, 37.212337>,  <36.397274, 32.722218, 37.041519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.565704, 32.715023, 37.212337>,  <36.846424, 32.703033, 37.497036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565704, 32.715023, 37.212337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710462, 0.043767, 0.702373,
		0.052201, 0.998592, -0.009423,
		-0.701796, 0.029970, -0.711747,
		36.355164, 32.724014, 36.998814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558041, 32.968143, 37.544899>,  <36.846424, 32.703033, 37.497036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558041, 32.968143, 37.544899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.381744, 33.206772, 37.813183>,  <37.275967, 33.349949, 37.974152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.381744, 33.206772, 37.813183>,  <37.558041, 32.968143, 37.544899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381744, 33.206772, 37.813183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254659, 0.799600, -0.543865,
		-0.860752, -0.068902, -0.504339,
		-0.440743, 0.596568, 0.670711,
		37.249523, 33.385742, 38.014397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077957, 33.380684, 37.217911>,  <37.558041, 32.968143, 37.544899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077957, 33.380684, 37.217911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.154388, 33.577545, 37.557621>,  <37.200245, 33.695663, 37.761448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.154388, 33.577545, 37.557621>,  <37.077957, 33.380684, 37.217911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154388, 33.577545, 37.557621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239862, 0.862399, -0.445796,
		-0.951818, -0.118529, 0.282831,
		0.191074, 0.492157, 0.849278,
		37.211712, 33.725193, 37.812405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432800, 33.754543, 37.368771>,  <37.077957, 33.380684, 37.217911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432800, 33.754543, 37.368771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.713005, 33.951107, 37.575771>,  <36.881126, 34.069046, 37.699970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.713005, 33.951107, 37.575771>,  <36.432800, 33.754543, 37.368771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713005, 33.951107, 37.575771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352759, 0.868801, -0.347486,
		-0.620361, 0.060865, 0.781951,
		0.700509, 0.491407, 0.517499,
		36.923157, 34.098530, 37.731022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019817, 34.280071, 37.705254>,  <36.432800, 33.754543, 37.368771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019817, 34.280071, 37.705254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393372, 34.421555, 37.684261>,  <36.617504, 34.506443, 37.671665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393372, 34.421555, 37.684261>,  <36.019817, 34.280071, 37.705254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393372, 34.421555, 37.684261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343679, 0.847339, -0.404848,
		-0.098725, 0.396118, 0.912877,
		0.933883, 0.353705, -0.052484,
		36.673538, 34.527668, 37.668514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907639, 34.987316, 37.808987>,  <36.019817, 34.280071, 37.705254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907639, 34.987316, 37.808987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283142, 34.978867, 37.671413>,  <36.508446, 34.973797, 37.588871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283142, 34.978867, 37.671413>,  <35.907639, 34.987316, 37.808987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283142, 34.978867, 37.671413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129153, 0.903787, -0.408029,
		0.319459, 0.427460, 0.845709,
		0.938757, -0.021122, -0.343930,
		36.564770, 34.972530, 37.568233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255093, 35.691433, 38.031857>,  <35.907639, 34.987316, 37.808987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255093, 35.691433, 38.031857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.418114, 35.518757, 37.709976>,  <36.515926, 35.415150, 37.516846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.418114, 35.518757, 37.709976>,  <36.255093, 35.691433, 38.031857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418114, 35.518757, 37.709976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155140, 0.835666, -0.526873,
		0.899908, 0.339569, 0.273604,
		0.407551, -0.431690, -0.804703,
		36.540379, 35.389252, 37.468567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694267, 36.182800, 37.655319>,  <36.255093, 35.691433, 38.031857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694267, 36.182800, 37.655319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.616375, 35.899311, 37.384087>,  <36.569641, 35.729218, 37.221348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.616375, 35.899311, 37.384087>,  <36.694267, 36.182800, 37.655319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616375, 35.899311, 37.384087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008781, 0.690030, -0.723728,
		0.980817, -0.146887, -0.128147,
		-0.194731, -0.708719, -0.678083,
		36.557957, 35.686695, 37.180660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167274, 36.366486, 37.191277>,  <36.694267, 36.182800, 37.655319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167274, 36.366486, 37.191277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898228, 36.141243, 36.999237>,  <36.736801, 36.006096, 36.884014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898228, 36.141243, 36.999237>,  <37.167274, 36.366486, 37.191277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898228, 36.141243, 36.999237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052232, 0.611044, -0.789871,
		0.738146, -0.556357, -0.381586,
		-0.672616, -0.563110, -0.480099,
		36.696442, 35.972309, 36.855206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356079, 36.522930, 36.498428>,  <37.167274, 36.366486, 37.191277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356079, 36.522930, 36.498428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984333, 36.375885, 36.511932>,  <36.761284, 36.287659, 36.520035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984333, 36.375885, 36.511932>,  <37.356079, 36.522930, 36.498428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984333, 36.375885, 36.511932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223365, 0.487158, -0.844266,
		0.293913, -0.792174, -0.534860,
		-0.929367, -0.367610, 0.033762,
		36.705524, 36.265602, 36.522060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188625, 36.284958, 35.767139>,  <37.356079, 36.522930, 36.498428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188625, 36.284958, 35.767139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.841434, 36.340519, 35.957848>,  <36.633118, 36.373856, 36.072273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.841434, 36.340519, 35.957848>,  <37.188625, 36.284958, 35.767139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841434, 36.340519, 35.957848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408511, 0.346181, -0.844558,
		-0.282360, -0.927828, -0.243736,
		-0.867981, 0.138900, 0.476775,
		36.581039, 36.382187, 36.100880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689556, 35.850605, 35.425678>,  <37.188625, 36.284958, 35.767139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689556, 35.850605, 35.425678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.555420, 36.179230, 35.610100>,  <36.474937, 36.376404, 35.720753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.555420, 36.179230, 35.610100>,  <36.689556, 35.850605, 35.425678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555420, 36.179230, 35.610100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274259, 0.383066, -0.882067,
		-0.901292, -0.422245, 0.096863,
		-0.335344, 0.821566, 0.461059,
		36.454815, 36.425701, 35.748417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241913, 36.161209, 34.853249>,  <36.689556, 35.850605, 35.425678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241913, 36.161209, 34.853249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.253620, 36.432339, 35.147106>,  <36.260643, 36.595016, 35.323421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.253620, 36.432339, 35.147106>,  <36.241913, 36.161209, 34.853249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253620, 36.432339, 35.147106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185258, 0.725905, -0.662376,
		-0.982254, -0.116712, 0.146818,
		0.029269, 0.677820, 0.734645,
		36.262402, 36.635685, 35.367500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581772, 36.539005, 34.792572>,  <36.241913, 36.161209, 34.853249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581772, 36.539005, 34.792572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876751, 36.754623, 34.955345>,  <36.053738, 36.883995, 35.053009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876751, 36.754623, 34.955345>,  <35.581772, 36.539005, 34.792572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876751, 36.754623, 34.955345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332287, 0.814112, -0.476242,
		-0.588008, 0.215985, 0.779485,
		0.737449, 0.539047, 0.406936,
		36.097984, 36.916336, 35.077427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296398, 37.196785, 34.986965>,  <35.581772, 36.539005, 34.792572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296398, 37.196785, 34.986965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.691154, 37.254669, 34.958385>,  <35.928009, 37.289402, 34.941238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.691154, 37.254669, 34.958385>,  <35.296398, 37.196785, 34.986965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691154, 37.254669, 34.958385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157169, 0.761185, -0.629202,
		-0.036668, 0.632183, 0.773951,
		0.986891, 0.144713, -0.071449,
		35.987221, 37.298084, 34.936951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387043, 37.879005, 34.965927>,  <35.296398, 37.196785, 34.986965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387043, 37.879005, 34.965927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.723549, 37.736885, 34.802933>,  <35.925453, 37.651615, 34.705135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.723549, 37.736885, 34.802933>,  <35.387043, 37.879005, 34.965927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723549, 37.736885, 34.802933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033446, 0.718076, -0.695161,
		0.539595, 0.598440, 0.592205,
		0.841260, -0.355298, -0.407485,
		35.975925, 37.630295, 34.680687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925701, 38.408901, 35.271393>,  <35.387043, 37.879005, 34.965927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925701, 38.408901, 35.271393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.676605, 38.719540, 35.233238>,  <34.527149, 38.905922, 35.210346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.676605, 38.719540, 35.233238>,  <34.925701, 38.408901, 35.271393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676605, 38.719540, 35.233238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503664, -0.304581, 0.808426,
		0.598765, 0.551482, 0.580816,
		-0.622739, 0.776593, -0.095389,
		34.489784, 38.952518, 35.204620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806355, 38.749340, 35.930080>,  <34.925701, 38.408901, 35.271393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806355, 38.749340, 35.930080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.479851, 38.867443, 35.731464>,  <34.283951, 38.938305, 35.612293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.479851, 38.867443, 35.731464>,  <34.806355, 38.749340, 35.930080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479851, 38.867443, 35.731464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575825, -0.346802, 0.740373,
		0.046398, 0.890254, 0.453095,
		-0.816255, 0.295256, -0.496540,
		34.234974, 38.956020, 35.582504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376801, 39.047981, 36.452530>,  <34.806355, 38.749340, 35.930080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376801, 39.047981, 36.452530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.129997, 38.967182, 36.148293>,  <33.981915, 38.918705, 35.965752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.129997, 38.967182, 36.148293>,  <34.376801, 39.047981, 36.452530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129997, 38.967182, 36.148293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685347, -0.337095, 0.645497,
		-0.386778, 0.919546, 0.069553,
		-0.617010, -0.201996, -0.760589,
		33.944893, 38.906582, 35.920116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747166, 39.376568, 36.572041>,  <34.376801, 39.047981, 36.452530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747166, 39.376568, 36.572041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.657291, 39.073929, 36.326412>,  <33.603367, 38.892345, 36.179035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.657291, 39.073929, 36.326412>,  <33.747166, 39.376568, 36.572041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657291, 39.073929, 36.326412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701026, -0.312201, 0.641165,
		-0.676815, 0.574541, -0.460244,
		-0.224687, -0.756593, -0.614071,
		33.589886, 38.846951, 36.142193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076172, 39.413151, 36.529911>,  <33.747166, 39.376568, 36.572041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076172, 39.413151, 36.529911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.136421, 39.039185, 36.401379>,  <33.172573, 38.814804, 36.324261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.136421, 39.039185, 36.401379>,  <33.076172, 39.413151, 36.529911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136421, 39.039185, 36.401379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761331, -0.317042, 0.565562,
		-0.630625, 0.159449, -0.759532,
		0.150625, -0.934912, -0.321328,
		33.181610, 38.758713, 36.304981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491447, 39.136490, 36.517860>,  <33.076172, 39.413151, 36.529911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491447, 39.136490, 36.517860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.706257, 38.801071, 36.481106>,  <32.835140, 38.599819, 36.459053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.706257, 38.801071, 36.481106>,  <32.491447, 39.136490, 36.517860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706257, 38.801071, 36.481106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714366, -0.509999, 0.479148,
		-0.448653, -0.191670, -0.872911,
		0.537022, -0.838549, -0.091890,
		32.867363, 38.549507, 36.453537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110970, 38.619770, 36.217056>,  <32.491447, 39.136490, 36.517860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110970, 38.619770, 36.217056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.406319, 38.453911, 36.429798>,  <32.583530, 38.354397, 36.557442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.406319, 38.453911, 36.429798>,  <32.110970, 38.619770, 36.217056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406319, 38.453911, 36.429798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649918, -0.648037, 0.397058,
		0.180021, -0.638839, -0.747982,
		0.738376, -0.414648, 0.531853,
		32.627831, 38.329517, 36.589355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195446, 37.885677, 35.990158>,  <32.110970, 38.619770, 36.217056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195446, 37.885677, 35.990158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.335899, 37.925018, 36.362617>,  <32.420170, 37.948624, 36.586094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.335899, 37.925018, 36.362617>,  <32.195446, 37.885677, 35.990158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335899, 37.925018, 36.362617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636257, -0.704532, 0.314343,
		0.686939, -0.702824, -0.184806,
		0.351130, 0.098350, 0.931147,
		32.441238, 37.954525, 36.641960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513622, 37.177238, 36.113647>,  <32.195446, 37.885677, 35.990158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513622, 37.177238, 36.113647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.467152, 37.363426, 36.464611>,  <32.439270, 37.475140, 36.675190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.467152, 37.363426, 36.464611>,  <32.513622, 37.177238, 36.113647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467152, 37.363426, 36.464611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535705, -0.773245, 0.339282,
		0.836375, -0.430614, 0.339188,
		-0.116176, 0.465472, 0.877405,
		32.432301, 37.503067, 36.727833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742325, 36.765034, 36.659050>,  <32.513622, 37.177238, 36.113647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742325, 36.765034, 36.659050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.488453, 37.013378, 36.843098>,  <32.336128, 37.162384, 36.953526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.488453, 37.013378, 36.843098>,  <32.742325, 36.765034, 36.659050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488453, 37.013378, 36.843098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458845, -0.781860, 0.422085,
		0.621806, 0.056765, 0.781111,
		-0.634679, 0.620865, 0.460119,
		32.298050, 37.199638, 36.981133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672142, 36.613888, 37.314796>,  <32.742325, 36.765034, 36.659050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672142, 36.613888, 37.314796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.323051, 36.805042, 37.274849>,  <32.113598, 36.919735, 37.250881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.323051, 36.805042, 37.274849>,  <32.672142, 36.613888, 37.314796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323051, 36.805042, 37.274849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418798, -0.627671, 0.656229,
		0.250921, 0.614532, 0.747923,
		-0.872724, 0.477890, -0.099869,
		32.061234, 36.948410, 37.244888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427792, 37.046959, 37.968849>,  <32.672142, 36.613888, 37.314796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427792, 37.046959, 37.968849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.168209, 36.859543, 37.729073>,  <32.012459, 36.747093, 37.585209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.168209, 36.859543, 37.729073>,  <32.427792, 37.046959, 37.968849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168209, 36.859543, 37.729073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141439, -0.699849, 0.700148,
		-0.747565, 0.539148, 0.387900,
		-0.648955, -0.468541, -0.599439,
		31.973522, 36.718979, 37.549240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.883537, 41.137135, 32.989719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508904, 41.150162, 32.850151>,  <36.284122, 41.157978, 32.766411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508904, 41.150162, 32.850151>,  <36.883537, 41.137135, 32.989719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508904, 41.150162, 32.850151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320425, -0.482771, 0.815021,
		-0.141907, 0.875141, 0.462591,
		-0.936584, 0.032568, -0.348925,
		36.227928, 41.159931, 32.745472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574451, 41.318783, 33.535343>,  <36.883537, 41.137135, 32.989719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574451, 41.318783, 33.535343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275639, 41.183113, 33.306641>,  <36.096352, 41.101711, 33.169418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275639, 41.183113, 33.306641>,  <36.574451, 41.318783, 33.535343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275639, 41.183113, 33.306641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447323, -0.379764, 0.809741,
		-0.491777, 0.860661, 0.131974,
		-0.747032, -0.339178, -0.571753,
		36.051529, 41.081360, 33.135117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896503, 41.533234, 33.929874>,  <36.574451, 41.318783, 33.535343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896503, 41.533234, 33.929874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804573, 41.233334, 33.681667>,  <35.749416, 41.053391, 33.532742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804573, 41.233334, 33.681667>,  <35.896503, 41.533234, 33.929874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804573, 41.233334, 33.681667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511416, -0.449427, 0.732441,
		-0.828030, 0.485678, -0.280147,
		-0.229825, -0.749755, -0.620522,
		35.735626, 41.008408, 33.495510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107224, 41.315716, 34.128174>,  <35.896503, 41.533234, 33.929874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107224, 41.315716, 34.128174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302525, 41.024216, 33.936115>,  <35.419704, 40.849316, 33.820881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302525, 41.024216, 33.936115>,  <35.107224, 41.315716, 34.128174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302525, 41.024216, 33.936115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445509, -0.681224, 0.580910,
		-0.750425, -0.069717, -0.657269,
		0.488247, -0.728748, -0.480148,
		35.448997, 40.805592, 33.792072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540123, 40.960655, 33.911198>,  <35.107224, 41.315716, 34.128174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540123, 40.960655, 33.911198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858849, 40.719387, 33.896893>,  <35.050083, 40.574627, 33.888309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858849, 40.719387, 33.896893>,  <34.540123, 40.960655, 33.911198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858849, 40.719387, 33.896893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534397, -0.731114, 0.424137,
		-0.281975, -0.318844, -0.904891,
		0.796812, -0.603167, -0.035767,
		35.097893, 40.538437, 33.886162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336872, 40.392887, 33.701107>,  <34.540123, 40.960655, 33.911198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336872, 40.392887, 33.701107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671532, 40.302525, 33.900696>,  <34.872330, 40.248306, 34.020451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671532, 40.302525, 33.900696>,  <34.336872, 40.392887, 33.701107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671532, 40.302525, 33.900696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486471, -0.725118, 0.487392,
		0.251709, -0.650515, -0.716570,
		0.836653, -0.225909, 0.498975,
		34.922527, 40.234753, 34.050388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356983, 39.612076, 33.753105>,  <34.336872, 40.392887, 33.701107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356983, 39.612076, 33.753105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625061, 39.726509, 34.027039>,  <34.785908, 39.795170, 34.191399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625061, 39.726509, 34.027039>,  <34.356983, 39.612076, 33.753105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625061, 39.726509, 34.027039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333820, -0.707928, 0.622416,
		0.662873, -0.645752, -0.378952,
		0.670197, 0.286081, 0.684831,
		34.826118, 39.812332, 34.232487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547985, 38.939880, 33.989204>,  <34.356983, 39.612076, 33.753105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547985, 38.939880, 33.989204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634758, 39.217545, 34.263748>,  <34.686821, 39.384144, 34.428474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634758, 39.217545, 34.263748>,  <34.547985, 38.939880, 33.989204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634758, 39.217545, 34.263748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225950, -0.648300, 0.727086,
		0.949678, -0.312808, 0.016210,
		0.216930, 0.694160, 0.686355,
		34.699837, 39.425793, 34.469654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806602, 38.518101, 34.493927>,  <34.547985, 38.939880, 33.989204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806602, 38.518101, 34.493927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694519, 38.854595, 34.678883>,  <34.627270, 39.056492, 34.789856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694519, 38.854595, 34.678883>,  <34.806602, 38.518101, 34.493927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694519, 38.854595, 34.678883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523701, -0.537658, 0.660803,
		0.804499, -0.056990, 0.591213,
		-0.280212, 0.841234, 0.462391,
		34.610455, 39.106964, 34.817600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585110, 38.476357, 34.516647>,  <34.806602, 38.518101, 34.493927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585110, 38.476357, 34.516647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840374, 38.194359, 34.392879>,  <35.993530, 38.025158, 34.318619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840374, 38.194359, 34.392879>,  <35.585110, 38.476357, 34.516647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840374, 38.194359, 34.392879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023844, 0.419790, -0.907308,
		0.769538, 0.571626, 0.284702,
		0.638156, -0.704996, -0.309415,
		36.031822, 37.982861, 34.300056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093391, 38.839329, 34.225460>,  <35.585110, 38.476357, 34.516647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093391, 38.839329, 34.225460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088779, 38.470470, 34.070789>,  <36.086014, 38.249157, 33.977985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088779, 38.470470, 34.070789>,  <36.093391, 38.839329, 34.225460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088779, 38.470470, 34.070789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108136, 0.383286, -0.917278,
		0.994069, -0.052391, 0.095297,
		-0.011531, -0.922143, -0.386678,
		36.085320, 38.193829, 33.954784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480858, 38.906052, 33.652905>,  <36.093391, 38.839329, 34.225460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480858, 38.906052, 33.652905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368065, 38.531063, 33.571285>,  <36.300388, 38.306072, 33.522312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368065, 38.531063, 33.571285>,  <36.480858, 38.906052, 33.652905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368065, 38.531063, 33.571285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233982, 0.139062, -0.962244,
		0.930450, -0.319081, 0.180138,
		-0.281983, -0.937469, -0.204050,
		36.283470, 38.249821, 33.510071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008286, 38.609856, 33.297527>,  <36.480858, 38.906052, 33.652905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008286, 38.609856, 33.297527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675453, 38.404648, 33.213196>,  <36.475754, 38.281521, 33.162598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675453, 38.404648, 33.213196>,  <37.008286, 38.609856, 33.297527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675453, 38.404648, 33.213196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189100, 0.094951, -0.977356,
		0.521426, -0.853106, 0.018006,
		-0.832079, -0.513024, -0.210833,
		36.425831, 38.250740, 33.149944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144382, 37.955135, 32.889889>,  <37.008286, 38.609856, 33.297527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144382, 37.955135, 32.889889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772148, 38.081043, 32.815136>,  <36.548805, 38.156590, 32.770287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772148, 38.081043, 32.815136>,  <37.144382, 37.955135, 32.889889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772148, 38.081043, 32.815136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233773, 0.118159, -0.965085,
		-0.281700, -0.941784, -0.183543,
		-0.930589, 0.314772, -0.186878,
		36.492973, 38.175476, 32.759071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969753, 37.610397, 32.310532>,  <37.144382, 37.955135, 32.889889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969753, 37.610397, 32.310532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751606, 37.944801, 32.334747>,  <36.620716, 38.145443, 32.349277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751606, 37.944801, 32.334747>,  <36.969753, 37.610397, 32.310532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751606, 37.944801, 32.334747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231243, 0.219482, -0.947815,
		-0.805668, -0.502909, -0.313019,
		-0.545367, 0.836008, 0.060535,
		36.587997, 38.195602, 32.352909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611034, 37.564697, 31.686913>,  <36.969753, 37.610397, 32.310532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611034, 37.564697, 31.686913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582527, 37.944023, 31.810602>,  <36.565422, 38.171619, 31.884815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582527, 37.944023, 31.810602>,  <36.611034, 37.564697, 31.686913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582527, 37.944023, 31.810602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231641, 0.317273, -0.919608,
		-0.970187, 0.006086, -0.242282,
		-0.071273, 0.948315, 0.309224,
		36.561146, 38.228516, 31.903370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100475, 38.000191, 31.170246>,  <36.611034, 37.564697, 31.686913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100475, 38.000191, 31.170246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314407, 38.276112, 31.365440>,  <36.442768, 38.441666, 31.482557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314407, 38.276112, 31.365440>,  <36.100475, 38.000191, 31.170246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314407, 38.276112, 31.365440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216112, 0.446641, -0.868221,
		-0.816855, 0.569810, 0.089802,
		0.534830, 0.689803, 0.487983,
		36.474857, 38.483051, 31.511835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145283, 38.564178, 30.718349>,  <36.100475, 38.000191, 31.170246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145283, 38.564178, 30.718349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404530, 38.684830, 30.998055>,  <36.560078, 38.757221, 31.165878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404530, 38.684830, 30.998055>,  <36.145283, 38.564178, 30.718349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404530, 38.684830, 30.998055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382576, 0.664979, -0.641435,
		-0.658473, 0.683243, 0.315584,
		0.648112, 0.301633, 0.699262,
		36.598965, 38.775318, 31.207832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249729, 39.272167, 30.527105>,  <36.145283, 38.564178, 30.718349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249729, 39.272167, 30.527105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567894, 39.170368, 30.747124>,  <36.758793, 39.109287, 30.879135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567894, 39.170368, 30.747124>,  <36.249729, 39.272167, 30.527105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567894, 39.170368, 30.747124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588987, 0.538539, -0.602553,
		-0.142872, 0.803247, 0.578257,
		0.795413, -0.254498, 0.550045,
		36.806519, 39.094017, 30.912138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623100, 39.864933, 30.568174>,  <36.249729, 39.272167, 30.527105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623100, 39.864933, 30.568174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910995, 39.610497, 30.679432>,  <37.083733, 39.457836, 30.746185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910995, 39.610497, 30.679432>,  <36.623100, 39.864933, 30.568174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910995, 39.610497, 30.679432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674743, 0.546635, -0.495895,
		0.163392, 0.544590, 0.822633,
		0.719739, -0.636091, 0.278143,
		37.126919, 39.419670, 30.762875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192673, 40.194569, 30.824530>,  <36.623100, 39.864933, 30.568174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192673, 40.194569, 30.824530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335773, 39.841202, 30.703472>,  <37.421635, 39.629181, 30.630838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335773, 39.841202, 30.703472>,  <37.192673, 40.194569, 30.824530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335773, 39.841202, 30.703472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849449, 0.442485, -0.287478,
		0.387877, -0.154235, 0.908715,
		0.357754, -0.883413, -0.302644,
		37.443100, 39.576180, 30.612679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888321, 40.272240, 30.880552>,  <37.192673, 40.194569, 30.824530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888321, 40.272240, 30.880552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850883, 39.955765, 30.638805>,  <37.828423, 39.765881, 30.493757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850883, 39.955765, 30.638805>,  <37.888321, 40.272240, 30.880552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850883, 39.955765, 30.638805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782691, 0.316707, -0.535810,
		0.615335, -0.523179, 0.589616,
		-0.093589, -0.791189, -0.604369,
		37.822807, 39.718407, 30.457495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592728, 39.894775, 30.791843>,  <37.888321, 40.272240, 30.880552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592728, 39.894775, 30.791843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360184, 39.796955, 30.481432>,  <38.220657, 39.738262, 30.295185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360184, 39.796955, 30.481432>,  <38.592728, 39.894775, 30.791843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360184, 39.796955, 30.481432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710761, 0.311596, -0.630656,
		0.396033, -0.918207, -0.007334,
		-0.581358, -0.244548, -0.776028,
		38.185776, 39.723591, 30.248623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.299900, 38.070118, 26.646631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542873, 38.265282, 26.897381>,  <34.688656, 38.382381, 27.047831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542873, 38.265282, 26.897381>,  <34.299900, 38.070118, 26.646631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542873, 38.265282, 26.897381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135192, -0.714138, 0.686826,
		0.782785, -0.501947, -0.367827,
		0.607430, 0.487910, 0.626876,
		34.725101, 38.411655, 27.085443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731503, 37.543098, 26.817968>,  <34.299900, 38.070118, 26.646631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731503, 37.543098, 26.817968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.722076, 37.829529, 27.097017>,  <34.716419, 38.001389, 27.264446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.722076, 37.829529, 27.097017>,  <34.731503, 37.543098, 26.817968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722076, 37.829529, 27.097017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121588, -0.694690, 0.708958,
		0.992301, -0.068114, 0.103439,
		-0.023568, 0.716077, 0.697623,
		34.715008, 38.044353, 27.306305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974346, 37.242294, 27.316952>,  <34.731503, 37.543098, 26.817968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974346, 37.242294, 27.316952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839104, 37.556118, 27.524860>,  <34.757957, 37.744411, 27.649605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839104, 37.556118, 27.524860>,  <34.974346, 37.242294, 27.316952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839104, 37.556118, 27.524860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223477, -0.603428, 0.765463,
		0.914191, 0.142648, 0.379350,
		-0.338102, 0.784555, 0.519769,
		34.737675, 37.791485, 27.680792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342888, 37.280945, 28.018101>,  <34.974346, 37.242294, 27.316952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342888, 37.280945, 28.018101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984524, 37.457829, 28.035084>,  <34.769505, 37.563957, 28.045275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984524, 37.457829, 28.035084>,  <35.342888, 37.280945, 28.018101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984524, 37.457829, 28.035084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275577, -0.628177, 0.727634,
		0.348438, 0.640191, 0.684651,
		-0.895906, 0.442210, 0.042459,
		34.715752, 37.590492, 28.047821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275383, 37.445137, 28.705999>,  <35.342888, 37.280945, 28.018101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275383, 37.445137, 28.705999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894295, 37.477306, 28.588797>,  <34.665642, 37.496609, 28.518475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894295, 37.477306, 28.588797>,  <35.275383, 37.445137, 28.705999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894295, 37.477306, 28.588797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298161, -0.433120, 0.850592,
		-0.058497, 0.897741, 0.436623,
		-0.952721, 0.080427, -0.293008,
		34.608479, 37.501434, 28.500895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981861, 37.757256, 29.311382>,  <35.275383, 37.445137, 28.705999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981861, 37.757256, 29.311382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667141, 37.630386, 29.099592>,  <34.478310, 37.554264, 28.972517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667141, 37.630386, 29.099592>,  <34.981861, 37.757256, 29.311382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667141, 37.630386, 29.099592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383918, -0.420201, 0.822215,
		-0.483275, 0.850194, 0.208843,
		-0.786799, -0.317177, -0.529478,
		34.431103, 37.535233, 28.940748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234543, 37.913025, 29.711403>,  <34.981861, 37.757256, 29.311382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234543, 37.913025, 29.711403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144989, 37.642311, 29.430878>,  <34.091255, 37.479885, 29.262562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144989, 37.642311, 29.430878>,  <34.234543, 37.913025, 29.711403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144989, 37.642311, 29.430878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565757, -0.495679, 0.658954,
		-0.793595, 0.544305, -0.271918,
		-0.223888, -0.676782, -0.701313,
		34.077824, 37.439278, 29.220484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459549, 37.811440, 29.724876>,  <34.234543, 37.913025, 29.711403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459549, 37.811440, 29.724876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606426, 37.478867, 29.558077>,  <33.694553, 37.279324, 29.457996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606426, 37.478867, 29.558077>,  <33.459549, 37.811440, 29.724876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606426, 37.478867, 29.558077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535598, -0.555533, 0.636017,
		-0.760462, -0.010198, -0.649303,
		0.367195, -0.831432, -0.417000,
		33.716583, 37.229439, 29.432978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909092, 37.313881, 29.851868>,  <33.459549, 37.811440, 29.724876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909092, 37.313881, 29.851868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.241638, 37.108215, 29.767519>,  <33.441166, 36.984818, 29.716909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.241638, 37.108215, 29.767519>,  <32.909092, 37.313881, 29.851868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241638, 37.108215, 29.767519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196126, -0.626504, 0.754339,
		-0.519963, -0.585776, -0.621696,
		0.831369, -0.514158, -0.210873,
		33.491047, 36.953968, 29.704256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678085, 36.666359, 29.851555>,  <32.909092, 37.313881, 29.851868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678085, 36.666359, 29.851555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.074360, 36.658951, 29.905516>,  <33.312126, 36.654507, 29.937891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.074360, 36.658951, 29.905516>,  <32.678085, 36.666359, 29.851555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074360, 36.658951, 29.905516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114610, -0.648353, 0.752664,
		0.073523, -0.761115, -0.644437,
		0.990686, -0.018521, 0.134901,
		33.371567, 36.653393, 29.945986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800625, 36.015915, 29.939558>,  <32.678085, 36.666359, 29.851555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800625, 36.015915, 29.939558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.143635, 36.160156, 30.086313>,  <33.349442, 36.246700, 30.174366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.143635, 36.160156, 30.086313>,  <32.800625, 36.015915, 29.939558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143635, 36.160156, 30.086313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104924, -0.575592, 0.810978,
		0.503622, -0.733932, -0.455750,
		0.857529, 0.360607, 0.366888,
		33.400894, 36.268337, 30.196381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168591, 35.444035, 30.094589>,  <32.800625, 36.015915, 29.939558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168591, 35.444035, 30.094589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.318680, 35.753880, 30.298227>,  <33.408733, 35.939789, 30.420410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.318680, 35.753880, 30.298227>,  <33.168591, 35.444035, 30.094589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318680, 35.753880, 30.298227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122097, -0.585743, 0.801248,
		0.918858, -0.238487, -0.314362,
		0.375222, 0.774616, 0.509096,
		33.431248, 35.986263, 30.450956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854996, 35.244873, 30.385571>,  <33.168591, 35.444035, 30.094589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854996, 35.244873, 30.385571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687271, 35.542816, 30.593170>,  <33.586636, 35.721581, 30.717730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687271, 35.542816, 30.593170>,  <33.854996, 35.244873, 30.385571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687271, 35.542816, 30.593170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025391, -0.561841, 0.826855,
		0.907486, 0.359889, 0.216674,
		-0.419313, 0.744859, 0.519001,
		33.561478, 35.766273, 30.748871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177864, 35.152378, 30.994017>,  <33.854996, 35.244873, 30.385571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177864, 35.152378, 30.994017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871918, 35.383987, 31.106951>,  <33.688351, 35.522953, 31.174711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871918, 35.383987, 31.106951>,  <34.177864, 35.152378, 30.994017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871918, 35.383987, 31.106951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173918, -0.607615, 0.774955,
		0.620265, 0.543636, 0.565448,
		-0.764868, 0.579020, 0.282334,
		33.642456, 35.557693, 31.191650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899239, 35.090904, 31.364811>,  <34.177864, 35.152378, 30.994017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899239, 35.090904, 31.364811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.121292, 34.771488, 31.271717>,  <35.254524, 34.579838, 31.215860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.121292, 34.771488, 31.271717>,  <34.899239, 35.090904, 31.364811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121292, 34.771488, 31.271717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375977, 0.490498, -0.786164,
		0.741938, 0.348921, 0.572523,
		0.555130, -0.798540, -0.232733,
		35.287830, 34.531925, 31.201897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513390, 35.357262, 31.267628>,  <34.899239, 35.090904, 31.364811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513390, 35.357262, 31.267628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504669, 35.017174, 31.057240>,  <35.499439, 34.813122, 30.931007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504669, 35.017174, 31.057240>,  <35.513390, 35.357262, 31.267628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504669, 35.017174, 31.057240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462418, 0.457863, -0.759296,
		0.886394, -0.259770, 0.383178,
		-0.021799, -0.850224, -0.525969,
		35.498131, 34.762108, 30.899448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236950, 35.394505, 31.022076>,  <35.513390, 35.357262, 31.267628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236950, 35.394505, 31.022076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.048794, 35.112442, 30.809853>,  <35.935902, 34.943203, 30.682518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.048794, 35.112442, 30.809853>,  <36.236950, 35.394505, 31.022076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048794, 35.112442, 30.809853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362075, 0.394065, -0.844757,
		0.804760, -0.589464, 0.069957,
		-0.470386, -0.705156, -0.530558,
		35.907677, 34.900894, 30.650684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747841, 35.007084, 30.720551>,  <36.236950, 35.394505, 31.022076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747841, 35.007084, 30.720551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413654, 34.982147, 30.502153>,  <36.213142, 34.967186, 30.371115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413654, 34.982147, 30.502153>,  <36.747841, 35.007084, 30.720551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413654, 34.982147, 30.502153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498860, 0.330713, -0.801104,
		0.230504, -0.941670, -0.245203,
		-0.835468, -0.062336, -0.545992,
		36.163013, 34.963444, 30.338356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008064, 34.824959, 30.092812>,  <36.747841, 35.007084, 30.720551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008064, 34.824959, 30.092812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.644798, 34.958466, 29.991745>,  <36.426838, 35.038570, 29.931105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.644798, 34.958466, 29.991745>,  <37.008064, 34.824959, 30.092812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644798, 34.958466, 29.991745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394370, 0.479711, -0.783805,
		-0.140399, -0.811467, -0.567282,
		-0.908163, 0.333764, -0.252667,
		36.372349, 35.058594, 29.915945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916504, 34.608337, 29.474619>,  <37.008064, 34.824959, 30.092812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916504, 34.608337, 29.474619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677532, 34.929070, 29.479591>,  <36.534149, 35.121510, 29.482574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677532, 34.929070, 29.479591>,  <36.916504, 34.608337, 29.474619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677532, 34.929070, 29.479591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358119, 0.280634, -0.890503,
		-0.717516, -0.527561, -0.454808,
		-0.597429, 0.801826, 0.012430,
		36.498302, 35.169617, 29.483320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594425, 34.721722, 28.722883>,  <36.916504, 34.608337, 29.474619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594425, 34.721722, 28.722883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547649, 35.067631, 28.918226>,  <36.519585, 35.275177, 29.035433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.547649, 35.067631, 28.918226>,  <36.594425, 34.721722, 28.722883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547649, 35.067631, 28.918226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200282, 0.502165, -0.841259,
		-0.972734, -0.000568, -0.231922,
		-0.116941, 0.864772, 0.488359,
		36.512566, 35.327061, 29.064734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187084, 35.121544, 28.200748>,  <36.594425, 34.721722, 28.722883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187084, 35.121544, 28.200748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271198, 35.431274, 28.439480>,  <36.321667, 35.617111, 28.582718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271198, 35.431274, 28.439480>,  <36.187084, 35.121544, 28.200748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271198, 35.431274, 28.439480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185327, 0.567837, -0.802007,
		-0.959913, 0.279259, -0.024095,
		0.210285, 0.774322, 0.596829,
		36.334282, 35.663570, 28.618528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921513, 35.762184, 27.892199>,  <36.187084, 35.121544, 28.200748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921513, 35.762184, 27.892199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211803, 35.881298, 28.140278>,  <36.385979, 35.952766, 28.289125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211803, 35.881298, 28.140278>,  <35.921513, 35.762184, 27.892199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211803, 35.881298, 28.140278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293659, 0.681151, -0.670670,
		-0.622162, 0.668850, 0.406883,
		0.725727, 0.297781, 0.620200,
		36.429520, 35.970631, 28.326338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872437, 36.500462, 27.855631>,  <35.921513, 35.762184, 27.892199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872437, 36.500462, 27.855631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235672, 36.450066, 28.015383>,  <36.453613, 36.419830, 28.111235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235672, 36.450066, 28.015383>,  <35.872437, 36.500462, 27.855631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235672, 36.450066, 28.015383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371142, 0.683875, -0.628147,
		-0.193989, 0.718639, 0.667777,
		0.908087, -0.125987, 0.399381,
		36.508099, 36.412270, 28.135197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130154, 37.216026, 27.927458>,  <35.872437, 36.500462, 27.855631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130154, 37.216026, 27.927458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.441376, 36.965603, 27.906784>,  <36.628109, 36.815350, 27.894381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.441376, 36.965603, 27.906784>,  <36.130154, 37.216026, 27.927458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441376, 36.965603, 27.906784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474560, 0.639688, -0.604642,
		0.411604, 0.445921, 0.794819,
		0.778059, -0.626062, -0.051682,
		36.674793, 36.777782, 27.891279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716068, 37.565052, 28.149475>,  <36.130154, 37.216026, 27.927458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716068, 37.565052, 28.149475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845123, 37.257248, 27.929020>,  <36.922558, 37.072567, 27.796747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845123, 37.257248, 27.929020>,  <36.716068, 37.565052, 28.149475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845123, 37.257248, 27.929020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605462, 0.615356, -0.504731,
		0.727543, -0.170848, 0.664448,
		0.322640, -0.769511, -0.551140,
		36.941914, 37.026394, 27.763678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296936, 37.830673, 27.991461>,  <36.716068, 37.565052, 28.149475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296936, 37.830673, 27.991461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.219666, 37.535847, 27.732414>,  <37.173302, 37.358952, 27.576986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.219666, 37.535847, 27.732414>,  <37.296936, 37.830673, 27.991461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219666, 37.535847, 27.732414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599911, 0.433567, -0.672404,
		0.776395, -0.518408, 0.358420,
		-0.193180, -0.737070, -0.647618,
		37.161713, 37.314724, 27.538130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009605, 37.703213, 27.910097>,  <37.296936, 37.830673, 27.991461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009605, 37.703213, 27.910097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764595, 37.566769, 27.624872>,  <37.617588, 37.484901, 27.453737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764595, 37.566769, 27.624872>,  <38.009605, 37.703213, 27.910097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764595, 37.566769, 27.624872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482230, 0.553512, -0.679027,
		0.626315, -0.759779, -0.174542,
		-0.612522, -0.341116, -0.713061,
		37.580837, 37.464436, 27.410954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656307, 37.292107, 28.127653>,  <38.009605, 37.703213, 27.910097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656307, 37.292107, 28.127653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036293, 37.270336, 28.250687>,  <39.264282, 37.257275, 28.324507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036293, 37.270336, 28.250687>,  <38.656307, 37.292107, 28.127653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036293, 37.270336, 28.250687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296995, -0.462464, 0.835416,
		0.096777, -0.884966, -0.455489,
		0.949962, -0.054429, 0.307586,
		39.321281, 37.254005, 28.342962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742371, 36.627808, 28.308153>,  <38.656307, 37.292107, 28.127653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742371, 36.627808, 28.308153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037666, 36.813759, 28.503662>,  <39.214844, 36.925327, 28.620968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037666, 36.813759, 28.503662>,  <38.742371, 36.627808, 28.308153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037666, 36.813759, 28.503662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166505, -0.576588, 0.799889,
		0.653668, -0.671890, -0.348255,
		0.738237, 0.464876, 0.488770,
		39.259136, 36.953220, 28.650293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059967, 36.133667, 28.713287>,  <38.742371, 36.627808, 28.308153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059967, 36.133667, 28.713287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204910, 36.452801, 28.906019>,  <39.291878, 36.644279, 29.021658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204910, 36.452801, 28.906019>,  <39.059967, 36.133667, 28.713287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204910, 36.452801, 28.906019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333408, -0.371795, 0.866376,
		0.870364, -0.474585, 0.131280,
		0.362360, 0.797833, 0.481828,
		39.313618, 36.692150, 29.050568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448528, 35.905628, 29.139956>,  <39.059967, 36.133667, 28.713287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448528, 35.905628, 29.139956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.359684, 36.255478, 29.312325>,  <39.306377, 36.465389, 29.415747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.359684, 36.255478, 29.312325>,  <39.448528, 35.905628, 29.139956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359684, 36.255478, 29.312325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119752, -0.463087, 0.878186,
		0.967639, 0.143451, 0.207595,
		-0.222111, 0.874627, 0.430923,
		39.293049, 36.517864, 29.441601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010860, 36.183064, 29.622522>,  <39.448528, 35.905628, 29.139956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010860, 36.183064, 29.622522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.651749, 36.327511, 29.723389>,  <39.436283, 36.414181, 29.783909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.651749, 36.327511, 29.723389>,  <40.010860, 36.183064, 29.622522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651749, 36.327511, 29.723389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083726, -0.422155, 0.902649,
		0.432417, 0.831491, 0.348766,
		-0.897778, 0.361121, 0.252164,
		39.382416, 36.435848, 29.799038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135777, 36.518959, 30.221933>,  <40.010860, 36.183064, 29.622522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135777, 36.518959, 30.221933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739613, 36.463737, 30.219593>,  <39.501915, 36.430603, 30.218189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739613, 36.463737, 30.219593>,  <40.135777, 36.518959, 30.221933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739613, 36.463737, 30.219593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037043, -0.306074, 0.951287,
		-0.133121, 0.941944, 0.308252,
		-0.990407, -0.138054, -0.005853,
		39.442490, 36.422321, 30.217836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949966, 36.744015, 30.846762>,  <40.135777, 36.518959, 30.221933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949966, 36.744015, 30.846762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616806, 36.552498, 30.735741>,  <39.416912, 36.437588, 30.669128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616806, 36.552498, 30.735741>,  <39.949966, 36.744015, 30.846762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616806, 36.552498, 30.735741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227204, -0.161474, 0.960367,
		-0.504636, 0.862949, 0.025708,
		-0.832899, -0.478795, -0.277551,
		39.366936, 36.408859, 30.652475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355839, 36.904953, 31.210224>,  <39.949966, 36.744015, 30.846762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355839, 36.904953, 31.210224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.236961, 36.539448, 31.099442>,  <39.165634, 36.320145, 31.032972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.236961, 36.539448, 31.099442>,  <39.355839, 36.904953, 31.210224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236961, 36.539448, 31.099442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238131, -0.209964, 0.948267,
		-0.924645, 0.347772, -0.155196,
		-0.297195, -0.913767, -0.276957,
		39.147804, 36.265316, 31.016354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866226, 36.741070, 31.785801>,  <39.355839, 36.904953, 31.210224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866226, 36.741070, 31.785801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889664, 36.387779, 31.599695>,  <38.903725, 36.175804, 31.488031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889664, 36.387779, 31.599695>,  <38.866226, 36.741070, 31.785801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889664, 36.387779, 31.599695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356435, -0.453854, 0.816683,
		-0.932481, 0.117985, -0.341406,
		0.058592, -0.883230, -0.465265,
		38.907242, 36.122810, 31.460115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129433, 36.351437, 31.764660>,  <38.866226, 36.741070, 31.785801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129433, 36.351437, 31.764660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.432663, 36.091305, 31.745049>,  <38.614601, 35.935226, 31.733282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.432663, 36.091305, 31.745049>,  <38.129433, 36.351437, 31.764660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432663, 36.091305, 31.745049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391878, -0.514317, 0.762830,
		-0.521316, -0.559056, -0.644737,
		0.758064, -0.650334, -0.049040,
		38.660084, 35.896206, 31.730341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823246, 35.753811, 31.827700>,  <38.129433, 36.351437, 31.764660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823246, 35.753811, 31.827700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.194759, 35.631626, 31.911657>,  <38.417667, 35.558315, 31.962032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.194759, 35.631626, 31.911657>,  <37.823246, 35.753811, 31.827700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194759, 35.631626, 31.911657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365409, -0.660013, 0.656398,
		-0.061972, -0.686348, -0.724628,
		0.928782, -0.305464, 0.209896,
		38.473392, 35.539986, 31.974627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801216, 35.060650, 31.899460>,  <37.823246, 35.753811, 31.827700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801216, 35.060650, 31.899460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154659, 35.143520, 32.067417>,  <38.366726, 35.193245, 32.168190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154659, 35.143520, 32.067417>,  <37.801216, 35.060650, 31.899460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154659, 35.143520, 32.067417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168240, -0.696403, 0.697652,
		0.436952, -0.687095, -0.580494,
		0.883611, 0.207178, 0.419891,
		38.419743, 35.205673, 32.193386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282635, 34.399689, 32.037891>,  <37.801216, 35.060650, 31.899460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282635, 34.399689, 32.037891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396408, 34.690243, 32.288158>,  <38.464672, 34.864574, 32.438320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396408, 34.690243, 32.288158>,  <38.282635, 34.399689, 32.037891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396408, 34.690243, 32.288158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065557, -0.636363, 0.768599,
		0.956452, -0.259631, -0.133382,
		0.284431, 0.726384, 0.625672,
		38.481739, 34.908157, 32.475861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755608, 34.044758, 32.391293>,  <38.282635, 34.399689, 32.037891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755608, 34.044758, 32.391293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659683, 34.377865, 32.590889>,  <38.602131, 34.577728, 32.710648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659683, 34.377865, 32.590889>,  <38.755608, 34.044758, 32.391293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659683, 34.377865, 32.590889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303032, -0.552514, 0.776466,
		0.922315, 0.034994, 0.384852,
		-0.239808, 0.832769, 0.498988,
		38.587742, 34.627697, 32.740585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.008751, 39.328518, 30.436724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767467, 39.494011, 30.163971>,  <38.622700, 39.593307, 30.000319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767467, 39.494011, 30.163971>,  <39.008751, 39.328518, 30.436724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767467, 39.494011, 30.163971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733002, -0.049442, -0.678427,
		-0.314404, -0.909053, -0.273447,
		-0.603207, 0.413737, -0.681882,
		38.586506, 39.618134, 29.959406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211861, 38.961884, 29.773657>,  <39.008751, 39.328518, 30.436724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211861, 38.961884, 29.773657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.012344, 39.290012, 29.661747>,  <38.892635, 39.486889, 29.594601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.012344, 39.290012, 29.661747>,  <39.211861, 38.961884, 29.773657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012344, 39.290012, 29.661747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625247, 0.117014, -0.771605,
		-0.600230, -0.559798, -0.571271,
		-0.498789, 0.820326, -0.279776,
		38.862709, 39.536110, 29.577814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294350, 39.024353, 28.987909>,  <39.211861, 38.961884, 29.773657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294350, 39.024353, 28.987909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.144432, 39.377937, 29.099722>,  <39.054482, 39.590088, 29.166809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.144432, 39.377937, 29.099722>,  <39.294350, 39.024353, 28.987909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144432, 39.377937, 29.099722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584793, 0.459367, -0.668580,
		-0.719409, -0.087109, -0.689103,
		-0.374791, 0.883965, 0.279532,
		39.031994, 39.643127, 29.183582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996418, 39.390488, 28.398342>,  <39.294350, 39.024353, 28.987909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996418, 39.390488, 28.398342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.130917, 39.639046, 28.681412>,  <39.211617, 39.788181, 28.851254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.130917, 39.639046, 28.681412>,  <38.996418, 39.390488, 28.398342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130917, 39.639046, 28.681412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660638, 0.379901, -0.647482,
		-0.671191, 0.685228, -0.282781,
		0.336244, 0.621400, 0.707674,
		39.231789, 39.825466, 28.893715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007824, 39.981262, 27.998512>,  <38.996418, 39.390488, 28.398342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007824, 39.981262, 27.998512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199570, 40.067730, 28.338743>,  <39.314617, 40.119610, 28.542881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199570, 40.067730, 28.338743>,  <39.007824, 39.981262, 27.998512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199570, 40.067730, 28.338743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597870, 0.629064, -0.496821,
		-0.642464, 0.746692, 0.172310,
		0.479366, 0.216171, 0.850576,
		39.343380, 40.132580, 28.593916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033459, 40.716248, 28.019892>,  <39.007824, 39.981262, 27.998512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033459, 40.716248, 28.019892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.324661, 40.583145, 28.259651>,  <39.499382, 40.503284, 28.403507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.324661, 40.583145, 28.259651>,  <39.033459, 40.716248, 28.019892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324661, 40.583145, 28.259651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658672, 0.581991, -0.476905,
		-0.190150, 0.741996, 0.642872,
		0.728007, -0.332758, 0.599398,
		39.543064, 40.483318, 28.439470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336063, 41.249454, 28.293970>,  <39.033459, 40.716248, 28.019892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336063, 41.249454, 28.293970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.616127, 40.966679, 28.333973>,  <39.784164, 40.797012, 28.357975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.616127, 40.966679, 28.333973>,  <39.336063, 41.249454, 28.293970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616127, 40.966679, 28.333973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665344, 0.595221, -0.450587,
		0.259013, 0.382024, 0.887113,
		0.700164, -0.706944, 0.100008,
		39.826176, 40.754597, 28.363976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977722, 41.570343, 28.570517>,  <39.336063, 41.249454, 28.293970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977722, 41.570343, 28.570517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.100060, 41.231766, 28.396168>,  <40.173462, 41.028618, 28.291559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.100060, 41.231766, 28.396168>,  <39.977722, 41.570343, 28.570517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100060, 41.231766, 28.396168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762078, 0.492070, -0.420838,
		0.570697, -0.203457, 0.795557,
		0.305847, -0.846447, -0.435872,
		40.191814, 40.977833, 28.265406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761494, 41.592110, 28.558836>,  <39.977722, 41.570343, 28.570517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761494, 41.592110, 28.558836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.693825, 41.308807, 28.284679>,  <40.653225, 41.138828, 28.120186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.693825, 41.308807, 28.284679>,  <40.761494, 41.592110, 28.558836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693825, 41.308807, 28.284679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741833, 0.366350, -0.561669,
		0.648896, -0.603463, 0.463429,
		-0.169169, -0.708252, -0.685392,
		40.643074, 41.096333, 28.079062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470676, 41.373924, 28.347523>,  <40.761494, 41.592110, 28.558836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470676, 41.373924, 28.347523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.233242, 41.242210, 28.053795>,  <41.090782, 41.163181, 27.877558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.233242, 41.242210, 28.053795>,  <41.470676, 41.373924, 28.347523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233242, 41.242210, 28.053795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652719, 0.336767, -0.678635,
		0.470761, -0.882133, 0.015031,
		-0.593585, -0.329286, -0.734321,
		41.055168, 41.143425, 27.833498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949635, 41.098267, 27.799763>,  <41.470676, 41.373924, 28.347523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949635, 41.098267, 27.799763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.606068, 41.205284, 27.625095>,  <41.399925, 41.269493, 27.520294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.606068, 41.205284, 27.625095>,  <41.949635, 41.098267, 27.799763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606068, 41.205284, 27.625095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511299, 0.496032, -0.701802,
		0.028840, -0.826059, -0.562845,
		-0.858919, 0.267542, -0.436669,
		41.348392, 41.285545, 27.494095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927654, 40.773716, 27.182594>,  <41.949635, 41.098267, 27.799763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927654, 40.773716, 27.182594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.695827, 41.098400, 27.153694>,  <41.556732, 41.293213, 27.136354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.695827, 41.098400, 27.153694>,  <41.927654, 40.773716, 27.182594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695827, 41.098400, 27.153694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539354, 0.315612, -0.780696,
		-0.610898, -0.491437, -0.620720,
		-0.579569, 0.811714, -0.072252,
		41.521957, 41.341915, 27.132019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846760, 40.929306, 26.439814>,  <41.927654, 40.773716, 27.182594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846760, 40.929306, 26.439814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748310, 41.257336, 26.646461>,  <41.689240, 41.454155, 26.770451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748310, 41.257336, 26.646461>,  <41.846760, 40.929306, 26.439814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748310, 41.257336, 26.646461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388551, 0.571793, -0.722551,
		-0.887947, 0.022895, -0.459374,
		-0.246124, 0.820078, 0.516618,
		41.674473, 41.503361, 26.801447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483585, 41.466190, 26.061562>,  <41.846760, 40.929306, 26.439814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483585, 41.466190, 26.061562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.676601, 41.635857, 26.368088>,  <41.792412, 41.737656, 26.552004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.676601, 41.635857, 26.368088>,  <41.483585, 41.466190, 26.061562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676601, 41.635857, 26.368088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408625, 0.664843, -0.625307,
		-0.774716, 0.614869, 0.147485,
		0.482536, 0.424169, 0.766316,
		41.821362, 41.763107, 26.597982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089355, 41.593895, 25.332369>,  <41.483585, 41.466190, 26.061562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089355, 41.593895, 25.332369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.137943, 41.336063, 25.030439>,  <41.167095, 41.181366, 24.849281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.137943, 41.336063, 25.030439>,  <41.089355, 41.593895, 25.332369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137943, 41.336063, 25.030439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272031, -0.752958, 0.599210,
		-0.954591, 0.132551, -0.266806,
		0.121468, -0.644580, -0.754825,
		41.174385, 41.142689, 24.803991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566257, 41.155621, 25.384621>,  <41.089355, 41.593895, 25.332369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566257, 41.155621, 25.384621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811211, 40.936981, 25.156158>,  <40.958183, 40.805798, 25.019081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811211, 40.936981, 25.156158>,  <40.566257, 41.155621, 25.384621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811211, 40.936981, 25.156158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121926, -0.779126, 0.614897,
		-0.781117, -0.306901, -0.543754,
		0.612365, -0.546603, -0.571169,
		40.994926, 40.773003, 24.984812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214622, 40.472866, 25.266706>,  <40.566257, 41.155621, 25.384621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214622, 40.472866, 25.266706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.600410, 40.393810, 25.196581>,  <40.831882, 40.346375, 25.154507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.600410, 40.393810, 25.196581>,  <40.214622, 40.472866, 25.266706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600410, 40.393810, 25.196581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053001, -0.794842, 0.604497,
		-0.258819, -0.573728, -0.777077,
		0.964471, -0.197642, -0.175312,
		40.889751, 40.334518, 25.143988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136829, 39.797806, 25.013746>,  <40.214622, 40.472866, 25.266706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136829, 39.797806, 25.013746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.527607, 39.829288, 25.093136>,  <40.762074, 39.848179, 25.140770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.527607, 39.829288, 25.093136>,  <40.136829, 39.797806, 25.013746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527607, 39.829288, 25.093136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009404, -0.944537, 0.328272,
		0.213302, -0.318836, -0.923497,
		0.976941, 0.078705, 0.198473,
		40.820690, 39.852901, 25.152678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282780, 39.131382, 25.039152>,  <40.136829, 39.797806, 25.013746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282780, 39.131382, 25.039152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.611477, 39.278942, 25.212891>,  <40.808693, 39.367477, 25.317133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.611477, 39.278942, 25.212891>,  <40.282780, 39.131382, 25.039152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611477, 39.278942, 25.212891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072086, -0.823362, 0.562920,
		0.565284, -0.431264, -0.703182,
		0.821740, 0.368899, 0.434345,
		40.857998, 39.389610, 25.343195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675999, 38.546894, 25.154358>,  <40.282780, 39.131382, 25.039152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675999, 38.546894, 25.154358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.792183, 38.830498, 25.411400>,  <40.861893, 39.000660, 25.565624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.792183, 38.830498, 25.411400>,  <40.675999, 38.546894, 25.154358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792183, 38.830498, 25.411400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061853, -0.656241, 0.752012,
		0.954885, -0.258179, -0.146760,
		0.290463, 0.709007, 0.642604,
		40.879322, 39.043201, 25.604181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202560, 38.224945, 25.571648>,  <40.675999, 38.546894, 25.154358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202560, 38.224945, 25.571648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.056919, 38.535892, 25.776829>,  <40.969532, 38.722462, 25.899937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.056919, 38.535892, 25.776829>,  <41.202560, 38.224945, 25.571648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056919, 38.535892, 25.776829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068565, -0.571636, 0.817637,
		0.928830, 0.262537, 0.261437,
		-0.364107, 0.777372, 0.512952,
		40.947685, 38.769104, 25.930714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418045, 38.140232, 26.134340>,  <41.202560, 38.224945, 25.571648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418045, 38.140232, 26.134340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.172359, 38.427151, 26.265936>,  <41.024948, 38.599300, 26.344893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.172359, 38.427151, 26.265936>,  <41.418045, 38.140232, 26.134340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172359, 38.427151, 26.265936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146326, -0.513184, 0.845713,
		0.775458, 0.471306, 0.420162,
		-0.614210, 0.717296, 0.328988,
		40.988098, 38.642338, 26.364632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542290, 38.286633, 26.868608>,  <41.418045, 38.140232, 26.134340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542290, 38.286633, 26.868608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.164066, 38.397373, 26.800163>,  <40.937134, 38.463818, 26.759096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.164066, 38.397373, 26.800163>,  <41.542290, 38.286633, 26.868608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164066, 38.397373, 26.800163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307676, -0.588957, 0.747305,
		0.106113, 0.759266, 0.642071,
		-0.945556, 0.276849, -0.171112,
		40.880398, 38.480427, 26.748829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346424, 38.391975, 27.502144>,  <41.542290, 38.286633, 26.868608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346424, 38.391975, 27.502144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006153, 38.351696, 27.295763>,  <40.801991, 38.327530, 27.171934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006153, 38.351696, 27.295763>,  <41.346424, 38.391975, 27.502144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006153, 38.351696, 27.295763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434099, -0.419002, 0.797493,
		-0.296490, 0.902384, 0.312723,
		-0.850677, -0.100696, -0.515954,
		40.750950, 38.321487, 27.140976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792980, 38.591537, 27.996807>,  <41.346424, 38.391975, 27.502144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792980, 38.591537, 27.996807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578598, 38.409679, 27.712257>,  <40.449970, 38.300564, 27.541527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578598, 38.409679, 27.712257>,  <40.792980, 38.591537, 27.996807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578598, 38.409679, 27.712257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524803, -0.480619, 0.702558,
		-0.661314, 0.749869, 0.018990,
		-0.535953, -0.454645, -0.711374,
		40.417812, 38.273285, 27.498846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094578, 38.702698, 28.201712>,  <40.792980, 38.591537, 27.996807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094578, 38.702698, 28.201712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.096260, 38.384003, 27.959986>,  <40.097267, 38.192787, 27.814949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.096260, 38.384003, 27.959986>,  <40.094578, 38.702698, 28.201712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096260, 38.384003, 27.959986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521661, -0.517323, 0.678414,
		-0.853142, 0.312398, -0.417799,
		0.004202, -0.796733, -0.604316,
		40.097519, 38.144981, 27.778690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392025, 38.496258, 28.126652>,  <40.094578, 38.702698, 28.201712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392025, 38.496258, 28.126652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.604904, 38.180275, 28.004847>,  <39.732632, 37.990685, 27.931763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.604904, 38.180275, 28.004847>,  <39.392025, 38.496258, 28.126652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604904, 38.180275, 28.004847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510652, -0.586411, 0.628774,
		-0.675276, -0.179133, -0.715481,
		0.532200, -0.789958, -0.304515,
		39.764565, 37.943287, 27.913492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920475, 37.950825, 27.826777>,  <39.392025, 38.496258, 28.126652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920475, 37.950825, 27.826777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255356, 37.768089, 27.947037>,  <39.456284, 37.658447, 28.019192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255356, 37.768089, 27.947037>,  <38.920475, 37.950825, 27.826777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255356, 37.768089, 27.947037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511717, -0.460380, 0.725394,
		-0.192977, -0.761148, -0.619204,
		0.837201, -0.456841, 0.300650,
		39.506516, 37.631035, 28.037231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482876, 37.449234, 27.332016>,  <38.920475, 37.950825, 27.826777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482876, 37.449234, 27.332016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.126286, 37.508984, 27.160917>,  <37.912331, 37.544834, 27.058258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.126286, 37.508984, 27.160917>,  <38.482876, 37.449234, 27.332016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126286, 37.508984, 27.160917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451128, 0.380131, -0.807455,
		0.041983, -0.912791, -0.406264,
		-0.891471, 0.149378, -0.427745,
		37.858845, 37.553799, 27.032595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524746, 37.270088, 26.694345>,  <38.482876, 37.449234, 27.332016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524746, 37.270088, 26.694345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.205173, 37.510654, 26.693861>,  <38.013432, 37.654995, 26.693569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.205173, 37.510654, 26.693861>,  <38.524746, 37.270088, 26.694345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205173, 37.510654, 26.693861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306057, 0.404833, -0.861649,
		-0.517722, -0.688770, -0.507503,
		-0.798932, 0.601420, -0.001212,
		37.965492, 37.691082, 26.693497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545002, 37.421043, 26.052309>,  <38.524746, 37.270088, 26.694345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545002, 37.421043, 26.052309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.276138, 37.690777, 26.174604>,  <38.114819, 37.852615, 26.247982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.276138, 37.690777, 26.174604>,  <38.545002, 37.421043, 26.052309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276138, 37.690777, 26.174604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169260, 0.541944, -0.823193,
		-0.720801, -0.501567, -0.478410,
		-0.672159, 0.674334, 0.305739,
		38.074490, 37.893078, 26.266327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012722, 37.528072, 25.646885>,  <38.545002, 37.421043, 26.052309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012722, 37.528072, 25.646885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022533, 37.886719, 25.823736>,  <38.028419, 38.101906, 25.929848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022533, 37.886719, 25.823736>,  <38.012722, 37.528072, 25.646885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022533, 37.886719, 25.823736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073190, 0.442685, -0.893685,
		-0.997016, -0.010437, 0.076482,
		0.024531, 0.896616, 0.442128,
		38.029892, 38.155704, 25.956375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413383, 37.803200, 25.416769>,  <38.012722, 37.528072, 25.646885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413383, 37.803200, 25.416769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.679951, 38.084225, 25.516603>,  <37.839893, 38.252838, 25.576504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.679951, 38.084225, 25.516603>,  <37.413383, 37.803200, 25.416769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679951, 38.084225, 25.516603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223510, 0.507613, -0.832089,
		-0.711286, 0.498735, 0.495313,
		0.666420, 0.702561, 0.249586,
		37.879875, 38.294994, 25.591478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091873, 38.399658, 25.173161>,  <37.413383, 37.803200, 25.416769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091873, 38.399658, 25.173161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.461205, 38.525486, 25.261265>,  <37.682804, 38.600983, 25.314127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.461205, 38.525486, 25.261265>,  <37.091873, 38.399658, 25.173161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461205, 38.525486, 25.261265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096904, 0.745871, -0.659004,
		-0.371586, 0.587132, 0.719166,
		0.923327, 0.314567, 0.220260,
		37.738201, 38.619858, 25.327343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044292, 39.135906, 25.161520>,  <37.091873, 38.399658, 25.173161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044292, 39.135906, 25.161520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429379, 39.037567, 25.116381>,  <37.660431, 38.978565, 25.089296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429379, 39.037567, 25.116381>,  <37.044292, 39.135906, 25.161520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429379, 39.037567, 25.116381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093474, 0.693817, -0.714059,
		0.253844, 0.676889, 0.690930,
		0.962718, -0.245844, -0.112850,
		37.718193, 38.963814, 25.082525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721230, 39.695232, 25.493666>,  <37.044292, 39.135906, 25.161520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721230, 39.695232, 25.493666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.384487, 39.884556, 25.389925>,  <36.182442, 39.998150, 25.327681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.384487, 39.884556, 25.389925>,  <36.721230, 39.695232, 25.493666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384487, 39.884556, 25.389925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528294, -0.624357, 0.575399,
		0.110413, 0.621415, 0.775662,
		-0.841852, 0.473309, -0.259352,
		36.131931, 40.026550, 25.312119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522293, 39.735821, 26.095333>,  <36.721230, 39.695232, 25.493666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522293, 39.735821, 26.095333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207787, 39.789654, 25.854111>,  <36.019085, 39.821953, 25.709377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207787, 39.789654, 25.854111>,  <36.522293, 39.735821, 26.095333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207787, 39.789654, 25.854111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617198, -0.217314, 0.756202,
		-0.029278, 0.966778, 0.253933,
		-0.786263, 0.134587, -0.603056,
		35.971909, 39.830029, 25.673193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082417, 40.250092, 26.492517>,  <36.522293, 39.735821, 26.095333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082417, 40.250092, 26.492517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863899, 40.056484, 26.219084>,  <35.732788, 39.940319, 26.055023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863899, 40.056484, 26.219084>,  <36.082417, 40.250092, 26.492517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863899, 40.056484, 26.219084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627411, -0.304210, 0.716806,
		-0.554901, 0.820476, -0.137491,
		-0.546296, -0.484020, -0.683583,
		35.700012, 39.911278, 26.014009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362717, 40.301208, 26.742767>,  <36.082417, 40.250092, 26.492517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362717, 40.301208, 26.742767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328564, 40.012516, 26.468012>,  <35.308071, 39.839302, 26.303158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328564, 40.012516, 26.468012>,  <35.362717, 40.301208, 26.742767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328564, 40.012516, 26.468012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599424, -0.513478, 0.614028,
		-0.795865, 0.464164, -0.388782,
		-0.085378, -0.721728, -0.686890,
		35.302952, 39.795998, 26.261944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707668, 40.023468, 26.785448>,  <35.362717, 40.301208, 26.742767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707668, 40.023468, 26.785448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928219, 39.736595, 26.614973>,  <35.060551, 39.564472, 26.512688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928219, 39.736595, 26.614973>,  <34.707668, 40.023468, 26.785448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928219, 39.736595, 26.614973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515619, -0.694563, 0.501715,
		-0.655832, -0.056887, -0.752760,
		0.551381, -0.717179, -0.426185,
		35.093632, 39.521442, 26.487116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216278, 39.518528, 26.481499>,  <34.707668, 40.023468, 26.785448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216278, 39.518528, 26.481499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563328, 39.324646, 26.525854>,  <34.771557, 39.208317, 26.552467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563328, 39.324646, 26.525854>,  <34.216278, 39.518528, 26.481499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563328, 39.324646, 26.525854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448763, -0.667295, 0.594415,
		-0.214121, -0.565489, -0.796477,
		0.867620, -0.484706, 0.110889,
		34.823612, 39.179234, 26.559120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148838, 38.737946, 26.328424>,  <34.216278, 39.518528, 26.481499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148838, 38.737946, 26.328424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448448, 38.810524, 26.583309>,  <34.628216, 38.854073, 26.736240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448448, 38.810524, 26.583309>,  <34.148838, 38.737946, 26.328424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448448, 38.810524, 26.583309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328743, -0.733240, 0.595221,
		0.575231, -0.655313, -0.489565,
		0.749025, 0.181449, 0.637212,
		34.673157, 38.864960, 26.774473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.922123, 44.468544, 27.397766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.176376, 44.174561, 27.303272>,  <39.328930, 43.998173, 27.246576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.176376, 44.174561, 27.303272>,  <38.922123, 44.468544, 27.397766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176376, 44.174561, 27.303272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423988, -0.588079, 0.688765,
		-0.645134, -0.337646, -0.685418,
		0.635638, -0.734955, -0.236232,
		39.367069, 43.954075, 27.232403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510025, 43.874798, 27.277361>,  <38.922123, 44.468544, 27.397766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510025, 43.874798, 27.277361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.875664, 43.727131, 27.344454>,  <39.095047, 43.638531, 27.384708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.875664, 43.727131, 27.344454>,  <38.510025, 43.874798, 27.277361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875664, 43.727131, 27.344454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351591, -0.515537, 0.781412,
		-0.202003, -0.773262, -0.601050,
		0.914100, -0.369171, 0.167732,
		39.149895, 43.616379, 27.394773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352825, 43.148281, 27.306170>,  <38.510025, 43.874798, 27.277361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352825, 43.148281, 27.306170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.714931, 43.219688, 27.460375>,  <38.932198, 43.262535, 27.552898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.714931, 43.219688, 27.460375>,  <38.352825, 43.148281, 27.306170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714931, 43.219688, 27.460375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113258, -0.773176, 0.623996,
		0.409466, -0.608546, -0.679712,
		0.905268, 0.178522, 0.385512,
		38.986511, 43.273247, 27.576029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674751, 42.491653, 27.566391>,  <38.352825, 43.148281, 27.306170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674751, 42.491653, 27.566391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861168, 42.774605, 27.778963>,  <38.973019, 42.944378, 27.906506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861168, 42.774605, 27.778963>,  <38.674751, 42.491653, 27.566391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861168, 42.774605, 27.778963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360320, -0.396834, 0.844211,
		0.808068, -0.584923, 0.069942,
		0.466043, 0.707381, 0.531428,
		39.000980, 42.986820, 27.938391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098152, 42.070248, 28.187216>,  <38.674751, 42.491653, 27.566391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098152, 42.070248, 28.187216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060944, 42.441422, 28.331600>,  <39.038620, 42.664124, 28.418230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060944, 42.441422, 28.331600>,  <39.098152, 42.070248, 28.187216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060944, 42.441422, 28.331600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256366, -0.372630, 0.891865,
		0.962093, -0.009578, 0.272552,
		-0.093018, 0.927930, 0.360960,
		39.033039, 42.719799, 28.439888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454781, 42.115002, 28.803503>,  <39.098152, 42.070248, 28.187216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454781, 42.115002, 28.803503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.209709, 42.429531, 28.835314>,  <39.062668, 42.618248, 28.854401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.209709, 42.429531, 28.835314>,  <39.454781, 42.115002, 28.803503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209709, 42.429531, 28.835314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279508, -0.309700, 0.908824,
		0.739259, 0.534586, 0.409529,
		-0.612676, 0.786323, 0.079528,
		39.025906, 42.665428, 28.859173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330444, 42.185196, 29.572777>,  <39.454781, 42.115002, 28.803503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330444, 42.185196, 29.572777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059029, 42.421097, 29.397606>,  <38.896179, 42.562637, 29.292503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059029, 42.421097, 29.397606>,  <39.330444, 42.185196, 29.572777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059029, 42.421097, 29.397606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586989, -0.076905, 0.805934,
		0.441619, 0.803917, 0.398359,
		-0.678540, 0.589748, -0.437928,
		38.855465, 42.598022, 29.266228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989609, 42.748344, 30.070770>,  <39.330444, 42.185196, 29.572777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989609, 42.748344, 30.070770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724663, 42.676750, 29.779776>,  <38.565693, 42.633793, 29.605179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724663, 42.676750, 29.779776>,  <38.989609, 42.748344, 30.070770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724663, 42.676750, 29.779776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672370, -0.286273, 0.682618,
		-0.330438, 0.941282, 0.069273,
		-0.662367, -0.178986, -0.727485,
		38.525951, 42.623055, 29.561529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414948, 43.162971, 30.254292>,  <38.989609, 42.748344, 30.070770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414948, 43.162971, 30.254292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.240807, 42.884518, 30.025953>,  <38.136322, 42.717445, 29.888950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.240807, 42.884518, 30.025953>,  <38.414948, 43.162971, 30.254292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240807, 42.884518, 30.025953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646996, -0.198976, 0.736074,
		-0.625994, 0.689782, -0.363776,
		-0.435348, -0.696139, -0.570844,
		38.110203, 42.675674, 29.854700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756195, 43.329514, 30.406208>,  <38.414948, 43.162971, 30.254292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756195, 43.329514, 30.406208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714230, 42.971725, 30.232349>,  <37.689053, 42.757053, 30.128035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714230, 42.971725, 30.232349>,  <37.756195, 43.329514, 30.406208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714230, 42.971725, 30.232349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709741, -0.238804, 0.662751,
		-0.696606, 0.378017, -0.609789,
		-0.104911, -0.894470, -0.434647,
		37.682755, 42.703384, 30.101955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067329, 43.147938, 30.577049>,  <37.756195, 43.329514, 30.406208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067329, 43.147938, 30.577049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.240353, 42.798409, 30.488213>,  <37.344166, 42.588692, 30.434910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.240353, 42.798409, 30.488213>,  <37.067329, 43.147938, 30.577049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240353, 42.798409, 30.488213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636029, -0.470330, 0.611765,
		-0.639033, -0.123364, -0.759222,
		0.432555, -0.873825, -0.222093,
		37.370121, 42.536263, 30.421585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553921, 42.737473, 30.342773>,  <37.067329, 43.147938, 30.577049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553921, 42.737473, 30.342773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.842152, 42.480839, 30.447943>,  <37.015091, 42.326859, 30.511045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.842152, 42.480839, 30.447943>,  <36.553921, 42.737473, 30.342773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842152, 42.480839, 30.447943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683595, -0.593908, 0.424230,
		-0.116029, -0.485426, -0.866544,
		0.720580, -0.641588, 0.262924,
		37.058327, 42.288361, 30.526819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578991, 42.278767, 29.603136>,  <36.553921, 42.737473, 30.342773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578991, 42.278767, 29.603136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.223736, 42.254536, 29.420910>,  <36.010582, 42.239998, 29.311573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.223736, 42.254536, 29.420910>,  <36.578991, 42.278767, 29.603136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223736, 42.254536, 29.420910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451749, 0.067107, -0.889618,
		0.084460, -0.995905, -0.032236,
		-0.888138, -0.060575, -0.455567,
		35.957294, 42.236362, 29.284241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744682, 41.905117, 28.907881>,  <36.578991, 42.278767, 29.603136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744682, 41.905117, 28.907881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.387276, 42.075180, 28.850103>,  <36.172832, 42.177219, 28.815437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.387276, 42.075180, 28.850103>,  <36.744682, 41.905117, 28.907881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387276, 42.075180, 28.850103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169900, 0.022348, -0.985208,
		-0.415643, -0.904842, -0.092203,
		-0.893518, 0.425160, -0.144444,
		36.119221, 42.202728, 28.806770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432247, 41.547932, 28.359789>,  <36.744682, 41.905117, 28.907881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432247, 41.547932, 28.359789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.230263, 41.893143, 28.365404>,  <36.109074, 42.100269, 28.368773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.230263, 41.893143, 28.365404>,  <36.432247, 41.547932, 28.359789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230263, 41.893143, 28.365404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181774, 0.122227, -0.975715,
		-0.843787, -0.490142, -0.218596,
		-0.504957, 0.863030, 0.014039,
		36.078777, 42.152050, 28.369616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066238, 41.574253, 27.731108>,  <36.432247, 41.547932, 28.359789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066238, 41.574253, 27.731108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.099613, 41.953819, 27.852831>,  <36.119637, 42.181557, 27.925865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.099613, 41.953819, 27.852831>,  <36.066238, 41.574253, 27.731108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099613, 41.953819, 27.852831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343427, 0.259286, -0.902679,
		-0.935466, 0.179821, -0.304249,
		0.083433, 0.948913, 0.304308,
		36.124641, 42.238495, 27.944124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974854, 41.885719, 27.157919>,  <36.066238, 41.574253, 27.731108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974854, 41.885719, 27.157919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.065388, 42.208469, 27.376173>,  <36.119709, 42.402119, 27.507126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.065388, 42.208469, 27.376173>,  <35.974854, 41.885719, 27.157919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065388, 42.208469, 27.376173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221823, 0.502753, -0.835484,
		-0.948454, 0.310136, -0.065192,
		0.226338, 0.806879, 0.545634,
		36.133289, 42.450535, 27.539864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620590, 42.447010, 26.814194>,  <35.974854, 41.885719, 27.157919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620590, 42.447010, 26.814194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.939461, 42.586868, 27.011074>,  <36.130783, 42.670784, 27.129202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.939461, 42.586868, 27.011074>,  <35.620590, 42.447010, 26.814194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939461, 42.586868, 27.011074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234692, 0.571664, -0.786206,
		-0.556264, 0.742260, 0.373659,
		0.797176, 0.349643, 0.492199,
		36.178612, 42.691761, 27.158733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560059, 43.152138, 26.697073>,  <35.620590, 42.447010, 26.814194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560059, 43.152138, 26.697073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.948456, 43.120941, 26.787489>,  <36.181492, 43.102222, 26.841740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.948456, 43.120941, 26.787489>,  <35.560059, 43.152138, 26.697073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948456, 43.120941, 26.787489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218723, 0.671696, -0.707802,
		-0.096630, 0.736710, 0.669269,
		0.970990, -0.077990, 0.226042,
		36.239754, 43.097546, 26.855301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787136, 43.909672, 26.763275>,  <35.560059, 43.152138, 26.697073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787136, 43.909672, 26.763275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.091599, 43.656609, 26.706167>,  <36.274277, 43.504772, 26.671904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.091599, 43.656609, 26.706167>,  <35.787136, 43.909672, 26.763275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091599, 43.656609, 26.706167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268809, 0.508068, -0.818296,
		0.590238, 0.584475, 0.556784,
		0.761157, -0.632658, -0.142769,
		36.319946, 43.466812, 26.663336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331284, 44.360943, 26.731939>,  <35.787136, 43.909672, 26.763275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331284, 44.360943, 26.731939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.442883, 44.027630, 26.541027>,  <36.509842, 43.827641, 26.426479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.442883, 44.027630, 26.541027>,  <36.331284, 44.360943, 26.731939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442883, 44.027630, 26.541027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211507, 0.538134, -0.815890,
		0.936711, 0.126680, 0.326382,
		0.278994, -0.833285, -0.477282,
		36.526581, 43.777645, 26.397842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920517, 44.592934, 26.399975>,  <36.331284, 44.360943, 26.731939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920517, 44.592934, 26.399975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.816681, 44.256687, 26.209831>,  <36.754379, 44.054939, 26.095745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.816681, 44.256687, 26.209831>,  <36.920517, 44.592934, 26.399975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816681, 44.256687, 26.209831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218682, 0.428280, -0.876786,
		0.940632, -0.331561, 0.072650,
		-0.259594, -0.840621, -0.475361,
		36.738804, 44.004501, 26.067223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536118, 44.384121, 25.949934>,  <36.920517, 44.592934, 26.399975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536118, 44.384121, 25.949934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.223610, 44.213520, 25.767630>,  <37.036106, 44.111160, 25.658247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.223610, 44.213520, 25.767630>,  <37.536118, 44.384121, 25.949934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223610, 44.213520, 25.767630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304315, 0.377251, -0.874685,
		0.544993, -0.822057, -0.164941,
		-0.781265, -0.426503, -0.455763,
		36.989231, 44.085567, 25.630901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755314, 43.900177, 25.385271>,  <37.536118, 44.384121, 25.949934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755314, 43.900177, 25.385271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.385548, 43.983086, 25.257208>,  <37.163689, 44.032829, 25.180370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.385548, 43.983086, 25.257208>,  <37.755314, 43.900177, 25.385271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385548, 43.983086, 25.257208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348521, 0.118142, -0.929825,
		-0.154904, -0.971123, -0.181451,
		-0.924412, 0.207273, -0.320156,
		37.108223, 44.045269, 25.161161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750301, 43.572475, 24.629362>,  <37.755314, 43.900177, 25.385271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750301, 43.572475, 24.629362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.455299, 43.838169, 24.678169>,  <37.278297, 43.997585, 24.707453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.455299, 43.838169, 24.678169>,  <37.750301, 43.572475, 24.629362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455299, 43.838169, 24.678169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218954, 0.406086, -0.887217,
		-0.638867, -0.627607, -0.444925,
		-0.737502, 0.664231, 0.122018,
		37.234047, 44.037437, 24.714775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771782, 42.845768, 24.621275>,  <37.750301, 43.572475, 24.629362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771782, 42.845768, 24.621275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658779, 42.701378, 24.265774>,  <37.590977, 42.614742, 24.052473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658779, 42.701378, 24.265774>,  <37.771782, 42.845768, 24.621275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658779, 42.701378, 24.265774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474014, -0.752945, 0.456492,
		-0.833967, 0.550244, 0.041601,
		-0.282505, -0.360979, -0.888755,
		37.574028, 42.593082, 23.999147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081001, 42.932617, 24.592222>,  <37.771782, 42.845768, 24.621275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081001, 42.932617, 24.592222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162495, 42.636219, 24.336281>,  <37.211391, 42.458378, 24.182716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162495, 42.636219, 24.336281>,  <37.081001, 42.932617, 24.592222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162495, 42.636219, 24.336281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664766, -0.584505, 0.465230,
		-0.718733, 0.330570, -0.611675,
		0.203736, -0.740997, -0.639855,
		37.223614, 42.413921, 24.144323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558483, 42.687271, 24.500076>,  <37.081001, 42.932617, 24.592222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558483, 42.687271, 24.500076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792923, 42.393219, 24.363794>,  <36.933586, 42.216789, 24.282026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792923, 42.393219, 24.363794>,  <36.558483, 42.687271, 24.500076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792923, 42.393219, 24.363794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669872, -0.676191, 0.306653,
		-0.455810, 0.048500, -0.888754,
		0.586095, -0.735128, -0.340704,
		36.968750, 42.172680, 24.261583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153263, 42.198311, 24.020220>,  <36.558483, 42.687271, 24.500076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153263, 42.198311, 24.020220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.474792, 42.003029, 24.156176>,  <36.667709, 41.885860, 24.237749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.474792, 42.003029, 24.156176>,  <36.153263, 42.198311, 24.020220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474792, 42.003029, 24.156176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594868, -0.660697, 0.457833,
		0.001050, -0.570207, -0.821501,
		0.803823, -0.488204, 0.339891,
		36.715939, 41.856567, 24.258142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083202, 41.505630, 23.807676>,  <36.153263, 42.198311, 24.020220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083202, 41.505630, 23.807676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.316315, 41.508049, 24.132719>,  <36.456181, 41.509502, 24.327745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.316315, 41.508049, 24.132719>,  <36.083202, 41.505630, 23.807676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316315, 41.508049, 24.132719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651416, -0.594349, 0.471600,
		0.485826, -0.804184, -0.342433,
		0.582778, 0.006050, 0.812609,
		36.491150, 41.509865, 24.376501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044628, 40.768204, 23.926346>,  <36.083202, 41.505630, 23.807676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044628, 40.768204, 23.926346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.254692, 40.882931, 24.246832>,  <36.380730, 40.951767, 24.439123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.254692, 40.882931, 24.246832>,  <36.044628, 40.768204, 23.926346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254692, 40.882931, 24.246832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258259, -0.843378, 0.471186,
		0.810870, -0.454369, -0.368835,
		0.525159, 0.286815, 0.801214,
		36.412239, 40.968975, 24.487196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507774, 40.242294, 24.103361>,  <36.044628, 40.768204, 23.926346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507774, 40.242294, 24.103361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.425117, 40.454578, 24.432154>,  <36.375523, 40.581947, 24.629429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.425117, 40.454578, 24.432154>,  <36.507774, 40.242294, 24.103361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425117, 40.454578, 24.432154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287242, -0.835998, 0.467546,
		0.935304, -0.139494, 0.325190,
		-0.206638, 0.530706, 0.821981,
		36.363125, 40.613789, 24.678747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803349, 39.849384, 24.706625>,  <36.507774, 40.242294, 24.103361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803349, 39.849384, 24.706625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.534573, 40.095722, 24.871178>,  <36.373306, 40.243526, 24.969910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.534573, 40.095722, 24.871178>,  <36.803349, 39.849384, 24.706625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534573, 40.095722, 24.871178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395235, -0.767935, 0.504048,
		0.626331, 0.176096, 0.759408,
		-0.671937, 0.615845, 0.411382,
		36.332993, 40.280476, 24.994593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448994, 39.763416, 25.090313>,  <36.803349, 39.849384, 24.706625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448994, 39.763416, 25.090313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696373, 39.489925, 24.935373>,  <37.844799, 39.325832, 24.842409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696373, 39.489925, 24.935373>,  <37.448994, 39.763416, 25.090313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696373, 39.489925, 24.935373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216558, 0.622123, -0.752373,
		0.755397, 0.381420, 0.532818,
		0.618448, -0.683726, -0.387350,
		37.881908, 39.284809, 24.819168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072052, 40.150398, 24.871059>,  <37.448994, 39.763416, 25.090313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072052, 40.150398, 24.871059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.046543, 39.814739, 24.655001>,  <38.031239, 39.613342, 24.525366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.046543, 39.814739, 24.655001>,  <38.072052, 40.150398, 24.871059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046543, 39.814739, 24.655001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454439, 0.457458, -0.764341,
		0.888492, -0.294205, 0.352172,
		-0.063769, -0.839152, -0.540147,
		38.027412, 39.562992, 24.492956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588696, 40.185226, 24.497740>,  <38.072052, 40.150398, 24.871059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588696, 40.185226, 24.497740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.477005, 39.874161, 24.272434>,  <38.409992, 39.687519, 24.137251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.477005, 39.874161, 24.272434>,  <38.588696, 40.185226, 24.497740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477005, 39.874161, 24.272434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398320, 0.439940, -0.804857,
		0.873713, -0.449096, 0.186918,
		-0.279225, -0.777667, -0.563265,
		38.393238, 39.640862, 24.103455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201797, 39.985958, 24.176901>,  <38.588696, 40.185226, 24.497740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201797, 39.985958, 24.176901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.881451, 39.862595, 23.971575>,  <38.689243, 39.788578, 23.848379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.881451, 39.862595, 23.971575>,  <39.201797, 39.985958, 24.176901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881451, 39.862595, 23.971575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418946, 0.323937, -0.848263,
		0.427895, -0.894398, -0.130224,
		-0.800869, -0.308410, -0.513315,
		38.641190, 39.770073, 23.817581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503105, 39.727497, 23.559134>,  <39.201797, 39.985958, 24.176901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503105, 39.727497, 23.559134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118015, 39.785183, 23.467594>,  <38.886963, 39.819794, 23.412670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118015, 39.785183, 23.467594>,  <39.503105, 39.727497, 23.559134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118015, 39.785183, 23.467594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270313, 0.481417, -0.833768,
		-0.010069, -0.864546, -0.502453,
		-0.962720, 0.144215, -0.228850,
		38.829201, 39.828449, 23.398939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353992, 39.327354, 23.009417>,  <39.503105, 39.727497, 23.559134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353992, 39.327354, 23.009417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102669, 39.638527, 23.012407>,  <38.951874, 39.825230, 23.014202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102669, 39.638527, 23.012407>,  <39.353992, 39.327354, 23.009417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102669, 39.638527, 23.012407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376300, 0.312313, -0.872272,
		-0.680900, -0.545243, -0.488963,
		-0.628310, 0.777927, 0.007479,
		38.914177, 39.871906, 23.014650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255020, 39.409821, 22.324408>,  <39.353992, 39.327354, 23.009417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255020, 39.409821, 22.324408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096733, 39.749630, 22.463957>,  <39.001762, 39.953518, 22.547686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096733, 39.749630, 22.463957>,  <39.255020, 39.409821, 22.324408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096733, 39.749630, 22.463957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168340, 0.440544, -0.881806,
		-0.902811, -0.290218, -0.317341,
		-0.395718, 0.849526, 0.348873,
		38.978016, 40.004486, 22.568619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910278, 39.645283, 21.763567>,  <39.255020, 39.409821, 22.324408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910278, 39.645283, 21.763567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.897469, 39.969860, 21.996986>,  <38.889782, 40.164608, 22.137037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.897469, 39.969860, 21.996986>,  <38.910278, 39.645283, 21.763567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897469, 39.969860, 21.996986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120018, 0.582744, -0.803745,
		-0.992255, 0.044296, -0.116050,
		-0.032025, 0.811448, 0.583547,
		38.887859, 40.213295, 22.172050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327156, 39.324902, 22.082666>,  <38.910278, 39.645283, 21.763567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327156, 39.324902, 22.082666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.307331, 39.475204, 21.712509>,  <38.295437, 39.565388, 21.490416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.307331, 39.475204, 21.712509>,  <38.327156, 39.324902, 22.082666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307331, 39.475204, 21.712509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997553, 0.027115, 0.064434,
		0.049304, 0.926322, 0.373493,
		-0.049560, 0.375757, -0.925392,
		38.292461, 39.587933, 21.434891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.761665, 32.585163, 35.176201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993084, 32.844452, 35.374226>,  <34.131935, 33.000027, 35.493042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993084, 32.844452, 35.374226>,  <33.761665, 32.585163, 35.176201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993084, 32.844452, 35.374226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215994, 0.463532, -0.859351,
		-0.786529, 0.604108, 0.128164,
		0.578549, 0.648222, 0.495065,
		34.166649, 33.038918, 35.522747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554100, 33.383141, 34.974648>,  <33.761665, 32.585163, 35.176201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554100, 33.383141, 34.974648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922489, 33.299797, 35.106342>,  <34.143524, 33.249790, 35.185360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922489, 33.299797, 35.106342>,  <33.554100, 33.383141, 34.974648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922489, 33.299797, 35.106342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386541, 0.382522, -0.839203,
		0.048914, 0.900147, 0.432831,
		0.920974, -0.208356, 0.329234,
		34.198780, 33.237289, 35.205112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937180, 34.005375, 34.943073>,  <33.554100, 33.383141, 34.974648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937180, 34.005375, 34.943073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196949, 33.702179, 34.918728>,  <34.352810, 33.520260, 34.904121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196949, 33.702179, 34.918728>,  <33.937180, 34.005375, 34.943073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196949, 33.702179, 34.918728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227161, 0.269755, -0.935751,
		0.725708, 0.593870, 0.347371,
		0.649420, -0.757991, -0.060859,
		34.391773, 33.474781, 34.900471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664581, 34.312080, 34.726768>,  <33.937180, 34.005375, 34.943073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664581, 34.312080, 34.726768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690674, 33.922565, 34.639606>,  <34.706329, 33.688858, 34.587311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690674, 33.922565, 34.639606>,  <34.664581, 34.312080, 34.726768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690674, 33.922565, 34.639606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348496, 0.226853, -0.909444,
		0.935038, -0.016615, 0.354159,
		0.065231, -0.973787, -0.217906,
		34.710243, 33.630428, 34.574234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396118, 34.075279, 34.560009>,  <34.664581, 34.312080, 34.726768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396118, 34.075279, 34.560009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140945, 33.809898, 34.403614>,  <34.987843, 33.650669, 34.309776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140945, 33.809898, 34.403614>,  <35.396118, 34.075279, 34.560009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140945, 33.809898, 34.403614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339068, 0.213867, -0.916130,
		0.691427, -0.717003, 0.088522,
		-0.637936, -0.663452, -0.390986,
		34.949566, 33.610863, 34.286320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826046, 33.678898, 34.057205>,  <35.396118, 34.075279, 34.560009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826046, 33.678898, 34.057205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435764, 33.652714, 33.973572>,  <35.201595, 33.637001, 33.923393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435764, 33.652714, 33.973572>,  <35.826046, 33.678898, 34.057205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435764, 33.652714, 33.973572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202518, 0.094593, -0.974699,
		0.083559, -0.993363, -0.079043,
		-0.975707, -0.065437, -0.209078,
		35.143051, 33.633076, 33.910847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790035, 33.237667, 33.477528>,  <35.826046, 33.678898, 34.057205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790035, 33.237667, 33.477528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433598, 33.419189, 33.475735>,  <35.219734, 33.528103, 33.474659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433598, 33.419189, 33.475735>,  <35.790035, 33.237667, 33.477528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433598, 33.419189, 33.475735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024889, -0.058734, -0.997963,
		-0.453144, -0.889163, 0.063632,
		-0.891090, 0.453805, -0.004484,
		35.166271, 33.555332, 33.474388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329731, 32.867317, 33.013557>,  <35.790035, 33.237667, 33.477528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329731, 32.867317, 33.013557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179848, 33.238056, 33.004154>,  <35.089920, 33.460499, 32.998512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179848, 33.238056, 33.004154>,  <35.329731, 32.867317, 33.013557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179848, 33.238056, 33.004154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027749, -0.014133, -0.999515,
		-0.926729, -0.375174, -0.020424,
		-0.374704, 0.926847, -0.023508,
		35.067436, 33.516109, 32.997101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910511, 32.827400, 32.436935>,  <35.329731, 32.867317, 33.013557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910511, 32.827400, 32.436935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956173, 33.218414, 32.507805>,  <34.983570, 33.453022, 32.550327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956173, 33.218414, 32.507805>,  <34.910511, 32.827400, 32.436935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956173, 33.218414, 32.507805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027753, 0.175129, -0.984154,
		-0.993075, 0.117267, -0.007137,
		0.114159, 0.977537, 0.177171,
		34.990421, 33.511677, 32.560955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484413, 33.193485, 31.934662>,  <34.910511, 32.827400, 32.436935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484413, 33.193485, 31.934662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754002, 33.468990, 32.041519>,  <34.915756, 33.634293, 32.105633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754002, 33.468990, 32.041519>,  <34.484413, 33.193485, 31.934662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754002, 33.468990, 32.041519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092564, 0.437490, -0.894446,
		-0.732936, 0.578103, 0.358610,
		0.673971, 0.688766, 0.267141,
		34.956192, 33.675621, 32.121662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223801, 33.840046, 31.662764>,  <34.484413, 33.193485, 31.934662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223801, 33.840046, 31.662764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611053, 33.913116, 31.731289>,  <34.843407, 33.956959, 31.772404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611053, 33.913116, 31.731289>,  <34.223801, 33.840046, 31.662764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611053, 33.913116, 31.731289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059639, 0.496208, -0.866153,
		-0.243237, 0.848767, 0.469500,
		0.968132, 0.182681, 0.171316,
		34.901493, 33.967922, 31.782684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374981, 34.586189, 31.449322>,  <34.223801, 33.840046, 31.662764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374981, 34.586189, 31.449322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733543, 34.409157, 31.458893>,  <34.948681, 34.302937, 31.464636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733543, 34.409157, 31.458893>,  <34.374981, 34.586189, 31.449322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733543, 34.409157, 31.458893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250109, 0.460537, -0.851676,
		0.365914, 0.769435, 0.523522,
		0.896411, -0.442578, 0.023926,
		35.002468, 34.276382, 31.466070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184231, 35.131023, 31.802553>,  <34.374981, 34.586189, 31.449322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184231, 35.131023, 31.802553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.834671, 35.299538, 31.705549>,  <33.624935, 35.400646, 31.647346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.834671, 35.299538, 31.705549>,  <34.184231, 35.131023, 31.802553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834671, 35.299538, 31.705549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415889, -0.389711, 0.821682,
		0.251657, 0.818927, 0.515778,
		-0.873902, 0.421289, -0.242510,
		33.572502, 35.425922, 31.632797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966827, 35.419323, 32.480530>,  <34.184231, 35.131023, 31.802553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966827, 35.419323, 32.480530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640717, 35.407269, 32.249218>,  <33.445049, 35.400036, 32.110432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640717, 35.407269, 32.249218>,  <33.966827, 35.419323, 32.480530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640717, 35.407269, 32.249218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547172, -0.286764, 0.786364,
		-0.189531, 0.957527, 0.217302,
		-0.815280, -0.030139, -0.578283,
		33.396133, 35.398228, 32.075733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460690, 35.808540, 32.904942>,  <33.966827, 35.419323, 32.480530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460690, 35.808540, 32.904942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259808, 35.573708, 32.650970>,  <33.139278, 35.432808, 32.498589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259808, 35.573708, 32.650970>,  <33.460690, 35.808540, 32.904942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259808, 35.573708, 32.650970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697814, -0.158522, 0.698517,
		-0.510735, 0.793857, -0.330061,
		-0.502201, -0.587078, -0.634928,
		33.109146, 35.397583, 32.460491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711533, 36.013798, 33.030643>,  <33.460690, 35.808540, 32.904942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711533, 36.013798, 33.030643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732761, 35.657368, 32.850349>,  <32.745499, 35.443508, 32.742172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732761, 35.657368, 32.850349>,  <32.711533, 36.013798, 33.030643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732761, 35.657368, 32.850349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841747, -0.282764, 0.459898,
		-0.537257, 0.354997, -0.765070,
		0.053071, -0.891079, -0.450735,
		32.748684, 35.390045, 32.715130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012444, 35.723934, 32.826675>,  <32.711533, 36.013798, 33.030643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012444, 35.723934, 32.826675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203842, 35.374634, 32.789871>,  <32.318680, 35.165054, 32.767788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203842, 35.374634, 32.789871>,  <32.012444, 35.723934, 32.826675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203842, 35.374634, 32.789871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619933, -0.410172, 0.668911,
		-0.621871, -0.263030, -0.737626,
		0.478497, -0.873255, -0.092013,
		32.347393, 35.112656, 32.762268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478018, 35.251881, 32.690788>,  <32.012444, 35.723934, 32.826675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478018, 35.251881, 32.690788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774794, 35.029907, 32.841293>,  <31.952860, 34.896721, 32.931595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774794, 35.029907, 32.841293>,  <31.478018, 35.251881, 32.690788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774794, 35.029907, 32.841293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622576, -0.361944, 0.693828,
		-0.248843, -0.749030, -0.614029,
		0.741941, -0.554933, 0.376261,
		31.997375, 34.863426, 32.954170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355314, 34.475887, 32.679134>,  <31.478018, 35.251881, 32.690788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355314, 34.475887, 32.679134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.625889, 34.491837, 32.973301>,  <31.788235, 34.501408, 33.149803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.625889, 34.491837, 32.973301>,  <31.355314, 34.475887, 32.679134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625889, 34.491837, 32.973301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662636, -0.402899, 0.631337,
		0.321475, -0.914375, -0.246112,
		0.676437, 0.039876, 0.735420,
		31.828819, 34.503799, 33.193928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233372, 33.833267, 32.977081>,  <31.355314, 34.475887, 32.679134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233372, 33.833267, 32.977081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437998, 34.066708, 33.229340>,  <31.560774, 34.206772, 33.380695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437998, 34.066708, 33.229340>,  <31.233372, 33.833267, 32.977081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437998, 34.066708, 33.229340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459410, -0.434461, 0.774717,
		0.726114, -0.686043, 0.045855,
		0.511567, 0.583599, 0.630643,
		31.591469, 34.241787, 33.418533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210712, 33.400295, 33.534515>,  <31.233372, 33.833267, 32.977081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210712, 33.400295, 33.534515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296387, 33.764534, 33.675903>,  <31.347792, 33.983078, 33.760738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296387, 33.764534, 33.675903>,  <31.210712, 33.400295, 33.534515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296387, 33.764534, 33.675903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558967, -0.182502, 0.808856,
		0.801050, -0.370824, 0.469903,
		0.214185, 0.910595, 0.353471,
		31.360641, 34.037712, 33.781944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498899, 33.351231, 34.186195>,  <31.210712, 33.400295, 33.534515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498899, 33.351231, 34.186195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328064, 33.712421, 34.167309>,  <31.225563, 33.929134, 34.155979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328064, 33.712421, 34.167309>,  <31.498899, 33.351231, 34.186195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328064, 33.712421, 34.167309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416373, -0.150049, 0.896727,
		0.802638, 0.402642, 0.440059,
		-0.427091, 0.902975, -0.047214,
		31.199936, 33.983315, 34.153145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600616, 33.485771, 34.914783>,  <31.498899, 33.351231, 34.186195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600616, 33.485771, 34.914783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352217, 33.758881, 34.760807>,  <31.203176, 33.922745, 34.668423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352217, 33.758881, 34.760807>,  <31.600616, 33.485771, 34.914783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352217, 33.758881, 34.760807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573548, -0.061102, 0.816890,
		0.534229, 0.728073, 0.429547,
		-0.621001, 0.682772, -0.384942,
		31.165916, 33.963711, 34.645325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439123, 33.953354, 35.496254>,  <31.600616, 33.485771, 34.914783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439123, 33.953354, 35.496254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138176, 34.009190, 35.238739>,  <30.957607, 34.042690, 35.084232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138176, 34.009190, 35.238739>,  <31.439123, 33.953354, 35.496254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138176, 34.009190, 35.238739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634501, 0.109133, 0.765179,
		0.177067, 0.984178, 0.006461,
		-0.752366, 0.139587, -0.643786,
		30.912466, 34.051067, 35.045605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124250, 34.448383, 35.773129>,  <31.439123, 33.953354, 35.496254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124250, 34.448383, 35.773129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.831766, 34.297173, 35.545998>,  <30.656275, 34.206448, 35.409718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.831766, 34.297173, 35.545998>,  <31.124250, 34.448383, 35.773129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831766, 34.297173, 35.545998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659129, 0.177111, 0.730877,
		-0.175720, 0.908697, -0.378672,
		-0.731213, -0.378023, -0.567826,
		30.612402, 34.183765, 35.375648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516314, 34.995308, 35.591587>,  <31.124250, 34.448383, 35.773129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516314, 34.995308, 35.591587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.366467, 34.624603, 35.580494>,  <30.276558, 34.402180, 35.573837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.366467, 34.624603, 35.580494>,  <30.516314, 34.995308, 35.591587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366467, 34.624603, 35.580494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704753, 0.265185, 0.658028,
		-0.602484, 0.266051, -0.752483,
		-0.374616, -0.926765, -0.027730,
		30.254082, 34.346573, 35.572174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818863, 35.070427, 35.361599>,  <30.516314, 34.995308, 35.591587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818863, 35.070427, 35.361599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.903055, 34.774799, 35.617558>,  <29.953571, 34.597424, 35.771133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.903055, 34.774799, 35.617558>,  <29.818863, 35.070427, 35.361599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903055, 34.774799, 35.617558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754912, 0.293009, 0.586731,
		-0.621132, -0.606565, -0.496260,
		0.210482, -0.739070, 0.639900,
		29.966200, 34.553078, 35.809528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703264, 35.556694, 34.851719>,  <29.818863, 35.070427, 35.361599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703264, 35.556694, 34.851719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720661, 35.820801, 35.151627>,  <29.731100, 35.979263, 35.331573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720661, 35.820801, 35.151627>,  <29.703264, 35.556694, 34.851719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720661, 35.820801, 35.151627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125835, 0.748125, -0.651517,
		-0.991097, -0.066010, 0.115623,
		0.043494, 0.660267, 0.749771,
		29.733709, 36.018879, 35.376556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402391, 36.209957, 34.569920>,  <29.703264, 35.556694, 34.851719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402391, 36.209957, 34.569920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621035, 36.299732, 34.892620>,  <29.752220, 36.353596, 35.086239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621035, 36.299732, 34.892620>,  <29.402391, 36.209957, 34.569920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621035, 36.299732, 34.892620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104977, 0.937447, -0.331923,
		-0.830782, 0.266122, 0.488856,
		0.546608, 0.224438, 0.806751,
		29.785017, 36.367062, 35.134644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123495, 36.852741, 34.968578>,  <29.402391, 36.209957, 34.569920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123495, 36.852741, 34.968578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.514511, 36.790653, 35.025604>,  <29.749121, 36.753399, 35.059822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.514511, 36.790653, 35.025604>,  <29.123495, 36.852741, 34.968578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514511, 36.790653, 35.025604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207105, 0.832891, -0.513226,
		-0.039079, 0.531224, 0.846330,
		0.977538, -0.155223, 0.142568,
		29.807772, 36.744087, 35.068375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426205, 37.447258, 35.138748>,  <29.123495, 36.852741, 34.968578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426205, 37.447258, 35.138748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.771122, 37.263279, 35.053989>,  <29.978071, 37.152889, 35.003136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.771122, 37.263279, 35.053989>,  <29.426205, 37.447258, 35.138748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771122, 37.263279, 35.053989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356071, 0.848198, -0.392140,
		0.360094, 0.262689, 0.895169,
		0.862291, -0.459951, -0.211895,
		30.029810, 37.125294, 34.990421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881519, 37.892803, 35.292454>,  <29.426205, 37.447258, 35.138748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881519, 37.892803, 35.292454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.098215, 37.654716, 35.055054>,  <30.228233, 37.511864, 34.912613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.098215, 37.654716, 35.055054>,  <29.881519, 37.892803, 35.292454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098215, 37.654716, 35.055054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479401, 0.798779, -0.363493,
		0.690429, -0.087605, 0.718076,
		0.541740, -0.595212, -0.593498,
		30.260736, 37.476154, 34.877003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607479, 38.079178, 35.376194>,  <29.881519, 37.892803, 35.292454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607479, 38.079178, 35.376194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.583727, 37.897041, 35.020863>,  <30.569475, 37.787758, 34.807663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.583727, 37.897041, 35.020863>,  <30.607479, 38.079178, 35.376194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583727, 37.897041, 35.020863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536740, 0.735752, -0.413011,
		0.841655, -0.501328, 0.200714,
		-0.059379, -0.455344, -0.888333,
		30.565914, 37.760437, 34.754364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362635, 38.035503, 35.031044>,  <30.607479, 38.079178, 35.376194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362635, 38.035503, 35.031044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113792, 37.985661, 34.721863>,  <30.964487, 37.955753, 34.536354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113792, 37.985661, 34.721863>,  <31.362635, 38.035503, 35.031044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113792, 37.985661, 34.721863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411320, 0.788020, -0.458084,
		0.666183, -0.602908, -0.438978,
		-0.622106, -0.124607, -0.772954,
		30.927160, 37.948277, 34.489975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817884, 37.869186, 34.338169>,  <31.362635, 38.035503, 35.031044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817884, 37.869186, 34.338169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.465277, 38.030941, 34.240688>,  <31.253712, 38.127995, 34.182201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.465277, 38.030941, 34.240688>,  <31.817884, 37.869186, 34.338169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465277, 38.030941, 34.240688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468321, 0.683348, -0.560100,
		-0.059968, -0.607869, -0.791770,
		-0.881521, 0.404390, -0.243699,
		31.200821, 38.152260, 34.167580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925627, 38.067863, 33.707199>,  <31.817884, 37.869186, 34.338169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925627, 38.067863, 33.707199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572351, 38.250816, 33.748730>,  <31.360386, 38.360588, 33.773647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572351, 38.250816, 33.748730>,  <31.925627, 38.067863, 33.707199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572351, 38.250816, 33.748730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269978, 0.676781, -0.684893,
		-0.383525, -0.576859, -0.721209,
		-0.883187, 0.457384, 0.103823,
		31.307396, 38.388031, 33.779877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755575, 38.155231, 32.987103>,  <31.925627, 38.067863, 33.707199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755575, 38.155231, 32.987103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.562338, 38.412006, 33.225273>,  <31.446396, 38.566071, 33.368176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.562338, 38.412006, 33.225273>,  <31.755575, 38.155231, 32.987103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562338, 38.412006, 33.225273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207019, 0.744507, -0.634706,
		-0.850743, -0.183358, -0.492561,
		-0.483094, 0.641941, 0.595426,
		31.417410, 38.604588, 33.403900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417685, 38.477848, 32.524113>,  <31.755575, 38.155231, 32.987103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417685, 38.477848, 32.524113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437332, 38.723412, 32.839249>,  <31.449120, 38.870750, 33.028332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.437332, 38.723412, 32.839249>,  <31.417685, 38.477848, 32.524113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437332, 38.723412, 32.839249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305594, 0.741731, -0.597032,
		-0.950894, 0.270085, -0.151177,
		0.049117, 0.613913, 0.787844,
		31.452066, 38.907585, 33.075603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039629, 39.218239, 32.276325>,  <31.417685, 38.477848, 32.524113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039629, 39.218239, 32.276325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.255795, 39.270645, 32.608780>,  <31.385494, 39.302090, 32.808254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.255795, 39.270645, 32.608780>,  <31.039629, 39.218239, 32.276325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255795, 39.270645, 32.608780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470272, 0.772079, -0.427480,
		-0.697709, 0.621876, 0.355629,
		0.540413, 0.131014, 0.831137,
		31.417919, 39.309948, 32.858120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044491, 39.977779, 32.363731>,  <31.039629, 39.218239, 32.276325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044491, 39.977779, 32.363731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347528, 39.814621, 32.567566>,  <31.529350, 39.716724, 32.689865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347528, 39.814621, 32.567566>,  <31.044491, 39.977779, 32.363731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347528, 39.814621, 32.567566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587890, 0.765622, -0.261168,
		-0.283617, 0.497437, 0.819828,
		0.757592, -0.407897, 0.509582,
		31.574806, 39.692253, 32.720440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384689, 40.520138, 32.569267>,  <31.044491, 39.977779, 32.363731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384689, 40.520138, 32.569267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649387, 40.221939, 32.601086>,  <31.808207, 40.043018, 32.620178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649387, 40.221939, 32.601086>,  <31.384689, 40.520138, 32.569267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649387, 40.221939, 32.601086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725063, 0.609366, -0.320868,
		0.190731, 0.270012, 0.943777,
		0.661744, -0.745498, 0.079551,
		31.847910, 39.998291, 32.624950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906580, 40.796524, 32.978195>,  <31.384689, 40.520138, 32.569267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906580, 40.796524, 32.978195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075451, 40.499447, 32.770283>,  <32.176773, 40.321201, 32.645535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075451, 40.499447, 32.770283>,  <31.906580, 40.796524, 32.978195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075451, 40.499447, 32.770283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605169, 0.657812, -0.448390,
		0.674934, -0.125255, 0.727169,
		0.422177, -0.742694, -0.519781,
		32.202103, 40.276638, 32.614349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628429, 40.962547, 32.918770>,  <31.906580, 40.796524, 32.978195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628429, 40.962547, 32.918770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592381, 40.676868, 32.641121>,  <32.570751, 40.505463, 32.474533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592381, 40.676868, 32.641121>,  <32.628429, 40.962547, 32.918770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592381, 40.676868, 32.641121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716637, 0.437480, -0.543178,
		0.691599, -0.546381, 0.472396,
		-0.090119, -0.714198, -0.694118,
		32.565346, 40.462608, 32.432884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223701, 40.666443, 32.863651>,  <32.628429, 40.962547, 32.918770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223701, 40.666443, 32.863651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033020, 40.609749, 32.516624>,  <32.918610, 40.575733, 32.308411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033020, 40.609749, 32.516624>,  <33.223701, 40.666443, 32.863651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033020, 40.609749, 32.516624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810486, 0.311288, -0.496197,
		0.340389, -0.939687, -0.033519,
		-0.476704, -0.141733, -0.867563,
		32.890007, 40.567230, 32.256355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805164, 40.479454, 32.387833>,  <33.223701, 40.666443, 32.863651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805164, 40.479454, 32.387833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497341, 40.618137, 32.173328>,  <33.312649, 40.701347, 32.044624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497341, 40.618137, 32.173328>,  <33.805164, 40.479454, 32.387833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497341, 40.618137, 32.173328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636682, 0.481321, -0.602468,
		0.049231, -0.805060, -0.591148,
		-0.769554, 0.346713, -0.536262,
		33.266476, 40.722153, 32.012451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121632, 40.384106, 31.739016>,  <33.805164, 40.479454, 32.387833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121632, 40.384106, 31.739016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794273, 40.609806, 31.695486>,  <33.597858, 40.745228, 31.669369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794273, 40.609806, 31.695486>,  <34.121632, 40.384106, 31.739016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794273, 40.609806, 31.695486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386594, 0.400499, -0.830750,
		-0.425168, -0.721956, -0.545905,
		-0.818399, 0.564252, -0.108824,
		33.548752, 40.779083, 31.662838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978848, 40.471813, 31.070484>,  <34.121632, 40.384106, 31.739016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978848, 40.471813, 31.070484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799099, 40.786995, 31.238863>,  <33.691250, 40.976105, 31.339890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799099, 40.786995, 31.238863>,  <33.978848, 40.471813, 31.070484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799099, 40.786995, 31.238863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296681, 0.576091, -0.761643,
		-0.842640, -0.217376, -0.492651,
		-0.449375, 0.787951, 0.420946,
		33.664288, 41.023380, 31.365147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584061, 40.786057, 30.611336>,  <33.978848, 40.471813, 31.070484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584061, 40.786057, 30.611336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661716, 41.093231, 30.855494>,  <33.708309, 41.277538, 31.001987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661716, 41.093231, 30.855494>,  <33.584061, 40.786057, 30.611336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661716, 41.093231, 30.855494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489515, 0.463385, -0.738680,
		-0.850109, 0.442201, -0.285959,
		0.194136, 0.767940, 0.610392,
		33.719959, 41.323612, 31.038610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549667, 41.247501, 30.207880>,  <33.584061, 40.786057, 30.611336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549667, 41.247501, 30.207880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755043, 41.411316, 30.509518>,  <33.878269, 41.509605, 30.690500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755043, 41.411316, 30.509518>,  <33.549667, 41.247501, 30.207880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755043, 41.411316, 30.509518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532256, 0.537321, -0.654210,
		-0.673113, 0.737269, 0.057905,
		0.513442, 0.409537, 0.754093,
		33.909077, 41.534176, 30.735746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683964, 41.862904, 29.983147>,  <33.549667, 41.247501, 30.207880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683964, 41.862904, 29.983147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926468, 41.882656, 30.300640>,  <34.071972, 41.894508, 30.491137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926468, 41.882656, 30.300640>,  <33.683964, 41.862904, 29.983147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926468, 41.882656, 30.300640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715324, 0.402263, -0.571399,
		-0.347506, 0.914191, 0.208552,
		0.606261, 0.049382, 0.793731,
		34.108345, 41.897472, 30.538759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969906, 42.564522, 29.881823>,  <33.683964, 41.862904, 29.983147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969906, 42.564522, 29.881823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217064, 42.361908, 30.122364>,  <34.365360, 42.240341, 30.266689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217064, 42.361908, 30.122364>,  <33.969906, 42.564522, 29.881823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217064, 42.361908, 30.122364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763861, 0.205476, -0.611797,
		0.186331, 0.837379, 0.513884,
		0.617897, -0.506533, 0.601355,
		34.402431, 42.209949, 30.302771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599133, 43.012043, 30.017097>,  <33.969906, 42.564522, 29.881823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599133, 43.012043, 30.017097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695759, 42.625465, 30.052059>,  <34.753735, 42.393520, 30.073036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695759, 42.625465, 30.052059>,  <34.599133, 43.012043, 30.017097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695759, 42.625465, 30.052059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770071, 0.136112, -0.623268,
		0.590456, 0.217865, 0.777108,
		0.241562, -0.966441, 0.087403,
		34.768227, 42.335533, 30.078279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289982, 43.001324, 30.184412>,  <34.599133, 43.012043, 30.017097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289982, 43.001324, 30.184412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257664, 42.630375, 30.038286>,  <35.238274, 42.407806, 29.950611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257664, 42.630375, 30.038286>,  <35.289982, 43.001324, 30.184412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257664, 42.630375, 30.038286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825679, 0.143031, -0.545708,
		0.558325, -0.345724, 0.754154,
		-0.080797, -0.927371, -0.365315,
		35.233425, 42.352165, 29.928692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857834, 42.622631, 30.299068>,  <35.289982, 43.001324, 30.184412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857834, 42.622631, 30.299068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.696316, 42.465874, 29.968403>,  <35.599403, 42.371819, 29.770004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.696316, 42.465874, 29.968403>,  <35.857834, 42.622631, 30.299068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696316, 42.465874, 29.968403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834573, 0.212350, -0.508326,
		0.374752, -0.895168, 0.241318,
		-0.403794, -0.391894, -0.826662,
		35.575176, 42.348305, 29.720404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139469, 42.036076, 30.370258>,  <35.857834, 42.622631, 30.299068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139469, 42.036076, 30.370258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477959, 41.979553, 30.575758>,  <36.681053, 41.945641, 30.699059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477959, 41.979553, 30.575758>,  <36.139469, 42.036076, 30.370258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477959, 41.979553, 30.575758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505086, -0.519799, 0.688982,
		0.169691, -0.842521, -0.511237,
		0.846223, -0.141304, 0.513751,
		36.731827, 41.937160, 30.729883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927952, 41.417114, 30.672623>,  <36.139469, 42.036076, 30.370258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927952, 41.417114, 30.672623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207714, 41.567562, 30.915722>,  <36.375572, 41.657833, 31.061583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207714, 41.567562, 30.915722>,  <35.927952, 41.417114, 30.672623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207714, 41.567562, 30.915722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497625, -0.354104, 0.791821,
		0.513028, -0.856238, -0.060496,
		0.699409, 0.376122, 0.607750,
		36.417538, 41.680397, 31.098047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193607, 40.807869, 31.050589>,  <35.927952, 41.417114, 30.672623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193607, 40.807869, 31.050589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279236, 41.136528, 31.261898>,  <36.330612, 41.333725, 31.388683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279236, 41.136528, 31.261898>,  <36.193607, 40.807869, 31.050589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279236, 41.136528, 31.261898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415780, -0.412729, 0.810421,
		0.883913, -0.393130, 0.253273,
		0.214068, 0.821647, 0.528272,
		36.343456, 41.383022, 31.420380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478428, 40.563091, 31.689594>,  <36.193607, 40.807869, 31.050589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478428, 40.563091, 31.689594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.344715, 40.930115, 31.775698>,  <36.264488, 41.150330, 31.827360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.344715, 40.930115, 31.775698>,  <36.478428, 40.563091, 31.689594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344715, 40.930115, 31.775698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146065, -0.276075, 0.949972,
		0.931084, 0.286121, 0.226311,
		-0.334286, 0.917560, 0.215257,
		36.244431, 41.205383, 31.840275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792652, 40.632236, 32.239422>,  <36.478428, 40.563091, 31.689594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792652, 40.632236, 32.239422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493462, 40.896824, 32.261307>,  <36.313950, 41.055576, 32.274437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493462, 40.896824, 32.261307>,  <36.792652, 40.632236, 32.239422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493462, 40.896824, 32.261307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154318, -0.253483, 0.954951,
		0.645540, 0.705836, 0.291675,
		-0.747973, 0.661470, 0.054710,
		36.269070, 41.095264, 32.277721>
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
