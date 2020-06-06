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
	<24.208281, 34.910099, 35.110493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.076832, 35.018356, 34.748550>,  <23.997963, 35.083309, 34.531384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.076832, 35.018356, 34.748550>,  <24.208281, 34.910099, 35.110493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.076832, 35.018356, 34.748550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564970, -0.711417, -0.417965,
		-0.756847, -0.648567, 0.080884,
		-0.328620, 0.270639, -0.904855,
		23.978247, 35.099548, 34.477093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733858, 34.332493, 35.277405>,  <24.208281, 34.910099, 35.110493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733858, 34.332493, 35.277405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074419, 34.509083, 35.164120>,  <25.278755, 34.615036, 35.096149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074419, 34.509083, 35.164120>,  <24.733858, 34.332493, 35.277405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074419, 34.509083, 35.164120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371476, -0.126330, 0.919808,
		0.370297, -0.888334, -0.271556,
		0.851403, 0.441478, -0.283215,
		25.329840, 34.641525, 35.079155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239393, 33.910946, 35.501450>,  <24.733858, 34.332493, 35.277405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239393, 33.910946, 35.501450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392321, 34.278385, 35.461441>,  <25.484077, 34.498848, 35.437435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392321, 34.278385, 35.461441>,  <25.239393, 33.910946, 35.501450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392321, 34.278385, 35.461441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524422, -0.126587, 0.841996,
		0.760798, -0.374362, -0.530132,
		0.382319, 0.918601, -0.100017,
		25.507017, 34.553967, 35.431435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768776, 34.175529, 34.975903>,  <25.239393, 33.910946, 35.501450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768776, 34.175529, 34.975903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148922, 34.147011, 35.097050>,  <26.377008, 34.129898, 35.169739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148922, 34.147011, 35.097050>,  <25.768776, 34.175529, 34.975903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148922, 34.147011, 35.097050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117000, 0.820058, 0.560193,
		-0.288307, -0.567822, 0.771011,
		0.950363, -0.071299, 0.302864,
		26.434031, 34.125622, 35.187908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779148, 34.304581, 35.795975>,  <25.768776, 34.175529, 34.975903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779148, 34.304581, 35.795975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122070, 34.394207, 35.610580>,  <26.327824, 34.447983, 35.499344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122070, 34.394207, 35.610580>,  <25.779148, 34.304581, 35.795975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122070, 34.394207, 35.610580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079666, 0.831722, 0.549447,
		0.508605, -0.507969, 0.695189,
		0.857306, 0.224069, -0.463486,
		26.379263, 34.461430, 35.471535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240089, 34.445015, 36.327080>,  <25.779148, 34.304581, 35.795975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240089, 34.445015, 36.327080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400391, 34.600353, 35.995155>,  <26.496572, 34.693558, 35.796001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400391, 34.600353, 35.995155>,  <26.240089, 34.445015, 36.327080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400391, 34.600353, 35.995155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193748, 0.849313, 0.491049,
		0.895466, -0.357563, 0.265123,
		0.400753, 0.388350, -0.829808,
		26.520617, 34.716858, 35.746212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812361, 34.687366, 36.587257>,  <26.240089, 34.445015, 36.327080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812361, 34.687366, 36.587257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738585, 34.884388, 36.247051>,  <26.694319, 35.002602, 36.042927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738585, 34.884388, 36.247051>,  <26.812361, 34.687366, 36.587257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738585, 34.884388, 36.247051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313160, 0.849708, 0.424177,
		0.931618, -0.188112, -0.310968,
		-0.184439, 0.492554, -0.850513,
		26.683252, 35.032154, 35.991898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395512, 35.122414, 36.559982>,  <26.812361, 34.687366, 36.587257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395512, 35.122414, 36.559982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108505, 35.291645, 36.338650>,  <26.936302, 35.393185, 36.205849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108505, 35.291645, 36.338650>,  <27.395512, 35.122414, 36.559982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108505, 35.291645, 36.338650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326091, 0.905996, 0.269882,
		0.615497, 0.013208, -0.788028,
		-0.717515, 0.423081, -0.553331,
		26.893251, 35.418568, 36.172649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752514, 35.596153, 36.219570>,  <27.395512, 35.122414, 36.559982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752514, 35.596153, 36.219570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369875, 35.708401, 36.188145>,  <27.140291, 35.775749, 36.169289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369875, 35.708401, 36.188145>,  <27.752514, 35.596153, 36.219570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369875, 35.708401, 36.188145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257178, 0.939755, 0.225210,
		0.137026, 0.195231, -0.971138,
		-0.956600, 0.280615, -0.078562,
		27.082895, 35.792583, 36.164577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805607, 36.190155, 36.026203>,  <27.752514, 35.596153, 36.219570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805607, 36.190155, 36.026203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436497, 36.169601, 36.178963>,  <27.215031, 36.157269, 36.270618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436497, 36.169601, 36.178963>,  <27.805607, 36.190155, 36.026203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436497, 36.169601, 36.178963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136186, 0.883626, 0.447949,
		-0.360472, 0.465366, -0.808390,
		-0.922775, -0.051381, 0.381899,
		27.159664, 36.154186, 36.293533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461241, 36.922070, 35.828358>,  <27.805607, 36.190155, 36.026203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461241, 36.922070, 35.828358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265406, 36.766285, 36.140415>,  <27.147903, 36.672813, 36.327648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265406, 36.766285, 36.140415>,  <27.461241, 36.922070, 35.828358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265406, 36.766285, 36.140415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019813, 0.889507, 0.456492,
		-0.871728, 0.238950, -0.427777,
		-0.489590, -0.389461, 0.780142,
		27.118528, 36.649448, 36.374458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243322, 37.453346, 36.013416>,  <27.461241, 36.922070, 35.828358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243322, 37.453346, 36.013416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159538, 37.231026, 36.335213>,  <27.109268, 37.097633, 36.528290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159538, 37.231026, 36.335213>,  <27.243322, 37.453346, 36.013416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159538, 37.231026, 36.335213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153597, 0.793827, 0.588428,
		-0.965678, 0.246821, -0.080907,
		-0.209462, -0.555804, 0.804492,
		27.096699, 37.064285, 36.576561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687857, 37.843929, 36.418594>,  <27.243322, 37.453346, 36.013416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687857, 37.843929, 36.418594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848816, 37.573296, 36.665272>,  <26.945391, 37.410915, 36.813278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848816, 37.573296, 36.665272>,  <26.687857, 37.843929, 36.418594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848816, 37.573296, 36.665272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192474, 0.721113, 0.665544,
		-0.895002, -0.149116, 0.420399,
		0.402399, -0.676579, 0.616697,
		26.969536, 37.370323, 36.850281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437069, 37.989830, 37.074753>,  <26.687857, 37.843929, 36.418594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437069, 37.989830, 37.074753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769636, 37.778320, 37.143040>,  <26.969175, 37.651413, 37.184013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769636, 37.778320, 37.143040>,  <26.437069, 37.989830, 37.074753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769636, 37.778320, 37.143040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333289, 0.720411, 0.608216,
		-0.444596, -0.448782, 0.775196,
		0.831416, -0.528775, 0.170717,
		27.019060, 37.619686, 37.194256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477423, 37.937912, 37.772110>,  <26.437069, 37.989830, 37.074753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477423, 37.937912, 37.772110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843901, 37.853806, 37.635651>,  <27.063787, 37.803341, 37.553776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843901, 37.853806, 37.635651>,  <26.477423, 37.937912, 37.772110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843901, 37.853806, 37.635651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399989, 0.531840, 0.746429,
		0.024489, -0.820327, 0.571370,
		0.916193, -0.210262, -0.341146,
		27.118759, 37.790726, 37.533306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846552, 37.787727, 38.331997>,  <26.477423, 37.937912, 37.772110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846552, 37.787727, 38.331997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137854, 37.875530, 38.072315>,  <27.312635, 37.928211, 37.916508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137854, 37.875530, 38.072315>,  <26.846552, 37.787727, 38.331997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137854, 37.875530, 38.072315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464358, 0.538640, 0.703021,
		0.504001, -0.813441, 0.290340,
		0.728255, 0.219502, -0.649203,
		27.356329, 37.941380, 37.877556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479755, 37.640076, 38.671577>,  <26.846552, 37.787727, 38.331997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479755, 37.640076, 38.671577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576134, 37.900211, 38.383408>,  <27.633961, 38.056293, 38.210506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576134, 37.900211, 38.383408>,  <27.479755, 37.640076, 38.671577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576134, 37.900211, 38.383408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601090, 0.482799, 0.636865,
		0.761996, -0.586486, -0.274584,
		0.240943, 0.650338, -0.720421,
		27.648417, 38.095314, 38.167282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259071, 37.759525, 38.606625>,  <27.479755, 37.640076, 38.671577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259071, 37.759525, 38.606625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098484, 38.080547, 38.430111>,  <28.002132, 38.273159, 38.324203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098484, 38.080547, 38.430111>,  <28.259071, 37.759525, 38.606625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098484, 38.080547, 38.430111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545783, 0.596561, 0.588418,
		0.735490, -0.004614, -0.677520,
		-0.401467, 0.802555, -0.441283,
		27.978045, 38.321312, 38.297726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789810, 38.163086, 38.460934>,  <28.259071, 37.759525, 38.606625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789810, 38.163086, 38.460934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476969, 38.412346, 38.461845>,  <28.289265, 38.561901, 38.462395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476969, 38.412346, 38.461845>,  <28.789810, 38.163086, 38.460934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476969, 38.412346, 38.461845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468975, 0.586183, 0.660646,
		0.410341, 0.517763, -0.750694,
		-0.782102, 0.623147, 0.002283,
		28.242338, 38.599289, 38.462532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110504, 38.761665, 38.388264>,  <28.789810, 38.163086, 38.460934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110504, 38.761665, 38.388264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757010, 38.888538, 38.525906>,  <28.544912, 38.964661, 38.608490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757010, 38.888538, 38.525906>,  <29.110504, 38.761665, 38.388264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757010, 38.888538, 38.525906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467987, 0.597681, 0.650973,
		0.000813, 0.736324, -0.676629,
		-0.883735, 0.317183, 0.344104,
		28.491890, 38.983692, 38.629135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232573, 39.495502, 38.403896>,  <29.110504, 38.761665, 38.388264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232573, 39.495502, 38.403896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897211, 39.446590, 38.616360>,  <28.695995, 39.417244, 38.743839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897211, 39.446590, 38.616360>,  <29.232573, 39.495502, 38.403896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897211, 39.446590, 38.616360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238439, 0.794034, 0.559158,
		-0.490131, 0.595448, -0.636563,
		-0.838402, -0.122280, 0.531159,
		28.645691, 39.409908, 38.775707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045492, 40.118546, 38.547935>,  <29.232573, 39.495502, 38.403896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045492, 40.118546, 38.547935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884630, 39.890591, 38.834572>,  <28.788113, 39.753819, 39.006554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884630, 39.890591, 38.834572>,  <29.045492, 40.118546, 38.547935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884630, 39.890591, 38.834572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163924, 0.725208, 0.668732,
		-0.900779, 0.386399, -0.198227,
		-0.402153, -0.569885, 0.716592,
		28.763985, 39.719624, 39.049549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479296, 40.434505, 38.893784>,  <29.045492, 40.118546, 38.547935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479296, 40.434505, 38.893784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679941, 40.191753, 39.140388>,  <28.800327, 40.046104, 39.288349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679941, 40.191753, 39.140388>,  <28.479296, 40.434505, 38.893784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679941, 40.191753, 39.140388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183045, 0.770972, 0.609997,
		-0.845505, -0.193133, 0.497815,
		0.501612, -0.606879, 0.616509,
		28.830425, 40.009689, 39.325340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284422, 40.720169, 39.543793>,  <28.479296, 40.434505, 38.893784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284422, 40.720169, 39.543793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595184, 40.480789, 39.622044>,  <28.781641, 40.337162, 39.668995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595184, 40.480789, 39.622044>,  <28.284422, 40.720169, 39.543793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595184, 40.480789, 39.622044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237912, 0.566717, 0.788816,
		-0.582937, -0.566292, 0.582665,
		0.776906, -0.598453, 0.195632,
		28.828257, 40.301254, 39.680733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439802, 40.549141, 40.324104>,  <28.284422, 40.720169, 39.543793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439802, 40.549141, 40.324104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788414, 40.566044, 40.128696>,  <28.997581, 40.576187, 40.011452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788414, 40.566044, 40.128696>,  <28.439802, 40.549141, 40.324104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788414, 40.566044, 40.128696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353791, 0.635625, 0.686158,
		0.339509, -0.770840, 0.539016,
		0.871530, 0.042258, -0.488517,
		29.049873, 40.578720, 39.982140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810493, 40.974697, 40.656460>,  <28.439802, 40.549141, 40.324104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810493, 40.974697, 40.656460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096182, 40.898438, 40.387077>,  <29.267595, 40.852680, 40.225449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096182, 40.898438, 40.387077>,  <28.810493, 40.974697, 40.656460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096182, 40.898438, 40.387077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584468, 0.691826, 0.423998,
		0.385078, -0.696441, 0.605545,
		0.714221, -0.190649, -0.673454,
		29.310448, 40.841244, 40.185040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424934, 40.788708, 40.996117>,  <28.810493, 40.974697, 40.656460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424934, 40.788708, 40.996117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486856, 40.959080, 40.639549>,  <29.524010, 41.061302, 40.425610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486856, 40.959080, 40.639549>,  <29.424934, 40.788708, 40.996117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486856, 40.959080, 40.639549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536520, 0.721401, 0.437865,
		0.829567, -0.546046, -0.116843,
		0.154804, 0.425927, -0.891416,
		29.533297, 41.086857, 40.372124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071964, 41.084198, 40.869446>,  <29.424934, 40.788708, 40.996117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071964, 41.084198, 40.869446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854034, 41.276714, 40.594776>,  <29.723276, 41.392223, 40.429974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854034, 41.276714, 40.594776>,  <30.071964, 41.084198, 40.869446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854034, 41.276714, 40.594776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630035, 0.775344, 0.043557,
		0.553371, -0.408897, -0.725661,
		-0.544827, 0.481295, -0.686673,
		29.690586, 41.421104, 40.388775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516199, 41.316463, 40.184422>,  <30.071964, 41.084198, 40.869446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516199, 41.316463, 40.184422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201765, 41.528667, 40.311310>,  <30.013103, 41.655991, 40.387444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201765, 41.528667, 40.311310>,  <30.516199, 41.316463, 40.184422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201765, 41.528667, 40.311310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583918, 0.805681, 0.099586,
		-0.202748, 0.263515, -0.943108,
		-0.786087, 0.530507, 0.317222,
		29.965939, 41.687820, 40.406475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383072, 42.070354, 39.934185>,  <30.516199, 41.316463, 40.184422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383072, 42.070354, 39.934185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234861, 42.048939, 40.305096>,  <30.145935, 42.036091, 40.527641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234861, 42.048939, 40.305096>,  <30.383072, 42.070354, 39.934185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234861, 42.048939, 40.305096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541129, 0.798968, 0.262355,
		-0.754912, 0.598986, -0.267066,
		-0.370524, -0.053538, 0.927279,
		30.123705, 42.032879, 40.583279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043844, 42.246143, 40.316860>,  <30.383072, 42.070354, 39.934185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043844, 42.246143, 40.316860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361313, 42.391781, 40.121914>,  <31.551794, 42.479164, 40.004948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361313, 42.391781, 40.121914>,  <31.043844, 42.246143, 40.316860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361313, 42.391781, 40.121914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305988, -0.453488, -0.837090,
		-0.525791, 0.813502, -0.248513,
		0.793672, 0.364092, -0.487362,
		31.599415, 42.501007, 39.975704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816444, 42.577412, 39.670395>,  <31.043844, 42.246143, 40.316860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816444, 42.577412, 39.670395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189711, 42.433754, 39.664463>,  <31.413670, 42.347561, 39.660904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189711, 42.433754, 39.664463>,  <30.816444, 42.577412, 39.670395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189711, 42.433754, 39.664463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209765, -0.510600, -0.833838,
		0.291895, 0.781219, -0.551809,
		0.933165, -0.359143, -0.014830,
		31.469660, 42.326012, 39.660015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241648, 42.753757, 38.977791>,  <30.816444, 42.577412, 39.670395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241648, 42.753757, 38.977791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299345, 42.402203, 39.159672>,  <31.333963, 42.191269, 39.268799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299345, 42.402203, 39.159672>,  <31.241648, 42.753757, 38.977791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299345, 42.402203, 39.159672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237330, -0.476823, -0.846353,
		0.960660, 0.014167, -0.277365,
		0.144244, -0.878885, 0.454703,
		31.342619, 42.138538, 39.296082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763741, 42.490231, 38.682652>,  <31.241648, 42.753757, 38.977791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763741, 42.490231, 38.682652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529200, 42.205723, 38.837719>,  <31.388475, 42.035019, 38.930759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529200, 42.205723, 38.837719>,  <31.763741, 42.490231, 38.682652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529200, 42.205723, 38.837719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046776, -0.448042, -0.892788,
		0.808704, -0.541622, 0.229440,
		-0.586353, -0.711269, 0.387669,
		31.353294, 41.992344, 38.954018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921541, 41.879639, 38.308193>,  <31.763741, 42.490231, 38.682652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921541, 41.879639, 38.308193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565577, 41.836250, 38.485413>,  <31.351997, 41.810219, 38.591743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565577, 41.836250, 38.485413>,  <31.921541, 41.879639, 38.308193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565577, 41.836250, 38.485413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306078, -0.578166, -0.756333,
		0.338194, -0.808677, 0.481317,
		-0.889911, -0.108467, 0.443050,
		31.298603, 41.803711, 38.618328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818369, 41.111031, 38.324791>,  <31.921541, 41.879639, 38.308193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818369, 41.111031, 38.324791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459274, 41.286861, 38.336422>,  <31.243818, 41.392361, 38.343403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459274, 41.286861, 38.336422>,  <31.818369, 41.111031, 38.324791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459274, 41.286861, 38.336422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320337, -0.606053, -0.728069,
		-0.302414, -0.662930, 0.684887,
		-0.897736, 0.439573, 0.029082,
		31.189953, 41.418732, 38.345146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228260, 40.568790, 38.470379>,  <31.818369, 41.111031, 38.324791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228260, 40.568790, 38.470379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066042, 40.864601, 38.255478>,  <30.968712, 41.042088, 38.126537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066042, 40.864601, 38.255478>,  <31.228260, 40.568790, 38.470379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066042, 40.864601, 38.255478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497831, -0.671630, -0.548706,
		-0.766615, 0.044937, 0.640532,
		-0.405543, 0.739523, -0.537252,
		30.944380, 41.086456, 38.094303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515354, 40.392033, 38.313332>,  <31.228260, 40.568790, 38.470379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515354, 40.392033, 38.313332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557198, 40.714504, 38.080391>,  <30.582304, 40.907986, 37.940624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557198, 40.714504, 38.080391>,  <30.515354, 40.392033, 38.313332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557198, 40.714504, 38.080391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706440, -0.351923, -0.614079,
		-0.699999, 0.475639, 0.532700,
		0.104611, 0.806175, -0.582356,
		30.588581, 40.956356, 37.905685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884687, 40.492542, 38.077705>,  <30.515354, 40.392033, 38.313332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884687, 40.492542, 38.077705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113564, 40.667381, 37.800133>,  <30.250889, 40.772285, 37.633591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113564, 40.667381, 37.800133>,  <29.884687, 40.492542, 38.077705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113564, 40.667381, 37.800133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572355, -0.393171, -0.719601,
		-0.587372, 0.808924, 0.025208,
		0.572192, 0.437101, -0.693930,
		30.285221, 40.798512, 37.591953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421528, 40.731453, 37.644279>,  <29.884687, 40.492542, 38.077705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421528, 40.731453, 37.644279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774574, 40.695503, 37.459709>,  <29.986403, 40.673935, 37.348969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774574, 40.695503, 37.459709>,  <29.421528, 40.731453, 37.644279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774574, 40.695503, 37.459709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426125, -0.567445, -0.704573,
		-0.198509, 0.818491, -0.539134,
		0.882616, -0.089875, -0.461423,
		30.039360, 40.668541, 37.321281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264309, 40.660690, 36.924839>,  <29.421528, 40.731453, 37.644279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264309, 40.660690, 36.924839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634953, 40.525066, 36.989872>,  <29.857340, 40.443691, 37.028893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634953, 40.525066, 36.989872>,  <29.264309, 40.660690, 36.924839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634953, 40.525066, 36.989872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196687, -0.805535, -0.558952,
		0.320482, 0.485954, -0.813106,
		0.926610, -0.339061, 0.162578,
		29.912935, 40.423347, 37.038647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422703, 40.247353, 36.190708>,  <29.264309, 40.660690, 36.924839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422703, 40.247353, 36.190708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722155, 40.132366, 36.429680>,  <29.901825, 40.063374, 36.573063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722155, 40.132366, 36.429680>,  <29.422703, 40.247353, 36.190708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722155, 40.132366, 36.429680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023873, -0.888838, -0.457600,
		0.662558, 0.356835, -0.658548,
		0.748630, -0.287465, 0.597425,
		29.946743, 40.046127, 36.608906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886532, 39.871635, 35.752010>,  <29.422703, 40.247353, 36.190708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886532, 39.871635, 35.752010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010244, 39.759392, 36.115459>,  <30.084473, 39.692047, 36.333530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010244, 39.759392, 36.115459>,  <29.886532, 39.871635, 35.752010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010244, 39.759392, 36.115459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023807, -0.952889, -0.302383,
		0.950673, 0.115153, -0.288030,
		0.309281, -0.280610, 0.908627,
		30.103029, 39.675209, 36.388046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575943, 39.472466, 35.634285>,  <29.886532, 39.871635, 35.752010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575943, 39.472466, 35.634285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384928, 39.362671, 35.968140>,  <30.270319, 39.296795, 36.168453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384928, 39.362671, 35.968140>,  <30.575943, 39.472466, 35.634285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384928, 39.362671, 35.968140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059763, -0.937598, -0.342546,
		0.876577, -0.213459, 0.431333,
		-0.477537, -0.274490, 0.834634,
		30.241667, 39.280323, 36.218529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777721, 38.770523, 35.669338>,  <30.575943, 39.472466, 35.634285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777721, 38.770523, 35.669338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494843, 38.765625, 35.952103>,  <30.325115, 38.762688, 36.121761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494843, 38.765625, 35.952103>,  <30.777721, 38.770523, 35.669338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494843, 38.765625, 35.952103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089046, -0.990346, -0.106233,
		0.701385, -0.138075, 0.699281,
		-0.707199, -0.012242, 0.706909,
		30.282682, 38.761951, 36.164177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910746, 38.318588, 36.248665>,  <30.777721, 38.770523, 35.669338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910746, 38.318588, 36.248665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513241, 38.354282, 36.221920>,  <30.274738, 38.375698, 36.205872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513241, 38.354282, 36.221920>,  <30.910746, 38.318588, 36.248665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513241, 38.354282, 36.221920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081426, -0.990409, -0.111620,
		-0.076183, -0.105479, 0.991499,
		-0.993763, 0.089237, -0.066864,
		30.215113, 38.381054, 36.201862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611063, 37.786362, 36.743996>,  <30.910746, 38.318588, 36.248665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611063, 37.786362, 36.743996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338167, 37.892860, 36.471626>,  <30.174429, 37.956760, 36.308205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338167, 37.892860, 36.471626>,  <30.611063, 37.786362, 36.743996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338167, 37.892860, 36.471626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294303, -0.952558, -0.077584,
		-0.669278, 0.147468, 0.728231,
		-0.682241, 0.266246, -0.680926,
		30.133495, 37.972733, 36.267349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252048, 37.219559, 36.825470>,  <30.611063, 37.786362, 36.743996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252048, 37.219559, 36.825470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064293, 37.388531, 36.515316>,  <29.951639, 37.489914, 36.329224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064293, 37.388531, 36.515316>,  <30.252048, 37.219559, 36.825470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064293, 37.388531, 36.515316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199153, -0.906157, -0.373118,
		-0.860238, -0.020718, 0.509471,
		-0.469391, 0.422433, -0.775385,
		29.923475, 37.515263, 36.282700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587862, 36.921738, 36.733250>,  <30.252048, 37.219559, 36.825470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587862, 36.921738, 36.733250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646065, 37.083229, 36.371956>,  <29.680986, 37.180122, 36.155178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646065, 37.083229, 36.371956>,  <29.587862, 36.921738, 36.733250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646065, 37.083229, 36.371956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297750, -0.852755, -0.429131,
		-0.943489, 0.331381, -0.003873,
		0.145509, 0.403727, -0.903234,
		29.689718, 37.204346, 36.100986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018158, 36.684273, 36.404194>,  <29.587862, 36.921738, 36.733250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018158, 36.684273, 36.404194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262491, 36.806377, 36.111973>,  <29.409090, 36.879639, 35.936642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262491, 36.806377, 36.111973>,  <29.018158, 36.684273, 36.404194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262491, 36.806377, 36.111973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392251, -0.684825, -0.614128,
		-0.687767, 0.661687, -0.298574,
		0.610832, 0.305261, -0.730548,
		29.445740, 36.897957, 35.892807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659403, 36.794243, 35.728615>,  <29.018158, 36.684273, 36.404194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659403, 36.794243, 35.728615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041193, 36.740005, 35.622337>,  <29.270267, 36.707462, 35.558571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041193, 36.740005, 35.622337>,  <28.659403, 36.794243, 35.728615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041193, 36.740005, 35.622337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288835, -0.642652, -0.709628,
		-0.074530, 0.754064, -0.652559,
		0.954474, -0.135593, -0.265697,
		29.327536, 36.699329, 35.542629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606018, 36.761780, 35.051258>,  <28.659403, 36.794243, 35.728615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606018, 36.761780, 35.051258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953974, 36.578209, 35.123566>,  <29.162746, 36.468067, 35.166950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953974, 36.578209, 35.123566>,  <28.606018, 36.761780, 35.051258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953974, 36.578209, 35.123566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231444, -0.703412, -0.672046,
		0.435576, 0.542767, -0.718107,
		0.869889, -0.458928, 0.180769,
		29.214941, 36.440529, 35.177795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003811, 36.547573, 34.344772>,  <28.606018, 36.761780, 35.051258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003811, 36.547573, 34.344772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139355, 36.313225, 34.639236>,  <29.220682, 36.172615, 34.815914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139355, 36.313225, 34.639236>,  <29.003811, 36.547573, 34.344772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139355, 36.313225, 34.639236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278696, -0.809843, -0.516220,
		0.898611, -0.030238, -0.437704,
		0.338862, -0.585867, 0.736161,
		29.241013, 36.137466, 34.860085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909304, 35.963039, 34.018803>,  <29.003811, 36.547573, 34.344772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909304, 35.963039, 34.018803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075504, 35.815521, 34.351391>,  <29.175224, 35.727009, 34.550945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075504, 35.815521, 34.351391>,  <28.909304, 35.963039, 34.018803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075504, 35.815521, 34.351391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035157, -0.919944, -0.390470,
		0.908913, 0.133009, -0.395204,
		0.415502, -0.368797, 0.831473,
		29.200155, 35.704884, 34.600834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687771, 35.607044, 33.954914>,  <28.909304, 35.963039, 34.018803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687771, 35.607044, 33.954914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473330, 35.440315, 34.248539>,  <29.344664, 35.340279, 34.424713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473330, 35.440315, 34.248539>,  <29.687771, 35.607044, 33.954914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473330, 35.440315, 34.248539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012426, -0.873392, -0.486859,
		0.844060, -0.251885, 0.473409,
		-0.536104, -0.416821, 0.734066,
		29.312498, 35.315269, 34.468758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928247, 34.984421, 34.118706>,  <29.687771, 35.607044, 33.954914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928247, 34.984421, 34.118706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553898, 34.955700, 34.256683>,  <29.329288, 34.938469, 34.339470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553898, 34.955700, 34.256683>,  <29.928247, 34.984421, 34.118706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553898, 34.955700, 34.256683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076453, -0.914306, -0.397742,
		0.343943, -0.398608, 0.850185,
		-0.935873, -0.071801, 0.344944,
		29.273136, 34.934158, 34.360168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891581, 34.376587, 34.686962>,  <29.928247, 34.984421, 34.118706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891581, 34.376587, 34.686962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571581, 34.467834, 34.464985>,  <29.379581, 34.522583, 34.331799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571581, 34.467834, 34.464985>,  <29.891581, 34.376587, 34.686962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571581, 34.467834, 34.464985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009904, -0.929800, -0.367932,
		-0.599922, -0.288848, 0.746097,
		-0.799997, 0.228119, -0.554946,
		29.331581, 34.536270, 34.298500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537172, 34.516048, 35.084778>,  <29.891581, 34.376587, 34.686962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537172, 34.516048, 35.084778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868805, 34.325539, 34.967625>,  <31.067785, 34.211231, 34.897335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868805, 34.325539, 34.967625>,  <30.537172, 34.516048, 35.084778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868805, 34.325539, 34.967625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385614, 0.107768, 0.916345,
		-0.404873, -0.872665, 0.273009,
		0.829084, -0.476279, -0.292879,
		31.117531, 34.182655, 34.879761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490103, 33.877663, 35.421593>,  <30.537172, 34.516048, 35.084778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490103, 33.877663, 35.421593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862431, 34.000141, 35.341774>,  <31.085827, 34.073627, 35.293884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862431, 34.000141, 35.341774>,  <30.490103, 33.877663, 35.421593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862431, 34.000141, 35.341774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212390, -0.008861, 0.977145,
		0.297432, -0.951926, -0.073282,
		0.930819, 0.306199, -0.199544,
		31.141676, 34.091999, 35.281910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740362, 33.257652, 35.074329>,  <30.490103, 33.877663, 35.421593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740362, 33.257652, 35.074329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085968, 33.458530, 35.060062>,  <31.293331, 33.579060, 35.051502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085968, 33.458530, 35.060062>,  <30.740362, 33.257652, 35.074329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085968, 33.458530, 35.060062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014329, -0.095335, -0.995342,
		-0.503260, 0.859481, -0.089567,
		0.864016, 0.502199, -0.035663,
		31.345173, 33.609192, 35.049362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697649, 33.742317, 34.558884>,  <30.740362, 33.257652, 35.074329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697649, 33.742317, 34.558884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085430, 33.652573, 34.598518>,  <31.318100, 33.598724, 34.622299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085430, 33.652573, 34.598518>,  <30.697649, 33.742317, 34.558884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085430, 33.652573, 34.598518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046918, -0.226878, -0.972792,
		0.240739, 0.947727, -0.209422,
		0.969455, -0.224364, 0.099084,
		31.376266, 33.585262, 34.628242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100203, 34.096371, 34.086422>,  <30.697649, 33.742317, 34.558884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100203, 34.096371, 34.086422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256908, 33.747540, 34.203720>,  <31.350931, 33.538239, 34.274097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256908, 33.747540, 34.203720>,  <31.100203, 34.096371, 34.086422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256908, 33.747540, 34.203720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050101, -0.338469, -0.939643,
		0.918700, 0.353428, -0.176292,
		0.391765, -0.872083, 0.293244,
		31.374437, 33.485916, 34.291695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725109, 33.939678, 33.745712>,  <31.100203, 34.096371, 34.086422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725109, 33.939678, 33.745712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486675, 33.626534, 33.817055>,  <31.343615, 33.438648, 33.859859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486675, 33.626534, 33.817055>,  <31.725109, 33.939678, 33.745712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486675, 33.626534, 33.817055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052595, -0.259732, -0.964247,
		0.801197, -0.565393, 0.195997,
		-0.596085, -0.782860, 0.178360,
		31.307850, 33.391674, 33.870564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034138, 33.200489, 33.558834>,  <31.725109, 33.939678, 33.745712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034138, 33.200489, 33.558834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636312, 33.231838, 33.531380>,  <31.397619, 33.250648, 33.514908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636312, 33.231838, 33.531380>,  <32.034138, 33.200489, 33.558834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636312, 33.231838, 33.531380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054480, -0.170260, -0.983892,
		-0.088792, -0.982278, 0.165064,
		-0.994559, 0.078369, -0.068632,
		31.337944, 33.255348, 33.510792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652081, 33.427502, 33.708214>,  <32.034138, 33.200489, 33.558834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652081, 33.427502, 33.708214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504337, 33.273125, 33.370071>,  <32.415691, 33.180496, 33.167187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504337, 33.273125, 33.370071>,  <32.652081, 33.427502, 33.708214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504337, 33.273125, 33.370071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911978, -0.325302, -0.249950,
		-0.178528, -0.863264, 0.472126,
		-0.369357, -0.385946, -0.845353,
		32.393532, 33.157341, 33.116467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835995, 33.990402, 33.848991>,  <32.652081, 33.427502, 33.708214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835995, 33.990402, 33.848991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152302, 34.235138, 33.856407>,  <33.342087, 34.381981, 33.860859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152302, 34.235138, 33.856407>,  <32.835995, 33.990402, 33.848991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152302, 34.235138, 33.856407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368791, 0.452025, 0.812199,
		0.488556, -0.649095, 0.583086,
		0.790763, 0.611841, 0.018540,
		33.389530, 34.418690, 33.861969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133289, 34.004650, 34.546108>,  <32.835995, 33.990402, 33.848991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133289, 34.004650, 34.546108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252285, 34.342243, 34.367588>,  <33.323685, 34.544800, 34.260475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252285, 34.342243, 34.367588>,  <33.133289, 34.004650, 34.546108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252285, 34.342243, 34.367588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079287, 0.487694, 0.869407,
		0.951426, -0.223255, 0.212002,
		0.297492, 0.843986, -0.446304,
		33.341534, 34.595440, 34.233696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687424, 34.252193, 34.826729>,  <33.133289, 34.004650, 34.546108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687424, 34.252193, 34.826729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495667, 34.570488, 34.678680>,  <33.380611, 34.761463, 34.589851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495667, 34.570488, 34.678680>,  <33.687424, 34.252193, 34.826729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495667, 34.570488, 34.678680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141866, 0.345934, 0.927472,
		0.866059, 0.497131, -0.052951,
		-0.479392, 0.795733, -0.370125,
		33.351849, 34.809208, 34.567642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016777, 34.695869, 35.127155>,  <33.687424, 34.252193, 34.826729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016777, 34.695869, 35.127155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690979, 34.890064, 35.000103>,  <33.495499, 35.006580, 34.923870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690979, 34.890064, 35.000103>,  <34.016777, 34.695869, 35.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690979, 34.890064, 35.000103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018968, 0.524912, 0.850945,
		0.579856, 0.699118, -0.418332,
		-0.814498, 0.485490, -0.317634,
		33.446629, 35.035713, 34.904812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023815, 35.326580, 35.413651>,  <34.016777, 34.695869, 35.127155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023815, 35.326580, 35.413651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646858, 35.367146, 35.286144>,  <33.420685, 35.391487, 35.209641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646858, 35.367146, 35.286144>,  <34.023815, 35.326580, 35.413651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646858, 35.367146, 35.286144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197500, 0.600421, 0.774912,
		0.269981, 0.793227, -0.545803,
		-0.942393, 0.101416, -0.318765,
		33.364140, 35.397572, 35.190514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883030, 36.028404, 35.479523>,  <34.023815, 35.326580, 35.413651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883030, 36.028404, 35.479523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522831, 35.856148, 35.455338>,  <33.306713, 35.752792, 35.440826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522831, 35.856148, 35.455338>,  <33.883030, 36.028404, 35.479523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522831, 35.856148, 35.455338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326924, 0.578720, 0.747130,
		-0.286759, 0.692552, -0.661922,
		-0.900494, -0.430645, -0.060459,
		33.252682, 35.726955, 35.437199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282631, 36.588108, 35.471062>,  <33.883030, 36.028404, 35.479523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282631, 36.588108, 35.471062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112778, 36.249908, 35.600563>,  <33.010864, 36.046989, 35.678265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112778, 36.249908, 35.600563>,  <33.282631, 36.588108, 35.471062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112778, 36.249908, 35.600563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459698, 0.509416, 0.727443,
		-0.779978, 0.160068, -0.604990,
		-0.424632, -0.845502, 0.323750,
		32.985390, 35.996258, 35.697689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588570, 36.745018, 35.571609>,  <33.282631, 36.588108, 35.471062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588570, 36.745018, 35.571609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676693, 36.430691, 35.802765>,  <32.729565, 36.242096, 35.941460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676693, 36.430691, 35.802765>,  <32.588570, 36.745018, 35.571609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676693, 36.430691, 35.802765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628007, 0.339059, 0.700461,
		-0.746373, -0.517236, -0.418801,
		0.220305, -0.785816, 0.577892,
		32.742786, 36.194946, 35.976131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168907, 36.869698, 36.021862>,  <32.588570, 36.745018, 35.571609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168907, 36.869698, 36.021862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378414, 36.583988, 36.207542>,  <32.504116, 36.412563, 36.318951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378414, 36.583988, 36.207542>,  <32.168907, 36.869698, 36.021862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378414, 36.583988, 36.207542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364193, 0.304859, 0.880014,
		-0.770088, -0.629978, -0.100460,
		0.523764, -0.714275, 0.464202,
		32.535542, 36.369705, 36.346802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749681, 36.703003, 36.521187>,  <32.168907, 36.869698, 36.021862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749681, 36.703003, 36.521187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071705, 36.516323, 36.667648>,  <32.264919, 36.404316, 36.755527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071705, 36.516323, 36.667648>,  <31.749681, 36.703003, 36.521187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071705, 36.516323, 36.667648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318993, 0.179808, 0.930544,
		-0.500123, -0.865945, -0.004117,
		0.805060, -0.466700, 0.366156,
		32.313221, 36.376312, 36.777496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560738, 36.466190, 37.069683>,  <31.749681, 36.703003, 36.521187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560738, 36.466190, 37.069683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956669, 36.471008, 37.126385>,  <32.194229, 36.473900, 37.160404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956669, 36.471008, 37.126385>,  <31.560738, 36.466190, 37.069683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956669, 36.471008, 37.126385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142264, 0.079766, 0.986609,
		0.000569, -0.996741, 0.080667,
		0.989828, 0.012038, 0.141755,
		32.253616, 36.474621, 37.168911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657936, 36.117538, 37.607624>,  <31.560738, 36.466190, 37.069683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657936, 36.117538, 37.607624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001572, 36.321869, 37.594822>,  <32.207752, 36.444466, 37.587143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001572, 36.321869, 37.594822>,  <31.657936, 36.117538, 37.607624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001572, 36.321869, 37.594822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072387, 0.183161, 0.980414,
		0.506679, -0.839948, 0.194329,
		0.859091, 0.510822, -0.032002,
		32.259300, 36.475117, 37.585220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271687, 35.745270, 37.901604>,  <31.657936, 36.117538, 37.607624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271687, 35.745270, 37.901604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336945, 36.138992, 37.928520>,  <32.376099, 36.375225, 37.944672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336945, 36.138992, 37.928520>,  <32.271687, 35.745270, 37.901604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336945, 36.138992, 37.928520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120252, -0.047856, 0.991589,
		0.979246, -0.169868, 0.110557,
		0.163148, 0.984304, 0.067290,
		32.385887, 36.434284, 37.948708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628651, 35.773399, 38.565548>,  <32.271687, 35.745270, 37.901604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628651, 35.773399, 38.565548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549557, 36.156773, 38.483280>,  <32.502102, 36.386799, 38.433918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549557, 36.156773, 38.483280>,  <32.628651, 35.773399, 38.565548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549557, 36.156773, 38.483280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050649, 0.199541, 0.978580,
		0.978946, 0.203916, 0.009088,
		-0.197735, 0.958437, -0.205668,
		32.490238, 36.444305, 38.421581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094856, 36.261364, 38.990803>,  <32.628651, 35.773399, 38.565548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094856, 36.261364, 38.990803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774441, 36.477554, 38.887863>,  <32.582191, 36.607269, 38.826099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774441, 36.477554, 38.887863>,  <33.094856, 36.261364, 38.990803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774441, 36.477554, 38.887863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126919, 0.266793, 0.955360,
		0.585004, 0.797942, -0.145115,
		-0.801038, 0.540472, -0.257349,
		32.534130, 36.639694, 38.810658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132027, 36.758808, 39.477772>,  <33.094856, 36.261364, 38.990803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132027, 36.758808, 39.477772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754120, 36.799927, 39.353294>,  <32.527374, 36.824596, 39.278606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754120, 36.799927, 39.353294>,  <33.132027, 36.758808, 39.477772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754120, 36.799927, 39.353294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258336, 0.350717, 0.900145,
		0.201672, 0.930822, -0.304792,
		-0.944770, 0.102795, -0.311194,
		32.470688, 36.830765, 39.259937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934113, 37.451900, 39.604156>,  <33.132027, 36.758808, 39.477772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934113, 37.451900, 39.604156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580452, 37.270798, 39.558041>,  <32.368256, 37.162136, 39.530373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580452, 37.270798, 39.558041>,  <32.934113, 37.451900, 39.604156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580452, 37.270798, 39.558041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371130, 0.530713, 0.761975,
		-0.283805, 0.716486, -0.637262,
		-0.884148, -0.452759, -0.115291,
		32.315208, 37.134972, 39.523453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409069, 38.007595, 39.775322>,  <32.934113, 37.451900, 39.604156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409069, 38.007595, 39.775322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197956, 37.670433, 39.817207>,  <32.071289, 37.468136, 39.842339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197956, 37.670433, 39.817207>,  <32.409069, 38.007595, 39.775322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197956, 37.670433, 39.817207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370154, 0.339203, 0.864828,
		-0.764484, 0.417679, -0.491028,
		-0.527779, -0.842903, 0.104710,
		32.039623, 37.417561, 39.848621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688383, 38.249378, 39.939983>,  <32.409069, 38.007595, 39.775322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688383, 38.249378, 39.939983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760254, 37.872974, 40.054680>,  <31.803375, 37.647133, 40.123497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760254, 37.872974, 40.054680>,  <31.688383, 38.249378, 39.939983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760254, 37.872974, 40.054680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265651, 0.234241, 0.935180,
		-0.947178, -0.244201, -0.207892,
		0.179675, -0.941009, 0.286740,
		31.814156, 37.590672, 40.140701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119146, 38.075733, 40.411537>,  <31.688383, 38.249378, 39.939983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119146, 38.075733, 40.411537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399824, 37.806118, 40.503876>,  <31.568232, 37.644348, 40.559280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399824, 37.806118, 40.503876>,  <31.119146, 38.075733, 40.411537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399824, 37.806118, 40.503876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022818, 0.302583, 0.952850,
		-0.712111, -0.673879, 0.196941,
		0.701696, -0.674041, 0.230849,
		31.610332, 37.603905, 40.573132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807079, 37.667068, 40.970474>,  <31.119146, 38.075733, 40.411537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807079, 37.667068, 40.970474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200817, 37.597591, 40.982441>,  <31.437059, 37.555904, 40.989620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200817, 37.597591, 40.982441>,  <30.807079, 37.667068, 40.970474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200817, 37.597591, 40.982441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024064, 0.300593, 0.953449,
		-0.174595, -0.937804, 0.300068,
		0.984346, -0.173688, 0.029915,
		31.496120, 37.545486, 40.991417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951605, 37.100204, 41.438168>,  <30.807079, 37.667068, 40.970474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951605, 37.100204, 41.438168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274073, 37.336433, 41.423691>,  <31.467554, 37.478172, 41.415005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274073, 37.336433, 41.423691>,  <30.951605, 37.100204, 41.438168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274073, 37.336433, 41.423691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016296, 0.083308, 0.996391,
		0.591461, -0.802669, 0.076784,
		0.806169, 0.590578, -0.036193,
		31.515923, 37.513607, 41.412834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377674, 36.865875, 41.969173>,  <30.951605, 37.100204, 41.438168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377674, 36.865875, 41.969173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555918, 37.219017, 41.909843>,  <31.662863, 37.430901, 41.874245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555918, 37.219017, 41.909843>,  <31.377674, 36.865875, 41.969173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555918, 37.219017, 41.909843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034270, 0.148737, 0.988283,
		0.894572, -0.445469, 0.036023,
		0.445608, 0.882856, -0.148322,
		31.689600, 37.483875, 41.865345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790014, 36.907387, 42.544163>,  <31.377674, 36.865875, 41.969173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790014, 36.907387, 42.544163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736462, 37.277161, 42.401340>,  <31.704330, 37.499027, 42.315647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736462, 37.277161, 42.401340>,  <31.790014, 36.907387, 42.544163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736462, 37.277161, 42.401340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117598, 0.372572, 0.920522,
		0.983995, 0.081251, -0.158592,
		-0.133881, 0.924439, -0.357054,
		31.696297, 37.554493, 42.294224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351383, 37.362045, 42.714111>,  <31.790014, 36.907387, 42.544163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351383, 37.362045, 42.714111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046902, 37.614388, 42.653988>,  <31.864212, 37.765793, 42.617912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046902, 37.614388, 42.653988>,  <32.351383, 37.362045, 42.714111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046902, 37.614388, 42.653988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174210, 0.422172, 0.889619,
		0.624674, 0.650997, -0.431260,
		-0.761205, 0.630852, -0.150309,
		31.818541, 37.803642, 42.608894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554585, 37.848236, 43.122585>,  <32.351383, 37.362045, 42.714111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554585, 37.848236, 43.122585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188744, 37.964466, 43.010109>,  <31.969238, 38.034203, 42.942623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188744, 37.964466, 43.010109>,  <32.554585, 37.848236, 43.122585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188744, 37.964466, 43.010109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089054, 0.533594, 0.841039,
		0.394427, 0.794258, -0.462150,
		-0.914602, 0.290572, -0.281195,
		31.914364, 38.051640, 42.925751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494965, 38.558414, 43.202881>,  <32.554585, 37.848236, 43.122585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494965, 38.558414, 43.202881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113476, 38.438480, 43.211964>,  <31.884583, 38.366520, 43.217415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113476, 38.438480, 43.211964>,  <32.494965, 38.558414, 43.202881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113476, 38.438480, 43.211964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190855, 0.661980, 0.724815,
		-0.232356, 0.686937, -0.688569,
		-0.953722, -0.299832, 0.022709,
		31.827360, 38.348530, 43.218777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061260, 39.137962, 43.403889>,  <32.494965, 38.558414, 43.202881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061260, 39.137962, 43.403889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853426, 38.805302, 43.482265>,  <31.728727, 38.605705, 43.529289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853426, 38.805302, 43.482265>,  <32.061260, 39.137962, 43.403889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853426, 38.805302, 43.482265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194563, 0.338461, 0.920646,
		-0.831974, 0.440228, -0.337667,
		-0.519582, -0.831651, 0.195938,
		31.697552, 38.555805, 43.541046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443893, 39.231701, 43.621311>,  <32.061260, 39.137962, 43.403889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443893, 39.231701, 43.621311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501184, 38.879742, 43.802532>,  <31.535559, 38.668564, 43.911266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501184, 38.879742, 43.802532>,  <31.443893, 39.231701, 43.621311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501184, 38.879742, 43.802532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303975, 0.396535, 0.866233,
		-0.941852, -0.261785, -0.210674,
		0.143227, -0.879903, 0.453053,
		31.544153, 38.615772, 43.938450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958878, 39.186565, 44.228310>,  <31.443893, 39.231701, 43.621311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958878, 39.186565, 44.228310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201437, 38.883278, 44.324131>,  <31.346973, 38.701305, 44.381622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201437, 38.883278, 44.324131>,  <30.958878, 39.186565, 44.228310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201437, 38.883278, 44.324131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147150, 0.189051, 0.970879,
		-0.781427, -0.623989, 0.003068,
		0.606398, -0.758220, 0.239549,
		31.383356, 38.655811, 44.395996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658018, 38.943630, 44.795189>,  <30.958878, 39.186565, 44.228310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658018, 38.943630, 44.795189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033970, 38.810863, 44.827332>,  <31.259541, 38.731201, 44.846619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033970, 38.810863, 44.827332>,  <30.658018, 38.943630, 44.795189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033970, 38.810863, 44.827332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010962, 0.205854, 0.978521,
		-0.341334, -0.920572, 0.189839,
		0.939878, -0.331922, 0.080356,
		31.315933, 38.711288, 44.851437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628410, 38.596283, 45.346363>,  <30.658018, 38.943630, 44.795189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628410, 38.596283, 45.346363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024872, 38.629486, 45.304943>,  <31.262749, 38.649410, 45.280090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024872, 38.629486, 45.304943>,  <30.628410, 38.596283, 45.346363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024872, 38.629486, 45.304943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098186, 0.066253, 0.992960,
		0.089296, -0.994343, 0.057516,
		0.991154, 0.083020, -0.103546,
		31.322218, 38.654388, 45.273880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945086, 38.202423, 45.963413>,  <30.628410, 38.596283, 45.346363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945086, 38.202423, 45.963413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205854, 38.467636, 45.816235>,  <31.362316, 38.626762, 45.727928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205854, 38.467636, 45.816235>,  <30.945086, 38.202423, 45.963413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205854, 38.467636, 45.816235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310411, 0.209372, 0.927258,
		0.691839, -0.718717, -0.069318,
		0.651923, 0.663030, -0.367950,
		31.401432, 38.666546, 45.705849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554913, 37.958538, 46.286541>,  <30.945086, 38.202423, 45.963413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554913, 37.958538, 46.286541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624832, 38.336414, 46.175549>,  <31.666784, 38.563141, 46.108952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624832, 38.336414, 46.175549>,  <31.554913, 37.958538, 46.286541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624832, 38.336414, 46.175549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286173, 0.220909, 0.932365,
		0.942099, -0.242384, -0.231731,
		0.174799, 0.944695, -0.277482,
		31.677273, 38.619823, 46.092304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280632, 38.097931, 46.499290>,  <31.554913, 37.958538, 46.286541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280632, 38.097931, 46.499290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053036, 38.425003, 46.464317>,  <31.916477, 38.621246, 46.443333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053036, 38.425003, 46.464317>,  <32.280632, 38.097931, 46.499290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053036, 38.425003, 46.464317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177868, 0.226182, 0.957708,
		0.802875, 0.529379, -0.274135,
		-0.568995, 0.817680, -0.087436,
		31.882338, 38.670307, 46.438087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703705, 38.627319, 46.846619>,  <32.280632, 38.097931, 46.499290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703705, 38.627319, 46.846619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329330, 38.768055, 46.852722>,  <32.104706, 38.852497, 46.856384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329330, 38.768055, 46.852722>,  <32.703705, 38.627319, 46.846619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329330, 38.768055, 46.852722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143718, 0.342040, 0.928630,
		0.321511, 0.871331, -0.370693,
		-0.935936, 0.351840, 0.015256,
		32.048550, 38.873608, 46.857300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764595, 39.225163, 47.315620>,  <32.703705, 38.627319, 46.846619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764595, 39.225163, 47.315620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372482, 39.159962, 47.270931>,  <32.137215, 39.120842, 47.244118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372482, 39.159962, 47.270931>,  <32.764595, 39.225163, 47.315620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372482, 39.159962, 47.270931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150316, 0.248011, 0.957024,
		-0.128289, 0.954945, -0.267622,
		-0.980279, -0.163004, -0.111727,
		32.078400, 39.111061, 47.237411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408966, 39.847511, 47.652458>,  <32.764595, 39.225163, 47.315620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408966, 39.847511, 47.652458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171429, 39.525967, 47.638916>,  <32.028904, 39.333038, 47.630791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171429, 39.525967, 47.638916>,  <32.408966, 39.847511, 47.652458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171429, 39.525967, 47.638916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072949, 0.011890, 0.997265,
		-0.801265, 0.594691, -0.065702,
		-0.593846, -0.803866, -0.033855,
		31.993275, 39.284805, 47.628761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845739, 39.925068, 48.130077>,  <32.408966, 39.847511, 47.652458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845739, 39.925068, 48.130077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814716, 39.526447, 48.118252>,  <31.796103, 39.287277, 48.111156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814716, 39.526447, 48.118252>,  <31.845739, 39.925068, 48.130077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814716, 39.526447, 48.118252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243311, -0.009836, 0.969898,
		-0.966843, 0.082413, -0.241709,
		-0.077555, -0.996550, -0.029562,
		31.791451, 39.227482, 48.109383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218468, 39.775181, 48.509670>,  <31.845739, 39.925068, 48.130077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218468, 39.775181, 48.509670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428102, 39.434723, 48.497795>,  <31.553885, 39.230450, 48.490669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428102, 39.434723, 48.497795>,  <31.218468, 39.775181, 48.509670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428102, 39.434723, 48.497795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278658, -0.204313, 0.938406,
		-0.804786, -0.483535, -0.344257,
		0.524089, -0.851146, -0.029688,
		31.585329, 39.179379, 48.488888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820858, 39.259468, 48.899338>,  <31.218468, 39.775181, 48.509670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820858, 39.259468, 48.899338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180201, 39.085396, 48.923252>,  <31.395805, 38.980953, 48.937599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180201, 39.085396, 48.923252>,  <30.820858, 39.259468, 48.899338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180201, 39.085396, 48.923252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293399, -0.493159, 0.818970,
		-0.326915, -0.753268, -0.570713,
		0.898356, -0.435180, 0.059787,
		31.449707, 38.954842, 48.941189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828173, 38.520256, 48.755989>,  <30.820858, 39.259468, 48.899338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828173, 38.520256, 48.755989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130041, 38.586121, 49.010029>,  <31.311163, 38.625637, 49.162453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130041, 38.586121, 49.010029>,  <30.828173, 38.520256, 48.755989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130041, 38.586121, 49.010029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456179, -0.564045, 0.688298,
		0.471561, -0.809161, -0.350555,
		0.754673, 0.164658, 0.635104,
		31.356443, 38.635517, 49.200562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918287, 37.936821, 49.090343>,  <30.828173, 38.520256, 48.755989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918287, 37.936821, 49.090343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065731, 38.220257, 49.331017>,  <31.154198, 38.390320, 49.475422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065731, 38.220257, 49.331017>,  <30.918287, 37.936821, 49.090343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065731, 38.220257, 49.331017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518787, -0.380277, 0.765669,
		0.771355, -0.594377, 0.227437,
		0.368607, 0.708594, 0.601684,
		31.176313, 38.432835, 49.511520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069000, 37.564270, 49.654434>,  <30.918287, 37.936821, 49.090343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069000, 37.564270, 49.654434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997858, 37.943577, 49.759628>,  <30.955173, 38.171162, 49.822746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997858, 37.943577, 49.759628>,  <31.069000, 37.564270, 49.654434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997858, 37.943577, 49.759628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549682, -0.317404, 0.772725,
		0.816221, -0.007128, 0.577695,
		-0.177855, 0.948263, 0.262990,
		30.944502, 38.228054, 49.838524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213514, 37.669991, 50.410355>,  <31.069000, 37.564270, 49.654434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213514, 37.669991, 50.410355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928541, 37.892639, 50.239422>,  <30.757557, 38.026230, 50.136864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928541, 37.892639, 50.239422>,  <31.213514, 37.669991, 50.410355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928541, 37.892639, 50.239422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665612, -0.343135, 0.662736,
		0.222265, 0.756589, 0.614957,
		-0.712432, 0.556625, -0.427327,
		30.714811, 38.059628, 50.111225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763927, 37.215630, 50.889801>,  <31.213514, 37.669991, 50.410355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763927, 37.215630, 50.889801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103653, 37.393909, 51.002953>,  <32.307487, 37.500877, 51.070843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103653, 37.393909, 51.002953>,  <31.763927, 37.215630, 50.889801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103653, 37.393909, 51.002953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416550, -0.236650, -0.877772,
		-0.324278, 0.863336, -0.386645,
		0.849311, 0.445699, 0.282882,
		32.358448, 37.527618, 51.087818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049587, 37.695316, 50.431702>,  <31.763927, 37.215630, 50.889801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049587, 37.695316, 50.431702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346367, 37.506104, 50.621758>,  <32.524433, 37.392574, 50.735790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346367, 37.506104, 50.621758>,  <32.049587, 37.695316, 50.431702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346367, 37.506104, 50.621758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427824, -0.211613, -0.878741,
		0.516218, 0.855254, 0.045369,
		0.741947, -0.473033, 0.475137,
		32.568951, 37.364193, 50.764297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666424, 38.084576, 50.246628>,  <32.049587, 37.695316, 50.431702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666424, 38.084576, 50.246628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713875, 37.696697, 50.332062>,  <32.742344, 37.463970, 50.383324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713875, 37.696697, 50.332062>,  <32.666424, 38.084576, 50.246628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713875, 37.696697, 50.332062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379856, -0.154422, -0.912066,
		0.917408, 0.189323, 0.350027,
		0.118624, -0.969696, 0.213584,
		32.749462, 37.405788, 50.396137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348564, 37.952545, 50.054840>,  <32.666424, 38.084576, 50.246628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348564, 37.952545, 50.054840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104618, 37.636383, 50.031796>,  <32.958252, 37.446686, 50.017967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104618, 37.636383, 50.031796>,  <33.348564, 37.952545, 50.054840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104618, 37.636383, 50.031796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247893, -0.121207, -0.961175,
		0.752737, -0.600470, 0.269857,
		-0.609865, -0.790408, -0.057615,
		32.921658, 37.399261, 50.014511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663330, 37.310623, 49.864140>,  <33.348564, 37.952545, 50.054840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663330, 37.310623, 49.864140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281208, 37.267750, 49.753941>,  <33.051933, 37.242023, 49.687820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281208, 37.267750, 49.753941>,  <33.663330, 37.310623, 49.864140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281208, 37.267750, 49.753941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295221, -0.393775, -0.870509,
		-0.015175, -0.912936, 0.407821,
		-0.955309, -0.107188, -0.275494,
		32.994614, 37.235592, 49.671291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596107, 36.667255, 49.679241>,  <33.663330, 37.310623, 49.864140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596107, 36.667255, 49.679241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360821, 36.938416, 49.502853>,  <33.219650, 37.101112, 49.397022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360821, 36.938416, 49.502853>,  <33.596107, 36.667255, 49.679241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360821, 36.938416, 49.502853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225444, -0.386203, -0.894439,
		-0.776646, -0.625534, 0.074341,
		-0.588214, 0.677904, -0.440967,
		33.184357, 37.141788, 49.370564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108757, 36.377090, 49.166672>,  <33.596107, 36.667255, 49.679241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108757, 36.377090, 49.166672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229797, 36.748421, 49.080280>,  <33.302422, 36.971218, 49.028446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229797, 36.748421, 49.080280>,  <33.108757, 36.377090, 49.166672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229797, 36.748421, 49.080280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322891, -0.313048, -0.893165,
		-0.896757, 0.200538, -0.394476,
		0.302603, 0.928324, -0.215976,
		33.320580, 37.026917, 49.015488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844711, 36.484329, 48.530087>,  <33.108757, 36.377090, 49.166672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844711, 36.484329, 48.530087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146416, 36.745983, 48.552742>,  <33.327438, 36.902973, 48.566334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146416, 36.745983, 48.552742>,  <32.844711, 36.484329, 48.530087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146416, 36.745983, 48.552742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321081, -0.292232, -0.900837,
		-0.572716, 0.697647, -0.430448,
		0.754257, 0.654132, 0.056635,
		33.372692, 36.942223, 48.569733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856979, 36.812527, 47.909145>,  <32.844711, 36.484329, 48.530087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856979, 36.812527, 47.909145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216164, 36.912762, 48.053852>,  <33.431675, 36.972904, 48.140675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216164, 36.912762, 48.053852>,  <32.856979, 36.812527, 47.909145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216164, 36.912762, 48.053852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381224, -0.032241, -0.923920,
		-0.219860, 0.967556, -0.124482,
		0.897958, 0.250589, 0.361767,
		33.485550, 36.987938, 48.162384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067638, 37.339939, 47.456314>,  <32.856979, 36.812527, 47.909145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067638, 37.339939, 47.456314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397457, 37.221397, 47.649105>,  <33.595348, 37.150272, 47.764778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397457, 37.221397, 47.649105>,  <33.067638, 37.339939, 47.456314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397457, 37.221397, 47.649105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522514, 0.072070, -0.849579,
		0.217039, 0.952356, 0.214273,
		0.824544, -0.296352, 0.481977,
		33.644821, 37.132492, 47.793697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592262, 37.698292, 47.197712>,  <33.067638, 37.339939, 47.456314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592262, 37.698292, 47.197712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769821, 37.368782, 47.338768>,  <33.876358, 37.171078, 47.423401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769821, 37.368782, 47.338768>,  <33.592262, 37.698292, 47.197712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769821, 37.368782, 47.338768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552442, -0.058264, -0.831512,
		0.705523, 0.563919, 0.429223,
		0.443898, -0.823772, 0.352639,
		33.902992, 37.121651, 47.444561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248783, 37.631821, 46.851547>,  <33.592262, 37.698292, 47.197712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248783, 37.631821, 46.851547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266144, 37.260914, 47.000298>,  <34.276562, 37.038368, 47.089546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266144, 37.260914, 47.000298>,  <34.248783, 37.631821, 46.851547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266144, 37.260914, 47.000298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587237, -0.277459, -0.760374,
		0.808250, 0.251380, 0.532484,
		0.043400, -0.927267, 0.371876,
		34.279163, 36.982735, 47.111858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963188, 37.498817, 46.882530>,  <34.248783, 37.631821, 46.851547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963188, 37.498817, 46.882530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758026, 37.156319, 46.857986>,  <34.634930, 36.950821, 46.843262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758026, 37.156319, 46.857986>,  <34.963188, 37.498817, 46.882530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758026, 37.156319, 46.857986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620128, -0.320148, -0.716202,
		0.593604, -0.405395, 0.695190,
		-0.512909, -0.856247, -0.061356,
		34.604153, 36.899445, 46.839581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435024, 37.054699, 46.591492>,  <34.963188, 37.498817, 46.882530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435024, 37.054699, 46.591492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075836, 36.890877, 46.527111>,  <34.860321, 36.792583, 46.488483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075836, 36.890877, 46.527111>,  <35.435024, 37.054699, 46.591492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075836, 36.890877, 46.527111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263555, -0.207638, -0.942033,
		0.352396, -0.888341, 0.294394,
		-0.897973, -0.409558, -0.160956,
		34.806442, 36.768009, 46.478825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574261, 36.513592, 46.146637>,  <35.435024, 37.054699, 46.591492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574261, 36.513592, 46.146637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183914, 36.584091, 46.095078>,  <34.949707, 36.626392, 46.064144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183914, 36.584091, 46.095078>,  <35.574261, 36.513592, 46.146637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183914, 36.584091, 46.095078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068660, -0.312674, -0.947376,
		-0.207279, -0.933365, 0.293028,
		-0.975870, 0.176252, -0.128896,
		34.891155, 36.636967, 46.056408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435970, 36.046108, 45.576115>,  <35.574261, 36.513592, 46.146637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435970, 36.046108, 45.576115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100456, 36.263405, 45.590675>,  <34.899147, 36.393784, 45.599411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100456, 36.263405, 45.590675>,  <35.435970, 36.046108, 45.576115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100456, 36.263405, 45.590675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131270, -0.136893, -0.981849,
		-0.528397, -0.828342, 0.186135,
		-0.838787, 0.543240, 0.036402,
		34.848820, 36.426376, 45.601597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948269, 35.634258, 45.325459>,  <35.435970, 36.046108, 45.576115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948269, 35.634258, 45.325459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800720, 36.004726, 45.294106>,  <34.712193, 36.227009, 45.275291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800720, 36.004726, 45.294106>,  <34.948269, 35.634258, 45.325459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800720, 36.004726, 45.294106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201454, -0.161992, -0.966010,
		-0.907386, -0.340544, 0.246334,
		-0.368873, 0.926169, -0.078385,
		34.690060, 36.282578, 45.270592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265163, 35.657467, 45.044205>,  <34.948269, 35.634258, 45.325459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265163, 35.657467, 45.044205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445072, 36.001537, 44.948036>,  <34.553017, 36.207981, 44.890335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445072, 36.001537, 44.948036>,  <34.265163, 35.657467, 45.044205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445072, 36.001537, 44.948036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211162, -0.159141, -0.964409,
		-0.867824, 0.484529, 0.110061,
		0.449769, 0.860178, -0.240421,
		34.580002, 36.259590, 44.875912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039242, 35.779617, 44.348442>,  <34.265163, 35.657467, 45.044205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039242, 35.779617, 44.348442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319763, 36.063564, 44.374557>,  <34.488075, 36.233932, 44.390224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319763, 36.063564, 44.374557>,  <34.039242, 35.779617, 44.348442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319763, 36.063564, 44.374557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076958, 0.015654, -0.996911,
		-0.708701, 0.704157, -0.043652,
		0.701299, 0.709872, 0.065285,
		34.530151, 36.276527, 44.394142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962299, 36.325298, 43.932819>,  <34.039242, 35.779617, 44.348442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962299, 36.325298, 43.932819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360744, 36.316921, 43.967037>,  <34.599812, 36.311897, 43.987568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360744, 36.316921, 43.967037>,  <33.962299, 36.325298, 43.932819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360744, 36.316921, 43.967037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086377, 0.042504, -0.995355,
		0.017207, 0.998877, 0.044148,
		0.996114, -0.020941, 0.085549,
		34.659580, 36.310638, 43.992702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330173, 36.888908, 43.447144>,  <33.962299, 36.325298, 43.932819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330173, 36.888908, 43.447144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604023, 36.611885, 43.538052>,  <34.768333, 36.445671, 43.592594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604023, 36.611885, 43.538052>,  <34.330173, 36.888908, 43.447144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604023, 36.611885, 43.538052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327162, 0.013349, -0.944874,
		0.651349, 0.721236, 0.235718,
		0.684623, -0.692561, 0.227266,
		34.809410, 36.404118, 43.606232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920860, 37.192890, 43.161522>,  <34.330173, 36.888908, 43.447144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920860, 37.192890, 43.161522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022091, 36.809296, 43.212582>,  <35.082829, 36.579140, 43.243217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022091, 36.809296, 43.212582>,  <34.920860, 37.192890, 43.161522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022091, 36.809296, 43.212582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355819, -0.030433, -0.934060,
		0.899637, 0.281807, 0.333524,
		0.253075, -0.958988, 0.127651,
		35.098015, 36.521599, 43.250877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492519, 37.095352, 42.941147>,  <34.920860, 37.192890, 43.161522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492519, 37.095352, 42.941147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342503, 36.726658, 42.901634>,  <35.252495, 36.505444, 42.877926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342503, 36.726658, 42.901634>,  <35.492519, 37.095352, 42.941147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342503, 36.726658, 42.901634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449084, -0.087434, -0.889201,
		0.810969, -0.377844, 0.446726,
		-0.375038, -0.921732, -0.098777,
		35.229992, 36.450138, 42.872002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990334, 36.716618, 42.495350>,  <35.492519, 37.095352, 42.941147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990334, 36.716618, 42.495350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668495, 36.479492, 42.509129>,  <35.475391, 36.337215, 42.517395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668495, 36.479492, 42.509129>,  <35.990334, 36.716618, 42.495350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668495, 36.479492, 42.509129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168108, -0.283036, -0.944262,
		0.569525, -0.753961, 0.327388,
		-0.804599, -0.592817, 0.034449,
		35.427116, 36.301647, 42.519463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231136, 36.032368, 42.341454>,  <35.990334, 36.716618, 42.495350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231136, 36.032368, 42.341454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836472, 36.044353, 42.277462>,  <35.599670, 36.051544, 42.239067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836472, 36.044353, 42.277462>,  <36.231136, 36.032368, 42.341454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836472, 36.044353, 42.277462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131904, -0.428657, -0.893786,
		-0.095359, -0.902970, 0.418989,
		-0.986665, 0.029964, -0.159982,
		35.540474, 36.053341, 42.229465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104870, 35.501682, 41.888783>,  <36.231136, 36.032368, 42.341454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104870, 35.501682, 41.888783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748508, 35.682198, 41.868259>,  <35.534691, 35.790504, 41.855946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748508, 35.682198, 41.868259>,  <36.104870, 35.501682, 41.888783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748508, 35.682198, 41.868259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098799, -0.302810, -0.947916,
		-0.443316, -0.839433, 0.314361,
		-0.890904, 0.451285, -0.051305,
		35.481236, 35.817581, 41.852867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724716, 35.046684, 41.442825>,  <36.104870, 35.501682, 41.888783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724716, 35.046684, 41.442825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535954, 35.398895, 41.460606>,  <35.422695, 35.610222, 41.471275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535954, 35.398895, 41.460606>,  <35.724716, 35.046684, 41.442825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535954, 35.398895, 41.460606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364328, -0.148852, -0.919298,
		-0.802848, -0.450021, 0.391045,
		-0.471911, 0.880525, 0.044450,
		35.394379, 35.663052, 41.473942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888000, 34.968491, 41.346962>,  <35.724716, 35.046684, 41.442825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888000, 34.968491, 41.346962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024841, 35.323654, 41.223946>,  <35.106945, 35.536751, 41.150135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024841, 35.323654, 41.223946>,  <34.888000, 34.968491, 41.346962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024841, 35.323654, 41.223946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347871, -0.184361, -0.919237,
		-0.872898, 0.421458, 0.245808,
		0.342103, 0.887910, -0.307541,
		35.127472, 35.590027, 41.131683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361256, 35.237606, 40.873325>,  <34.888000, 34.968491, 41.346962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361256, 35.237606, 40.873325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692295, 35.439590, 40.775261>,  <34.890919, 35.560780, 40.716423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692295, 35.439590, 40.775261>,  <34.361256, 35.237606, 40.873325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692295, 35.439590, 40.775261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197360, -0.147101, -0.969232,
		-0.525485, 0.850516, -0.022081,
		0.827595, 0.504959, -0.245157,
		34.940575, 35.591080, 40.701714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191132, 35.574844, 40.195267>,  <34.361256, 35.237606, 40.873325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191132, 35.574844, 40.195267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588593, 35.599934, 40.232605>,  <34.827068, 35.614986, 40.255009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588593, 35.599934, 40.232605>,  <34.191132, 35.574844, 40.195267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588593, 35.599934, 40.232605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095434, -0.031107, -0.994950,
		-0.059500, 0.997546, -0.036896,
		0.993656, 0.062721, 0.093349,
		34.886688, 35.618752, 40.260609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289375, 36.031208, 39.722782>,  <34.191132, 35.574844, 40.195267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289375, 36.031208, 39.722782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625828, 35.826778, 39.793541>,  <34.827702, 35.704121, 39.835995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625828, 35.826778, 39.793541>,  <34.289375, 36.031208, 39.722782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625828, 35.826778, 39.793541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157255, -0.081834, -0.984162,
		0.517458, 0.855631, 0.011536,
		0.841135, -0.511076, 0.176898,
		34.878170, 35.673454, 39.846611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691048, 36.194904, 39.194576>,  <34.289375, 36.031208, 39.722782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691048, 36.194904, 39.194576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874722, 35.863800, 39.323544>,  <34.984928, 35.665138, 39.400925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874722, 35.863800, 39.323544>,  <34.691048, 36.194904, 39.194576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874722, 35.863800, 39.323544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237851, -0.235135, -0.942411,
		0.855904, 0.509434, 0.088912,
		0.459190, -0.827761, 0.322423,
		35.012478, 35.615471, 39.420269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220039, 36.197960, 38.830040>,  <34.691048, 36.194904, 39.194576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220039, 36.197960, 38.830040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206699, 35.811451, 38.932186>,  <35.198696, 35.579548, 38.993473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206699, 35.811451, 38.932186>,  <35.220039, 36.197960, 38.830040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206699, 35.811451, 38.932186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289717, -0.253879, -0.922827,
		0.956531, 0.043210, 0.288411,
		-0.033346, -0.966270, 0.255362,
		35.196697, 35.521568, 39.008793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807659, 35.868130, 38.582066>,  <35.220039, 36.197960, 38.830040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807659, 35.868130, 38.582066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546413, 35.573750, 38.653404>,  <35.389664, 35.397121, 38.696209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546413, 35.573750, 38.653404>,  <35.807659, 35.868130, 38.582066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546413, 35.573750, 38.653404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311233, -0.475592, -0.822768,
		0.690341, -0.481856, 0.539670,
		-0.653119, -0.735953, 0.178351,
		35.350479, 35.352962, 38.706909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208843, 35.237492, 38.562164>,  <35.807659, 35.868130, 38.582066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208843, 35.237492, 38.562164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827610, 35.125107, 38.517086>,  <35.598869, 35.057678, 38.490040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827610, 35.125107, 38.517086>,  <36.208843, 35.237492, 38.562164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827610, 35.125107, 38.517086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246599, -0.504668, -0.827345,
		0.175577, -0.816316, 0.550273,
		-0.953080, -0.280960, -0.112695,
		35.541687, 35.040817, 38.483276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261204, 34.578690, 38.344276>,  <36.208843, 35.237492, 38.562164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261204, 34.578690, 38.344276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907608, 34.715942, 38.217266>,  <35.695450, 34.798294, 38.141060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907608, 34.715942, 38.217266>,  <36.261204, 34.578690, 38.344276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907608, 34.715942, 38.217266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122607, -0.485256, -0.865733,
		-0.451139, -0.804232, 0.386892,
		-0.883992, 0.343130, -0.317522,
		35.642410, 34.818882, 38.122009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941391, 34.066307, 38.058594>,  <36.261204, 34.578690, 38.344276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941391, 34.066307, 38.058594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742153, 34.366817, 37.885395>,  <35.622612, 34.547123, 37.781475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742153, 34.366817, 37.885395>,  <35.941391, 34.066307, 38.058594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742153, 34.366817, 37.885395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087329, -0.453352, -0.887043,
		-0.862715, -0.479642, 0.160203,
		-0.498092, 0.751275, -0.433001,
		35.592724, 34.592201, 37.755493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621243, 33.686413, 37.462811>,  <35.941391, 34.066307, 38.058594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621243, 33.686413, 37.462811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605453, 34.076023, 37.373623>,  <35.595982, 34.309788, 37.320110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605453, 34.076023, 37.373623>,  <35.621243, 33.686413, 37.462811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605453, 34.076023, 37.373623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288267, -0.202552, -0.935882,
		-0.956736, -0.101212, -0.272785,
		-0.039469, 0.974027, -0.222965,
		35.593613, 34.368233, 37.306732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243309, 33.712944, 36.824497>,  <35.621243, 33.686413, 37.462811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243309, 33.712944, 36.824497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422970, 34.070210, 36.815422>,  <35.530766, 34.284569, 36.809978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422970, 34.070210, 36.815422>,  <35.243309, 33.712944, 36.824497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422970, 34.070210, 36.815422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390330, -0.219000, -0.894249,
		-0.803682, 0.392800, -0.446994,
		0.449153, 0.893167, -0.022685,
		35.557716, 34.338161, 36.808617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085701, 34.089737, 36.151062>,  <35.243309, 33.712944, 36.824497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085701, 34.089737, 36.151062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439178, 34.190239, 36.309029>,  <35.651264, 34.250542, 36.403809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439178, 34.190239, 36.309029>,  <35.085701, 34.089737, 36.151062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439178, 34.190239, 36.309029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437289, -0.142242, -0.888001,
		-0.166944, 0.957411, -0.235570,
		0.883690, 0.251259, 0.394919,
		35.704285, 34.265617, 36.427505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383495, 34.473045, 35.596989>,  <35.085701, 34.089737, 36.151062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383495, 34.473045, 35.596989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685318, 34.380638, 35.842678>,  <35.866413, 34.325191, 35.990089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685318, 34.380638, 35.842678>,  <35.383495, 34.473045, 35.596989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685318, 34.380638, 35.842678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601932, -0.129141, -0.788036,
		0.261374, 0.964340, 0.041614,
		0.754560, -0.231021, 0.614221,
		35.911686, 34.311333, 36.026943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948238, 34.733925, 35.216568>,  <35.383495, 34.473045, 35.596989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948238, 34.733925, 35.216568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097897, 34.460426, 35.467167>,  <36.187691, 34.296326, 35.617527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097897, 34.460426, 35.467167>,  <35.948238, 34.733925, 35.216568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097897, 34.460426, 35.467167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646237, -0.292298, -0.704940,
		0.665126, 0.668618, 0.332501,
		0.374146, -0.683748, 0.626500,
		36.210140, 34.255302, 35.655117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703213, 34.708351, 35.123386>,  <35.948238, 34.733925, 35.216568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703213, 34.708351, 35.123386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600468, 34.368507, 35.307640>,  <36.538822, 34.164600, 35.418190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600468, 34.368507, 35.307640>,  <36.703213, 34.708351, 35.123386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600468, 34.368507, 35.307640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375777, -0.526918, -0.762331,
		0.890402, -0.022717, 0.454609,
		-0.256859, -0.849613, 0.460632,
		36.523411, 34.113625, 35.445831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313511, 34.365654, 35.162365>,  <36.703213, 34.708351, 35.123386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313511, 34.365654, 35.162365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023342, 34.091755, 35.190334>,  <36.849243, 33.927414, 35.207115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023342, 34.091755, 35.190334>,  <37.313511, 34.365654, 35.162365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023342, 34.091755, 35.190334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353371, -0.457670, -0.815884,
		0.590676, -0.567149, 0.573972,
		-0.725418, -0.684748, 0.069920,
		36.805717, 33.886330, 35.211311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620522, 33.722797, 35.077183>,  <37.313511, 34.365654, 35.162365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620522, 33.722797, 35.077183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233505, 33.649948, 35.007111>,  <37.001293, 33.606239, 34.965065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233505, 33.649948, 35.007111>,  <37.620522, 33.722797, 35.077183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233505, 33.649948, 35.007111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236015, -0.403526, -0.884004,
		0.090310, -0.896658, 0.433414,
		-0.967544, -0.182126, -0.175182,
		36.943241, 33.595310, 34.954556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014145, 33.653187, 35.723961>,  <37.620522, 33.722797, 35.077183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014145, 33.653187, 35.723961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357605, 33.855846, 35.692913>,  <38.563683, 33.977440, 35.674286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357605, 33.855846, 35.692913>,  <38.014145, 33.653187, 35.723961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357605, 33.855846, 35.692913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084490, 0.289264, 0.953514,
		0.505545, -0.812180, 0.291184,
		0.858653, 0.506646, -0.077615,
		38.615200, 34.007839, 35.669628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220398, 33.466953, 36.311966>,  <38.014145, 33.653187, 35.723961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220398, 33.466953, 36.311966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425446, 33.793095, 36.204319>,  <38.548473, 33.988781, 36.139729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425446, 33.793095, 36.204319>,  <38.220398, 33.466953, 36.311966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425446, 33.793095, 36.204319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187352, 0.412100, 0.891669,
		0.837930, -0.406662, 0.364006,
		0.512614, 0.815353, -0.269122,
		38.579231, 34.037701, 36.123581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716042, 33.500008, 36.814137>,  <38.220398, 33.466953, 36.311966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716042, 33.500008, 36.814137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721195, 33.867500, 36.656265>,  <38.724285, 34.087994, 36.561543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721195, 33.867500, 36.656265>,  <38.716042, 33.500008, 36.814137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721195, 33.867500, 36.656265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085945, 0.394267, 0.914968,
		0.996217, 0.022136, 0.084038,
		0.012880, 0.918729, -0.394678,
		38.725060, 34.143120, 36.537861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249733, 33.965885, 37.173077>,  <38.716042, 33.500008, 36.814137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249733, 33.965885, 37.173077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971313, 34.204430, 37.013145>,  <38.804260, 34.347557, 36.917187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971313, 34.204430, 37.013145>,  <39.249733, 33.965885, 37.173077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971313, 34.204430, 37.013145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159257, 0.414767, 0.895882,
		0.700105, 0.687258, -0.193725,
		-0.696053, 0.596360, -0.399831,
		38.762497, 34.383339, 36.893196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330040, 34.460461, 37.604870>,  <39.249733, 33.965885, 37.173077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330040, 34.460461, 37.604870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990723, 34.562344, 37.419174>,  <38.787132, 34.623474, 37.307758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990723, 34.562344, 37.419174>,  <39.330040, 34.460461, 37.604870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990723, 34.562344, 37.419174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292754, 0.504951, 0.811985,
		0.441233, 0.824712, -0.353784,
		-0.848297, 0.254703, -0.464239,
		38.736233, 34.638756, 37.279903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382046, 35.240723, 37.629284>,  <39.330040, 34.460461, 37.604870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382046, 35.240723, 37.629284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013062, 35.090530, 37.593315>,  <38.791672, 35.000416, 37.571732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013062, 35.090530, 37.593315>,  <39.382046, 35.240723, 37.629284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013062, 35.090530, 37.593315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275710, 0.477560, 0.834219,
		-0.270287, 0.794325, -0.544052,
		-0.922458, -0.375478, -0.089925,
		38.736324, 34.977886, 37.566338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948917, 35.842751, 37.716457>,  <39.382046, 35.240723, 37.629284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948917, 35.842751, 37.716457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724655, 35.518848, 37.785690>,  <38.590096, 35.324505, 37.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724655, 35.518848, 37.785690>,  <38.948917, 35.842751, 37.716457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724655, 35.518848, 37.785690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181195, 0.323931, 0.928567,
		-0.807980, 0.489247, -0.328338,
		-0.560657, -0.809757, 0.173081,
		38.556458, 35.275921, 37.837616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475925, 36.149525, 38.019146>,  <38.948917, 35.842751, 37.716457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475925, 36.149525, 38.019146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393471, 35.769154, 38.111446>,  <38.343998, 35.540932, 38.166828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393471, 35.769154, 38.111446>,  <38.475925, 36.149525, 38.019146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393471, 35.769154, 38.111446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208386, 0.273067, 0.939154,
		-0.956076, 0.145513, -0.254450,
		-0.206141, -0.950926, 0.230750,
		38.331627, 35.483875, 38.180672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831913, 36.112854, 38.347591>,  <38.475925, 36.149525, 38.019146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831913, 36.112854, 38.347591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042805, 35.797253, 38.473763>,  <38.169338, 35.607891, 38.549465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042805, 35.797253, 38.473763>,  <37.831913, 36.112854, 38.347591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042805, 35.797253, 38.473763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316887, 0.161867, 0.934549,
		-0.788424, -0.592678, -0.164685,
		0.527229, -0.789007, 0.315432,
		38.200974, 35.560551, 38.568394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470760, 35.848133, 38.896061>,  <37.831913, 36.112854, 38.347591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470760, 35.848133, 38.896061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829826, 35.680149, 38.949478>,  <38.045265, 35.579357, 38.981529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829826, 35.680149, 38.949478>,  <37.470760, 35.848133, 38.896061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829826, 35.680149, 38.949478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109139, 0.081727, 0.990661,
		-0.426953, -0.903855, 0.027529,
		0.897663, -0.419961, 0.133540,
		38.099125, 35.554161, 38.989540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418236, 35.577045, 39.513924>,  <37.470760, 35.848133, 38.896061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418236, 35.577045, 39.513924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811157, 35.525188, 39.459858>,  <38.046909, 35.494072, 39.427418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811157, 35.525188, 39.459858>,  <37.418236, 35.577045, 39.513924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811157, 35.525188, 39.459858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129902, -0.048258, 0.990352,
		-0.134918, -0.990385, -0.030563,
		0.982304, -0.129647, -0.135164,
		38.105850, 35.486294, 39.419308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551781, 35.078327, 39.849518>,  <37.418236, 35.577045, 39.513924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551781, 35.078327, 39.849518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910103, 35.252201, 39.812469>,  <38.125095, 35.356525, 39.790241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910103, 35.252201, 39.812469>,  <37.551781, 35.078327, 39.849518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910103, 35.252201, 39.812469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117674, -0.031020, 0.992568,
		0.428581, -0.900048, -0.078939,
		0.895808, 0.434685, -0.092618,
		38.178844, 35.382607, 39.784683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127140, 34.669319, 40.222675>,  <37.551781, 35.078327, 39.849518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127140, 34.669319, 40.222675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219551, 35.058208, 40.207634>,  <38.274998, 35.291542, 40.198608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219551, 35.058208, 40.207634>,  <38.127140, 34.669319, 40.222675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219551, 35.058208, 40.207634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163258, -0.000640, 0.986583,
		0.959152, -0.234065, -0.158871,
		0.231026, 0.972221, -0.037599,
		38.288860, 35.349876, 40.196354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820099, 34.756435, 40.564690>,  <38.127140, 34.669319, 40.222675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820099, 34.756435, 40.564690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634632, 35.110489, 40.580395>,  <38.523354, 35.322922, 40.589817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634632, 35.110489, 40.580395>,  <38.820099, 34.756435, 40.564690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634632, 35.110489, 40.580395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141503, 0.030230, 0.989476,
		0.874636, 0.464345, -0.139266,
		-0.463668, 0.885138, 0.039266,
		38.495533, 35.376030, 40.592175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148384, 35.069164, 41.067734>,  <38.820099, 34.756435, 40.564690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148384, 35.069164, 41.067734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811981, 35.284172, 41.043175>,  <38.610138, 35.413177, 41.028439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811981, 35.284172, 41.043175>,  <39.148384, 35.069164, 41.067734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811981, 35.284172, 41.043175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032036, 0.063813, 0.997447,
		0.540067, 0.840832, -0.036448,
		-0.841012, 0.537521, -0.061401,
		38.559677, 35.445427, 41.024754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189110, 35.532619, 41.658775>,  <39.148384, 35.069164, 41.067734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189110, 35.532619, 41.658775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813519, 35.566303, 41.525372>,  <38.588165, 35.586514, 41.445328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813519, 35.566303, 41.525372>,  <39.189110, 35.532619, 41.658775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813519, 35.566303, 41.525372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294669, 0.303274, 0.906198,
		0.177459, 0.949175, -0.259953,
		-0.938977, 0.084213, -0.333511,
		38.531826, 35.591568, 41.425320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880787, 36.266270, 41.794487>,  <39.189110, 35.532619, 41.658775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880787, 36.266270, 41.794487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576450, 36.007366, 41.775841>,  <38.393848, 35.852024, 41.764652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576450, 36.007366, 41.775841>,  <38.880787, 36.266270, 41.794487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576450, 36.007366, 41.775841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277775, 0.259913, 0.924817,
		-0.586483, 0.716587, -0.377546,
		-0.760841, -0.647262, -0.046616,
		38.348198, 35.813187, 41.761856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283211, 36.627148, 41.986103>,  <38.880787, 36.266270, 41.794487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283211, 36.627148, 41.986103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187504, 36.244110, 42.050301>,  <38.130077, 36.014286, 42.088818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187504, 36.244110, 42.050301>,  <38.283211, 36.627148, 41.986103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187504, 36.244110, 42.050301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399361, 0.247723, 0.882691,
		-0.885020, 0.147107, -0.441700,
		-0.239270, -0.957597, 0.160491,
		38.115723, 35.956829, 42.098446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591370, 36.642162, 42.161053>,  <38.283211, 36.627148, 41.986103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591370, 36.642162, 42.161053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732231, 36.294296, 42.299423>,  <37.816750, 36.085575, 42.382446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732231, 36.294296, 42.299423>,  <37.591370, 36.642162, 42.161053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732231, 36.294296, 42.299423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360174, 0.215222, 0.907719,
		-0.863865, -0.444251, -0.237441,
		0.352153, -0.869667, 0.345931,
		37.837875, 36.033398, 42.403202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160145, 36.462219, 42.612862>,  <37.591370, 36.642162, 42.161053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160145, 36.462219, 42.612862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450516, 36.201923, 42.701920>,  <37.624737, 36.045746, 42.755356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450516, 36.201923, 42.701920>,  <37.160145, 36.462219, 42.612862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450516, 36.201923, 42.701920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148708, 0.167553, 0.974583,
		-0.671505, -0.740582, 0.024861,
		0.725925, -0.650741, 0.222644,
		37.668293, 36.006702, 42.768711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820076, 36.000584, 43.072380>,  <37.160145, 36.462219, 42.612862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820076, 36.000584, 43.072380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214352, 35.979015, 43.136276>,  <37.450916, 35.966072, 43.174614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214352, 35.979015, 43.136276>,  <36.820076, 36.000584, 43.072380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214352, 35.979015, 43.136276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150802, 0.141628, 0.978366,
		-0.075380, -0.988450, 0.131468,
		0.985686, -0.053924, 0.159736,
		37.510056, 35.962837, 43.184196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868130, 35.681797, 43.697365>,  <36.820076, 36.000584, 43.072380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868130, 35.681797, 43.697365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229702, 35.850880, 43.671375>,  <37.446648, 35.952332, 43.655781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229702, 35.850880, 43.671375>,  <36.868130, 35.681797, 43.697365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229702, 35.850880, 43.671375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036050, 0.226687, 0.973300,
		0.426152, -0.877456, 0.220149,
		0.903933, 0.422711, -0.064971,
		37.500881, 35.977692, 43.651882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217693, 35.430790, 44.249504>,  <36.868130, 35.681797, 43.697365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217693, 35.430790, 44.249504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411606, 35.764309, 44.143845>,  <37.527954, 35.964420, 44.080448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411606, 35.764309, 44.143845>,  <37.217693, 35.430790, 44.249504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411606, 35.764309, 44.143845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190223, 0.395285, 0.898646,
		0.853702, -0.385396, 0.350232,
		0.484776, 0.833798, -0.264145,
		37.557037, 36.014450, 44.064602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431835, 35.605804, 44.799004>,  <37.217693, 35.430790, 44.249504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431835, 35.605804, 44.799004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471107, 35.940979, 44.584255>,  <37.494671, 36.142082, 44.455406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471107, 35.940979, 44.584255>,  <37.431835, 35.605804, 44.799004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471107, 35.940979, 44.584255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228859, 0.544026, 0.807254,
		0.968496, 0.043610, 0.245182,
		0.098181, 0.837934, -0.536868,
		37.500561, 36.192360, 44.423195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960037, 36.091766, 45.155121>,  <37.431835, 35.605804, 44.799004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960037, 36.091766, 45.155121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720604, 36.308620, 44.919228>,  <37.576942, 36.438732, 44.777691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720604, 36.308620, 44.919228>,  <37.960037, 36.091766, 45.155121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720604, 36.308620, 44.919228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108890, 0.674293, 0.730392,
		0.793626, 0.501415, -0.344586,
		-0.598582, 0.542136, -0.589735,
		37.541031, 36.471260, 44.742306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167397, 36.795567, 45.256538>,  <37.960037, 36.091766, 45.155121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167397, 36.795567, 45.256538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804142, 36.823395, 45.091393>,  <37.586189, 36.840092, 44.992306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804142, 36.823395, 45.091393>,  <38.167397, 36.795567, 45.256538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804142, 36.823395, 45.091393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253873, 0.692633, 0.675136,
		0.332932, 0.717928, -0.611340,
		-0.908132, 0.069572, -0.412862,
		37.531704, 36.844265, 44.967533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982368, 37.465973, 45.186306>,  <38.167397, 36.795567, 45.256538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982368, 37.465973, 45.186306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615128, 37.308865, 45.165077>,  <37.394783, 37.214600, 45.152340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615128, 37.308865, 45.165077>,  <37.982368, 37.465973, 45.186306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615128, 37.308865, 45.165077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335732, 0.699535, 0.630821,
		-0.210639, 0.596979, -0.774111,
		-0.918104, -0.392770, -0.053076,
		37.339695, 37.191032, 45.149155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566086, 37.977928, 45.044434>,  <37.982368, 37.465973, 45.186306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566086, 37.977928, 45.044434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305302, 37.714329, 45.194454>,  <37.148830, 37.556168, 45.284466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305302, 37.714329, 45.194454>,  <37.566086, 37.977928, 45.044434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305302, 37.714329, 45.194454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389838, 0.715565, 0.579649,
		-0.650367, 0.231696, -0.723422,
		-0.651958, -0.659002, 0.375055,
		37.109715, 37.516628, 45.306973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871925, 38.207829, 44.858086>,  <37.566086, 37.977928, 45.044434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871925, 38.207829, 44.858086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838493, 37.963184, 45.172779>,  <36.818436, 37.816399, 45.361595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838493, 37.963184, 45.172779>,  <36.871925, 38.207829, 44.858086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838493, 37.963184, 45.172779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508446, 0.705166, 0.494189,
		-0.857028, -0.358705, -0.369911,
		-0.083581, -0.611613, 0.786729,
		36.813419, 37.779701, 45.408798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197910, 38.426689, 45.180817>,  <36.871925, 38.207829, 44.858086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197910, 38.426689, 45.180817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386547, 38.229614, 45.473354>,  <36.499729, 38.111370, 45.648876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386547, 38.229614, 45.473354>,  <36.197910, 38.426689, 45.180817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386547, 38.229614, 45.473354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515567, 0.518786, 0.681947,
		-0.715398, -0.698655, -0.009360,
		0.471590, -0.492689, 0.731341,
		36.528023, 38.081806, 45.692757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712112, 38.409069, 45.780174>,  <36.197910, 38.426689, 45.180817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712112, 38.409069, 45.780174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056446, 38.314129, 45.960236>,  <36.263046, 38.257164, 46.068272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056446, 38.314129, 45.960236>,  <35.712112, 38.409069, 45.780174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056446, 38.314129, 45.960236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227086, 0.612453, 0.757188,
		-0.455412, -0.754034, 0.473321,
		0.860832, -0.237348, 0.450149,
		36.314697, 38.242924, 46.095280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571171, 38.244064, 46.573261>,  <35.712112, 38.409069, 45.780174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571171, 38.244064, 46.573261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956852, 38.349766, 46.582134>,  <36.188259, 38.413185, 46.587456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956852, 38.349766, 46.582134>,  <35.571171, 38.244064, 46.573261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956852, 38.349766, 46.582134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135776, 0.420110, 0.897258,
		0.227782, -0.868147, 0.440949,
		0.964199, 0.264250, 0.022180,
		36.246113, 38.429043, 46.588787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586796, 38.515087, 47.358585>,  <35.571171, 38.244064, 46.573261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586796, 38.515087, 47.358585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941402, 38.597275, 47.192760>,  <36.154167, 38.646587, 47.093266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941402, 38.597275, 47.192760>,  <35.586796, 38.515087, 47.358585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941402, 38.597275, 47.192760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208808, 0.621902, 0.754743,
		0.412892, -0.755660, 0.508426,
		0.886521, 0.205464, -0.414566,
		36.207359, 38.658913, 47.068390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048470, 38.418068, 47.822018>,  <35.586796, 38.515087, 47.358585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048470, 38.418068, 47.822018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204929, 38.679081, 47.562420>,  <36.298805, 38.835690, 47.406662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204929, 38.679081, 47.562420>,  <36.048470, 38.418068, 47.822018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204929, 38.679081, 47.562420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192882, 0.631397, 0.751089,
		0.899888, -0.418968, 0.121109,
		0.391150, 0.652536, -0.648998,
		36.322273, 38.874844, 47.367722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774189, 38.684803, 48.029400>,  <36.048470, 38.418068, 47.822018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774189, 38.684803, 48.029400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625904, 38.976730, 47.799637>,  <36.536934, 39.151886, 47.661777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625904, 38.976730, 47.799637>,  <36.774189, 38.684803, 48.029400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625904, 38.976730, 47.799637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139094, 0.655127, 0.742605,
		0.918274, 0.195395, -0.344375,
		-0.370711, 0.729815, -0.574407,
		36.514690, 39.195675, 47.627316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258907, 39.261894, 48.097733>,  <36.774189, 38.684803, 48.029400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258907, 39.261894, 48.097733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924404, 39.416290, 47.941948>,  <36.723701, 39.508926, 47.848476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924404, 39.416290, 47.941948>,  <37.258907, 39.261894, 48.097733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924404, 39.416290, 47.941948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056288, 0.766943, 0.639241,
		0.545435, 0.512651, -0.663091,
		-0.836261, 0.385989, -0.389462,
		36.673527, 39.532085, 47.825108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433353, 39.930477, 47.958363>,  <37.258907, 39.261894, 48.097733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433353, 39.930477, 47.958363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035137, 39.915615, 47.993065>,  <36.796207, 39.906696, 48.013885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035137, 39.915615, 47.993065>,  <37.433353, 39.930477, 47.958363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035137, 39.915615, 47.993065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029109, 0.753504, 0.656799,
		-0.089775, 0.656392, -0.749059,
		-0.995537, -0.037160, 0.086753,
		36.736477, 39.904469, 48.019093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181961, 40.630779, 47.862637>,  <37.433353, 39.930477, 47.958363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181961, 40.630779, 47.862637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881035, 40.473370, 48.073978>,  <36.700478, 40.378925, 48.200783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881035, 40.473370, 48.073978>,  <37.181961, 40.630779, 47.862637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881035, 40.473370, 48.073978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043743, 0.830060, 0.555957,
		-0.657346, 0.395145, -0.641683,
		-0.752318, -0.393525, 0.528352,
		36.655338, 40.355312, 48.232483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590542, 41.075363, 48.260319>,  <37.181961, 40.630779, 47.862637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590542, 41.075363, 48.260319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672386, 41.466419, 48.240910>,  <37.721493, 41.701054, 48.229263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672386, 41.466419, 48.240910>,  <37.590542, 41.075363, 48.260319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672386, 41.466419, 48.240910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785221, -0.193537, -0.588192,
		-0.584432, 0.082249, -0.807264,
		0.204614, 0.977639, -0.048526,
		37.733768, 41.759712, 48.226353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412186, 41.384552, 47.605530>,  <37.590542, 41.075363, 48.260319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412186, 41.384552, 47.605530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694298, 41.615704, 47.769791>,  <37.863564, 41.754395, 47.868347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694298, 41.615704, 47.769791>,  <37.412186, 41.384552, 47.605530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694298, 41.615704, 47.769791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562932, -0.104412, -0.819882,
		-0.430913, 0.809418, -0.398945,
		0.705281, 0.577876, 0.410654,
		37.905884, 41.789066, 47.892986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525597, 41.909496, 47.142490>,  <37.412186, 41.384552, 47.605530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525597, 41.909496, 47.142490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847462, 41.905704, 47.379955>,  <38.040581, 41.903427, 47.522434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847462, 41.905704, 47.379955>,  <37.525597, 41.909496, 47.142490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847462, 41.905704, 47.379955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556524, -0.336353, -0.759702,
		0.206882, 0.941688, -0.265373,
		0.804662, -0.009483, 0.593658,
		38.088860, 41.902859, 47.558052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079910, 42.278641, 46.730412>,  <37.525597, 41.909496, 47.142490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079910, 42.278641, 46.730412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296623, 42.110653, 47.021641>,  <38.426651, 42.009861, 47.196381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296623, 42.110653, 47.021641>,  <38.079910, 42.278641, 46.730412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296623, 42.110653, 47.021641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492144, -0.543704, -0.679838,
		0.681373, 0.726642, -0.087880,
		0.541780, -0.419974, 0.728077,
		38.459156, 41.984661, 47.240063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693974, 42.156071, 46.479294>,  <38.079910, 42.278641, 46.730412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693974, 42.156071, 46.479294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689182, 41.881725, 46.770348>,  <38.686310, 41.717117, 46.944981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689182, 41.881725, 46.770348>,  <38.693974, 42.156071, 46.479294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689182, 41.881725, 46.770348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376558, -0.677210, -0.632132,
		0.926316, 0.266427, 0.266376,
		-0.011975, -0.685860, 0.727635,
		38.685589, 41.675968, 46.988640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389328, 41.772552, 46.477692>,  <38.693974, 42.156071, 46.479294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389328, 41.772552, 46.477692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118855, 41.538471, 46.656723>,  <38.956570, 41.398022, 46.764141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118855, 41.538471, 46.656723>,  <39.389328, 41.772552, 46.477692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118855, 41.538471, 46.656723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163184, -0.711384, -0.683596,
		0.718438, -0.389196, 0.576518,
		-0.676179, -0.585200, 0.447575,
		38.916000, 41.362911, 46.790997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750317, 40.984722, 46.646297>,  <39.389328, 41.772552, 46.477692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750317, 40.984722, 46.646297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351868, 40.949787, 46.642174>,  <39.112797, 40.928825, 46.639698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351868, 40.949787, 46.642174>,  <39.750317, 40.984722, 46.646297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351868, 40.949787, 46.642174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073872, -0.767301, -0.637018,
		0.047726, -0.635311, 0.770780,
		-0.996125, -0.087341, -0.010311,
		39.053032, 40.923584, 46.639080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659843, 40.252640, 46.572109>,  <39.750317, 40.984722, 46.646297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659843, 40.252640, 46.572109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303856, 40.393097, 46.455727>,  <39.090263, 40.477371, 46.385899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303856, 40.393097, 46.455727>,  <39.659843, 40.252640, 46.572109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303856, 40.393097, 46.455727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057811, -0.719756, -0.691816,
		-0.452345, -0.598873, 0.660860,
		-0.889968, 0.351144, -0.290956,
		39.036865, 40.498440, 46.368439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065624, 39.580132, 46.551865>,  <39.659843, 40.252640, 46.572109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065624, 39.580132, 46.551865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959827, 39.892719, 46.325821>,  <38.896351, 40.080273, 46.190193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959827, 39.892719, 46.325821>,  <39.065624, 39.580132, 46.551865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959827, 39.892719, 46.325821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035381, -0.593446, -0.804096,
		-0.963738, -0.192684, 0.184611,
		-0.264493, 0.781470, -0.565110,
		38.880478, 40.127159, 46.156288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407307, 39.342133, 46.181297>,  <39.065624, 39.580132, 46.551865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407307, 39.342133, 46.181297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553162, 39.656570, 45.981663>,  <38.640675, 39.845234, 45.861881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553162, 39.656570, 45.981663>,  <38.407307, 39.342133, 46.181297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553162, 39.656570, 45.981663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208638, -0.453389, -0.866550,
		-0.907473, 0.420108, -0.001314,
		0.364640, 0.786096, -0.499089,
		38.662552, 39.892399, 45.831936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981373, 39.217941, 45.650192>,  <38.407307, 39.342133, 46.181297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981373, 39.217941, 45.650192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274555, 39.465492, 45.537212>,  <38.450462, 39.614021, 45.469425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274555, 39.465492, 45.537212>,  <37.981373, 39.217941, 45.650192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274555, 39.465492, 45.537212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060443, -0.472792, -0.879099,
		-0.677589, 0.627266, -0.383941,
		0.732953, 0.618874, -0.282445,
		38.494442, 39.651154, 45.452480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800335, 39.351318, 44.978069>,  <37.981373, 39.217941, 45.650192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800335, 39.351318, 44.978069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191875, 39.431435, 44.994759>,  <38.426800, 39.479504, 45.004772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191875, 39.431435, 44.994759>,  <37.800335, 39.351318, 44.978069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191875, 39.431435, 44.994759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150275, -0.565467, -0.810965,
		-0.138837, 0.800081, -0.583605,
		0.978847, 0.200293, 0.041725,
		38.485531, 39.491524, 45.007275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905212, 39.872623, 44.499500>,  <37.800335, 39.351318, 44.978069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905212, 39.872623, 44.499500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223667, 39.637920, 44.558670>,  <38.414742, 39.497101, 44.594173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223667, 39.637920, 44.558670>,  <37.905212, 39.872623, 44.499500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223667, 39.637920, 44.558670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041345, -0.191141, -0.980692,
		0.603699, 0.786883, -0.127915,
		0.796139, -0.586754, 0.147926,
		38.462509, 39.461895, 44.603046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311756, 40.013634, 43.934380>,  <37.905212, 39.872623, 44.499500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311756, 40.013634, 43.934380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499920, 39.685375, 44.064148>,  <38.612816, 39.488419, 44.142010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499920, 39.685375, 44.064148>,  <38.311756, 40.013634, 43.934380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499920, 39.685375, 44.064148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204015, -0.256543, -0.944756,
		0.858543, 0.510607, 0.046745,
		0.470407, -0.820650, 0.324425,
		38.641041, 39.439178, 44.161476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868500, 39.928673, 43.472656>,  <38.311756, 40.013634, 43.934380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868500, 39.928673, 43.472656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858192, 39.566120, 43.641331>,  <38.852009, 39.348591, 43.742535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858192, 39.566120, 43.641331>,  <38.868500, 39.928673, 43.472656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858192, 39.566120, 43.641331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343159, -0.404210, -0.847854,
		0.938924, 0.122859, 0.321447,
		-0.025766, -0.906378, 0.421682,
		38.850464, 39.294209, 43.767834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360752, 39.704170, 43.274765>,  <38.868500, 39.928673, 43.472656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360752, 39.704170, 43.274765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162312, 39.370613, 43.371525>,  <39.043247, 39.170479, 43.429581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162312, 39.370613, 43.371525>,  <39.360752, 39.704170, 43.274765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162312, 39.370613, 43.371525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380032, -0.459038, -0.803032,
		0.780680, -0.306454, 0.544632,
		-0.496099, -0.833889, 0.241899,
		39.013481, 39.120445, 43.444096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875591, 39.157173, 43.258301>,  <39.360752, 39.704170, 43.274765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875591, 39.157173, 43.258301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521984, 38.970467, 43.248188>,  <39.309818, 38.858444, 43.242123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521984, 38.970467, 43.248188>,  <39.875591, 39.157173, 43.258301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521984, 38.970467, 43.248188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326341, -0.577540, -0.748297,
		0.334681, -0.669759, 0.662881,
		-0.884019, -0.466767, -0.025278,
		39.256779, 38.830437, 43.240604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979271, 38.446991, 43.235149>,  <39.875591, 39.157173, 43.258301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979271, 38.446991, 43.235149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616138, 38.484890, 43.071751>,  <39.398258, 38.507629, 42.973713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616138, 38.484890, 43.071751>,  <39.979271, 38.446991, 43.235149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616138, 38.484890, 43.071751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330611, -0.437535, -0.836218,
		-0.257958, -0.894196, 0.365883,
		-0.907829, 0.094744, -0.408497,
		39.343788, 38.513313, 42.949203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836418, 37.789810, 42.876095>,  <39.979271, 38.446991, 43.235149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836418, 37.789810, 42.876095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566551, 38.050121, 42.736774>,  <39.404629, 38.206306, 42.653183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566551, 38.050121, 42.736774>,  <39.836418, 37.789810, 42.876095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566551, 38.050121, 42.736774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145717, -0.345158, -0.927164,
		-0.723594, -0.676282, 0.138039,
		-0.674669, 0.650775, -0.348300,
		39.364151, 38.245354, 42.632286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359070, 37.421898, 42.486103>,  <39.836418, 37.789810, 42.876095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359070, 37.421898, 42.486103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332378, 37.797688, 42.351685>,  <39.316364, 38.023163, 42.271034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332378, 37.797688, 42.351685>,  <39.359070, 37.421898, 42.486103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332378, 37.797688, 42.351685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022865, -0.335272, -0.941844,
		-0.997509, -0.070533, 0.000892,
		-0.066730, 0.939477, -0.336050,
		39.312359, 38.079529, 42.250870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731255, 37.607967, 41.962399>,  <39.359070, 37.421898, 42.486103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731255, 37.607967, 41.962399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994186, 37.899494, 41.885723>,  <39.151947, 38.074409, 41.839718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994186, 37.899494, 41.885723>,  <38.731255, 37.607967, 41.962399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994186, 37.899494, 41.885723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076691, -0.188344, -0.979104,
		-0.749690, 0.658296, -0.067911,
		0.657331, 0.728816, -0.191685,
		39.191387, 38.118137, 41.828217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541714, 37.765625, 41.279835>,  <38.731255, 37.607967, 41.962399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541714, 37.765625, 41.279835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903847, 37.931755, 41.315327>,  <39.121128, 38.031433, 41.336620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903847, 37.931755, 41.315327>,  <38.541714, 37.765625, 41.279835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903847, 37.931755, 41.315327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207727, -0.250818, -0.945484,
		-0.370425, 0.874413, -0.313348,
		0.905337, 0.415322, 0.088730,
		39.175449, 38.056351, 41.341946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643879, 38.165058, 40.654976>,  <38.541714, 37.765625, 41.279835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643879, 38.165058, 40.654976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014366, 38.137157, 40.803173>,  <39.236656, 38.120419, 40.892090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014366, 38.137157, 40.803173>,  <38.643879, 38.165058, 40.654976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014366, 38.137157, 40.803173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344065, -0.245304, -0.906336,
		0.154099, 0.966934, -0.203205,
		0.926214, -0.069750, 0.370489,
		39.292229, 38.116234, 40.914318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105965, 38.582851, 40.191040>,  <38.643879, 38.165058, 40.654976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105965, 38.582851, 40.191040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371586, 38.342319, 40.368778>,  <39.530956, 38.198002, 40.475422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371586, 38.342319, 40.368778>,  <39.105965, 38.582851, 40.191040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371586, 38.342319, 40.368778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354701, -0.269798, -0.895207,
		0.658198, 0.752071, 0.034133,
		0.664051, -0.601330, 0.444341,
		39.570801, 38.161919, 40.502079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694874, 38.663113, 39.768250>,  <39.105965, 38.582851, 40.191040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694874, 38.663113, 39.768250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715866, 38.325245, 39.981335>,  <39.728462, 38.122524, 40.109184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715866, 38.325245, 39.981335>,  <39.694874, 38.663113, 39.768250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715866, 38.325245, 39.981335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578176, -0.409240, -0.705858,
		0.814222, 0.345046, 0.466889,
		0.052484, -0.844669, 0.532709,
		39.731609, 38.071846, 40.141148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364548, 38.561405, 39.630489>,  <39.694874, 38.663113, 39.768250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364548, 38.561405, 39.630489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173359, 38.236790, 39.764923>,  <40.058647, 38.042023, 39.845585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173359, 38.236790, 39.764923>,  <40.364548, 38.561405, 39.630489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173359, 38.236790, 39.764923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507444, -0.567429, -0.648479,
		0.716970, -0.139408, 0.683022,
		-0.477969, -0.811536, 0.336088,
		40.029968, 37.993328, 39.865749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858120, 38.100471, 39.745937>,  <40.364548, 38.561405, 39.630489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858120, 38.100471, 39.745937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528286, 37.879799, 39.695801>,  <40.330383, 37.747395, 39.665718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528286, 37.879799, 39.695801>,  <40.858120, 38.100471, 39.745937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528286, 37.879799, 39.695801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457049, -0.519049, -0.722284,
		0.333412, -0.652871, 0.680144,
		-0.824587, -0.551677, -0.125337,
		40.280910, 37.714294, 39.658199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123161, 37.347721, 39.672600>,  <40.858120, 38.100471, 39.745937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123161, 37.347721, 39.672600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757748, 37.372078, 39.511730>,  <40.538498, 37.386692, 39.415207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757748, 37.372078, 39.511730>,  <41.123161, 37.347721, 39.672600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757748, 37.372078, 39.511730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340070, -0.428140, -0.837286,
		-0.223170, -0.901659, 0.370414,
		-0.913536, 0.060890, -0.402175,
		40.483688, 37.390347, 39.391079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105331, 36.745708, 39.229160>,  <41.123161, 37.347721, 39.672600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105331, 36.745708, 39.229160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808350, 36.979279, 39.097832>,  <40.630161, 37.119419, 39.019035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808350, 36.979279, 39.097832>,  <41.105331, 36.745708, 39.229160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808350, 36.979279, 39.097832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100885, -0.387062, -0.916518,
		-0.662259, -0.713594, 0.228466,
		-0.742452, 0.583924, -0.328326,
		40.585613, 37.154457, 38.999332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667171, 36.348545, 38.858696>,  <41.105331, 36.745708, 39.229160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667171, 36.348545, 38.858696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518330, 36.698341, 38.734249>,  <40.429024, 36.908218, 38.659580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518330, 36.698341, 38.734249>,  <40.667171, 36.348545, 38.858696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518330, 36.698341, 38.734249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061885, -0.357819, -0.931738,
		-0.926125, -0.327452, 0.187264,
		-0.372106, 0.874495, -0.311121,
		40.406696, 36.960690, 38.640911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180073, 36.188679, 38.410923>,  <40.667171, 36.348545, 38.858696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180073, 36.188679, 38.410923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272270, 36.564968, 38.311386>,  <40.327587, 36.790741, 38.251663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272270, 36.564968, 38.311386>,  <40.180073, 36.188679, 38.410923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272270, 36.564968, 38.311386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139363, -0.221174, -0.965225,
		-0.963043, 0.257156, 0.080122,
		0.230492, 0.940719, -0.248838,
		40.341419, 36.847183, 38.236736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695652, 36.448387, 37.948006>,  <40.180073, 36.188679, 38.410923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695652, 36.448387, 37.948006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021976, 36.673122, 37.893185>,  <40.217773, 36.807964, 37.860291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021976, 36.673122, 37.893185>,  <39.695652, 36.448387, 37.948006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021976, 36.673122, 37.893185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079132, -0.126313, -0.988829,
		-0.572874, 0.817547, -0.058588,
		0.815815, 0.561838, -0.137056,
		40.266720, 36.841675, 37.852070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578144, 36.859158, 37.381042>,  <39.695652, 36.448387, 37.948006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578144, 36.859158, 37.381042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977024, 36.858990, 37.410961>,  <40.216351, 36.858891, 37.428913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977024, 36.858990, 37.410961>,  <39.578144, 36.859158, 37.381042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977024, 36.858990, 37.410961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072684, -0.230551, -0.970342,
		0.017647, 0.973060, -0.229875,
		0.997199, -0.000415, 0.074795,
		40.276184, 36.858864, 37.433399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850410, 37.349754, 36.860306>,  <39.578144, 36.859158, 37.381042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850410, 37.349754, 36.860306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124977, 37.074009, 36.952927>,  <40.289719, 36.908562, 37.008499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124977, 37.074009, 36.952927>,  <39.850410, 37.349754, 36.860306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124977, 37.074009, 36.952927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198055, -0.129165, -0.971643,
		0.699720, 0.712811, 0.047871,
		0.686415, -0.689359, 0.231555,
		40.330902, 36.867203, 37.022392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272762, 37.392563, 36.293823>,  <39.850410, 37.349754, 36.860306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272762, 37.392563, 36.293823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390083, 37.058277, 36.479538>,  <40.460476, 36.857708, 36.590965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390083, 37.058277, 36.479538>,  <40.272762, 37.392563, 36.293823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390083, 37.058277, 36.479538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270406, -0.393294, -0.878750,
		0.916981, 0.383284, 0.110628,
		0.293301, -0.835711, 0.464285,
		40.478073, 36.807564, 36.618824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895222, 37.305630, 35.958641>,  <40.272762, 37.392563, 36.293823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895222, 37.305630, 35.958641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778793, 36.960979, 36.124958>,  <40.708939, 36.754189, 36.224751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778793, 36.960979, 36.124958>,  <40.895222, 37.305630, 35.958641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778793, 36.960979, 36.124958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284519, -0.492910, -0.822246,
		0.913416, -0.121027, 0.388618,
		-0.291067, -0.861622, 0.415797,
		40.691475, 36.702492, 36.249699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336830, 36.732513, 35.666477>,  <40.895222, 37.305630, 35.958641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336830, 36.732513, 35.666477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037899, 36.524162, 35.831490>,  <40.858540, 36.399151, 35.930496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037899, 36.524162, 35.831490>,  <41.336830, 36.732513, 35.666477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037899, 36.524162, 35.831490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088715, -0.693523, -0.714951,
		0.658504, -0.497706, 0.564501,
		-0.747330, -0.520878, 0.412534,
		40.813702, 36.367897, 35.955250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645901, 36.087685, 35.515240>,  <41.336830, 36.732513, 35.666477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645901, 36.087685, 35.515240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260662, 36.037426, 35.610455>,  <41.029518, 36.007271, 35.667583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260662, 36.037426, 35.610455>,  <41.645901, 36.087685, 35.515240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260662, 36.037426, 35.610455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096404, -0.664666, -0.740895,
		0.251301, -0.736500, 0.628024,
		-0.963096, -0.125644, 0.238033,
		40.971733, 35.999733, 35.681866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591724, 35.404293, 35.646244>,  <41.645901, 36.087685, 35.515240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591724, 35.404293, 35.646244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225845, 35.535706, 35.552094>,  <41.006317, 35.614552, 35.495602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225845, 35.535706, 35.552094>,  <41.591724, 35.404293, 35.646244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225845, 35.535706, 35.552094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120220, -0.777220, -0.617637,
		-0.385853, -0.536652, 0.750415,
		-0.914694, 0.328532, -0.235377,
		40.951439, 35.634266, 35.481480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108528, 34.823433, 35.770683>,  <41.591724, 35.404293, 35.646244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108528, 34.823433, 35.770683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951199, 35.064014, 35.492531>,  <40.856800, 35.208363, 35.325642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951199, 35.064014, 35.492531>,  <41.108528, 34.823433, 35.770683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951199, 35.064014, 35.492531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064856, -0.736305, -0.673534,
		-0.917109, -0.310017, 0.250599,
		-0.393325, 0.601452, -0.695379,
		40.833202, 35.244450, 35.283916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599316, 34.398567, 35.306431>,  <41.108528, 34.823433, 35.770683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599316, 34.398567, 35.306431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764938, 34.696457, 35.097076>,  <40.864311, 34.875191, 34.971462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764938, 34.696457, 35.097076>,  <40.599316, 34.398567, 35.306431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764938, 34.696457, 35.097076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085667, -0.540560, -0.836933,
		-0.906210, 0.391376, -0.160024,
		0.414058, 0.744728, -0.523389,
		40.889156, 34.919876, 34.940060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169865, 34.584202, 34.752514>,  <40.599316, 34.398567, 35.306431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169865, 34.584202, 34.752514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549110, 34.638752, 34.637634>,  <40.776657, 34.671482, 34.568707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549110, 34.638752, 34.637634>,  <40.169865, 34.584202, 34.752514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549110, 34.638752, 34.637634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168853, -0.549423, -0.818305,
		-0.269393, 0.824340, -0.497887,
		0.948112, 0.136376, -0.287203,
		40.833546, 34.679665, 34.551472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055275, 34.249054, 34.183903>,  <40.169865, 34.584202, 34.752514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055275, 34.249054, 34.183903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448555, 34.317890, 34.208233>,  <40.684525, 34.359192, 34.222832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448555, 34.317890, 34.208233>,  <40.055275, 34.249054, 34.183903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448555, 34.317890, 34.208233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145489, -0.537685, -0.830499,
		-0.110212, 0.825397, -0.553690,
		0.983202, 0.172087, 0.060827,
		40.743515, 34.369514, 34.226482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400482, 34.426899, 33.553898>,  <40.055275, 34.249054, 34.183903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400482, 34.426899, 33.553898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666245, 34.241482, 33.788403>,  <40.825703, 34.130230, 33.929104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666245, 34.241482, 33.788403>,  <40.400482, 34.426899, 33.553898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666245, 34.241482, 33.788403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066925, -0.744371, -0.664404,
		0.744373, 0.480667, -0.463538,
		0.664402, -0.463542, 0.586258,
		40.865566, 34.102421, 33.964279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001598, 34.264175, 33.115547>,  <40.400482, 34.426899, 33.553898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001598, 34.264175, 33.115547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985416, 34.025764, 33.436325>,  <40.975708, 33.882717, 33.628792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985416, 34.025764, 33.436325>,  <41.001598, 34.264175, 33.115547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985416, 34.025764, 33.436325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055172, -0.800044, -0.597399,
		0.997657, -0.068411, -0.000520,
		-0.040453, -0.596028, 0.801944,
		40.973282, 33.846954, 33.676907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408466, 34.901009, 32.894478>,  <41.001598, 34.264175, 33.115547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408466, 34.901009, 32.894478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083244, 35.058826, 33.065720>,  <40.888111, 35.153519, 33.168465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083244, 35.058826, 33.065720>,  <41.408466, 34.901009, 32.894478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083244, 35.058826, 33.065720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433531, 0.080484, -0.897537,
		-0.388574, -0.915345, 0.105609,
		-0.813056, 0.394545, 0.428105,
		40.839329, 35.177189, 33.194153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890808, 34.866302, 32.231941>,  <41.408466, 34.901009, 32.894478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890808, 34.866302, 32.231941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218914, 35.009735, 32.410191>,  <42.415779, 35.095795, 32.517139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218914, 35.009735, 32.410191>,  <41.890808, 34.866302, 32.231941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218914, 35.009735, 32.410191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188491, -0.905033, 0.381296,
		0.540029, -0.228769, -0.809959,
		0.820268, 0.358581, 0.445623,
		42.464996, 35.117310, 32.543877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422905, 34.466351, 32.009403>,  <41.890808, 34.866302, 32.231941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422905, 34.466351, 32.009403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492313, 34.629627, 32.367905>,  <42.533958, 34.727592, 32.583004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492313, 34.629627, 32.367905>,  <42.422905, 34.466351, 32.009403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492313, 34.629627, 32.367905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286084, -0.891709, 0.350730,
		0.942361, 0.195544, -0.271510,
		0.173525, 0.408189, 0.896254,
		42.544373, 34.752083, 32.636780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839680, 33.970787, 32.322643>,  <42.422905, 34.466351, 32.009403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839680, 33.970787, 32.322643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781967, 34.184608, 32.655735>,  <42.747337, 34.312901, 32.855591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781967, 34.184608, 32.655735>,  <42.839680, 33.970787, 32.322643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781967, 34.184608, 32.655735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126011, -0.824755, 0.551272,
		0.981480, 0.184472, 0.051639,
		-0.144284, 0.534556, 0.832726,
		42.738682, 34.344975, 32.905552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350876, 33.869415, 32.665337>,  <42.839680, 33.970787, 32.322643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350876, 33.869415, 32.665337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064766, 33.979076, 32.922466>,  <42.893101, 34.044872, 33.076744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064766, 33.979076, 32.922466>,  <43.350876, 33.869415, 32.665337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064766, 33.979076, 32.922466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083972, -0.879457, 0.468513,
		0.693781, 0.389094, 0.606031,
		-0.715274, 0.274156, 0.642823,
		42.850185, 34.061321, 33.115314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531048, 33.669224, 33.380405>,  <43.350876, 33.869415, 32.665337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531048, 33.669224, 33.380405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136585, 33.723145, 33.419044>,  <42.899910, 33.755497, 33.442226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136585, 33.723145, 33.419044>,  <43.531048, 33.669224, 33.380405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136585, 33.723145, 33.419044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079384, -0.895123, 0.438695,
		0.145600, 0.424953, 0.893429,
		-0.986153, 0.134798, 0.096596,
		42.840740, 33.763584, 33.448025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355671, 33.369877, 34.031616>,  <43.531048, 33.669224, 33.380405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355671, 33.369877, 34.031616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993336, 33.383545, 33.862720>,  <42.775936, 33.391747, 33.761383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993336, 33.383545, 33.862720>,  <43.355671, 33.369877, 34.031616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993336, 33.383545, 33.862720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233692, -0.871659, 0.430811,
		-0.353332, 0.488920, 0.797567,
		-0.905839, 0.034166, -0.422242,
		42.721584, 33.393795, 33.736050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952419, 33.049274, 34.547318>,  <43.355671, 33.369877, 34.031616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952419, 33.049274, 34.547318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747314, 33.011379, 34.206001>,  <42.624252, 32.988640, 34.001213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747314, 33.011379, 34.206001>,  <42.952419, 33.049274, 34.547318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747314, 33.011379, 34.206001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313462, -0.904617, 0.288807,
		-0.799261, 0.415563, 0.434154,
		-0.512760, -0.094741, -0.853288,
		42.593487, 32.982956, 33.950016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300022, 32.821804, 34.768314>,  <42.952419, 33.049274, 34.547318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300022, 32.821804, 34.768314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336769, 32.708000, 34.386612>,  <42.358818, 32.639717, 34.157589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336769, 32.708000, 34.386612>,  <42.300022, 32.821804, 34.768314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336769, 32.708000, 34.386612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314274, -0.917617, 0.243330,
		-0.944876, 0.277544, -0.173718,
		0.091872, -0.284511, -0.954260,
		42.364330, 32.622646, 34.100334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644600, 32.403687, 34.512016>,  <42.300022, 32.821804, 34.768314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644600, 32.403687, 34.512016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936966, 32.297775, 34.260410>,  <42.112385, 32.234230, 34.109447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936966, 32.297775, 34.260410>,  <41.644600, 32.403687, 34.512016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936966, 32.297775, 34.260410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094817, -0.952133, 0.290608,
		-0.675850, -0.152769, -0.721033,
		0.730915, -0.264774, -0.629013,
		42.156239, 32.218342, 34.071705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293270, 31.975056, 34.112049>,  <41.644600, 32.403687, 34.512016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293270, 31.975056, 34.112049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678158, 31.876122, 34.066505>,  <41.909088, 31.816761, 34.039181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678158, 31.876122, 34.066505>,  <41.293270, 31.975056, 34.112049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678158, 31.876122, 34.066505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241964, -0.968488, 0.059032,
		-0.124874, -0.029252, -0.991741,
		0.962216, -0.247337, -0.113861,
		41.966824, 31.801920, 34.032349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232220, 31.304663, 33.863289>,  <41.293270, 31.975056, 34.112049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232220, 31.304663, 33.863289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622101, 31.329695, 33.949123>,  <41.856030, 31.344713, 34.000622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622101, 31.329695, 33.949123>,  <41.232220, 31.304663, 33.863289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622101, 31.329695, 33.949123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043514, -0.994766, 0.092455,
		0.219245, -0.080778, -0.972320,
		0.974699, 0.062580, 0.214582,
		41.914509, 31.348469, 34.013496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611637, 30.847408, 33.354633>,  <41.232220, 31.304663, 33.863289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611637, 30.847408, 33.354633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851994, 30.923229, 33.665245>,  <41.996208, 30.968721, 33.851612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851994, 30.923229, 33.665245>,  <41.611637, 30.847408, 33.354633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851994, 30.923229, 33.665245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082644, -0.951538, 0.296219,
		0.795050, -0.242170, -0.556102,
		0.600887, 0.189551, 0.776534,
		42.032261, 30.980095, 33.898205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994110, 30.257925, 33.344109>,  <41.611637, 30.847408, 33.354633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994110, 30.257925, 33.344109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023914, 30.420094, 33.708542>,  <42.041798, 30.517395, 33.927204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023914, 30.420094, 33.708542>,  <41.994110, 30.257925, 33.344109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023914, 30.420094, 33.708542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045049, -0.911326, 0.409212,
		0.996202, -0.071535, -0.049641,
		0.074512, 0.405422, 0.911088,
		42.046268, 30.541719, 33.981869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557884, 29.897760, 33.609211>,  <41.994110, 30.257925, 33.344109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557884, 29.897760, 33.609211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340164, 30.030760, 33.917286>,  <42.209534, 30.110559, 34.102131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340164, 30.030760, 33.917286>,  <42.557884, 29.897760, 33.609211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340164, 30.030760, 33.917286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110248, -0.881783, 0.458589,
		0.831617, 0.334520, 0.443293,
		-0.544296, 0.332499, 0.770186,
		42.176876, 30.130510, 34.148342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944588, 29.778076, 34.276497>,  <42.557884, 29.897760, 33.609211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944588, 29.778076, 34.276497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554974, 29.782690, 34.366943>,  <42.321205, 29.785458, 34.421211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554974, 29.782690, 34.366943>,  <42.944588, 29.778076, 34.276497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554974, 29.782690, 34.366943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114753, -0.835774, 0.536948,
		0.195174, 0.548953, 0.812748,
		-0.974032, 0.011533, 0.226115,
		42.262764, 29.786150, 34.434776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983437, 29.648907, 34.897919>,  <42.944588, 29.778076, 34.276497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983437, 29.648907, 34.897919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601807, 29.569746, 34.807957>,  <42.372829, 29.522249, 34.753979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601807, 29.569746, 34.807957>,  <42.983437, 29.648907, 34.897919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601807, 29.569746, 34.807957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031606, -0.813041, 0.581348,
		-0.297903, 0.547540, 0.781955,
		-0.954073, -0.197899, -0.224902,
		42.315586, 29.510376, 34.740486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666004, 29.267410, 35.559849>,  <42.983437, 29.648907, 34.897919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666004, 29.267410, 35.559849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393482, 29.211111, 35.272514>,  <42.229969, 29.177332, 35.100113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393482, 29.211111, 35.272514>,  <42.666004, 29.267410, 35.559849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393482, 29.211111, 35.272514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115885, -0.948225, 0.295703,
		-0.722767, 0.284709, 0.629721,
		-0.681307, -0.140750, -0.718339,
		42.189091, 29.168886, 35.057014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021084, 28.920399, 35.858700>,  <42.666004, 29.267410, 35.559849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021084, 28.920399, 35.858700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010876, 28.845148, 35.465973>,  <42.004749, 28.799997, 35.230339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010876, 28.845148, 35.465973>,  <42.021084, 28.920399, 35.858700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010876, 28.845148, 35.465973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191053, -0.963113, 0.189508,
		-0.981248, 0.192415, -0.011361,
		-0.025522, -0.188125, -0.981814,
		42.003220, 28.788710, 35.171429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339062, 28.571665, 35.741085>,  <42.021084, 28.920399, 35.858700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339062, 28.571665, 35.741085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625538, 28.489428, 35.474312>,  <41.797424, 28.440086, 35.314247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625538, 28.489428, 35.474312>,  <41.339062, 28.571665, 35.741085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625538, 28.489428, 35.474312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150003, -0.978638, 0.140596,
		-0.681594, -0.000651, -0.731730,
		0.716191, -0.205591, -0.666936,
		41.840393, 28.427750, 35.274231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250496, 27.912334, 35.562256>,  <41.339062, 28.571665, 35.741085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250496, 27.912334, 35.562256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604908, 27.959749, 35.382969>,  <41.817554, 27.988197, 35.275398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604908, 27.959749, 35.382969>,  <41.250496, 27.912334, 35.562256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604908, 27.959749, 35.382969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214529, -0.961862, 0.169703,
		-0.411004, -0.246517, -0.877670,
		0.886032, 0.118537, -0.448214,
		41.870716, 27.995310, 35.248505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317375, 27.307178, 35.173798>,  <41.250496, 27.912334, 35.562256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317375, 27.307178, 35.173798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683701, 27.465242, 35.202450>,  <41.903496, 27.560080, 35.219643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683701, 27.465242, 35.202450>,  <41.317375, 27.307178, 35.173798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683701, 27.465242, 35.202450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366548, -0.895360, 0.252930,
		0.164086, -0.205380, -0.964829,
		0.915816, 0.395158, 0.071635,
		41.958447, 27.583790, 35.223942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740082, 26.890091, 34.772770>,  <41.317375, 27.307178, 35.173798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740082, 26.890091, 34.772770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957878, 27.069311, 35.056396>,  <42.088558, 27.176844, 35.226574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957878, 27.069311, 35.056396>,  <41.740082, 26.890091, 34.772770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957878, 27.069311, 35.056396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348024, -0.889851, 0.295033,
		0.763155, 0.086129, -0.640451,
		0.544495, 0.448048, 0.709069,
		42.121227, 27.203726, 35.269115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366230, 26.464008, 34.799232>,  <41.740082, 26.890091, 34.772770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366230, 26.464008, 34.799232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349312, 26.682484, 35.133869>,  <42.339161, 26.813568, 35.334652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349312, 26.682484, 35.133869>,  <42.366230, 26.464008, 34.799232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349312, 26.682484, 35.133869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428517, -0.746498, 0.509033,
		0.902543, 0.380026, -0.202474,
		-0.042299, 0.546188, 0.836594,
		42.336620, 26.846340, 35.384846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035709, 26.430155, 35.121613>,  <42.366230, 26.464008, 34.799232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035709, 26.430155, 35.121613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776169, 26.543604, 35.404045>,  <42.620445, 26.611673, 35.573505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776169, 26.543604, 35.404045>,  <43.035709, 26.430155, 35.121613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776169, 26.543604, 35.404045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497744, -0.543658, 0.675786,
		0.575532, 0.789933, 0.211585,
		-0.648856, 0.283621, 0.706077,
		42.581512, 26.628691, 35.615868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396599, 26.638821, 35.710545>,  <43.035709, 26.430155, 35.121613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396599, 26.638821, 35.710545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033615, 26.564318, 35.861187>,  <42.815826, 26.519615, 35.951572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033615, 26.564318, 35.861187>,  <43.396599, 26.638821, 35.710545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033615, 26.564318, 35.861187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408527, -0.600519, 0.687374,
		0.098130, 0.777615, 0.621036,
		-0.907456, -0.186258, 0.376606,
		42.761379, 26.508440, 35.974167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384335, 26.699562, 36.449490>,  <43.396599, 26.638821, 35.710545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384335, 26.699562, 36.449490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088181, 26.434120, 36.406689>,  <42.910488, 26.274855, 36.381008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088181, 26.434120, 36.406689>,  <43.384335, 26.699562, 36.449490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088181, 26.434120, 36.406689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379885, -0.544428, 0.747854,
		-0.554537, 0.513054, 0.655183,
		-0.740389, -0.663607, -0.107004,
		42.866062, 26.235039, 36.374588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130459, 26.253466, 37.025894>,  <43.384335, 26.699562, 36.449490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130459, 26.253466, 37.025894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351967, 26.575478, 37.110996>,  <43.484871, 26.768684, 37.162056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351967, 26.575478, 37.110996>,  <43.130459, 26.253466, 37.025894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351967, 26.575478, 37.110996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831929, 0.524149, 0.182105,
		0.035086, -0.277840, 0.959986,
		0.553772, 0.805030, 0.212753,
		43.518097, 26.816986, 37.174824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942890, 26.585777, 37.674488>,  <43.130459, 26.253466, 37.025894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942890, 26.585777, 37.674488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070988, 26.878023, 37.433277>,  <43.147846, 27.053371, 37.288551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070988, 26.878023, 37.433277>,  <42.942890, 26.585777, 37.674488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070988, 26.878023, 37.433277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928273, 0.369067, -0.045808,
		0.189090, 0.574446, 0.796403,
		0.320240, 0.730617, -0.603029,
		43.167061, 27.097208, 37.252369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620327, 27.199133, 37.922546>,  <42.942890, 26.585777, 37.674488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620327, 27.199133, 37.922546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685326, 27.186790, 37.528057>,  <42.724323, 27.179384, 37.291363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685326, 27.186790, 37.528057>,  <42.620327, 27.199133, 37.922546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685326, 27.186790, 37.528057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961022, 0.221630, -0.165278,
		0.223677, 0.974643, 0.006360,
		0.162497, -0.030856, -0.986226,
		42.734074, 27.177534, 37.232189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597530, 27.813898, 37.639400>,  <42.620327, 27.199133, 37.922546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597530, 27.813898, 37.639400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497364, 27.546625, 37.359165>,  <42.437263, 27.386261, 37.191025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497364, 27.546625, 37.359165>,  <42.597530, 27.813898, 37.639400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497364, 27.546625, 37.359165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854395, 0.492846, -0.164661,
		0.455306, 0.557345, -0.694308,
		-0.250413, -0.668184, -0.700588,
		42.422241, 27.346170, 37.148987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240692, 28.073622, 37.108315>,  <42.597530, 27.813898, 37.639400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240692, 28.073622, 37.108315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047585, 27.729610, 37.042248>,  <41.931721, 27.523203, 37.002605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047585, 27.729610, 37.042248>,  <42.240692, 28.073622, 37.108315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047585, 27.729610, 37.042248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848431, 0.506058, -0.155143,
		0.217014, 0.065237, -0.973986,
		-0.482772, -0.860028, -0.165171,
		41.902752, 27.471601, 36.992695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879955, 28.326284, 36.889156>,  <42.240692, 28.073622, 37.108315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879955, 28.326284, 36.889156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539280, 28.490252, 37.019745>,  <42.334873, 28.588633, 37.098099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539280, 28.490252, 37.019745>,  <42.879955, 28.326284, 36.889156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539280, 28.490252, 37.019745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458252, 0.884794, 0.084522,
		-0.254216, 0.221595, -0.941419,
		-0.851692, 0.409920, 0.326475,
		42.283772, 28.613228, 37.117687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669853, 28.811621, 36.459412>,  <42.879955, 28.326284, 36.889156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669853, 28.811621, 36.459412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497540, 28.939325, 36.797050>,  <42.394154, 29.015947, 36.999634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497540, 28.939325, 36.797050>,  <42.669853, 28.811621, 36.459412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497540, 28.939325, 36.797050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472377, 0.876735, -0.090531,
		-0.768953, 0.359733, -0.528492,
		-0.430780, 0.319262, 0.844097,
		42.368305, 29.035105, 37.050282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359280, 29.503012, 36.337406>,  <42.669853, 28.811621, 36.459412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359280, 29.503012, 36.337406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385090, 29.477655, 36.735767>,  <42.400574, 29.462442, 36.974785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385090, 29.477655, 36.735767>,  <42.359280, 29.503012, 36.337406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385090, 29.477655, 36.735767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363505, 0.930908, 0.035701,
		-0.929355, 0.359712, 0.083106,
		0.064522, -0.063388, 0.995901,
		42.404446, 29.458639, 37.034538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092155, 30.229624, 36.512428>,  <42.359280, 29.503012, 36.337406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092155, 30.229624, 36.512428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292603, 30.095011, 36.831333>,  <42.412872, 30.014242, 37.022675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292603, 30.095011, 36.831333>,  <42.092155, 30.229624, 36.512428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292603, 30.095011, 36.831333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360177, 0.918807, 0.161451,
		-0.786863, 0.206249, 0.581642,
		0.501118, -0.336534, 0.797262,
		42.442940, 29.994051, 37.070511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996658, 30.705074, 37.047661>,  <42.092155, 30.229624, 36.512428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996658, 30.705074, 37.047661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324558, 30.516960, 37.178402>,  <42.521297, 30.404091, 37.256847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324558, 30.516960, 37.178402>,  <41.996658, 30.705074, 37.047661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324558, 30.516960, 37.178402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448036, 0.882096, 0.145503,
		-0.356746, 0.027166, 0.933806,
		0.819754, -0.470286, 0.326856,
		42.570484, 30.375874, 37.276459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140518, 31.061211, 37.696938>,  <41.996658, 30.705074, 37.047661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140518, 31.061211, 37.696938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466923, 30.885416, 37.546749>,  <42.662766, 30.779940, 37.456635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466923, 30.885416, 37.546749>,  <42.140518, 31.061211, 37.696938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466923, 30.885416, 37.546749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485067, 0.873917, 0.031285,
		0.314380, -0.207657, 0.926306,
		0.816012, -0.439485, -0.375470,
		42.711727, 30.753571, 37.434109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726543, 31.319374, 38.075077>,  <42.140518, 31.061211, 37.696938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726543, 31.319374, 38.075077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906769, 31.195459, 37.740170>,  <43.014904, 31.121111, 37.539223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906769, 31.195459, 37.740170>,  <42.726543, 31.319374, 38.075077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906769, 31.195459, 37.740170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580315, 0.814318, 0.010995,
		0.678398, -0.490835, 0.546678,
		0.450566, -0.309786, -0.837271,
		43.041939, 31.102524, 37.488987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508278, 31.352558, 38.195789>,  <42.726543, 31.319374, 38.075077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508278, 31.352558, 38.195789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441010, 31.357843, 37.801521>,  <43.400646, 31.361013, 37.564960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441010, 31.357843, 37.801521>,  <43.508278, 31.352558, 38.195789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441010, 31.357843, 37.801521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612605, 0.784779, -0.094002,
		0.772290, -0.619634, -0.140073,
		-0.168174, 0.013212, -0.985669,
		43.390556, 31.361807, 37.505821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148769, 31.599419, 38.054050>,  <43.508278, 31.352558, 38.195789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148769, 31.599419, 38.054050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948875, 31.644133, 37.710476>,  <43.828938, 31.670961, 37.504333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948875, 31.644133, 37.710476>,  <44.148769, 31.599419, 38.054050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948875, 31.644133, 37.710476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538426, 0.816865, -0.206953,
		0.678497, -0.565894, -0.468408,
		-0.499739, 0.111786, -0.858933,
		43.798954, 31.677668, 37.452797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588593, 31.865814, 37.502495>,  <44.148769, 31.599419, 38.054050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588593, 31.865814, 37.502495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224709, 31.958679, 37.364788>,  <44.006378, 32.014397, 37.282166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224709, 31.958679, 37.364788>,  <44.588593, 31.865814, 37.502495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224709, 31.958679, 37.364788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282722, 0.953542, -0.104047,
		0.304118, -0.191985, -0.933089,
		-0.909715, 0.232162, -0.344267,
		43.951794, 32.028328, 37.261509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809208, 32.225719, 37.020176>,  <44.588593, 31.865814, 37.502495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809208, 32.225719, 37.020176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426437, 32.317753, 37.091007>,  <44.196774, 32.372971, 37.133507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426437, 32.317753, 37.091007>,  <44.809208, 32.225719, 37.020176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426437, 32.317753, 37.091007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164110, 0.931774, -0.323829,
		-0.239500, -0.280821, -0.929397,
		-0.956926, 0.230080, 0.177074,
		44.139359, 32.386776, 37.144131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572330, 32.520672, 36.434990>,  <44.809208, 32.225719, 37.020176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572330, 32.520672, 36.434990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341263, 32.657803, 36.731304>,  <44.202621, 32.740082, 36.909092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341263, 32.657803, 36.731304>,  <44.572330, 32.520672, 36.434990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341263, 32.657803, 36.731304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199916, 0.939309, -0.278806,
		-0.791412, -0.012962, -0.611146,
		-0.577668, 0.342828, 0.740789,
		44.167961, 32.760651, 36.953541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143398, 33.131092, 36.195377>,  <44.572330, 32.520672, 36.434990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143398, 33.131092, 36.195377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090485, 33.169617, 36.589985>,  <44.058735, 33.192734, 36.826752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090485, 33.169617, 36.589985>,  <44.143398, 33.131092, 36.195377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090485, 33.169617, 36.589985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081738, 0.990818, -0.107696,
		-0.987836, -0.094883, -0.123198,
		-0.132285, 0.096316, 0.986521,
		44.050800, 33.198513, 36.885941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700863, 33.638470, 36.244118>,  <44.143398, 33.131092, 36.195377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700863, 33.638470, 36.244118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843727, 33.630703, 36.617653>,  <43.929447, 33.626041, 36.841774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843727, 33.630703, 36.617653>,  <43.700863, 33.638470, 36.244118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843727, 33.630703, 36.617653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132731, 0.988583, 0.071321,
		-0.924563, -0.149422, 0.350508,
		0.357163, -0.019417, 0.933840,
		43.950874, 33.624878, 36.897804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306679, 34.056309, 36.564114>,  <43.700863, 33.638470, 36.244118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306679, 34.056309, 36.564114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627201, 34.044189, 36.803108>,  <43.819515, 34.036919, 36.946507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627201, 34.044189, 36.803108>,  <43.306679, 34.056309, 36.564114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627201, 34.044189, 36.803108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108870, 0.989425, -0.095841,
		-0.588270, 0.141846, 0.796127,
		0.801303, -0.030294, 0.597491,
		43.867592, 34.035103, 36.982357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246368, 34.630707, 37.093307>,  <43.306679, 34.056309, 36.564114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246368, 34.630707, 37.093307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635189, 34.536808, 37.094276>,  <43.868481, 34.480469, 37.094856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635189, 34.536808, 37.094276>,  <43.246368, 34.630707, 37.093307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635189, 34.536808, 37.094276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234726, 0.971696, -0.026681,
		0.003912, 0.026503, 0.999641,
		0.972054, -0.234746, 0.002420,
		43.926804, 34.466385, 37.095001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585739, 35.129871, 37.558819>,  <43.246368, 34.630707, 37.093307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585739, 35.129871, 37.558819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866989, 34.970562, 37.323193>,  <44.035740, 34.874977, 37.181816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866989, 34.970562, 37.323193>,  <43.585739, 35.129871, 37.558819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866989, 34.970562, 37.323193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199910, 0.905729, -0.373753,
		0.682389, 0.145034, 0.716457,
		0.703122, -0.398272, -0.589066,
		44.077927, 34.851082, 37.146473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253662, 35.532963, 37.676720>,  <43.585739, 35.129871, 37.558819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253662, 35.532963, 37.676720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288177, 35.345978, 37.324802>,  <44.308887, 35.233788, 37.113651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288177, 35.345978, 37.324802>,  <44.253662, 35.532963, 37.676720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288177, 35.345978, 37.324802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386520, 0.829624, -0.402897,
		0.918235, -0.305292, 0.252271,
		0.086289, -0.467462, -0.879792,
		44.314064, 35.205738, 37.060863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834301, 35.772015, 37.418556>,  <44.253662, 35.532963, 37.676720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834301, 35.772015, 37.418556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683357, 35.628468, 37.077076>,  <44.592789, 35.542339, 36.872189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683357, 35.628468, 37.077076>,  <44.834301, 35.772015, 37.418556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683357, 35.628468, 37.077076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615356, 0.591736, -0.520755,
		0.692051, -0.721844, -0.002466,
		-0.377363, -0.358871, -0.853702,
		44.570148, 35.520805, 36.820965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350029, 35.613445, 36.897385>,  <44.834301, 35.772015, 37.418556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350029, 35.613445, 36.897385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027084, 35.641861, 36.663078>,  <44.833317, 35.658913, 36.522495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027084, 35.641861, 36.663078>,  <45.350029, 35.613445, 36.897385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027084, 35.641861, 36.663078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515873, 0.566889, -0.642271,
		0.286436, -0.820725, -0.494332,
		-0.807359, 0.071044, -0.585767,
		44.784878, 35.663174, 36.487347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479366, 35.419464, 36.256313>,  <45.350029, 35.613445, 36.897385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479366, 35.419464, 36.256313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187092, 35.692436, 36.248520>,  <45.011726, 35.856220, 36.243843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187092, 35.692436, 36.248520>,  <45.479366, 35.419464, 36.256313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187092, 35.692436, 36.248520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588954, 0.615654, -0.523548,
		-0.345290, -0.394026, -0.851774,
		-0.730690, 0.682432, -0.019484,
		44.967884, 35.897167, 36.242676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283176, 35.337051, 36.105358>,  <45.479366, 35.419464, 36.256313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283176, 35.337051, 36.105358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297348, 35.540821, 35.761444>,  <46.305851, 35.663082, 35.555096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297348, 35.540821, 35.761444>,  <46.283176, 35.337051, 36.105358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297348, 35.540821, 35.761444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746527, -0.585459, -0.316125,
		-0.664411, -0.630654, -0.401040,
		0.035426, 0.509424, -0.859786,
		46.307976, 35.693649, 35.503510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.146202, 34.914906, 35.511074>,  <46.283176, 35.337051, 36.105358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.146202, 34.914906, 35.511074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410324, 35.209599, 35.452812>,  <46.568798, 35.386414, 35.417854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410324, 35.209599, 35.452812>,  <46.146202, 34.914906, 35.511074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410324, 35.209599, 35.452812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666745, -0.664356, -0.337760,
		-0.345609, 0.125908, -0.929893,
		0.660307, 0.736735, -0.145659,
		46.608418, 35.430618, 35.409115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386139, 34.931454, 34.769905>,  <46.146202, 34.914906, 35.511074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386139, 34.931454, 34.769905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652462, 35.057537, 35.040417>,  <46.812256, 35.133186, 35.202724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652462, 35.057537, 35.040417>,  <46.386139, 34.931454, 34.769905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652462, 35.057537, 35.040417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689818, -0.605468, -0.396938,
		0.284346, 0.730790, -0.620559,
		0.665807, 0.315205, 0.676274,
		46.852203, 35.152100, 35.243298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006512, 35.232582, 34.464321>,  <46.386139, 34.931454, 34.769905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006512, 35.232582, 34.464321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.111687, 35.101398, 34.827267>,  <47.174793, 35.022690, 35.045033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.111687, 35.101398, 34.827267>,  <47.006512, 35.232582, 34.464321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.111687, 35.101398, 34.827267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760180, -0.508707, -0.404156,
		0.594128, 0.796028, 0.115548,
		0.262939, -0.327958, 0.907362,
		47.190567, 35.003010, 35.099476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.772781, 35.381603, 34.651001>,  <47.006512, 35.232582, 34.464321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.772781, 35.381603, 34.651001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640057, 35.060833, 34.849728>,  <47.560421, 34.868370, 34.968964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640057, 35.060833, 34.849728>,  <47.772781, 35.381603, 34.651001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640057, 35.060833, 34.849728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841479, -0.489655, -0.228366,
		0.426398, 0.342283, 0.837274,
		-0.331810, -0.801923, 0.496812,
		47.540512, 34.820255, 34.998772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.635658, 40.858982, 41.185509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.252831, 40.874985, 41.070679>,  <34.023132, 40.884586, 41.001781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.252831, 40.874985, 41.070679>,  <34.635658, 40.858982, 41.185509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252831, 40.874985, 41.070679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225821, -0.517985, -0.825043,
		-0.181702, -0.854454, 0.486716,
		-0.957073, 0.040002, -0.287072,
		33.965710, 40.886986, 40.984558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532154, 40.297115, 40.845718>,  <34.635658, 40.858982, 41.185509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532154, 40.297115, 40.845718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181278, 40.462009, 40.747246>,  <33.970753, 40.560947, 40.688164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181278, 40.462009, 40.747246>,  <34.532154, 40.297115, 40.845718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181278, 40.462009, 40.747246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091786, -0.647227, -0.756751,
		-0.471292, -0.641218, 0.605577,
		-0.877188, 0.412234, -0.246178,
		33.918121, 40.585678, 40.673393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049080, 39.781750, 40.886013>,  <34.532154, 40.297115, 40.845718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049080, 39.781750, 40.886013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878132, 40.053501, 40.647415>,  <33.775562, 40.216553, 40.504257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878132, 40.053501, 40.647415>,  <34.049080, 39.781750, 40.886013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878132, 40.053501, 40.647415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028615, -0.649289, -0.760004,
		-0.903626, -0.341868, 0.258043,
		-0.427365, 0.679375, -0.596497,
		33.749924, 40.257313, 40.468468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324375, 39.628674, 40.585770>,  <34.049080, 39.781750, 40.886013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324375, 39.628674, 40.585770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490768, 39.884125, 40.326813>,  <33.590607, 40.037395, 40.171440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490768, 39.884125, 40.326813>,  <33.324375, 39.628674, 40.585770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490768, 39.884125, 40.326813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028130, -0.702532, -0.711096,
		-0.908936, 0.314017, -0.274279,
		0.415987, 0.638625, -0.647389,
		33.615566, 40.075714, 40.132595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991352, 39.439465, 39.977364>,  <33.324375, 39.628674, 40.585770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991352, 39.439465, 39.977364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.288570, 39.677170, 39.854248>,  <33.466904, 39.819794, 39.780380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.288570, 39.677170, 39.854248>,  <32.991352, 39.439465, 39.977364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288570, 39.677170, 39.854248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031225, -0.490188, -0.871057,
		-0.668508, 0.637627, -0.382790,
		0.743049, 0.594262, -0.307785,
		33.511486, 39.855450, 39.761913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865322, 39.529625, 39.261726>,  <32.991352, 39.439465, 39.977364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865322, 39.529625, 39.261726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.253506, 39.624222, 39.280823>,  <33.486416, 39.680981, 39.292282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.253506, 39.624222, 39.280823>,  <32.865322, 39.529625, 39.261726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253506, 39.624222, 39.280823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132793, -0.358369, -0.924087,
		-0.201432, 0.903129, -0.379188,
		0.970459, 0.236494, 0.047743,
		33.544643, 39.695171, 39.295147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053520, 39.931210, 38.521336>,  <32.865322, 39.529625, 39.261726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053520, 39.931210, 38.521336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.371586, 39.753166, 38.686062>,  <33.562424, 39.646339, 38.784897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.371586, 39.753166, 38.686062>,  <33.053520, 39.931210, 38.521336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371586, 39.753166, 38.686062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196422, -0.453449, -0.869369,
		0.573705, 0.772179, -0.273136,
		0.795161, -0.445112, 0.411818,
		33.610134, 39.619633, 38.809608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565609, 40.039890, 38.070415>,  <33.053520, 39.931210, 38.521336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565609, 40.039890, 38.070415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.711060, 39.744164, 38.297108>,  <33.798328, 39.566727, 38.433121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.711060, 39.744164, 38.297108>,  <33.565609, 40.039890, 38.070415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711060, 39.744164, 38.297108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327856, -0.467878, -0.820731,
		0.871943, 0.484246, 0.072257,
		0.363628, -0.739321, 0.566726,
		33.820148, 39.522366, 38.467125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001476, 39.701454, 37.653820>,  <33.565609, 40.039890, 38.070415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001476, 39.701454, 37.653820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.981972, 39.429466, 37.946468>,  <33.970268, 39.266273, 38.122055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.981972, 39.429466, 37.946468>,  <34.001476, 39.701454, 37.653820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981972, 39.429466, 37.946468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461508, -0.664947, -0.587245,
		0.885795, 0.309014, 0.346233,
		-0.048760, -0.679968, 0.731619,
		33.967342, 39.225475, 38.165955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698311, 39.365025, 37.692509>,  <34.001476, 39.701454, 37.653820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698311, 39.365025, 37.692509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413208, 39.120632, 37.830311>,  <34.242146, 38.973999, 37.912994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413208, 39.120632, 37.830311>,  <34.698311, 39.365025, 37.692509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413208, 39.120632, 37.830311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422822, -0.766152, -0.483976,
		0.559644, -0.199292, 0.804414,
		-0.712755, -0.610978, 0.344507,
		34.199383, 38.937340, 37.933662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102272, 38.904888, 38.073566>,  <34.698311, 39.365025, 37.692509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102272, 38.904888, 38.073566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747196, 38.754265, 37.967575>,  <34.534149, 38.663891, 37.903980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747196, 38.754265, 37.967575>,  <35.102272, 38.904888, 38.073566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747196, 38.754265, 37.967575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459119, -0.680297, -0.571319,
		0.034870, -0.628810, 0.776776,
		-0.887690, -0.376554, -0.264977,
		34.480888, 38.641300, 37.888081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108974, 38.101189, 38.166553>,  <35.102272, 38.904888, 38.073566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108974, 38.101189, 38.166553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791691, 38.127407, 37.924389>,  <34.601318, 38.143139, 37.779091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791691, 38.127407, 37.924389>,  <35.108974, 38.101189, 38.166553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791691, 38.127407, 37.924389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446785, -0.612877, -0.651740,
		-0.413762, -0.787455, 0.456855,
		-0.793211, 0.065550, -0.605408,
		34.553726, 38.147072, 37.742767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040726, 37.423702, 37.972706>,  <35.108974, 38.101189, 38.166553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040726, 37.423702, 37.972706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852482, 37.639629, 37.693527>,  <34.739536, 37.769184, 37.526020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852482, 37.639629, 37.693527>,  <35.040726, 37.423702, 37.972706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852482, 37.639629, 37.693527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289522, -0.652742, -0.700074,
		-0.833491, -0.531529, 0.150894,
		-0.470605, 0.539819, -0.697944,
		34.711300, 37.801575, 37.484142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644230, 36.928825, 37.640129>,  <35.040726, 37.423702, 37.972706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644230, 36.928825, 37.640129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716396, 37.250221, 37.413200>,  <34.759697, 37.443058, 37.277042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716396, 37.250221, 37.413200>,  <34.644230, 36.928825, 37.640129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716396, 37.250221, 37.413200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381063, -0.588838, -0.712784,
		-0.906774, -0.087584, -0.412419,
		0.180420, 0.803491, -0.567318,
		34.770523, 37.491268, 37.243004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523705, 36.559166, 37.111607>,  <34.644230, 36.928825, 37.640129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523705, 36.559166, 37.111607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648716, 36.899029, 36.941708>,  <34.723721, 37.102947, 36.839767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648716, 36.899029, 36.941708>,  <34.523705, 36.559166, 37.111607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648716, 36.899029, 36.941708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305794, -0.513335, -0.801859,
		-0.899343, 0.120715, -0.420250,
		0.312525, 0.849656, -0.424751,
		34.742474, 37.153927, 36.814281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263130, 36.499809, 36.441002>,  <34.523705, 36.559166, 37.111607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263130, 36.499809, 36.441002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549557, 36.778118, 36.418560>,  <34.721413, 36.945103, 36.405094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549557, 36.778118, 36.418560>,  <34.263130, 36.499809, 36.441002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549557, 36.778118, 36.418560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320593, -0.399213, -0.858982,
		-0.620052, 0.597104, -0.508923,
		0.716070, 0.695770, -0.056105,
		34.764378, 36.986851, 36.401730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165775, 36.665829, 35.869736>,  <34.263130, 36.499809, 36.441002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165775, 36.665829, 35.869736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546165, 36.773830, 35.930050>,  <34.774399, 36.838631, 35.966240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546165, 36.773830, 35.930050>,  <34.165775, 36.665829, 35.869736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546165, 36.773830, 35.930050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278649, -0.536618, -0.796490,
		-0.134136, 0.799463, -0.585548,
		0.950979, 0.270001, 0.150790,
		34.831459, 36.854832, 35.975288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514572, 37.002594, 35.228027>,  <34.165775, 36.665829, 35.869736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514572, 37.002594, 35.228027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825195, 36.875546, 35.445679>,  <35.011570, 36.799316, 35.576271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825195, 36.875546, 35.445679>,  <34.514572, 37.002594, 35.228027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825195, 36.875546, 35.445679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353527, -0.495196, -0.793599,
		0.521517, 0.808638, -0.272258,
		0.776556, -0.317624, 0.544129,
		35.058163, 36.780258, 35.608917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073559, 37.168976, 34.884338>,  <34.514572, 37.002594, 35.228027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073559, 37.168976, 34.884338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216366, 36.886856, 35.129314>,  <35.302052, 36.717583, 35.276302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216366, 36.886856, 35.129314>,  <35.073559, 37.168976, 34.884338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216366, 36.886856, 35.129314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448078, -0.445984, -0.774806,
		0.819611, 0.551045, 0.156803,
		0.357022, -0.705299, 0.612445,
		35.323471, 36.675266, 35.313049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854599, 37.127079, 34.941704>,  <35.073559, 37.168976, 34.884338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854599, 37.127079, 34.941704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745468, 36.756786, 35.046463>,  <35.679989, 36.534611, 35.109318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745468, 36.756786, 35.046463>,  <35.854599, 37.127079, 34.941704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745468, 36.756786, 35.046463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618066, -0.377272, -0.689681,
		0.737266, -0.026289, 0.675091,
		-0.272824, -0.925729, 0.261902,
		35.663620, 36.479069, 35.125034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352638, 36.813824, 34.905235>,  <35.854599, 37.127079, 34.941704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352638, 36.813824, 34.905235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128811, 36.482395, 34.897724>,  <35.994514, 36.283539, 34.893219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128811, 36.482395, 34.897724>,  <36.352638, 36.813824, 34.905235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128811, 36.482395, 34.897724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671778, -0.440185, -0.595778,
		0.485378, -0.345994, 0.802930,
		-0.559573, -0.828568, -0.018775,
		35.960938, 36.233826, 34.892090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801449, 36.219891, 34.960678>,  <36.352638, 36.813824, 34.905235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801449, 36.219891, 34.960678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468719, 36.044949, 34.823975>,  <36.269081, 35.939983, 34.741955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468719, 36.044949, 34.823975>,  <36.801449, 36.219891, 34.960678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468719, 36.044949, 34.823975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554808, -0.637116, -0.535043,
		0.016266, -0.634668, 0.772613,
		-0.831820, -0.437355, -0.341756,
		36.219173, 35.913742, 34.721447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565609, 36.373032, 34.673683>,  <36.801449, 36.219891, 34.960678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565609, 36.373032, 34.673683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896782, 36.548092, 34.533401>,  <38.095486, 36.653126, 34.449234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896782, 36.548092, 34.533401>,  <37.565609, 36.373032, 34.673683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896782, 36.548092, 34.533401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086966, 0.717953, 0.690638,
		0.554040, -0.541304, 0.632478,
		0.827935, 0.437645, -0.350700,
		38.145161, 36.679386, 34.428192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942471, 36.568314, 35.240093>,  <37.565609, 36.373032, 34.673683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942471, 36.568314, 35.240093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116573, 36.807743, 34.971092>,  <38.221035, 36.951401, 34.809692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116573, 36.807743, 34.971092>,  <37.942471, 36.568314, 35.240093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116573, 36.807743, 34.971092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031149, 0.756538, 0.653207,
		0.899769, -0.263363, 0.347931,
		0.435254, 0.598573, -0.672506,
		38.247150, 36.987316, 34.769341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555614, 36.827450, 35.550705>,  <37.942471, 36.568314, 35.240093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555614, 36.827450, 35.550705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440434, 37.086700, 35.268707>,  <38.371323, 37.242252, 35.099510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440434, 37.086700, 35.268707>,  <38.555614, 36.827450, 35.550705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440434, 37.086700, 35.268707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009041, 0.734299, 0.678767,
		0.957601, 0.201829, -0.205586,
		-0.287957, 0.648129, -0.704990,
		38.354046, 37.281139, 35.057209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057350, 37.461464, 35.566719>,  <38.555614, 36.827450, 35.550705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057350, 37.461464, 35.566719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731861, 37.610157, 35.387981>,  <38.536568, 37.699371, 35.280739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731861, 37.610157, 35.387981>,  <39.057350, 37.461464, 35.566719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731861, 37.610157, 35.387981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039623, 0.802449, 0.595404,
		0.579895, 0.466791, -0.667704,
		-0.813727, 0.371728, -0.446840,
		38.487743, 37.721676, 35.253929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258537, 38.148533, 35.602749>,  <39.057350, 37.461464, 35.566719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258537, 38.148533, 35.602749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866680, 38.124481, 35.526142>,  <38.631565, 38.110050, 35.480179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866680, 38.124481, 35.526142>,  <39.258537, 38.148533, 35.602749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866680, 38.124481, 35.526142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152240, 0.844411, 0.513608,
		0.130837, 0.532311, -0.836377,
		-0.979645, -0.060131, -0.191519,
		38.572788, 38.106441, 35.468685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039783, 38.827869, 35.643852>,  <39.258537, 38.148533, 35.602749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039783, 38.827869, 35.643852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686069, 38.642860, 35.669525>,  <38.473843, 38.531857, 35.684929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686069, 38.642860, 35.669525>,  <39.039783, 38.827869, 35.643852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686069, 38.642860, 35.669525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377305, 0.788705, 0.485371,
		-0.275114, 0.404989, -0.871949,
		-0.884281, -0.462523, 0.064179,
		38.420784, 38.504105, 35.688778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494190, 39.245724, 35.429569>,  <39.039783, 38.827869, 35.643852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494190, 39.245724, 35.429569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350040, 38.975491, 35.686852>,  <38.263550, 38.813351, 35.841221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350040, 38.975491, 35.686852>,  <38.494190, 39.245724, 35.429569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350040, 38.975491, 35.686852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311417, 0.737116, 0.599733,
		-0.879287, 0.015825, -0.476029,
		-0.360379, -0.675581, 0.643208,
		38.241928, 38.772816, 35.879814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813404, 39.505459, 35.708103>,  <38.494190, 39.245724, 35.429569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813404, 39.505459, 35.708103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929066, 39.224735, 35.968521>,  <37.998463, 39.056301, 36.124771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929066, 39.224735, 35.968521>,  <37.813404, 39.505459, 35.708103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929066, 39.224735, 35.968521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335457, 0.562682, 0.755551,
		-0.896582, -0.436865, -0.072727,
		0.289152, -0.701810, 0.651040,
		38.015812, 39.014191, 36.163834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285152, 39.241974, 36.060326>,  <37.813404, 39.505459, 35.708103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285152, 39.241974, 36.060326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582508, 39.188725, 36.322517>,  <37.760921, 39.156776, 36.479832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582508, 39.188725, 36.322517>,  <37.285152, 39.241974, 36.060326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582508, 39.188725, 36.322517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487388, 0.563340, 0.667159,
		-0.458071, -0.815431, 0.353898,
		0.743387, -0.133121, 0.655480,
		37.805523, 39.148788, 36.519161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940372, 39.252308, 36.606216>,  <37.285152, 39.241974, 36.060326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940372, 39.252308, 36.606216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316982, 39.284374, 36.737129>,  <37.542946, 39.303616, 36.815678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316982, 39.284374, 36.737129>,  <36.940372, 39.252308, 36.606216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316982, 39.284374, 36.737129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329657, 0.420226, 0.845421,
		-0.069757, -0.903872, 0.422078,
		0.941520, 0.080167, 0.327281,
		37.599438, 39.308426, 36.835312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958206, 38.973637, 37.229912>,  <36.940372, 39.252308, 36.606216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958206, 38.973637, 37.229912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275669, 39.216949, 37.226086>,  <37.466148, 39.362938, 37.223789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275669, 39.216949, 37.226086>,  <36.958206, 38.973637, 37.229912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275669, 39.216949, 37.226086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287924, 0.389430, 0.874897,
		0.535912, -0.691617, 0.484215,
		0.793662, 0.608285, -0.009567,
		37.513767, 39.399433, 37.223217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358067, 38.809673, 37.948700>,  <36.958206, 38.973637, 37.229912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358067, 38.809673, 37.948700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490387, 39.164814, 37.820774>,  <37.569778, 39.377899, 37.744019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490387, 39.164814, 37.820774>,  <37.358067, 38.809673, 37.948700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490387, 39.164814, 37.820774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180579, 0.392190, 0.901985,
		0.926261, -0.240627, 0.290066,
		0.330804, 0.887854, -0.319818,
		37.589626, 39.431171, 37.724827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896790, 39.077633, 38.427925>,  <37.358067, 38.809673, 37.948700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896790, 39.077633, 38.427925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788563, 39.414516, 38.241390>,  <37.723625, 39.616646, 38.129467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788563, 39.414516, 38.241390>,  <37.896790, 39.077633, 38.427925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788563, 39.414516, 38.241390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141395, 0.444389, 0.884605,
		0.952260, 0.305284, -0.001154,
		-0.270569, 0.842211, -0.466340,
		37.707394, 39.667179, 38.101490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178089, 39.656754, 38.819080>,  <37.896790, 39.077633, 38.427925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178089, 39.656754, 38.819080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862297, 39.800068, 38.619743>,  <37.672821, 39.886059, 38.500141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862297, 39.800068, 38.619743>,  <38.178089, 39.656754, 38.819080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862297, 39.800068, 38.619743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208967, 0.606525, 0.767112,
		0.577108, 0.709757, -0.403969,
		-0.789480, 0.358291, -0.498346,
		37.625454, 39.907555, 38.470238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116329, 40.409954, 38.915897>,  <38.178089, 39.656754, 38.819080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116329, 40.409954, 38.915897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744473, 40.289349, 38.831173>,  <37.521358, 40.216988, 38.780338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744473, 40.289349, 38.831173>,  <38.116329, 40.409954, 38.915897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744473, 40.289349, 38.831173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324536, 0.397781, 0.858165,
		-0.174493, 0.866522, -0.467644,
		-0.929639, -0.301511, -0.211808,
		37.465580, 40.198895, 38.767632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753918, 40.909805, 39.201584>,  <38.116329, 40.409954, 38.915897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753918, 40.909805, 39.201584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470566, 40.635803, 39.133514>,  <37.300556, 40.471401, 39.092670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470566, 40.635803, 39.133514>,  <37.753918, 40.909805, 39.201584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470566, 40.635803, 39.133514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419913, 0.215204, 0.881680,
		-0.567337, 0.696024, -0.440090,
		-0.708380, -0.685009, -0.170176,
		37.258053, 40.430302, 39.082462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093452, 41.244995, 39.340309>,  <37.753918, 40.909805, 39.201584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093452, 41.244995, 39.340309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.022495, 40.853828, 39.384502>,  <36.979919, 40.619129, 39.411018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.022495, 40.853828, 39.384502>,  <37.093452, 41.244995, 39.340309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022495, 40.853828, 39.384502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459704, 0.181603, 0.869306,
		-0.870174, 0.103420, -0.481769,
		-0.177395, -0.977918, 0.110484,
		36.969276, 40.560452, 39.417648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481915, 41.342793, 39.474468>,  <37.093452, 41.244995, 39.340309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481915, 41.342793, 39.474468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581570, 40.977085, 39.602242>,  <36.641361, 40.757660, 39.678905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581570, 40.977085, 39.602242>,  <36.481915, 41.342793, 39.474468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581570, 40.977085, 39.602242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433494, 0.189671, 0.880970,
		-0.866034, -0.357953, -0.349078,
		0.249135, -0.914273, 0.319432,
		36.656311, 40.702805, 39.698071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.906597, 41.036034, 39.745796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222717, 40.837482, 39.889481>,  <36.412388, 40.718349, 39.975693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222717, 40.837482, 39.889481>,  <35.906597, 41.036034, 39.745796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222717, 40.837482, 39.889481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175753, 0.377976, 0.908980,
		-0.586973, -0.781499, 0.211474,
		0.790300, -0.496380, 0.359213,
		36.459808, 40.688568, 39.997246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580723, 40.606182, 40.128246>,  <35.906597, 41.036034, 39.745796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580723, 40.606182, 40.128246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.956982, 40.622406, 40.263031>,  <36.182735, 40.632141, 40.343903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.956982, 40.622406, 40.263031>,  <35.580723, 40.606182, 40.128246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956982, 40.622406, 40.263031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329397, 0.348253, 0.877620,
		-0.081753, -0.936523, 0.340942,
		0.940646, 0.040557, 0.336958,
		36.239174, 40.634575, 40.364117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591785, 40.205399, 40.763279>,  <35.580723, 40.606182, 40.128246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591785, 40.205399, 40.763279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898003, 40.459999, 40.800812>,  <36.081734, 40.612759, 40.823330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898003, 40.459999, 40.800812>,  <35.591785, 40.205399, 40.763279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898003, 40.459999, 40.800812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268745, 0.183848, 0.945503,
		0.584563, -0.749043, 0.311801,
		0.765547, 0.636501, 0.093831,
		36.127666, 40.650948, 40.828960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898968, 40.016193, 41.426220>,  <35.591785, 40.205399, 40.763279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898968, 40.016193, 41.426220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005116, 40.388195, 41.324493>,  <36.068806, 40.611397, 41.263458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005116, 40.388195, 41.324493>,  <35.898968, 40.016193, 41.426220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005116, 40.388195, 41.324493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387989, 0.344485, 0.854865,
		0.882634, -0.128183, 0.452246,
		0.265371, 0.929999, -0.254320,
		36.084728, 40.667194, 41.248196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005173, 40.268219, 42.033367>,  <35.898968, 40.016193, 41.426220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005173, 40.268219, 42.033367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006111, 40.605549, 41.818405>,  <36.006676, 40.807945, 41.689430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006111, 40.605549, 41.818405>,  <36.005173, 40.268219, 42.033367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006111, 40.605549, 41.818405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393733, 0.494772, 0.774709,
		0.919222, 0.209776, 0.333205,
		0.002345, 0.843323, -0.537401,
		36.006813, 40.858547, 41.657185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338963, 40.738525, 42.440304>,  <36.005173, 40.268219, 42.033367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338963, 40.738525, 42.440304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.124672, 40.947281, 42.174786>,  <35.996098, 41.072536, 42.015472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.124672, 40.947281, 42.174786>,  <36.338963, 40.738525, 42.440304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124672, 40.947281, 42.174786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262838, 0.644002, 0.718455,
		0.802442, 0.559366, -0.207837,
		-0.535727, 0.521891, -0.663797,
		35.963955, 41.103848, 41.975647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610542, 41.409027, 42.547352>,  <36.338963, 40.738525, 42.440304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610542, 41.409027, 42.547352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255840, 41.424847, 42.363132>,  <36.043018, 41.434338, 42.252602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255840, 41.424847, 42.363132>,  <36.610542, 41.409027, 42.547352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255840, 41.424847, 42.363132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327588, 0.649174, 0.686483,
		0.326126, 0.759611, -0.562701,
		-0.886751, 0.039546, -0.460552,
		35.989815, 41.436710, 42.224968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464436, 42.175663, 42.319664>,  <36.610542, 41.409027, 42.547352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464436, 42.175663, 42.319664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114594, 41.982971, 42.341591>,  <35.904690, 41.867355, 42.354748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114594, 41.982971, 42.341591>,  <36.464436, 42.175663, 42.319664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114594, 41.982971, 42.341591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316838, 0.653469, 0.687454,
		-0.366988, 0.583881, -0.724156,
		-0.874605, -0.481727, 0.054819,
		35.852211, 41.838451, 42.358036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995869, 42.730469, 42.264114>,  <36.464436, 42.175663, 42.319664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995869, 42.730469, 42.264114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797089, 42.420036, 42.419411>,  <35.677822, 42.233776, 42.512589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797089, 42.420036, 42.419411>,  <35.995869, 42.730469, 42.264114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797089, 42.420036, 42.419411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400261, 0.601961, 0.690966,
		-0.769957, 0.187976, -0.609780,
		-0.496949, -0.776085, 0.388245,
		35.648003, 42.187210, 42.535885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318615, 42.963306, 42.477077>,  <35.995869, 42.730469, 42.264114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318615, 42.963306, 42.477077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332699, 42.620537, 42.682774>,  <35.341148, 42.414875, 42.806190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332699, 42.620537, 42.682774>,  <35.318615, 42.963306, 42.477077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332699, 42.620537, 42.682774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380390, 0.464337, 0.799809,
		-0.924155, -0.223777, -0.309614,
		0.035214, -0.856922, 0.514242,
		35.343262, 42.363461, 42.837048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704998, 42.931877, 42.878506>,  <35.318615, 42.963306, 42.477077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704998, 42.931877, 42.878506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929813, 42.660583, 43.067867>,  <35.064701, 42.497807, 43.181484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929813, 42.660583, 43.067867>,  <34.704998, 42.931877, 42.878506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929813, 42.660583, 43.067867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296266, 0.369296, 0.880822,
		-0.772233, -0.635305, 0.006618,
		0.562034, -0.678239, 0.473402,
		35.098423, 42.457111, 43.209888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286739, 42.740929, 43.486946>,  <34.704998, 42.931877, 42.878506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286739, 42.740929, 43.486946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657974, 42.613731, 43.564434>,  <34.880714, 42.537411, 43.610928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657974, 42.613731, 43.564434>,  <34.286739, 42.740929, 43.486946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657974, 42.613731, 43.564434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153494, 0.147255, 0.977116,
		-0.339245, -0.936587, 0.087855,
		0.928091, -0.317996, 0.193716,
		34.936401, 42.518333, 43.622547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338467, 42.199097, 44.103786>,  <34.286739, 42.740929, 43.486946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338467, 42.199097, 44.103786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699249, 42.369228, 44.073948>,  <34.915718, 42.471306, 44.056046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699249, 42.369228, 44.073948>,  <34.338467, 42.199097, 44.103786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699249, 42.369228, 44.073948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091613, -0.019660, 0.995600,
		0.421993, -0.904825, -0.056699,
		0.901958, 0.425330, -0.074597,
		34.969837, 42.496826, 44.051567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613274, 41.964237, 44.680382>,  <34.338467, 42.199097, 44.103786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613274, 41.964237, 44.680382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863800, 42.253822, 44.564716>,  <35.014114, 42.427574, 44.495316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863800, 42.253822, 44.564716>,  <34.613274, 41.964237, 44.680382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863800, 42.253822, 44.564716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219611, 0.192056, 0.956496,
		0.748000, -0.662569, -0.038702,
		0.626312, 0.723959, -0.289165,
		35.051693, 42.471008, 44.477966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238682, 41.814114, 44.953484>,  <34.613274, 41.964237, 44.680382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238682, 41.814114, 44.953484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217495, 42.210400, 44.903385>,  <35.204781, 42.448170, 44.873325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217495, 42.210400, 44.903385>,  <35.238682, 41.814114, 44.953484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217495, 42.210400, 44.903385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102397, 0.130151, 0.986193,
		0.993332, 0.039413, -0.108339,
		-0.052969, 0.990711, -0.125248,
		35.201603, 42.507614, 44.865810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783642, 42.076920, 45.298458>,  <35.238682, 41.814114, 44.953484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783642, 42.076920, 45.298458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556137, 42.402397, 45.250439>,  <35.419636, 42.597683, 45.221626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556137, 42.402397, 45.250439>,  <35.783642, 42.076920, 45.298458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556137, 42.402397, 45.250439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268256, 0.321488, 0.908121,
		0.777531, 0.484296, -0.401128,
		-0.568757, 0.813697, -0.120051,
		35.385509, 42.646507, 45.214424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226601, 42.603848, 45.536133>,  <35.783642, 42.076920, 45.298458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226601, 42.603848, 45.536133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869801, 42.784164, 45.549496>,  <35.655720, 42.892353, 45.557514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869801, 42.784164, 45.549496>,  <36.226601, 42.603848, 45.536133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869801, 42.784164, 45.549496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214857, 0.357796, 0.908746,
		0.397702, 0.817782, -0.416011,
		-0.892003, 0.450793, 0.033410,
		35.602200, 42.919403, 45.559517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335091, 43.241623, 45.792751>,  <36.226601, 42.603848, 45.536133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335091, 43.241623, 45.792751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954956, 43.152687, 45.879860>,  <35.726875, 43.099327, 45.932125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954956, 43.152687, 45.879860>,  <36.335091, 43.241623, 45.792751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954956, 43.152687, 45.879860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158350, 0.256957, 0.953362,
		-0.267930, 0.940499, -0.208988,
		-0.950336, -0.222341, 0.217774,
		35.669857, 43.085983, 45.945190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209011, 43.771866, 46.252338>,  <36.335091, 43.241623, 45.792751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209011, 43.771866, 46.252338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.903500, 43.519161, 46.305294>,  <35.720192, 43.367538, 46.337067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.903500, 43.519161, 46.305294>,  <36.209011, 43.771866, 46.252338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903500, 43.519161, 46.305294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048667, 0.260879, 0.964144,
		-0.643642, 0.729949, -0.229999,
		-0.763778, -0.631757, 0.132388,
		35.674366, 43.329636, 46.345009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826042, 44.115005, 46.722839>,  <36.209011, 43.771866, 46.252338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826042, 44.115005, 46.722839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690594, 43.739384, 46.746536>,  <35.609325, 43.514011, 46.760754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690594, 43.739384, 46.746536>,  <35.826042, 44.115005, 46.722839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690594, 43.739384, 46.746536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011631, 0.067139, 0.997676,
		-0.940852, 0.337142, -0.033657,
		-0.338618, -0.939057, 0.059247,
		35.589008, 43.457668, 46.764309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276241, 44.145542, 47.270130>,  <35.826042, 44.115005, 46.722839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276241, 44.145542, 47.270130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358475, 43.755985, 47.231606>,  <35.407814, 43.522251, 47.208492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.358475, 43.755985, 47.231606>,  <35.276241, 44.145542, 47.270130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358475, 43.755985, 47.231606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045405, -0.088811, 0.995013,
		-0.977585, -0.208935, 0.025961,
		0.205588, -0.973888, -0.096307,
		35.420151, 43.463818, 47.202713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805088, 43.852249, 47.742580>,  <35.276241, 44.145542, 47.270130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805088, 43.852249, 47.742580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.109127, 43.597919, 47.688934>,  <35.291550, 43.445320, 47.656746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.109127, 43.597919, 47.688934>,  <34.805088, 43.852249, 47.742580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109127, 43.597919, 47.688934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066094, -0.129667, 0.989352,
		-0.646444, -0.760864, -0.056534,
		0.760093, -0.635824, -0.134111,
		35.337154, 43.407173, 47.648701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248238, 43.570057, 48.082397>,  <34.805088, 43.852249, 47.742580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248238, 43.570057, 48.082397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285984, 43.607555, 48.478844>,  <34.308632, 43.630054, 48.716709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285984, 43.607555, 48.478844>,  <34.248238, 43.570057, 48.082397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285984, 43.607555, 48.478844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118809, 0.987381, -0.104709,
		-0.988423, 0.127634, 0.082038,
		0.094367, 0.093749, 0.991114,
		34.314293, 43.635681, 48.776176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682297, 43.813133, 48.516685>,  <34.248238, 43.570057, 48.082397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682297, 43.813133, 48.516685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755894, 44.188953, 48.632198>,  <33.800053, 44.414444, 48.701508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755894, 44.188953, 48.632198>,  <33.682297, 43.813133, 48.516685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755894, 44.188953, 48.632198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938339, -0.080410, -0.336235,
		-0.292687, 0.332845, -0.896409,
		0.183994, 0.939547, 0.288787,
		33.811092, 44.470818, 48.718834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112160, 43.371178, 48.296345>,  <33.682297, 43.813133, 48.516685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112160, 43.371178, 48.296345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735485, 43.237328, 48.282196>,  <32.509480, 43.157017, 48.273705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735485, 43.237328, 48.282196>,  <33.112160, 43.371178, 48.296345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735485, 43.237328, 48.282196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273743, -0.700699, -0.658851,
		0.195681, -0.630116, 0.751441,
		-0.941687, -0.334626, -0.035376,
		32.452980, 43.136940, 48.271584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123051, 42.598770, 48.423244>,  <33.112160, 43.371178, 48.296345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123051, 42.598770, 48.423244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767979, 42.648651, 48.245945>,  <32.554935, 42.678581, 48.139565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767979, 42.648651, 48.245945>,  <33.123051, 42.598770, 48.423244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767979, 42.648651, 48.245945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210691, -0.745942, -0.631807,
		-0.409429, -0.654232, 0.635885,
		-0.887681, 0.124705, -0.443251,
		32.501675, 42.686062, 48.112968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723709, 41.899986, 48.357857>,  <33.123051, 42.598770, 48.423244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723709, 41.899986, 48.357857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524414, 42.119778, 48.089581>,  <32.404835, 42.251652, 47.928616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524414, 42.119778, 48.089581>,  <32.723709, 41.899986, 48.357857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524414, 42.119778, 48.089581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030767, -0.761849, -0.647023,
		-0.866493, -0.343008, 0.362678,
		-0.498240, 0.549482, -0.670691,
		32.374943, 42.284622, 47.888374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145756, 41.399517, 48.066151>,  <32.723709, 41.899986, 48.357857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145756, 41.399517, 48.066151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.174461, 41.697720, 47.801102>,  <32.191685, 41.876640, 47.642075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.174461, 41.697720, 47.801102>,  <32.145756, 41.399517, 48.066151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174461, 41.697720, 47.801102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054705, -0.660391, -0.748927,
		-0.995920, 0.089998, -0.006611,
		0.071768, 0.745509, -0.662620,
		32.195992, 41.921371, 47.602314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643272, 41.162735, 47.483398>,  <32.145756, 41.399517, 48.066151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643272, 41.162735, 47.483398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867325, 41.462250, 47.341656>,  <32.001755, 41.641960, 47.256611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867325, 41.462250, 47.341656>,  <31.643272, 41.162735, 47.483398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867325, 41.462250, 47.341656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013322, -0.435846, -0.899923,
		-0.828296, 0.499354, -0.254107,
		0.560132, 0.748788, -0.354357,
		32.035366, 41.686886, 47.235348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343651, 41.394447, 46.831539>,  <31.643272, 41.162735, 47.483398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343651, 41.394447, 46.831539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731899, 41.488129, 46.809475>,  <31.964848, 41.544338, 46.796238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731899, 41.488129, 46.809475>,  <31.343651, 41.394447, 46.831539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731899, 41.488129, 46.809475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044287, -0.399223, -0.915783,
		-0.236502, 0.886436, -0.397867,
		0.970621, 0.234205, -0.055159,
		32.023087, 41.558392, 46.792927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520792, 41.615379, 46.160034>,  <31.343651, 41.394447, 46.831539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520792, 41.615379, 46.160034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.892290, 41.531311, 46.282192>,  <32.115189, 41.480869, 46.355488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.892290, 41.531311, 46.282192>,  <31.520792, 41.615379, 46.160034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892290, 41.531311, 46.282192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224145, -0.337809, -0.914136,
		0.295285, 0.917450, -0.266630,
		0.928744, -0.210167, 0.305392,
		32.170914, 41.468262, 46.373810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955727, 41.968685, 45.737190>,  <31.520792, 41.615379, 46.160034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955727, 41.968685, 45.737190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157711, 41.653515, 45.878155>,  <32.278904, 41.464413, 45.962734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157711, 41.653515, 45.878155>,  <31.955727, 41.968685, 45.737190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157711, 41.653515, 45.878155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393677, -0.153105, -0.906409,
		0.768135, 0.596438, 0.232874,
		0.504963, -0.787921, 0.352409,
		32.309200, 41.417137, 45.983879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628063, 42.049000, 45.442810>,  <31.955727, 41.968685, 45.737190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628063, 42.049000, 45.442810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607990, 41.663532, 45.547745>,  <32.595947, 41.432251, 45.610706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607990, 41.663532, 45.547745>,  <32.628063, 42.049000, 45.442810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607990, 41.663532, 45.547745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457061, -0.255706, -0.851886,
		0.888018, 0.077152, 0.453289,
		-0.050184, -0.963671, 0.262335,
		32.592934, 41.374432, 45.626446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375515, 41.764534, 45.544693>,  <32.628063, 42.049000, 45.442810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375515, 41.764534, 45.544693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117897, 41.478699, 45.435463>,  <32.963326, 41.307198, 45.369926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117897, 41.478699, 45.435463>,  <33.375515, 41.764534, 45.544693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117897, 41.478699, 45.435463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608718, -0.262514, -0.748699,
		0.463329, -0.648418, 0.604054,
		-0.644042, -0.714592, -0.273073,
		32.924683, 41.264320, 45.353542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810513, 41.173653, 45.260078>,  <33.375515, 41.764534, 45.544693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810513, 41.173653, 45.260078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440697, 41.117111, 45.118515>,  <33.218807, 41.083187, 45.033577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440697, 41.117111, 45.118515>,  <33.810513, 41.173653, 45.260078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440697, 41.117111, 45.118515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374413, -0.163740, -0.912691,
		0.071060, -0.976324, 0.204307,
		-0.924535, -0.141351, -0.353913,
		33.163338, 41.074707, 45.012341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917137, 40.616245, 44.700340>,  <33.810513, 41.173653, 45.260078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917137, 40.616245, 44.700340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.553444, 40.765835, 44.627201>,  <33.335228, 40.855587, 44.583317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.553444, 40.765835, 44.627201>,  <33.917137, 40.616245, 44.700340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553444, 40.765835, 44.627201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171184, -0.064497, -0.983126,
		-0.379458, -0.925194, -0.005376,
		-0.909234, 0.373975, -0.182852,
		33.280674, 40.878029, 44.572346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621109, 40.130306, 44.220776>,  <33.917137, 40.616245, 44.700340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621109, 40.130306, 44.220776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440315, 40.485477, 44.186626>,  <33.331841, 40.698582, 44.166138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440315, 40.485477, 44.186626>,  <33.621109, 40.130306, 44.220776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440315, 40.485477, 44.186626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210006, 0.012903, -0.977615,
		-0.866954, -0.459793, -0.192303,
		-0.451982, 0.887932, -0.085373,
		33.304722, 40.751858, 44.161015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237278, 40.071220, 43.701427>,  <33.621109, 40.130306, 44.220776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237278, 40.071220, 43.701427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264858, 40.469791, 43.720917>,  <33.281406, 40.708935, 43.732609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264858, 40.469791, 43.720917>,  <33.237278, 40.071220, 43.701427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264858, 40.469791, 43.720917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035959, 0.046324, -0.998279,
		-0.996972, 0.070585, -0.032637,
		0.068952, 0.996430, 0.048722,
		33.285545, 40.768719, 43.735535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691677, 40.296940, 43.329678>,  <33.237278, 40.071220, 43.701427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691677, 40.296940, 43.329678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.945366, 40.606106, 43.321918>,  <33.097580, 40.791603, 43.317265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.945366, 40.606106, 43.321918>,  <32.691677, 40.296940, 43.329678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945366, 40.606106, 43.321918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136117, 0.086923, -0.986872,
		-0.761077, 0.628533, 0.160334,
		0.634219, 0.772910, -0.019399,
		33.135632, 40.837978, 43.316097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423939, 40.786575, 42.843063>,  <32.691677, 40.296940, 43.329678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423939, 40.786575, 42.843063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806004, 40.891441, 42.898098>,  <33.035244, 40.954361, 42.931118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806004, 40.891441, 42.898098>,  <32.423939, 40.786575, 42.843063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806004, 40.891441, 42.898098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065410, 0.266358, -0.961652,
		-0.288755, 0.927537, 0.237268,
		0.955166, 0.262162, 0.137582,
		33.092552, 40.970089, 42.939373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542683, 41.494987, 42.666313>,  <32.423939, 40.786575, 42.843063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542683, 41.494987, 42.666313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.887539, 41.300434, 42.609547>,  <33.094452, 41.183701, 42.575485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.887539, 41.300434, 42.609547>,  <32.542683, 41.494987, 42.666313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887539, 41.300434, 42.609547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036511, 0.219732, -0.974877,
		0.505346, 0.845666, 0.171682,
		0.862144, -0.486382, -0.141917,
		33.146183, 41.154518, 42.566971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035069, 41.960003, 42.324284>,  <32.542683, 41.494987, 42.666313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035069, 41.960003, 42.324284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.194210, 41.599136, 42.257584>,  <33.289696, 41.382618, 42.217564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.194210, 41.599136, 42.257584>,  <33.035069, 41.960003, 42.324284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194210, 41.599136, 42.257584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145906, 0.241659, -0.959329,
		0.905771, 0.357346, 0.227777,
		0.397857, -0.902167, -0.166749,
		33.313568, 41.328487, 42.207558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571037, 42.118401, 41.889973>,  <33.035069, 41.960003, 42.324284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571037, 42.118401, 41.889973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522499, 41.725140, 41.835293>,  <33.493378, 41.489182, 41.802483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522499, 41.725140, 41.835293>,  <33.571037, 42.118401, 41.889973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522499, 41.725140, 41.835293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171760, 0.114846, -0.978422,
		0.977637, -0.142206, 0.154930,
		-0.121344, -0.983152, -0.136703,
		33.486095, 41.430195, 41.794281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075729, 41.916409, 41.473392>,  <33.571037, 42.118401, 41.889973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075729, 41.916409, 41.473392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829357, 41.611065, 41.395515>,  <33.681534, 41.427856, 41.348789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829357, 41.611065, 41.395515>,  <34.075729, 41.916409, 41.473392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829357, 41.611065, 41.395515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211609, 0.077738, -0.974258,
		0.758846, -0.641277, 0.113652,
		-0.615934, -0.763362, -0.194691,
		33.644577, 41.382057, 41.337109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.833408, 27.822453, 36.167130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.625046, 27.630011, 35.885082>,  <42.500027, 27.514545, 35.715855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.625046, 27.630011, 35.885082>,  <42.833408, 27.822453, 36.167130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625046, 27.630011, 35.885082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214973, 0.873353, -0.437083,
		0.826099, -0.076101, -0.558364,
		-0.520911, -0.481107, -0.705116,
		42.468773, 27.485678, 35.673546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201271, 27.930275, 35.469398>,  <42.833408, 27.822453, 36.167130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201271, 27.930275, 35.469398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.813992, 27.860216, 35.397949>,  <42.581623, 27.818180, 35.355080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.813992, 27.860216, 35.397949>,  <43.201271, 27.930275, 35.469398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813992, 27.860216, 35.397949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030503, 0.791336, -0.610620,
		0.248297, -0.585756, -0.771517,
		-0.968203, -0.175149, -0.178619,
		42.523529, 27.807671, 35.344364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100803, 28.148136, 34.822220>,  <43.201271, 27.930275, 35.469398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100803, 28.148136, 34.822220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727825, 28.116953, 34.963337>,  <42.504036, 28.098244, 35.048008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727825, 28.116953, 34.963337>,  <43.100803, 28.148136, 34.822220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727825, 28.116953, 34.963337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264821, 0.811716, -0.520564,
		-0.245789, -0.578826, -0.777527,
		-0.932447, -0.077956, 0.352796,
		42.448090, 28.093565, 35.069176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670292, 28.192091, 34.243107>,  <43.100803, 28.148136, 34.822220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670292, 28.192091, 34.243107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423180, 28.262991, 34.549553>,  <42.274914, 28.305531, 34.733421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423180, 28.262991, 34.549553>,  <42.670292, 28.192091, 34.243107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423180, 28.262991, 34.549553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328701, 0.826858, -0.456357,
		-0.714358, -0.533750, -0.452552,
		-0.617777, 0.177248, 0.766116,
		42.237846, 28.316166, 34.779388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005661, 28.489182, 33.928181>,  <42.670292, 28.192091, 34.243107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005661, 28.489182, 33.928181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984528, 28.570574, 34.319241>,  <41.971848, 28.619410, 34.553879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984528, 28.570574, 34.319241>,  <42.005661, 28.489182, 33.928181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984528, 28.570574, 34.319241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092556, 0.973808, -0.207680,
		-0.994305, -0.101461, -0.032620,
		-0.052837, 0.203478, 0.977653,
		41.968678, 28.631617, 34.612537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341312, 28.850142, 34.086906>,  <42.005661, 28.489182, 33.928181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341312, 28.850142, 34.086906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.595684, 28.947269, 34.379925>,  <41.748306, 29.005547, 34.555737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.595684, 28.947269, 34.379925>,  <41.341312, 28.850142, 34.086906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595684, 28.947269, 34.379925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136958, 0.969654, -0.202517,
		-0.759494, 0.028459, 0.649891,
		0.635933, 0.242818, 0.732549,
		41.786465, 29.020115, 34.599689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036766, 29.444965, 34.430969>,  <41.341312, 28.850142, 34.086906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036766, 29.444965, 34.430969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.432365, 29.440817, 34.490002>,  <41.669724, 29.438328, 34.525421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.432365, 29.440817, 34.490002>,  <41.036766, 29.444965, 34.430969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432365, 29.440817, 34.490002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034219, 0.986524, -0.159995,
		-0.143933, 0.163285, 0.976023,
		0.988995, -0.010370, 0.147581,
		41.729065, 29.437706, 34.534275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023907, 30.000698, 34.826096>,  <41.036766, 29.444965, 34.430969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023907, 30.000698, 34.826096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399990, 29.930937, 34.709072>,  <41.625641, 29.889080, 34.638859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399990, 29.930937, 34.709072>,  <41.023907, 30.000698, 34.826096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399990, 29.930937, 34.709072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124315, 0.975415, -0.181962,
		0.317106, 0.134712, 0.938774,
		0.940207, -0.174405, -0.292563,
		41.682053, 29.878614, 34.621304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353447, 30.659933, 35.065006>,  <41.023907, 30.000698, 34.826096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353447, 30.659933, 35.065006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.636734, 30.498432, 34.833347>,  <41.806705, 30.401531, 34.694351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.636734, 30.498432, 34.833347>,  <41.353447, 30.659933, 35.065006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636734, 30.498432, 34.833347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251366, 0.910779, -0.327562,
		0.659727, 0.086408, 0.746521,
		0.708220, -0.403752, -0.579146,
		41.849201, 30.377306, 34.659603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011902, 31.033583, 35.176380>,  <41.353447, 30.659933, 35.065006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011902, 31.033583, 35.176380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040676, 30.876871, 34.809483>,  <42.057941, 30.782845, 34.589344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040676, 30.876871, 34.809483>,  <42.011902, 31.033583, 35.176380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040676, 30.876871, 34.809483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378685, 0.861494, -0.338268,
		0.922725, -0.323012, 0.210336,
		0.071938, -0.391780, -0.917242,
		42.062256, 30.759336, 34.534309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685497, 31.215837, 35.035736>,  <42.011902, 31.033583, 35.176380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685497, 31.215837, 35.035736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495888, 31.139282, 34.691952>,  <42.382122, 31.093349, 34.485680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495888, 31.139282, 34.691952>,  <42.685497, 31.215837, 35.035736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495888, 31.139282, 34.691952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364799, 0.845693, -0.389519,
		0.801389, -0.498172, -0.331059,
		-0.474021, -0.191386, -0.859462,
		42.353683, 31.081865, 34.434113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180283, 31.472185, 34.493477>,  <42.685497, 31.215837, 35.035736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180283, 31.472185, 34.493477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.815971, 31.425545, 34.335041>,  <42.597385, 31.397560, 34.239979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.815971, 31.425545, 34.335041>,  <43.180283, 31.472185, 34.493477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815971, 31.425545, 34.335041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145691, 0.806837, -0.572529,
		0.386332, -0.579154, -0.717864,
		-0.910781, -0.116600, -0.396084,
		42.542736, 31.390564, 34.216217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185993, 31.435888, 33.761017>,  <43.180283, 31.472185, 34.493477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185993, 31.435888, 33.761017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.812515, 31.553415, 33.842876>,  <42.588428, 31.623932, 33.891994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.812515, 31.553415, 33.842876>,  <43.185993, 31.435888, 33.761017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812515, 31.553415, 33.842876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181463, 0.880998, -0.436938,
		-0.308677, -0.370831, -0.875901,
		-0.933697, 0.293816, 0.204652,
		42.532406, 31.641560, 33.904270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068115, 31.907518, 33.231689>,  <43.185993, 31.435888, 33.761017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068115, 31.907518, 33.231689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772953, 31.994473, 33.487263>,  <42.595856, 32.046646, 33.640606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772953, 31.994473, 33.487263>,  <43.068115, 31.907518, 33.231689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772953, 31.994473, 33.487263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015514, 0.940992, -0.338072,
		-0.674725, -0.259378, -0.690991,
		-0.737906, 0.217386, 0.638935,
		42.551582, 32.059689, 33.678944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472691, 32.258514, 32.862606>,  <43.068115, 31.907518, 33.231689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472691, 32.258514, 32.862606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444050, 32.369667, 33.245785>,  <42.426865, 32.436359, 33.475693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444050, 32.369667, 33.245785>,  <42.472691, 32.258514, 32.862606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444050, 32.369667, 33.245785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015755, 0.959973, -0.279648,
		-0.997309, -0.035115, -0.064357,
		-0.071601, 0.277881, 0.957943,
		42.422569, 32.453030, 33.533169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889412, 32.733383, 32.900089>,  <42.472691, 32.258514, 32.862606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889412, 32.733383, 32.900089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118542, 32.818897, 33.216614>,  <42.256020, 32.870205, 33.406528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118542, 32.818897, 33.216614>,  <41.889412, 32.733383, 32.900089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118542, 32.818897, 33.216614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035211, 0.970915, -0.236819,
		-0.818924, 0.107792, 0.563688,
		0.572820, 0.213785, 0.791311,
		42.290386, 32.883034, 33.454006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631256, 33.405357, 33.102299>,  <41.889412, 32.733383, 32.900089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631256, 33.405357, 33.102299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.978580, 33.397751, 33.300564>,  <42.186974, 33.393185, 33.419521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.978580, 33.397751, 33.300564>,  <41.631256, 33.405357, 33.102299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978580, 33.397751, 33.300564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140904, 0.967558, -0.209708,
		-0.475592, 0.251932, 0.842818,
		0.868308, -0.019021, 0.495661,
		42.239075, 33.392044, 33.449261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617527, 33.996696, 33.508144>,  <41.631256, 33.405357, 33.102299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617527, 33.996696, 33.508144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.007103, 33.910500, 33.479862>,  <42.240849, 33.858784, 33.462891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.007103, 33.910500, 33.479862>,  <41.617527, 33.996696, 33.508144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007103, 33.910500, 33.479862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184437, 0.933999, -0.305987,
		0.131979, 0.284973, 0.949406,
		0.973943, -0.215490, -0.070709,
		42.299286, 33.845852, 33.458649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908836, 34.490677, 33.871311>,  <41.617527, 33.996696, 33.508144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908836, 34.490677, 33.871311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226070, 34.360893, 33.665112>,  <42.416409, 34.283024, 33.541389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226070, 34.360893, 33.665112>,  <41.908836, 34.490677, 33.871311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226070, 34.360893, 33.665112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207040, 0.939523, -0.272822,
		0.572847, 0.109641, 0.812296,
		0.793083, -0.324463, -0.515503,
		42.463997, 34.263554, 33.510460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393547, 34.945873, 33.982494>,  <41.908836, 34.490677, 33.871311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393547, 34.945873, 33.982494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.522907, 34.753757, 33.656368>,  <42.600525, 34.638489, 33.460693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.522907, 34.753757, 33.656368>,  <42.393547, 34.945873, 33.982494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522907, 34.753757, 33.656368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169015, 0.877078, -0.449630,
		0.931046, 0.007610, 0.364823,
		0.323400, -0.480287, -0.815314,
		42.619926, 34.609673, 33.411774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057404, 35.130257, 33.786766>,  <42.393547, 34.945873, 33.982494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057404, 35.130257, 33.786766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877254, 35.037983, 33.441757>,  <42.769165, 34.982620, 33.234753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877254, 35.037983, 33.441757>,  <43.057404, 35.130257, 33.786766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877254, 35.037983, 33.441757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246178, 0.896514, -0.368319,
		0.858231, -0.378216, -0.346977,
		-0.450374, -0.230685, -0.862525,
		42.742142, 34.968777, 33.182999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119053, 35.533360, 34.444885>,  <43.057404, 35.130257, 33.786766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119053, 35.533360, 34.444885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269650, 35.852177, 34.256004>,  <43.360008, 36.043468, 34.142677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269650, 35.852177, 34.256004>,  <43.119053, 35.533360, 34.444885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269650, 35.852177, 34.256004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422805, 0.601359, 0.677941,
		0.824312, -0.055589, 0.563400,
		0.376492, 0.797043, -0.472204,
		43.382599, 36.091290, 34.114342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634369, 35.922649, 34.904335>,  <43.119053, 35.533360, 34.444885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634369, 35.922649, 34.904335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445400, 36.136639, 34.624157>,  <43.332020, 36.265030, 34.456051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445400, 36.136639, 34.624157>,  <43.634369, 35.922649, 34.904335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445400, 36.136639, 34.624157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377680, 0.595185, 0.709304,
		0.796353, 0.599634, -0.079129,
		-0.472420, 0.534971, -0.700447,
		43.303673, 36.297131, 34.414024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731705, 35.774979, 35.751217>,  <43.634369, 35.922649, 34.904335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731705, 35.774979, 35.751217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067108, 35.753822, 35.968140>,  <44.268353, 35.741127, 36.098293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067108, 35.753822, 35.968140>,  <43.731705, 35.774979, 35.751217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067108, 35.753822, 35.968140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331323, -0.839634, 0.430395,
		0.432578, -0.540571, -0.721567,
		0.838511, -0.052893, 0.542311,
		44.318661, 35.737953, 36.130833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878174, 35.063057, 35.837486>,  <43.731705, 35.774979, 35.751217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878174, 35.063057, 35.837486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135166, 35.177830, 36.121708>,  <44.289360, 35.246693, 36.292240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135166, 35.177830, 36.121708>,  <43.878174, 35.063057, 35.837486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135166, 35.177830, 36.121708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048895, -0.910011, 0.411691,
		0.764739, -0.299246, -0.570636,
		0.642482, 0.286935, 0.710553,
		44.327911, 35.263908, 36.334873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434288, 34.547592, 35.905636>,  <43.878174, 35.063057, 35.837486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434288, 34.547592, 35.905636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410847, 34.752941, 36.248100>,  <44.396782, 34.876152, 36.453579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410847, 34.752941, 36.248100>,  <44.434288, 34.547592, 35.905636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410847, 34.752941, 36.248100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035439, -0.858166, 0.512148,
		0.997652, -0.000329, 0.068482,
		-0.058600, 0.513373, 0.856163,
		44.393269, 34.906952, 36.504948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915787, 34.262127, 36.352684>,  <44.434288, 34.547592, 35.905636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915787, 34.262127, 36.352684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663116, 34.457783, 36.593258>,  <44.511513, 34.575176, 36.737602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663116, 34.457783, 36.593258>,  <44.915787, 34.262127, 36.352684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663116, 34.457783, 36.593258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024277, -0.787918, 0.615302,
		0.774853, 0.374070, 0.509583,
		-0.631675, 0.489140, 0.601439,
		44.473614, 34.604527, 36.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183651, 34.153603, 37.041195>,  <44.915787, 34.262127, 36.352684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183651, 34.153603, 37.041195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792213, 34.235912, 37.042019>,  <44.557350, 34.285297, 37.042515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792213, 34.235912, 37.042019>,  <45.183651, 34.153603, 37.041195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792213, 34.235912, 37.042019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181832, -0.869344, 0.459542,
		0.096351, 0.449332, 0.888154,
		-0.978598, 0.205771, 0.002059,
		44.498634, 34.297646, 37.042637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952614, 34.003208, 37.681198>,  <45.183651, 34.153603, 37.041195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952614, 34.003208, 37.681198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610428, 34.023891, 37.475086>,  <44.405117, 34.036301, 37.351418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610428, 34.023891, 37.475086>,  <44.952614, 34.003208, 37.681198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610428, 34.023891, 37.475086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307098, -0.851826, 0.424362,
		-0.416986, 0.521266, 0.744583,
		-0.855461, 0.051707, -0.515280,
		44.353790, 34.039402, 37.320503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404736, 33.810074, 38.104332>,  <44.952614, 34.003208, 37.681198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404736, 33.810074, 38.104332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.280724, 33.744320, 37.729771>,  <44.206318, 33.704868, 37.505032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.280724, 33.744320, 37.729771>,  <44.404736, 33.810074, 38.104332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280724, 33.744320, 37.729771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290416, -0.921485, 0.257922,
		-0.905285, 0.351911, 0.237946,
		-0.310029, -0.164389, -0.936407,
		44.187714, 33.695004, 37.448849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888588, 33.379620, 38.185265>,  <44.404736, 33.810074, 38.104332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888588, 33.379620, 38.185265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939476, 33.329967, 37.791634>,  <43.970009, 33.300175, 37.555454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939476, 33.329967, 37.791634>,  <43.888588, 33.379620, 38.185265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939476, 33.329967, 37.791634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331326, -0.940467, 0.075799,
		-0.934899, 0.316406, -0.160781,
		0.127226, -0.124135, -0.984075,
		43.977642, 33.292728, 37.496410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352390, 33.151333, 37.940304>,  <43.888588, 33.379620, 38.185265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352390, 33.151333, 37.940304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.598171, 33.030624, 37.648720>,  <43.745640, 32.958199, 37.473770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.598171, 33.030624, 37.648720>,  <43.352390, 33.151333, 37.940304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598171, 33.030624, 37.648720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443488, -0.896276, -0.002788,
		-0.652505, 0.324997, -0.684553,
		0.614455, -0.301772, -0.728957,
		43.782509, 32.940094, 37.430031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964195, 32.854851, 37.278397>,  <43.352390, 33.151333, 37.940304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964195, 32.854851, 37.278397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.327839, 32.688541, 37.268219>,  <43.546024, 32.588757, 37.262112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.327839, 32.688541, 37.268219>,  <42.964195, 32.854851, 37.278397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327839, 32.688541, 37.268219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416537, -0.907945, -0.046190,
		-0.003896, 0.052589, -0.998608,
		0.909110, -0.415777, -0.025443,
		43.600571, 32.563808, 37.260586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813751, 32.310974, 36.765759>,  <42.964195, 32.854851, 37.278397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813751, 32.310974, 36.765759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171059, 32.233379, 36.927963>,  <43.385441, 32.186821, 37.025288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171059, 32.233379, 36.927963>,  <42.813751, 32.310974, 36.765759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171059, 32.233379, 36.927963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204978, -0.978625, -0.016626,
		0.400073, -0.068270, -0.913937,
		0.893267, -0.193989, 0.405516,
		43.439037, 32.175182, 37.049618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056938, 31.767344, 36.409935>,  <42.813751, 32.310974, 36.765759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056938, 31.767344, 36.409935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301739, 31.726639, 36.723648>,  <43.448620, 31.702217, 36.911877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301739, 31.726639, 36.723648>,  <43.056938, 31.767344, 36.409935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301739, 31.726639, 36.723648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330451, -0.933872, 0.136693,
		0.718508, -0.342823, -0.605160,
		0.612003, -0.101761, 0.784281,
		43.485340, 31.696110, 36.958931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348419, 31.203005, 36.292236>,  <43.056938, 31.767344, 36.409935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348419, 31.203005, 36.292236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396877, 31.246330, 36.686920>,  <43.425953, 31.272326, 36.923729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396877, 31.246330, 36.686920>,  <43.348419, 31.203005, 36.292236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396877, 31.246330, 36.686920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329989, -0.933099, 0.142946,
		0.936179, -0.342920, -0.077299,
		0.121147, 0.108315, 0.986707,
		43.433220, 31.278826, 36.982933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606236, 30.524828, 36.477905>,  <43.348419, 31.203005, 36.292236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606236, 30.524828, 36.477905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456715, 30.701193, 36.804310>,  <43.367001, 30.807011, 37.000153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456715, 30.701193, 36.804310>,  <43.606236, 30.524828, 36.477905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456715, 30.701193, 36.804310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386040, -0.873919, 0.295361,
		0.843352, -0.204603, 0.496885,
		-0.373805, 0.440911, 0.816007,
		43.344574, 30.833466, 37.049110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821068, 30.231720, 37.139454>,  <43.606236, 30.524828, 36.477905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821068, 30.231720, 37.139454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.459141, 30.394926, 37.188156>,  <43.241985, 30.492849, 37.217377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.459141, 30.394926, 37.188156>,  <43.821068, 30.231720, 37.139454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459141, 30.394926, 37.188156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352996, -0.878706, 0.321357,
		0.238104, 0.247792, 0.939098,
		-0.904821, 0.408014, 0.121754,
		43.187695, 30.517330, 37.224682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614956, 29.952845, 37.797169>,  <43.821068, 30.231720, 37.139454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614956, 29.952845, 37.797169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271061, 30.045135, 37.614910>,  <43.064724, 30.100510, 37.505554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271061, 30.045135, 37.614910>,  <43.614956, 29.952845, 37.797169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271061, 30.045135, 37.614910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361897, -0.904728, 0.224717,
		-0.360390, 0.358096, 0.861328,
		-0.859738, 0.230726, -0.455648,
		43.013138, 30.114353, 37.478214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120228, 29.651104, 38.139397>,  <43.614956, 29.952845, 37.797169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120228, 29.651104, 38.139397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912247, 29.726149, 37.806061>,  <42.787457, 29.771175, 37.606060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912247, 29.726149, 37.806061>,  <43.120228, 29.651104, 38.139397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912247, 29.726149, 37.806061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481001, -0.870514, 0.104136,
		-0.705895, 0.454982, 0.542867,
		-0.519953, 0.187610, -0.833338,
		42.756260, 29.782431, 37.556061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425945, 29.549129, 38.328789>,  <43.120228, 29.651104, 38.139397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425945, 29.549129, 38.328789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431252, 29.519129, 37.929951>,  <42.434437, 29.501127, 37.690647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.431252, 29.519129, 37.929951>,  <42.425945, 29.549129, 38.328789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431252, 29.519129, 37.929951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555552, -0.829660, 0.055017,
		-0.831376, 0.553208, -0.052673,
		0.013265, -0.075002, -0.997095,
		42.435230, 29.496628, 37.630821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772327, 29.409330, 38.140591>,  <42.425945, 29.549129, 38.328789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772327, 29.409330, 38.140591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986027, 29.256699, 37.838871>,  <42.114246, 29.165119, 37.657837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986027, 29.256699, 37.838871>,  <41.772327, 29.409330, 38.140591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986027, 29.256699, 37.838871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586086, -0.810232, -0.005238,
		-0.609161, 0.444884, -0.656507,
		0.534253, -0.381579, -0.754301,
		42.146301, 29.142225, 37.612579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.022598, 40.555275, 37.292942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867222, 40.208084, 37.416698>,  <37.773998, 39.999767, 37.490952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867222, 40.208084, 37.416698>,  <38.022598, 40.555275, 37.292942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867222, 40.208084, 37.416698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622185, -0.494715, -0.606748,
		0.679707, -0.043187, 0.732211,
		-0.388439, -0.867982, 0.309391,
		37.750690, 39.947689, 37.509514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581543, 40.058334, 37.239792>,  <38.022598, 40.555275, 37.292942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581543, 40.058334, 37.239792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240677, 39.849026, 37.239929>,  <38.036156, 39.723442, 37.240013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240677, 39.849026, 37.239929>,  <38.581543, 40.058334, 37.239792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240677, 39.849026, 37.239929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398189, -0.648898, -0.648365,
		0.339495, -0.552377, 0.761330,
		-0.852167, -0.523269, 0.000347,
		37.985027, 39.692043, 37.240032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825134, 39.377533, 37.323334>,  <38.581543, 40.058334, 37.239792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825134, 39.377533, 37.323334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451927, 39.369164, 37.179642>,  <38.228004, 39.364140, 37.093426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451927, 39.369164, 37.179642>,  <38.825134, 39.377533, 37.323334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451927, 39.369164, 37.179642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279047, -0.672379, -0.685594,
		-0.227190, -0.739911, 0.633179,
		-0.933015, -0.020926, -0.359227,
		38.172024, 39.362885, 37.071873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574524, 38.588795, 37.318722>,  <38.825134, 39.377533, 37.323334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574524, 38.588795, 37.318722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364037, 38.794144, 37.047562>,  <38.237743, 38.917351, 36.884865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364037, 38.794144, 37.047562>,  <38.574524, 38.588795, 37.318722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364037, 38.794144, 37.047562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223627, -0.685596, -0.692784,
		-0.820419, -0.516151, 0.245969,
		-0.526217, 0.513368, -0.677901,
		38.206173, 38.948154, 36.844193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303707, 38.047619, 36.914787>,  <38.574524, 38.588795, 37.318722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303707, 38.047619, 36.914787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201141, 38.366333, 36.695923>,  <38.139603, 38.557560, 36.564602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201141, 38.366333, 36.695923>,  <38.303707, 38.047619, 36.914787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201141, 38.366333, 36.695923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015819, -0.569475, -0.821857,
		-0.966438, -0.202077, 0.158623,
		-0.256411, 0.796783, -0.547166,
		38.124218, 38.605370, 36.531773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707367, 37.862522, 36.581635>,  <38.303707, 38.047619, 36.914787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707367, 37.862522, 36.581635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882465, 38.150646, 36.366402>,  <37.987526, 38.323521, 36.237263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882465, 38.150646, 36.366402>,  <37.707367, 37.862522, 36.581635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882465, 38.150646, 36.366402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105409, -0.635460, -0.764905,
		-0.892897, 0.278117, -0.354099,
		0.437748, 0.720306, -0.538085,
		38.013790, 38.366737, 36.204975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331421, 37.903713, 35.947437>,  <37.707367, 37.862522, 36.581635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331421, 37.903713, 35.947437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668945, 38.098560, 35.857376>,  <37.871460, 38.215469, 35.803341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668945, 38.098560, 35.857376>,  <37.331421, 37.903713, 35.947437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668945, 38.098560, 35.857376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066102, -0.510711, -0.857207,
		-0.532549, 0.708441, -0.463145,
		0.843814, 0.487119, -0.225149,
		37.922089, 38.244698, 35.789833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264999, 38.017113, 35.296234>,  <37.331421, 37.903713, 35.947437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264999, 38.017113, 35.296234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655815, 38.085537, 35.347034>,  <37.890305, 38.126591, 35.377514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655815, 38.085537, 35.347034>,  <37.264999, 38.017113, 35.296234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655815, 38.085537, 35.347034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195987, -0.487837, -0.850650,
		-0.083557, 0.856010, -0.510162,
		0.977040, 0.171063, 0.127005,
		37.948929, 38.136856, 35.385136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500862, 38.262886, 34.605995>,  <37.264999, 38.017113, 35.296234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500862, 38.262886, 34.605995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788883, 38.078930, 34.813850>,  <37.961697, 37.968555, 34.938564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788883, 38.078930, 34.813850>,  <37.500862, 38.262886, 34.605995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788883, 38.078930, 34.813850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228394, -0.550057, -0.803289,
		0.655257, 0.697092, -0.291033,
		0.720051, -0.459891, 0.519641,
		38.004898, 37.940964, 34.969742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075245, 38.133106, 34.122082>,  <37.500862, 38.262886, 34.605995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075245, 38.133106, 34.122082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147976, 37.873539, 34.417606>,  <38.191612, 37.717796, 34.594921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147976, 37.873539, 34.417606>,  <38.075245, 38.133106, 34.122082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147976, 37.873539, 34.417606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252033, -0.695482, -0.672893,
		0.950484, 0.308552, 0.037095,
		0.181824, -0.648923, 0.738809,
		38.202522, 37.678864, 34.639248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641178, 37.896664, 33.978531>,  <38.075245, 38.133106, 34.122082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641178, 37.896664, 33.978531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481594, 37.605797, 34.201977>,  <38.385845, 37.431274, 34.336044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481594, 37.605797, 34.201977>,  <38.641178, 37.896664, 33.978531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481594, 37.605797, 34.201977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275256, -0.676079, -0.683484,
		0.874680, -0.118921, 0.469887,
		-0.398961, -0.727169, 0.558619,
		38.361904, 37.387646, 34.369564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896435, 37.332611, 33.609524>,  <38.641178, 37.896664, 33.978531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896435, 37.332611, 33.609524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663021, 37.194794, 33.903675>,  <38.522972, 37.112103, 34.080166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663021, 37.194794, 33.903675>,  <38.896435, 37.332611, 33.609524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663021, 37.194794, 33.903675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074007, -0.924333, -0.374342,
		0.808711, -0.164017, 0.564876,
		-0.583532, -0.344539, 0.735380,
		38.487961, 37.091431, 34.124290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314438, 36.788361, 33.837021>,  <38.896435, 37.332611, 33.609524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314438, 36.788361, 33.837021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920715, 36.774788, 33.906296>,  <38.684483, 36.766644, 33.947861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920715, 36.774788, 33.906296>,  <39.314438, 36.788361, 33.837021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920715, 36.774788, 33.906296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069219, -0.828476, -0.555731,
		0.162338, -0.558996, 0.813124,
		-0.984305, -0.033933, 0.173186,
		38.625423, 36.764606, 33.958252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899437, 36.463978, 34.064579>,  <39.314438, 36.788361, 33.837021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899437, 36.463978, 34.064579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707394, 36.798397, 34.170799>,  <39.592167, 36.999050, 34.234531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707394, 36.798397, 34.170799>,  <39.899437, 36.463978, 34.064579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707394, 36.798397, 34.170799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322300, -0.449669, 0.833018,
		0.815853, 0.314355, 0.485350,
		-0.480111, 0.836049, 0.265547,
		39.563362, 37.049213, 34.250462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246704, 36.193764, 34.589043>,  <39.899437, 36.463978, 34.064579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246704, 36.193764, 34.589043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438114, 35.900940, 34.782993>,  <40.552959, 35.725246, 34.899364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438114, 35.900940, 34.782993>,  <40.246704, 36.193764, 34.589043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438114, 35.900940, 34.782993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075716, 0.584546, 0.807819,
		-0.874804, -0.349848, 0.335147,
		0.478523, -0.732060, 0.484875,
		40.581673, 35.681320, 34.928455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837349, 36.092201, 35.121212>,  <40.246704, 36.193764, 34.589043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837349, 36.092201, 35.121212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205196, 35.964916, 35.213341>,  <40.425903, 35.888546, 35.268620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205196, 35.964916, 35.213341>,  <39.837349, 36.092201, 35.121212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205196, 35.964916, 35.213341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029155, 0.640010, 0.767813,
		-0.391738, -0.699377, 0.597840,
		0.919615, -0.318212, 0.230326,
		40.481079, 35.869453, 35.282440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652229, 36.006981, 35.712025>,  <39.837349, 36.092201, 35.121212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652229, 36.006981, 35.712025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050941, 35.978500, 35.726788>,  <40.290169, 35.961411, 35.735645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050941, 35.978500, 35.726788>,  <39.652229, 36.006981, 35.712025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050941, 35.978500, 35.726788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008364, 0.365396, 0.930815,
		-0.079764, -0.928125, 0.363623,
		0.996779, -0.071204, 0.036908,
		40.349976, 35.957138, 35.737862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837799, 35.602657, 36.379944>,  <39.652229, 36.006981, 35.712025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837799, 35.602657, 36.379944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148457, 35.823578, 36.258759>,  <40.334850, 35.956131, 36.186047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148457, 35.823578, 36.258759>,  <39.837799, 35.602657, 36.379944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148457, 35.823578, 36.258759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110871, 0.353593, 0.928806,
		0.620108, -0.754941, 0.213381,
		0.776643, 0.552302, -0.302967,
		40.381451, 35.989269, 36.167870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328621, 35.535713, 36.899006>,  <39.837799, 35.602657, 36.379944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328621, 35.535713, 36.899006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454399, 35.860264, 36.701912>,  <40.529865, 36.054996, 36.583656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454399, 35.860264, 36.701912>,  <40.328621, 35.535713, 36.899006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454399, 35.860264, 36.701912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172756, 0.461483, 0.870166,
		0.933424, -0.358742, 0.004940,
		0.314445, 0.811381, -0.492733,
		40.548733, 36.103680, 36.554092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861023, 35.726009, 37.178795>,  <40.328621, 35.535713, 36.899006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861023, 35.726009, 37.178795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758575, 36.059929, 36.983856>,  <40.697105, 36.260281, 36.866894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758575, 36.059929, 36.983856>,  <40.861023, 35.726009, 37.178795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758575, 36.059929, 36.983856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122483, 0.528129, 0.840284,
		0.958854, 0.155521, -0.237514,
		-0.256120, 0.834801, -0.487350,
		40.681740, 36.310368, 36.837650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442287, 36.252720, 37.228489>,  <40.861023, 35.726009, 37.178795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442287, 36.252720, 37.228489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086937, 36.431313, 37.185692>,  <40.873726, 36.538467, 37.160015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086937, 36.431313, 37.185692>,  <41.442287, 36.252720, 37.228489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086937, 36.431313, 37.185692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176836, 0.547806, 0.817703,
		0.423701, 0.707504, -0.565610,
		-0.888373, 0.446482, -0.106994,
		40.820427, 36.565258, 37.153595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559261, 36.829197, 37.526531>,  <41.442287, 36.252720, 37.228489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559261, 36.829197, 37.526531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160091, 36.817116, 37.503792>,  <40.920589, 36.809868, 37.490147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160091, 36.817116, 37.503792>,  <41.559261, 36.829197, 37.526531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160091, 36.817116, 37.503792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064188, 0.399656, 0.914415,
		-0.004893, 0.916168, -0.400765,
		-0.997926, -0.030198, -0.056852,
		40.860714, 36.808056, 37.486736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328918, 37.539307, 37.683498>,  <41.559261, 36.829197, 37.526531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328918, 37.539307, 37.683498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980759, 37.348904, 37.733810>,  <40.771862, 37.234661, 37.763996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980759, 37.348904, 37.733810>,  <41.328918, 37.539307, 37.683498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980759, 37.348904, 37.733810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152137, 0.502997, 0.850792,
		-0.468254, 0.721392, -0.510227,
		-0.870398, -0.476011, 0.125780,
		40.719639, 37.206100, 37.771545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788658, 38.004768, 37.896729>,  <41.328918, 37.539307, 37.683498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788658, 38.004768, 37.896729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644611, 37.651798, 38.017822>,  <40.558182, 37.440018, 38.090477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644611, 37.651798, 38.017822>,  <40.788658, 38.004768, 37.896729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644611, 37.651798, 38.017822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196891, 0.389084, 0.899915,
		-0.911892, 0.264473, -0.313858,
		-0.360120, -0.882421, 0.302731,
		40.536575, 37.387074, 38.108643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244228, 38.148151, 38.198082>,  <40.788658, 38.004768, 37.896729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244228, 38.148151, 38.198082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293686, 37.774376, 38.331665>,  <40.323360, 37.550110, 38.411816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293686, 37.774376, 38.331665>,  <40.244228, 38.148151, 38.198082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293686, 37.774376, 38.331665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357744, 0.271938, 0.893347,
		-0.925598, -0.229928, -0.300668,
		0.123642, -0.934442, 0.333961,
		40.330780, 37.494041, 38.431854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638115, 37.969395, 38.482704>,  <40.244228, 38.148151, 38.198082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638115, 37.969395, 38.482704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919502, 37.729233, 38.634838>,  <40.088333, 37.585136, 38.726116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919502, 37.729233, 38.634838>,  <39.638115, 37.969395, 38.482704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919502, 37.729233, 38.634838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394780, 0.114895, 0.911564,
		-0.591005, -0.791400, -0.156203,
		0.703465, -0.600404, 0.380332,
		40.130543, 37.549110, 38.748940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272728, 37.367760, 38.939709>,  <39.638115, 37.969395, 38.482704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272728, 37.367760, 38.939709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645958, 37.358967, 39.083313>,  <39.869896, 37.353691, 39.169476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645958, 37.358967, 39.083313>,  <39.272728, 37.367760, 38.939709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645958, 37.358967, 39.083313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349957, 0.175039, 0.920267,
		-0.083075, -0.984316, 0.155630,
		0.933075, -0.021988, 0.359009,
		39.925880, 37.352371, 39.191017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243031, 36.920517, 39.462357>,  <39.272728, 37.367760, 38.939709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243031, 36.920517, 39.462357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560280, 37.155190, 39.527798>,  <39.750629, 37.295994, 39.567062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560280, 37.155190, 39.527798>,  <39.243031, 36.920517, 39.462357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560280, 37.155190, 39.527798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374556, 0.258016, 0.890582,
		0.480273, -0.767619, 0.424382,
		0.793124, 0.586677, 0.163599,
		39.798218, 37.331192, 39.576878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196110, 36.135540, 39.641804>,  <39.243031, 36.920517, 39.462357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196110, 36.135540, 39.641804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861290, 35.922260, 39.690872>,  <38.660397, 35.794292, 39.720314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861290, 35.922260, 39.690872>,  <39.196110, 36.135540, 39.641804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861290, 35.922260, 39.690872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030313, -0.178678, -0.983441,
		0.546287, -0.826907, 0.133399,
		-0.837049, -0.533197, 0.122675,
		38.610176, 35.762302, 39.727676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362232, 35.543713, 39.279556>,  <39.196110, 36.135540, 39.641804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362232, 35.543713, 39.279556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963478, 35.521084, 39.301521>,  <38.724224, 35.507507, 39.314701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963478, 35.521084, 39.301521>,  <39.362232, 35.543713, 39.279556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963478, 35.521084, 39.301521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035237, -0.303361, -0.952224,
		0.070525, -0.951195, 0.300423,
		-0.996887, -0.056569, 0.054912,
		38.664413, 35.504112, 39.317993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148159, 34.829868, 39.180378>,  <39.362232, 35.543713, 39.279556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148159, 34.829868, 39.180378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823418, 35.054943, 39.118038>,  <38.628574, 35.189987, 39.080635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823418, 35.054943, 39.118038>,  <39.148159, 34.829868, 39.180378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823418, 35.054943, 39.118038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118044, -0.419590, -0.900005,
		-0.571809, -0.712273, 0.407066,
		-0.811850, 0.562683, -0.155846,
		38.579865, 35.223747, 39.071285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582214, 34.393929, 38.979088>,  <39.148159, 34.829868, 39.180378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582214, 34.393929, 38.979088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495018, 34.758785, 38.840252>,  <38.442699, 34.977699, 38.756950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495018, 34.758785, 38.840252>,  <38.582214, 34.393929, 38.979088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495018, 34.758785, 38.840252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012468, -0.358216, -0.933556,
		-0.975871, -0.199181, 0.089461,
		-0.217993, 0.912145, -0.347089,
		38.429619, 35.032429, 38.736126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109509, 34.221939, 38.473606>,  <38.582214, 34.393929, 38.979088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109509, 34.221939, 38.473606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185375, 34.604733, 38.385773>,  <38.230896, 34.834408, 38.333073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185375, 34.604733, 38.385773>,  <38.109509, 34.221939, 38.473606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185375, 34.604733, 38.385773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029042, -0.218079, -0.975499,
		-0.981419, 0.191396, -0.013570,
		0.189666, 0.956979, -0.219586,
		38.242275, 34.891827, 38.319897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739719, 34.288376, 37.912651>,  <38.109509, 34.221939, 38.473606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739719, 34.288376, 37.912651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987255, 34.602028, 37.893955>,  <38.135777, 34.790218, 37.882736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987255, 34.602028, 37.893955>,  <37.739719, 34.288376, 37.912651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987255, 34.602028, 37.893955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037363, -0.088817, -0.995347,
		-0.784628, 0.614214, -0.084260,
		0.618840, 0.784126, -0.046739,
		38.172909, 34.837265, 37.879932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410389, 34.784801, 37.450867>,  <37.739719, 34.288376, 37.912651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410389, 34.784801, 37.450867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805164, 34.845188, 37.473377>,  <38.042030, 34.881420, 37.486885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805164, 34.845188, 37.473377>,  <37.410389, 34.784801, 37.450867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805164, 34.845188, 37.473377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095964, -0.270223, -0.958003,
		-0.129416, 0.950889, -0.281180,
		0.986936, 0.150964, 0.056280,
		38.101246, 34.890476, 37.490261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548050, 34.866432, 36.765751>,  <37.410389, 34.784801, 37.450867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548050, 34.866432, 36.765751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913525, 34.818386, 36.921055>,  <38.132809, 34.789558, 37.014236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913525, 34.818386, 36.921055>,  <37.548050, 34.866432, 36.765751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913525, 34.818386, 36.921055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337373, -0.308507, -0.889383,
		0.226605, 0.943608, -0.241358,
		0.913690, -0.120111, 0.388257,
		38.187634, 34.782352, 37.037533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885201, 35.111156, 36.327343>,  <37.548050, 34.866432, 36.765751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885201, 35.111156, 36.327343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167313, 34.889111, 36.503719>,  <38.336578, 34.755882, 36.609547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167313, 34.889111, 36.503719>,  <37.885201, 35.111156, 36.327343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167313, 34.889111, 36.503719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428477, -0.161740, -0.888958,
		0.564794, 0.815895, 0.123784,
		0.705276, -0.555117, 0.440943,
		38.378895, 34.722576, 36.636002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553135, 35.331627, 36.006447>,  <37.885201, 35.111156, 36.327343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553135, 35.331627, 36.006447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634254, 34.980511, 36.180050>,  <38.682926, 34.769840, 36.284210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634254, 34.980511, 36.180050>,  <38.553135, 35.331627, 36.006447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634254, 34.980511, 36.180050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442479, -0.313238, -0.840294,
		0.873547, 0.362450, 0.324878,
		0.202801, -0.877788, 0.434004,
		38.695095, 34.717175, 36.310249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298008, 35.123016, 35.989471>,  <38.553135, 35.331627, 36.006447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298008, 35.123016, 35.989471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073521, 34.792099, 35.979561>,  <38.938828, 34.593548, 35.973614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073521, 34.792099, 35.979561>,  <39.298008, 35.123016, 35.989471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073521, 34.792099, 35.979561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450539, -0.280250, -0.847628,
		0.694294, -0.486871, 0.530011,
		-0.561222, -0.827294, -0.024779,
		38.905155, 34.543911, 35.972126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712906, 34.615009, 35.919598>,  <39.298008, 35.123016, 35.989471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712906, 34.615009, 35.919598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358810, 34.479576, 35.792023>,  <39.146355, 34.398315, 35.715477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358810, 34.479576, 35.792023>,  <39.712906, 34.615009, 35.919598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358810, 34.479576, 35.792023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439308, -0.383241, -0.812487,
		0.152865, -0.859353, 0.488000,
		-0.885235, -0.338583, -0.318937,
		39.093239, 34.378002, 35.696342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.813934, 35.866558, 43.393757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423546, 35.907608, 43.316864>,  <38.189312, 35.932240, 43.270729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423546, 35.907608, 43.316864>,  <38.813934, 35.866558, 43.393757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423546, 35.907608, 43.316864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101971, -0.564520, -0.819097,
		-0.192579, -0.819014, 0.540489,
		-0.975969, 0.102627, -0.192230,
		38.130756, 35.938396, 43.259193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729240, 35.333008, 43.012547>,  <38.813934, 35.866558, 43.393757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729240, 35.333008, 43.012547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391254, 35.538277, 42.952309>,  <38.188461, 35.661438, 42.916164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391254, 35.538277, 42.952309>,  <38.729240, 35.333008, 43.012547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391254, 35.538277, 42.952309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008290, -0.294123, -0.955732,
		-0.534753, -0.806314, 0.252779,
		-0.844968, 0.513176, -0.150598,
		38.137764, 35.692230, 42.907127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250912, 34.859001, 42.783382>,  <38.729240, 35.333008, 43.012547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250912, 34.859001, 42.783382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112019, 35.215759, 42.667480>,  <38.028683, 35.429813, 42.597939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112019, 35.215759, 42.667480>,  <38.250912, 34.859001, 42.783382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112019, 35.215759, 42.667480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008698, -0.312025, -0.950034,
		-0.937739, -0.327361, 0.116103,
		-0.347232, 0.891894, -0.289751,
		38.007851, 35.483326, 42.580555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820808, 34.738453, 42.217911>,  <38.250912, 34.859001, 42.783382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820808, 34.738453, 42.217911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.881359, 35.130878, 42.169571>,  <37.917690, 35.366333, 42.140568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.881359, 35.130878, 42.169571>,  <37.820808, 34.738453, 42.217911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881359, 35.130878, 42.169571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029789, -0.126731, -0.991490,
		-0.988028, 0.146485, -0.048408,
		0.151374, 0.981062, -0.120850,
		37.926769, 35.425198, 42.133316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316422, 35.024284, 41.676537>,  <37.820808, 34.738453, 42.217911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316422, 35.024284, 41.676537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643360, 35.251350, 41.715916>,  <37.839523, 35.387592, 41.739544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643360, 35.251350, 41.715916>,  <37.316422, 35.024284, 41.676537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643360, 35.251350, 41.715916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161035, -0.061029, -0.985060,
		-0.553179, 0.820992, -0.141297,
		0.817349, 0.567669, 0.098449,
		37.888565, 35.421650, 41.745449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263699, 35.572079, 41.185768>,  <37.316422, 35.024284, 41.676537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263699, 35.572079, 41.185768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658928, 35.565346, 41.246994>,  <37.896065, 35.561306, 41.283730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658928, 35.565346, 41.246994>,  <37.263699, 35.572079, 41.185768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658928, 35.565346, 41.246994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153495, 0.028028, -0.987752,
		0.012334, 0.999465, 0.030277,
		0.988072, -0.016831, 0.153067,
		37.955349, 35.560295, 41.292915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485607, 36.177719, 40.861481>,  <37.263699, 35.572079, 41.185768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485607, 36.177719, 40.861481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.810009, 35.945576, 40.891018>,  <38.004650, 35.806290, 40.908741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.810009, 35.945576, 40.891018>,  <37.485607, 36.177719, 40.861481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810009, 35.945576, 40.891018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199778, 0.156093, -0.967328,
		0.549875, 0.799258, 0.242536,
		0.811003, -0.580363, 0.073842,
		38.053310, 35.771465, 40.913170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911190, 36.509159, 40.442219>,  <37.485607, 36.177719, 40.861481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911190, 36.509159, 40.442219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095097, 36.159260, 40.503448>,  <38.205441, 35.949322, 40.540188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095097, 36.159260, 40.503448>,  <37.911190, 36.509159, 40.442219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095097, 36.159260, 40.503448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232438, -0.047829, -0.971434,
		0.857082, 0.482212, 0.181335,
		0.459764, -0.874748, 0.153078,
		38.233025, 35.896835, 40.549374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702698, 36.566795, 40.106266>,  <37.911190, 36.509159, 40.442219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702698, 36.566795, 40.106266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.583691, 36.185356, 40.124710>,  <38.512287, 35.956493, 40.135777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.583691, 36.185356, 40.124710>,  <38.702698, 36.566795, 40.106266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583691, 36.185356, 40.124710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212252, -0.113159, -0.970641,
		0.930822, -0.278999, 0.236071,
		-0.297521, -0.953601, 0.046113,
		38.494434, 35.899277, 40.138542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414963, 36.903755, 40.224636>,  <38.702698, 36.566795, 40.106266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414963, 36.903755, 40.224636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602871, 37.240395, 40.118031>,  <39.715614, 37.442379, 40.054066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602871, 37.240395, 40.118031>,  <39.414963, 36.903755, 40.224636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602871, 37.240395, 40.118031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288457, 0.431667, 0.854668,
		0.834333, -0.324616, 0.445547,
		0.469767, 0.841599, -0.266516,
		39.743801, 37.492874, 40.038074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930424, 36.951534, 40.687508>,  <39.414963, 36.903755, 40.224636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930424, 36.951534, 40.687508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835316, 37.308414, 40.533913>,  <39.778252, 37.522541, 40.441753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835316, 37.308414, 40.533913>,  <39.930424, 36.951534, 40.687508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835316, 37.308414, 40.533913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104571, 0.369517, 0.923321,
		0.965675, 0.259696, 0.005437,
		-0.237774, 0.892197, -0.383990,
		39.763985, 37.576073, 40.418716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310989, 37.288822, 41.150272>,  <39.930424, 36.951534, 40.687508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310989, 37.288822, 41.150272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.064560, 37.538357, 40.957905>,  <39.916702, 37.688076, 40.842484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.064560, 37.538357, 40.957905>,  <40.310989, 37.288822, 41.150272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064560, 37.538357, 40.957905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151584, 0.505235, 0.849565,
		0.772967, 0.596292, -0.216697,
		-0.616072, 0.623837, -0.480918,
		39.879738, 37.725510, 40.813629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499855, 37.931217, 41.380554>,  <40.310989, 37.288822, 41.150272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499855, 37.931217, 41.380554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.131020, 38.002182, 41.242989>,  <39.909718, 38.044762, 41.160450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.131020, 38.002182, 41.242989>,  <40.499855, 37.931217, 41.380554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131020, 38.002182, 41.242989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247230, 0.413630, 0.876235,
		0.297708, 0.892992, -0.337542,
		-0.922089, 0.177412, -0.343916,
		39.854393, 38.055405, 41.139812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362427, 38.524929, 41.491802>,  <40.499855, 37.931217, 41.380554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362427, 38.524929, 41.491802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993443, 38.374096, 41.458633>,  <39.772053, 38.283596, 41.438732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.993443, 38.374096, 41.458633>,  <40.362427, 38.524929, 41.491802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993443, 38.374096, 41.458633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285839, 0.522628, 0.803216,
		-0.259540, 0.764637, -0.589888,
		-0.922461, -0.377080, -0.082920,
		39.716705, 38.260971, 41.433758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003593, 39.104881, 41.581806>,  <40.362427, 38.524929, 41.491802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003593, 39.104881, 41.581806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765732, 38.801338, 41.688034>,  <39.623016, 38.619213, 41.751770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765732, 38.801338, 41.688034>,  <40.003593, 39.104881, 41.581806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765732, 38.801338, 41.688034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347710, 0.540569, 0.766083,
		-0.724902, 0.363215, -0.585313,
		-0.594655, -0.758854, 0.265566,
		39.587334, 38.573681, 41.767704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310810, 39.300972, 41.870655>,  <40.003593, 39.104881, 41.581806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310810, 39.300972, 41.870655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301926, 38.918972, 41.988968>,  <39.296597, 38.689774, 42.059956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301926, 38.918972, 41.988968>,  <39.310810, 39.300972, 41.870655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301926, 38.918972, 41.988968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507342, 0.265696, 0.819762,
		-0.861459, -0.131859, -0.490410,
		-0.022207, -0.954997, 0.295784,
		39.295265, 38.632473, 42.077702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553707, 39.106525, 42.055355>,  <39.310810, 39.300972, 41.870655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553707, 39.106525, 42.055355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805542, 38.853706, 42.236080>,  <38.956642, 38.702015, 42.344513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805542, 38.853706, 42.236080>,  <38.553707, 39.106525, 42.055355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805542, 38.853706, 42.236080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375291, 0.261782, 0.889172,
		-0.680277, -0.729372, -0.072388,
		0.629587, -0.632049, 0.451811,
		38.994419, 38.664093, 42.371624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142494, 38.675529, 42.453911>,  <38.553707, 39.106525, 42.055355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142494, 38.675529, 42.453911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516045, 38.655228, 42.595505>,  <38.740173, 38.643047, 42.680462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516045, 38.655228, 42.595505>,  <38.142494, 38.675529, 42.453911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516045, 38.655228, 42.595505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346101, 0.120753, 0.930394,
		-0.089966, -0.991384, 0.095202,
		0.933874, -0.050754, 0.353983,
		38.796207, 38.639999, 42.701698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124634, 38.169868, 42.953957>,  <38.142494, 38.675529, 42.453911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124634, 38.169868, 42.953957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453026, 38.373165, 43.058025>,  <38.650059, 38.495144, 43.120468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453026, 38.373165, 43.058025>,  <38.124634, 38.169868, 42.953957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453026, 38.373165, 43.058025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320865, 0.033772, 0.946523,
		0.472275, -0.860552, 0.190803,
		0.820976, 0.508241, 0.260171,
		38.699318, 38.525639, 43.136078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364777, 38.035828, 43.627495>,  <38.124634, 38.169868, 42.953957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364777, 38.035828, 43.627495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.560501, 38.381618, 43.581467>,  <38.677937, 38.589092, 43.553848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.560501, 38.381618, 43.581467>,  <38.364777, 38.035828, 43.627495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560501, 38.381618, 43.581467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030846, 0.114710, 0.992920,
		0.871561, -0.489401, 0.029464,
		0.489315, 0.864482, -0.115073,
		38.707294, 38.640965, 43.546944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850269, 38.056908, 44.161118>,  <38.364777, 38.035828, 43.627495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850269, 38.056908, 44.161118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814594, 38.441692, 44.057835>,  <38.793190, 38.672565, 43.995865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814594, 38.441692, 44.057835>,  <38.850269, 38.056908, 44.161118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814594, 38.441692, 44.057835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171714, 0.270210, 0.947365,
		0.981101, 0.040155, -0.189282,
		-0.089187, 0.961964, -0.258208,
		38.787838, 38.730282, 43.980373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335896, 38.429996, 44.542896>,  <38.850269, 38.056908, 44.161118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335896, 38.429996, 44.542896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.089264, 38.724880, 44.432373>,  <38.941284, 38.901810, 44.366058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.089264, 38.724880, 44.432373>,  <39.335896, 38.429996, 44.542896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089264, 38.724880, 44.432373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180682, 0.474092, 0.861737,
		0.766278, 0.481407, -0.425517,
		-0.616580, 0.737214, -0.276305,
		38.904289, 38.946045, 44.349480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611042, 38.949657, 44.828079>,  <39.335896, 38.429996, 44.542896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611042, 38.949657, 44.828079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253326, 39.108154, 44.744896>,  <39.038696, 39.203251, 44.694984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253326, 39.108154, 44.744896>,  <39.611042, 38.949657, 44.828079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253326, 39.108154, 44.744896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021532, 0.502278, 0.864438,
		0.446976, 0.768578, -0.457713,
		-0.894287, 0.396238, -0.207957,
		38.985039, 39.227024, 44.682510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.576601, 38.165001, 42.834286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976557, 38.167496, 42.828850>,  <31.216530, 38.168995, 42.825588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976557, 38.167496, 42.828850>,  <30.576601, 38.165001, 42.834286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976557, 38.167496, 42.828850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013396, -0.029776, -0.999467,
		-0.006641, 0.999537, -0.029689,
		0.999888, 0.006240, -0.013588,
		31.276524, 38.169369, 42.824772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023108, 38.769772, 42.407330>,  <30.576601, 38.165001, 42.834286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023108, 38.769772, 42.407330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245386, 38.440117, 42.451149>,  <31.378754, 38.242325, 42.477440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245386, 38.440117, 42.451149>,  <31.023108, 38.769772, 42.407330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245386, 38.440117, 42.451149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098689, -0.065444, -0.992964,
		0.825507, 0.562597, 0.044967,
		0.555696, -0.824137, 0.109547,
		31.412094, 38.192875, 42.484013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480194, 38.813862, 41.894619>,  <31.023108, 38.769772, 42.407330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480194, 38.813862, 41.894619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.541433, 38.435493, 42.009018>,  <31.578176, 38.208473, 42.077656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.541433, 38.435493, 42.009018>,  <31.480194, 38.813862, 41.894619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541433, 38.435493, 42.009018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186558, -0.256541, -0.948358,
		0.970441, 0.198549, 0.137193,
		0.153100, -0.945920, 0.285999,
		31.587364, 38.151718, 42.094818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052013, 38.650192, 41.526310>,  <31.480194, 38.813862, 41.894619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052013, 38.650192, 41.526310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.945498, 38.286007, 41.652893>,  <31.881588, 38.067497, 41.728844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.945498, 38.286007, 41.652893>,  <32.052013, 38.650192, 41.526310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945498, 38.286007, 41.652893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260700, -0.384104, -0.885720,
		0.927969, -0.153357, 0.339641,
		-0.266288, -0.910465, 0.316456,
		31.865610, 38.012867, 41.747829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624889, 38.184650, 41.370899>,  <32.052013, 38.650192, 41.526310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624889, 38.184650, 41.370899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293022, 37.961506, 41.379375>,  <32.093903, 37.827618, 41.384460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293022, 37.961506, 41.379375>,  <32.624889, 38.184650, 41.370899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293022, 37.961506, 41.379375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243574, -0.395888, -0.885406,
		0.502323, -0.729428, 0.464334,
		-0.829664, -0.557860, 0.021194,
		32.044125, 37.794147, 41.385735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755825, 37.526089, 41.041584>,  <32.624889, 38.184650, 41.370899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755825, 37.526089, 41.041584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.357193, 37.494202, 41.032845>,  <32.118015, 37.475071, 41.027603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.357193, 37.494202, 41.032845>,  <32.755825, 37.526089, 41.041584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357193, 37.494202, 41.032845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049336, -0.361638, -0.931012,
		0.066319, -0.928904, 0.364334,
		-0.996578, -0.079718, -0.021845,
		32.058220, 37.470287, 41.026291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525913, 36.756603, 40.887367>,  <32.755825, 37.526089, 41.041584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525913, 36.756603, 40.887367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.234985, 37.006115, 40.772896>,  <32.060429, 37.155823, 40.704212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.234985, 37.006115, 40.772896>,  <32.525913, 36.756603, 40.887367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234985, 37.006115, 40.772896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044133, -0.373623, -0.926530,
		-0.684878, -0.686515, 0.244214,
		-0.727321, 0.623782, -0.286184,
		32.016788, 37.193249, 40.687042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004288, 36.340263, 40.495495>,  <32.525913, 36.756603, 40.887367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004288, 36.340263, 40.495495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.952024, 36.725033, 40.399464>,  <31.920668, 36.955894, 40.341846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.952024, 36.725033, 40.399464>,  <32.004288, 36.340263, 40.495495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952024, 36.725033, 40.399464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032419, -0.246171, -0.968684,
		-0.990898, -0.118781, 0.063348,
		-0.130656, 0.961920, -0.240079,
		31.912828, 37.013611, 40.327438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441286, 36.305092, 40.055420>,  <32.004288, 36.340263, 40.495495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441286, 36.305092, 40.055420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613720, 36.658695, 39.983097>,  <31.717180, 36.870857, 39.939701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613720, 36.658695, 39.983097>,  <31.441286, 36.305092, 40.055420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613720, 36.658695, 39.983097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038426, -0.218188, -0.975150,
		-0.901492, 0.413426, -0.128027,
		0.431086, 0.884010, -0.180809,
		31.743046, 36.923897, 39.928856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165897, 36.516445, 39.479702>,  <31.441286, 36.305092, 40.055420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165897, 36.516445, 39.479702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519419, 36.703571, 39.482178>,  <31.731531, 36.815849, 39.483665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519419, 36.703571, 39.482178>,  <31.165897, 36.516445, 39.479702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519419, 36.703571, 39.482178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105559, -0.186494, -0.976769,
		-0.455797, 0.863924, -0.214206,
		0.883802, 0.467820, 0.006192,
		31.784559, 36.843918, 39.484035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210127, 36.731888, 38.802723>,  <31.165897, 36.516445, 39.479702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210127, 36.731888, 38.802723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587925, 36.770920, 38.928204>,  <31.814604, 36.794338, 39.003494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587925, 36.770920, 38.928204>,  <31.210127, 36.731888, 38.802723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587925, 36.770920, 38.928204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327411, -0.200836, -0.923291,
		-0.027088, 0.974753, -0.221636,
		0.944494, 0.097576, 0.313705,
		31.871273, 36.800194, 39.022316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494118, 37.330647, 38.479145>,  <31.210127, 36.731888, 38.802723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494118, 37.330647, 38.479145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.817547, 37.123379, 38.590649>,  <32.011604, 36.999016, 38.657551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.817547, 37.123379, 38.590649>,  <31.494118, 37.330647, 38.479145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817547, 37.123379, 38.590649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305419, -0.035328, -0.951562,
		0.502921, 0.854546, 0.129695,
		0.808572, -0.518172, 0.278762,
		32.060120, 36.967926, 38.674278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124668, 37.638367, 38.127029>,  <31.494118, 37.330647, 38.479145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124668, 37.638367, 38.127029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.241222, 37.268169, 38.223827>,  <32.311153, 37.046051, 38.281906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.241222, 37.268169, 38.223827>,  <32.124668, 37.638367, 38.127029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241222, 37.268169, 38.223827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373712, -0.122742, -0.919388,
		0.880588, 0.358332, 0.310102,
		0.291383, -0.925491, 0.241998,
		32.328636, 36.990520, 38.296425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760300, 37.709011, 37.902813>,  <32.124668, 37.638367, 38.127029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760300, 37.709011, 37.902813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681889, 37.317623, 37.928654>,  <32.634842, 37.082790, 37.944160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681889, 37.317623, 37.928654>,  <32.760300, 37.709011, 37.902813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681889, 37.317623, 37.928654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211496, -0.106519, -0.971557,
		0.957519, -0.176789, 0.227823,
		-0.196028, -0.978468, 0.064604,
		32.623081, 37.024082, 37.948036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225716, 38.173584, 38.376701>,  <32.760300, 37.709011, 37.902813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225716, 38.173584, 38.376701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538578, 38.378864, 38.235363>,  <33.726295, 38.502033, 38.150558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.538578, 38.378864, 38.235363>,  <33.225716, 38.173584, 38.376701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538578, 38.378864, 38.235363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029976, 0.597432, 0.801359,
		0.622365, -0.616193, 0.482668,
		0.782153, 0.513206, -0.353350,
		33.773224, 38.532825, 38.129360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764481, 38.210407, 38.908176>,  <33.225716, 38.173584, 38.376701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764481, 38.210407, 38.908176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795986, 38.530716, 38.670666>,  <33.814892, 38.722900, 38.528160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795986, 38.530716, 38.670666>,  <33.764481, 38.210407, 38.908176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795986, 38.530716, 38.670666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071977, 0.598637, 0.797781,
		0.994291, -0.020101, 0.104789,
		0.078767, 0.800769, -0.593772,
		33.819614, 38.770947, 38.492535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243675, 38.563374, 39.342804>,  <33.764481, 38.210407, 38.908176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243675, 38.563374, 39.342804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136547, 38.837887, 39.072311>,  <34.072269, 39.002594, 38.910015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136547, 38.837887, 39.072311>,  <34.243675, 38.563374, 39.342804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136547, 38.837887, 39.072311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089984, 0.680987, 0.726746,
		0.959257, 0.255489, -0.120629,
		-0.267822, 0.686282, -0.676231,
		34.056202, 39.043770, 38.869442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616905, 39.155483, 39.459148>,  <34.243675, 38.563374, 39.342804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616905, 39.155483, 39.459148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301018, 39.286304, 39.251541>,  <34.111485, 39.364799, 39.126976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301018, 39.286304, 39.251541>,  <34.616905, 39.155483, 39.459148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301018, 39.286304, 39.251541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078972, 0.784800, 0.614697,
		0.608369, 0.526424, -0.593941,
		-0.789716, 0.327057, -0.519021,
		34.064102, 39.384422, 39.095837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809879, 39.886700, 39.290859>,  <34.616905, 39.155483, 39.459148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809879, 39.886700, 39.290859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.413040, 39.836620, 39.294277>,  <34.174938, 39.806572, 39.296329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.413040, 39.836620, 39.294277>,  <34.809879, 39.886700, 39.290859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413040, 39.836620, 39.294277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090642, 0.762056, 0.641135,
		-0.086781, 0.635293, -0.767380,
		-0.992095, -0.125195, 0.008548,
		34.115410, 39.799061, 39.296841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557194, 40.528214, 39.444000>,  <34.809879, 39.886700, 39.290859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557194, 40.528214, 39.444000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217934, 40.326508, 39.508938>,  <34.014378, 40.205486, 39.547901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217934, 40.326508, 39.508938>,  <34.557194, 40.528214, 39.444000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217934, 40.326508, 39.508938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354388, 0.767876, 0.533644,
		-0.393759, 0.395077, -0.829980,
		-0.848153, -0.504262, 0.162347,
		33.963490, 40.175228, 39.557644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052284, 41.088570, 39.404129>,  <34.557194, 40.528214, 39.444000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052284, 41.088570, 39.404129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919613, 40.775425, 39.614700>,  <33.840012, 40.587540, 39.741043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919613, 40.775425, 39.614700>,  <34.052284, 41.088570, 39.404129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919613, 40.775425, 39.614700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398616, 0.622049, 0.673914,
		-0.855041, 0.013680, -0.518379,
		-0.331676, -0.782858, 0.526425,
		33.820110, 40.540565, 39.772629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351330, 41.307983, 39.684597>,  <34.052284, 41.088570, 39.404129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351330, 41.307983, 39.684597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496906, 41.020424, 39.921486>,  <33.584251, 40.847889, 40.063622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496906, 41.020424, 39.921486>,  <33.351330, 41.307983, 39.684597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496906, 41.020424, 39.921486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355428, 0.480524, 0.801728,
		-0.860941, -0.502273, -0.080636,
		0.363939, -0.718901, 0.592224,
		33.606087, 40.804752, 40.099152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989365, 41.429562, 40.242725>,  <33.351330, 41.307983, 39.684597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989365, 41.429562, 40.242725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.254299, 41.164093, 40.381775>,  <33.413261, 41.004810, 40.465206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.254299, 41.164093, 40.381775>,  <32.989365, 41.429562, 40.242725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254299, 41.164093, 40.381775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200839, 0.289727, 0.935800,
		-0.721783, -0.689634, 0.058606,
		0.662340, -0.663674, 0.347625,
		33.453003, 40.964993, 40.486061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721313, 41.005505, 40.751251>,  <32.989365, 41.429562, 40.242725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721313, 41.005505, 40.751251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.111694, 40.956200, 40.823174>,  <33.345921, 40.926617, 40.866325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.111694, 40.956200, 40.823174>,  <32.721313, 41.005505, 40.751251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111694, 40.956200, 40.823174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157492, 0.171600, 0.972497,
		-0.150729, -0.977425, 0.148060,
		0.975950, -0.123265, 0.179802,
		33.404480, 40.919220, 40.877113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826496, 40.453831, 41.211567>,  <32.721313, 41.005505, 40.751251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826496, 40.453831, 41.211567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131287, 40.708344, 41.259789>,  <33.314163, 40.861050, 41.288723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131287, 40.708344, 41.259789>,  <32.826496, 40.453831, 41.211567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131287, 40.708344, 41.259789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175451, 0.023630, 0.984205,
		0.623383, -0.771094, 0.129642,
		0.761978, 0.636282, 0.120558,
		33.359879, 40.899227, 41.295956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391876, 40.125378, 41.710785>,  <32.826496, 40.453831, 41.211567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391876, 40.125378, 41.710785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431091, 40.523144, 41.726391>,  <33.454620, 40.761803, 41.735752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431091, 40.523144, 41.726391>,  <33.391876, 40.125378, 41.710785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431091, 40.523144, 41.726391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061442, -0.045173, 0.997088,
		0.993284, -0.095357, -0.065527,
		0.098040, 0.994417, 0.039011,
		33.460503, 40.821468, 41.738094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950272, 40.224129, 42.122139>,  <33.391876, 40.125378, 41.710785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950272, 40.224129, 42.122139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762093, 40.576954, 42.132301>,  <33.649185, 40.788651, 42.138397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762093, 40.576954, 42.132301>,  <33.950272, 40.224129, 42.122139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762093, 40.576954, 42.132301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100688, 0.025053, 0.994603,
		0.876667, 0.470463, -0.100599,
		-0.470444, 0.882064, 0.025407,
		33.620960, 40.841572, 42.139923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344631, 40.674160, 42.588497>,  <33.950272, 40.224129, 42.122139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344631, 40.674160, 42.588497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975224, 40.826977, 42.574944>,  <33.753578, 40.918667, 42.566811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975224, 40.826977, 42.574944>,  <34.344631, 40.674160, 42.588497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975224, 40.826977, 42.574944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041932, -0.012768, 0.999039,
		0.381246, 0.924055, 0.027811,
		-0.923522, 0.382046, -0.033880,
		33.698166, 40.941589, 42.564781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678154, 41.263062, 42.285450>,  <34.344631, 40.674160, 42.588497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678154, 41.263062, 42.285450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026993, 41.457821, 42.304985>,  <35.236294, 41.574677, 42.316704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026993, 41.457821, 42.304985>,  <34.678154, 41.263062, 42.285450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026993, 41.457821, 42.304985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248841, -0.355338, -0.901007,
		-0.421343, 0.797915, -0.431048,
		0.872094, 0.486896, 0.048835,
		35.288620, 41.603889, 42.319637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787731, 41.507629, 41.655258>,  <34.678154, 41.263062, 42.285450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787731, 41.507629, 41.655258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155945, 41.526764, 41.810349>,  <35.376873, 41.538242, 41.903404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155945, 41.526764, 41.810349>,  <34.787731, 41.507629, 41.655258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155945, 41.526764, 41.810349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374622, -0.389581, -0.841359,
		0.110806, 0.919749, -0.376541,
		0.920532, 0.047833, 0.387727,
		35.432106, 41.541115, 41.926666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206783, 41.776215, 41.131210>,  <34.787731, 41.507629, 41.655258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206783, 41.776215, 41.131210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426678, 41.570774, 41.394726>,  <35.558613, 41.447510, 41.552837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426678, 41.570774, 41.394726>,  <35.206783, 41.776215, 41.131210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426678, 41.570774, 41.394726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557942, -0.361184, -0.747159,
		0.621687, 0.778306, 0.088005,
		0.549733, -0.513600, 0.658793,
		35.591599, 41.416695, 41.592365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943554, 41.900749, 40.912560>,  <35.206783, 41.776215, 41.131210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943554, 41.900749, 40.912560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968769, 41.574913, 41.143200>,  <35.983898, 41.379414, 41.281586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968769, 41.574913, 41.143200>,  <35.943554, 41.900749, 40.912560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968769, 41.574913, 41.143200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533496, -0.460772, -0.709275,
		0.843450, 0.352329, 0.405533,
		0.063041, -0.814588, 0.576604,
		35.987682, 41.330536, 41.316181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688004, 41.764797, 41.070179>,  <35.943554, 41.900749, 40.912560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688004, 41.764797, 41.070179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465008, 41.433212, 41.088161>,  <36.331211, 41.234261, 41.098949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465008, 41.433212, 41.088161>,  <36.688004, 41.764797, 41.070179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465008, 41.433212, 41.088161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531495, -0.397989, -0.747742,
		0.637744, -0.392965, 0.662466,
		-0.557491, -0.828965, 0.044956,
		36.297760, 41.184525, 41.101646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219418, 41.315247, 41.004620>,  <36.688004, 41.764797, 41.070179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219418, 41.315247, 41.004620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.879166, 41.116337, 40.936321>,  <36.675014, 40.996990, 40.895340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.879166, 41.116337, 40.936321>,  <37.219418, 41.315247, 41.004620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879166, 41.116337, 40.936321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424810, -0.458673, -0.780484,
		0.309796, -0.736436, 0.601405,
		-0.850625, -0.497274, -0.170750,
		36.623978, 40.967155, 40.885098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409885, 40.671242, 40.892292>,  <37.219418, 41.315247, 41.004620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409885, 40.671242, 40.892292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042995, 40.650970, 40.734234>,  <36.822861, 40.638809, 40.639400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042995, 40.650970, 40.734234>,  <37.409885, 40.671242, 40.892292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042995, 40.650970, 40.734234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380977, -0.401546, -0.832837,
		-0.116462, -0.914436, 0.387614,
		-0.917221, -0.050678, -0.395144,
		36.767830, 40.635769, 40.615692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348640, 40.042168, 40.624187>,  <37.409885, 40.671242, 40.892292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348640, 40.042168, 40.624187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.066372, 40.233837, 40.415409>,  <36.897011, 40.348839, 40.290142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.066372, 40.233837, 40.415409>,  <37.348640, 40.042168, 40.624187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066372, 40.233837, 40.415409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222049, -0.549983, -0.805116,
		-0.672851, -0.684042, 0.281706,
		-0.705668, 0.479171, -0.521948,
		36.854671, 40.377586, 40.258823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061993, 39.563622, 40.144333>,  <37.348640, 40.042168, 40.624187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061993, 39.563622, 40.144333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924622, 39.908695, 39.995827>,  <36.842197, 40.115738, 39.906723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924622, 39.908695, 39.995827>,  <37.061993, 39.563622, 40.144333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924622, 39.908695, 39.995827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039530, -0.381676, -0.923451,
		-0.938347, -0.331815, 0.096976,
		-0.343429, 0.862683, -0.371261,
		36.821594, 40.167500, 39.884449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514038, 39.393379, 39.566067>,  <37.061993, 39.563622, 40.144333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514038, 39.393379, 39.566067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.653782, 39.764915, 39.516743>,  <36.737629, 39.987835, 39.487148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.653782, 39.764915, 39.516743>,  <36.514038, 39.393379, 39.566067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653782, 39.764915, 39.516743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077136, -0.159670, -0.984152,
		-0.933808, 0.334312, -0.127429,
		0.349360, 0.928838, -0.123314,
		36.758591, 40.043568, 39.479748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281849, 39.542225, 38.922874>,  <36.514038, 39.393379, 39.566067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281849, 39.542225, 38.922874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.577576, 39.806290, 38.975937>,  <36.755013, 39.964729, 39.007774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.577576, 39.806290, 38.975937>,  <36.281849, 39.542225, 38.922874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577576, 39.806290, 38.975937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353392, -0.212707, -0.910972,
		-0.573171, 0.720377, -0.390553,
		0.739317, 0.660161, 0.132658,
		36.799370, 40.004337, 39.015736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269032, 39.771027, 38.341984>,  <36.281849, 39.542225, 38.922874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269032, 39.771027, 38.341984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.629391, 39.886597, 38.471539>,  <36.845608, 39.955940, 38.549271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.629391, 39.886597, 38.471539>,  <36.269032, 39.771027, 38.341984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629391, 39.886597, 38.471539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377442, -0.153108, -0.913288,
		-0.214283, 0.945029, -0.246988,
		0.900900, 0.288926, 0.323886,
		36.899662, 39.973274, 38.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516991, 40.244717, 37.856892>,  <36.269032, 39.771027, 38.341984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516991, 40.244717, 37.856892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.854248, 40.124798, 38.035435>,  <37.056602, 40.052845, 38.142559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.854248, 40.124798, 38.035435>,  <36.516991, 40.244717, 37.856892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854248, 40.124798, 38.035435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359628, -0.302713, -0.882628,
		0.399727, 0.904703, -0.147414,
		0.843141, -0.299796, 0.446359,
		37.107189, 40.034859, 38.169342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206516, 40.585155, 37.618263>,  <36.516991, 40.244717, 37.856892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206516, 40.585155, 37.618263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287849, 40.220284, 37.760574>,  <37.336647, 40.001358, 37.845963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287849, 40.220284, 37.760574>,  <37.206516, 40.585155, 37.618263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287849, 40.220284, 37.760574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671138, -0.134727, -0.728988,
		0.712903, 0.387002, 0.584807,
		0.203331, -0.912183, 0.355779,
		37.348850, 39.946629, 37.867310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.941324, 39.993217, 39.659840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635340, 40.097492, 39.895424>,  <29.451750, 40.160057, 40.036774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635340, 40.097492, 39.895424>,  <29.941324, 39.993217, 39.659840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635340, 40.097492, 39.895424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632653, -0.475584, -0.611204,
		0.120770, -0.840157, 0.528726,
		-0.764961, 0.260685, 0.588964,
		29.405851, 40.175697, 40.072113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709444, 39.323967, 39.788132>,  <29.941324, 39.993217, 39.659840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709444, 39.323967, 39.788132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445801, 39.622139, 39.827961>,  <29.287615, 39.801041, 39.851860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445801, 39.622139, 39.827961>,  <29.709444, 39.323967, 39.788132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445801, 39.622139, 39.827961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709125, -0.571932, -0.412354,
		-0.250430, -0.342397, 0.905566,
		-0.659111, 0.745425, 0.099573,
		29.248068, 39.845768, 39.857834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015635, 39.174397, 40.209686>,  <29.709444, 39.323967, 39.788132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015635, 39.174397, 40.209686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942274, 39.456123, 39.935371>,  <28.898258, 39.625160, 39.770782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942274, 39.456123, 39.935371>,  <29.015635, 39.174397, 40.209686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942274, 39.456123, 39.935371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683680, -0.592661, -0.425834,
		-0.706362, 0.390763, 0.590218,
		-0.183399, 0.704313, -0.685790,
		28.887255, 39.667416, 39.729633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283865, 39.209736, 40.114433>,  <29.015635, 39.174397, 40.209686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283865, 39.209736, 40.114433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449022, 39.342499, 39.775173>,  <28.548117, 39.422157, 39.571617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449022, 39.342499, 39.775173>,  <28.283865, 39.209736, 40.114433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449022, 39.342499, 39.775173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637866, -0.559334, -0.529408,
		-0.650114, 0.759593, -0.019231,
		0.412891, 0.331908, -0.848150,
		28.572889, 39.442070, 39.520729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698559, 39.364563, 39.652699>,  <28.283865, 39.209736, 40.114433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698559, 39.364563, 39.652699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983122, 39.363426, 39.371590>,  <28.153860, 39.362743, 39.202923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983122, 39.363426, 39.371590>,  <27.698559, 39.364563, 39.652699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983122, 39.363426, 39.371590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664024, -0.330211, -0.670845,
		-0.230155, 0.943903, -0.236805,
		0.711408, -0.002846, -0.702773,
		28.196545, 39.362572, 39.160759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308649, 39.341125, 39.052711>,  <27.698559, 39.364563, 39.652699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308649, 39.341125, 39.052711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.671970, 39.224388, 38.932835>,  <27.889963, 39.154346, 38.860909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.671970, 39.224388, 38.932835>,  <27.308649, 39.341125, 39.052711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671970, 39.224388, 38.932835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411898, -0.498986, -0.762465,
		0.072975, 0.815992, -0.573439,
		0.908303, -0.291839, -0.299692,
		27.944462, 39.136837, 38.842926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262264, 39.447647, 38.368446>,  <27.308649, 39.341125, 39.052711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262264, 39.447647, 38.368446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.576059, 39.200859, 38.393509>,  <27.764336, 39.052788, 38.408546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.576059, 39.200859, 38.393509>,  <27.262264, 39.447647, 38.368446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576059, 39.200859, 38.393509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174802, -0.316929, -0.932202,
		0.594998, 0.720349, -0.356475,
		0.784488, -0.616971, 0.062654,
		27.811405, 39.015766, 38.412304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628262, 39.458408, 37.591530>,  <27.262264, 39.447647, 38.368446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628262, 39.458408, 37.591530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707869, 39.127388, 37.801502>,  <27.755632, 38.928776, 37.927486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707869, 39.127388, 37.801502>,  <27.628262, 39.458408, 37.591530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707869, 39.127388, 37.801502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394007, -0.558012, -0.730330,
		0.897302, -0.061476, -0.437115,
		0.199017, -0.827553, 0.524927,
		27.767574, 38.879124, 37.958981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026169, 38.950310, 37.238960>,  <27.628262, 39.458408, 37.591530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026169, 38.950310, 37.238960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891514, 38.706112, 37.525726>,  <27.810720, 38.559593, 37.697784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891514, 38.706112, 37.525726>,  <28.026169, 38.950310, 37.238960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891514, 38.706112, 37.525726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242753, -0.679351, -0.692497,
		0.909806, -0.407154, 0.080495,
		-0.336637, -0.610498, 0.716915,
		27.790524, 38.522961, 37.740803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302879, 38.216625, 36.989880>,  <28.026169, 38.950310, 37.238960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302879, 38.216625, 36.989880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015911, 38.136135, 37.256660>,  <27.843731, 38.087841, 37.416729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015911, 38.136135, 37.256660>,  <28.302879, 38.216625, 36.989880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015911, 38.136135, 37.256660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194878, -0.861183, -0.469452,
		0.668830, -0.466767, 0.578614,
		-0.717418, -0.201225, 0.666948,
		27.800686, 38.075768, 37.456745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328167, 37.570263, 37.107639>,  <28.302879, 38.216625, 36.989880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328167, 37.570263, 37.107639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961657, 37.626270, 37.257751>,  <27.741751, 37.659874, 37.347820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961657, 37.626270, 37.257751>,  <28.328167, 37.570263, 37.107639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961657, 37.626270, 37.257751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296833, -0.866438, -0.401468,
		0.268948, -0.479251, 0.835455,
		-0.916274, 0.140016, 0.375284,
		27.686775, 37.668274, 37.370338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127386, 36.954552, 37.402168>,  <28.328167, 37.570263, 37.107639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127386, 36.954552, 37.402168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.791500, 37.161095, 37.334934>,  <27.589968, 37.285019, 37.294594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.791500, 37.161095, 37.334934>,  <28.127386, 36.954552, 37.402168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791500, 37.161095, 37.334934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444818, -0.831611, -0.332507,
		-0.311472, -0.204445, 0.928002,
		-0.839715, 0.516358, -0.168083,
		27.539585, 37.316002, 37.284508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716076, 36.483372, 37.488289>,  <28.127386, 36.954552, 37.402168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716076, 36.483372, 37.488289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.474913, 36.762505, 37.333614>,  <27.330215, 36.929985, 37.240810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.474913, 36.762505, 37.333614>,  <27.716076, 36.483372, 37.488289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474913, 36.762505, 37.333614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561056, -0.715447, -0.416355,
		-0.567203, -0.034068, 0.822873,
		-0.602906, 0.697836, -0.386690,
		27.294041, 36.971855, 37.217606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128769, 36.232410, 37.629128>,  <27.716076, 36.483372, 37.488289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128769, 36.232410, 37.629128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.102915, 36.483463, 37.318798>,  <27.087402, 36.634094, 37.132599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.102915, 36.483463, 37.318798>,  <27.128769, 36.232410, 37.629128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102915, 36.483463, 37.318798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433186, -0.718027, -0.544782,
		-0.898984, 0.300865, 0.318289,
		-0.064634, 0.627629, -0.775825,
		27.083525, 36.671753, 37.086052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434778, 36.224224, 37.419216>,  <27.128769, 36.232410, 37.629128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434778, 36.224224, 37.419216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661081, 36.339008, 37.110004>,  <26.796864, 36.407879, 36.924477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661081, 36.339008, 37.110004>,  <26.434778, 36.224224, 37.419216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661081, 36.339008, 37.110004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447903, -0.680177, -0.580295,
		-0.692316, 0.674549, -0.256286,
		0.565757, 0.286956, -0.773030,
		26.830809, 36.425095, 36.878094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025568, 36.133854, 36.844872>,  <26.434778, 36.224224, 37.419216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025568, 36.133854, 36.844872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.376862, 36.134243, 36.653580>,  <26.587639, 36.134476, 36.538803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.376862, 36.134243, 36.653580>,  <26.025568, 36.133854, 36.844872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376862, 36.134243, 36.653580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345733, -0.689611, -0.636322,
		-0.330411, 0.724179, -0.605304,
		0.878235, 0.000974, -0.478228,
		26.640331, 36.134537, 36.510113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849634, 36.185894, 36.205467>,  <26.025568, 36.133854, 36.844872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849634, 36.185894, 36.205467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216547, 36.026829, 36.196918>,  <26.436695, 35.931389, 36.191792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216547, 36.026829, 36.196918>,  <25.849634, 36.185894, 36.205467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216547, 36.026829, 36.196918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302017, -0.659678, -0.688194,
		0.259572, 0.637722, -0.725212,
		0.917283, -0.397662, -0.021369,
		26.491732, 35.907532, 36.190506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008141, 36.091011, 35.438053>,  <25.849634, 36.185894, 36.205467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008141, 36.091011, 35.438053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254045, 35.852448, 35.644497>,  <26.401588, 35.709309, 35.768364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254045, 35.852448, 35.644497>,  <26.008141, 36.091011, 35.438053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254045, 35.852448, 35.644497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085321, -0.700814, -0.708223,
		0.784086, 0.391353, -0.481719,
		0.614760, -0.596408, 0.516108,
		26.438473, 35.673527, 35.799328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334450, 35.687859, 34.956593>,  <26.008141, 36.091011, 35.438053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334450, 35.687859, 34.956593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.475754, 35.484039, 35.270424>,  <26.560537, 35.361748, 35.458721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.475754, 35.484039, 35.270424>,  <26.334450, 35.687859, 34.956593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475754, 35.484039, 35.270424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154606, -0.795322, -0.586140,
		0.922661, 0.328362, -0.202178,
		0.353262, -0.509551, 0.784579,
		26.581732, 35.331173, 35.505798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939569, 35.316139, 34.658714>,  <26.334450, 35.687859, 34.956593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939569, 35.316139, 34.658714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833427, 35.124508, 34.993393>,  <26.769743, 35.009529, 35.194202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833427, 35.124508, 34.993393>,  <26.939569, 35.316139, 34.658714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833427, 35.124508, 34.993393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231066, -0.874120, -0.427227,
		0.936053, 0.079967, 0.342651,
		-0.265354, -0.479082, 0.836700,
		26.753820, 34.980782, 35.244404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444000, 34.816467, 34.789062>,  <26.939569, 35.316139, 34.658714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444000, 34.816467, 34.789062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109816, 34.710167, 34.981468>,  <26.909304, 34.646385, 35.096912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109816, 34.710167, 34.981468>,  <27.444000, 34.816467, 34.789062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109816, 34.710167, 34.981468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009992, -0.867804, -0.496806,
		0.549455, -0.419870, 0.722363,
		-0.835464, -0.265755, 0.481015,
		26.859177, 34.630440, 35.125774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179947, 34.985504, 34.924923>,  <27.444000, 34.816467, 34.789062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179947, 34.985504, 34.924923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.545565, 34.901161, 34.786324>,  <28.764935, 34.850555, 34.703163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.545565, 34.901161, 34.786324>,  <28.179947, 34.985504, 34.924923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545565, 34.901161, 34.786324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365164, 0.799659, 0.476656,
		0.176575, -0.562214, 0.807921,
		0.914044, -0.210858, -0.346500,
		28.819778, 34.837902, 34.682373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664431, 34.902260, 35.520359>,  <28.179947, 34.985504, 34.924923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664431, 34.902260, 35.520359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865187, 35.018372, 35.194454>,  <28.985640, 35.088039, 34.998909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865187, 35.018372, 35.194454>,  <28.664431, 34.902260, 35.520359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865187, 35.018372, 35.194454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376828, 0.774514, 0.508065,
		0.778531, -0.562018, 0.279331,
		0.501887, 0.290284, -0.814767,
		29.015755, 35.105457, 34.950024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249887, 35.264904, 35.765999>,  <28.664431, 34.902260, 35.520359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249887, 35.264904, 35.765999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260284, 35.416168, 35.395847>,  <29.266523, 35.506927, 35.173756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260284, 35.416168, 35.395847>,  <29.249887, 35.264904, 35.765999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260284, 35.416168, 35.395847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492580, 0.800664, 0.341033,
		0.869879, -0.464685, -0.165464,
		0.025992, 0.378162, -0.925375,
		29.268082, 35.529617, 35.118237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938454, 35.499851, 35.653622>,  <29.249887, 35.264904, 35.765999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938454, 35.499851, 35.653622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695747, 35.697933, 35.404911>,  <29.550123, 35.816784, 35.255684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695747, 35.697933, 35.404911>,  <29.938454, 35.499851, 35.653622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695747, 35.697933, 35.404911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436081, 0.861384, 0.260482,
		0.664583, -0.113095, -0.738607,
		-0.606765, 0.495204, -0.621779,
		29.513718, 35.846493, 35.218376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414417, 35.992424, 35.448242>,  <29.938454, 35.499851, 35.653622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414417, 35.992424, 35.448242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057266, 36.139244, 35.343899>,  <29.842976, 36.227337, 35.281292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057266, 36.139244, 35.343899>,  <30.414417, 35.992424, 35.448242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057266, 36.139244, 35.343899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222285, 0.863059, 0.453562,
		0.391616, 0.346990, -0.852195,
		-0.892876, 0.367052, -0.260857,
		29.789404, 36.249359, 35.265640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550512, 36.528019, 35.111431>,  <30.414417, 35.992424, 35.448242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550512, 36.528019, 35.111431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183168, 36.588398, 35.257763>,  <29.962763, 36.624626, 35.345562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183168, 36.588398, 35.257763>,  <30.550512, 36.528019, 35.111431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183168, 36.588398, 35.257763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236942, 0.950128, 0.202767,
		-0.316981, 0.272894, -0.908324,
		-0.918358, 0.150946, 0.365833,
		29.907661, 36.633682, 35.367512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345541, 37.254616, 35.015186>,  <30.550512, 36.528019, 35.111431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345541, 37.254616, 35.015186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055109, 37.152058, 35.270393>,  <29.880850, 37.090523, 35.423519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.055109, 37.152058, 35.270393>,  <30.345541, 37.254616, 35.015186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055109, 37.152058, 35.270393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018390, 0.920305, 0.390770,
		-0.687363, 0.295463, -0.663501,
		-0.726081, -0.256399, 0.638017,
		29.837284, 37.075138, 35.461800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898582, 37.806210, 34.937302>,  <30.345541, 37.254616, 35.015186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898582, 37.806210, 34.937302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794992, 37.618637, 35.275066>,  <29.732840, 37.506092, 35.477726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794992, 37.618637, 35.275066>,  <29.898582, 37.806210, 34.937302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794992, 37.618637, 35.275066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028894, 0.877609, 0.478505,
		-0.965452, 0.099522, -0.240826,
		-0.258973, -0.468932, 0.844414,
		29.717300, 37.477959, 35.528389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298550, 38.050907, 35.270580>,  <29.898582, 37.806210, 34.937302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298550, 38.050907, 35.270580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.512146, 37.895996, 35.571209>,  <29.640305, 37.803047, 35.751587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.512146, 37.895996, 35.571209>,  <29.298550, 38.050907, 35.270580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512146, 37.895996, 35.571209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078963, 0.862194, 0.500386,
		-0.841795, -0.326548, 0.429823,
		0.533991, -0.387283, 0.751576,
		29.672344, 37.779812, 35.796680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006760, 38.261238, 35.754929>,  <29.298550, 38.050907, 35.270580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006760, 38.261238, 35.754929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366312, 38.185963, 35.913219>,  <29.582043, 38.140797, 36.008194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366312, 38.185963, 35.913219>,  <29.006760, 38.261238, 35.754929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366312, 38.185963, 35.913219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091077, 0.803129, 0.588802,
		-0.428626, -0.565304, 0.704777,
		0.898880, -0.188187, 0.395729,
		29.635977, 38.129505, 36.031937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945658, 38.552284, 36.416172>,  <29.006760, 38.261238, 35.754929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945658, 38.552284, 36.416172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336237, 38.494167, 36.352371>,  <29.570585, 38.459297, 36.314091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336237, 38.494167, 36.352371>,  <28.945658, 38.552284, 36.416172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336237, 38.494167, 36.352371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183160, 0.948924, 0.256895,
		0.114028, -0.280058, 0.953187,
		0.976448, -0.145293, -0.159500,
		29.629171, 38.450581, 36.304520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256729, 38.723194, 37.010654>,  <28.945658, 38.552284, 36.416172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256729, 38.723194, 37.010654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565069, 38.750889, 36.757359>,  <29.750072, 38.767506, 36.605381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565069, 38.750889, 36.757359>,  <29.256729, 38.723194, 37.010654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565069, 38.750889, 36.757359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296995, 0.840359, 0.453421,
		0.563547, -0.537590, 0.627226,
		0.770849, 0.069241, -0.633243,
		29.796324, 38.771660, 36.567387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853537, 38.759411, 37.322273>,  <29.256729, 38.723194, 37.010654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853537, 38.759411, 37.322273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.949608, 38.936939, 36.976940>,  <30.007252, 39.043457, 36.769741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.949608, 38.936939, 36.976940>,  <29.853537, 38.759411, 37.322273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949608, 38.936939, 36.976940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193173, 0.849723, 0.490566,
		0.951314, -0.284596, 0.118352,
		0.240180, 0.443820, -0.863330,
		30.021662, 39.070084, 36.717941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411331, 39.124664, 37.485954>,  <29.853537, 38.759411, 37.322273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411331, 39.124664, 37.485954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305538, 39.307941, 37.146519>,  <30.242062, 39.417908, 36.942856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.305538, 39.307941, 37.146519>,  <30.411331, 39.124664, 37.485954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305538, 39.307941, 37.146519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268815, 0.880076, 0.391414,
		0.926168, -0.124591, -0.355936,
		-0.264485, 0.458196, -0.848590,
		30.226192, 39.445400, 36.891941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765575, 39.659790, 37.493893>,  <30.411331, 39.124664, 37.485954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765575, 39.659790, 37.493893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.538122, 39.772480, 37.184757>,  <30.401649, 39.840096, 36.999275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.538122, 39.772480, 37.184757>,  <30.765575, 39.659790, 37.493893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538122, 39.772480, 37.184757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318195, 0.941719, 0.109169,
		0.758556, -0.183837, -0.625138,
		-0.568634, 0.281727, -0.772842,
		30.367533, 39.856998, 36.952904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160688, 40.112297, 37.105343>,  <30.765575, 39.659790, 37.493893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160688, 40.112297, 37.105343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.777140, 40.205269, 37.040176>,  <30.547010, 40.261051, 37.001076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.777140, 40.205269, 37.040176>,  <31.160688, 40.112297, 37.105343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777140, 40.205269, 37.040176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189788, 0.951815, 0.240890,
		0.211054, 0.200064, -0.956781,
		-0.958873, 0.232426, -0.162915,
		30.489477, 40.274998, 36.991302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075315, 40.640079, 36.586220>,  <31.160688, 40.112297, 37.105343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075315, 40.640079, 36.586220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763670, 40.647636, 36.836861>,  <30.576683, 40.652168, 36.987244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763670, 40.647636, 36.836861>,  <31.075315, 40.640079, 36.586220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763670, 40.647636, 36.836861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267729, 0.913830, 0.305347,
		-0.566838, 0.405658, -0.717033,
		-0.779112, 0.018889, 0.626600,
		30.529936, 40.653301, 37.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980650, 41.365028, 36.652592>,  <31.075315, 40.640079, 36.586220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980650, 41.365028, 36.652592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.778999, 41.187229, 36.948772>,  <30.658009, 41.080547, 37.126480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.778999, 41.187229, 36.948772>,  <30.980650, 41.365028, 36.652592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778999, 41.187229, 36.948772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386077, 0.650942, 0.653621,
		-0.772529, 0.615380, -0.156545,
		-0.504127, -0.444502, 0.740455,
		30.627762, 41.053879, 37.170910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768322, 41.880539, 37.058598>,  <30.980650, 41.365028, 36.652592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768322, 41.880539, 37.058598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726992, 41.574219, 37.312489>,  <30.702194, 41.390427, 37.464821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726992, 41.574219, 37.312489>,  <30.768322, 41.880539, 37.058598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726992, 41.574219, 37.312489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347751, 0.570053, 0.744385,
		-0.931876, 0.297638, 0.207408,
		-0.103324, -0.765801, 0.634723,
		30.695995, 41.344479, 37.502907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320940, 42.093506, 37.651245>,  <30.768322, 41.880539, 37.058598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320940, 42.093506, 37.651245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.531870, 41.772148, 37.761875>,  <30.658428, 41.579334, 37.828255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.531870, 41.772148, 37.761875>,  <30.320940, 42.093506, 37.651245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531870, 41.772148, 37.761875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269641, 0.466920, 0.842187,
		-0.805745, -0.369527, 0.462845,
		0.527322, -0.803390, 0.276578,
		30.690067, 41.531132, 37.844849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050117, 42.057613, 38.273628>,  <30.320940, 42.093506, 37.651245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050117, 42.057613, 38.273628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.405092, 41.873627, 38.285549>,  <30.618076, 41.763233, 38.292702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.405092, 41.873627, 38.285549>,  <30.050117, 42.057613, 38.273628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405092, 41.873627, 38.285549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251681, 0.537714, 0.804686,
		-0.386156, -0.706606, 0.592952,
		0.887435, -0.459969, 0.029802,
		30.671322, 41.735638, 38.294491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.760445, 39.673138, 45.014587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364471, 39.617878, 45.026852>,  <39.126888, 39.584724, 45.034210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364471, 39.617878, 45.026852>,  <39.760445, 39.673138, 45.014587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364471, 39.617878, 45.026852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090184, 0.782884, 0.615597,
		-0.109047, 0.606637, -0.787465,
		-0.989937, -0.138146, 0.030662,
		39.067490, 39.576435, 45.036049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401962, 40.443470, 44.961700>,  <39.760445, 39.673138, 45.014587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401962, 40.443470, 44.961700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.135612, 40.188183, 45.116253>,  <38.975803, 40.035011, 45.208984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.135612, 40.188183, 45.116253>,  <39.401962, 40.443470, 44.961700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135612, 40.188183, 45.116253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339324, 0.720298, 0.605005,
		-0.664434, 0.271748, -0.696190,
		-0.665873, -0.638219, 0.386380,
		38.935852, 39.996716, 45.232166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815723, 40.854252, 45.027714>,  <39.401962, 40.443470, 44.961700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815723, 40.854252, 45.027714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.786907, 40.549545, 45.285244>,  <38.769619, 40.366722, 45.439762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.786907, 40.549545, 45.285244>,  <38.815723, 40.854252, 45.027714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786907, 40.549545, 45.285244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323554, 0.628447, 0.707367,
		-0.943463, -0.157354, -0.291748,
		-0.072041, -0.761770, 0.643829,
		38.765293, 40.321014, 45.478394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279697, 41.079395, 45.492023>,  <38.815723, 40.854252, 45.027714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279697, 41.079395, 45.492023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474464, 40.785629, 45.681145>,  <38.591324, 40.609371, 45.794617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474464, 40.785629, 45.681145>,  <38.279697, 41.079395, 45.492023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474464, 40.785629, 45.681145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037224, 0.523366, 0.851294,
		-0.872652, -0.432113, 0.227500,
		0.486922, -0.734415, 0.472802,
		38.620541, 40.565304, 45.822987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872791, 40.903629, 46.049126>,  <38.279697, 41.079395, 45.492023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872791, 40.903629, 46.049126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.243134, 40.787769, 46.146194>,  <38.465340, 40.718254, 46.204437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.243134, 40.787769, 46.146194>,  <37.872791, 40.903629, 46.049126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243134, 40.787769, 46.146194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073113, 0.492764, 0.867086,
		-0.370733, -0.820540, 0.435052,
		0.925857, -0.289650, 0.242676,
		38.520889, 40.700874, 46.218998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765484, 40.860184, 46.723988>,  <37.872791, 40.903629, 46.049126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765484, 40.860184, 46.723988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164482, 40.859848, 46.695683>,  <38.403881, 40.859646, 46.678699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164482, 40.859848, 46.695683>,  <37.765484, 40.860184, 46.723988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164482, 40.859848, 46.695683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064803, 0.412592, 0.908608,
		0.028431, -0.910915, 0.411612,
		0.997493, -0.000841, -0.070760,
		38.463730, 40.859596, 46.674454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061749, 40.571815, 47.358913>,  <37.765484, 40.860184, 46.723988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061749, 40.571815, 47.358913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323826, 40.811836, 47.175323>,  <38.481071, 40.955849, 47.065170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323826, 40.811836, 47.175323>,  <38.061749, 40.571815, 47.358913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323826, 40.811836, 47.175323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030397, 0.586115, 0.809658,
		0.754846, -0.544437, 0.365781,
		0.655197, 0.600048, -0.458976,
		38.520386, 40.991852, 47.037632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571926, 40.695869, 47.893772>,  <38.061749, 40.571815, 47.358913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571926, 40.695869, 47.893772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.609772, 41.000797, 47.637672>,  <38.632481, 41.183754, 47.484013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.609772, 41.000797, 47.637672>,  <38.571926, 40.695869, 47.893772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609772, 41.000797, 47.637672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172545, 0.645955, 0.743620,
		0.980447, 0.040111, 0.192654,
		0.094619, 0.762321, -0.640246,
		38.638157, 41.229492, 47.445599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044334, 41.236359, 48.212097>,  <38.571926, 40.695869, 47.893772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044334, 41.236359, 48.212097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.868877, 41.460632, 47.931179>,  <38.763603, 41.595196, 47.762627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.868877, 41.460632, 47.931179>,  <39.044334, 41.236359, 48.212097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868877, 41.460632, 47.931179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217321, 0.692118, 0.688290,
		0.871987, 0.454540, -0.181746,
		-0.438645, 0.560683, -0.702299,
		38.737286, 41.628838, 47.720490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119370, 41.995056, 48.360226>,  <39.044334, 41.236359, 48.212097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119370, 41.995056, 48.360226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.808060, 41.948322, 48.113445>,  <38.621273, 41.920280, 47.965378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.808060, 41.948322, 48.113445>,  <39.119370, 41.995056, 48.360226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808060, 41.948322, 48.113445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578998, 0.513748, 0.633107,
		0.242988, 0.849949, -0.467487,
		-0.778279, -0.116837, -0.616953,
		38.574577, 41.913273, 47.928360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768902, 42.639046, 48.420174>,  <39.119370, 41.995056, 48.360226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768902, 42.639046, 48.420174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.522255, 42.368233, 48.259468>,  <38.374268, 42.205746, 48.163044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.522255, 42.368233, 48.259468>,  <38.768902, 42.639046, 48.420174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522255, 42.368233, 48.259468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717708, 0.273693, 0.640302,
		-0.323547, 0.683167, -0.654675,
		-0.616614, -0.677033, -0.401762,
		38.337273, 42.165123, 48.138939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185986, 43.028221, 48.309341>,  <38.768902, 42.639046, 48.420174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185986, 43.028221, 48.309341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046986, 42.654419, 48.278507>,  <37.963585, 42.430138, 48.260006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046986, 42.654419, 48.278507>,  <38.185986, 43.028221, 48.309341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046986, 42.654419, 48.278507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810782, 0.258154, 0.525347,
		-0.471040, 0.245056, -0.847389,
		-0.347496, -0.934508, -0.077086,
		37.942738, 42.374065, 48.255383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606537, 43.091408, 48.004246>,  <38.185986, 43.028221, 48.309341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606537, 43.091408, 48.004246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.606113, 42.759487, 48.227470>,  <37.605858, 42.560333, 48.361404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.606113, 42.759487, 48.227470>,  <37.606537, 43.091408, 48.004246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606113, 42.759487, 48.227470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912684, 0.228861, 0.338572,
		-0.408665, -0.508973, -0.757588,
		-0.001059, -0.829801, 0.558059,
		37.605797, 42.510548, 48.394890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105820, 42.644272, 47.838249>,  <37.606537, 43.091408, 48.004246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105820, 42.644272, 47.838249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180222, 42.590038, 48.227509>,  <37.224865, 42.557499, 48.461063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180222, 42.590038, 48.227509>,  <37.105820, 42.644272, 47.838249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180222, 42.590038, 48.227509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940103, 0.263404, 0.216391,
		-0.285671, -0.955109, -0.078472,
		0.186008, -0.135589, 0.973148,
		37.236023, 42.549362, 48.519451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392025, 42.662666, 47.464977>,  <37.105820, 42.644272, 47.838249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392025, 42.662666, 47.464977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060379, 42.877327, 47.527668>,  <35.861389, 43.006123, 47.565281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060379, 42.877327, 47.527668>,  <36.392025, 42.662666, 47.464977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060379, 42.877327, 47.527668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011278, 0.296331, -0.955019,
		-0.558959, -0.790056, -0.251746,
		-0.829119, 0.536655, 0.156727,
		35.811642, 43.038322, 47.574688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849922, 42.200951, 47.161968>,  <36.392025, 42.662666, 47.464977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849922, 42.200951, 47.161968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740650, 42.585716, 47.165878>,  <35.675087, 42.816574, 47.168224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740650, 42.585716, 47.165878>,  <35.849922, 42.200951, 47.161968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740650, 42.585716, 47.165878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268922, -0.066609, -0.960856,
		-0.923609, -0.265117, 0.276876,
		-0.273182, 0.961913, 0.009776,
		35.658695, 42.874290, 47.168812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266224, 42.242474, 46.844082>,  <35.849922, 42.200951, 47.161968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266224, 42.242474, 46.844082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363808, 42.628918, 46.810314>,  <35.422356, 42.860783, 46.790054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363808, 42.628918, 46.810314>,  <35.266224, 42.242474, 46.844082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363808, 42.628918, 46.810314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355383, 0.008068, -0.934686,
		-0.902324, 0.258021, 0.345305,
		0.243955, 0.966106, -0.084416,
		35.436993, 42.918751, 46.784988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676128, 42.513317, 46.520031>,  <35.266224, 42.242474, 46.844082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676128, 42.513317, 46.520031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974972, 42.773777, 46.466629>,  <35.154278, 42.930054, 46.434586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974972, 42.773777, 46.466629>,  <34.676128, 42.513317, 46.520031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974972, 42.773777, 46.466629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271084, 0.115096, -0.955650,
		-0.606906, 0.750170, 0.262507,
		0.747113, 0.651151, -0.133507,
		35.199104, 42.969124, 46.426579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351303, 43.060860, 46.137016>,  <34.676128, 42.513317, 46.520031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351303, 43.060860, 46.137016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744999, 43.101509, 46.079124>,  <34.981216, 43.125896, 46.044388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744999, 43.101509, 46.079124>,  <34.351303, 43.060860, 46.137016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744999, 43.101509, 46.079124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155454, 0.106972, -0.982034,
		-0.084313, 0.989055, 0.121083,
		0.984239, 0.101621, -0.144733,
		35.040272, 43.131996, 46.035706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414619, 43.529514, 45.665699>,  <34.351303, 43.060860, 46.137016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414619, 43.529514, 45.665699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769981, 43.349529, 45.629322>,  <34.983200, 43.241539, 45.607494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769981, 43.349529, 45.629322>,  <34.414619, 43.529514, 45.665699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769981, 43.349529, 45.629322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117063, -0.030499, -0.992656,
		0.443887, 0.892525, -0.079770,
		0.888403, -0.449965, -0.090944,
		35.036503, 43.214539, 45.602039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641033, 43.664177, 45.052826>,  <34.414619, 43.529514, 45.665699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641033, 43.664177, 45.052826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938343, 43.400875, 45.100552>,  <35.116730, 43.242893, 45.129189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938343, 43.400875, 45.100552>,  <34.641033, 43.664177, 45.052826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938343, 43.400875, 45.100552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027905, -0.208708, -0.977580,
		0.668401, 0.723283, -0.173497,
		0.743277, -0.658257, 0.119318,
		35.161327, 43.203400, 45.136349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143379, 43.782436, 44.610409>,  <34.641033, 43.664177, 45.052826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143379, 43.782436, 44.610409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153351, 43.387127, 44.670666>,  <35.159332, 43.149940, 44.706821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153351, 43.387127, 44.670666>,  <35.143379, 43.782436, 44.610409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153351, 43.387127, 44.670666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117291, -0.146761, -0.982194,
		0.992785, 0.042154, 0.112257,
		0.024928, -0.988273, 0.150647,
		35.160828, 43.090645, 44.715858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625587, 43.601086, 44.129669>,  <35.143379, 43.782436, 44.610409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625587, 43.601086, 44.129669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472382, 43.250259, 44.245636>,  <35.380459, 43.039764, 44.315216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472382, 43.250259, 44.245636>,  <35.625587, 43.601086, 44.129669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472382, 43.250259, 44.245636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073043, -0.341625, -0.936993,
		0.920848, -0.337709, 0.194912,
		-0.383018, -0.877066, 0.289918,
		35.357475, 42.987141, 44.332611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095684, 43.075634, 44.023781>,  <35.625587, 43.601086, 44.129669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095684, 43.075634, 44.023781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725616, 42.924484, 44.009560>,  <35.503574, 42.833794, 44.001026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725616, 42.924484, 44.009560>,  <36.095684, 43.075634, 44.023781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725616, 42.924484, 44.009560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210727, -0.433506, -0.876166,
		0.315673, -0.818096, 0.480697,
		-0.925173, -0.377878, -0.035549,
		35.448063, 42.811119, 43.998894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140594, 42.278694, 44.064838>,  <36.095684, 43.075634, 44.023781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140594, 42.278694, 44.064838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776241, 42.333431, 43.909111>,  <35.557629, 42.366272, 43.815674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776241, 42.333431, 43.909111>,  <36.140594, 42.278694, 44.064838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776241, 42.333431, 43.909111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241507, -0.588207, -0.771808,
		-0.334613, -0.797049, 0.502739,
		-0.910884, 0.136842, -0.389315,
		35.502975, 42.374485, 43.792316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996254, 41.651821, 43.652023>,  <36.140594, 42.278694, 44.064838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996254, 41.651821, 43.652023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710480, 41.896591, 43.516296>,  <35.539017, 42.043453, 43.434860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710480, 41.896591, 43.516296>,  <35.996254, 41.651821, 43.652023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710480, 41.896591, 43.516296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032473, -0.513422, -0.857522,
		-0.698951, -0.601622, 0.386676,
		-0.714432, 0.611922, -0.339321,
		35.496151, 42.080166, 43.414501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458332, 41.296078, 43.509212>,  <35.996254, 41.651821, 43.652023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458332, 41.296078, 43.509212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422554, 41.614758, 43.270123>,  <35.401085, 41.805965, 43.126671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422554, 41.614758, 43.270123>,  <35.458332, 41.296078, 43.509212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422554, 41.614758, 43.270123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087357, -0.604092, -0.792112,
		-0.992153, -0.018638, 0.123632,
		-0.089448, 0.796697, -0.597723,
		35.395718, 41.853767, 43.090805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932762, 41.236919, 43.034786>,  <35.458332, 41.296078, 43.509212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932762, 41.236919, 43.034786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157410, 41.527020, 42.875492>,  <35.292198, 41.701080, 42.779915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157410, 41.527020, 42.875492>,  <34.932762, 41.236919, 43.034786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157410, 41.527020, 42.875492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015313, -0.472119, -0.881402,
		-0.827251, 0.501114, -0.254047,
		0.561623, 0.725251, -0.398235,
		35.325897, 41.744595, 42.756023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327370, 41.447075, 42.960331>,  <34.932762, 41.236919, 43.034786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327370, 41.447075, 42.960331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948708, 41.318298, 42.965885>,  <33.721508, 41.241032, 42.969219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948708, 41.318298, 42.965885>,  <34.327370, 41.447075, 42.960331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948708, 41.318298, 42.965885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102816, 0.342612, 0.933834,
		-0.305397, 0.882594, -0.357437,
		-0.946658, -0.321940, 0.013888,
		33.664711, 41.221718, 42.970051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868397, 41.921936, 43.397827>,  <34.327370, 41.447075, 42.960331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868397, 41.921936, 43.397827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660210, 41.580383, 43.396873>,  <33.535297, 41.375454, 43.396301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660210, 41.580383, 43.396873>,  <33.868397, 41.921936, 43.397827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660210, 41.580383, 43.396873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363791, 0.219214, 0.905318,
		-0.772510, 0.472054, -0.424728,
		-0.520466, -0.853879, -0.002384,
		33.504070, 41.324219, 43.396160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315643, 42.085281, 43.877659>,  <33.868397, 41.921936, 43.397827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315643, 42.085281, 43.877659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309002, 41.689453, 43.820427>,  <33.305016, 41.451954, 43.786087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309002, 41.689453, 43.820427>,  <33.315643, 42.085281, 43.877659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309002, 41.689453, 43.820427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283544, -0.132560, 0.949753,
		-0.958815, 0.056342, -0.278386,
		-0.016608, -0.989572, -0.143076,
		33.304020, 41.392582, 43.777504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580978, 41.869102, 44.026173>,  <33.315643, 42.085281, 43.877659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580978, 41.869102, 44.026173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796223, 41.534584, 44.068192>,  <32.925369, 41.333874, 44.093403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796223, 41.534584, 44.068192>,  <32.580978, 41.869102, 44.026173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796223, 41.534584, 44.068192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244983, -0.035937, 0.968861,
		-0.806484, -0.547093, -0.224218,
		0.538114, -0.836301, 0.105046,
		32.957657, 41.283695, 44.099705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118752, 41.342327, 44.328217>,  <32.580978, 41.869102, 44.026173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118752, 41.342327, 44.328217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485485, 41.203022, 44.406319>,  <32.705524, 41.119438, 44.453182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485485, 41.203022, 44.406319>,  <32.118752, 41.342327, 44.328217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485485, 41.203022, 44.406319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253735, -0.130631, 0.958412,
		-0.308275, -0.928249, -0.208134,
		0.916834, -0.348265, 0.195259,
		32.760536, 41.098541, 44.464897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976448, 40.727184, 44.658638>,  <32.118752, 41.342327, 44.328217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976448, 40.727184, 44.658638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344952, 40.853748, 44.749119>,  <32.566051, 40.929688, 44.803406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344952, 40.853748, 44.749119>,  <31.976448, 40.727184, 44.658638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344952, 40.853748, 44.749119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226538, -0.036247, 0.973328,
		0.316175, -0.947928, 0.038287,
		0.921257, 0.316415, 0.226202,
		32.621330, 40.948673, 44.816978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146549, 40.255230, 45.103004>,  <31.976448, 40.727184, 44.658638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146549, 40.255230, 45.103004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370083, 40.577888, 45.179970>,  <32.504204, 40.771484, 45.226151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370083, 40.577888, 45.179970>,  <32.146549, 40.255230, 45.103004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370083, 40.577888, 45.179970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285472, -0.030722, 0.957894,
		0.778597, -0.590231, 0.213108,
		0.558832, 0.806650, 0.192415,
		32.537731, 40.819885, 45.237694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266106, 39.561565, 45.243786>,  <32.146549, 40.255230, 45.103004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266106, 39.561565, 45.243786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.015717, 39.285828, 45.389637>,  <31.865482, 39.120384, 45.477146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.015717, 39.285828, 45.389637>,  <32.266106, 39.561565, 45.243786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015717, 39.285828, 45.389637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177093, -0.581004, -0.794400,
		0.759468, -0.432703, 0.485774,
		-0.625976, -0.689349, 0.364625,
		31.827923, 39.079021, 45.499023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586815, 38.895664, 45.194366>,  <32.266106, 39.561565, 45.243786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586815, 38.895664, 45.194366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192436, 38.831024, 45.211334>,  <31.955811, 38.792240, 45.221516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192436, 38.831024, 45.211334>,  <32.586815, 38.895664, 45.194366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192436, 38.831024, 45.211334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051586, -0.535910, -0.842698,
		0.158914, -0.828664, 0.536714,
		-0.985944, -0.161603, 0.042417,
		31.896652, 38.782543, 45.224060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534901, 38.206623, 44.973923>,  <32.586815, 38.895664, 45.194366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534901, 38.206623, 44.973923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163364, 38.348904, 44.932499>,  <31.940441, 38.434273, 44.907646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163364, 38.348904, 44.932499>,  <32.534901, 38.206623, 44.973923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163364, 38.348904, 44.932499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105248, -0.521371, -0.846815,
		-0.355204, -0.775661, 0.521709,
		-0.928845, 0.355701, -0.103556,
		31.884710, 38.455616, 44.901432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066322, 37.607769, 44.741585>,  <32.534901, 38.206623, 44.973923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066322, 37.607769, 44.741585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863573, 37.931118, 44.621841>,  <31.741924, 38.125130, 44.549995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863573, 37.931118, 44.621841>,  <32.066322, 37.607769, 44.741585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863573, 37.931118, 44.621841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082258, -0.391046, -0.916688,
		-0.858089, -0.440016, 0.264704,
		-0.506869, 0.808374, -0.299357,
		31.711512, 38.173630, 44.532036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597570, 37.371380, 44.307034>,  <32.066322, 37.607769, 44.741585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597570, 37.371380, 44.307034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.588261, 37.756557, 44.199562>,  <31.582674, 37.987663, 44.135078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.588261, 37.756557, 44.199562>,  <31.597570, 37.371380, 44.307034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588261, 37.756557, 44.199562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196179, -0.267926, -0.943255,
		-0.980292, 0.030756, 0.195145,
		-0.023274, 0.962949, -0.268679,
		31.581278, 38.045441, 44.118958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072540, 37.440453, 43.801556>,  <31.597570, 37.371380, 44.307034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072540, 37.440453, 43.801556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.266785, 37.780746, 43.721123>,  <31.383331, 37.984924, 43.672863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.266785, 37.780746, 43.721123>,  <31.072540, 37.440453, 43.801556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266785, 37.780746, 43.721123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243703, -0.089153, -0.965744,
		-0.839518, 0.517979, 0.164033,
		0.485611, 0.850734, -0.201078,
		31.412468, 38.035965, 43.660801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770903, 37.560757, 43.222198>,  <31.072540, 37.440453, 43.801556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770903, 37.560757, 43.222198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.076778, 37.818291, 43.232967>,  <31.260303, 37.972813, 43.239429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.076778, 37.818291, 43.232967>,  <30.770903, 37.560757, 43.222198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076778, 37.818291, 43.232967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096477, 0.155689, -0.983084,
		-0.637135, 0.749157, 0.181169,
		0.764690, 0.643836, 0.026918,
		31.306185, 38.011440, 43.241043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.853676, 39.440289, 48.648712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.062195, 39.759102, 48.526737>,  <36.187305, 39.950390, 48.453552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.062195, 39.759102, 48.526737>,  <35.853676, 39.440289, 48.648712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062195, 39.759102, 48.526737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046072, -0.330525, -0.942672,
		-0.852130, 0.505463, -0.135582,
		0.521299, 0.797032, -0.304938,
		36.218586, 39.998211, 48.435257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495247, 39.787479, 48.130844>,  <35.853676, 39.440289, 48.648712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495247, 39.787479, 48.130844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.889065, 39.842182, 48.087090>,  <36.125355, 39.875004, 48.060837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.889065, 39.842182, 48.087090>,  <35.495247, 39.787479, 48.130844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889065, 39.842182, 48.087090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044192, -0.410397, -0.910836,
		-0.169451, 0.901595, -0.398012,
		0.984547, 0.136753, -0.109385,
		36.184429, 39.883209, 48.054276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596710, 40.083035, 47.439339>,  <35.495247, 39.787479, 48.130844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596710, 40.083035, 47.439339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.927109, 39.890804, 47.557175>,  <36.125347, 39.775467, 47.627876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.927109, 39.890804, 47.557175>,  <35.596710, 40.083035, 47.439339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927109, 39.890804, 47.557175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051670, -0.455868, -0.888547,
		0.561308, 0.749154, -0.351712,
		0.825992, -0.480575, 0.294591,
		36.174908, 39.746632, 47.645554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000504, 40.068363, 46.849464>,  <35.596710, 40.083035, 47.439339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000504, 40.068363, 46.849464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.162209, 39.790417, 47.087368>,  <36.259232, 39.623650, 47.230110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.162209, 39.790417, 47.087368>,  <36.000504, 40.068363, 46.849464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162209, 39.790417, 47.087368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289635, -0.519542, -0.803858,
		0.867575, 0.497229, -0.008771,
		0.404259, -0.694867, 0.594756,
		36.283485, 39.581955, 47.265797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658051, 39.810791, 46.525890>,  <36.000504, 40.068363, 46.849464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658051, 39.810791, 46.525890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.569672, 39.523594, 46.789913>,  <36.516644, 39.351276, 46.948326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.569672, 39.523594, 46.789913>,  <36.658051, 39.810791, 46.525890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569672, 39.523594, 46.789913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115234, -0.691261, -0.713358,
		0.968454, -0.081555, 0.235470,
		-0.220950, -0.717988, 0.660056,
		36.503387, 39.308197, 46.987930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182335, 39.342731, 46.535229>,  <36.658051, 39.810791, 46.525890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182335, 39.342731, 46.535229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.884129, 39.112331, 46.669353>,  <36.705204, 38.974091, 46.749828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.884129, 39.112331, 46.669353>,  <37.182335, 39.342731, 46.535229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884129, 39.112331, 46.669353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247553, -0.706417, -0.663093,
		0.618813, -0.411335, 0.669233,
		-0.745512, -0.576001, 0.335313,
		36.660477, 38.939529, 46.769947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475750, 38.683506, 46.483028>,  <37.182335, 39.342731, 46.535229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475750, 38.683506, 46.483028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.083015, 38.613907, 46.513290>,  <36.847374, 38.572147, 46.531448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.083015, 38.613907, 46.513290>,  <37.475750, 38.683506, 46.483028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083015, 38.613907, 46.513290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103361, -0.824886, -0.555769,
		0.159107, -0.537855, 0.827887,
		-0.981836, -0.173998, 0.075652,
		36.788464, 38.561707, 46.535988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448162, 37.989613, 46.732670>,  <37.475750, 38.683506, 46.483028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448162, 37.989613, 46.732670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101917, 38.049248, 46.541470>,  <36.894169, 38.085030, 46.426750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101917, 38.049248, 46.541470>,  <37.448162, 37.989613, 46.732670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101917, 38.049248, 46.541470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146506, -0.837449, -0.526512,
		-0.478798, -0.525786, 0.703066,
		-0.865615, 0.149089, -0.478000,
		36.842232, 38.093975, 46.398071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077721, 37.387875, 46.689823>,  <37.448162, 37.989613, 46.732670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077721, 37.387875, 46.689823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.912048, 37.594112, 46.389793>,  <36.812645, 37.717857, 46.209774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.912048, 37.594112, 46.389793>,  <37.077721, 37.387875, 46.689823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912048, 37.594112, 46.389793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124129, -0.784385, -0.607727,
		-0.901690, -0.344816, 0.260878,
		-0.414183, 0.515599, -0.750074,
		36.787792, 37.748791, 46.164772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621590, 36.939419, 46.433842>,  <37.077721, 37.387875, 46.689823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621590, 36.939419, 46.433842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683914, 37.202160, 46.138744>,  <36.721310, 37.359806, 45.961685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683914, 37.202160, 46.138744>,  <36.621590, 36.939419, 46.433842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683914, 37.202160, 46.138744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192208, -0.752748, -0.629625,
		-0.968906, -0.043696, -0.243540,
		0.155812, 0.656857, -0.737741,
		36.730659, 37.399216, 45.917423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304119, 36.636467, 45.926678>,  <36.621590, 36.939419, 46.433842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304119, 36.636467, 45.926678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536091, 36.891006, 45.723213>,  <36.675274, 37.043732, 45.601135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536091, 36.891006, 45.723213>,  <36.304119, 36.636467, 45.926678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536091, 36.891006, 45.723213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148673, -0.696565, -0.701921,
		-0.800983, 0.331443, -0.498569,
		0.579933, 0.636351, -0.508660,
		36.710072, 37.081913, 45.570614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152744, 36.591267, 45.126087>,  <36.304119, 36.636467, 45.926678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152744, 36.591267, 45.126087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.510960, 36.769016, 45.135380>,  <36.725887, 36.875668, 45.140953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.510960, 36.769016, 45.135380>,  <36.152744, 36.591267, 45.126087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510960, 36.769016, 45.135380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255242, -0.470216, -0.844836,
		-0.364503, 0.762513, -0.534520,
		0.895539, 0.444377, 0.023230,
		36.779621, 36.902328, 45.142349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582626, 36.982151, 44.686691>,  <36.152744, 36.591267, 45.126087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582626, 36.982151, 44.686691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.265522, 36.772102, 44.562897>,  <35.075260, 36.646072, 44.488621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.265522, 36.772102, 44.562897>,  <35.582626, 36.982151, 44.686691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265522, 36.772102, 44.562897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431003, 0.123891, 0.893805,
		-0.431010, 0.841963, -0.324544,
		-0.792759, -0.525118, -0.309490,
		35.027695, 36.614567, 44.470051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032845, 37.500973, 44.891029>,  <35.582626, 36.982151, 44.686691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032845, 37.500973, 44.891029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874828, 37.134537, 44.863556>,  <34.780018, 36.914673, 44.847073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874828, 37.134537, 44.863556>,  <35.032845, 37.500973, 44.891029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874828, 37.134537, 44.863556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418874, 0.113074, 0.900977,
		-0.817613, 0.384690, -0.428396,
		-0.395037, -0.916094, -0.068686,
		34.756317, 36.859707, 44.842949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293736, 37.519051, 45.126537>,  <35.032845, 37.500973, 44.891029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293736, 37.519051, 45.126537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419239, 37.139351, 45.135311>,  <34.494541, 36.911530, 45.140575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419239, 37.139351, 45.135311>,  <34.293736, 37.519051, 45.126537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419239, 37.139351, 45.135311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225201, -0.051955, 0.972926,
		-0.922409, -0.310205, -0.230074,
		0.313760, -0.949249, 0.021935,
		34.513367, 36.854576, 45.141891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843224, 37.318851, 45.681660>,  <34.293736, 37.519051, 45.126537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843224, 37.318851, 45.681660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133114, 37.045006, 45.650494>,  <34.307049, 36.880699, 45.631794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133114, 37.045006, 45.650494>,  <33.843224, 37.318851, 45.681660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133114, 37.045006, 45.650494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029853, -0.081769, 0.996204,
		-0.688389, -0.724302, -0.038822,
		0.724727, -0.684617, -0.077911,
		34.350533, 36.839619, 45.627121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616104, 36.715485, 45.876923>,  <33.843224, 37.318851, 45.681660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616104, 36.715485, 45.876923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.012844, 36.716511, 45.927876>,  <34.250889, 36.717129, 45.958447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.012844, 36.716511, 45.927876>,  <33.616104, 36.715485, 45.876923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012844, 36.716511, 45.927876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125709, -0.143120, 0.981689,
		0.020754, -0.989702, -0.141631,
		0.991850, 0.002570, 0.127385,
		34.310398, 36.717281, 45.966091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614227, 36.203091, 46.310310>,  <33.616104, 36.715485, 45.876923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614227, 36.203091, 46.310310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.970772, 36.379196, 46.353462>,  <34.184700, 36.484859, 46.379353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.970772, 36.379196, 46.353462>,  <33.614227, 36.203091, 46.310310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970772, 36.379196, 46.353462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080471, -0.080512, 0.993500,
		0.446089, -0.894251, -0.036337,
		0.891364, 0.440265, 0.107876,
		34.238182, 36.511276, 46.385826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959820, 35.759357, 46.781170>,  <33.614227, 36.203091, 46.310310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959820, 35.759357, 46.781170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.125370, 36.123051, 46.799030>,  <34.224701, 36.341267, 46.809746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.125370, 36.123051, 46.799030>,  <33.959820, 35.759357, 46.781170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125370, 36.123051, 46.799030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180544, 0.033912, 0.982982,
		0.892249, -0.414897, 0.178193,
		0.413879, 0.909236, 0.044649,
		34.249535, 36.395821, 46.812424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138241, 35.789909, 47.557827>,  <33.959820, 35.759357, 46.781170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138241, 35.789909, 47.557827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.171902, 36.160614, 47.411385>,  <34.192101, 36.383038, 47.323521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.171902, 36.160614, 47.411385>,  <34.138241, 35.789909, 47.557827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171902, 36.160614, 47.411385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208511, 0.375652, 0.903000,
		0.974393, 0.000346, 0.224852,
		0.084154, 0.926761, -0.366105,
		34.197147, 36.438641, 47.301552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600945, 36.192471, 47.968178>,  <34.138241, 35.789909, 47.557827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600945, 36.192471, 47.968178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.381023, 36.482506, 47.802307>,  <34.249069, 36.656528, 47.702785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.381023, 36.482506, 47.802307>,  <34.600945, 36.192471, 47.968178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381023, 36.482506, 47.802307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139100, 0.410037, 0.901399,
		0.823631, 0.553274, -0.124579,
		-0.549803, 0.725092, -0.414679,
		34.216084, 36.700035, 47.677902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818604, 36.752674, 48.283955>,  <34.600945, 36.192471, 47.968178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818604, 36.752674, 48.283955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453220, 36.826611, 48.138943>,  <34.233990, 36.870972, 48.051933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453220, 36.826611, 48.138943>,  <34.818604, 36.752674, 48.283955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453220, 36.826611, 48.138943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262662, 0.412637, 0.872204,
		0.310814, 0.891944, -0.328375,
		-0.913457, 0.184841, -0.362533,
		34.179184, 36.882061, 48.030182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651352, 37.405167, 48.564552>,  <34.818604, 36.752674, 48.283955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651352, 37.405167, 48.564552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.294880, 37.263199, 48.451542>,  <34.080997, 37.178017, 48.383736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.294880, 37.263199, 48.451542>,  <34.651352, 37.405167, 48.564552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294880, 37.263199, 48.451542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429365, 0.458924, 0.777840,
		-0.146410, 0.814507, -0.561375,
		-0.891185, -0.354918, -0.282530,
		34.027523, 37.156723, 48.366783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177738, 37.972553, 48.643982>,  <34.651352, 37.405167, 48.564552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177738, 37.972553, 48.643982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.924545, 37.665489, 48.603931>,  <33.772629, 37.481251, 48.579903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.924545, 37.665489, 48.603931>,  <34.177738, 37.972553, 48.643982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924545, 37.665489, 48.603931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640029, 0.446156, 0.625545,
		-0.435534, 0.460046, -0.773736,
		-0.632987, -0.767660, -0.100126,
		33.734650, 37.435192, 48.573895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503319, 38.242115, 48.498802>,  <34.177738, 37.972553, 48.643982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503319, 38.242115, 48.498802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.438999, 37.873707, 48.640713>,  <33.400410, 37.652660, 48.725857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.438999, 37.873707, 48.640713>,  <33.503319, 38.242115, 48.498802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438999, 37.873707, 48.640713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627052, 0.372914, 0.683916,
		-0.762201, -0.112491, -0.637491,
		-0.160795, -0.921022, 0.354773,
		33.390762, 37.597401, 48.747143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800415, 38.163727, 48.568943>,  <33.503319, 38.242115, 48.498802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800415, 38.163727, 48.568943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.951855, 37.893208, 48.821701>,  <33.042717, 37.730896, 48.973354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.951855, 37.893208, 48.821701>,  <32.800415, 38.163727, 48.568943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951855, 37.893208, 48.821701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619991, 0.321603, 0.715670,
		-0.687222, -0.662719, -0.297539,
		0.378598, -0.676296, 0.631892,
		33.065434, 37.690319, 49.011269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207752, 38.034744, 48.290775>,  <32.800415, 38.163727, 48.568943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207752, 38.034744, 48.290775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960806, 38.335297, 48.383976>,  <31.812637, 38.515629, 48.439896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960806, 38.335297, 48.383976>,  <32.207752, 38.034744, 48.290775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960806, 38.335297, 48.383976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111530, 0.209593, -0.971407,
		-0.778730, -0.625700, -0.045594,
		-0.617366, 0.751379, 0.233000,
		31.775597, 38.560711, 48.453876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692045, 37.995396, 47.852619>,  <32.207752, 38.034744, 48.290775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692045, 37.995396, 47.852619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.706047, 38.384266, 47.945271>,  <31.714449, 38.617588, 48.000862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.706047, 38.384266, 47.945271>,  <31.692045, 37.995396, 47.852619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706047, 38.384266, 47.945271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241357, 0.233134, -0.942017,
		-0.969805, -0.022929, 0.242802,
		0.035006, 0.972174, 0.231629,
		31.716549, 38.675919, 48.014759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105965, 38.308002, 47.539833>,  <31.692045, 37.995396, 47.852619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105965, 38.308002, 47.539833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.399265, 38.575920, 47.586689>,  <31.575245, 38.736671, 47.614803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.399265, 38.575920, 47.586689>,  <31.105965, 38.308002, 47.539833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399265, 38.575920, 47.586689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015437, 0.188629, -0.981927,
		-0.679784, 0.718190, 0.148652,
		0.733250, 0.669793, 0.117141,
		31.619240, 38.776859, 47.621830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819441, 38.853962, 47.228836>,  <31.105965, 38.308002, 47.539833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819441, 38.853962, 47.228836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.214764, 38.913284, 47.214661>,  <31.451958, 38.948879, 47.206158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.214764, 38.913284, 47.214661>,  <30.819441, 38.853962, 47.228836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214764, 38.913284, 47.214661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040096, 0.028550, -0.998788,
		-0.147119, 0.988529, 0.034163,
		0.988306, 0.148311, -0.035436,
		31.511255, 38.957779, 47.204029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878717, 39.361465, 46.757168>,  <30.819441, 38.853962, 47.228836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878717, 39.361465, 46.757168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.253771, 39.226421, 46.790314>,  <31.478804, 39.145397, 46.810200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.253771, 39.226421, 46.790314>,  <30.878717, 39.361465, 46.757168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253771, 39.226421, 46.790314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064136, -0.066265, -0.995739,
		0.341658, 0.938952, -0.040479,
		0.937633, -0.337606, 0.082860,
		31.535061, 39.125141, 46.815170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212341, 39.756752, 46.322269>,  <30.878717, 39.361465, 46.757168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212341, 39.756752, 46.322269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.434637, 39.427826, 46.371178>,  <31.568014, 39.230469, 46.400524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.434637, 39.427826, 46.371178>,  <31.212341, 39.756752, 46.322269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434637, 39.427826, 46.371178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257477, 0.030399, -0.965806,
		0.790480, 0.568220, 0.228621,
		0.555740, -0.822315, 0.122274,
		31.601358, 39.181129, 46.407860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793213, 39.875919, 45.833408>,  <31.212341, 39.756752, 46.322269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793213, 39.875919, 45.833408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.787281, 39.485249, 45.919090>,  <31.783722, 39.250847, 45.970497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.787281, 39.485249, 45.919090>,  <31.793213, 39.875919, 45.833408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787281, 39.485249, 45.919090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188578, -0.213113, -0.958656,
		0.981946, 0.026180, 0.187340,
		-0.014827, -0.976677, 0.214202,
		31.782833, 39.192245, 45.983353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476913, 40.165462, 45.939274>,  <31.793213, 39.875919, 45.833408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476913, 40.165462, 45.939274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540314, 40.547276, 45.838287>,  <32.578354, 40.776363, 45.777695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540314, 40.547276, 45.838287>,  <32.476913, 40.165462, 45.939274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540314, 40.547276, 45.838287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195903, 0.281014, 0.939496,
		0.967730, -0.099449, 0.231537,
		0.158497, 0.954537, -0.252464,
		32.587864, 40.833637, 45.762547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822678, 40.395950, 46.568424>,  <32.476913, 40.165462, 45.939274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822678, 40.395950, 46.568424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717529, 40.728672, 46.372871>,  <32.654442, 40.928307, 46.255539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717529, 40.728672, 46.372871>,  <32.822678, 40.395950, 46.568424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717529, 40.728672, 46.372871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055846, 0.518967, 0.852968,
		0.963214, 0.196915, -0.182873,
		-0.262867, 0.831804, -0.488879,
		32.638668, 40.978214, 46.226208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218037, 41.009674, 46.914978>,  <32.822678, 40.395950, 46.568424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218037, 41.009674, 46.914978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.891575, 41.155621, 46.735752>,  <32.695698, 41.243191, 46.628216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.891575, 41.155621, 46.735752>,  <33.218037, 41.009674, 46.914978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891575, 41.155621, 46.735752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079052, 0.697630, 0.712084,
		0.572404, 0.616589, -0.540529,
		-0.816152, 0.364870, -0.448069,
		32.646729, 41.265083, 46.601330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292305, 41.780441, 46.933598>,  <33.218037, 41.009674, 46.914978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292305, 41.780441, 46.933598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.902416, 41.732971, 46.857872>,  <32.668484, 41.704491, 46.812439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.902416, 41.732971, 46.857872>,  <33.292305, 41.780441, 46.933598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902416, 41.732971, 46.857872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208601, 0.786902, 0.580751,
		0.080050, 0.605559, -0.791764,
		-0.974719, -0.118674, -0.189312,
		32.610001, 41.697369, 46.801079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950714, 42.423653, 46.697578>,  <33.292305, 41.780441, 46.933598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950714, 42.423653, 46.697578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.656124, 42.205261, 46.857334>,  <32.479370, 42.074226, 46.953186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.656124, 42.205261, 46.857334>,  <32.950714, 42.423653, 46.697578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656124, 42.205261, 46.857334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333821, 0.806843, 0.487410,
		-0.588360, 0.225641, -0.776479,
		-0.736476, -0.545977, 0.399390,
		32.435181, 42.041470, 46.977150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312618, 42.850185, 46.623512>,  <32.950714, 42.423653, 46.697578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312618, 42.850185, 46.623512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251884, 42.586807, 46.918373>,  <32.215443, 42.428780, 47.095291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251884, 42.586807, 46.918373>,  <32.312618, 42.850185, 46.623512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251884, 42.586807, 46.918373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373082, 0.728810, 0.574148,
		-0.915290, -0.187843, -0.356313,
		-0.151834, -0.658446, 0.737153,
		32.206333, 42.389275, 47.139519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738804, 43.077732, 46.999668>,  <32.312618, 42.850185, 46.623512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738804, 43.077732, 46.999668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960901, 42.854225, 47.246078>,  <32.094158, 42.720119, 47.393925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960901, 42.854225, 47.246078>,  <31.738804, 43.077732, 46.999668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960901, 42.854225, 47.246078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379963, 0.488446, 0.785524,
		-0.739821, -0.670222, 0.058894,
		0.555242, -0.558770, 0.616022,
		32.127472, 42.686596, 47.430885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363068, 42.776638, 47.509964>,  <31.738804, 43.077732, 46.999668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363068, 42.776638, 47.509964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.719055, 42.785675, 47.692146>,  <31.932648, 42.791096, 47.801456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.719055, 42.785675, 47.692146>,  <31.363068, 42.776638, 47.509964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719055, 42.785675, 47.692146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399542, 0.520073, 0.754911,
		-0.219819, -0.853823, 0.471874,
		0.889969, 0.022590, 0.455460,
		31.986046, 42.792454, 47.828785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204056, 42.728310, 48.144001>,  <31.363068, 42.776638, 47.509964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204056, 42.728310, 48.144001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576384, 42.873730, 48.159008>,  <31.799780, 42.960983, 48.168011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576384, 42.873730, 48.159008>,  <31.204056, 42.728310, 48.144001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576384, 42.873730, 48.159008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254228, 0.570312, 0.781097,
		0.262571, -0.736598, 0.623282,
		0.930819, 0.363549, 0.037516,
		31.855629, 42.982796, 48.170261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.090370, 35.462009, 34.250099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444057, 35.583649, 34.391907>,  <35.656269, 35.656631, 34.476990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444057, 35.583649, 34.391907>,  <35.090370, 35.462009, 34.250099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444057, 35.583649, 34.391907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437270, 0.272160, 0.857160,
		0.164176, -0.912936, 0.373622,
		0.884218, 0.304099, 0.354517,
		35.709324, 35.674877, 34.498260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206326, 35.142876, 34.942192>,  <35.090370, 35.462009, 34.250099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206326, 35.142876, 34.942192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426971, 35.475723, 34.919235>,  <35.559361, 35.675430, 34.905460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426971, 35.475723, 34.919235>,  <35.206326, 35.142876, 34.942192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426971, 35.475723, 34.919235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476965, 0.371136, 0.796720,
		0.684267, -0.412111, 0.601617,
		0.551619, 0.832120, -0.057393,
		35.592457, 35.725361, 34.902016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352428, 35.333900, 35.628933>,  <35.206326, 35.142876, 34.942192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352428, 35.333900, 35.628933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429451, 35.688820, 35.461304>,  <35.475666, 35.901772, 35.360725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429451, 35.688820, 35.461304>,  <35.352428, 35.333900, 35.628933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429451, 35.688820, 35.461304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120702, 0.445235, 0.887241,
		0.973834, -0.120264, 0.192833,
		0.192559, 0.887300, -0.419069,
		35.487217, 35.955009, 35.335583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661716, 35.691235, 36.133656>,  <35.352428, 35.333900, 35.628933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661716, 35.691235, 36.133656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549797, 35.989647, 35.891945>,  <35.482647, 36.168694, 35.746918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549797, 35.989647, 35.891945>,  <35.661716, 35.691235, 36.133656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549797, 35.989647, 35.891945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113861, 0.599185, 0.792473,
		0.953283, 0.290534, -0.082706,
		-0.279797, 0.746034, -0.604274,
		35.465858, 36.213459, 35.710663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922428, 36.287189, 36.493786>,  <35.661716, 35.691235, 36.133656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922428, 36.287189, 36.493786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668304, 36.427620, 36.218647>,  <35.515831, 36.511879, 36.053562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668304, 36.427620, 36.218647>,  <35.922428, 36.287189, 36.493786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668304, 36.427620, 36.218647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276887, 0.727923, 0.627266,
		0.720914, 0.588962, -0.365248,
		-0.635308, 0.351072, -0.687846,
		35.477711, 36.532940, 36.012295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096653, 37.017170, 36.313976>,  <35.922428, 36.287189, 36.493786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096653, 37.017170, 36.313976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708752, 36.969303, 36.228878>,  <35.476009, 36.940582, 36.177818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708752, 36.969303, 36.228878>,  <36.096653, 37.017170, 36.313976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708752, 36.969303, 36.228878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229721, 0.742085, 0.629713,
		0.082517, 0.659537, -0.747129,
		-0.969752, -0.119669, -0.212744,
		35.417828, 36.933403, 36.165054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824116, 37.744343, 36.127476>,  <36.096653, 37.017170, 36.313976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824116, 37.744343, 36.127476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525478, 37.515972, 36.264084>,  <35.346294, 37.378952, 36.346050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525478, 37.515972, 36.264084>,  <35.824116, 37.744343, 36.127476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525478, 37.515972, 36.264084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386556, 0.790087, 0.475748,
		-0.541449, 0.223175, -0.810571,
		-0.746598, -0.570924, 0.341522,
		35.301498, 37.344696, 36.366539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412975, 38.179901, 36.313480>,  <35.824116, 37.744343, 36.127476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412975, 38.179901, 36.313480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190334, 37.886154, 36.468861>,  <35.056747, 37.709904, 36.562088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190334, 37.886154, 36.468861>,  <35.412975, 38.179901, 36.313480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190334, 37.886154, 36.468861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476303, 0.665178, 0.575042,
		-0.680679, 0.135054, -0.720025,
		-0.556607, -0.734369, 0.388446,
		35.023354, 37.665844, 36.585396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709770, 38.385406, 36.319485>,  <35.412975, 38.179901, 36.313480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709770, 38.385406, 36.319485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698059, 38.102654, 36.602177>,  <34.691032, 37.933002, 36.771790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698059, 38.102654, 36.602177>,  <34.709770, 38.385406, 36.319485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698059, 38.102654, 36.602177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527008, 0.611693, 0.589995,
		-0.849356, -0.355177, -0.390441,
		-0.029277, -0.706881, 0.706726,
		34.689278, 37.890591, 36.814194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115967, 38.632832, 36.632675>,  <34.709770, 38.385406, 36.319485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115967, 38.632832, 36.632675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274189, 38.366173, 36.885380>,  <34.369122, 38.206177, 37.037003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274189, 38.366173, 36.885380>,  <34.115967, 38.632832, 36.632675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274189, 38.366173, 36.885380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514782, 0.408733, 0.753616,
		-0.760615, -0.623317, -0.181499,
		0.395557, -0.666643, 0.631761,
		34.392857, 38.166180, 37.074909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520432, 38.368511, 36.994957>,  <34.115967, 38.632832, 36.632675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520432, 38.368511, 36.994957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854431, 38.304371, 37.205502>,  <34.054832, 38.265888, 37.331829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854431, 38.304371, 37.205502>,  <33.520432, 38.368511, 36.994957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854431, 38.304371, 37.205502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412196, 0.451413, 0.791405,
		-0.364507, -0.877790, 0.310836,
		0.835003, -0.160347, 0.526364,
		34.104931, 38.256268, 37.363411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325100, 38.040844, 37.582371>,  <33.520432, 38.368511, 36.994957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325100, 38.040844, 37.582371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665722, 38.241451, 37.643471>,  <33.870094, 38.361816, 37.680130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665722, 38.241451, 37.643471>,  <33.325100, 38.040844, 37.582371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665722, 38.241451, 37.643471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384819, 0.400065, 0.831782,
		0.356041, -0.767092, 0.533671,
		0.851557, 0.501516, 0.152752,
		33.921188, 38.391907, 37.689297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260868, 37.277561, 37.576450>,  <33.325100, 38.040844, 37.582371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260868, 37.277561, 37.576450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957726, 37.016865, 37.588398>,  <32.775841, 36.860447, 37.595566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957726, 37.016865, 37.588398>,  <33.260868, 37.277561, 37.576450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957726, 37.016865, 37.588398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196982, -0.272219, -0.941857,
		0.621976, -0.707908, 0.334684,
		-0.757855, -0.651739, 0.029869,
		32.730370, 36.821342, 37.597359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565044, 36.625401, 37.266697>,  <33.260868, 37.277561, 37.576450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565044, 36.625401, 37.266697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176071, 36.534153, 37.247375>,  <32.942688, 36.479404, 37.235783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176071, 36.534153, 37.247375>,  <33.565044, 36.625401, 37.266697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176071, 36.534153, 37.247375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163751, -0.520620, -0.837939,
		0.166002, -0.822750, 0.543623,
		-0.972435, -0.228118, -0.048302,
		32.884342, 36.465717, 37.232883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460667, 35.934902, 37.214321>,  <33.565044, 36.625401, 37.266697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460667, 35.934902, 37.214321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114845, 36.079235, 37.074413>,  <32.907352, 36.165836, 36.990467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114845, 36.079235, 37.074413>,  <33.460667, 35.934902, 37.214321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114845, 36.079235, 37.074413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073922, -0.597131, -0.798730,
		-0.497067, -0.716404, 0.489580,
		-0.864557, 0.360832, -0.349772,
		32.855476, 36.187485, 36.969482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095642, 35.406151, 37.052368>,  <33.460667, 35.934902, 37.214321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095642, 35.406151, 37.052368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950848, 35.709297, 36.835258>,  <32.863972, 35.891186, 36.704994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950848, 35.709297, 36.835258>,  <33.095642, 35.406151, 37.052368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950848, 35.709297, 36.835258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040564, -0.594512, -0.803063,
		-0.931299, -0.268683, 0.245950,
		-0.361990, 0.757869, -0.542770,
		32.842251, 35.936657, 36.672428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861042, 34.971237, 36.538418>,  <33.095642, 35.406151, 37.052368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861042, 34.971237, 36.538418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823597, 35.339710, 36.387333>,  <32.801132, 35.560795, 36.296680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823597, 35.339710, 36.387333>,  <32.861042, 34.971237, 36.538418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823597, 35.339710, 36.387333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118308, -0.386982, -0.914466,
		-0.988555, -0.040916, 0.145208,
		-0.093610, 0.921179, -0.377712,
		32.795513, 35.616062, 36.274021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274128, 34.940762, 35.990917>,  <32.861042, 34.971237, 36.538418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274128, 34.940762, 35.990917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502014, 35.256386, 35.898994>,  <32.638744, 35.445759, 35.843842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502014, 35.256386, 35.898994>,  <32.274128, 34.940762, 35.990917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502014, 35.256386, 35.898994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170218, -0.386851, -0.906296,
		-0.804021, 0.477214, -0.354707,
		0.569716, 0.789058, -0.229806,
		32.672928, 35.493103, 35.830051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045551, 35.145351, 35.388882>,  <32.274128, 34.940762, 35.990917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045551, 35.145351, 35.388882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403275, 35.324093, 35.398056>,  <32.617908, 35.431339, 35.403561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403275, 35.324093, 35.398056>,  <32.045551, 35.145351, 35.388882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403275, 35.324093, 35.398056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231036, -0.417265, -0.878927,
		-0.383184, 0.791333, -0.476405,
		0.894311, 0.446858, 0.022937,
		32.671566, 35.458149, 35.404938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187702, 35.338886, 34.809254>,  <32.045551, 35.145351, 35.388882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187702, 35.338886, 34.809254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564701, 35.379799, 34.936520>,  <32.790901, 35.404346, 35.012878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564701, 35.379799, 34.936520>,  <32.187702, 35.338886, 34.809254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564701, 35.379799, 34.936520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334088, -0.263329, -0.905010,
		-0.008783, 0.959269, -0.282358,
		0.942501, 0.102281, 0.318167,
		32.847450, 35.410484, 35.031971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566616, 35.754456, 34.321125>,  <32.187702, 35.338886, 34.809254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566616, 35.754456, 34.321125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837193, 35.536663, 34.519505>,  <32.999538, 35.405987, 34.638531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837193, 35.536663, 34.519505>,  <32.566616, 35.754456, 34.321125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837193, 35.536663, 34.519505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356954, -0.346638, -0.867425,
		0.644212, 0.763794, -0.040125,
		0.676443, -0.544483, 0.495947,
		33.040127, 35.373318, 34.668289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060555, 35.749565, 33.821392>,  <32.566616, 35.754456, 34.321125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060555, 35.749565, 33.821392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164520, 35.461765, 34.079002>,  <33.226898, 35.289085, 34.233570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164520, 35.461765, 34.079002>,  <33.060555, 35.749565, 33.821392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164520, 35.461765, 34.079002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557582, -0.432696, -0.708432,
		0.788382, 0.543229, 0.288715,
		0.259915, -0.719498, 0.644025,
		33.242496, 35.245914, 34.272209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796452, 35.665199, 33.695267>,  <33.060555, 35.749565, 33.821392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796452, 35.665199, 33.695267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649040, 35.337582, 33.871151>,  <33.560593, 35.141010, 33.976681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649040, 35.337582, 33.871151>,  <33.796452, 35.665199, 33.695267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649040, 35.337582, 33.871151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529402, -0.573724, -0.624960,
		0.764145, 0.002467, 0.645040,
		-0.368533, -0.819045, 0.439714,
		33.538479, 35.091869, 34.003067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403294, 35.203262, 33.890984>,  <33.796452, 35.665199, 33.695267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403294, 35.203262, 33.890984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079750, 34.970707, 33.855804>,  <33.885624, 34.831173, 33.834698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079750, 34.970707, 33.855804>,  <34.403294, 35.203262, 33.890984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079750, 34.970707, 33.855804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459634, -0.531881, -0.711224,
		0.366724, -0.615700, 0.697443,
		-0.808857, -0.581392, -0.087943,
		33.837093, 34.796288, 33.829422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497921, 34.848412, 34.471920>,  <34.403294, 35.203262, 33.890984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497921, 34.848412, 34.471920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728062, 34.601284, 34.686310>,  <34.866146, 34.453007, 34.814941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728062, 34.601284, 34.686310>,  <34.497921, 34.848412, 34.471920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728062, 34.601284, 34.686310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296066, -0.453541, -0.840622,
		0.762437, 0.642340, -0.078033,
		0.575356, -0.617819, 0.535971,
		34.900669, 34.415939, 34.847103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103901, 34.653229, 34.105766>,  <34.497921, 34.848412, 34.471920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103901, 34.653229, 34.105766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059498, 34.357605, 34.371540>,  <35.032856, 34.180233, 34.531006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059498, 34.357605, 34.371540>,  <35.103901, 34.653229, 34.105766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059498, 34.357605, 34.371540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148703, -0.673391, -0.724177,
		0.982632, 0.018414, 0.184651,
		-0.111008, -0.739057, 0.664434,
		35.026196, 34.135887, 34.570869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765411, 34.364815, 34.142189>,  <35.103901, 34.653229, 34.105766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765411, 34.364815, 34.142189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445690, 34.127991, 34.183331>,  <35.253857, 33.985897, 34.208015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445690, 34.127991, 34.183331>,  <35.765411, 34.364815, 34.142189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445690, 34.127991, 34.183331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304560, -0.546675, -0.779994,
		0.518032, -0.592126, 0.617277,
		-0.799304, -0.592059, 0.102857,
		35.205898, 33.950375, 34.214188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967640, 33.608772, 34.124226>,  <35.765411, 34.364815, 34.142189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967640, 33.608772, 34.124226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244274, 33.406307, 34.330334>,  <36.410255, 33.284828, 34.453999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244274, 33.406307, 34.330334>,  <35.967640, 33.608772, 34.124226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244274, 33.406307, 34.330334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332088, 0.410680, 0.849152,
		-0.641421, -0.758380, 0.115931,
		0.691590, -0.506164, 0.515267,
		36.451752, 33.254459, 34.484913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758106, 33.179119, 34.671108>,  <35.967640, 33.608772, 34.124226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758106, 33.179119, 34.671108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119682, 33.321415, 34.766056>,  <36.336628, 33.406792, 34.823025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119682, 33.321415, 34.766056>,  <35.758106, 33.179119, 34.671108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119682, 33.321415, 34.766056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343638, 0.273795, 0.898303,
		0.254568, -0.893581, 0.369739,
		0.903940, 0.355736, 0.237369,
		36.390865, 33.428139, 34.837265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783905, 33.066563, 35.439697>,  <35.758106, 33.179119, 34.671108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783905, 33.066563, 35.439697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097477, 33.303104, 35.364071>,  <36.285622, 33.445030, 35.318695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097477, 33.303104, 35.364071>,  <35.783905, 33.066563, 35.439697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097477, 33.303104, 35.364071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150050, 0.475967, 0.866569,
		0.602439, -0.650963, 0.461859,
		0.783934, 0.591356, -0.189064,
		36.332657, 33.480511, 35.307350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314381, 32.987701, 36.070820>,  <35.783905, 33.066563, 35.439697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314381, 32.987701, 36.070820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356972, 33.338608, 35.883606>,  <36.382526, 33.549152, 35.771278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356972, 33.338608, 35.883606>,  <36.314381, 32.987701, 36.070820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356972, 33.338608, 35.883606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042325, 0.474287, 0.879352,
		0.993413, -0.073825, 0.087634,
		0.106481, 0.877270, -0.468038,
		36.388916, 33.601788, 35.743195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755360, 33.402847, 36.467548>,  <36.314381, 32.987701, 36.070820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755360, 33.402847, 36.467548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555779, 33.651802, 36.226322>,  <36.436031, 33.801174, 36.081585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555779, 33.651802, 36.226322>,  <36.755360, 33.402847, 36.467548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555779, 33.651802, 36.226322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238402, 0.570452, 0.785970,
		0.833194, 0.535933, -0.136251,
		-0.498952, 0.622382, -0.603065,
		36.406094, 33.838516, 36.045403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927296, 34.063969, 36.752399>,  <36.755360, 33.402847, 36.467548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927296, 34.063969, 36.752399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605339, 34.115402, 36.520668>,  <36.412167, 34.146263, 36.381630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605339, 34.115402, 36.520668>,  <36.927296, 34.063969, 36.752399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605339, 34.115402, 36.520668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422641, 0.561077, 0.711735,
		0.416565, 0.817715, -0.397260,
		-0.804890, 0.128586, -0.579325,
		36.363873, 34.153976, 36.346870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793247, 34.825565, 36.764050>,  <36.927296, 34.063969, 36.752399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793247, 34.825565, 36.764050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441914, 34.672676, 36.649200>,  <36.231113, 34.580944, 36.580292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441914, 34.672676, 36.649200>,  <36.793247, 34.825565, 36.764050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441914, 34.672676, 36.649200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435967, 0.394016, 0.809126,
		-0.196132, 0.835858, -0.512712,
		-0.878331, -0.382221, -0.287127,
		36.178413, 34.558010, 36.563061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259243, 35.418850, 36.784313>,  <36.793247, 34.825565, 36.764050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259243, 35.418850, 36.784313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048027, 35.079185, 36.788223>,  <35.921299, 34.875385, 36.790569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048027, 35.079185, 36.788223>,  <36.259243, 35.418850, 36.784313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048027, 35.079185, 36.788223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537211, 0.342926, 0.770588,
		-0.657708, 0.401649, -0.637258,
		-0.528038, -0.849164, 0.009775,
		35.889614, 34.824436, 36.791157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624550, 35.636543, 36.979523>,  <36.259243, 35.418850, 36.784313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624550, 35.636543, 36.979523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610893, 35.244770, 37.059067>,  <35.602699, 35.009705, 37.106792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610893, 35.244770, 37.059067>,  <35.624550, 35.636543, 36.979523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610893, 35.244770, 37.059067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446658, 0.192953, 0.873651,
		-0.894054, -0.058997, -0.444058,
		-0.034139, -0.979433, 0.198862,
		35.600651, 34.950939, 37.118725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906921, 35.507332, 37.187164>,  <35.624550, 35.636543, 36.979523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906921, 35.507332, 37.187164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146122, 35.235714, 37.357479>,  <35.289642, 35.072742, 37.459667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146122, 35.235714, 37.357479>,  <34.906921, 35.507332, 37.187164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146122, 35.235714, 37.357479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361773, 0.245360, 0.899399,
		-0.715205, -0.691877, -0.098936,
		0.597998, -0.679047, 0.425785,
		35.325523, 35.032001, 37.485214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494156, 35.043968, 37.644882>,  <34.906921, 35.507332, 37.187164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494156, 35.043968, 37.644882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857578, 35.010326, 37.808563>,  <35.075634, 34.990143, 37.906773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857578, 35.010326, 37.808563>,  <34.494156, 35.043968, 37.644882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857578, 35.010326, 37.808563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399185, 0.114030, 0.909752,
		-0.123172, -0.989911, 0.070031,
		0.908559, -0.084100, 0.409203,
		35.130146, 34.985096, 37.931324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290184, 34.818649, 38.328724>,  <34.494156, 35.043968, 37.644882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290184, 34.818649, 38.328724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679291, 34.901447, 38.370457>,  <34.912754, 34.951126, 38.395496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679291, 34.901447, 38.370457>,  <34.290184, 34.818649, 38.328724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679291, 34.901447, 38.370457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127565, 0.102227, 0.986548,
		0.193547, -0.972986, 0.125848,
		0.972762, 0.206997, 0.104333,
		34.971119, 34.963547, 38.401756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435669, 34.416645, 38.919857>,  <34.290184, 34.818649, 38.328724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435669, 34.416645, 38.919857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715843, 34.695904, 38.860554>,  <34.883945, 34.863461, 38.824970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715843, 34.695904, 38.860554>,  <34.435669, 34.416645, 38.919857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715843, 34.695904, 38.860554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058972, 0.150406, 0.986864,
		0.711280, -0.699973, 0.064178,
		0.700431, 0.698152, -0.148259,
		34.925972, 34.905350, 38.816074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876919, 34.428612, 39.496201>,  <34.435669, 34.416645, 38.919857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876919, 34.428612, 39.496201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995781, 34.767361, 39.319790>,  <35.067097, 34.970612, 39.213943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995781, 34.767361, 39.319790>,  <34.876919, 34.428612, 39.496201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995781, 34.767361, 39.319790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221693, 0.388076, 0.894566,
		0.928736, -0.363597, -0.072427,
		0.297155, 0.846873, -0.441027,
		35.084927, 35.021423, 39.187481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600616, 34.546654, 39.820599>,  <34.876919, 34.428612, 39.496201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600616, 34.546654, 39.820599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418354, 34.880928, 39.697956>,  <35.308998, 35.081493, 39.624371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418354, 34.880928, 39.697956>,  <35.600616, 34.546654, 39.820599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418354, 34.880928, 39.697956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064524, 0.374544, 0.924961,
		0.887814, 0.401680, -0.224585,
		-0.455656, 0.835685, -0.306608,
		35.281658, 35.131634, 39.605972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039940, 35.066925, 39.972275>,  <35.600616, 34.546654, 39.820599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039940, 35.066925, 39.972275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684128, 35.248306, 39.949921>,  <35.470642, 35.357136, 39.936508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684128, 35.248306, 39.949921>,  <36.039940, 35.066925, 39.972275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684128, 35.248306, 39.949921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169779, 0.441630, 0.880987,
		0.424168, 0.774173, -0.469828,
		-0.889526, 0.453453, -0.055887,
		35.417271, 35.384342, 39.933155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178192, 35.615860, 40.323555>,  <36.039940, 35.066925, 39.972275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178192, 35.615860, 40.323555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779575, 35.634121, 40.295780>,  <35.540405, 35.645077, 40.279118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779575, 35.634121, 40.295780>,  <36.178192, 35.615860, 40.323555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779575, 35.634121, 40.295780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039609, 0.473576, 0.879862,
		0.073048, 0.879569, -0.470130,
		-0.996542, 0.045651, -0.069433,
		35.480614, 35.647816, 40.274952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067932, 36.293514, 40.470093>,  <36.178192, 35.615860, 40.323555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067932, 36.293514, 40.470093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730698, 36.086369, 40.528088>,  <35.528358, 35.962082, 40.562885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730698, 36.086369, 40.528088>,  <36.067932, 36.293514, 40.470093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730698, 36.086369, 40.528088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100709, 0.416869, 0.903370,
		-0.528264, 0.747018, -0.403610,
		-0.843086, -0.517865, 0.144986,
		35.477772, 35.931007, 40.571583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564510, 36.754021, 40.778542>,  <36.067932, 36.293514, 40.470093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564510, 36.754021, 40.778542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428284, 36.392582, 40.882492>,  <35.346550, 36.175720, 40.944862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428284, 36.392582, 40.882492>,  <35.564510, 36.754021, 40.778542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428284, 36.392582, 40.882492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214784, 0.194321, 0.957135,
		-0.915360, 0.381783, 0.127898,
		-0.340565, -0.903593, 0.259875,
		35.326115, 36.121506, 40.960453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038422, 36.864674, 41.315536>,  <35.564510, 36.754021, 40.778542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038422, 36.864674, 41.315536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151550, 36.481712, 41.338840>,  <35.219425, 36.251934, 41.352825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151550, 36.481712, 41.338840>,  <35.038422, 36.864674, 41.315536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151550, 36.481712, 41.338840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108446, 0.092270, 0.989811,
		-0.953024, -0.273617, 0.129922,
		0.282817, -0.957403, 0.058262,
		35.236397, 36.194492, 41.356319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476528, 36.612610, 41.750969>,  <35.038422, 36.864674, 41.315536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476528, 36.612610, 41.750969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775047, 36.346771, 41.765667>,  <34.954159, 36.187267, 41.774487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775047, 36.346771, 41.765667>,  <34.476528, 36.612610, 41.750969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775047, 36.346771, 41.765667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132153, -0.093845, 0.986777,
		-0.652364, -0.741282, -0.157865,
		0.746295, -0.664600, 0.036742,
		34.998936, 36.147392, 41.776688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246529, 36.027901, 42.128853>,  <34.476528, 36.612610, 41.750969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246529, 36.027901, 42.128853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644932, 36.049183, 42.157536>,  <34.883972, 36.061951, 42.174744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644932, 36.049183, 42.157536>,  <34.246529, 36.027901, 42.128853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644932, 36.049183, 42.157536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066671, -0.090976, 0.993619,
		0.059387, -0.994431, -0.087066,
		0.996006, 0.053204, 0.071702,
		34.943733, 36.065144, 42.179047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466171, 35.504269, 42.606010>,  <34.246529, 36.027901, 42.128853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466171, 35.504269, 42.606010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787907, 35.740059, 42.576195>,  <34.980949, 35.881535, 42.558308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787907, 35.740059, 42.576195>,  <34.466171, 35.504269, 42.606010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787907, 35.740059, 42.576195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099353, -0.009752, 0.995004,
		0.585805, -0.807727, -0.066410,
		0.804339, 0.589476, -0.074537,
		35.029209, 35.916901, 42.553833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967812, 35.192661, 42.948517>,  <34.466171, 35.504269, 42.606010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967812, 35.192661, 42.948517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039932, 35.586071, 42.953758>,  <35.083206, 35.822117, 42.956905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039932, 35.586071, 42.953758>,  <34.967812, 35.192661, 42.948517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039932, 35.586071, 42.953758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130984, 0.010800, 0.991326,
		0.974851, -0.180454, 0.130773,
		0.180301, 0.983524, 0.013108,
		35.094021, 35.881126, 42.957691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404560, 35.273991, 43.510265>,  <34.967812, 35.192661, 42.948517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404560, 35.273991, 43.510265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302593, 35.654415, 43.440407>,  <35.241413, 35.882671, 43.398491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302593, 35.654415, 43.440407>,  <35.404560, 35.273991, 43.510265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302593, 35.654415, 43.440407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257425, 0.107351, 0.960317,
		0.932068, 0.289758, 0.217462,
		-0.254915, 0.951060, -0.174650,
		35.226120, 35.939732, 43.388012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799084, 35.665684, 43.907520>,  <35.404560, 35.273991, 43.510265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799084, 35.665684, 43.907520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468788, 35.871990, 43.816181>,  <35.270611, 35.995773, 43.761375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468788, 35.871990, 43.816181>,  <35.799084, 35.665684, 43.907520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468788, 35.871990, 43.816181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091830, 0.276514, 0.956612,
		0.556530, 0.810880, -0.180966,
		-0.825737, 0.515765, -0.228351,
		35.221066, 36.026718, 43.747677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879040, 36.260181, 44.239723>,  <35.799084, 35.665684, 43.907520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879040, 36.260181, 44.239723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483353, 36.249069, 44.182201>,  <35.245941, 36.242401, 44.147690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483353, 36.249069, 44.182201>,  <35.879040, 36.260181, 44.239723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483353, 36.249069, 44.182201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142853, 0.399576, 0.905501,
		0.032304, 0.916279, -0.399235,
		-0.989217, -0.027781, -0.143801,
		35.186588, 36.240734, 44.139061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288891, 36.872780, 44.445492>,  <35.879040, 36.260181, 44.239723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288891, 36.872780, 44.445492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658405, 36.870487, 44.598637>,  <36.880116, 36.869110, 44.690521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658405, 36.870487, 44.598637>,  <36.288891, 36.872780, 44.445492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658405, 36.870487, 44.598637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357178, -0.347393, -0.867031,
		0.137974, 0.937702, -0.318870,
		0.923790, -0.005734, 0.382858,
		36.935543, 36.868767, 44.713493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863609, 37.241165, 43.931950>,  <36.288891, 36.872780, 44.445492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863609, 37.241165, 43.931950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053051, 37.001499, 44.190159>,  <37.166714, 36.857700, 44.345085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053051, 37.001499, 44.190159>,  <36.863609, 37.241165, 43.931950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053051, 37.001499, 44.190159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514213, -0.406936, -0.754975,
		0.715044, 0.689493, 0.115375,
		0.473600, -0.599168, 0.645524,
		37.195129, 36.821747, 44.383816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518776, 37.279163, 43.788914>,  <36.863609, 37.241165, 43.931950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518776, 37.279163, 43.788914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491009, 36.931744, 43.985199>,  <37.474350, 36.723289, 44.102970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491009, 36.931744, 43.985199>,  <37.518776, 37.279163, 43.788914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491009, 36.931744, 43.985199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631381, -0.419091, -0.652473,
		0.772359, 0.264532, 0.577480,
		-0.069417, -0.868554, 0.490709,
		37.470184, 36.671177, 44.132412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197975, 37.078438, 43.740719>,  <37.518776, 37.279163, 43.788914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197975, 37.078438, 43.740719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000610, 36.743534, 43.834988>,  <37.882191, 36.542591, 43.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000610, 36.743534, 43.834988>,  <38.197975, 37.078438, 43.740719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000610, 36.743534, 43.834988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359110, -0.442874, -0.821524,
		0.792205, -0.320712, 0.519186,
		-0.493407, -0.837261, 0.235676,
		37.852589, 36.492355, 43.905689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706200, 36.571121, 43.569538>,  <38.197975, 37.078438, 43.740719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706200, 36.571121, 43.569538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357239, 36.376442, 43.587643>,  <38.147861, 36.259636, 43.598507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357239, 36.376442, 43.587643>,  <38.706200, 36.571121, 43.569538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357239, 36.376442, 43.587643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221995, -0.477018, -0.850395,
		0.435476, -0.731835, 0.524194,
		-0.872399, -0.486695, 0.045266,
		38.095520, 36.230434, 43.601223>
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
