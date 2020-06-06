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
	<24.500656, 34.950245, 34.685608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664913, 34.896023, 35.046272>,  <24.763468, 34.863487, 35.262672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664913, 34.896023, 35.046272>,  <24.500656, 34.950245, 34.685608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664913, 34.896023, 35.046272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870555, -0.235755, -0.431918,
		0.271122, 0.962312, 0.021201,
		0.410642, -0.135559, 0.901664,
		24.788105, 34.855354, 35.316772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068485, 35.187588, 34.291286>,  <24.500656, 34.950245, 34.685608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068485, 35.187588, 34.291286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173147, 35.516724, 34.493069>,  <25.235945, 35.714203, 34.614140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173147, 35.516724, 34.493069>,  <25.068485, 35.187588, 34.291286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173147, 35.516724, 34.493069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340704, -0.410275, 0.845928,
		0.903027, -0.393212, 0.172993,
		0.261654, 0.822836, 0.504459,
		25.251644, 35.763573, 34.644405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648638, 35.083221, 34.809372>,  <25.068485, 35.187588, 34.291286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648638, 35.083221, 34.809372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413431, 35.388012, 34.917908>,  <25.272308, 35.570889, 34.983028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413431, 35.388012, 34.917908>,  <25.648638, 35.083221, 34.809372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413431, 35.388012, 34.917908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021757, -0.350244, 0.936406,
		0.808558, 0.544717, 0.222527,
		-0.588014, 0.761980, 0.271341,
		25.237026, 35.616608, 34.999310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948545, 35.563633, 35.281174>,  <25.648638, 35.083221, 34.809372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948545, 35.563633, 35.281174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556019, 35.490032, 35.303677>,  <25.320503, 35.445869, 35.317177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556019, 35.490032, 35.303677>,  <25.948545, 35.563633, 35.281174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556019, 35.490032, 35.303677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084850, -0.151423, 0.984821,
		-0.172693, 0.971192, 0.164206,
		-0.981314, -0.184004, 0.056256,
		25.261625, 35.434830, 35.320553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849632, 35.975216, 35.849579>,  <25.948545, 35.563633, 35.281174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849632, 35.975216, 35.849579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612610, 35.656868, 35.799835>,  <25.470396, 35.465858, 35.769989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612610, 35.656868, 35.799835>,  <25.849632, 35.975216, 35.849579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612610, 35.656868, 35.799835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019017, -0.140522, 0.989895,
		-0.805306, 0.588931, 0.068132,
		-0.592554, -0.795873, -0.124363,
		25.434843, 35.418106, 35.762527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108980, 36.272594, 35.263603>,  <25.849632, 35.975216, 35.849579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108980, 36.272594, 35.263603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486742, 36.388515, 35.325710>,  <26.713400, 36.458069, 35.362976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486742, 36.388515, 35.325710>,  <26.108980, 36.272594, 35.263603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486742, 36.388515, 35.325710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178099, -0.053962, -0.982532,
		-0.276363, 0.955563, -0.102576,
		0.944407, 0.289804, 0.155272,
		26.770063, 36.475456, 35.372292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429504, 36.784943, 34.771545>,  <26.108980, 36.272594, 35.263603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429504, 36.784943, 34.771545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766165, 36.634098, 34.926159>,  <26.968161, 36.543591, 35.018925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766165, 36.634098, 34.926159>,  <26.429504, 36.784943, 34.771545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766165, 36.634098, 34.926159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434370, 0.047495, -0.899481,
		0.320846, 0.924949, 0.203781,
		0.841653, -0.377111, 0.386532,
		27.018661, 36.520966, 35.042118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022528, 37.176201, 34.519794>,  <26.429504, 36.784943, 34.771545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022528, 37.176201, 34.519794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118454, 36.798626, 34.610546>,  <27.176010, 36.572083, 34.664997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118454, 36.798626, 34.610546>,  <27.022528, 37.176201, 34.519794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118454, 36.798626, 34.610546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226715, -0.172783, -0.958512,
		0.943975, 0.281305, 0.172568,
		0.239818, -0.943935, 0.226879,
		27.190399, 36.515446, 34.678612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641937, 36.977631, 34.223724>,  <27.022528, 37.176201, 34.519794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641937, 36.977631, 34.223724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464222, 36.624283, 34.283405>,  <27.357592, 36.412273, 34.319214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464222, 36.624283, 34.283405>,  <27.641937, 36.977631, 34.223724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464222, 36.624283, 34.283405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227653, -0.272399, -0.934865,
		0.866476, -0.381384, 0.322126,
		-0.444290, -0.883371, 0.149204,
		27.330935, 36.359272, 34.328167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190796, 36.453354, 34.020260>,  <27.641937, 36.977631, 34.223724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190796, 36.453354, 34.020260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836569, 36.267937, 34.032227>,  <27.624033, 36.156685, 34.039406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836569, 36.267937, 34.032227>,  <28.190796, 36.453354, 34.020260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836569, 36.267937, 34.032227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218478, -0.472496, -0.853823,
		0.409924, -0.749581, 0.519702,
		-0.885568, -0.463546, 0.029920,
		27.570898, 36.128872, 34.041203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373882, 35.800053, 33.785034>,  <28.190796, 36.453354, 34.020260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373882, 35.800053, 33.785034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977104, 35.801247, 33.734386>,  <27.739037, 35.801964, 33.703999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977104, 35.801247, 33.734386>,  <28.373882, 35.800053, 33.785034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977104, 35.801247, 33.734386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110390, -0.469691, -0.875902,
		-0.062082, -0.882826, 0.465580,
		-0.991948, 0.002982, -0.126615,
		27.679520, 35.802143, 33.696404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248241, 35.169449, 33.578949>,  <28.373882, 35.800053, 33.785034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248241, 35.169449, 33.578949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966295, 35.421455, 33.448570>,  <27.797129, 35.572659, 33.370342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966295, 35.421455, 33.448570>,  <28.248241, 35.169449, 33.578949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966295, 35.421455, 33.448570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197677, -0.266842, -0.943249,
		-0.681243, -0.729294, 0.063546,
		-0.704863, 0.630020, -0.325949,
		27.754837, 35.610462, 33.350784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825439, 34.797890, 33.182919>,  <28.248241, 35.169449, 33.578949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825439, 34.797890, 33.182919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736458, 35.169567, 33.064854>,  <27.683069, 35.392574, 32.994015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736458, 35.169567, 33.064854>,  <27.825439, 34.797890, 33.182919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736458, 35.169567, 33.064854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256997, -0.236151, -0.937115,
		-0.940460, -0.284323, -0.186266,
		-0.222456, 0.929190, -0.295161,
		27.669722, 35.448322, 32.976307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404669, 34.740719, 32.450684>,  <27.825439, 34.797890, 33.182919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404669, 34.740719, 32.450684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531494, 35.119461, 32.472359>,  <27.607590, 35.346706, 32.485363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531494, 35.119461, 32.472359>,  <27.404669, 34.740719, 32.450684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531494, 35.119461, 32.472359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311415, -0.049974, -0.948959,
		-0.895818, 0.317756, -0.310710,
		0.317065, 0.946855, 0.054186,
		27.626614, 35.403519, 32.488613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260187, 34.989712, 31.918701>,  <27.404669, 34.740719, 32.450684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260187, 34.989712, 31.918701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530523, 35.273544, 31.998438>,  <27.692726, 35.443844, 32.046280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530523, 35.273544, 31.998438>,  <27.260187, 34.989712, 31.918701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530523, 35.273544, 31.998438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287681, -0.004954, -0.957713,
		-0.678584, 0.704610, -0.207480,
		0.675843, 0.709577, 0.199342,
		27.733276, 35.486416, 32.058239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163773, 35.321205, 31.259504>,  <27.260187, 34.989712, 31.918701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163773, 35.321205, 31.259504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491558, 35.475048, 31.429472>,  <27.688229, 35.567352, 31.531452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491558, 35.475048, 31.429472>,  <27.163773, 35.321205, 31.259504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491558, 35.475048, 31.429472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477022, -0.046730, -0.877648,
		-0.317693, 0.921897, -0.221759,
		0.819464, 0.384606, 0.424919,
		27.737398, 35.590431, 31.556948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413996, 35.937138, 30.835188>,  <27.163773, 35.321205, 31.259504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413996, 35.937138, 30.835188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708349, 35.772766, 31.050449>,  <27.884962, 35.674141, 31.179605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708349, 35.772766, 31.050449>,  <27.413996, 35.937138, 30.835188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708349, 35.772766, 31.050449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576757, -0.035953, -0.816124,
		0.354720, 0.910957, 0.210551,
		0.735884, -0.410932, 0.538154,
		27.929113, 35.649487, 31.211895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023590, 36.352879, 30.647402>,  <27.413996, 35.937138, 30.835188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023590, 36.352879, 30.647402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161394, 36.005100, 30.789040>,  <28.244076, 35.796432, 30.874022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161394, 36.005100, 30.789040>,  <28.023590, 36.352879, 30.647402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161394, 36.005100, 30.789040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553558, -0.116499, -0.824622,
		0.758213, 0.480101, 0.441152,
		0.344508, -0.869443, 0.354095,
		28.264748, 35.744267, 30.895267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768425, 36.447704, 30.612316>,  <28.023590, 36.352879, 30.647402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768425, 36.447704, 30.612316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674675, 36.059288, 30.630817>,  <28.618425, 35.826237, 30.641918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674675, 36.059288, 30.630817>,  <28.768425, 36.447704, 30.612316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674675, 36.059288, 30.630817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554912, -0.172698, -0.813786,
		0.798211, -0.165065, 0.579321,
		-0.234375, -0.971045, 0.046253,
		28.604362, 35.767975, 30.644693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401426, 36.102264, 30.642096>,  <28.768425, 36.447704, 30.612316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401426, 36.102264, 30.642096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137774, 35.829334, 30.515615>,  <28.979582, 35.665577, 30.439728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137774, 35.829334, 30.515615>,  <29.401426, 36.102264, 30.642096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137774, 35.829334, 30.515615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574114, -0.184973, -0.797607,
		0.485736, -0.707264, 0.513652,
		-0.659130, -0.682322, -0.316203,
		28.940035, 35.624638, 30.420755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803671, 35.621620, 30.240330>,  <29.401426, 36.102264, 30.642096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803671, 35.621620, 30.240330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442291, 35.509975, 30.110172>,  <29.225464, 35.442989, 30.032078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442291, 35.509975, 30.110172>,  <29.803671, 35.621620, 30.240330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442291, 35.509975, 30.110172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380785, -0.173777, -0.908187,
		0.196937, -0.944404, 0.263279,
		-0.903448, -0.279109, -0.325392,
		29.171257, 35.426243, 30.012554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921595, 34.977863, 29.855421>,  <29.803671, 35.621620, 30.240330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921595, 34.977863, 29.855421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597586, 35.163197, 29.711651>,  <29.403179, 35.274395, 29.625389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597586, 35.163197, 29.711651>,  <29.921595, 34.977863, 29.855421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597586, 35.163197, 29.711651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388588, -0.034911, -0.920750,
		-0.439160, -0.885497, -0.151767,
		-0.810023, 0.463331, -0.359425,
		29.354578, 35.302197, 29.603823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713720, 34.603069, 29.214634>,  <29.921595, 34.977863, 29.855421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713720, 34.603069, 29.214634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559572, 34.969837, 29.173155>,  <29.467083, 35.189896, 29.148268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559572, 34.969837, 29.173155>,  <29.713720, 34.603069, 29.214634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559572, 34.969837, 29.173155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228024, -0.014265, -0.973551,
		-0.894145, -0.398822, -0.203582,
		-0.385369, 0.916918, -0.103696,
		29.443962, 35.244911, 29.142046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382017, 34.722424, 28.522745>,  <29.713720, 34.603069, 29.214634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382017, 34.722424, 28.522745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453989, 35.086987, 28.670782>,  <29.497171, 35.305725, 28.759605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453989, 35.086987, 28.670782>,  <29.382017, 34.722424, 28.522745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453989, 35.086987, 28.670782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456477, 0.255911, -0.852137,
		-0.871352, 0.322263, -0.369990,
		0.179928, 0.911403, 0.370094,
		29.507967, 35.360409, 28.781811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250349, 35.201149, 27.949886>,  <29.382017, 34.722424, 28.522745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250349, 35.201149, 27.949886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456245, 35.435459, 28.200296>,  <29.579782, 35.576046, 28.350542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456245, 35.435459, 28.200296>,  <29.250349, 35.201149, 27.949886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456245, 35.435459, 28.200296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370376, 0.506608, -0.778569,
		-0.773216, 0.632627, 0.043815,
		0.514741, 0.585774, 0.626027,
		29.610668, 35.611191, 28.388105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224119, 35.773701, 27.615986>,  <29.250349, 35.201149, 27.949886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224119, 35.773701, 27.615986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556980, 35.776455, 27.837788>,  <29.756697, 35.778107, 27.970869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556980, 35.776455, 27.837788>,  <29.224119, 35.773701, 27.615986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556980, 35.776455, 27.837788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477010, 0.501069, -0.722075,
		-0.282819, 0.865380, 0.413680,
		0.832151, 0.006887, 0.554506,
		29.806625, 35.778522, 28.004139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493279, 36.404697, 27.631655>,  <29.224119, 35.773701, 27.615986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493279, 36.404697, 27.631655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786072, 36.134872, 27.669952>,  <29.961748, 35.972977, 27.692930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786072, 36.134872, 27.669952>,  <29.493279, 36.404697, 27.631655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786072, 36.134872, 27.669952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511017, 0.450624, -0.731983,
		0.450624, 0.584726, 0.674562,
		0.731983, -0.674562, 0.095743,
		30.005667, 35.932503, 27.698675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119072, 36.764221, 27.810757>,  <29.493279, 36.404697, 27.631655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119072, 36.764221, 27.810757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151024, 36.434074, 27.587189>,  <30.170195, 36.235989, 27.453047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151024, 36.434074, 27.587189>,  <30.119072, 36.764221, 27.810757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151024, 36.434074, 27.587189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367019, 0.545676, -0.753349,
		0.926777, -0.144957, 0.346513,
		0.079881, -0.825364, -0.558922,
		30.174988, 36.186466, 27.419512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846895, 36.734612, 27.470846>,  <30.119072, 36.764221, 27.810757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846895, 36.734612, 27.470846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574636, 36.535435, 27.255898>,  <30.411282, 36.415928, 27.126928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574636, 36.535435, 27.255898>,  <30.846895, 36.734612, 27.470846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574636, 36.535435, 27.255898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362804, 0.408143, -0.837731,
		0.636470, -0.765159, -0.097144,
		-0.680646, -0.497947, -0.537374,
		30.370441, 36.386051, 27.094685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044231, 36.170376, 26.971041>,  <30.846895, 36.734612, 27.470846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044231, 36.170376, 26.971041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738739, 36.404934, 26.863075>,  <30.555443, 36.545670, 26.798296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738739, 36.404934, 26.863075>,  <31.044231, 36.170376, 26.971041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738739, 36.404934, 26.863075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575285, 0.428584, -0.696680,
		-0.292853, -0.687352, -0.664669,
		-0.763731, 0.586398, -0.269911,
		30.509621, 36.580853, 26.782103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917145, 36.149075, 26.249689>,  <31.044231, 36.170376, 26.971041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917145, 36.149075, 26.249689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838593, 36.516304, 26.387428>,  <30.791462, 36.736641, 26.470072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838593, 36.516304, 26.387428>,  <30.917145, 36.149075, 26.249689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838593, 36.516304, 26.387428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363040, 0.394309, -0.844229,
		-0.910844, -0.040777, -0.410732,
		-0.196380, 0.918073, 0.344350,
		30.779678, 36.791725, 26.490734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725439, 35.565666, 25.749380>,  <30.917145, 36.149075, 26.249689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725439, 35.565666, 25.749380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110739, 35.671051, 25.770304>,  <31.341919, 35.734283, 25.782858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110739, 35.671051, 25.770304>,  <30.725439, 35.565666, 25.749380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110739, 35.671051, 25.770304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009973, -0.229687, 0.973213,
		0.268423, -0.936926, -0.223874,
		0.963250, 0.263465, 0.052309,
		31.399714, 35.750092, 25.785997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086426, 34.948601, 26.039938>,  <30.725439, 35.565666, 25.749380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086426, 34.948601, 26.039938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256170, 35.304035, 26.109612>,  <31.358017, 35.517296, 26.151415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256170, 35.304035, 26.109612>,  <31.086426, 34.948601, 26.039938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256170, 35.304035, 26.109612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191506, -0.276086, 0.941861,
		0.885011, -0.366331, -0.287328,
		0.424360, 0.888582, 0.174184,
		31.383478, 35.570610, 26.161867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778833, 34.820953, 26.309574>,  <31.086426, 34.948601, 26.039938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778833, 34.820953, 26.309574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653805, 35.171680, 26.455723>,  <31.578787, 35.382114, 26.543411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653805, 35.171680, 26.455723>,  <31.778833, 34.820953, 26.309574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653805, 35.171680, 26.455723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202743, -0.314197, 0.927456,
		0.928005, 0.363973, -0.079559,
		-0.312572, 0.876815, 0.365370,
		31.560034, 35.434727, 26.565334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216869, 34.963482, 26.841658>,  <31.778833, 34.820953, 26.309574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216869, 34.963482, 26.841658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894684, 35.188023, 26.917667>,  <31.701372, 35.322746, 26.963274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894684, 35.188023, 26.917667>,  <32.216869, 34.963482, 26.841658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894684, 35.188023, 26.917667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083677, -0.209707, 0.974177,
		0.586708, 0.800565, 0.121939,
		-0.805464, 0.561354, 0.190026,
		31.653044, 35.356430, 26.974674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333508, 35.472160, 27.357950>,  <32.216869, 34.963482, 26.841658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333508, 35.472160, 27.357950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936373, 35.424686, 27.363377>,  <31.698092, 35.396202, 27.366632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936373, 35.424686, 27.363377>,  <32.333508, 35.472160, 27.357950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936373, 35.424686, 27.363377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023616, -0.083669, 0.996214,
		-0.117105, 0.989400, 0.085873,
		-0.992839, -0.118689, 0.013567,
		31.638521, 35.389080, 27.367447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233929, 35.838589, 27.907690>,  <32.333508, 35.472160, 27.357950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233929, 35.838589, 27.907690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887976, 35.649319, 27.840662>,  <31.680403, 35.535755, 27.800446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887976, 35.649319, 27.840662>,  <32.233929, 35.838589, 27.907690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887976, 35.649319, 27.840662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218411, 0.054160, 0.974353,
		-0.451962, 0.879303, -0.150189,
		-0.864885, -0.473174, -0.167571,
		31.628510, 35.507366, 27.790390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776566, 36.163506, 28.351536>,  <32.233929, 35.838589, 27.907690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776566, 36.163506, 28.351536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600050, 35.815746, 28.262613>,  <31.494141, 35.607090, 28.209261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600050, 35.815746, 28.262613>,  <31.776566, 36.163506, 28.351536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600050, 35.815746, 28.262613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182981, -0.155347, 0.970765,
		-0.878512, 0.469064, -0.090530,
		-0.441288, -0.869394, -0.222304,
		31.467663, 35.554928, 28.195923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240667, 36.228138, 28.730234>,  <31.776566, 36.163506, 28.351536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240667, 36.228138, 28.730234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323435, 35.842548, 28.663368>,  <31.373095, 35.611195, 28.623249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323435, 35.842548, 28.663368>,  <31.240667, 36.228138, 28.730234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323435, 35.842548, 28.663368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003820, -0.171657, 0.985149,
		-0.978351, -0.203207, -0.039201,
		0.206919, -0.963971, -0.167164,
		31.385511, 35.553356, 28.613218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684893, 35.774998, 29.139778>,  <31.240667, 36.228138, 28.730234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684893, 35.774998, 29.139778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994781, 35.534157, 29.062548>,  <31.180714, 35.389652, 29.016211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994781, 35.534157, 29.062548>,  <30.684893, 35.774998, 29.139778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994781, 35.534157, 29.062548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049585, -0.246560, 0.967858,
		-0.630357, -0.759393, -0.161160,
		0.774720, -0.602105, -0.193075,
		31.227198, 35.353527, 29.004625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592970, 35.178326, 29.529417>,  <30.684893, 35.774998, 29.139778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592970, 35.178326, 29.529417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986746, 35.163815, 29.460642>,  <31.223011, 35.155109, 29.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986746, 35.163815, 29.460642>,  <30.592970, 35.178326, 29.529417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986746, 35.163815, 29.460642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142427, -0.408376, 0.901634,
		-0.102922, -0.912093, -0.396856,
		0.984440, -0.036275, -0.171938,
		31.282078, 35.152931, 29.409060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716013, 34.581184, 29.823547>,  <30.592970, 35.178326, 29.529417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716013, 34.581184, 29.823547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055708, 34.791885, 29.808973>,  <31.259525, 34.918304, 29.800230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055708, 34.791885, 29.808973>,  <30.716013, 34.581184, 29.823547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055708, 34.791885, 29.808973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212686, -0.278107, 0.936708,
		0.483281, -0.803236, -0.348211,
		0.849238, 0.526752, -0.036434,
		31.310480, 34.949909, 29.798042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253231, 34.152870, 30.143665>,  <30.716013, 34.581184, 29.823547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253231, 34.152870, 30.143665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390551, 34.527996, 30.164276>,  <31.472942, 34.753071, 30.176643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390551, 34.527996, 30.164276>,  <31.253231, 34.152870, 30.143665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390551, 34.527996, 30.164276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048268, -0.072405, 0.996207,
		0.937986, -0.339508, -0.070123,
		0.343298, 0.937812, 0.051527,
		31.493540, 34.809341, 30.179733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681005, 34.187103, 30.725260>,  <31.253231, 34.152870, 30.143665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681005, 34.187103, 30.725260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610952, 34.579742, 30.694830>,  <31.568920, 34.815327, 30.676573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610952, 34.579742, 30.694830>,  <31.681005, 34.187103, 30.725260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610952, 34.579742, 30.694830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003537, 0.076640, 0.997053,
		0.984538, 0.174887, -0.009950,
		-0.175134, 0.981601, -0.076073,
		31.558413, 34.874222, 30.672009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189156, 34.462463, 31.180645>,  <31.681005, 34.187103, 30.725260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189156, 34.462463, 31.180645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910713, 34.738392, 31.101070>,  <31.743647, 34.903950, 31.053326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910713, 34.738392, 31.101070>,  <32.189156, 34.462463, 31.180645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910713, 34.738392, 31.101070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064160, 0.216211, 0.974236,
		0.715063, 0.690938, -0.106247,
		-0.696109, 0.689824, -0.198936,
		31.701881, 34.945339, 31.041389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490135, 35.084675, 31.370453>,  <32.189156, 34.462463, 31.180645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490135, 35.084675, 31.370453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098984, 35.165489, 31.392111>,  <31.864292, 35.213978, 31.405106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098984, 35.165489, 31.392111>,  <32.490135, 35.084675, 31.370453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098984, 35.165489, 31.392111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095709, 0.202034, 0.974691,
		0.185979, 0.958314, -0.216902,
		-0.977881, 0.202032, 0.054145,
		31.805620, 35.226097, 31.408354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461491, 35.388756, 31.976084>,  <32.490135, 35.084675, 31.370453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461491, 35.388756, 31.976084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064808, 35.363808, 31.931124>,  <31.826799, 35.348839, 31.904148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064808, 35.363808, 31.931124>,  <32.461491, 35.388756, 31.976084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064808, 35.363808, 31.931124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122518, 0.194012, 0.973318,
		-0.038895, 0.979015, -0.200043,
		-0.991704, -0.062366, -0.112401,
		31.767296, 35.345097, 31.897404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198833, 35.957737, 32.321640>,  <32.461491, 35.388756, 31.976084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198833, 35.957737, 32.321640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883516, 35.712704, 32.298546>,  <31.694326, 35.565685, 32.284687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883516, 35.712704, 32.298546>,  <32.198833, 35.957737, 32.321640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883516, 35.712704, 32.298546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266497, 0.255339, 0.929398,
		-0.554591, 0.748026, -0.364534,
		-0.788294, -0.612583, -0.057738,
		31.647028, 35.528927, 32.281223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671469, 36.380398, 32.384674>,  <32.198833, 35.957737, 32.321640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671469, 36.380398, 32.384674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522852, 36.020790, 32.477383>,  <31.433681, 35.805023, 32.533009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522852, 36.020790, 32.477383>,  <31.671469, 36.380398, 32.384674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522852, 36.020790, 32.477383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401806, 0.380755, 0.832813,
		-0.836963, 0.216300, -0.502699,
		-0.371543, -0.899022, 0.231767,
		31.411388, 35.751083, 32.546913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998402, 36.438213, 32.535213>,  <31.671469, 36.380398, 32.384674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998402, 36.438213, 32.535213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110142, 36.105831, 32.727665>,  <31.177185, 35.906403, 32.843136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110142, 36.105831, 32.727665>,  <30.998402, 36.438213, 32.535213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110142, 36.105831, 32.727665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518190, 0.291373, 0.804102,
		-0.808358, -0.473940, -0.349197,
		0.279349, -0.830953, 0.481125,
		31.193947, 35.856544, 32.872002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415531, 36.138908, 32.713547>,  <30.998402, 36.438213, 32.535213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415531, 36.138908, 32.713547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681820, 35.969078, 32.959003>,  <30.841593, 35.867180, 33.106277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681820, 35.969078, 32.959003>,  <30.415531, 36.138908, 32.713547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681820, 35.969078, 32.959003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618670, 0.145738, 0.772016,
		-0.417208, -0.893587, -0.165650,
		0.665721, -0.424574, 0.613638,
		30.881536, 35.841705, 33.143093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979946, 35.676105, 32.974827>,  <30.415531, 36.138908, 32.713547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979946, 35.676105, 32.974827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296764, 35.712231, 33.216324>,  <30.486856, 35.733906, 33.361221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296764, 35.712231, 33.216324>,  <29.979946, 35.676105, 32.974827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296764, 35.712231, 33.216324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595038, -0.106686, 0.796585,
		0.136353, -0.990183, -0.030761,
		0.792046, 0.090313, 0.603743,
		30.534378, 35.739323, 33.397446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858881, 35.158234, 33.610661>,  <29.979946, 35.676105, 32.974827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858881, 35.158234, 33.610661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135674, 35.415585, 33.741642>,  <30.301750, 35.569996, 33.820232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135674, 35.415585, 33.741642>,  <29.858881, 35.158234, 33.610661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135674, 35.415585, 33.741642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412398, -0.019998, 0.910784,
		0.592527, -0.765288, 0.251489,
		0.691982, 0.643378, 0.327453,
		30.343267, 35.608597, 33.839878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201317, 34.840324, 34.152176>,  <29.858881, 35.158234, 33.610661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201317, 34.840324, 34.152176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259844, 35.230145, 34.220116>,  <30.294960, 35.464035, 34.260880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259844, 35.230145, 34.220116>,  <30.201317, 34.840324, 34.152176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259844, 35.230145, 34.220116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471949, -0.082131, 0.877792,
		0.869400, -0.208597, 0.447920,
		0.146317, 0.974547, 0.169852,
		30.303740, 35.522507, 34.271072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306051, 34.868160, 34.858662>,  <30.201317, 34.840324, 34.152176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306051, 34.868160, 34.858662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177982, 35.218830, 34.715027>,  <30.101141, 35.429230, 34.628845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177982, 35.218830, 34.715027>,  <30.306051, 34.868160, 34.858662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177982, 35.218830, 34.715027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563979, 0.128170, 0.815782,
		0.761195, 0.463705, 0.453387,
		-0.320171, 0.876670, -0.359082,
		30.081930, 35.481831, 34.607304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317619, 35.333225, 35.501270>,  <30.306051, 34.868160, 34.858662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317619, 35.333225, 35.501270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089268, 35.540588, 35.246601>,  <29.952257, 35.665005, 35.093800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089268, 35.540588, 35.246601>,  <30.317619, 35.333225, 35.501270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089268, 35.540588, 35.246601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567878, 0.310737, 0.762205,
		0.592969, 0.796680, 0.116997,
		-0.570879, 0.518404, -0.636675,
		29.918005, 35.696110, 35.055599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307545, 35.992435, 35.750492>,  <30.317619, 35.333225, 35.501270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307545, 35.992435, 35.750492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989128, 36.000000, 35.508514>,  <29.798079, 36.004539, 35.363327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989128, 36.000000, 35.508514>,  <30.307545, 35.992435, 35.750492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989128, 36.000000, 35.508514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550828, 0.391549, 0.737074,
		0.250804, 0.919963, -0.301273,
		-0.796044, 0.018911, -0.604944,
		29.750315, 36.005672, 35.327030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029936, 36.639965, 35.828831>,  <30.307545, 35.992435, 35.750492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029936, 36.639965, 35.828831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723644, 36.413048, 35.707615>,  <29.539869, 36.276897, 35.634888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723644, 36.413048, 35.707615>,  <30.029936, 36.639965, 35.828831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723644, 36.413048, 35.707615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542832, 0.317345, 0.777577,
		-0.344950, 0.759912, -0.550948,
		-0.765730, -0.567297, -0.303037,
		29.493925, 36.242859, 35.616703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537184, 37.100750, 35.779064>,  <30.029936, 36.639965, 35.828831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537184, 37.100750, 35.779064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384161, 36.734039, 35.824982>,  <29.292347, 36.514015, 35.852531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384161, 36.734039, 35.824982>,  <29.537184, 37.100750, 35.779064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384161, 36.734039, 35.824982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596568, 0.339970, 0.726999,
		-0.705518, 0.209638, -0.676975,
		-0.382558, -0.916773, 0.114792,
		29.269394, 36.459007, 35.859421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101416, 37.562397, 35.691414>,  <29.537184, 37.100750, 35.779064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101416, 37.562397, 35.691414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984331, 37.459972, 35.322903>,  <29.914080, 37.398518, 35.101795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984331, 37.459972, 35.322903>,  <30.101416, 37.562397, 35.691414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984331, 37.459972, 35.322903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446451, 0.888610, -0.105137,
		0.845578, 0.380531, -0.374425,
		-0.292710, -0.256064, -0.921277,
		29.896519, 37.383152, 35.046520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283245, 38.170532, 35.430225>,  <30.101416, 37.562397, 35.691414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283245, 38.170532, 35.430225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969870, 37.999123, 35.250183>,  <29.781845, 37.896278, 35.142159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969870, 37.999123, 35.250183>,  <30.283245, 38.170532, 35.430225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969870, 37.999123, 35.250183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543549, 0.823601, 0.161974,
		0.301301, 0.371553, -0.878161,
		-0.783436, -0.428520, -0.450109,
		29.734838, 37.870567, 35.115150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964554, 38.165558, 35.015568>,  <30.283245, 38.170532, 35.430225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964554, 38.165558, 35.015568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971012, 37.936733, 35.343586>,  <30.974888, 37.799438, 35.540398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971012, 37.936733, 35.343586>,  <30.964554, 38.165558, 35.015568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971012, 37.936733, 35.343586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303261, -0.778721, -0.549205,
		0.952771, 0.257558, 0.160910,
		0.016148, -0.572064, 0.820050,
		30.975857, 37.765114, 35.589600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688166, 37.756584, 34.990494>,  <30.964554, 38.165558, 35.015568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688166, 37.756584, 34.990494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368067, 37.608341, 35.179070>,  <31.176008, 37.519398, 35.292217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368067, 37.608341, 35.179070>,  <31.688166, 37.756584, 34.990494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368067, 37.608341, 35.179070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143832, -0.881843, -0.449072,
		0.582167, -0.291559, 0.758996,
		-0.800246, -0.370603, 0.471444,
		31.127993, 37.497162, 35.320503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465139, 37.136696, 34.479214>,  <31.688166, 37.756584, 34.990494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465139, 37.136696, 34.479214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779003, 36.898987, 34.549812>,  <31.967321, 36.756363, 34.592171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779003, 36.898987, 34.549812>,  <31.465139, 37.136696, 34.479214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779003, 36.898987, 34.549812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045345, 0.338961, 0.939707,
		-0.618268, -0.729346, 0.292916,
		0.784658, -0.594273, 0.176497,
		32.014400, 36.720703, 34.602760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366915, 36.827469, 35.103039>,  <31.465139, 37.136696, 34.479214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366915, 36.827469, 35.103039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761211, 36.787582, 35.048824>,  <31.997789, 36.763653, 35.016296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761211, 36.787582, 35.048824>,  <31.366915, 36.827469, 35.103039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761211, 36.787582, 35.048824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157827, 0.268597, 0.950235,
		-0.058345, -0.958078, 0.280504,
		0.985741, -0.099712, -0.135539,
		32.056934, 36.757668, 35.008163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624529, 36.724522, 35.713436>,  <31.366915, 36.827469, 35.103039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624529, 36.724522, 35.713436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968140, 36.788967, 35.519070>,  <32.174305, 36.827633, 35.402451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968140, 36.788967, 35.519070>,  <31.624529, 36.724522, 35.713436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968140, 36.788967, 35.519070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446859, 0.227141, 0.865288,
		0.249779, -0.960443, 0.123126,
		0.859027, 0.161111, -0.485918,
		32.225849, 36.837299, 35.373295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225372, 36.301998, 35.955631>,  <31.624529, 36.724522, 35.713436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225372, 36.301998, 35.955631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355366, 36.653465, 35.815727>,  <32.433361, 36.864346, 35.731785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355366, 36.653465, 35.815727>,  <32.225372, 36.301998, 35.955631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355366, 36.653465, 35.815727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382806, 0.215968, 0.898230,
		0.864781, -0.425802, -0.266172,
		0.324983, 0.878664, -0.349764,
		32.452862, 36.917065, 35.710796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919437, 36.347900, 36.205578>,  <32.225372, 36.301998, 35.955631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919437, 36.347900, 36.205578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813480, 36.721416, 36.109352>,  <32.749905, 36.945526, 36.051617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813480, 36.721416, 36.109352>,  <32.919437, 36.347900, 36.205578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813480, 36.721416, 36.109352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480897, 0.344168, 0.806404,
		0.835805, 0.097924, -0.540223,
		-0.264894, 0.933788, -0.240566,
		32.734013, 37.001553, 36.037182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447170, 36.858891, 36.380394>,  <32.919437, 36.347900, 36.205578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447170, 36.858891, 36.380394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172096, 37.142017, 36.315792>,  <33.007053, 37.311893, 36.277031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172096, 37.142017, 36.315792>,  <33.447170, 36.858891, 36.380394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172096, 37.142017, 36.315792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349579, 0.517793, 0.780823,
		0.636306, 0.480502, -0.603516,
		-0.687684, 0.707819, -0.161501,
		32.965790, 37.354362, 36.267342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854202, 37.414726, 36.421555>,  <33.447170, 36.858891, 36.380394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854202, 37.414726, 36.421555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477818, 37.506981, 36.520668>,  <33.251987, 37.562332, 36.580135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477818, 37.506981, 36.520668>,  <33.854202, 37.414726, 36.421555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477818, 37.506981, 36.520668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311147, 0.300969, 0.901447,
		0.133333, 0.925324, -0.354962,
		-0.940962, 0.230638, 0.247782,
		33.195530, 37.576172, 36.595001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881279, 38.073200, 36.761837>,  <33.854202, 37.414726, 36.421555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881279, 38.073200, 36.761837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537743, 37.909866, 36.885544>,  <33.331619, 37.811867, 36.959766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537743, 37.909866, 36.885544>,  <33.881279, 38.073200, 36.761837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537743, 37.909866, 36.885544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211590, 0.267027, 0.940173,
		-0.466491, 0.872901, -0.142934,
		-0.858846, -0.408339, 0.309263,
		33.280090, 37.787365, 36.978321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574257, 38.554745, 37.270016>,  <33.881279, 38.073200, 36.761837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574257, 38.554745, 37.270016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370533, 38.215672, 37.329388>,  <33.248299, 38.012226, 37.365009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370533, 38.215672, 37.329388>,  <33.574257, 38.554745, 37.270016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370533, 38.215672, 37.329388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022585, 0.185581, 0.982369,
		-0.860285, 0.496981, -0.113664,
		-0.509313, -0.847685, 0.148428,
		33.217739, 37.961365, 37.373917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939484, 38.651722, 37.588024>,  <33.574257, 38.554745, 37.270016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939484, 38.651722, 37.588024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028782, 38.272785, 37.679859>,  <33.082359, 38.045422, 37.734959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028782, 38.272785, 37.679859>,  <32.939484, 38.651722, 37.588024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028782, 38.272785, 37.679859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145317, 0.200552, 0.968845,
		-0.963870, -0.249649, -0.092894,
		0.223241, -0.947341, 0.229585,
		33.095753, 37.988583, 37.748734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645611, 38.608459, 38.181168>,  <32.939484, 38.651722, 37.588024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645611, 38.608459, 38.181168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834549, 38.255898, 38.179546>,  <32.947910, 38.044361, 38.178574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834549, 38.255898, 38.179546>,  <32.645611, 38.608459, 38.181168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834549, 38.255898, 38.179546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006194, -0.001278, 0.999980,
		-0.881394, -0.472357, 0.004856,
		0.472341, -0.881407, -0.004052,
		32.976250, 37.991474, 38.178329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350636, 38.293011, 38.837639>,  <32.645611, 38.608459, 38.181168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350636, 38.293011, 38.837639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704212, 38.141834, 38.727505>,  <32.916359, 38.051128, 38.661423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704212, 38.141834, 38.727505>,  <32.350636, 38.293011, 38.837639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704212, 38.141834, 38.727505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343207, 0.124460, 0.930977,
		-0.317587, -0.917425, 0.239727,
		0.883939, -0.377943, -0.275340,
		32.969395, 38.028450, 38.644901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536880, 37.900650, 39.317986>,  <32.350636, 38.293011, 38.837639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536880, 37.900650, 39.317986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898590, 37.926102, 39.149113>,  <33.115616, 37.941372, 39.047791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898590, 37.926102, 39.149113>,  <32.536880, 37.900650, 39.317986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898590, 37.926102, 39.149113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424776, -0.034406, 0.904644,
		0.043041, -0.997380, -0.058142,
		0.904275, 0.063634, -0.422182,
		33.169872, 37.945190, 39.022457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887356, 37.547771, 39.763199>,  <32.536880, 37.900650, 39.317986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887356, 37.547771, 39.763199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158241, 37.748566, 39.548023>,  <33.320774, 37.869041, 39.418919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158241, 37.748566, 39.548023>,  <32.887356, 37.547771, 39.763199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158241, 37.748566, 39.548023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622630, -0.001408, 0.782515,
		0.392057, -0.864873, -0.313507,
		0.677217, 0.501989, -0.537943,
		33.361408, 37.899162, 39.386639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602257, 37.170307, 39.783619>,  <32.887356, 37.547771, 39.763199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602257, 37.170307, 39.783619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672863, 37.557583, 39.712673>,  <33.715229, 37.789948, 39.670105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672863, 37.557583, 39.712673>,  <33.602257, 37.170307, 39.783619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672863, 37.557583, 39.712673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532038, 0.057752, 0.844749,
		0.828117, -0.243477, -0.504917,
		0.176517, 0.968186, -0.177364,
		33.725819, 37.848038, 39.659466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294434, 37.287285, 39.954769>,  <33.602257, 37.170307, 39.783619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294434, 37.287285, 39.954769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133987, 37.653259, 39.972683>,  <34.037720, 37.872845, 39.983433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133987, 37.653259, 39.972683>,  <34.294434, 37.287285, 39.954769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133987, 37.653259, 39.972683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448472, 0.153510, 0.880515,
		0.798738, 0.373271, -0.471897,
		-0.401111, 0.914934, 0.044788,
		34.013653, 37.927738, 39.986118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901192, 37.743240, 40.200981>,  <34.294434, 37.287285, 39.954769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901192, 37.743240, 40.200981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555088, 37.917397, 40.300385>,  <34.347424, 38.021889, 40.360027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555088, 37.917397, 40.300385>,  <34.901192, 37.743240, 40.200981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555088, 37.917397, 40.300385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444564, 0.437291, 0.781754,
		0.231697, 0.786901, -0.571930,
		-0.865263, 0.435389, 0.248509,
		34.295509, 38.048012, 40.374939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109772, 38.399117, 40.573589>,  <34.901192, 37.743240, 40.200981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109772, 38.399117, 40.573589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730213, 38.313564, 40.666405>,  <34.502476, 38.262234, 40.722095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730213, 38.313564, 40.666405>,  <35.109772, 38.399117, 40.573589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730213, 38.313564, 40.666405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188502, 0.205554, 0.960320,
		-0.253088, 0.954989, -0.154734,
		-0.948901, -0.213878, 0.232040,
		34.445541, 38.249401, 40.736015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733379, 38.965820, 40.898891>,  <35.109772, 38.399117, 40.573589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733379, 38.965820, 40.898891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447647, 38.732685, 41.053825>,  <34.276207, 38.592804, 41.146786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447647, 38.732685, 41.053825>,  <34.733379, 38.965820, 40.898891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447647, 38.732685, 41.053825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427961, 0.074099, 0.900755,
		-0.553693, 0.809205, 0.196500,
		-0.714334, -0.582835, 0.387336,
		34.233345, 38.557835, 41.170025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464279, 39.279911, 41.571781>,  <34.733379, 38.965820, 40.898891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464279, 39.279911, 41.571781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361778, 38.893272, 41.573715>,  <34.300278, 38.661289, 41.574875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361778, 38.893272, 41.573715>,  <34.464279, 39.279911, 41.571781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361778, 38.893272, 41.573715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262783, -0.064854, 0.962673,
		-0.930204, 0.247957, 0.270625,
		-0.256252, -0.966598, 0.004831,
		34.284904, 38.603294, 41.575165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935200, 39.196972, 42.143009>,  <34.464279, 39.279911, 41.571781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935200, 39.196972, 42.143009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083111, 38.831749, 42.074196>,  <34.171856, 38.612617, 42.032909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083111, 38.831749, 42.074196>,  <33.935200, 39.196972, 42.143009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083111, 38.831749, 42.074196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305091, -0.055565, 0.950701,
		-0.877601, -0.404033, 0.258018,
		0.369778, -0.913055, -0.172031,
		34.194046, 38.557831, 42.022587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809021, 38.728611, 42.740589>,  <33.935200, 39.196972, 42.143009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809021, 38.728611, 42.740589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123180, 38.558140, 42.561024>,  <34.311676, 38.455856, 42.453285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123180, 38.558140, 42.561024>,  <33.809021, 38.728611, 42.740589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123180, 38.558140, 42.561024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429480, -0.147061, 0.891022,
		-0.445753, -0.892605, 0.067535,
		0.785398, -0.426181, -0.448909,
		34.358799, 38.430286, 42.426350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894947, 38.060535, 43.122379>,  <33.809021, 38.728611, 42.740589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894947, 38.060535, 43.122379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250507, 38.087891, 42.941189>,  <34.463844, 38.104301, 42.832474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250507, 38.087891, 42.941189>,  <33.894947, 38.060535, 43.122379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250507, 38.087891, 42.941189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455269, -0.241777, 0.856898,
		-0.050917, -0.967919, -0.246050,
		0.888897, 0.068388, -0.452974,
		34.517178, 38.108406, 42.805298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166889, 37.463207, 43.365791>,  <33.894947, 38.060535, 43.122379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166889, 37.463207, 43.365791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461960, 37.702534, 43.240669>,  <34.639004, 37.846130, 43.165596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461960, 37.702534, 43.240669>,  <34.166889, 37.463207, 43.365791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461960, 37.702534, 43.240669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560790, -0.284996, 0.777362,
		0.375963, -0.748860, -0.545767,
		0.737676, 0.598320, -0.312805,
		34.683262, 37.882030, 43.146828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787113, 37.122726, 43.301495>,  <34.166889, 37.463207, 43.365791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787113, 37.122726, 43.301495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888199, 37.504589, 43.364433>,  <34.948853, 37.733707, 43.402199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888199, 37.504589, 43.364433>,  <34.787113, 37.122726, 43.301495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888199, 37.504589, 43.364433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618351, -0.284444, 0.732621,
		0.744161, -0.087849, -0.662199,
		0.252719, 0.954659, 0.157351,
		34.964016, 37.790985, 43.411640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386097, 37.061371, 43.601036>,  <34.787113, 37.122726, 43.301495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386097, 37.061371, 43.601036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319214, 37.441925, 43.704506>,  <35.279083, 37.670258, 43.766586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319214, 37.441925, 43.704506>,  <35.386097, 37.061371, 43.601036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319214, 37.441925, 43.704506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539636, -0.131264, 0.831603,
		0.825128, 0.278635, -0.491453,
		-0.167203, 0.951384, 0.258671,
		35.269054, 37.727341, 43.782108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004967, 37.307194, 43.708973>,  <35.386097, 37.061371, 43.601036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004967, 37.307194, 43.708973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753239, 37.548534, 43.904903>,  <35.602203, 37.693336, 44.022461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753239, 37.548534, 43.904903>,  <36.004967, 37.307194, 43.708973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753239, 37.548534, 43.904903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542425, -0.110346, 0.832826,
		0.556534, 0.789807, -0.257828,
		-0.629321, 0.603348, 0.489822,
		35.564442, 37.729538, 44.051849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466366, 37.832489, 43.980576>,  <36.004967, 37.307194, 43.708973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466366, 37.832489, 43.980576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125492, 37.844421, 44.189533>,  <35.920967, 37.851582, 44.314907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125492, 37.844421, 44.189533>,  <36.466366, 37.832489, 43.980576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125492, 37.844421, 44.189533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513540, -0.143742, 0.845940,
		0.100326, 0.989165, 0.107174,
		-0.852180, 0.029832, 0.522397,
		35.869839, 37.853371, 44.346252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630432, 38.220398, 44.527664>,  <36.466366, 37.832489, 43.980576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630432, 38.220398, 44.527664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297203, 38.048080, 44.666462>,  <36.097267, 37.944691, 44.749741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297203, 38.048080, 44.666462>,  <36.630432, 38.220398, 44.527664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297203, 38.048080, 44.666462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431427, -0.113401, 0.894992,
		-0.346208, 0.895297, 0.280328,
		-0.833073, -0.430795, 0.346995,
		36.047279, 37.918842, 44.770561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459694, 38.627228, 45.092796>,  <36.630432, 38.220398, 44.527664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459694, 38.627228, 45.092796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269455, 38.277676, 45.133095>,  <36.155312, 38.067944, 45.157272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269455, 38.277676, 45.133095>,  <36.459694, 38.627228, 45.092796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269455, 38.277676, 45.133095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258798, -0.029544, 0.965480,
		-0.840734, 0.485249, 0.240208,
		-0.475595, -0.873877, 0.100743,
		36.126778, 38.015514, 45.163319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240051, 38.714588, 45.689610>,  <36.459694, 38.627228, 45.092796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240051, 38.714588, 45.689610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217827, 38.317928, 45.643055>,  <36.204491, 38.079933, 45.615120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217827, 38.317928, 45.643055>,  <36.240051, 38.714588, 45.689610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217827, 38.317928, 45.643055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241515, -0.126457, 0.962122,
		-0.968805, 0.025349, 0.246525,
		-0.055563, -0.991648, -0.116390,
		36.201157, 38.020435, 45.608139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873829, 38.487076, 46.173302>,  <36.240051, 38.714588, 45.689610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873829, 38.487076, 46.173302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083893, 38.163254, 46.068359>,  <36.209930, 37.968960, 46.005394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083893, 38.163254, 46.068359>,  <35.873829, 38.487076, 46.173302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083893, 38.163254, 46.068359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266919, -0.136034, 0.954070,
		-0.808058, -0.571070, 0.144645,
		0.525164, -0.809552, -0.262353,
		36.241444, 37.920387, 45.989655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620132, 37.983345, 46.666985>,  <35.873829, 38.487076, 46.173302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620132, 37.983345, 46.666985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966087, 37.821930, 46.547562>,  <36.173660, 37.725082, 46.475910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966087, 37.821930, 46.547562>,  <35.620132, 37.983345, 46.666985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966087, 37.821930, 46.547562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248504, -0.172567, 0.953135,
		-0.436147, -0.898542, -0.048970,
		0.864883, -0.403538, -0.298556,
		36.225552, 37.700871, 46.457996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777992, 37.435852, 47.102753>,  <35.620132, 37.983345, 46.666985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777992, 37.435852, 47.102753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137890, 37.537220, 46.960632>,  <36.353828, 37.598042, 46.875362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137890, 37.537220, 46.960632>,  <35.777992, 37.435852, 47.102753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137890, 37.537220, 46.960632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382272, -0.064898, 0.921768,
		0.210535, -0.965177, -0.155267,
		0.899746, 0.253419, -0.355297,
		36.407814, 37.613247, 46.854042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277561, 37.076889, 47.588547>,  <35.777992, 37.435852, 47.102753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277561, 37.076889, 47.588547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522343, 37.326435, 47.394100>,  <36.669212, 37.476162, 47.277431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522343, 37.326435, 47.394100>,  <36.277561, 37.076889, 47.588547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522343, 37.326435, 47.394100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646946, -0.041297, 0.761417,
		0.454944, -0.780442, -0.428877,
		0.611953, 0.623863, -0.486116,
		36.705929, 37.513596, 47.248264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931980, 36.754929, 47.802567>,  <36.277561, 37.076889, 47.588547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931980, 36.754929, 47.802567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941498, 37.142292, 47.703270>,  <36.947208, 37.374710, 47.643692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941498, 37.142292, 47.703270>,  <36.931980, 36.754929, 47.802567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941498, 37.142292, 47.703270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595466, 0.185732, 0.781616,
		0.803028, -0.166415, -0.572234,
		0.023790, 0.968406, -0.248242,
		36.948635, 37.432816, 47.628796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575378, 36.879669, 47.795631>,  <36.931980, 36.754929, 47.802567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575378, 36.879669, 47.795631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394310, 37.232849, 47.845409>,  <37.285667, 37.444756, 47.875275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394310, 37.232849, 47.845409>,  <37.575378, 36.879669, 47.795631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394310, 37.232849, 47.845409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415492, 0.085381, 0.905581,
		0.788957, 0.461638, -0.405508,
		-0.452673, 0.882950, 0.124445,
		37.258507, 37.497734, 47.882744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123001, 37.226929, 48.174271>,  <37.575378, 36.879669, 47.795631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123001, 37.226929, 48.174271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783318, 37.419563, 48.260914>,  <37.579506, 37.535145, 48.312901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783318, 37.419563, 48.260914>,  <38.123001, 37.226929, 48.174271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783318, 37.419563, 48.260914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337726, 0.179994, 0.923874,
		0.405941, 0.857714, -0.315498,
		-0.849207, 0.481590, 0.216605,
		37.528557, 37.564041, 48.325897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293110, 37.693134, 48.749142>,  <38.123001, 37.226929, 48.174271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293110, 37.693134, 48.749142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893391, 37.688004, 48.763226>,  <37.653561, 37.684925, 48.771675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893391, 37.688004, 48.763226>,  <38.293110, 37.693134, 48.749142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893391, 37.688004, 48.763226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034033, 0.082791, 0.995986,
		-0.015687, 0.996485, -0.082296,
		-0.999298, -0.012824, 0.035212,
		37.593601, 37.684158, 48.773788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054539, 38.211788, 49.177471>,  <38.293110, 37.693134, 48.749142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054539, 38.211788, 49.177471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778835, 37.921986, 49.176029>,  <37.613415, 37.748104, 49.175163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778835, 37.921986, 49.176029>,  <38.054539, 38.211788, 49.177471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778835, 37.921986, 49.176029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110499, -0.110037, 0.987766,
		-0.716043, 0.680425, 0.155901,
		-0.689256, -0.724509, -0.003605,
		37.572060, 37.704632, 49.174946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738140, 38.246365, 49.902233>,  <38.054539, 38.211788, 49.177471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738140, 38.246365, 49.902233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578915, 37.901859, 49.775887>,  <37.483379, 37.695156, 49.700077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578915, 37.901859, 49.775887>,  <37.738140, 38.246365, 49.902233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578915, 37.901859, 49.775887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037693, -0.328677, 0.943690,
		-0.916584, 0.387554, 0.098370,
		-0.398063, -0.861263, -0.315868,
		37.459496, 37.643482, 49.681126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210876, 38.165012, 50.279842>,  <37.738140, 38.246365, 49.902233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210876, 38.165012, 50.279842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309231, 37.798141, 50.154408>,  <37.368244, 37.578018, 50.079147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309231, 37.798141, 50.154408>,  <37.210876, 38.165012, 50.279842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309231, 37.798141, 50.154408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056444, -0.309420, 0.949249,
		-0.967655, -0.251103, -0.024312,
		0.245882, -0.917173, -0.313585,
		37.382996, 37.522991, 50.060333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783001, 37.723244, 50.545277>,  <37.210876, 38.165012, 50.279842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783001, 37.723244, 50.545277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140438, 37.552784, 50.488873>,  <37.354900, 37.450508, 50.455029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140438, 37.552784, 50.488873>,  <36.783001, 37.723244, 50.545277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140438, 37.552784, 50.488873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043605, -0.395081, 0.917611,
		-0.446753, -0.813823, -0.371624,
		0.893594, -0.426150, -0.141017,
		37.408516, 37.424942, 50.446568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767315, 37.025986, 50.897881>,  <36.783001, 37.723244, 50.545277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767315, 37.025986, 50.897881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149609, 37.132084, 50.846935>,  <37.378983, 37.195744, 50.816368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149609, 37.132084, 50.846935>,  <36.767315, 37.025986, 50.897881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149609, 37.132084, 50.846935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208609, -0.305547, 0.929044,
		0.207505, -0.914488, -0.347353,
		0.955732, 0.265242, -0.127367,
		37.436329, 37.211655, 50.808723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180592, 36.488518, 51.186718>,  <36.767315, 37.025986, 50.897881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180592, 36.488518, 51.186718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373657, 36.838837, 51.188133>,  <37.489498, 37.049026, 51.188980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373657, 36.838837, 51.188133>,  <37.180592, 36.488518, 51.186718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373657, 36.838837, 51.188133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231283, -0.131354, 0.963979,
		0.844714, -0.464463, -0.265957,
		0.482666, 0.875797, 0.003534,
		37.518456, 37.101574, 51.189194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947571, 36.391785, 51.319691>,  <37.180592, 36.488518, 51.186718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947571, 36.391785, 51.319691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718765, 36.698299, 51.436718>,  <37.581482, 36.882210, 51.506935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718765, 36.698299, 51.436718>,  <37.947571, 36.391785, 51.319691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718765, 36.698299, 51.436718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014446, -0.347213, 0.937675,
		0.820114, 0.540593, 0.187542,
		-0.572018, 0.766291, 0.292564,
		37.547161, 36.928188, 51.524487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249649, 36.875961, 51.957840>,  <37.947571, 36.391785, 51.319691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249649, 36.875961, 51.957840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850113, 36.889015, 51.972019>,  <37.610394, 36.896847, 51.980526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850113, 36.889015, 51.972019>,  <38.249649, 36.875961, 51.957840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850113, 36.889015, 51.972019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033862, -0.047845, 0.998281,
		0.034274, 0.998321, 0.046684,
		-0.998839, 0.032634, 0.035445,
		37.550461, 36.898804, 51.982655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839642, 36.264725, 52.169174>,  <38.249649, 36.875961, 51.957840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839642, 36.264725, 52.169174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052032, 35.959049, 52.315643>,  <38.179466, 35.775642, 52.403522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052032, 35.959049, 52.315643>,  <37.839642, 36.264725, 52.169174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052032, 35.959049, 52.315643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232720, -0.283996, -0.930155,
		0.814804, 0.579105, 0.027047,
		0.530976, -0.764188, 0.366171,
		38.211327, 35.729794, 52.425495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572155, 36.228615, 51.929035>,  <37.839642, 36.264725, 52.169174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572155, 36.228615, 51.929035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479614, 35.859787, 52.053135>,  <38.424088, 35.638489, 52.127594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479614, 35.859787, 52.053135>,  <38.572155, 36.228615, 51.929035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479614, 35.859787, 52.053135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149042, -0.348729, -0.925297,
		0.961385, -0.167831, 0.218107,
		-0.231354, -0.922074, 0.310249,
		38.410210, 35.583164, 52.146210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082836, 35.725433, 51.741638>,  <38.572155, 36.228615, 51.929035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082836, 35.725433, 51.741638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733372, 35.531357, 51.756088>,  <38.523693, 35.414909, 51.764759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733372, 35.531357, 51.756088>,  <39.082836, 35.725433, 51.741638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733372, 35.531357, 51.756088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229350, -0.476186, -0.848909,
		0.429091, -0.733370, 0.527304,
		-0.873659, -0.485196, 0.036129,
		38.471275, 35.385799, 51.766926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096478, 35.019001, 51.424122>,  <39.082836, 35.725433, 51.741638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096478, 35.019001, 51.424122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707687, 35.102810, 51.381474>,  <38.474415, 35.153095, 51.355885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707687, 35.102810, 51.381474>,  <39.096478, 35.019001, 51.424122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707687, 35.102810, 51.381474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010270, -0.415248, -0.909650,
		-0.234865, -0.885251, 0.401458,
		-0.971974, 0.209522, -0.106619,
		38.416096, 35.165665, 51.349487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922829, 34.518204, 51.026993>,  <39.096478, 35.019001, 51.424122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922829, 34.518204, 51.026993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629009, 34.772381, 50.931793>,  <38.452717, 34.924889, 50.874672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629009, 34.772381, 50.931793>,  <38.922829, 34.518204, 51.026993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629009, 34.772381, 50.931793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024992, -0.325173, -0.945324,
		-0.678091, -0.700338, 0.222976,
		-0.734553, 0.635443, -0.238000,
		38.408642, 34.963013, 50.860394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664291, 34.275394, 50.373734>,  <38.922829, 34.518204, 51.026993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664291, 34.275394, 50.373734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541599, 34.655937, 50.385235>,  <38.467983, 34.884262, 50.392136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541599, 34.655937, 50.385235>,  <38.664291, 34.275394, 50.373734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541599, 34.655937, 50.385235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110962, -0.005737, -0.993808,
		-0.945305, -0.308026, 0.107325,
		-0.306735, 0.951360, 0.028756,
		38.449577, 34.941345, 50.393860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123463, 34.189854, 49.947704>,  <38.664291, 34.275394, 50.373734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123463, 34.189854, 49.947704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266949, 34.563080, 49.937057>,  <38.353043, 34.787014, 49.930668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266949, 34.563080, 49.937057>,  <38.123463, 34.189854, 49.947704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266949, 34.563080, 49.937057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108380, -0.069959, -0.991645,
		-0.927132, 0.352838, -0.126221,
		0.358720, 0.933066, -0.026620,
		38.374565, 34.842999, 49.929070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686577, 34.557430, 49.461315>,  <38.123463, 34.189854, 49.947704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686577, 34.557430, 49.461315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005226, 34.799217, 49.460155>,  <38.196415, 34.944290, 49.459461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005226, 34.799217, 49.460155>,  <37.686577, 34.557430, 49.461315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005226, 34.799217, 49.460155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100870, 0.128210, -0.986604,
		-0.595998, 0.786246, 0.163108,
		0.796625, 0.604467, -0.002895,
		38.244213, 34.980556, 49.459286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530308, 35.044594, 48.975899>,  <37.686577, 34.557430, 49.461315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530308, 35.044594, 48.975899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928406, 35.075340, 48.999836>,  <38.167263, 35.093788, 49.014198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928406, 35.075340, 48.999836>,  <37.530308, 35.044594, 48.975899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928406, 35.075340, 48.999836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057767, 0.028908, -0.997911,
		-0.078437, 0.996622, 0.024330,
		0.995244, 0.076868, 0.059839,
		38.226978, 35.098400, 49.017788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605904, 35.622532, 48.660782>,  <37.530308, 35.044594, 48.975899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605904, 35.622532, 48.660782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943871, 35.408924, 48.648525>,  <38.146648, 35.280758, 48.641171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943871, 35.408924, 48.648525>,  <37.605904, 35.622532, 48.660782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943871, 35.408924, 48.648525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001131, 0.055509, -0.998457,
		0.534901, 0.843645, 0.046297,
		0.844914, -0.534024, -0.030646,
		38.197346, 35.248718, 48.639332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960045, 35.980713, 48.165745>,  <37.605904, 35.622532, 48.660782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960045, 35.980713, 48.165745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179947, 35.646751, 48.176395>,  <38.311886, 35.446373, 48.182785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179947, 35.646751, 48.176395>,  <37.960045, 35.980713, 48.165745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179947, 35.646751, 48.176395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105887, 0.038036, -0.993650,
		0.828589, 0.549082, 0.109316,
		0.549753, -0.834903, 0.026624,
		38.344872, 35.396282, 48.184383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569653, 36.069759, 47.816914>,  <37.960045, 35.980713, 48.165745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569653, 36.069759, 47.816914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522354, 35.672573, 47.814247>,  <38.493977, 35.434261, 47.812649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522354, 35.672573, 47.814247>,  <38.569653, 36.069759, 47.816914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522354, 35.672573, 47.814247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121629, -0.007824, -0.992545,
		0.985507, -0.118173, 0.121698,
		-0.118244, -0.992962, -0.006663,
		38.486881, 35.374683, 47.812248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099525, 35.886974, 47.518021>,  <38.569653, 36.069759, 47.816914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099525, 35.886974, 47.518021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840855, 35.584084, 47.481304>,  <38.685654, 35.402351, 47.459274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840855, 35.584084, 47.481304>,  <39.099525, 35.886974, 47.518021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840855, 35.584084, 47.481304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073233, 0.058148, -0.995618,
		0.759242, -0.650564, 0.017851,
		-0.646675, -0.757222, -0.091791,
		38.646851, 35.356918, 47.453766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332790, 35.573246, 46.983673>,  <39.099525, 35.886974, 47.518021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332790, 35.573246, 46.983673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948799, 35.462959, 47.003399>,  <38.718407, 35.396790, 47.015236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948799, 35.462959, 47.003399>,  <39.332790, 35.573246, 46.983673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948799, 35.462959, 47.003399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087449, 0.127773, -0.987941,
		0.266088, -0.952710, -0.146770,
		-0.959974, -0.275714, 0.049314,
		38.660809, 35.380245, 47.018192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240196, 35.033581, 46.460094>,  <39.332790, 35.573246, 46.983673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240196, 35.033581, 46.460094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891163, 35.218506, 46.523155>,  <38.681744, 35.329460, 46.560993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891163, 35.218506, 46.523155>,  <39.240196, 35.033581, 46.460094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891163, 35.218506, 46.523155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122041, 0.106179, -0.986829,
		-0.472967, -0.880335, -0.036229,
		-0.872587, 0.462316, 0.157657,
		38.629387, 35.357201, 46.570454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767597, 34.762821, 45.961269>,  <39.240196, 35.033581, 46.460094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767597, 34.762821, 45.961269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589737, 35.108898, 46.053989>,  <38.483021, 35.316544, 46.109623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589737, 35.108898, 46.053989>,  <38.767597, 34.762821, 45.961269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589737, 35.108898, 46.053989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362268, 0.062968, -0.929945,
		-0.819174, -0.497477, 0.285431,
		-0.444653, 0.865189, 0.231802,
		38.456341, 35.368454, 46.123531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036240, 34.712170, 45.601448>,  <38.767597, 34.762821, 45.961269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036240, 34.712170, 45.601448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107101, 35.099834, 45.669968>,  <38.149620, 35.332432, 45.711079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107101, 35.099834, 45.669968>,  <38.036240, 34.712170, 45.601448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107101, 35.099834, 45.669968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358443, 0.225635, -0.905874,
		-0.916589, 0.099080, 0.387361,
		0.177156, 0.969160, 0.171300,
		38.160248, 35.390583, 45.721359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450184, 35.128899, 45.271461>,  <38.036240, 34.712170, 45.601448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450184, 35.128899, 45.271461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693546, 35.439735, 45.335918>,  <37.839561, 35.626240, 45.374592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693546, 35.439735, 45.335918>,  <37.450184, 35.128899, 45.271461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693546, 35.439735, 45.335918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266476, 0.391288, -0.880843,
		-0.747553, 0.492967, 0.445138,
		0.608404, 0.777096, 0.161144,
		37.876068, 35.672863, 45.384262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043564, 35.701614, 44.980076>,  <37.450184, 35.128899, 45.271461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043564, 35.701614, 44.980076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428463, 35.806133, 45.010559>,  <37.659401, 35.868843, 45.028851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428463, 35.806133, 45.010559>,  <37.043564, 35.701614, 44.980076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428463, 35.806133, 45.010559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056571, 0.465872, -0.883042,
		-0.266235, 0.845393, 0.463066,
		0.962247, 0.261293, 0.076207,
		37.717136, 35.884521, 45.033421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086876, 36.518211, 44.819500>,  <37.043564, 35.701614, 44.980076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086876, 36.518211, 44.819500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456116, 36.369026, 44.782013>,  <37.677662, 36.279514, 44.759521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456116, 36.369026, 44.782013>,  <37.086876, 36.518211, 44.819500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456116, 36.369026, 44.782013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105125, 0.479158, -0.871410,
		0.369905, 0.794550, 0.481520,
		0.923103, -0.372959, -0.093716,
		37.733047, 36.257137, 44.753899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695049, 37.071308, 44.718586>,  <37.086876, 36.518211, 44.819500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695049, 37.071308, 44.718586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812733, 36.728226, 44.549927>,  <37.883343, 36.522377, 44.448730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812733, 36.728226, 44.549927>,  <37.695049, 37.071308, 44.718586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812733, 36.728226, 44.549927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121886, 0.471244, -0.873541,
		0.947938, 0.205608, 0.243185,
		0.294206, -0.857703, -0.421649,
		37.900993, 36.470913, 44.423431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227745, 37.232716, 44.202019>,  <37.695049, 37.071308, 44.718586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227745, 37.232716, 44.202019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130325, 36.862049, 44.087494>,  <38.071873, 36.639648, 44.018780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130325, 36.862049, 44.087494>,  <38.227745, 37.232716, 44.202019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130325, 36.862049, 44.087494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131755, 0.260856, -0.956344,
		0.960898, -0.270637, 0.058562,
		-0.243546, -0.926666, -0.286314,
		38.057262, 36.584049, 44.001598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697281, 37.044155, 43.658680>,  <38.227745, 37.232716, 44.202019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697281, 37.044155, 43.658680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386795, 36.799599, 43.597107>,  <38.200504, 36.652866, 43.560162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386795, 36.799599, 43.597107>,  <38.697281, 37.044155, 43.658680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386795, 36.799599, 43.597107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050148, 0.183512, -0.981738,
		0.628471, -0.769758, -0.111784,
		-0.776214, -0.611388, -0.153933,
		38.153931, 36.616184, 43.550926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666885, 36.838322, 42.968140>,  <38.697281, 37.044155, 43.658680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666885, 36.838322, 42.968140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319397, 36.670200, 43.072956>,  <38.110905, 36.569328, 43.135845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319397, 36.670200, 43.072956>,  <38.666885, 36.838322, 42.968140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319397, 36.670200, 43.072956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207138, -0.172266, -0.963026,
		0.449903, -0.890881, 0.062591,
		-0.868724, -0.420303, 0.262038,
		38.058781, 36.544109, 43.151569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668159, 36.128487, 42.734764>,  <38.666885, 36.838322, 42.968140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668159, 36.128487, 42.734764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305916, 36.295609, 42.763912>,  <38.088570, 36.395882, 42.781399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305916, 36.295609, 42.763912>,  <38.668159, 36.128487, 42.734764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305916, 36.295609, 42.763912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171134, -0.202789, -0.964152,
		-0.388053, -0.885615, 0.255149,
		-0.905610, 0.417807, 0.072866,
		38.034233, 36.420952, 42.785770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269318, 35.703365, 42.334911>,  <38.668159, 36.128487, 42.734764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269318, 35.703365, 42.334911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052868, 36.038418, 42.364723>,  <37.922997, 36.239449, 42.382610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052868, 36.038418, 42.364723>,  <38.269318, 35.703365, 42.334911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052868, 36.038418, 42.364723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228743, -0.061330, -0.971553,
		-0.809233, -0.542781, 0.224790,
		-0.541127, 0.837632, 0.074528,
		37.890530, 36.289707, 42.387081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607182, 35.468903, 42.137501>,  <38.269318, 35.703365, 42.334911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607182, 35.468903, 42.137501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598370, 35.862057, 42.064342>,  <37.593082, 36.097950, 42.020447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598370, 35.862057, 42.064342>,  <37.607182, 35.468903, 42.137501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598370, 35.862057, 42.064342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255187, -0.182406, -0.949530,
		-0.966641, 0.025752, 0.254838,
		-0.022032, 0.982886, -0.182892,
		37.591759, 36.156921, 42.009476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902401, 35.605083, 41.886494>,  <37.607182, 35.468903, 42.137501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902401, 35.605083, 41.886494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186535, 35.861942, 41.771206>,  <37.357014, 36.016060, 41.702034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186535, 35.861942, 41.771206>,  <36.902401, 35.605083, 41.886494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186535, 35.861942, 41.771206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191598, -0.217614, -0.957045,
		-0.677286, 0.735043, -0.031544,
		0.710333, 0.642149, -0.288220,
		37.399635, 36.054588, 41.684738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579041, 36.021465, 41.409576>,  <36.902401, 35.605083, 41.886494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579041, 36.021465, 41.409576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970203, 36.073807, 41.344368>,  <37.204903, 36.105213, 41.305244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970203, 36.073807, 41.344368>,  <36.579041, 36.021465, 41.409576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970203, 36.073807, 41.344368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151108, -0.096356, -0.983810,
		-0.144445, 0.986708, -0.074454,
		0.977907, 0.130856, -0.163018,
		37.263577, 36.113064, 41.295464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621853, 36.551201, 40.881069>,  <36.579041, 36.021465, 41.409576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621853, 36.551201, 40.881069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973469, 36.361374, 40.862808>,  <37.184437, 36.247478, 40.851852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973469, 36.361374, 40.862808>,  <36.621853, 36.551201, 40.881069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973469, 36.361374, 40.862808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126042, -0.138968, -0.982243,
		0.459794, 0.869181, -0.181974,
		0.879035, -0.474566, -0.045657,
		37.237179, 36.219006, 40.849110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892666, 36.850300, 40.364971>,  <36.621853, 36.551201, 40.881069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892666, 36.850300, 40.364971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102116, 36.511093, 40.397678>,  <37.227787, 36.307568, 40.417301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102116, 36.511093, 40.397678>,  <36.892666, 36.850300, 40.364971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102116, 36.511093, 40.397678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034723, -0.074656, -0.996605,
		0.851241, 0.524687, -0.009646,
		0.523625, -0.848016, 0.081769,
		37.259205, 36.256687, 40.422211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419090, 36.749969, 39.823788>,  <36.892666, 36.850300, 40.364971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419090, 36.749969, 39.823788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361263, 36.373798, 39.946877>,  <37.326565, 36.148094, 40.020729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361263, 36.373798, 39.946877>,  <37.419090, 36.749969, 39.823788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361263, 36.373798, 39.946877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001850, -0.311241, -0.950329,
		0.989493, -0.136819, 0.046736,
		-0.144569, -0.940431, 0.307718,
		37.317894, 36.091671, 40.039192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547031, 36.420158, 39.241333>,  <37.419090, 36.749969, 39.823788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547031, 36.420158, 39.241333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394718, 36.116756, 39.452869>,  <37.303329, 35.934715, 39.579792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394718, 36.116756, 39.452869>,  <37.547031, 36.420158, 39.241333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394718, 36.116756, 39.452869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186465, -0.497187, -0.847370,
		0.905667, -0.421277, 0.047887,
		-0.380786, -0.758506, 0.528839,
		37.280483, 35.889206, 39.611523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833683, 35.923279, 38.897034>,  <37.547031, 36.420158, 39.241333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833683, 35.923279, 38.897034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517410, 35.775276, 39.092140>,  <37.327648, 35.686474, 39.209206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517410, 35.775276, 39.092140>,  <37.833683, 35.923279, 38.897034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517410, 35.775276, 39.092140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266805, -0.508831, -0.818478,
		0.551036, -0.777294, 0.303602,
		-0.790680, -0.370008, 0.487770,
		37.280205, 35.664272, 39.238472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748966, 35.274170, 38.616817>,  <37.833683, 35.923279, 38.897034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748966, 35.274170, 38.616817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392143, 35.286263, 38.797180>,  <37.178047, 35.293518, 38.905399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392143, 35.286263, 38.797180>,  <37.748966, 35.274170, 38.616817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392143, 35.286263, 38.797180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409301, -0.477022, -0.777768,
		0.191579, -0.878371, 0.437906,
		-0.892059, 0.030231, 0.450905,
		37.124527, 35.295334, 38.932453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344864, 34.731949, 38.337364>,  <37.748966, 35.274170, 38.616817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344864, 34.731949, 38.337364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051197, 34.944942, 38.505867>,  <36.874996, 35.072739, 38.606968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051197, 34.944942, 38.505867>,  <37.344864, 34.731949, 38.337364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051197, 34.944942, 38.505867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585985, -0.183540, -0.789262,
		-0.342953, -0.826301, 0.446778,
		-0.734169, 0.532485, 0.421254,
		36.830948, 35.104687, 38.632244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788124, 34.345100, 38.289265>,  <37.344864, 34.731949, 38.337364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788124, 34.345100, 38.289265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671185, 34.725288, 38.331474>,  <36.601021, 34.953403, 38.356800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671185, 34.725288, 38.331474>,  <36.788124, 34.345100, 38.289265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671185, 34.725288, 38.331474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676320, -0.127476, -0.725494,
		-0.676110, -0.283463, 0.680091,
		-0.292346, 0.950473, 0.105524,
		36.583481, 35.010429, 38.363132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088493, 34.404228, 38.243298>,  <36.788124, 34.345100, 38.289265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088493, 34.404228, 38.243298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191906, 34.776417, 38.139465>,  <36.253952, 34.999729, 38.077168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191906, 34.776417, 38.139465>,  <36.088493, 34.404228, 38.243298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191906, 34.776417, 38.139465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328144, -0.168144, -0.929542,
		-0.908560, 0.325497, 0.261858,
		0.258533, 0.930473, -0.259579,
		36.269466, 35.055557, 38.061592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480751, 34.745541, 37.872940>,  <36.088493, 34.404228, 38.243298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480751, 34.745541, 37.872940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776012, 34.993057, 37.765438>,  <35.953167, 35.141567, 37.700939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776012, 34.993057, 37.765438>,  <35.480751, 34.745541, 37.872940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776012, 34.993057, 37.765438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293337, -0.064349, -0.953841,
		-0.607526, 0.782913, 0.134016,
		0.738150, 0.618795, -0.268751,
		35.997459, 35.178696, 37.684814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146263, 35.306450, 37.441723>,  <35.480751, 34.745541, 37.872940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146263, 35.306450, 37.441723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531715, 35.325073, 37.336460>,  <35.762985, 35.336246, 37.273304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531715, 35.325073, 37.336460>,  <35.146263, 35.306450, 37.441723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531715, 35.325073, 37.336460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264058, 0.014375, -0.964400,
		-0.041122, 0.998812, 0.026147,
		0.963630, 0.046562, -0.263153,
		35.820805, 35.339043, 37.257515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219818, 35.862263, 36.860161>,  <35.146263, 35.306450, 37.441723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219818, 35.862263, 36.860161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548489, 35.635155, 36.840244>,  <35.745693, 35.498890, 36.828293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548489, 35.635155, 36.840244>,  <35.219818, 35.862263, 36.860161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548489, 35.635155, 36.840244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075028, -0.021147, -0.996957,
		0.564990, 0.822915, -0.059975,
		0.821679, -0.567770, -0.049794,
		35.794994, 35.464825, 36.825306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595646, 36.156094, 36.307949>,  <35.219818, 35.862263, 36.860161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595646, 36.156094, 36.307949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756180, 35.793980, 36.363647>,  <35.852501, 35.576710, 36.397068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756180, 35.793980, 36.363647>,  <35.595646, 36.156094, 36.307949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756180, 35.793980, 36.363647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011958, -0.157193, -0.987495,
		0.915855, 0.394647, -0.073912,
		0.401331, -0.905286, 0.139247,
		35.876579, 35.522392, 36.405422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055153, 36.100521, 35.842560>,  <35.595646, 36.156094, 36.307949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055153, 36.100521, 35.842560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965240, 35.721222, 35.932274>,  <35.911293, 35.493645, 35.986103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965240, 35.721222, 35.932274>,  <36.055153, 36.100521, 35.842560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965240, 35.721222, 35.932274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159731, -0.191200, -0.968467,
		0.961228, -0.253520, -0.108486,
		-0.224784, -0.948246, 0.224281,
		35.897804, 35.436749, 35.999557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486950, 35.711311, 35.349354>,  <36.055153, 36.100521, 35.842560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486950, 35.711311, 35.349354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201790, 35.464794, 35.483189>,  <36.030693, 35.316883, 35.563492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201790, 35.464794, 35.483189>,  <36.486950, 35.711311, 35.349354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201790, 35.464794, 35.483189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102791, -0.380136, -0.919201,
		0.693691, -0.689692, 0.207649,
		-0.712901, -0.616297, 0.334591,
		35.987919, 35.279903, 35.583565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620201, 35.080875, 35.061760>,  <36.486950, 35.711311, 35.349354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620201, 35.080875, 35.061760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237846, 35.038151, 35.171215>,  <36.008434, 35.012516, 35.236889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237846, 35.038151, 35.171215>,  <36.620201, 35.080875, 35.061760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237846, 35.038151, 35.171215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207795, -0.412545, -0.886920,
		0.207625, -0.904653, 0.372150,
		-0.955884, -0.106816, 0.273637,
		35.951080, 35.006107, 35.253307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535118, 34.582275, 34.667492>,  <36.620201, 35.080875, 35.061760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535118, 34.582275, 34.667492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178116, 34.722874, 34.780548>,  <35.963913, 34.807232, 34.848381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178116, 34.722874, 34.780548>,  <36.535118, 34.582275, 34.667492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178116, 34.722874, 34.780548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366681, -0.200554, -0.908473,
		-0.262643, -0.914454, 0.307883,
		-0.892504, 0.351499, 0.282639,
		35.910366, 34.828323, 34.865341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213890, 34.733894, 34.290207>,  <36.535118, 34.582275, 34.667492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213890, 34.733894, 34.290207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227993, 34.587761, 34.662289>,  <37.236454, 34.500080, 34.885540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227993, 34.587761, 34.662289>,  <37.213890, 34.733894, 34.290207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227993, 34.587761, 34.662289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258200, 0.902515, 0.344673,
		-0.965448, 0.228027, 0.126151,
		0.035258, -0.365336, 0.930208,
		37.238571, 34.478161, 34.941353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894958, 34.699173, 34.545017>,  <37.213890, 34.733894, 34.290207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894958, 34.699173, 34.545017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951660, 34.997444, 34.805435>,  <37.985680, 35.176407, 34.961685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951660, 34.997444, 34.805435>,  <37.894958, 34.699173, 34.545017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951660, 34.997444, 34.805435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502371, -0.620892, 0.601762,
		0.852954, 0.241767, -0.462621,
		0.141751, 0.745682, 0.651049,
		37.994186, 35.221149, 35.000751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358234, 34.358849, 35.042973>,  <37.894958, 34.699173, 34.545017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358234, 34.358849, 35.042973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284039, 34.709320, 35.220917>,  <38.239521, 34.919605, 35.327682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284039, 34.709320, 35.220917>,  <38.358234, 34.358849, 35.042973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284039, 34.709320, 35.220917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663605, -0.222192, 0.714325,
		0.724722, 0.427709, -0.540225,
		-0.185490, 0.876183, 0.444857,
		38.228390, 34.972176, 35.354374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033642, 34.624069, 35.335670>,  <38.358234, 34.358849, 35.042973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033642, 34.624069, 35.335670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740261, 34.785053, 35.554790>,  <38.564232, 34.881645, 35.686260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740261, 34.785053, 35.554790>,  <39.033642, 34.624069, 35.335670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740261, 34.785053, 35.554790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603974, 0.016092, 0.796842,
		0.311881, 0.915296, -0.254878,
		-0.733448, 0.402459, 0.547796,
		38.520226, 34.905792, 35.719128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381859, 35.086197, 35.728989>,  <39.033642, 34.624069, 35.335670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381859, 35.086197, 35.728989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035839, 35.025467, 35.920258>,  <38.828228, 34.989029, 36.035019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035839, 35.025467, 35.920258>,  <39.381859, 35.086197, 35.728989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035839, 35.025467, 35.920258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494732, -0.099910, 0.863283,
		-0.083294, 0.983345, 0.161539,
		-0.865045, -0.151825, 0.478171,
		38.776325, 34.979919, 36.063709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405087, 35.638550, 36.198170>,  <39.381859, 35.086197, 35.728989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405087, 35.638550, 36.198170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132069, 35.379093, 36.332870>,  <38.968258, 35.223419, 36.413692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132069, 35.379093, 36.332870>,  <39.405087, 35.638550, 36.198170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132069, 35.379093, 36.332870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381292, 0.077058, 0.921238,
		-0.623501, 0.757185, 0.194726,
		-0.682542, -0.648640, 0.336754,
		38.927307, 35.184502, 36.433895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120224, 35.994987, 36.812382>,  <39.405087, 35.638550, 36.198170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120224, 35.994987, 36.812382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068501, 35.602856, 36.872017>,  <39.037464, 35.367577, 36.907799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068501, 35.602856, 36.872017>,  <39.120224, 35.994987, 36.812382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068501, 35.602856, 36.872017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453654, 0.075207, 0.887999,
		-0.881746, 0.182463, 0.435006,
		-0.129312, -0.980332, 0.149088,
		39.029709, 35.308758, 36.916744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993397, 35.905258, 37.565937>,  <39.120224, 35.994987, 36.812382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993397, 35.905258, 37.565937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086182, 35.533001, 37.452736>,  <39.141853, 35.309647, 37.384815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086182, 35.533001, 37.452736>,  <38.993397, 35.905258, 37.565937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086182, 35.533001, 37.452736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350912, -0.191283, 0.916663,
		-0.907223, -0.311943, 0.282204,
		0.231966, -0.930646, -0.283001,
		39.155773, 35.253807, 37.367836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639717, 35.412327, 38.028896>,  <38.993397, 35.905258, 37.565937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639717, 35.412327, 38.028896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963234, 35.233284, 37.876316>,  <39.157345, 35.125858, 37.784767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963234, 35.233284, 37.876316>,  <38.639717, 35.412327, 38.028896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963234, 35.233284, 37.876316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219823, -0.371507, 0.902031,
		-0.545464, -0.813408, -0.202079,
		0.808794, -0.447604, -0.381450,
		39.205872, 35.099003, 37.761883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587440, 34.723900, 38.305130>,  <38.639717, 35.412327, 38.028896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587440, 34.723900, 38.305130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965950, 34.758965, 38.180622>,  <39.193054, 34.780003, 38.105919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965950, 34.758965, 38.180622>,  <38.587440, 34.723900, 38.305130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965950, 34.758965, 38.180622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323376, -0.259107, 0.910105,
		-0.000874, -0.961862, -0.273532,
		0.946270, 0.087659, -0.311270,
		39.249832, 34.785263, 38.087242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865124, 34.190125, 38.511848>,  <38.587440, 34.723900, 38.305130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865124, 34.190125, 38.511848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165855, 34.451931, 38.479946>,  <39.346294, 34.609016, 38.460804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165855, 34.451931, 38.479946>,  <38.865124, 34.190125, 38.511848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165855, 34.451931, 38.479946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304069, -0.236836, 0.922741,
		0.585064, -0.717992, -0.377078,
		0.751826, 0.654520, -0.079755,
		39.391403, 34.648289, 38.456020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418297, 33.850136, 38.822819>,  <38.865124, 34.190125, 38.511848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418297, 33.850136, 38.822819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540314, 34.230904, 38.811481>,  <39.613525, 34.459362, 38.804680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540314, 34.230904, 38.811481>,  <39.418297, 33.850136, 38.822819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540314, 34.230904, 38.811481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409700, -0.104302, 0.906238,
		0.859707, -0.288053, -0.421817,
		0.305041, 0.951917, -0.028347,
		39.631824, 34.516479, 38.802979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114243, 33.810169, 39.087536>,  <39.418297, 33.850136, 38.822819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114243, 33.810169, 39.087536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969002, 34.181030, 39.124523>,  <39.881859, 34.403545, 39.146717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969002, 34.181030, 39.124523>,  <40.114243, 33.810169, 39.087536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969002, 34.181030, 39.124523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361993, 0.048921, 0.930896,
		0.858557, 0.371482, -0.353385,
		-0.363099, 0.927150, 0.092472,
		39.860073, 34.459175, 39.152264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606934, 34.168961, 39.427948>,  <40.114243, 33.810169, 39.087536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606934, 34.168961, 39.427948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271755, 34.378452, 39.489349>,  <40.070648, 34.504147, 39.526192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271755, 34.378452, 39.489349>,  <40.606934, 34.168961, 39.427948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271755, 34.378452, 39.489349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316945, 0.237998, 0.918097,
		0.444296, 0.817966, -0.365421,
		-0.837942, 0.523725, 0.153508,
		40.020374, 34.535568, 39.535400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789543, 34.624584, 39.975288>,  <40.606934, 34.168961, 39.427948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789543, 34.624584, 39.975288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393356, 34.677898, 39.989147>,  <40.155643, 34.709888, 39.997463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393356, 34.677898, 39.989147>,  <40.789543, 34.624584, 39.975288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393356, 34.677898, 39.989147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083751, 0.383253, 0.919839,
		0.109324, 0.913976, -0.390764,
		-0.990472, 0.133287, 0.034648,
		40.096214, 34.717884, 39.999542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697163, 35.341717, 40.332062>,  <40.789543, 34.624584, 39.975288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697163, 35.341717, 40.332062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345051, 35.153175, 40.353691>,  <40.133781, 35.040051, 40.366669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345051, 35.153175, 40.353691>,  <40.697163, 35.341717, 40.332062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345051, 35.153175, 40.353691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106223, 0.306875, 0.945804,
		-0.462405, 0.826831, -0.320206,
		-0.880283, -0.471357, 0.054072,
		40.080967, 35.011768, 40.369911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340393, 35.725101, 40.805916>,  <40.697163, 35.341717, 40.332062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340393, 35.725101, 40.805916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097252, 35.407482, 40.805416>,  <39.951366, 35.216911, 40.805115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097252, 35.407482, 40.805416>,  <40.340393, 35.725101, 40.805916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097252, 35.407482, 40.805416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112755, 0.084758, 0.990001,
		-0.786000, 0.601921, -0.141054,
		-0.607858, -0.794045, -0.001249,
		39.914894, 35.169270, 40.805042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680218, 35.982132, 41.047245>,  <40.340393, 35.725101, 40.805916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680218, 35.982132, 41.047245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744461, 35.590977, 41.100826>,  <39.783009, 35.356285, 41.132977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744461, 35.590977, 41.100826>,  <39.680218, 35.982132, 41.047245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744461, 35.590977, 41.100826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187139, 0.103083, 0.976910,
		-0.969115, -0.181969, -0.166445,
		0.160610, -0.977886, 0.133953,
		39.792645, 35.297611, 41.141010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989727, 35.704231, 41.338825>,  <39.680218, 35.982132, 41.047245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989727, 35.704231, 41.338825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289974, 35.468868, 41.459057>,  <39.470123, 35.327648, 41.531197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289974, 35.468868, 41.459057>,  <38.989727, 35.704231, 41.338825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289974, 35.468868, 41.459057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055089, 0.397592, 0.915907,
		-0.658437, -0.704054, 0.266024,
		0.750617, -0.588412, 0.300575,
		39.515160, 35.292343, 41.549229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919647, 35.586342, 42.031258>,  <38.989727, 35.704231, 41.338825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919647, 35.586342, 42.031258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292774, 35.445408, 42.001011>,  <39.516651, 35.360847, 41.982861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292774, 35.445408, 42.001011>,  <38.919647, 35.586342, 42.031258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292774, 35.445408, 42.001011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172483, 0.252293, 0.952154,
		-0.316398, -0.901226, 0.296114,
		0.932814, -0.352335, -0.075621,
		39.572617, 35.339706, 41.978325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970615, 35.176010, 42.564457>,  <38.919647, 35.586342, 42.031258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970615, 35.176010, 42.564457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342670, 35.284931, 42.465916>,  <39.565903, 35.350285, 42.406792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342670, 35.284931, 42.465916>,  <38.970615, 35.176010, 42.564457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342670, 35.284931, 42.465916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200557, 0.185253, 0.962007,
		0.307596, -0.944210, 0.117699,
		0.930141, 0.272304, -0.246351,
		39.621712, 35.366623, 42.392010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343479, 34.972874, 43.135242>,  <38.970615, 35.176010, 42.564457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343479, 34.972874, 43.135242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607830, 35.216122, 42.959320>,  <39.766441, 35.362072, 42.853767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607830, 35.216122, 42.959320>,  <39.343479, 34.972874, 43.135242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607830, 35.216122, 42.959320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400302, 0.210074, 0.891980,
		0.634826, -0.765542, -0.104600,
		0.660874, 0.608124, -0.439808,
		39.806091, 35.398560, 42.827377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030571, 34.803349, 43.381348>,  <39.343479, 34.972874, 43.135242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030571, 34.803349, 43.381348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043423, 35.184978, 43.262215>,  <40.051136, 35.413956, 43.190735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043423, 35.184978, 43.262215>,  <40.030571, 34.803349, 43.381348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043423, 35.184978, 43.262215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456374, 0.251102, 0.853622,
		0.889208, -0.163351, -0.427348,
		0.032132, 0.954078, -0.297831,
		40.053062, 35.471203, 43.172867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706856, 34.997334, 43.565636>,  <40.030571, 34.803349, 43.381348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706856, 34.997334, 43.565636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505104, 35.338058, 43.509052>,  <40.384052, 35.542496, 43.475101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505104, 35.338058, 43.509052>,  <40.706856, 34.997334, 43.565636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505104, 35.338058, 43.509052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415542, 0.383058, 0.824980,
		0.756917, 0.357322, -0.547172,
		-0.504382, 0.851815, -0.141461,
		40.353790, 35.593601, 43.466614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216640, 35.434956, 43.665188>,  <40.706856, 34.997334, 43.565636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216640, 35.434956, 43.665188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873112, 35.634876, 43.710144>,  <40.666996, 35.754829, 43.737118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873112, 35.634876, 43.710144>,  <41.216640, 35.434956, 43.665188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873112, 35.634876, 43.710144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410787, 0.540813, 0.734013,
		0.306076, 0.676553, -0.669771,
		-0.858820, 0.499798, 0.112389,
		40.615467, 35.784817, 43.743862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411362, 36.108212, 43.851429>,  <41.216640, 35.434956, 43.665188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411362, 36.108212, 43.851429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035141, 36.092121, 43.986336>,  <40.809410, 36.082466, 44.067280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035141, 36.092121, 43.986336>,  <41.411362, 36.108212, 43.851429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035141, 36.092121, 43.986336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267148, 0.525613, 0.807690,
		-0.209761, 0.849773, -0.483619,
		-0.940549, -0.040224, 0.337268,
		40.752975, 36.080055, 44.087517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154449, 36.753117, 44.072948>,  <41.411362, 36.108212, 43.851429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154449, 36.753117, 44.072948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912964, 36.492340, 44.256474>,  <40.768074, 36.335876, 44.366589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912964, 36.492340, 44.256474>,  <41.154449, 36.753117, 44.072948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912964, 36.492340, 44.256474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183440, 0.446486, 0.875786,
		-0.775812, 0.612886, -0.149956,
		-0.603710, -0.651937, 0.458817,
		40.731850, 36.296761, 44.394119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610638, 37.162945, 44.456219>,  <41.154449, 36.753117, 44.072948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610638, 37.162945, 44.456219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688721, 36.798058, 44.600304>,  <40.735569, 36.579124, 44.686756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688721, 36.798058, 44.600304>,  <40.610638, 37.162945, 44.456219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688721, 36.798058, 44.600304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195344, 0.396082, 0.897196,
		-0.961112, -0.104770, 0.255513,
		0.195203, -0.912218, 0.360213,
		40.747280, 36.524391, 44.708366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310425, 37.196671, 45.189522>,  <40.610638, 37.162945, 44.456219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310425, 37.196671, 45.189522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508160, 36.850704, 45.224274>,  <40.626801, 36.643124, 45.245125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508160, 36.850704, 45.224274>,  <40.310425, 37.196671, 45.189522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508160, 36.850704, 45.224274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470010, 0.350023, 0.810293,
		-0.731247, -0.359721, 0.579549,
		0.494335, -0.864919, 0.086881,
		40.656460, 36.591228, 45.250340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238338, 36.919884, 45.918209>,  <40.310425, 37.196671, 45.189522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238338, 36.919884, 45.918209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564171, 36.763138, 45.747147>,  <40.759670, 36.669090, 45.644508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564171, 36.763138, 45.747147>,  <40.238338, 36.919884, 45.918209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564171, 36.763138, 45.747147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537738, 0.233773, 0.810055,
		-0.217461, -0.889825, 0.401150,
		0.814585, -0.391869, -0.427656,
		40.808548, 36.645576, 45.618851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507099, 36.572289, 46.424564>,  <40.238338, 36.919884, 45.918209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507099, 36.572289, 46.424564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829052, 36.615139, 46.191090>,  <41.022224, 36.640850, 46.051006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829052, 36.615139, 46.191090>,  <40.507099, 36.572289, 46.424564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829052, 36.615139, 46.191090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515982, 0.359507, 0.777507,
		0.293134, -0.926972, 0.234083,
		0.804882, 0.107131, -0.583685,
		41.070518, 36.647278, 46.015984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058643, 36.237591, 46.722092>,  <40.507099, 36.572289, 46.424564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058643, 36.237591, 46.722092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202187, 36.561901, 46.537109>,  <41.288311, 36.756485, 46.426121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202187, 36.561901, 46.537109>,  <41.058643, 36.237591, 46.722092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202187, 36.561901, 46.537109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367467, 0.332729, 0.868481,
		0.858014, -0.481600, -0.178530,
		0.358858, 0.810773, -0.462459,
		41.309845, 36.805134, 46.398373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597694, 36.231880, 47.025795>,  <41.058643, 36.237591, 46.722092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597694, 36.231880, 47.025795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611412, 36.590858, 46.849876>,  <41.619640, 36.806244, 46.744324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611412, 36.590858, 46.849876>,  <41.597694, 36.231880, 47.025795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611412, 36.590858, 46.849876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471031, 0.373602, 0.799094,
		0.881450, -0.234561, -0.409912,
		0.034292, 0.897443, -0.439796,
		41.621700, 36.860092, 46.717937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234524, 36.484776, 47.157948>,  <41.597694, 36.231880, 47.025795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234524, 36.484776, 47.157948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069347, 36.832241, 47.048470>,  <41.970242, 37.040718, 46.982784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069347, 36.832241, 47.048470>,  <42.234524, 36.484776, 47.157948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069347, 36.832241, 47.048470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474942, 0.461802, 0.749112,
		0.777116, 0.179352, -0.603261,
		-0.412942, 0.868661, -0.273692,
		41.945465, 37.092838, 46.966362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739891, 36.957047, 47.117302>,  <42.234524, 36.484776, 47.157948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739891, 36.957047, 47.117302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411133, 37.183903, 47.138638>,  <42.213879, 37.320015, 47.151440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411133, 37.183903, 47.138638>,  <42.739891, 36.957047, 47.117302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411133, 37.183903, 47.138638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408968, 0.522293, 0.748302,
		0.396532, 0.636838, -0.661211,
		-0.821893, 0.567139, 0.053341,
		42.164566, 37.354046, 47.154640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047867, 37.690628, 47.249947>,  <42.739891, 36.957047, 47.117302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047867, 37.690628, 47.249947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672794, 37.675430, 47.388107>,  <42.447750, 37.666313, 47.471004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672794, 37.675430, 47.388107>,  <43.047867, 37.690628, 47.249947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672794, 37.675430, 47.388107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291304, 0.455960, 0.840977,
		-0.189440, 0.889189, -0.416480,
		-0.937686, -0.037992, 0.345401,
		42.391487, 37.664032, 47.491726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892414, 38.432232, 47.396698>,  <43.047867, 37.690628, 47.249947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892414, 38.432232, 47.396698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640278, 38.189926, 47.590904>,  <42.488998, 38.044544, 47.707428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640278, 38.189926, 47.590904>,  <42.892414, 38.432232, 47.396698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640278, 38.189926, 47.590904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200971, 0.476757, 0.855753,
		-0.749856, 0.636988, -0.178778,
		-0.630338, -0.605763, 0.485516,
		42.451176, 38.008198, 47.736561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926937, 39.114063, 47.605648>,  <42.892414, 38.432232, 47.396698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926937, 39.114063, 47.605648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996361, 39.500553, 47.529446>,  <43.038013, 39.732449, 47.483727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996361, 39.500553, 47.529446>,  <42.926937, 39.114063, 47.605648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996361, 39.500553, 47.529446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004122, -0.194148, -0.980963,
		-0.984815, 0.169468, -0.037678,
		0.173557, 0.966223, -0.190501,
		43.048428, 39.790421, 47.472294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544666, 39.278286, 47.015804>,  <42.926937, 39.114063, 47.605648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544666, 39.278286, 47.015804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789078, 39.594788, 47.025265>,  <42.935726, 39.784687, 47.030941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789078, 39.594788, 47.025265>,  <42.544666, 39.278286, 47.015804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789078, 39.594788, 47.025265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036718, 0.058174, -0.997631,
		-0.790756, 0.608713, 0.064600,
		0.611029, 0.791255, 0.023651,
		42.972385, 39.832165, 47.032360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217762, 39.902225, 46.655174>,  <42.544666, 39.278286, 47.015804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217762, 39.902225, 46.655174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615974, 39.939049, 46.646721>,  <42.854900, 39.961143, 46.641651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615974, 39.939049, 46.646721>,  <42.217762, 39.902225, 46.655174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615974, 39.939049, 46.646721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026255, 0.054814, -0.998151,
		-0.090733, 0.994243, 0.056986,
		0.995529, 0.092061, -0.021130,
		42.914635, 39.966667, 46.640381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434357, 40.507889, 46.238632>,  <42.217762, 39.902225, 46.655174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434357, 40.507889, 46.238632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742329, 40.253906, 46.264038>,  <42.927113, 40.101517, 46.279282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742329, 40.253906, 46.264038>,  <42.434357, 40.507889, 46.238632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742329, 40.253906, 46.264038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033106, -0.059652, -0.997670,
		0.637270, 0.770238, -0.024907,
		0.769929, -0.634961, 0.063514,
		42.973309, 40.063419, 46.283092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724628, 40.571651, 45.567112>,  <42.434357, 40.507889, 46.238632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724628, 40.571651, 45.567112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867668, 40.221519, 45.697289>,  <42.953491, 40.011440, 45.775394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867668, 40.221519, 45.697289>,  <42.724628, 40.571651, 45.567112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867668, 40.221519, 45.697289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068020, -0.371978, -0.925746,
		0.931393, 0.308913, -0.192561,
		0.357604, -0.875331, 0.325446,
		42.974949, 39.958920, 45.794922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127045, 40.406670, 44.962433>,  <42.724628, 40.571651, 45.567112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127045, 40.406670, 44.962433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073975, 40.050663, 45.136909>,  <43.042133, 39.837059, 45.241596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073975, 40.050663, 45.136909>,  <43.127045, 40.406670, 44.962433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073975, 40.050663, 45.136909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048351, -0.445372, -0.894039,
		0.989979, -0.097530, 0.102124,
		-0.132679, -0.890018, 0.436193,
		43.034172, 39.783657, 45.267769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520168, 39.892036, 44.558819>,  <43.127045, 40.406670, 44.962433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520168, 39.892036, 44.558819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310307, 39.636448, 44.783836>,  <43.184391, 39.483093, 44.918846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310307, 39.636448, 44.783836>,  <43.520168, 39.892036, 44.558819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310307, 39.636448, 44.783836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008092, -0.657017, -0.753832,
		0.851278, -0.400052, 0.339535,
		-0.524653, -0.638973, 0.562542,
		43.152912, 39.444756, 44.952599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853996, 39.170975, 44.423813>,  <43.520168, 39.892036, 44.558819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853996, 39.170975, 44.423813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478504, 39.163330, 44.561462>,  <43.253208, 39.158741, 44.644051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478504, 39.163330, 44.561462>,  <43.853996, 39.170975, 44.423813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478504, 39.163330, 44.561462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265311, -0.597232, -0.756917,
		0.219990, -0.801840, 0.555569,
		-0.938730, -0.019116, 0.344122,
		43.196884, 39.157597, 44.664700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720726, 38.542645, 44.265266>,  <43.853996, 39.170975, 44.423813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720726, 38.542645, 44.265266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369038, 38.723671, 44.324810>,  <43.158024, 38.832287, 44.360535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369038, 38.723671, 44.324810>,  <43.720726, 38.542645, 44.265266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369038, 38.723671, 44.324810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368769, -0.448665, -0.814069,
		-0.301630, -0.770641, 0.561366,
		-0.879220, 0.452562, 0.148858,
		43.105270, 38.859440, 44.369469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269474, 38.093746, 44.110172>,  <43.720726, 38.542645, 44.265266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269474, 38.093746, 44.110172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087898, 38.447762, 44.068916>,  <42.978951, 38.660172, 44.044163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087898, 38.447762, 44.068916>,  <43.269474, 38.093746, 44.110172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087898, 38.447762, 44.068916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416335, -0.313022, -0.853629,
		-0.787783, -0.344556, 0.510567,
		-0.453942, 0.885041, -0.103142,
		42.951717, 38.713272, 44.037975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724167, 37.833878, 43.765366>,  <43.269474, 38.093746, 44.110172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724167, 37.833878, 43.765366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726482, 38.230026, 43.710049>,  <42.727871, 38.467716, 43.676857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726482, 38.230026, 43.710049>,  <42.724167, 37.833878, 43.765366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726482, 38.230026, 43.710049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278240, -0.131242, -0.951503,
		-0.960494, 0.043983, 0.274803,
		0.005784, 0.990374, -0.138295,
		42.728218, 38.527138, 43.668560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097370, 38.125626, 43.565800>,  <42.724167, 37.833878, 43.765366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097370, 38.125626, 43.565800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359650, 38.388676, 43.417427>,  <42.517017, 38.546505, 43.328403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359650, 38.388676, 43.417427>,  <42.097370, 38.125626, 43.565800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359650, 38.388676, 43.417427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254060, -0.270460, -0.928604,
		-0.710994, 0.703123, -0.010265,
		0.655699, 0.657623, -0.370931,
		42.556358, 38.585964, 43.306149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726086, 38.571739, 43.183964>,  <42.097370, 38.125626, 43.565800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726086, 38.571739, 43.183964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107105, 38.576538, 43.062302>,  <42.335716, 38.579418, 42.989304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107105, 38.576538, 43.062302>,  <41.726086, 38.571739, 43.183964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107105, 38.576538, 43.062302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281777, -0.343230, -0.895988,
		-0.115147, 0.939175, -0.323561,
		0.952545, 0.011999, -0.304160,
		42.392868, 38.580139, 42.971054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764057, 39.028824, 42.702915>,  <41.726086, 38.571739, 43.183964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764057, 39.028824, 42.702915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077122, 38.797001, 42.612099>,  <42.264961, 38.657906, 42.557610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077122, 38.797001, 42.612099>,  <41.764057, 39.028824, 42.702915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077122, 38.797001, 42.612099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374303, -0.146795, -0.915613,
		0.497323, 0.801600, -0.331822,
		0.782666, -0.579558, -0.227037,
		42.311920, 38.623135, 42.543987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937180, 39.232227, 42.026363>,  <41.764057, 39.028824, 42.702915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937180, 39.232227, 42.026363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123814, 38.880798, 42.067165>,  <42.235794, 38.669941, 42.091648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123814, 38.880798, 42.067165>,  <41.937180, 39.232227, 42.026363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123814, 38.880798, 42.067165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360630, -0.294283, -0.885067,
		0.807614, 0.376177, -0.454148,
		0.466590, -0.878572, 0.102006,
		42.263790, 38.617226, 42.097767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379105, 39.028873, 41.422726>,  <41.937180, 39.232227, 42.026363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379105, 39.028873, 41.422726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364151, 38.648693, 41.546173>,  <42.355179, 38.420586, 41.620239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364151, 38.648693, 41.546173>,  <42.379105, 39.028873, 41.422726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364151, 38.648693, 41.546173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325262, -0.280442, -0.903082,
		0.944885, -0.134140, -0.298663,
		-0.037382, -0.950452, 0.308616,
		42.352936, 38.363556, 41.638760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834114, 38.478600, 40.904514>,  <42.379105, 39.028873, 41.422726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834114, 38.478600, 40.904514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551918, 38.285980, 41.112514>,  <42.382603, 38.170410, 41.237316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551918, 38.285980, 41.112514>,  <42.834114, 38.478600, 40.904514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551918, 38.285980, 41.112514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341475, -0.411977, -0.844790,
		0.621035, -0.773555, 0.126208,
		-0.705486, -0.481546, 0.520002,
		42.340271, 38.141518, 41.268517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858707, 37.690372, 40.777039>,  <42.834114, 38.478600, 40.904514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858707, 37.690372, 40.777039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488979, 37.787739, 40.894600>,  <42.267143, 37.846157, 40.965137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488979, 37.787739, 40.894600>,  <42.858707, 37.690372, 40.777039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488979, 37.787739, 40.894600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371833, -0.401180, -0.837135,
		-0.085860, -0.883066, 0.461328,
		-0.924321, 0.243413, 0.293908,
		42.211681, 37.860764, 40.982773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507202, 37.101330, 40.609032>,  <42.858707, 37.690372, 40.777039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507202, 37.101330, 40.609032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205231, 37.353298, 40.682014>,  <42.024048, 37.504478, 40.725803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205231, 37.353298, 40.682014>,  <42.507202, 37.101330, 40.609032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205231, 37.353298, 40.682014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545470, -0.448662, -0.707930,
		-0.364074, -0.633961, 0.682307,
		-0.754926, 0.629917, 0.182460,
		41.978752, 37.542274, 40.736752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919010, 36.684784, 40.537327>,  <42.507202, 37.101330, 40.609032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919010, 36.684784, 40.537327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788204, 37.061497, 40.506054>,  <41.709721, 37.287525, 40.487289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788204, 37.061497, 40.506054>,  <41.919010, 36.684784, 40.537327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788204, 37.061497, 40.506054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576274, -0.264302, -0.773339,
		-0.748978, -0.207840, 0.629154,
		-0.327017, 0.941779, -0.078183,
		41.690098, 37.344028, 40.482597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127419, 36.669964, 40.575550>,  <41.919010, 36.684784, 40.537327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127419, 36.669964, 40.575550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226501, 37.015842, 40.400764>,  <41.285954, 37.223370, 40.295895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226501, 37.015842, 40.400764>,  <41.127419, 36.669964, 40.575550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226501, 37.015842, 40.400764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599103, -0.217737, -0.770497,
		-0.761391, 0.452647, 0.464107,
		0.247710, 0.864697, -0.436965,
		41.300816, 37.275253, 40.269676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497192, 36.944077, 40.316677>,  <41.127419, 36.669964, 40.575550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497192, 36.944077, 40.316677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774109, 37.148106, 40.112499>,  <40.940258, 37.270523, 39.989990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774109, 37.148106, 40.112499>,  <40.497192, 36.944077, 40.316677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774109, 37.148106, 40.112499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576515, -0.034488, -0.816358,
		-0.434004, 0.859442, 0.270187,
		0.692294, 0.510069, -0.510449,
		40.981796, 37.301125, 39.959366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068325, 37.366974, 39.815437>,  <40.497192, 36.944077, 40.316677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068325, 37.366974, 39.815437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433624, 37.395699, 39.655029>,  <40.652805, 37.412933, 39.558784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433624, 37.395699, 39.655029>,  <40.068325, 37.366974, 39.815437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433624, 37.395699, 39.655029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383393, -0.181439, -0.905588,
		-0.137794, 0.980777, -0.138167,
		0.913249, 0.071813, -0.401024,
		40.707600, 37.417244, 39.534721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967987, 37.747696, 39.230686>,  <40.068325, 37.366974, 39.815437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967987, 37.747696, 39.230686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304585, 37.542191, 39.163845>,  <40.506542, 37.418888, 39.123741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304585, 37.542191, 39.163845>,  <39.967987, 37.747696, 39.230686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304585, 37.542191, 39.163845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224691, -0.051529, -0.973067,
		0.491319, 0.856381, -0.158800,
		0.841498, -0.513767, -0.167104,
		40.557034, 37.388062, 39.113712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245865, 37.951393, 38.581722>,  <39.967987, 37.747696, 39.230686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245865, 37.951393, 38.581722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434315, 37.601128, 38.624142>,  <40.547386, 37.390968, 38.649593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434315, 37.601128, 38.624142>,  <40.245865, 37.951393, 38.581722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434315, 37.601128, 38.624142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096790, -0.170827, -0.980535,
		0.876740, 0.451690, -0.165237,
		0.471125, -0.875668, 0.106052,
		40.575653, 37.338428, 38.655956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693516, 37.994629, 38.101582>,  <40.245865, 37.951393, 38.581722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693516, 37.994629, 38.101582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669468, 37.600689, 38.166637>,  <40.655041, 37.364323, 38.205669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669468, 37.600689, 38.166637>,  <40.693516, 37.994629, 38.101582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669468, 37.600689, 38.166637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236400, -0.172346, -0.956249,
		0.969795, -0.019039, 0.243180,
		-0.060118, -0.984852, 0.162640,
		40.651432, 37.305233, 38.215427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304504, 37.617043, 37.810734>,  <40.693516, 37.994629, 38.101582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304504, 37.617043, 37.810734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016975, 37.341045, 37.844685>,  <40.844460, 37.175446, 37.865055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016975, 37.341045, 37.844685>,  <41.304504, 37.617043, 37.810734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016975, 37.341045, 37.844685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131171, -0.254506, -0.958134,
		0.682709, -0.677594, 0.273452,
		-0.718821, -0.689995, 0.084873,
		40.801331, 37.134048, 37.870148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604885, 37.108208, 37.328518>,  <41.304504, 37.617043, 37.810734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604885, 37.108208, 37.328518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226097, 36.988285, 37.374767>,  <40.998825, 36.916332, 37.402515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226097, 36.988285, 37.374767>,  <41.604885, 37.108208, 37.328518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226097, 36.988285, 37.374767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036664, -0.256661, -0.965806,
		0.319228, -0.918827, 0.232058,
		-0.946969, -0.299804, 0.115621,
		40.942005, 36.898342, 37.409454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501144, 36.540375, 36.868576>,  <41.604885, 37.108208, 37.328518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501144, 36.540375, 36.868576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126785, 36.658367, 36.945602>,  <40.902168, 36.729160, 36.991817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126785, 36.658367, 36.945602>,  <41.501144, 36.540375, 36.868576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126785, 36.658367, 36.945602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220308, -0.063583, -0.973356,
		-0.274877, -0.953386, 0.124494,
		-0.935899, 0.294981, 0.192561,
		40.846016, 36.746861, 37.003372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201298, 36.084835, 36.430225>,  <41.501144, 36.540375, 36.868576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201298, 36.084835, 36.430225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943153, 36.382320, 36.499966>,  <40.788265, 36.560810, 36.541809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943153, 36.382320, 36.499966>,  <41.201298, 36.084835, 36.430225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943153, 36.382320, 36.499966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261800, -0.000924, -0.965122,
		-0.717611, -0.668500, 0.195300,
		-0.645364, 0.743712, 0.174350,
		40.749546, 36.605434, 36.552269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606323, 35.821903, 36.189449>,  <41.201298, 36.084835, 36.430225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606323, 35.821903, 36.189449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573349, 36.219917, 36.211769>,  <40.553562, 36.458725, 36.225163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573349, 36.219917, 36.211769>,  <40.606323, 35.821903, 36.189449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573349, 36.219917, 36.211769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296799, 0.028940, -0.954501,
		-0.951375, -0.095250, 0.292939,
		-0.082439, 0.995032, 0.055803,
		40.548618, 36.518429, 36.228508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027000, 35.986015, 35.946354>,  <40.606323, 35.821903, 36.189449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027000, 35.986015, 35.946354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188877, 36.349659, 35.906887>,  <40.286003, 36.567844, 35.883205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188877, 36.349659, 35.906887>,  <40.027000, 35.986015, 35.946354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188877, 36.349659, 35.906887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409744, 0.083815, -0.908342,
		-0.817516, 0.408030, 0.406423,
		0.404695, 0.909113, -0.098668,
		40.310287, 36.622395, 35.877285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601109, 36.338490, 35.534119>,  <40.027000, 35.986015, 35.946354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601109, 36.338490, 35.534119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937515, 36.552868, 35.504581>,  <40.139359, 36.681496, 35.486858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937515, 36.552868, 35.504581>,  <39.601109, 36.338490, 35.534119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937515, 36.552868, 35.504581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170620, 0.133236, -0.976287,
		-0.513395, 0.833675, 0.203497,
		0.841020, 0.535942, -0.073839,
		40.189819, 36.713650, 35.482430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437794, 36.905796, 35.031494>,  <39.601109, 36.338490, 35.534119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437794, 36.905796, 35.031494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837143, 36.883202, 35.034645>,  <40.076752, 36.869644, 35.036533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837143, 36.883202, 35.034645>,  <39.437794, 36.905796, 35.031494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837143, 36.883202, 35.034645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003699, -0.073642, -0.997278,
		0.056909, 0.995684, -0.073313,
		0.998373, -0.056483, 0.007874,
		40.136654, 36.866257, 35.037006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534092, 37.309448, 34.534027>,  <39.437794, 36.905796, 35.031494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534092, 37.309448, 34.534027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897583, 37.142948, 34.546432>,  <40.115677, 37.043049, 34.553875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897583, 37.142948, 34.546432>,  <39.534092, 37.309448, 34.534027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897583, 37.142948, 34.546432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064034, 0.065608, -0.995789,
		0.412458, 0.906882, 0.086273,
		0.908723, -0.416246, 0.031011,
		40.170200, 37.018074, 34.555737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994469, 37.756332, 34.111629>,  <39.534092, 37.309448, 34.534027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994469, 37.756332, 34.111629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140831, 37.384232, 34.122524>,  <40.228649, 37.160973, 34.129063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140831, 37.384232, 34.122524>,  <39.994469, 37.756332, 34.111629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140831, 37.384232, 34.122524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232498, 0.063033, -0.970552,
		0.901141, 0.361468, 0.239346,
		0.365911, -0.930251, 0.027239,
		40.250603, 37.105156, 34.130695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663349, 37.753445, 33.800652>,  <39.994469, 37.756332, 34.111629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663349, 37.753445, 33.800652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548470, 37.370583, 33.785851>,  <40.479542, 37.140865, 33.776970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548470, 37.370583, 33.785851>,  <40.663349, 37.753445, 33.800652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548470, 37.370583, 33.785851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053732, 0.022475, -0.998302,
		0.956364, -0.288696, 0.044975,
		-0.287195, -0.957157, -0.037007,
		40.462311, 37.083435, 33.774750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983593, 37.574192, 33.228737>,  <40.663349, 37.753445, 33.800652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983593, 37.574192, 33.228737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710812, 37.285938, 33.278732>,  <40.547142, 37.112988, 33.308727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710812, 37.285938, 33.278732>,  <40.983593, 37.574192, 33.228737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710812, 37.285938, 33.278732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197185, 0.016594, -0.980226,
		0.704310, -0.693117, -0.153414,
		-0.681958, -0.720634, 0.124985,
		40.506226, 37.069748, 33.316227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103512, 37.025772, 32.689407>,  <40.983593, 37.574192, 33.228737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103512, 37.025772, 32.689407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722927, 36.996761, 32.809044>,  <40.494576, 36.979355, 32.880825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722927, 36.996761, 32.809044>,  <41.103512, 37.025772, 32.689407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722927, 36.996761, 32.809044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295208, -0.059600, -0.953572,
		0.086986, -0.995584, 0.035296,
		-0.951465, -0.072527, 0.299089,
		40.437489, 36.975002, 32.898769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846535, 36.561493, 32.158463>,  <41.103512, 37.025772, 32.689407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846535, 36.561493, 32.158463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516197, 36.708195, 32.329796>,  <40.317993, 36.796215, 32.432594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516197, 36.708195, 32.329796>,  <40.846535, 36.561493, 32.158463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516197, 36.708195, 32.329796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366820, 0.227506, -0.902044,
		-0.428278, -0.902071, -0.053352,
		-0.825846, 0.366755, 0.428334,
		40.268444, 36.818222, 32.458298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073013, 36.029972, 32.594467>,  <40.846535, 36.561493, 32.158463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073013, 36.029972, 32.594467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169704, 36.118027, 32.216450>,  <41.227718, 36.170860, 31.989639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169704, 36.118027, 32.216450>,  <41.073013, 36.029972, 32.594467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169704, 36.118027, 32.216450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016715, 0.974726, 0.222776,
		0.970199, -0.038056, 0.239304,
		0.241734, 0.220137, -0.945042,
		41.242222, 36.184067, 31.932938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978043, 36.432297, 33.284382>,  <41.073013, 36.029972, 32.594467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978043, 36.432297, 33.284382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294460, 36.631519, 33.142284>,  <41.484310, 36.751053, 33.057026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294460, 36.631519, 33.142284>,  <40.978043, 36.432297, 33.284382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294460, 36.631519, 33.142284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539951, -0.295440, 0.788142,
		0.287584, -0.815267, -0.502629,
		0.791042, 0.498052, -0.355241,
		41.531773, 36.780933, 33.035713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542881, 35.966373, 33.368259>,  <40.978043, 36.432297, 33.284382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542881, 35.966373, 33.368259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676041, 36.341217, 33.326313>,  <41.755936, 36.566124, 33.301144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676041, 36.341217, 33.326313>,  <41.542881, 35.966373, 33.368259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676041, 36.341217, 33.326313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764093, -0.202910, 0.612364,
		0.552575, -0.283984, -0.783590,
		0.332900, 0.937113, -0.104867,
		41.775909, 36.622353, 33.294853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301395, 36.029350, 33.284542>,  <41.542881, 35.966373, 33.368259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301395, 36.029350, 33.284542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217999, 36.405819, 33.390915>,  <42.167961, 36.631702, 33.454739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217999, 36.405819, 33.390915>,  <42.301395, 36.029350, 33.284542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217999, 36.405819, 33.390915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883808, 0.064873, 0.463330,
		0.418822, 0.331635, -0.845344,
		-0.208496, 0.941175, 0.265931,
		42.155449, 36.688171, 33.470695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766811, 36.576214, 32.967541>,  <42.301395, 36.029350, 33.284542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766811, 36.576214, 32.967541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653145, 36.680466, 33.336609>,  <42.584946, 36.743015, 33.558052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653145, 36.680466, 33.336609>,  <42.766811, 36.576214, 32.967541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653145, 36.680466, 33.336609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953636, 0.176342, 0.243890,
		-0.099142, 0.949199, -0.298652,
		-0.284164, 0.260625, 0.922673,
		42.567894, 36.758652, 33.613411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914307, 37.295635, 33.202438>,  <42.766811, 36.576214, 32.967541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914307, 37.295635, 33.202438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922981, 37.067829, 33.531116>,  <42.928188, 36.931145, 33.728325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922981, 37.067829, 33.531116>,  <42.914307, 37.295635, 33.202438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922981, 37.067829, 33.531116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948440, 0.271675, 0.163260,
		-0.316213, 0.775790, 0.546040,
		0.021690, -0.569511, 0.821697,
		42.929489, 36.896976, 33.777626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964165, 37.598492, 33.930462>,  <42.914307, 37.295635, 33.202438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964165, 37.598492, 33.930462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158600, 37.250271, 33.961063>,  <43.275261, 37.041336, 33.979424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158600, 37.250271, 33.961063>,  <42.964165, 37.598492, 33.930462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158600, 37.250271, 33.961063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861131, 0.492056, 0.127806,
		-0.148904, 0.003752, 0.988845,
		0.486087, -0.870555, 0.076500,
		43.304424, 36.989105, 33.984013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343246, 37.644863, 34.639435>,  <42.964165, 37.598492, 33.930462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343246, 37.644863, 34.639435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496628, 37.394821, 34.367489>,  <43.588657, 37.244797, 34.204323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496628, 37.394821, 34.367489>,  <43.343246, 37.644863, 34.639435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496628, 37.394821, 34.367489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901509, 0.413242, 0.128503,
		0.200621, -0.662178, 0.721992,
		0.383449, -0.625102, -0.679864,
		43.611664, 37.207291, 34.163528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197987, 37.012760, 35.139240>,  <43.343246, 37.644863, 34.639435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197987, 37.012760, 35.139240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514103, 36.820103, 35.290745>,  <43.703773, 36.704510, 35.381645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514103, 36.820103, 35.290745>,  <43.197987, 37.012760, 35.139240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514103, 36.820103, 35.290745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468718, -0.077082, 0.879979,
		-0.394640, -0.872971, -0.286671,
		0.790293, -0.481642, 0.378758,
		43.751190, 36.675610, 35.404373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008484, 36.384514, 35.439171>,  <43.197987, 37.012760, 35.139240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008484, 36.384514, 35.439171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359261, 36.491890, 35.598629>,  <43.569725, 36.556316, 35.694302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359261, 36.491890, 35.598629>,  <43.008484, 36.384514, 35.439171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359261, 36.491890, 35.598629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338359, -0.244207, 0.908777,
		0.341300, -0.931829, -0.123328,
		0.876942, 0.268436, 0.398641,
		43.622345, 36.572422, 35.718220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321339, 35.784950, 35.756287>,  <43.008484, 36.384514, 35.439171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321339, 35.784950, 35.756287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535069, 36.069382, 35.939095>,  <43.663307, 36.240040, 36.048779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535069, 36.069382, 35.939095>,  <43.321339, 35.784950, 35.756287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535069, 36.069382, 35.939095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246658, -0.385979, 0.888921,
		0.808493, -0.587697, -0.030843,
		0.534320, 0.711079, 0.457022,
		43.695366, 36.282703, 36.076202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622368, 35.419559, 36.239975>,  <43.321339, 35.784950, 35.756287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622368, 35.419559, 36.239975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680817, 35.800442, 36.347275>,  <43.715885, 36.028969, 36.411655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680817, 35.800442, 36.347275>,  <43.622368, 35.419559, 36.239975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680817, 35.800442, 36.347275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145543, -0.288898, 0.946232,
		0.978502, -0.099225, -0.180802,
		0.146123, 0.952204, 0.268246,
		43.724655, 36.086102, 36.427750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150486, 35.474937, 36.727077>,  <43.622368, 35.419559, 36.239975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150486, 35.474937, 36.727077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948021, 35.808517, 36.815010>,  <43.826542, 36.008667, 36.867771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948021, 35.808517, 36.815010>,  <44.150486, 35.474937, 36.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948021, 35.808517, 36.815010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107969, -0.191619, 0.975513,
		0.855653, 0.517504, 0.006950,
		-0.506163, 0.833950, 0.219833,
		43.796173, 36.058701, 36.880959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533001, 35.927395, 37.275337>,  <44.150486, 35.474937, 36.727077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533001, 35.927395, 37.275337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152927, 36.051296, 37.289242>,  <43.924885, 36.125637, 37.297585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152927, 36.051296, 37.289242>,  <44.533001, 35.927395, 37.275337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152927, 36.051296, 37.289242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003656, -0.100446, 0.994936,
		0.311674, 0.945497, 0.094310,
		-0.950182, 0.309751, 0.034763,
		43.867874, 36.144222, 37.299671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552486, 36.303581, 37.894424>,  <44.533001, 35.927395, 37.275337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552486, 36.303581, 37.894424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161839, 36.275471, 37.813164>,  <43.927448, 36.258606, 37.764408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161839, 36.275471, 37.813164>,  <44.552486, 36.303581, 37.894424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161839, 36.275471, 37.813164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200581, -0.041989, 0.978777,
		-0.077311, 0.996644, 0.026912,
		-0.976622, -0.070272, -0.203154,
		43.868851, 36.254391, 37.752216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158512, 36.911877, 38.213173>,  <44.552486, 36.303581, 37.894424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158512, 36.911877, 38.213173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958736, 36.566277, 38.187691>,  <43.838871, 36.358917, 38.172401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958736, 36.566277, 38.187691>,  <44.158512, 36.911877, 38.213173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958736, 36.566277, 38.187691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093764, -0.019196, 0.995409,
		-0.861259, 0.503122, -0.071425,
		-0.499442, -0.864002, -0.063707,
		43.808903, 36.307076, 38.168579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682308, 36.883274, 38.777115>,  <44.158512, 36.911877, 38.213173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682308, 36.883274, 38.777115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652718, 36.504791, 38.651119>,  <43.634964, 36.277702, 38.575523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652718, 36.504791, 38.651119>,  <43.682308, 36.883274, 38.777115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652718, 36.504791, 38.651119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190683, -0.296604, 0.935770,
		-0.978860, 0.129287, -0.158484,
		-0.073976, -0.946209, -0.314987,
		43.630524, 36.220928, 38.556622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356152, 36.539135, 39.288223>,  <43.682308, 36.883274, 38.777115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356152, 36.539135, 39.288223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470161, 36.211975, 39.088306>,  <43.538567, 36.015678, 38.968357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470161, 36.211975, 39.088306>,  <43.356152, 36.539135, 39.288223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470161, 36.211975, 39.088306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066243, -0.536987, 0.840986,
		-0.956228, -0.206596, -0.207236,
		0.285027, -0.817902, -0.499796,
		43.555668, 35.966606, 38.938366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897461, 35.992416, 39.534374>,  <43.356152, 36.539135, 39.288223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897461, 35.992416, 39.534374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219234, 35.806309, 39.386642>,  <43.412300, 35.694645, 39.298004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219234, 35.806309, 39.386642>,  <42.897461, 35.992416, 39.534374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219234, 35.806309, 39.386642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015936, -0.604605, 0.796366,
		-0.593814, -0.646518, -0.478957,
		0.804444, -0.465261, -0.369326,
		43.460564, 35.666729, 39.275845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743092, 35.230541, 39.619244>,  <42.897461, 35.992416, 39.534374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743092, 35.230541, 39.619244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140289, 35.269405, 39.592358>,  <43.378609, 35.292725, 39.576225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140289, 35.269405, 39.592358>,  <42.743092, 35.230541, 39.619244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140289, 35.269405, 39.592358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114333, -0.646971, 0.753894,
		0.029761, -0.756299, -0.653549,
		0.992997, 0.097159, -0.067215,
		43.438187, 35.298553, 39.572193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037823, 34.577312, 39.545288>,  <42.743092, 35.230541, 39.619244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037823, 34.577312, 39.545288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297153, 34.826065, 39.720985>,  <43.452751, 34.975319, 39.826405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297153, 34.826065, 39.720985>,  <43.037823, 34.577312, 39.545288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297153, 34.826065, 39.720985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316167, -0.744726, 0.587726,
		0.692611, -0.242166, -0.679445,
		0.648327, 0.621884, 0.439240,
		43.491653, 35.012630, 39.852757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692020, 34.190098, 39.622673>,  <43.037823, 34.577312, 39.545288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692020, 34.190098, 39.622673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761421, 34.497887, 39.868538>,  <43.803062, 34.682560, 40.016056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761421, 34.497887, 39.868538>,  <43.692020, 34.190098, 39.622673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761421, 34.497887, 39.868538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516174, -0.602587, 0.608649,
		0.838726, 0.211670, -0.501732,
		0.173504, 0.769470, 0.614664,
		43.813473, 34.728729, 40.052937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278576, 34.097511, 39.906132>,  <43.692020, 34.190098, 39.622673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278576, 34.097511, 39.906132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152500, 34.396904, 40.139515>,  <44.076855, 34.576542, 40.279545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152500, 34.396904, 40.139515>,  <44.278576, 34.097511, 39.906132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152500, 34.396904, 40.139515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449579, -0.423677, 0.786369,
		0.835785, 0.510165, -0.202966,
		-0.315186, 0.748484, 0.583462,
		44.057945, 34.621449, 40.314552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809048, 34.225693, 40.393616>,  <44.278576, 34.097511, 39.906132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809048, 34.225693, 40.393616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462723, 34.360264, 40.541771>,  <44.254929, 34.441006, 40.630665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462723, 34.360264, 40.541771>,  <44.809048, 34.225693, 40.393616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462723, 34.360264, 40.541771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211780, -0.424274, 0.880421,
		0.453349, 0.840717, 0.296090,
		-0.865808, 0.336432, 0.370391,
		44.202980, 34.461193, 40.652889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932114, 34.324402, 41.126762>,  <44.809048, 34.225693, 40.393616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932114, 34.324402, 41.126762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532253, 34.327034, 41.116570>,  <44.292336, 34.328613, 41.110455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532253, 34.327034, 41.116570>,  <44.932114, 34.324402, 41.126762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532253, 34.327034, 41.116570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024033, -0.622926, 0.781912,
		-0.010729, 0.782253, 0.622868,
		-0.999654, 0.006580, -0.025483,
		44.232357, 34.329006, 41.108925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697636, 34.580509, 41.682877>,  <44.932114, 34.324402, 41.126762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697636, 34.580509, 41.682877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406300, 34.344883, 41.542862>,  <44.231499, 34.203506, 41.458855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406300, 34.344883, 41.542862>,  <44.697636, 34.580509, 41.682877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406300, 34.344883, 41.542862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137772, -0.626298, 0.767313,
		-0.671225, 0.510638, 0.537314,
		-0.728337, -0.589067, -0.350036,
		44.187798, 34.168163, 41.437851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251091, 34.631138, 42.217041>,  <44.697636, 34.580509, 41.682877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251091, 34.631138, 42.217041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178810, 34.302319, 42.001045>,  <44.135441, 34.105026, 41.871449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178810, 34.302319, 42.001045>,  <44.251091, 34.631138, 42.217041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178810, 34.302319, 42.001045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220660, -0.568918, 0.792238,
		-0.958465, 0.024005, 0.284198,
		-0.180703, -0.822044, -0.539991,
		44.124599, 34.055706, 41.839046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186947, 34.131527, 42.711468>,  <44.251091, 34.631138, 42.217041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186947, 34.131527, 42.711468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192936, 33.926342, 42.368156>,  <44.196529, 33.803230, 42.162170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192936, 33.926342, 42.368156>,  <44.186947, 34.131527, 42.711468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192936, 33.926342, 42.368156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206506, -0.838284, 0.504614,
		-0.978331, -0.184797, 0.093376,
		0.014976, -0.512962, -0.858280,
		44.197430, 33.772453, 42.110672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583015, 33.641724, 42.494629>,  <44.186947, 34.131527, 42.711468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583015, 33.641724, 42.494629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958820, 33.545322, 42.397270>,  <44.184303, 33.487480, 42.338856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958820, 33.545322, 42.397270>,  <43.583015, 33.641724, 42.494629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958820, 33.545322, 42.397270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040197, -0.783253, 0.620402,
		-0.340161, -0.573089, -0.745560,
		0.939508, -0.241006, -0.243396,
		44.240673, 33.473022, 42.324253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.569218, 32.907135, 42.490021>,  <43.583015, 33.641724, 42.494629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.569218, 32.907135, 42.490021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962620, 32.971539, 42.522984>,  <44.198662, 33.010181, 42.542759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962620, 32.971539, 42.522984>,  <43.569218, 32.907135, 42.490021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962620, 32.971539, 42.522984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100188, -0.864279, 0.492934,
		0.150584, -0.476549, -0.866156,
		0.983507, 0.161006, 0.082403,
		44.257671, 33.019840, 42.547703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994312, 32.265488, 42.414112>,  <43.569218, 32.907135, 42.490021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994312, 32.265488, 42.414112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.190845, 32.518742, 42.653355>,  <44.308765, 32.670692, 42.796902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.190845, 32.518742, 42.653355>,  <43.994312, 32.265488, 42.414112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190845, 32.518742, 42.653355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218597, -0.754377, 0.618975,
		0.843092, -0.173379, -0.509053,
		0.491336, 0.633131, 0.598110,
		44.338245, 32.708679, 42.832787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293957, 32.103920, 43.137417>,  <43.994312, 32.265488, 42.414112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293957, 32.103920, 43.137417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651291, 32.098934, 42.957733>,  <44.865692, 32.095943, 42.849922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651291, 32.098934, 42.957733>,  <44.293957, 32.103920, 43.137417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651291, 32.098934, 42.957733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439337, -0.185990, 0.878857,
		-0.094500, -0.982472, -0.160678,
		0.893338, -0.012460, -0.449213,
		44.919292, 32.095196, 42.822968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723133, 32.140961, 43.668941>,  <44.293957, 32.103920, 43.137417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723133, 32.140961, 43.668941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363506, 32.041584, 43.813133>,  <44.147728, 31.981956, 43.899647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363506, 32.041584, 43.813133>,  <44.723133, 32.140961, 43.668941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363506, 32.041584, 43.813133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062050, -0.742762, -0.666674,
		0.433384, -0.621755, 0.652380,
		-0.899071, -0.248446, 0.360481,
		44.093784, 31.967051, 43.921276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761292, 31.432114, 43.749939>,  <44.723133, 32.140961, 43.668941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761292, 31.432114, 43.749939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399727, 31.562689, 43.639389>,  <44.182789, 31.641033, 43.573059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399727, 31.562689, 43.639389>,  <44.761292, 31.432114, 43.749939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399727, 31.562689, 43.639389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021022, -0.611475, -0.790984,
		-0.427203, -0.720790, 0.545857,
		-0.903912, 0.326436, -0.276376,
		44.128555, 31.660620, 43.556477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457569, 30.892107, 43.478001>,  <44.761292, 31.432114, 43.749939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457569, 30.892107, 43.478001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228535, 31.182129, 43.324928>,  <44.091114, 31.356142, 43.233086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228535, 31.182129, 43.324928>,  <44.457569, 30.892107, 43.478001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228535, 31.182129, 43.324928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154225, -0.553695, -0.818313,
		-0.805210, -0.409533, 0.428858,
		-0.572583, 0.725055, -0.382680,
		44.056759, 31.399645, 43.210125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734661, 30.748041, 43.389259>,  <44.457569, 30.892107, 43.478001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734661, 30.748041, 43.389259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898041, 30.963013, 43.094143>,  <43.996067, 31.091995, 42.917072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898041, 30.963013, 43.094143>,  <43.734661, 30.748041, 43.389259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898041, 30.963013, 43.094143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169599, -0.749535, -0.639871,
		-0.896888, 0.386481, -0.214997,
		0.408446, 0.537429, -0.737795,
		44.020573, 31.124241, 42.872803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662395, 30.703146, 42.790951>,  <43.734661, 30.748041, 43.389259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662395, 30.703146, 42.790951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899857, 30.702181, 42.469063>,  <44.042332, 30.701601, 42.275932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899857, 30.702181, 42.469063>,  <43.662395, 30.703146, 42.790951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899857, 30.702181, 42.469063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529508, -0.754184, -0.388365,
		-0.605968, 0.656658, -0.449003,
		0.593654, -0.002414, -0.804717,
		44.077953, 30.701456, 42.227646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162533, 30.411001, 42.229706>,  <43.662395, 30.703146, 42.790951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162533, 30.411001, 42.229706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522408, 30.389837, 42.056377>,  <43.738331, 30.377140, 41.952381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522408, 30.389837, 42.056377>,  <43.162533, 30.411001, 42.229706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522408, 30.389837, 42.056377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358961, -0.654547, -0.665369,
		-0.248428, 0.754168, -0.607877,
		0.899684, -0.052908, -0.433325,
		43.792313, 30.373964, 41.926380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057259, 29.688570, 41.873402>,  <43.162533, 30.411001, 42.229706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057259, 29.688570, 41.873402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717442, 29.827284, 41.714397>,  <42.513550, 29.910513, 41.618996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717442, 29.827284, 41.714397>,  <43.057259, 29.688570, 41.873402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717442, 29.827284, 41.714397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515131, 0.383018, -0.766771,
		-0.113651, -0.856176, -0.504030,
		-0.849543, 0.346785, -0.397512,
		42.462578, 29.931320, 41.595142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072903, 29.528725, 41.186371>,  <43.057259, 29.688570, 41.873402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072903, 29.528725, 41.186371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830441, 29.844986, 41.220863>,  <42.684963, 30.034742, 41.241558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830441, 29.844986, 41.220863>,  <43.072903, 29.528725, 41.186371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830441, 29.844986, 41.220863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480650, 0.450545, -0.752320,
		-0.633678, -0.414576, -0.653130,
		-0.606158, 0.790655, 0.086235,
		42.648594, 30.082182, 41.246735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979843, 29.615246, 40.501987>,  <43.072903, 29.528725, 41.186371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979843, 29.615246, 40.501987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826496, 29.947840, 40.662815>,  <42.734489, 30.147396, 40.759312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826496, 29.947840, 40.662815>,  <42.979843, 29.615246, 40.501987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826496, 29.947840, 40.662815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361263, 0.535647, -0.763264,
		-0.850012, -0.147356, -0.505734,
		-0.383366, 0.831486, 0.402072,
		42.711487, 30.197285, 40.783436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766918, 29.980227, 39.863041>,  <42.979843, 29.615246, 40.501987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766918, 29.980227, 39.863041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797939, 30.226423, 40.176769>,  <42.816551, 30.374142, 40.365005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797939, 30.226423, 40.176769>,  <42.766918, 29.980227, 39.863041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797939, 30.226423, 40.176769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538326, 0.636302, -0.552562,
		-0.839161, 0.465070, -0.281990,
		0.077550, 0.615491, 0.784319,
		42.821205, 30.411070, 40.412064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533806, 30.613571, 39.603687>,  <42.766918, 29.980227, 39.863041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533806, 30.613571, 39.603687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768585, 30.706680, 39.913864>,  <42.909454, 30.762547, 40.099972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768585, 30.706680, 39.913864>,  <42.533806, 30.613571, 39.603687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768585, 30.706680, 39.913864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462742, 0.689470, -0.557227,
		-0.664351, 0.685892, 0.296969,
		0.586948, 0.232774, 0.775441,
		42.944668, 30.776512, 40.146496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473083, 31.228048, 39.708241>,  <42.533806, 30.613571, 39.603687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473083, 31.228048, 39.708241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821083, 31.163237, 39.894505>,  <43.029884, 31.124350, 40.006264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821083, 31.163237, 39.894505>,  <42.473083, 31.228048, 39.708241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821083, 31.163237, 39.894505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474003, 0.534835, -0.699480,
		-0.135716, 0.829275, 0.542111,
		0.870001, -0.162031, 0.465665,
		43.082085, 31.114628, 40.034203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710693, 31.926027, 39.842094>,  <42.473083, 31.228048, 39.708241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710693, 31.926027, 39.842094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995659, 31.645418, 39.834805>,  <43.166637, 31.477053, 39.830429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995659, 31.645418, 39.834805>,  <42.710693, 31.926027, 39.842094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995659, 31.645418, 39.834805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580628, 0.603830, -0.546133,
		0.394132, 0.378488, 0.837500,
		0.712412, -0.701525, -0.018228,
		43.209381, 31.434961, 39.829334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371479, 32.194698, 40.082851>,  <42.710693, 31.926027, 39.842094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371479, 32.194698, 40.082851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468521, 31.864447, 39.879097>,  <43.526745, 31.666294, 39.756844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468521, 31.864447, 39.879097>,  <43.371479, 32.194698, 40.082851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468521, 31.864447, 39.879097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573803, 0.545501, -0.610884,
		0.782237, -0.144086, 0.606089,
		0.242602, -0.825632, -0.509388,
		43.541302, 31.616756, 39.726280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096176, 32.326981, 39.958004>,  <43.371479, 32.194698, 40.082851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096176, 32.326981, 39.958004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000980, 32.035767, 39.700840>,  <43.943863, 31.861038, 39.546543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000980, 32.035767, 39.700840>,  <44.096176, 32.326981, 39.958004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000980, 32.035767, 39.700840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568675, 0.432161, -0.699889,
		0.787382, -0.532171, 0.311165,
		-0.237987, -0.728032, -0.642908,
		43.929585, 31.817356, 39.507969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709003, 31.964281, 39.716328>,  <44.096176, 32.326981, 39.958004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709003, 31.964281, 39.716328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437607, 31.897358, 39.430206>,  <44.274769, 31.857204, 39.258533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437607, 31.897358, 39.430206>,  <44.709003, 31.964281, 39.716328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437607, 31.897358, 39.430206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594321, 0.447311, -0.668353,
		0.431785, -0.878591, -0.204061,
		-0.678487, -0.167307, -0.715306,
		44.234062, 31.847166, 39.215614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049194, 31.803495, 39.045456>,  <44.709003, 31.964281, 39.716328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049194, 31.803495, 39.045456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679367, 31.904152, 38.931015>,  <44.457470, 31.964546, 38.862350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679367, 31.904152, 38.931015>,  <45.049194, 31.803495, 39.045456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679367, 31.904152, 38.931015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380844, 0.587468, -0.714030,
		-0.011607, -0.769127, -0.638991,
		-0.924567, 0.251644, -0.286099,
		44.401997, 31.979645, 38.845184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125652, 31.789980, 38.381832>,  <45.049194, 31.803495, 39.045456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125652, 31.789980, 38.381832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818794, 32.039711, 38.440758>,  <44.634678, 32.189548, 38.476112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818794, 32.039711, 38.440758>,  <45.125652, 31.789980, 38.381832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818794, 32.039711, 38.440758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333691, 0.584537, -0.739572,
		-0.547847, -0.518202, -0.656757,
		-0.767147, 0.624326, 0.147318,
		44.588650, 32.227009, 38.484955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986507, 31.993345, 37.684319>,  <45.125652, 31.789980, 38.381832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986507, 31.993345, 37.684319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801731, 32.264904, 37.912605>,  <44.690865, 32.427837, 38.049576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801731, 32.264904, 37.912605>,  <44.986507, 31.993345, 37.684319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801731, 32.264904, 37.912605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245707, 0.716256, -0.653151,
		-0.852198, -0.161486, -0.497675,
		-0.461937, 0.678896, 0.570714,
		44.663151, 32.468575, 38.083820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561287, 32.324966, 37.196362>,  <44.986507, 31.993345, 37.684319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561287, 32.324966, 37.196362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615276, 32.553734, 37.520012>,  <44.647671, 32.690994, 37.714203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615276, 32.553734, 37.520012>,  <44.561287, 32.324966, 37.196362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615276, 32.553734, 37.520012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213677, 0.780584, -0.587393,
		-0.967535, 0.252176, -0.016846,
		0.134976, 0.571923, 0.809127,
		44.655769, 32.725311, 37.762749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142788, 32.916172, 37.135723>,  <44.561287, 32.324966, 37.196362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142788, 32.916172, 37.135723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447094, 32.989281, 37.384830>,  <44.629677, 33.033146, 37.534294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447094, 32.989281, 37.384830>,  <44.142788, 32.916172, 37.135723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447094, 32.989281, 37.384830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178341, 0.863731, -0.471343,
		-0.624048, 0.469644, 0.624498,
		0.760762, 0.182767, 0.622766,
		44.675323, 33.044109, 37.571659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409340, 33.621075, 36.893715>,  <44.142788, 32.916172, 37.135723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409340, 33.621075, 36.893715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674953, 33.585018, 37.190617>,  <44.834320, 33.563385, 37.368755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674953, 33.585018, 37.190617>,  <44.409340, 33.621075, 36.893715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674953, 33.585018, 37.190617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475076, 0.817435, -0.325734,
		-0.577379, 0.568923, 0.585628,
		0.664030, -0.090146, 0.742252,
		44.874161, 33.557976, 37.413292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320541, 34.223454, 37.321453>,  <44.409340, 33.621075, 36.893715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320541, 34.223454, 37.321453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691746, 34.079884, 37.361378>,  <44.914471, 33.993740, 37.385334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691746, 34.079884, 37.361378>,  <44.320541, 34.223454, 37.321453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691746, 34.079884, 37.361378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369879, 0.855697, -0.361901,
		0.044485, 0.372769, 0.926857,
		0.928014, -0.358924, 0.099813,
		44.970150, 33.972206, 37.391323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714394, 34.751755, 37.726749>,  <44.320541, 34.223454, 37.321453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714394, 34.751755, 37.726749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012047, 34.536072, 37.569004>,  <45.190639, 34.406662, 37.474358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012047, 34.536072, 37.569004>,  <44.714394, 34.751755, 37.726749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012047, 34.536072, 37.569004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465466, 0.841947, -0.272884,
		0.479174, 0.019499, 0.877503,
		0.744132, -0.539207, -0.394364,
		45.235287, 34.374310, 37.450695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383690, 35.067745, 37.870277>,  <44.714394, 34.751755, 37.726749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383690, 35.067745, 37.870277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460789, 34.820419, 37.565506>,  <45.507050, 34.672024, 37.382645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460789, 34.820419, 37.565506>,  <45.383690, 35.067745, 37.870277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460789, 34.820419, 37.565506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553864, 0.709525, -0.435671,
		0.809989, -0.338030, 0.479222,
		0.192750, -0.618313, -0.761930,
		45.518612, 34.634926, 37.336926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110176, 35.056324, 37.782665>,  <45.383690, 35.067745, 37.870277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110176, 35.056324, 37.782665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940216, 34.943153, 37.438709>,  <45.838238, 34.875252, 37.232334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940216, 34.943153, 37.438709>,  <46.110176, 35.056324, 37.782665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940216, 34.943153, 37.438709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443597, 0.762960, -0.470228,
		0.789102, -0.581245, -0.198677,
		-0.424900, -0.282925, -0.859891,
		45.812744, 34.858276, 37.180740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642090, 34.987984, 37.221596>,  <46.110176, 35.056324, 37.782665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642090, 34.987984, 37.221596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.285412, 35.038479, 37.047729>,  <46.071404, 35.068775, 36.943409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.285412, 35.038479, 37.047729>,  <46.642090, 34.987984, 37.221596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.285412, 35.038479, 37.047729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391444, 0.697230, -0.600535,
		0.227253, -0.705644, -0.671135,
		-0.891699, 0.126238, -0.434668,
		46.017902, 35.076351, 36.917328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.731644, 34.941532, 36.483814>,  <46.642090, 34.987984, 37.221596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.731644, 34.941532, 36.483814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430275, 35.178825, 36.597248>,  <46.249451, 35.321201, 36.665310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430275, 35.178825, 36.597248>,  <46.731644, 34.941532, 36.483814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430275, 35.178825, 36.597248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334571, 0.717158, -0.611348,
		-0.566049, -0.365726, -0.738805,
		-0.753426, 0.593235, 0.283585,
		46.204247, 35.356796, 36.682323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.240448, 35.070122, 35.859840>,  <46.731644, 34.941532, 36.483814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.240448, 35.070122, 35.859840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295265, 35.341358, 36.148674>,  <46.328156, 35.504101, 36.321976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295265, 35.341358, 36.148674>,  <46.240448, 35.070122, 35.859840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295265, 35.341358, 36.148674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421004, 0.619980, -0.662103,
		-0.896647, 0.394737, -0.200516,
		0.137041, 0.678091, 0.722089,
		46.336376, 35.544785, 36.365299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022598, 35.183498, 35.875187>,  <46.240448, 35.070122, 35.859840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022598, 35.183498, 35.875187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888020, 35.449684, 36.141708>,  <46.807274, 35.609394, 36.301620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888020, 35.449684, 36.141708>,  <47.022598, 35.183498, 35.875187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888020, 35.449684, 36.141708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742147, 0.248173, -0.622598,
		-0.579675, -0.703967, 0.410374,
		-0.336445, 0.665462, 0.666307,
		46.787086, 35.649323, 36.341602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268349, 34.976097, 35.165398>,  <47.022598, 35.183498, 35.875187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268349, 34.976097, 35.165398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566013, 35.219730, 35.275124>,  <47.744610, 35.365910, 35.340958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566013, 35.219730, 35.275124>,  <47.268349, 34.976097, 35.165398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.566013, 35.219730, 35.275124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362222, -0.712957, 0.600407,
		0.561270, -0.347435, -0.751175,
		0.744158, 0.609082, 0.274313,
		47.789261, 35.402454, 35.357418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.753098, 39.774261, 41.733444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406895, 39.741695, 41.931137>,  <37.199173, 39.722157, 42.049755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406895, 39.741695, 41.931137>,  <37.753098, 39.774261, 41.733444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406895, 39.741695, 41.931137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475585, -0.176128, -0.861857,
		0.157217, -0.980995, 0.113721,
		-0.865507, -0.081415, 0.494237,
		37.147243, 39.717270, 42.079407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425838, 39.241798, 41.522488>,  <37.753098, 39.774261, 41.733444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425838, 39.241798, 41.522488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124722, 39.465153, 41.661922>,  <36.944054, 39.599167, 41.745583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124722, 39.465153, 41.661922>,  <37.425838, 39.241798, 41.522488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124722, 39.465153, 41.661922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476391, -0.096691, -0.873901,
		-0.454271, -0.823925, 0.338799,
		-0.752788, 0.558389, 0.348587,
		36.898884, 39.632668, 41.766499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795883, 38.852516, 41.337162>,  <37.425838, 39.241798, 41.522488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795883, 38.852516, 41.337162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668648, 39.225689, 41.404633>,  <36.592304, 39.449593, 41.445114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668648, 39.225689, 41.404633>,  <36.795883, 38.852516, 41.337162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668648, 39.225689, 41.404633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486171, -0.007777, -0.873829,
		-0.813913, -0.359962, 0.456040,
		-0.318093, 0.932934, 0.168673,
		36.573219, 39.505569, 41.455235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104641, 38.873451, 41.164017>,  <36.795883, 38.852516, 41.337162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104641, 38.873451, 41.164017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204418, 39.260693, 41.154541>,  <36.264286, 39.493038, 41.148853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204418, 39.260693, 41.154541>,  <36.104641, 38.873451, 41.164017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204418, 39.260693, 41.154541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532350, 0.116647, -0.838449,
		-0.808939, 0.221758, 0.544464,
		0.249443, 0.968100, -0.023692,
		36.279251, 39.551121, 41.147434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450253, 39.268314, 41.055222>,  <36.104641, 38.873451, 41.164017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450253, 39.268314, 41.055222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734798, 39.531986, 40.957699>,  <35.905525, 39.690189, 40.899185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734798, 39.531986, 40.957699>,  <35.450253, 39.268314, 41.055222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734798, 39.531986, 40.957699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533728, 0.280971, -0.797615,
		-0.457266, 0.697525, 0.551695,
		0.711367, 0.659177, -0.243811,
		35.948208, 39.729740, 40.884556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994667, 39.868870, 40.804302>,  <35.450253, 39.268314, 41.055222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994667, 39.868870, 40.804302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366470, 39.921452, 40.666466>,  <35.589550, 39.953003, 40.583763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366470, 39.921452, 40.666466>,  <34.994667, 39.868870, 40.804302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366470, 39.921452, 40.666466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367555, 0.253145, -0.894886,
		-0.030409, 0.958455, 0.283618,
		0.929504, 0.131458, -0.344587,
		35.645321, 39.960888, 40.563091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866634, 40.478954, 40.403896>,  <34.994667, 39.868870, 40.804302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866634, 40.478954, 40.403896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.214474, 40.318493, 40.288742>,  <35.423176, 40.222218, 40.219650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.214474, 40.318493, 40.288742>,  <34.866634, 40.478954, 40.403896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214474, 40.318493, 40.288742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272679, 0.095909, -0.957313,
		0.411636, 0.910978, -0.025982,
		0.869599, -0.401149, -0.287884,
		35.475353, 40.198147, 40.202377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827881, 40.716354, 39.801159>,  <34.866634, 40.478954, 40.403896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827881, 40.716354, 39.801159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.124634, 40.450127, 39.768593>,  <35.302685, 40.290390, 39.749054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.124634, 40.450127, 39.768593>,  <34.827881, 40.716354, 39.801159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124634, 40.450127, 39.768593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282577, -0.200230, -0.938114,
		0.608077, 0.718977, -0.336622,
		0.741884, -0.665567, -0.081411,
		35.347198, 40.250458, 39.744171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186611, 41.008450, 39.243675>,  <34.827881, 40.716354, 39.801159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186611, 41.008450, 39.243675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258450, 40.617168, 39.285358>,  <35.301552, 40.382401, 39.310368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258450, 40.617168, 39.285358>,  <35.186611, 41.008450, 39.243675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258450, 40.617168, 39.285358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217479, -0.142786, -0.965565,
		0.959400, 0.150747, -0.238383,
		0.179594, -0.978206, 0.104205,
		35.312328, 40.323708, 39.316620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661377, 40.806438, 38.630650>,  <35.186611, 41.008450, 39.243675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661377, 40.806438, 38.630650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.468014, 40.488846, 38.778111>,  <35.351997, 40.298290, 38.866589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.468014, 40.488846, 38.778111>,  <35.661377, 40.806438, 38.630650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468014, 40.488846, 38.778111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163957, -0.331556, -0.929079,
		0.859906, -0.509565, 0.030097,
		-0.483405, -0.793986, 0.368654,
		35.322990, 40.250648, 38.888706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014484, 40.224243, 38.328629>,  <35.661377, 40.806438, 38.630650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014484, 40.224243, 38.328629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654995, 40.092842, 38.444828>,  <35.439301, 40.014004, 38.514549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654995, 40.092842, 38.444828>,  <36.014484, 40.224243, 38.328629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654995, 40.092842, 38.444828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141997, -0.408764, -0.901526,
		0.414896, -0.851470, 0.320719,
		-0.898720, -0.328498, 0.290501,
		35.385380, 39.994293, 38.531979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946060, 39.531658, 38.244003>,  <36.014484, 40.224243, 38.328629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946060, 39.531658, 38.244003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563995, 39.647827, 38.220970>,  <35.334755, 39.717529, 38.207150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563995, 39.647827, 38.220970>,  <35.946060, 39.531658, 38.244003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563995, 39.647827, 38.220970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089820, -0.469541, -0.878330,
		-0.282121, -0.833779, 0.474575,
		-0.955165, 0.290421, -0.057577,
		35.277447, 39.734955, 38.203697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722652, 39.089439, 37.720730>,  <35.946060, 39.531658, 38.244003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722652, 39.089439, 37.720730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413914, 39.342796, 37.742855>,  <35.228668, 39.494812, 37.756130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413914, 39.342796, 37.742855>,  <35.722652, 39.089439, 37.720730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413914, 39.342796, 37.742855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383050, -0.393817, -0.835572,
		-0.507466, -0.666122, 0.546590,
		-0.771849, 0.633396, 0.055310,
		35.182358, 39.532814, 37.759449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116768, 38.653847, 37.532932>,  <35.722652, 39.089439, 37.720730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116768, 38.653847, 37.532932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.014271, 39.036068, 37.474613>,  <34.952770, 39.265400, 37.439621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.014271, 39.036068, 37.474613>,  <35.116768, 38.653847, 37.532932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014271, 39.036068, 37.474613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222201, -0.205029, -0.953199,
		-0.940725, -0.211857, 0.264863,
		-0.256246, 0.955552, -0.145801,
		34.937397, 39.322735, 37.430874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641678, 38.609760, 37.013744>,  <35.116768, 38.653847, 37.532932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641678, 38.609760, 37.013744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740208, 38.997143, 36.998680>,  <34.799324, 39.229572, 36.989643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740208, 38.997143, 36.998680>,  <34.641678, 38.609760, 37.013744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740208, 38.997143, 36.998680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281917, 0.034417, -0.958822,
		-0.927280, 0.246797, 0.281502,
		0.246322, 0.968456, -0.037662,
		34.814106, 39.287678, 36.987381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045856, 38.910927, 36.795479>,  <34.641678, 38.609760, 37.013744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045856, 38.910927, 36.795479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351074, 39.157730, 36.718475>,  <34.534206, 39.305813, 36.672272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351074, 39.157730, 36.718475>,  <34.045856, 38.910927, 36.795479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351074, 39.157730, 36.718475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242148, -0.003254, -0.970234,
		-0.599270, 0.786949, 0.146925,
		0.763047, 0.617009, -0.192508,
		34.579987, 39.342834, 36.660725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809643, 39.417023, 36.318024>,  <34.045856, 38.910927, 36.795479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809643, 39.417023, 36.318024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205738, 39.446239, 36.270535>,  <34.443394, 39.463772, 36.242043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205738, 39.446239, 36.270535>,  <33.809643, 39.417023, 36.318024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205738, 39.446239, 36.270535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113129, -0.076458, -0.990634,
		-0.081439, 0.994393, -0.067447,
		0.990237, 0.073046, -0.118722,
		34.502808, 39.468155, 36.234917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923962, 39.888630, 35.750790>,  <33.809643, 39.417023, 36.318024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923962, 39.888630, 35.750790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.256725, 39.671154, 35.795212>,  <34.456383, 39.540668, 35.821865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.256725, 39.671154, 35.795212>,  <33.923962, 39.888630, 35.750790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256725, 39.671154, 35.795212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020596, -0.169740, -0.985274,
		0.554533, 0.821943, -0.130010,
		0.831907, -0.543689, 0.111055,
		34.506298, 39.508049, 35.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256596, 40.182018, 35.134624>,  <33.923962, 39.888630, 35.750790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256596, 40.182018, 35.134624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.445122, 39.857365, 35.272675>,  <34.558235, 39.662571, 35.355507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.445122, 39.857365, 35.272675>,  <34.256596, 40.182018, 35.134624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445122, 39.857365, 35.272675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246583, -0.254448, -0.935122,
		0.846795, 0.525836, 0.080212,
		0.471312, -0.811635, 0.345128,
		34.586514, 39.613873, 35.376213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015873, 40.149292, 34.891430>,  <34.256596, 40.182018, 35.134624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015873, 40.149292, 34.891430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874382, 39.783947, 34.972080>,  <34.789490, 39.564739, 35.020470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874382, 39.783947, 34.972080>,  <35.015873, 40.149292, 34.891430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874382, 39.783947, 34.972080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306703, -0.316905, -0.897499,
		0.883635, -0.255629, 0.392227,
		-0.353725, -0.913359, 0.201626,
		34.768265, 39.509937, 35.032570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546783, 39.668655, 34.749187>,  <35.015873, 40.149292, 34.891430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546783, 39.668655, 34.749187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192860, 39.483227, 34.730415>,  <34.980503, 39.371967, 34.719151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192860, 39.483227, 34.730415>,  <35.546783, 39.668655, 34.749187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192860, 39.483227, 34.730415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196499, -0.279915, -0.939700,
		0.422483, -0.840682, 0.338765,
		-0.884814, -0.463574, -0.046934,
		34.927414, 39.344154, 34.716335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731632, 38.962830, 34.612556>,  <35.546783, 39.668655, 34.749187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731632, 38.962830, 34.612556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354500, 39.012127, 34.488693>,  <35.128220, 39.041706, 34.414375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354500, 39.012127, 34.488693>,  <35.731632, 38.962830, 34.612556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354500, 39.012127, 34.488693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260776, -0.305776, -0.915695,
		-0.207533, -0.944094, 0.256157,
		-0.942829, 0.123237, -0.309656,
		35.071651, 39.049099, 34.395798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875011, 38.334644, 34.305870>,  <35.731632, 38.962830, 34.612556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875011, 38.334644, 34.305870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210129, 38.277592, 34.095058>,  <36.411198, 38.243359, 33.968571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210129, 38.277592, 34.095058>,  <35.875011, 38.334644, 34.305870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210129, 38.277592, 34.095058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377354, -0.546352, 0.747732,
		-0.394594, -0.825321, -0.403907,
		0.837794, -0.142635, -0.527026,
		36.461468, 38.234802, 33.936951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070808, 37.576447, 34.228817>,  <35.875011, 38.334644, 34.305870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070808, 37.576447, 34.228817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404964, 37.787777, 34.168167>,  <36.605457, 37.914574, 34.131779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404964, 37.787777, 34.168167>,  <36.070808, 37.576447, 34.228817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404964, 37.787777, 34.168167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427521, -0.451179, 0.783367,
		0.345462, -0.719242, -0.602782,
		0.835393, 0.528326, -0.151626,
		36.655582, 37.946274, 34.122681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642349, 37.102577, 34.389271>,  <36.070808, 37.576447, 34.228817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642349, 37.102577, 34.389271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786366, 37.474724, 34.416958>,  <36.872776, 37.698009, 34.433571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786366, 37.474724, 34.416958>,  <36.642349, 37.102577, 34.389271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786366, 37.474724, 34.416958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298243, -0.185084, 0.936373,
		0.883980, -0.316490, -0.344113,
		0.360042, 0.930364, 0.069220,
		36.894379, 37.753834, 34.437725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207878, 37.002369, 34.604309>,  <36.642349, 37.102577, 34.389271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207878, 37.002369, 34.604309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139442, 37.386932, 34.690495>,  <37.098381, 37.617672, 34.742207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139442, 37.386932, 34.690495>,  <37.207878, 37.002369, 34.604309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139442, 37.386932, 34.690495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274059, -0.163620, 0.947692,
		0.946372, 0.221189, -0.235489,
		-0.171088, 0.961407, 0.215464,
		37.088116, 37.675354, 34.755135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821915, 37.332184, 34.928326>,  <37.207878, 37.002369, 34.604309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821915, 37.332184, 34.928326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516800, 37.571003, 35.027683>,  <37.333733, 37.714294, 35.087299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516800, 37.571003, 35.027683>,  <37.821915, 37.332184, 34.928326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516800, 37.571003, 35.027683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351627, 0.060583, 0.934178,
		0.542698, 0.799917, -0.256149,
		-0.762783, 0.597045, 0.248394,
		37.287964, 37.750118, 35.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123276, 37.873772, 35.298859>,  <37.821915, 37.332184, 34.928326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123276, 37.873772, 35.298859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734406, 37.908104, 35.386040>,  <37.501083, 37.928703, 35.438347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734406, 37.908104, 35.386040>,  <38.123276, 37.873772, 35.298859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734406, 37.908104, 35.386040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234238, 0.360025, 0.903058,
		-0.000959, 0.928986, -0.370113,
		-0.972179, 0.085829, 0.217949,
		37.442753, 37.933853, 35.451424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134686, 38.452747, 35.670563>,  <38.123276, 37.873772, 35.298859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134686, 38.452747, 35.670563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805344, 38.242817, 35.756954>,  <37.607738, 38.116859, 35.808788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805344, 38.242817, 35.756954>,  <38.134686, 38.452747, 35.670563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805344, 38.242817, 35.756954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091717, 0.252510, 0.963238,
		-0.560070, 0.812893, -0.159770,
		-0.823353, -0.524827, 0.215979,
		37.558338, 38.085369, 35.821747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640896, 38.865021, 36.079433>,  <38.134686, 38.452747, 35.670563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640896, 38.865021, 36.079433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529709, 38.486965, 36.148075>,  <37.462997, 38.260132, 36.189259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529709, 38.486965, 36.148075>,  <37.640896, 38.865021, 36.079433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529709, 38.486965, 36.148075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109353, 0.146349, 0.983170,
		-0.954347, 0.292052, 0.062673,
		-0.277965, -0.945139, 0.171604,
		37.446320, 38.203423, 36.199554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044796, 38.892719, 36.558453>,  <37.640896, 38.865021, 36.079433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044796, 38.892719, 36.558453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197914, 38.523670, 36.577377>,  <37.289783, 38.302242, 36.588730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197914, 38.523670, 36.577377>,  <37.044796, 38.892719, 36.558453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197914, 38.523670, 36.577377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108638, 0.095808, 0.989454,
		-0.917425, -0.373615, 0.136907,
		0.382791, -0.922622, 0.047308,
		37.312752, 38.246883, 36.591568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629025, 38.559040, 37.043018>,  <37.044796, 38.892719, 36.558453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629025, 38.559040, 37.043018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986179, 38.378971, 37.046978>,  <37.200470, 38.270927, 37.049355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986179, 38.378971, 37.046978>,  <36.629025, 38.559040, 37.043018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986179, 38.378971, 37.046978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089939, 0.199840, 0.975692,
		-0.441210, -0.870291, 0.218922,
		0.892885, -0.450175, 0.009898,
		37.254044, 38.243919, 37.049946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640148, 38.351986, 37.692619>,  <36.629025, 38.559040, 37.043018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640148, 38.351986, 37.692619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018845, 38.312233, 37.570110>,  <37.246063, 38.288380, 37.496605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018845, 38.312233, 37.570110>,  <36.640148, 38.351986, 37.692619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018845, 38.312233, 37.570110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304311, -0.034710, 0.951940,
		-0.105243, -0.994443, -0.002616,
		0.946741, -0.099389, -0.306273,
		37.302868, 38.282417, 37.478230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911034, 37.767845, 38.118496>,  <36.640148, 38.351986, 37.692619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911034, 37.767845, 38.118496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214542, 37.985485, 37.975262>,  <37.396648, 38.116070, 37.889320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214542, 37.985485, 37.975262>,  <36.911034, 37.767845, 38.118496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214542, 37.985485, 37.975262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506712, -0.147632, 0.849381,
		0.409286, -0.825928, -0.387722,
		0.758767, 0.544103, -0.358084,
		37.442173, 38.148716, 37.867836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534634, 37.467037, 38.331055>,  <36.911034, 37.767845, 38.118496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534634, 37.467037, 38.331055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657570, 37.841297, 38.261662>,  <37.731331, 38.065853, 38.220024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657570, 37.841297, 38.261662>,  <37.534634, 37.467037, 38.331055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657570, 37.841297, 38.261662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480461, 0.004791, 0.877003,
		0.821402, -0.352887, -0.448073,
		0.307337, 0.935654, -0.173484,
		37.749771, 38.121994, 38.209618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281727, 37.570126, 38.561096>,  <37.534634, 37.467037, 38.331055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281727, 37.570126, 38.561096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183945, 37.957893, 38.552364>,  <38.125275, 38.190552, 38.547123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183945, 37.957893, 38.552364>,  <38.281727, 37.570126, 38.561096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183945, 37.957893, 38.552364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610957, 0.171468, 0.772872,
		0.752978, 0.175590, -0.634187,
		-0.244452, 0.969416, -0.021834,
		38.110611, 38.248718, 38.545815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956509, 37.998951, 38.559383>,  <38.281727, 37.570126, 38.561096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956509, 37.998951, 38.559383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643658, 38.212502, 38.687916>,  <38.455948, 38.340630, 38.765038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643658, 38.212502, 38.687916>,  <38.956509, 37.998951, 38.559383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643658, 38.212502, 38.687916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522047, 0.279862, 0.805695,
		0.340208, 0.797908, -0.497595,
		-0.782129, 0.533872, 0.321334,
		38.409019, 38.372662, 38.784317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286335, 38.748798, 38.861256>,  <38.956509, 37.998951, 38.559383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286335, 38.748798, 38.861256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916500, 38.714481, 39.009727>,  <38.694599, 38.693893, 39.098812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916500, 38.714481, 39.009727>,  <39.286335, 38.748798, 38.861256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916500, 38.714481, 39.009727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280530, 0.505891, 0.815707,
		-0.257758, 0.858321, -0.443674,
		-0.924589, -0.085791, 0.371182,
		38.639122, 38.688744, 39.121082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044411, 39.417236, 38.985191>,  <39.286335, 38.748798, 38.861256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044411, 39.417236, 38.985191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833614, 39.172436, 39.221066>,  <38.707138, 39.025555, 39.362591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833614, 39.172436, 39.221066>,  <39.044411, 39.417236, 38.985191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833614, 39.172436, 39.221066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319270, 0.500471, 0.804733,
		-0.787623, 0.612355, -0.068347,
		-0.526988, -0.612005, 0.589689,
		38.675518, 38.988834, 39.397972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713131, 39.842308, 39.514111>,  <39.044411, 39.417236, 38.985191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713131, 39.842308, 39.514111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707230, 39.468636, 39.656712>,  <38.703690, 39.244434, 39.742271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707230, 39.468636, 39.656712>,  <38.713131, 39.842308, 39.514111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707230, 39.468636, 39.656712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469463, 0.308329, 0.827368,
		-0.882829, 0.179570, 0.434014,
		-0.014751, -0.934178, 0.356503,
		38.702805, 39.188381, 39.763664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.346321, 39.925346, 40.171997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567184, 39.592339, 40.190033>,  <38.699703, 39.392532, 40.200855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567184, 39.592339, 40.190033>,  <38.346321, 39.925346, 40.171997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567184, 39.592339, 40.190033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372088, 0.294459, 0.880252,
		-0.746106, -0.469259, 0.472358,
		0.552156, -0.832520, 0.045092,
		38.732830, 39.342583, 40.203560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212040, 39.647045, 40.868130>,  <38.346321, 39.925346, 40.171997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212040, 39.647045, 40.868130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547203, 39.470200, 40.740101>,  <38.748302, 39.364094, 40.663284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547203, 39.470200, 40.740101>,  <38.212040, 39.647045, 40.868130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547203, 39.470200, 40.740101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418488, 0.143930, 0.896745,
		-0.350394, -0.885337, 0.305619,
		0.837909, -0.442112, -0.320071,
		38.798576, 39.337566, 40.644081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407425, 39.312080, 41.461174>,  <38.212040, 39.647045, 40.868130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407425, 39.312080, 41.461174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738075, 39.308598, 41.236099>,  <38.936466, 39.306507, 41.101055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738075, 39.308598, 41.236099>,  <38.407425, 39.312080, 41.461174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738075, 39.308598, 41.236099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552019, 0.206897, 0.807755,
		0.109381, -0.978324, 0.175835,
		0.826626, -0.008711, -0.562684,
		38.986065, 39.305984, 41.067295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787956, 38.879360, 41.865055>,  <38.407425, 39.312080, 41.461174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787956, 38.879360, 41.865055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.041637, 39.073875, 41.624619>,  <39.193848, 39.190586, 41.480358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.041637, 39.073875, 41.624619>,  <38.787956, 38.879360, 41.865055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041637, 39.073875, 41.624619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518720, 0.308886, 0.797194,
		0.573334, -0.817382, -0.056350,
		0.634206, 0.486288, -0.601087,
		39.231899, 39.219761, 41.444294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389332, 38.843792, 42.259739>,  <38.787956, 38.879360, 41.865055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389332, 38.843792, 42.259739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441891, 39.138790, 41.994762>,  <39.473427, 39.315788, 41.835777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441891, 39.138790, 41.994762>,  <39.389332, 38.843792, 42.259739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441891, 39.138790, 41.994762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676394, 0.421826, 0.603783,
		0.724724, -0.527411, -0.443410,
		0.131400, 0.737496, -0.662446,
		39.481312, 39.360039, 41.796028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144375, 38.940308, 42.252544>,  <39.389332, 38.843792, 42.259739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144375, 38.940308, 42.252544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.943657, 39.265427, 42.134182>,  <39.823227, 39.460499, 42.063164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.943657, 39.265427, 42.134182>,  <40.144375, 38.940308, 42.252544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943657, 39.265427, 42.134182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460094, 0.540494, 0.704400,
		0.732469, 0.217322, -0.645182,
		-0.501799, 0.812796, -0.295907,
		39.793118, 39.509266, 42.045410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584999, 39.500496, 42.355335>,  <40.144375, 38.940308, 42.252544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584999, 39.500496, 42.355335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.230576, 39.684910, 42.335964>,  <40.017921, 39.795559, 42.324341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.230576, 39.684910, 42.335964>,  <40.584999, 39.500496, 42.355335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230576, 39.684910, 42.335964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204242, 0.482028, 0.852018,
		0.416158, 0.745045, -0.521268,
		-0.886057, 0.461039, -0.048430,
		39.964760, 39.823223, 42.321434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701248, 40.089050, 42.630177>,  <40.584999, 39.500496, 42.355335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701248, 40.089050, 42.630177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302292, 40.075958, 42.655918>,  <40.062920, 40.068104, 42.671364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302292, 40.075958, 42.655918>,  <40.701248, 40.089050, 42.630177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302292, 40.075958, 42.655918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042951, 0.447524, 0.893240,
		-0.058037, 0.893673, -0.444951,
		-0.997390, -0.032730, 0.064357,
		40.003075, 40.066139, 42.675224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398960, 40.792854, 42.815628>,  <40.701248, 40.089050, 42.630177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398960, 40.792854, 42.815628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139652, 40.523769, 42.958294>,  <39.984066, 40.362320, 43.043892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139652, 40.523769, 42.958294>,  <40.398960, 40.792854, 42.815628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139652, 40.523769, 42.958294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007146, 0.463027, 0.886315,
		-0.761378, 0.577119, -0.295359,
		-0.648269, -0.672710, 0.356663,
		39.945171, 40.321957, 43.065292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126087, 41.198505, 43.327896>,  <40.398960, 40.792854, 42.815628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126087, 41.198505, 43.327896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.020363, 40.819550, 43.400105>,  <39.956928, 40.592175, 43.443428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.020363, 40.819550, 43.400105>,  <40.126087, 41.198505, 43.327896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020363, 40.819550, 43.400105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036722, 0.196927, 0.979730,
		-0.963739, 0.252320, -0.086839,
		-0.264307, -0.947393, 0.180521,
		39.941071, 40.535332, 43.454262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591167, 41.172581, 43.833683>,  <40.126087, 41.198505, 43.327896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591167, 41.172581, 43.833683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762474, 40.812496, 43.865208>,  <39.865257, 40.596447, 43.884125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762474, 40.812496, 43.865208>,  <39.591167, 41.172581, 43.833683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762474, 40.812496, 43.865208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040353, 0.068081, 0.996863,
		-0.902750, -0.430106, -0.007169,
		0.428269, -0.900208, 0.078816,
		39.890953, 40.542435, 43.888851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235607, 40.770786, 44.377674>,  <39.591167, 41.172581, 43.833683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235607, 40.770786, 44.377674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.597641, 40.605221, 44.338692>,  <39.814861, 40.505882, 44.315304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.597641, 40.605221, 44.338692>,  <39.235607, 40.770786, 44.377674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597641, 40.605221, 44.338692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067038, -0.087429, 0.993913,
		-0.419917, -0.906107, -0.051383,
		0.905083, -0.413916, -0.097457,
		39.869167, 40.481045, 44.309456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209328, 40.278271, 44.803520>,  <39.235607, 40.770786, 44.377674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209328, 40.278271, 44.803520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601830, 40.314365, 44.735397>,  <39.837330, 40.336021, 44.694523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601830, 40.314365, 44.735397>,  <39.209328, 40.278271, 44.803520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601830, 40.314365, 44.735397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182608, -0.152630, 0.971266,
		0.061656, -0.984155, -0.166247,
		0.981251, 0.090242, -0.170304,
		39.896206, 40.341438, 44.684307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511135, 39.661007, 45.055210>,  <39.209328, 40.278271, 44.803520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511135, 39.661007, 45.055210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800404, 39.935818, 45.026886>,  <39.973965, 40.100704, 45.009892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800404, 39.935818, 45.026886>,  <39.511135, 39.661007, 45.055210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800404, 39.935818, 45.026886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288301, -0.207117, 0.934872,
		0.627615, -0.696490, -0.347852,
		0.723175, 0.687026, -0.070808,
		40.017357, 40.141926, 45.005642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050545, 39.415638, 45.491566>,  <39.511135, 39.661007, 45.055210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050545, 39.415638, 45.491566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187527, 39.787216, 45.435295>,  <40.269718, 40.010162, 45.401531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187527, 39.787216, 45.435295>,  <40.050545, 39.415638, 45.491566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187527, 39.787216, 45.435295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424708, -0.019499, 0.905121,
		0.838061, -0.369712, -0.401206,
		0.342457, 0.928942, -0.140678,
		40.290264, 40.065899, 45.393093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684055, 39.477055, 45.844738>,  <40.050545, 39.415638, 45.491566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684055, 39.477055, 45.844738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591953, 39.864021, 45.802612>,  <40.536694, 40.096199, 45.777336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591953, 39.864021, 45.802612>,  <40.684055, 39.477055, 45.844738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591953, 39.864021, 45.802612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375566, 0.188184, 0.907490,
		0.897738, 0.169401, -0.406658,
		-0.230256, 0.967414, -0.105319,
		40.522877, 40.154247, 45.771015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377762, 39.846977, 45.862610>,  <40.684055, 39.477055, 45.844738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377762, 39.846977, 45.862610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.050426, 40.046921, 45.976074>,  <40.854023, 40.166885, 46.044151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.050426, 40.046921, 45.976074>,  <41.377762, 39.846977, 45.862610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050426, 40.046921, 45.976074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378779, 0.097869, 0.920298,
		0.432255, 0.860562, -0.269425,
		-0.818341, 0.499856, 0.283658,
		40.804924, 40.196877, 46.061172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523586, 40.346283, 46.374481>,  <41.377762, 39.846977, 45.862610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523586, 40.346283, 46.374481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139118, 40.397507, 46.472260>,  <40.908440, 40.428242, 46.530926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139118, 40.397507, 46.472260>,  <41.523586, 40.346283, 46.374481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139118, 40.397507, 46.472260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264492, 0.174764, 0.948421,
		0.078736, 0.976247, -0.201849,
		-0.961168, 0.128062, 0.244449,
		40.850769, 40.435925, 46.545593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432697, 41.004337, 46.623962>,  <41.523586, 40.346283, 46.374481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432697, 41.004337, 46.623962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115471, 40.813053, 46.774887>,  <40.925137, 40.698284, 46.865440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115471, 40.813053, 46.774887>,  <41.432697, 41.004337, 46.623962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115471, 40.813053, 46.774887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141867, 0.457385, 0.877880,
		-0.592386, 0.749744, -0.294894,
		-0.793065, -0.478208, 0.377313,
		40.877552, 40.669590, 46.888081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221329, 41.433678, 47.054588>,  <41.432697, 41.004337, 46.623962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221329, 41.433678, 47.054588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.022026, 41.110779, 47.181141>,  <40.902447, 40.917038, 47.257072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.022026, 41.110779, 47.181141>,  <41.221329, 41.433678, 47.054588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022026, 41.110779, 47.181141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140655, 0.284811, 0.948208,
		-0.855547, 0.516948, -0.028365,
		-0.498253, -0.807247, 0.316380,
		40.872551, 40.868607, 47.276054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701691, 41.683777, 47.418869>,  <41.221329, 41.433678, 47.054588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701691, 41.683777, 47.418869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739872, 41.312962, 47.563911>,  <40.762779, 41.090473, 47.650936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739872, 41.312962, 47.563911>,  <40.701691, 41.683777, 47.418869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739872, 41.312962, 47.563911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159321, 0.373804, 0.913722,
		-0.982602, -0.029442, 0.183376,
		0.095449, -0.927040, 0.362610,
		40.768505, 41.034851, 47.672695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338398, 41.768341, 48.068005>,  <40.701691, 41.683777, 47.418869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338398, 41.768341, 48.068005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.619312, 41.484020, 48.052242>,  <40.787861, 41.313427, 48.042786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.619312, 41.484020, 48.052242>,  <40.338398, 41.768341, 48.068005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619312, 41.484020, 48.052242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384264, 0.331896, 0.861502,
		-0.599283, -0.620161, 0.506223,
		0.702283, -0.710807, -0.039406,
		40.829998, 41.270779, 48.040421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879654, 42.149494, 48.713726>,  <40.338398, 41.768341, 48.068005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879654, 42.149494, 48.713726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.071754, 42.309715, 49.025860>,  <40.187016, 42.405849, 49.213139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.071754, 42.309715, 49.025860>,  <39.879654, 42.149494, 48.713726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071754, 42.309715, 49.025860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875388, -0.162787, -0.455189,
		-0.055301, 0.901696, -0.428820,
		0.480248, 0.400556, 0.780331,
		40.215828, 42.429882, 49.259960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300827, 41.934910, 49.160973>,  <39.879654, 42.149494, 48.713726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300827, 41.934910, 49.160973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069675, 41.790104, 49.453545>,  <38.930984, 41.703220, 49.629089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069675, 41.790104, 49.453545>,  <39.300827, 41.934910, 49.160973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069675, 41.790104, 49.453545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427639, -0.629026, -0.649193,
		0.695109, -0.687947, 0.208692,
		-0.577883, -0.362015, 0.731434,
		38.896309, 41.681499, 49.672974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478176, 41.204716, 49.222393>,  <39.300827, 41.934910, 49.160973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478176, 41.204716, 49.222393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.100494, 41.285889, 49.326164>,  <38.873886, 41.334591, 49.388428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.100494, 41.285889, 49.326164>,  <39.478176, 41.204716, 49.222393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100494, 41.285889, 49.326164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328144, -0.647408, -0.687883,
		0.028364, -0.734631, 0.677874,
		-0.944202, 0.202929, 0.259428,
		38.817234, 41.346767, 49.403992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186394, 40.626556, 49.240124>,  <39.478176, 41.204716, 49.222393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186394, 40.626556, 49.240124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841576, 40.829208, 49.234428>,  <38.634686, 40.950798, 49.231010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841576, 40.829208, 49.234428>,  <39.186394, 40.626556, 49.240124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841576, 40.829208, 49.234428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312571, -0.553543, -0.771939,
		-0.398968, -0.660996, 0.635537,
		-0.862046, 0.506630, -0.014238,
		38.582962, 40.981197, 49.230156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725334, 40.056183, 49.202751>,  <39.186394, 40.626556, 49.240124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725334, 40.056183, 49.202751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519138, 40.380390, 49.091511>,  <38.395420, 40.574913, 49.024765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519138, 40.380390, 49.091511>,  <38.725334, 40.056183, 49.202751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519138, 40.380390, 49.091511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455496, -0.534076, -0.712240,
		-0.725809, -0.240475, 0.644494,
		-0.515485, 0.810515, -0.278102,
		38.364494, 40.623543, 49.008080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967052, 39.910442, 49.196438>,  <38.725334, 40.056183, 49.202751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967052, 39.910442, 49.196438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047726, 40.205669, 48.938885>,  <38.096130, 40.382805, 48.784355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047726, 40.205669, 48.938885>,  <37.967052, 39.910442, 49.196438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047726, 40.205669, 48.938885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311497, -0.574922, -0.756594,
		-0.928597, 0.353160, 0.113953,
		0.201685, 0.738067, -0.643879,
		38.108231, 40.427090, 48.745720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370594, 39.914246, 48.723434>,  <37.967052, 39.910442, 49.196438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370594, 39.914246, 48.723434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643276, 40.125244, 48.520649>,  <37.806885, 40.251842, 48.398975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643276, 40.125244, 48.520649>,  <37.370594, 39.914246, 48.723434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643276, 40.125244, 48.520649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293469, -0.437588, -0.849937,
		-0.670185, 0.728189, -0.143503,
		0.681710, 0.527501, -0.506966,
		37.847790, 40.283493, 48.368561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066578, 40.222462, 48.084599>,  <37.370594, 39.914246, 48.723434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066578, 40.222462, 48.084599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452332, 40.202477, 47.980705>,  <37.683784, 40.190487, 47.918369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452332, 40.202477, 47.980705>,  <37.066578, 40.222462, 48.084599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452332, 40.202477, 47.980705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263585, -0.263132, -0.928054,
		-0.021976, 0.963465, -0.266931,
		0.964386, -0.049964, -0.259738,
		37.741646, 40.187489, 47.902782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133530, 40.538956, 47.441185>,  <37.066578, 40.222462, 48.084599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133530, 40.538956, 47.441185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492031, 40.364437, 47.473114>,  <37.707134, 40.259727, 47.492271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492031, 40.364437, 47.473114>,  <37.133530, 40.538956, 47.441185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492031, 40.364437, 47.473114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043623, -0.092397, -0.994766,
		0.441388, 0.895047, -0.063779,
		0.896256, -0.436295, 0.079827,
		37.760906, 40.233547, 47.497063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577000, 40.817459, 46.845131>,  <37.133530, 40.538956, 47.441185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577000, 40.817459, 46.845131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707298, 40.457981, 46.962593>,  <37.785477, 40.242294, 47.033070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707298, 40.457981, 46.962593>,  <37.577000, 40.817459, 46.845131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707298, 40.457981, 46.962593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050863, -0.293487, -0.954609,
		0.944087, 0.325899, -0.049893,
		0.325750, -0.898696, 0.293654,
		37.805023, 40.188374, 47.050690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184643, 40.779282, 46.499218>,  <37.577000, 40.817459, 46.845131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184643, 40.779282, 46.499218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088890, 40.405579, 46.604946>,  <38.031441, 40.181358, 46.668385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088890, 40.405579, 46.604946>,  <38.184643, 40.779282, 46.499218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088890, 40.405579, 46.604946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152443, -0.305027, -0.940064,
		0.958884, -0.184737, 0.215438,
		-0.239379, -0.934254, 0.264324,
		38.017075, 40.125301, 46.684242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694168, 40.320187, 46.236759>,  <38.184643, 40.779282, 46.499218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694168, 40.320187, 46.236759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373680, 40.089649, 46.301109>,  <38.181389, 39.951328, 46.339718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373680, 40.089649, 46.301109>,  <38.694168, 40.320187, 46.236759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373680, 40.089649, 46.301109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007627, -0.258998, -0.965848,
		0.598325, -0.775081, 0.203117,
		-0.801217, -0.576342, 0.160877,
		38.133316, 39.916748, 46.349373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858284, 39.695393, 45.896652>,  <38.694168, 40.320187, 46.236759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858284, 39.695393, 45.896652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461479, 39.711582, 45.944454>,  <38.223396, 39.721294, 45.973137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461479, 39.711582, 45.944454>,  <38.858284, 39.695393, 45.896652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461479, 39.711582, 45.944454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124535, -0.161800, -0.978934,
		-0.020284, -0.985993, 0.165548,
		-0.992008, 0.040473, 0.119508,
		38.163876, 39.723724, 45.980309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682178, 39.148869, 45.418167>,  <38.858284, 39.695393, 45.896652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682178, 39.148869, 45.418167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366245, 39.381939, 45.494743>,  <38.176685, 39.521782, 45.540688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366245, 39.381939, 45.494743>,  <38.682178, 39.148869, 45.418167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366245, 39.381939, 45.494743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255049, -0.028182, -0.966517,
		-0.557771, -0.812216, 0.170870,
		-0.789836, 0.582676, 0.191436,
		38.129295, 39.556740, 45.552174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171680, 38.813705, 45.093910>,  <38.682178, 39.148869, 45.418167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171680, 38.813705, 45.093910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035099, 39.188515, 45.123299>,  <37.953152, 39.413399, 45.140934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035099, 39.188515, 45.123299>,  <38.171680, 38.813705, 45.093910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035099, 39.188515, 45.123299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236592, -0.010032, -0.971557,
		-0.909635, -0.349121, 0.225118,
		-0.341450, 0.937024, 0.073474,
		37.932663, 39.469624, 45.145340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476894, 38.914837, 44.619194>,  <38.171680, 38.813705, 45.093910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476894, 38.914837, 44.619194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635735, 39.276722, 44.680904>,  <37.731041, 39.493855, 44.717930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635735, 39.276722, 44.680904>,  <37.476894, 38.914837, 44.619194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635735, 39.276722, 44.680904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149861, 0.229763, -0.961639,
		-0.905456, 0.358749, 0.226821,
		0.397102, 0.904714, 0.154278,
		37.754864, 39.548138, 44.727188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910252, 39.368771, 44.491196>,  <37.476894, 38.914837, 44.619194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910252, 39.368771, 44.491196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.252968, 39.571953, 44.455666>,  <37.458599, 39.693863, 44.434349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.252968, 39.571953, 44.455666>,  <36.910252, 39.368771, 44.491196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252968, 39.571953, 44.455666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218360, 0.201342, -0.954872,
		-0.467152, 0.837520, 0.283425,
		0.856789, 0.507960, -0.088824,
		37.510006, 39.724342, 44.429020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684101, 39.969933, 44.208988>,  <36.910252, 39.368771, 44.491196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684101, 39.969933, 44.208988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078140, 39.951733, 44.142632>,  <37.314564, 39.940815, 44.102818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078140, 39.951733, 44.142632>,  <36.684101, 39.969933, 44.208988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078140, 39.951733, 44.142632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153107, 0.207664, -0.966144,
		0.078405, 0.977142, 0.197602,
		0.985094, -0.045497, -0.165889,
		37.373669, 39.938084, 44.092865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701351, 40.484478, 43.811138>,  <36.684101, 39.969933, 44.208988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701351, 40.484478, 43.811138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.022106, 40.250668, 43.761658>,  <37.214558, 40.110382, 43.731968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.022106, 40.250668, 43.761658>,  <36.701351, 40.484478, 43.811138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022106, 40.250668, 43.761658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064027, 0.121782, -0.990490,
		0.594034, 0.802181, 0.060230,
		0.801887, -0.584529, -0.123704,
		37.262672, 40.075310, 43.724548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100754, 40.844738, 43.323307>,  <36.701351, 40.484478, 43.811138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100754, 40.844738, 43.323307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227341, 40.465370, 43.330845>,  <37.303291, 40.237751, 43.335369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227341, 40.465370, 43.330845>,  <37.100754, 40.844738, 43.323307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227341, 40.465370, 43.330845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091912, -0.050431, -0.994489,
		0.944140, 0.312991, -0.103130,
		0.316467, -0.948416, 0.018846,
		37.322281, 40.180847, 43.336498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462006, 40.863621, 42.671410>,  <37.100754, 40.844738, 43.323307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462006, 40.863621, 42.671410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378029, 40.488518, 42.782074>,  <37.327644, 40.263458, 42.848473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378029, 40.488518, 42.782074>,  <37.462006, 40.863621, 42.671410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378029, 40.488518, 42.782074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212369, -0.232474, -0.949134,
		0.954372, -0.258015, -0.150344,
		-0.209939, -0.937755, 0.276661,
		37.315048, 40.207191, 42.865074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741222, 40.437477, 42.164337>,  <37.462006, 40.863621, 42.671410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741222, 40.437477, 42.164337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480267, 40.202797, 42.356243>,  <37.323692, 40.061989, 42.471386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480267, 40.202797, 42.356243>,  <37.741222, 40.437477, 42.164337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480267, 40.202797, 42.356243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310641, -0.370408, -0.875386,
		0.691301, -0.720122, 0.059394,
		-0.652385, -0.586704, 0.479762,
		37.284550, 40.026787, 42.500172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.428650, 32.943726, 41.440456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101295, 33.080101, 41.625500>,  <43.904881, 33.161926, 41.736526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101295, 33.080101, 41.625500>,  <44.428650, 32.943726, 41.440456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101295, 33.080101, 41.625500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128456, 0.676098, -0.725527,
		-0.560124, -0.653188, -0.509516,
		-0.818388, 0.340935, 0.462605,
		43.855778, 33.182381, 41.764282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816372, 33.003853, 41.004890>,  <44.428650, 32.943726, 41.440456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816372, 33.003853, 41.004890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879391, 33.292877, 41.274139>,  <43.917202, 33.466290, 41.435688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879391, 33.292877, 41.274139>,  <43.816372, 33.003853, 41.004890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879391, 33.292877, 41.274139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305956, 0.683807, -0.662419,
		-0.938920, -0.101583, 0.328802,
		0.157546, 0.722557, 0.673120,
		43.926655, 33.509644, 41.476074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222317, 33.452221, 41.065430>,  <43.816372, 33.003853, 41.004890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222317, 33.452221, 41.065430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.534229, 33.675804, 41.178219>,  <43.721378, 33.809956, 41.245892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.534229, 33.675804, 41.178219>,  <43.222317, 33.452221, 41.065430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534229, 33.675804, 41.178219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334710, 0.752840, -0.566746,
		-0.529067, 0.347558, 0.774139,
		0.779780, 0.558959, 0.281971,
		43.768162, 33.843491, 41.262810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025299, 34.105423, 41.070976>,  <43.222317, 33.452221, 41.065430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025299, 34.105423, 41.070976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417603, 34.177570, 41.041088>,  <43.652985, 34.220860, 41.023155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417603, 34.177570, 41.041088>,  <43.025299, 34.105423, 41.070976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417603, 34.177570, 41.041088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195082, 0.890265, -0.411548,
		-0.007708, 0.418205, 0.908320,
		0.980757, 0.180369, -0.074722,
		43.711830, 34.231682, 41.018673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038773, 34.842209, 41.055473>,  <43.025299, 34.105423, 41.070976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038773, 34.842209, 41.055473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393803, 34.727268, 40.911449>,  <43.606819, 34.658302, 40.825035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393803, 34.727268, 40.911449>,  <43.038773, 34.842209, 41.055473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393803, 34.727268, 40.911449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016488, 0.761285, -0.648207,
		0.460371, 0.581268, 0.670959,
		0.887574, -0.287353, -0.360057,
		43.660076, 34.641064, 40.803432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500019, 35.501209, 41.065075>,  <43.038773, 34.842209, 41.055473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500019, 35.501209, 41.065075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.655972, 35.218304, 40.829185>,  <43.749542, 35.048561, 40.687653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.655972, 35.218304, 40.829185>,  <43.500019, 35.501209, 41.065075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655972, 35.218304, 40.829185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047956, 0.623933, -0.780005,
		0.919617, 0.332388, 0.209340,
		0.389878, -0.707267, -0.589719,
		43.772934, 35.006123, 40.652271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976044, 35.872211, 40.661526>,  <43.500019, 35.501209, 41.065075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976044, 35.872211, 40.661526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960732, 35.519478, 40.473522>,  <43.951546, 35.307838, 40.360722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960732, 35.519478, 40.473522>,  <43.976044, 35.872211, 40.661526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960732, 35.519478, 40.473522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056962, 0.471513, -0.880017,
		0.997642, -0.006912, -0.068280,
		-0.038278, -0.881832, -0.470008,
		43.949249, 35.254929, 40.332520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446201, 35.910427, 40.101963>,  <43.976044, 35.872211, 40.661526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446201, 35.910427, 40.101963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.172760, 35.628830, 40.024925>,  <44.008698, 35.459873, 39.978703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.172760, 35.628830, 40.024925>,  <44.446201, 35.910427, 40.101963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172760, 35.628830, 40.024925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120541, 0.369150, -0.921519,
		0.719835, -0.606734, -0.337210,
		-0.683599, -0.703990, -0.192591,
		43.967682, 35.417633, 39.967148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700066, 35.571873, 39.436409>,  <44.446201, 35.910427, 40.101963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700066, 35.571873, 39.436409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316925, 35.461639, 39.468868>,  <44.087040, 35.395500, 39.488342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316925, 35.461639, 39.468868>,  <44.700066, 35.571873, 39.436409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316925, 35.461639, 39.468868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144877, 0.219463, -0.964804,
		0.248083, -0.935888, -0.250138,
		-0.957844, -0.275590, 0.081143,
		44.029572, 35.378963, 39.493214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581848, 35.161568, 38.962780>,  <44.700066, 35.571873, 39.436409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581848, 35.161568, 38.962780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232258, 35.338638, 39.042992>,  <44.022503, 35.444881, 39.091118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232258, 35.338638, 39.042992>,  <44.581848, 35.161568, 38.962780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232258, 35.338638, 39.042992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071123, 0.291683, -0.953867,
		-0.480743, -0.847916, -0.223439,
		-0.873973, 0.442674, 0.200531,
		43.970066, 35.471439, 39.103149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213001, 35.025158, 38.413284>,  <44.581848, 35.161568, 38.962780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213001, 35.025158, 38.413284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000328, 35.326096, 38.568871>,  <43.872723, 35.506657, 38.662224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000328, 35.326096, 38.568871>,  <44.213001, 35.025158, 38.413284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000328, 35.326096, 38.568871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165605, 0.358043, -0.918902,
		-0.830592, -0.552983, -0.065776,
		-0.531687, 0.752340, 0.388964,
		43.840820, 35.551796, 38.685558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595428, 35.009144, 38.050301>,  <44.213001, 35.025158, 38.413284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595428, 35.009144, 38.050301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.640533, 35.380085, 38.193016>,  <43.667599, 35.602650, 38.278645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.640533, 35.380085, 38.193016>,  <43.595428, 35.009144, 38.050301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640533, 35.380085, 38.193016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242215, 0.373904, -0.895281,
		-0.963647, 0.014537, 0.266782,
		0.112766, 0.927354, 0.356791,
		43.674362, 35.658291, 38.300053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973915, 35.334728, 37.868042>,  <43.595428, 35.009144, 38.050301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973915, 35.334728, 37.868042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214203, 35.640312, 37.962273>,  <43.358376, 35.823662, 38.018810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214203, 35.640312, 37.962273>,  <42.973915, 35.334728, 37.868042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214203, 35.640312, 37.962273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234698, 0.450209, -0.861527,
		-0.764231, 0.462250, 0.449751,
		0.600723, 0.763961, 0.235575,
		43.394421, 35.869499, 38.032944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634861, 35.950054, 37.588440>,  <42.973915, 35.334728, 37.868042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634861, 35.950054, 37.588440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.027756, 36.019188, 37.617668>,  <43.263493, 36.060669, 37.635204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.027756, 36.019188, 37.617668>,  <42.634861, 35.950054, 37.588440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027756, 36.019188, 37.617668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019847, 0.482904, -0.875448,
		-0.186596, 0.858447, 0.477756,
		0.982236, 0.172837, 0.073070,
		43.322426, 36.071037, 37.639587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678516, 36.663738, 37.333645>,  <42.634861, 35.950054, 37.588440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678516, 36.663738, 37.333645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037010, 36.488064, 37.308731>,  <43.252106, 36.382660, 37.293781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037010, 36.488064, 37.308731>,  <42.678516, 36.663738, 37.333645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037010, 36.488064, 37.308731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078313, 0.294868, -0.952323,
		0.436610, 0.848629, 0.298665,
		0.896236, -0.439184, -0.062283,
		43.305882, 36.356308, 37.290047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109306, 37.138340, 37.145756>,  <42.678516, 36.663738, 37.333645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109306, 37.138340, 37.145756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335560, 36.820190, 37.058628>,  <43.471310, 36.629303, 37.006351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335560, 36.820190, 37.058628>,  <43.109306, 37.138340, 37.145756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335560, 36.820190, 37.058628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219914, 0.400054, -0.889716,
		0.794796, 0.455348, 0.401195,
		0.565630, -0.795371, -0.217824,
		43.505249, 36.581577, 36.993282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679176, 37.352230, 36.709251>,  <43.109306, 37.138340, 37.145756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679176, 37.352230, 36.709251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736576, 36.959652, 36.658394>,  <43.771015, 36.724106, 36.627880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736576, 36.959652, 36.658394>,  <43.679176, 37.352230, 36.709251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736576, 36.959652, 36.658394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499659, 0.182748, -0.846726,
		0.854253, 0.057981, 0.516614,
		0.143504, -0.981449, -0.127142,
		43.779629, 36.665218, 36.620251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384232, 37.281185, 36.552216>,  <43.679176, 37.352230, 36.709251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384232, 37.281185, 36.552216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.151550, 36.984821, 36.417946>,  <44.011940, 36.807003, 36.337383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.151550, 36.984821, 36.417946>,  <44.384232, 37.281185, 36.552216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151550, 36.984821, 36.417946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370428, 0.126100, -0.920262,
		0.724156, -0.659665, 0.201099,
		-0.581706, -0.740905, -0.335675,
		43.977039, 36.762550, 36.317242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773758, 36.923569, 36.079239>,  <44.384232, 37.281185, 36.552216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773758, 36.923569, 36.079239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404743, 36.783428, 36.014523>,  <44.183334, 36.699345, 35.975693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404743, 36.783428, 36.014523>,  <44.773758, 36.923569, 36.079239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404743, 36.783428, 36.014523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260580, -0.256315, -0.930806,
		0.284643, -0.900863, 0.327756,
		-0.922538, -0.350354, -0.161789,
		44.127983, 36.678322, 35.965984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814629, 36.151321, 35.987442>,  <44.773758, 36.923569, 36.079239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814629, 36.151321, 35.987442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490444, 36.290272, 35.798771>,  <44.295933, 36.373642, 35.685566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490444, 36.290272, 35.798771>,  <44.814629, 36.151321, 35.987442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490444, 36.290272, 35.798771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424486, -0.206629, -0.881542,
		-0.403687, -0.914678, 0.020009,
		-0.810461, 0.347373, -0.471681,
		44.247307, 36.394482, 35.657265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977768, 35.758842, 36.661343>,  <44.814629, 36.151321, 35.987442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977768, 35.758842, 36.661343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331791, 35.623558, 36.533413>,  <45.544205, 35.542389, 36.456654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331791, 35.623558, 36.533413>,  <44.977768, 35.758842, 36.661343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331791, 35.623558, 36.533413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222598, -0.910949, 0.347306,
		-0.408805, -0.236193, -0.881528,
		0.885058, -0.338207, -0.319825,
		45.597309, 35.522095, 36.437466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946869, 35.223412, 36.146275>,  <44.977768, 35.758842, 36.661343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946869, 35.223412, 36.146275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.279976, 35.190716, 36.365295>,  <45.479839, 35.171101, 36.496708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.279976, 35.190716, 36.365295>,  <44.946869, 35.223412, 36.146275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279976, 35.190716, 36.365295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271048, -0.922592, 0.274513,
		0.482730, -0.377019, -0.790461,
		0.832769, -0.081737, 0.547553,
		45.529808, 35.166195, 36.529560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168358, 34.540928, 36.072884>,  <44.946869, 35.223412, 36.146275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168358, 34.540928, 36.072884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363869, 34.637249, 36.408291>,  <45.481174, 34.695042, 36.609535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363869, 34.637249, 36.408291>,  <45.168358, 34.540928, 36.072884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363869, 34.637249, 36.408291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065664, -0.948271, 0.310595,
		0.869933, -0.206873, -0.447684,
		0.488779, 0.240800, 0.838516,
		45.510502, 34.709488, 36.659847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607368, 33.953243, 36.244530>,  <45.168358, 34.540928, 36.072884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607368, 33.953243, 36.244530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587494, 34.167709, 36.581589>,  <45.575569, 34.296391, 36.783825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587494, 34.167709, 36.581589>,  <45.607368, 33.953243, 36.244530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587494, 34.167709, 36.581589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269669, -0.819556, 0.505575,
		0.961670, -0.202117, 0.185307,
		-0.049684, 0.536168, 0.842648,
		45.572590, 34.328560, 36.834385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074760, 33.706474, 36.771896>,  <45.607368, 33.953243, 36.244530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074760, 33.706474, 36.771896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.784992, 33.895050, 36.973080>,  <45.611134, 34.008194, 37.093788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.784992, 33.895050, 36.973080>,  <46.074760, 33.706474, 36.771896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784992, 33.895050, 36.973080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166475, -0.827640, 0.536002,
		0.668960, 0.304558, 0.678039,
		-0.724416, 0.471440, 0.502957,
		45.567669, 34.036484, 37.123966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223450, 33.532578, 37.451828>,  <46.074760, 33.706474, 36.771896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223450, 33.532578, 37.451828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846092, 33.663506, 37.430420>,  <45.619678, 33.742062, 37.417576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846092, 33.663506, 37.430420>,  <46.223450, 33.532578, 37.451828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846092, 33.663506, 37.430420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281941, -0.706461, 0.649170,
		0.174672, 0.627516, 0.758758,
		-0.943398, 0.327317, -0.053523,
		45.563072, 33.761700, 37.414364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936855, 33.407772, 38.126114>,  <46.223450, 33.532578, 37.451828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936855, 33.407772, 38.126114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607021, 33.444515, 37.902821>,  <45.409122, 33.466560, 37.768845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607021, 33.444515, 37.902821>,  <45.936855, 33.407772, 38.126114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607021, 33.444515, 37.902821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477215, -0.642897, 0.599124,
		-0.303850, 0.760425, 0.573959,
		-0.824585, 0.091858, -0.558230,
		45.359646, 33.472073, 37.735352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500721, 33.425430, 38.643570>,  <45.936855, 33.407772, 38.126114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500721, 33.425430, 38.643570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245712, 33.365906, 38.341202>,  <45.092705, 33.330189, 38.159782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245712, 33.365906, 38.341202>,  <45.500721, 33.425430, 38.643570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245712, 33.365906, 38.341202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602642, -0.514952, 0.609628,
		-0.479985, 0.844202, 0.238613,
		-0.637524, -0.148815, -0.755921,
		45.054455, 33.321262, 38.114426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787006, 33.442268, 38.919884>,  <45.500721, 33.425430, 38.643570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787006, 33.442268, 38.919884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749073, 33.251522, 38.570347>,  <44.726311, 33.137074, 38.360622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749073, 33.251522, 38.570347>,  <44.787006, 33.442268, 38.919884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749073, 33.251522, 38.570347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487999, -0.742827, 0.458328,
		-0.867677, 0.469902, -0.162263,
		-0.094836, -0.476865, -0.873846,
		44.720623, 33.108463, 38.308193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063435, 33.381680, 38.811386>,  <44.787006, 33.442268, 38.919884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063435, 33.381680, 38.811386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253635, 33.096508, 38.605232>,  <44.367756, 32.925404, 38.481541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253635, 33.096508, 38.605232>,  <44.063435, 33.381680, 38.811386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253635, 33.096508, 38.605232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468420, -0.701087, 0.537643,
		-0.744637, -0.014230, -0.667318,
		0.475499, -0.712933, -0.515390,
		44.396286, 32.882629, 38.450615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503593, 32.929951, 38.575447>,  <44.063435, 33.381680, 38.811386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503593, 32.929951, 38.575447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844372, 32.720852, 38.563255>,  <44.048840, 32.595394, 38.555943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844372, 32.720852, 38.563255>,  <43.503593, 32.929951, 38.575447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844372, 32.720852, 38.563255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448611, -0.758665, 0.472414,
		-0.270074, -0.388798, -0.880850,
		0.851943, -0.522746, -0.030476,
		44.099957, 32.564030, 38.554111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206337, 32.351357, 38.502117>,  <43.503593, 32.929951, 38.575447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206337, 32.351357, 38.502117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580196, 32.238861, 38.589149>,  <43.804512, 32.171364, 38.641369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580196, 32.238861, 38.589149>,  <43.206337, 32.351357, 38.502117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580196, 32.238861, 38.589149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354727, -0.695094, 0.625310,
		-0.024622, -0.661626, -0.749430,
		0.934646, -0.281240, 0.217582,
		43.860592, 32.154488, 38.654423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236122, 31.626690, 38.388176>,  <43.206337, 32.351357, 38.502117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236122, 31.626690, 38.388176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550430, 31.678089, 38.630184>,  <43.739014, 31.708929, 38.775391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550430, 31.678089, 38.630184>,  <43.236122, 31.626690, 38.388176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550430, 31.678089, 38.630184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316816, -0.756497, 0.572136,
		0.531217, -0.641248, -0.553723,
		0.785771, 0.128501, 0.605022,
		43.786163, 31.716639, 38.811691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364067, 30.916512, 38.687359>,  <43.236122, 31.626690, 38.388176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364067, 30.916512, 38.687359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563503, 31.166996, 38.927113>,  <43.683167, 31.317286, 39.070965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563503, 31.166996, 38.927113>,  <43.364067, 30.916512, 38.687359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563503, 31.166996, 38.927113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396771, -0.449912, 0.800095,
		0.770699, -0.636743, 0.024137,
		0.498595, 0.626209, 0.599388,
		43.713081, 31.354858, 39.106930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935078, 30.541321, 39.193153>,  <43.364067, 30.916512, 38.687359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935078, 30.541321, 39.193153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816093, 30.889355, 39.350365>,  <43.744705, 31.098175, 39.444691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816093, 30.889355, 39.350365>,  <43.935078, 30.541321, 39.193153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816093, 30.889355, 39.350365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168013, -0.452939, 0.875567,
		0.939835, 0.194411, 0.280916,
		-0.297458, 0.870087, 0.393024,
		43.726856, 31.150381, 39.468273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156277, 30.471107, 39.940693>,  <43.935078, 30.541321, 39.193153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156277, 30.471107, 39.940693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915432, 30.790127, 39.925846>,  <43.770927, 30.981539, 39.916939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915432, 30.790127, 39.925846>,  <44.156277, 30.471107, 39.940693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915432, 30.790127, 39.925846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349165, -0.221223, 0.910573,
		0.718017, 0.561226, 0.411677,
		-0.602110, 0.797550, -0.037119,
		43.734798, 31.029392, 39.914711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212803, 30.752176, 40.584717>,  <44.156277, 30.471107, 39.940693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212803, 30.752176, 40.584717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873154, 30.866518, 40.407055>,  <43.669365, 30.935123, 40.300457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873154, 30.866518, 40.407055>,  <44.212803, 30.752176, 40.584717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873154, 30.866518, 40.407055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527194, -0.406992, 0.745939,
		0.032463, 0.867551, 0.496287,
		-0.849125, 0.285855, -0.444155,
		43.618416, 30.952274, 40.273808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746983, 30.962494, 41.141296>,  <44.212803, 30.752176, 40.584717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746983, 30.962494, 41.141296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500107, 30.925495, 40.828751>,  <43.351982, 30.903296, 40.641224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500107, 30.925495, 40.828751>,  <43.746983, 30.962494, 41.141296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500107, 30.925495, 40.828751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627040, -0.542062, 0.559456,
		-0.475293, 0.835233, 0.276554,
		-0.617185, -0.092495, -0.781362,
		43.314953, 30.897747, 40.594341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140594, 31.164007, 41.351902>,  <43.746983, 30.962494, 41.141296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140594, 31.164007, 41.351902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018768, 30.931223, 41.050289>,  <42.945671, 30.791553, 40.869320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018768, 30.931223, 41.050289>,  <43.140594, 31.164007, 41.351902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018768, 30.931223, 41.050289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719432, -0.378257, 0.582528,
		-0.624225, 0.719893, -0.303475,
		-0.304567, -0.581959, -0.754032,
		42.927399, 30.756636, 40.824081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443340, 31.360422, 41.335102>,  <43.140594, 31.164007, 41.351902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443340, 31.360422, 41.335102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498997, 31.005251, 41.159729>,  <42.532391, 30.792149, 41.054504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.498997, 31.005251, 41.159729>,  <42.443340, 31.360422, 41.335102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498997, 31.005251, 41.159729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611094, -0.425375, 0.667548,
		-0.779233, 0.175041, -0.601794,
		0.139141, -0.887928, -0.438433,
		42.540737, 30.738873, 41.028198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801727, 31.029705, 41.341030>,  <42.443340, 31.360422, 41.335102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801727, 31.029705, 41.341030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047649, 30.717730, 41.294209>,  <42.195202, 30.530544, 41.266113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047649, 30.717730, 41.294209>,  <41.801727, 31.029705, 41.341030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047649, 30.717730, 41.294209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627418, -0.573615, 0.526604,
		-0.477866, -0.250318, -0.842013,
		0.614810, -0.779940, -0.117057,
		42.232094, 30.483747, 41.259090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363155, 30.404915, 41.034481>,  <41.801727, 31.029705, 41.341030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363155, 30.404915, 41.034481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696056, 30.287031, 41.222309>,  <41.895798, 30.216301, 41.335007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696056, 30.287031, 41.222309>,  <41.363155, 30.404915, 41.034481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696056, 30.287031, 41.222309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548708, -0.558836, 0.621789,
		0.079167, -0.775145, -0.626803,
		0.832257, -0.294707, 0.469570,
		41.945732, 30.198618, 41.363178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.490208, 38.738232, 37.401493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162933, 38.568859, 37.557068>,  <37.966568, 38.467236, 37.650414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162933, 38.568859, 37.557068>,  <38.490208, 38.738232, 37.401493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162933, 38.568859, 37.557068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256547, -0.336516, -0.906058,
		0.514538, -0.841107, 0.166703,
		-0.818189, -0.423434, 0.388933,
		37.917477, 38.441830, 37.673748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584023, 38.103230, 37.139214>,  <38.490208, 38.738232, 37.401493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584023, 38.103230, 37.139214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197754, 38.141556, 37.235786>,  <37.965992, 38.164551, 37.293732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197754, 38.141556, 37.235786>,  <38.584023, 38.103230, 37.139214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197754, 38.141556, 37.235786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258828, -0.276524, -0.925496,
		-0.021912, -0.956219, 0.291832,
		-0.965675, 0.095814, 0.241437,
		37.908051, 38.170300, 37.308216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326611, 37.517906, 36.893604>,  <38.584023, 38.103230, 37.139214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326611, 37.517906, 36.893604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989048, 37.723042, 36.956631>,  <37.786510, 37.846123, 36.994446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989048, 37.723042, 36.956631>,  <38.326611, 37.517906, 36.893604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989048, 37.723042, 36.956631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427500, -0.465357, -0.775040,
		-0.324141, -0.721419, 0.611953,
		-0.843905, 0.512832, 0.157565,
		37.735878, 37.876892, 37.003899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724243, 37.053913, 36.732693>,  <38.326611, 37.517906, 36.893604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724243, 37.053913, 36.732693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584042, 37.426517, 36.693836>,  <37.499920, 37.650078, 36.670521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584042, 37.426517, 36.693836>,  <37.724243, 37.053913, 36.732693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584042, 37.426517, 36.693836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376090, -0.234983, -0.896292,
		-0.857731, -0.277621, 0.432695,
		-0.350505, 0.931509, -0.097142,
		37.478889, 37.705971, 36.664692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940300, 37.031857, 36.382751>,  <37.724243, 37.053913, 36.732693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940300, 37.031857, 36.382751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116474, 37.386658, 36.327267>,  <37.222179, 37.599541, 36.293976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116474, 37.386658, 36.327267>,  <36.940300, 37.031857, 36.382751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116474, 37.386658, 36.327267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291407, -0.004893, -0.956587,
		-0.849176, 0.461733, 0.256325,
		0.440434, 0.887005, -0.138707,
		37.248604, 37.652760, 36.285656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465397, 37.464664, 36.097843>,  <36.940300, 37.031857, 36.382751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465397, 37.464664, 36.097843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828747, 37.594772, 35.992733>,  <37.046757, 37.672836, 35.929668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828747, 37.594772, 35.992733>,  <36.465397, 37.464664, 36.097843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828747, 37.594772, 35.992733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280601, 0.008246, -0.959789,
		-0.310022, 0.945586, 0.098761,
		0.908377, 0.325269, -0.262775,
		37.101261, 37.692352, 35.913902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184055, 37.927006, 35.707832>,  <36.465397, 37.464664, 36.097843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184055, 37.927006, 35.707832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579784, 37.929386, 35.649597>,  <36.817223, 37.930813, 35.614655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579784, 37.929386, 35.649597>,  <36.184055, 37.927006, 35.707832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579784, 37.929386, 35.649597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144856, 0.148215, -0.978289,
		0.015758, 0.988937, 0.147495,
		0.989327, 0.005949, -0.145589,
		36.876583, 37.931171, 35.605919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323196, 38.496277, 35.339458>,  <36.184055, 37.927006, 35.707832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323196, 38.496277, 35.339458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654823, 38.278919, 35.286743>,  <36.853798, 38.148502, 35.255112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654823, 38.278919, 35.286743>,  <36.323196, 38.496277, 35.339458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654823, 38.278919, 35.286743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086796, 0.107775, -0.990379,
		0.552372, 0.832530, 0.042188,
		0.829067, -0.543396, -0.131792,
		36.903542, 38.115902, 35.247204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769917, 38.881329, 34.937378>,  <36.323196, 38.496277, 35.339458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769917, 38.881329, 34.937378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852123, 38.491119, 34.906082>,  <36.901447, 38.256996, 34.887306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852123, 38.491119, 34.906082>,  <36.769917, 38.881329, 34.937378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852123, 38.491119, 34.906082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092864, 0.099025, -0.990742,
		0.974237, 0.196352, 0.110943,
		0.205521, -0.975520, -0.078240,
		36.913780, 38.198463, 34.882610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322571, 38.944191, 34.632671>,  <36.769917, 38.881329, 34.937378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322571, 38.944191, 34.632671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181248, 38.575329, 34.569683>,  <37.096455, 38.354012, 34.531891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181248, 38.575329, 34.569683>,  <37.322571, 38.944191, 34.632671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181248, 38.575329, 34.569683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202793, 0.088826, -0.975185,
		0.913263, -0.376474, 0.155625,
		-0.353308, -0.922159, -0.157467,
		37.075256, 38.298679, 34.522442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745419, 38.639767, 34.083057>,  <37.322571, 38.944191, 34.632671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745419, 38.639767, 34.083057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409714, 38.423183, 34.102924>,  <37.208290, 38.293232, 34.114845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409714, 38.423183, 34.102924>,  <37.745419, 38.639767, 34.083057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409714, 38.423183, 34.102924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089810, 0.047958, -0.994804,
		0.536262, -0.839359, -0.088877,
		-0.839260, -0.541457, 0.049664,
		37.157936, 38.260746, 34.117825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799267, 38.196041, 33.441349>,  <37.745419, 38.639767, 34.083057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799267, 38.196041, 33.441349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421509, 38.257149, 33.557819>,  <37.194855, 38.293812, 33.627701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421509, 38.257149, 33.557819>,  <37.799267, 38.196041, 33.441349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421509, 38.257149, 33.557819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250068, 0.241317, -0.937674,
		-0.213514, -0.958346, -0.189695,
		-0.944393, 0.152770, 0.291176,
		37.138191, 38.302979, 33.645172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902424, 37.473759, 33.222878>,  <37.799267, 38.196041, 33.441349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902424, 37.473759, 33.222878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839928, 37.316216, 32.860558>,  <37.802429, 37.221691, 32.643166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839928, 37.316216, 32.860558>,  <37.902424, 37.473759, 33.222878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839928, 37.316216, 32.860558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415374, 0.805824, -0.422033,
		0.896132, -0.442183, 0.037693,
		-0.156242, -0.393854, -0.905797,
		37.793056, 37.198059, 32.588818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508251, 37.482998, 32.870010>,  <37.902424, 37.473759, 33.222878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508251, 37.482998, 32.870010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216202, 37.461624, 32.597523>,  <38.040970, 37.448799, 32.434029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216202, 37.461624, 32.597523>,  <38.508251, 37.482998, 32.870010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216202, 37.461624, 32.597523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122208, 0.970653, -0.207120,
		0.672293, -0.234475, -0.702171,
		-0.730128, -0.053434, -0.681218,
		37.997162, 37.445595, 32.393158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165272, 37.425900, 32.903969>,  <38.508251, 37.482998, 32.870010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165272, 37.425900, 32.903969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501369, 37.249660, 32.777565>,  <39.703030, 37.143917, 32.701721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501369, 37.249660, 32.777565>,  <39.165272, 37.425900, 32.903969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501369, 37.249660, 32.777565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200150, -0.289620, 0.935981,
		-0.503917, -0.849701, -0.155165,
		0.840243, -0.440600, -0.316012,
		39.753441, 37.117481, 32.682762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206715, 36.802418, 33.269726>,  <39.165272, 37.425900, 32.903969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206715, 36.802418, 33.269726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584927, 36.863861, 33.154922>,  <39.811855, 36.900726, 33.086040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584927, 36.863861, 33.154922>,  <39.206715, 36.802418, 33.269726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584927, 36.863861, 33.154922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323261, -0.339262, 0.883405,
		0.038329, -0.928066, -0.370439,
		0.945533, 0.153609, -0.287004,
		39.868587, 36.909943, 33.068821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451019, 36.266682, 33.536175>,  <39.206715, 36.802418, 33.269726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451019, 36.266682, 33.536175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780907, 36.479378, 33.459141>,  <39.978840, 36.606995, 33.412918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780907, 36.479378, 33.459141>,  <39.451019, 36.266682, 33.536175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780907, 36.479378, 33.459141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347190, -0.207227, 0.914612,
		0.446428, -0.821163, -0.355519,
		0.824719, 0.531741, -0.192588,
		40.028324, 36.638901, 33.401363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990555, 35.886173, 33.756359>,  <39.451019, 36.266682, 33.536175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990555, 35.886173, 33.756359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144657, 36.255295, 33.755833>,  <40.237118, 36.476768, 33.755516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144657, 36.255295, 33.755833>,  <39.990555, 35.886173, 33.756359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144657, 36.255295, 33.755833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298716, -0.123365, 0.946335,
		0.873123, -0.364976, -0.323185,
		0.385259, 0.922808, -0.001312,
		40.260235, 36.532139, 33.755440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694641, 35.858894, 34.121841>,  <39.990555, 35.886173, 33.756359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694641, 35.858894, 34.121841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554298, 36.233261, 34.134270>,  <40.470093, 36.457882, 34.141727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554298, 36.233261, 34.134270>,  <40.694641, 35.858894, 34.121841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554298, 36.233261, 34.134270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310271, 0.084883, 0.946851,
		0.883533, 0.341849, -0.320169,
		-0.350857, 0.935913, 0.031069,
		40.449039, 36.514034, 34.143589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133671, 36.202663, 34.570610>,  <40.694641, 35.858894, 34.121841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133671, 36.202663, 34.570610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847710, 36.482334, 34.567329>,  <40.676132, 36.650135, 34.565361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847710, 36.482334, 34.567329>,  <41.133671, 36.202663, 34.570610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847710, 36.482334, 34.567329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221459, 0.237535, 0.945798,
		0.663223, 0.674341, -0.324653,
		-0.714906, 0.699172, -0.008200,
		40.633236, 36.692085, 34.564869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413277, 36.684120, 34.974194>,  <41.133671, 36.202663, 34.570610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413277, 36.684120, 34.974194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022701, 36.769794, 34.984711>,  <40.788357, 36.821198, 34.991020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022701, 36.769794, 34.984711>,  <41.413277, 36.684120, 34.974194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022701, 36.769794, 34.984711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096355, 0.323724, 0.941233,
		0.193086, 0.921590, -0.336735,
		-0.976439, 0.214185, 0.026293,
		40.729771, 36.834049, 34.992599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315861, 37.353127, 35.334465>,  <41.413277, 36.684120, 34.974194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315861, 37.353127, 35.334465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972027, 37.154240, 35.381607>,  <40.765728, 37.034908, 35.409893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972027, 37.154240, 35.381607>,  <41.315861, 37.353127, 35.334465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972027, 37.154240, 35.381607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045552, 0.155157, 0.986839,
		-0.508958, 0.853640, -0.110722,
		-0.859585, -0.497216, 0.117853,
		40.714149, 37.005074, 35.416962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893784, 37.764992, 35.780521>,  <41.315861, 37.353127, 35.334465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893784, 37.764992, 35.780521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715427, 37.409496, 35.823074>,  <40.608414, 37.196198, 35.848606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715427, 37.409496, 35.823074>,  <40.893784, 37.764992, 35.780521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715427, 37.409496, 35.823074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141263, 0.187231, 0.972106,
		-0.883868, 0.418430, -0.209032,
		-0.445895, -0.888742, 0.106378,
		40.581657, 37.142876, 35.854988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333748, 37.852901, 36.341404>,  <40.893784, 37.764992, 35.780521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333748, 37.852901, 36.341404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379227, 37.457829, 36.298389>,  <40.406513, 37.220787, 36.272583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379227, 37.457829, 36.298389>,  <40.333748, 37.852901, 36.341404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379227, 37.457829, 36.298389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070484, -0.115981, 0.990747,
		-0.991012, -0.105063, -0.082802,
		0.113694, -0.987679, -0.107533,
		40.413334, 37.161526, 36.266129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805305, 37.511940, 36.651535>,  <40.333748, 37.852901, 36.341404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805305, 37.511940, 36.651535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115074, 37.259293, 36.636993>,  <40.300938, 37.107704, 36.628269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115074, 37.259293, 36.636993>,  <39.805305, 37.511940, 36.651535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115074, 37.259293, 36.636993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049001, -0.117167, 0.991903,
		-0.630767, -0.766371, -0.121687,
		0.774423, -0.631622, -0.036352,
		40.347401, 37.069805, 36.626087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600540, 36.962082, 37.057098>,  <39.805305, 37.511940, 36.651535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600540, 36.962082, 37.057098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997505, 36.913353, 37.063679>,  <40.235683, 36.884117, 37.067627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997505, 36.913353, 37.063679>,  <39.600540, 36.962082, 37.057098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997505, 36.913353, 37.063679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031054, -0.118942, 0.992416,
		-0.118942, -0.985399, -0.121823,
		-0.992416, 0.121823, -0.016453,
		40.295231, 36.876804, 37.068615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708496, 36.540607, 37.607952>,  <39.600540, 36.962082, 37.057098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708496, 36.540607, 37.607952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087803, 36.651848, 37.546696>,  <40.315388, 36.718594, 37.509941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087803, 36.651848, 37.546696>,  <39.708496, 36.540607, 37.607952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087803, 36.651848, 37.546696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165957, -0.023006, 0.985865,
		0.270647, -0.960276, -0.067968,
		0.948266, 0.278101, -0.153138,
		40.372284, 36.735279, 37.500755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167068, 36.043358, 37.936726>,  <39.708496, 36.540607, 37.607952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167068, 36.043358, 37.936726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355503, 36.395027, 37.908070>,  <40.468563, 36.606030, 37.890877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355503, 36.395027, 37.908070>,  <40.167068, 36.043358, 37.936726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355503, 36.395027, 37.908070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283534, -0.074017, 0.956102,
		0.835278, -0.470716, -0.284144,
		0.471084, 0.879175, -0.071639,
		40.496830, 36.658779, 37.886578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355942, 35.423862, 38.319031>,  <40.167068, 36.043358, 37.936726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355942, 35.423862, 38.319031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070599, 35.148766, 38.372887>,  <39.899391, 34.983707, 38.405201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070599, 35.148766, 38.372887>,  <40.355942, 35.423862, 38.319031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070599, 35.148766, 38.372887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141081, -0.047256, -0.988869,
		0.686450, -0.724415, -0.063316,
		-0.713359, -0.687743, 0.134640,
		39.856590, 34.942444, 38.413280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532398, 34.808857, 37.856728>,  <40.355942, 35.423862, 38.319031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532398, 34.808857, 37.856728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136562, 34.806145, 37.914230>,  <39.899059, 34.804520, 37.948734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136562, 34.806145, 37.914230>,  <40.532398, 34.808857, 37.856728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136562, 34.806145, 37.914230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143799, 0.005863, -0.989590,
		0.005863, -0.999960, -0.006777,
		0.989590, 0.006777, -0.143759,
		39.839687, 34.804111, 37.957359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268665, 34.559830, 37.238148>,  <40.532398, 34.808857, 37.856728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268665, 34.559830, 37.238148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937298, 34.714146, 37.400578>,  <39.738480, 34.806736, 37.498035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937298, 34.714146, 37.400578>,  <40.268665, 34.559830, 37.238148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937298, 34.714146, 37.400578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465516, -0.071054, -0.882183,
		-0.311487, -0.919845, 0.238455,
		-0.828415, 0.385793, 0.406070,
		39.688774, 34.829884, 37.522400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678101, 34.087830, 36.995552>,  <40.268665, 34.559830, 37.238148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678101, 34.087830, 36.995552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533482, 34.445736, 37.100384>,  <39.446712, 34.660480, 37.163284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533482, 34.445736, 37.100384>,  <39.678101, 34.087830, 36.995552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533482, 34.445736, 37.100384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646075, -0.037762, -0.762339,
		-0.672215, -0.444944, 0.591736,
		-0.361543, 0.894762, 0.262083,
		39.425018, 34.714165, 37.179008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839924, 34.050652, 37.028164>,  <39.678101, 34.087830, 36.995552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839924, 34.050652, 37.028164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912338, 34.441597, 36.984375>,  <38.955788, 34.676167, 36.958103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912338, 34.441597, 36.984375>,  <38.839924, 34.050652, 37.028164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912338, 34.441597, 36.984375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738929, 0.061716, -0.670951,
		-0.649008, 0.202357, 0.733376,
		0.181032, 0.977365, -0.109473,
		38.966648, 34.734806, 36.951534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188293, 34.306816, 37.049534>,  <38.839924, 34.050652, 37.028164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188293, 34.306816, 37.049534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410915, 34.580021, 36.860325>,  <38.544487, 34.743942, 36.746799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410915, 34.580021, 36.860325>,  <38.188293, 34.306816, 37.049534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410915, 34.580021, 36.860325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671604, 0.034700, -0.740097,
		-0.489079, 0.729585, 0.478024,
		0.556552, 0.683010, -0.473021,
		38.577881, 34.784924, 36.718418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709641, 34.815872, 36.756886>,  <38.188293, 34.306816, 37.049534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709641, 34.815872, 36.756886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036568, 34.863499, 36.531384>,  <38.232723, 34.892075, 36.396080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036568, 34.863499, 36.531384>,  <37.709641, 34.815872, 36.756886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036568, 34.863499, 36.531384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569590, 0.314661, -0.759313,
		0.086984, 0.941707, 0.324995,
		0.817313, 0.119066, -0.563757,
		38.281761, 34.899220, 36.362255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715858, 35.491470, 36.544590>,  <37.709641, 34.815872, 36.756886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715858, 35.491470, 36.544590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952801, 35.297974, 36.286873>,  <38.094967, 35.181877, 36.132244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952801, 35.297974, 36.286873>,  <37.715858, 35.491470, 36.544590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952801, 35.297974, 36.286873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421335, 0.495631, -0.759491,
		0.686728, 0.721350, 0.089772,
		0.592353, -0.483740, -0.644293,
		38.130508, 35.152851, 36.093586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794189, 35.999710, 36.029198>,  <37.715858, 35.491470, 36.544590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794189, 35.999710, 36.029198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011391, 35.728851, 35.830551>,  <38.141712, 35.566338, 35.711365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011391, 35.728851, 35.830551>,  <37.794189, 35.999710, 36.029198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011391, 35.728851, 35.830551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179416, 0.484189, -0.856371,
		0.820341, 0.554111, 0.141425,
		0.543001, -0.677142, -0.496616,
		38.174290, 35.525707, 35.681564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371250, 36.335686, 35.643341>,  <37.794189, 35.999710, 36.029198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371250, 36.335686, 35.643341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265404, 35.997574, 35.457664>,  <38.201897, 35.794704, 35.346260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265404, 35.997574, 35.457664>,  <38.371250, 36.335686, 35.643341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265404, 35.997574, 35.457664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187655, 0.517283, -0.834987,
		0.945920, -0.133842, -0.295502,
		-0.264614, -0.845284, -0.464192,
		38.186020, 35.743988, 35.318405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648979, 36.398251, 35.010212>,  <38.371250, 36.335686, 35.643341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648979, 36.398251, 35.010212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336800, 36.149738, 34.982170>,  <38.149490, 36.000633, 34.965343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336800, 36.149738, 34.982170>,  <38.648979, 36.398251, 35.010212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336800, 36.149738, 34.982170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446214, 0.632028, -0.633588,
		0.437941, -0.463201, -0.770488,
		-0.780449, -0.621277, -0.070104,
		38.102665, 35.963356, 34.961140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481117, 36.344166, 34.246613>,  <38.648979, 36.398251, 35.010212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481117, 36.344166, 34.246613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154324, 36.256744, 34.460068>,  <37.958248, 36.204292, 34.588139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154324, 36.256744, 34.460068>,  <38.481117, 36.344166, 34.246613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154324, 36.256744, 34.460068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535044, 0.632457, -0.560113,
		-0.215086, -0.743123, -0.633645,
		-0.816986, -0.218555, 0.533636,
		37.909229, 36.191177, 34.620159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.785889, 35.035759, 41.820587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400700, 35.110947, 41.897888>,  <40.169586, 35.156059, 41.944267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400700, 35.110947, 41.897888>,  <40.785889, 35.035759, 41.820587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400700, 35.110947, 41.897888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267183, -0.569858, -0.777094,
		-0.035945, -0.799956, 0.598981,
		-0.962975, 0.187971, 0.193251,
		40.111809, 35.167339, 41.955864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398949, 34.403828, 41.839428>,  <40.785889, 35.035759, 41.820587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398949, 34.403828, 41.839428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136135, 34.693890, 41.757004>,  <39.978447, 34.867928, 41.707550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136135, 34.693890, 41.757004>,  <40.398949, 34.403828, 41.839428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136135, 34.693890, 41.757004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252599, -0.469309, -0.846134,
		-0.710283, -0.503886, 0.491524,
		-0.657032, 0.725154, -0.206061,
		39.939026, 34.911434, 41.695187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721725, 34.108692, 41.611553>,  <40.398949, 34.403828, 41.839428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721725, 34.108692, 41.611553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776291, 34.465855, 41.439922>,  <39.809029, 34.680153, 41.336945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776291, 34.465855, 41.439922>,  <39.721725, 34.108692, 41.611553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776291, 34.465855, 41.439922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157185, -0.408133, -0.899288,
		-0.978103, 0.190116, 0.084679,
		0.136409, 0.892907, -0.429080,
		39.817215, 34.733727, 41.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483997, 34.014599, 40.952919>,  <39.721725, 34.108692, 41.611553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483997, 34.014599, 40.952919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.581482, 34.400089, 40.909389>,  <39.639973, 34.631382, 40.883270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.581482, 34.400089, 40.909389>,  <39.483997, 34.014599, 40.952919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581482, 34.400089, 40.909389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039806, -0.122054, -0.991725,
		-0.969030, 0.237364, -0.068108,
		0.243713, 0.963723, -0.108825,
		39.654594, 34.689205, 40.876743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974686, 34.409790, 40.631264>,  <39.483997, 34.014599, 40.952919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974686, 34.409790, 40.631264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.304138, 34.611912, 40.528267>,  <39.501808, 34.733185, 40.466469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.304138, 34.611912, 40.528267>,  <38.974686, 34.409790, 40.631264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304138, 34.611912, 40.528267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091816, -0.329228, -0.939776,
		-0.559642, 0.797672, -0.224768,
		0.823633, 0.505300, -0.257489,
		39.551228, 34.763500, 40.451019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805660, 34.733185, 40.110481>,  <38.974686, 34.409790, 40.631264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805660, 34.733185, 40.110481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202942, 34.749104, 40.066734>,  <39.441311, 34.758656, 40.040485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202942, 34.749104, 40.066734>,  <38.805660, 34.733185, 40.110481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202942, 34.749104, 40.066734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105874, -0.081309, -0.991050,
		-0.048331, 0.995894, -0.076543,
		0.993204, 0.039794, -0.109369,
		39.500904, 34.761044, 40.033924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960316, 35.282608, 39.694569>,  <38.805660, 34.733185, 40.110481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960316, 35.282608, 39.694569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.281700, 35.045479, 39.672581>,  <39.474529, 34.903202, 39.659389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.281700, 35.045479, 39.672581>,  <38.960316, 35.282608, 39.694569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281700, 35.045479, 39.672581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055496, 0.166500, -0.984478,
		0.592771, 0.787936, 0.166675,
		0.803457, -0.592820, -0.054969,
		39.522736, 34.867634, 39.656090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411724, 35.730656, 39.299168>,  <38.960316, 35.282608, 39.694569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411724, 35.730656, 39.299168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538696, 35.351742, 39.281731>,  <39.614880, 35.124393, 39.271267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538696, 35.351742, 39.281731>,  <39.411724, 35.730656, 39.299168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538696, 35.351742, 39.281731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003849, 0.044683, -0.998994,
		0.948275, 0.317275, 0.010537,
		0.317427, -0.947280, -0.043593,
		39.633923, 35.067558, 39.268654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964027, 35.733768, 38.888279>,  <39.411724, 35.730656, 39.299168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964027, 35.733768, 38.888279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862511, 35.349499, 38.843197>,  <39.801601, 35.118938, 38.816147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862511, 35.349499, 38.843197>,  <39.964027, 35.733768, 38.888279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862511, 35.349499, 38.843197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048619, 0.129040, -0.990447,
		0.966037, -0.245883, -0.079456,
		-0.253787, -0.960672, -0.112703,
		39.786373, 35.061298, 38.809387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581257, 36.072464, 38.576946>,  <39.964027, 35.733768, 38.888279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581257, 36.072464, 38.576946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.618423, 36.450768, 38.452431>,  <40.640724, 36.677750, 38.377720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.618423, 36.450768, 38.452431>,  <40.581257, 36.072464, 38.576946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618423, 36.450768, 38.452431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249084, 0.280624, 0.926935,
		0.964015, -0.163663, -0.209500,
		0.092915, 0.945762, -0.311291,
		40.646297, 36.734497, 38.359043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218864, 36.246571, 38.730057>,  <40.581257, 36.072464, 38.576946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218864, 36.246571, 38.730057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.016552, 36.591404, 38.717411>,  <40.895164, 36.798306, 38.709824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.016552, 36.591404, 38.717411>,  <41.218864, 36.246571, 38.730057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016552, 36.591404, 38.717411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244114, 0.178183, 0.953236,
		0.827402, 0.474410, -0.300568,
		-0.505781, 0.862082, -0.031619,
		40.864819, 36.850029, 38.707924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599590, 36.693008, 39.056168>,  <41.218864, 36.246571, 38.730057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599590, 36.693008, 39.056168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.254730, 36.895061, 39.071831>,  <41.047813, 37.016293, 39.081226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.254730, 36.895061, 39.071831>,  <41.599590, 36.693008, 39.056168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254730, 36.895061, 39.071831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129904, 0.145697, 0.980764,
		0.489715, 0.850653, -0.191232,
		-0.862151, 0.505136, 0.039153,
		40.996086, 37.046604, 39.083576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908279, 37.282566, 39.114319>,  <41.599590, 36.693008, 39.056168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908279, 37.282566, 39.114319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.545357, 37.412159, 39.221519>,  <41.327602, 37.489914, 39.285843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.545357, 37.412159, 39.221519>,  <41.908279, 37.282566, 39.114319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545357, 37.412159, 39.221519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333057, 0.164721, 0.928407,
		0.256640, 0.931613, -0.257357,
		-0.907309, 0.323981, 0.268006,
		41.273163, 37.509354, 39.301922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883942, 38.016132, 39.358524>,  <41.908279, 37.282566, 39.114319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883942, 38.016132, 39.358524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.593506, 37.818237, 39.549534>,  <41.419243, 37.699501, 39.664139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.593506, 37.818237, 39.549534>,  <41.883942, 38.016132, 39.358524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593506, 37.818237, 39.549534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299051, 0.398138, 0.867211,
		-0.619159, 0.772479, -0.141134,
		-0.726093, -0.494735, 0.477521,
		41.375679, 37.669815, 39.692791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561935, 38.466057, 39.790249>,  <41.883942, 38.016132, 39.358524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561935, 38.466057, 39.790249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.483192, 38.096359, 39.921104>,  <41.435947, 37.874542, 39.999619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.483192, 38.096359, 39.921104>,  <41.561935, 38.466057, 39.790249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483192, 38.096359, 39.921104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398377, 0.229476, 0.888052,
		-0.895847, 0.305146, 0.323023,
		-0.196859, -0.924244, 0.327139,
		41.424133, 37.819084, 40.019245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181328, 38.544823, 40.360718>,  <41.561935, 38.466057, 39.790249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181328, 38.544823, 40.360718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.353420, 38.185902, 40.400215>,  <41.456676, 37.970551, 40.423912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.353420, 38.185902, 40.400215>,  <41.181328, 38.544823, 40.360718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353420, 38.185902, 40.400215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297272, 0.244110, 0.923060,
		-0.852370, -0.367772, 0.371766,
		0.430227, -0.897304, 0.098743,
		41.482487, 37.916710, 40.429836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031990, 38.388950, 41.012646>,  <41.181328, 38.544823, 40.360718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031990, 38.388950, 41.012646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.334900, 38.146820, 40.914566>,  <41.516644, 38.001541, 40.855717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.334900, 38.146820, 40.914566>,  <41.031990, 38.388950, 41.012646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334900, 38.146820, 40.914566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415094, 0.156237, 0.896263,
		-0.504219, -0.780496, 0.369580,
		0.757272, -0.605323, -0.245202,
		41.562080, 37.965221, 40.841007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990837, 37.886711, 41.558434>,  <41.031990, 38.388950, 41.012646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990837, 37.886711, 41.558434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.358620, 37.889717, 41.401188>,  <41.579288, 37.891521, 41.306839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.358620, 37.889717, 41.401188>,  <40.990837, 37.886711, 41.558434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358620, 37.889717, 41.401188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384902, 0.186969, 0.903822,
		0.080288, -0.982337, 0.169019,
		0.919459, 0.007511, -0.393114,
		41.634457, 37.891972, 41.283253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492241, 37.476471, 42.007618>,  <40.990837, 37.886711, 41.558434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492241, 37.476471, 42.007618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.744942, 37.672245, 41.767170>,  <41.896561, 37.789707, 41.622902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.744942, 37.672245, 41.767170>,  <41.492241, 37.476471, 42.007618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744942, 37.672245, 41.767170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539327, 0.279483, 0.794365,
		0.556790, -0.826043, -0.087399,
		0.631753, 0.489431, -0.601120,
		41.934467, 37.819073, 41.586834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114552, 37.301929, 42.213005>,  <41.492241, 37.476471, 42.007618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114552, 37.301929, 42.213005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.186981, 37.643803, 42.018387>,  <42.230438, 37.848927, 41.901615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.186981, 37.643803, 42.018387>,  <42.114552, 37.301929, 42.213005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186981, 37.643803, 42.018387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510570, 0.341137, 0.789268,
		0.840553, -0.391335, -0.374603,
		0.181078, 0.854682, -0.486548,
		42.241306, 37.900208, 41.872421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780563, 37.441338, 42.371414>,  <42.114552, 37.301929, 42.213005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780563, 37.441338, 42.371414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.628235, 37.792229, 42.254490>,  <42.536839, 38.002766, 42.184338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.628235, 37.792229, 42.254490>,  <42.780563, 37.441338, 42.371414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628235, 37.792229, 42.254490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573845, 0.472103, 0.669194,
		0.725037, 0.087103, -0.683180,
		-0.380820, 0.877230, -0.292309,
		42.513988, 38.055397, 42.166798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390434, 37.980526, 42.305840>,  <42.780563, 37.441338, 42.371414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390434, 37.980526, 42.305840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.047562, 38.174469, 42.375294>,  <42.841839, 38.290833, 42.416965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.047562, 38.174469, 42.375294>,  <43.390434, 37.980526, 42.305840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047562, 38.174469, 42.375294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414295, 0.448897, 0.791739,
		0.305931, 0.750605, -0.585660,
		-0.857185, 0.484854, 0.173640,
		42.790405, 38.319923, 42.427387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549812, 38.711445, 42.460182>,  <43.390434, 37.980526, 42.305840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549812, 38.711445, 42.460182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.188667, 38.652813, 42.621853>,  <42.971981, 38.617634, 42.718853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.188667, 38.652813, 42.621853>,  <43.549812, 38.711445, 42.460182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188667, 38.652813, 42.621853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299509, 0.459998, 0.835880,
		-0.308444, 0.875737, -0.371412,
		-0.902860, -0.146581, 0.404175,
		42.917809, 38.608837, 42.743107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.807964, 37.978550, 45.101528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137325, 37.945892, 44.876904>,  <35.334942, 37.926300, 44.742130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137325, 37.945892, 44.876904>,  <34.807964, 37.978550, 45.101528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137325, 37.945892, 44.876904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480208, 0.427018, -0.766196,
		0.302349, 0.900550, 0.312401,
		0.823399, -0.081641, -0.561560,
		35.384346, 37.921398, 44.708435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883110, 38.574593, 44.718700>,  <34.807964, 37.978550, 45.101528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883110, 38.574593, 44.718700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073418, 38.289749, 44.512192>,  <35.187603, 38.118843, 44.388287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073418, 38.289749, 44.512192>,  <34.883110, 38.574593, 44.718700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073418, 38.289749, 44.512192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377131, 0.365116, -0.851154,
		0.794617, 0.599657, -0.094848,
		0.475769, -0.712111, -0.516276,
		35.216148, 38.076115, 44.357307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955379, 38.915268, 44.101326>,  <34.883110, 38.574593, 44.718700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955379, 38.915268, 44.101326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048199, 38.539814, 43.999256>,  <35.103889, 38.314541, 43.938015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048199, 38.539814, 43.999256>,  <34.955379, 38.915268, 44.101326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048199, 38.539814, 43.999256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397558, 0.147900, -0.905579,
		0.887750, 0.311585, -0.338843,
		0.232050, -0.938638, -0.255171,
		35.117813, 38.258224, 43.922707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585838, 38.970547, 43.565651>,  <34.955379, 38.915268, 44.101326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585838, 38.970547, 43.565651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378742, 38.628975, 43.544697>,  <35.254486, 38.424030, 43.532124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378742, 38.628975, 43.544697>,  <35.585838, 38.970547, 43.565651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378742, 38.628975, 43.544697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053928, 0.093686, -0.994140,
		0.853838, -0.511879, -0.094555,
		-0.517738, -0.853934, -0.052388,
		35.223419, 38.372795, 43.528980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830761, 38.598389, 43.034855>,  <35.585838, 38.970547, 43.565651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830761, 38.598389, 43.034855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.458244, 38.454060, 43.054863>,  <35.234734, 38.367462, 43.066868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.458244, 38.454060, 43.054863>,  <35.830761, 38.598389, 43.034855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458244, 38.454060, 43.054863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079115, 0.066317, -0.994657,
		0.355578, -0.930274, -0.090307,
		-0.931292, -0.360823, 0.050018,
		35.178856, 38.345814, 43.069870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635979, 38.502975, 42.307076>,  <35.830761, 38.598389, 43.034855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635979, 38.502975, 42.307076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295334, 38.335403, 42.433086>,  <35.090946, 38.234859, 42.508694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295334, 38.335403, 42.433086>,  <35.635979, 38.502975, 42.307076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295334, 38.335403, 42.433086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323109, -0.053680, -0.944838,
		0.412736, -0.906428, -0.089647,
		-0.851617, -0.418934, 0.315030,
		35.039848, 38.209724, 42.527596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399944, 37.916595, 41.889812>,  <35.635979, 38.502975, 42.307076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399944, 37.916595, 41.889812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.061810, 38.056839, 42.051044>,  <34.858929, 38.140984, 42.147785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.061810, 38.056839, 42.051044>,  <35.399944, 37.916595, 41.889812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061810, 38.056839, 42.051044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506773, -0.287498, -0.812727,
		-0.169060, -0.891303, 0.420710,
		-0.845340, 0.350605, 0.403084,
		34.808208, 38.162022, 42.171970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824047, 37.419586, 41.870934>,  <35.399944, 37.916595, 41.889812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824047, 37.419586, 41.870934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625782, 37.765148, 41.906681>,  <34.506824, 37.972485, 41.928131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625782, 37.765148, 41.906681>,  <34.824047, 37.419586, 41.870934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625782, 37.765148, 41.906681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504776, -0.202807, -0.839089,
		-0.706769, -0.461016, 0.536602,
		-0.495660, 0.863906, 0.089372,
		34.477085, 38.024319, 41.933495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068752, 37.322628, 41.692657>,  <34.824047, 37.419586, 41.870934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068752, 37.322628, 41.692657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136677, 37.714973, 41.654556>,  <34.177433, 37.950382, 41.631695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136677, 37.714973, 41.654556>,  <34.068752, 37.322628, 41.692657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136677, 37.714973, 41.654556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398141, -0.020134, -0.917103,
		-0.901470, 0.193659, 0.387102,
		0.169811, 0.980862, -0.095254,
		34.187618, 38.009232, 41.625980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493492, 37.598019, 41.324120>,  <34.068752, 37.322628, 41.692657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493492, 37.598019, 41.324120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776405, 37.872353, 41.255550>,  <33.946152, 38.036953, 41.214409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776405, 37.872353, 41.255550>,  <33.493492, 37.598019, 41.324120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776405, 37.872353, 41.255550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263894, 0.031180, -0.964047,
		-0.655830, 0.727091, 0.203039,
		0.707281, 0.685833, -0.171426,
		33.988590, 38.078102, 41.204121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206375, 38.171974, 40.931618>,  <33.493492, 37.598019, 41.324120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206375, 38.171974, 40.931618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603436, 38.170307, 40.883247>,  <33.841671, 38.169308, 40.854225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603436, 38.170307, 40.883247>,  <33.206375, 38.171974, 40.931618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603436, 38.170307, 40.883247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118917, 0.150993, -0.981356,
		0.022353, 0.988526, 0.149388,
		0.992653, -0.004171, -0.120927,
		33.901230, 38.169056, 40.846970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188850, 38.713722, 40.514774>,  <33.206375, 38.171974, 40.931618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188850, 38.713722, 40.514774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518814, 38.493916, 40.461765>,  <33.716793, 38.362030, 40.429958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518814, 38.493916, 40.461765>,  <33.188850, 38.713722, 40.514774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518814, 38.493916, 40.461765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068606, 0.135380, -0.988416,
		0.561093, 0.824440, 0.073976,
		0.824905, -0.549518, -0.132522,
		33.766285, 38.329060, 40.422009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560608, 39.121319, 40.051220>,  <33.188850, 38.713722, 40.514774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560608, 39.121319, 40.051220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.706425, 38.750423, 40.016930>,  <33.793915, 38.527885, 39.996357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.706425, 38.750423, 40.016930>,  <33.560608, 39.121319, 40.051220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706425, 38.750423, 40.016930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268650, -0.016581, -0.963095,
		0.891593, 0.374114, -0.255146,
		0.364538, -0.927234, -0.085722,
		33.815784, 38.472252, 39.991215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051708, 39.065903, 39.423103>,  <33.560608, 39.121319, 40.051220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051708, 39.065903, 39.423103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935745, 38.688896, 39.489571>,  <33.866169, 38.462692, 39.529449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935745, 38.688896, 39.489571>,  <34.051708, 39.065903, 39.423103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935745, 38.688896, 39.489571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172469, -0.119332, -0.977760,
		0.941386, -0.312120, -0.127960,
		-0.289908, -0.942519, 0.166168,
		33.848774, 38.406139, 39.539421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739986, 39.070656, 39.220650>,  <34.051708, 39.065903, 39.423103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739986, 39.070656, 39.220650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919365, 39.417789, 39.135078>,  <35.026993, 39.626068, 39.083736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919365, 39.417789, 39.135078>,  <34.739986, 39.070656, 39.220650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919365, 39.417789, 39.135078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438072, -0.004779, 0.898927,
		0.779094, -0.496838, -0.382315,
		0.448448, 0.867830, -0.213928,
		35.053898, 39.678139, 39.070900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392826, 39.035553, 39.466118>,  <34.739986, 39.070656, 39.220650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392826, 39.035553, 39.466118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353703, 39.431496, 39.424896>,  <35.330227, 39.669060, 39.400166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353703, 39.431496, 39.424896>,  <35.392826, 39.035553, 39.466118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353703, 39.431496, 39.424896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609372, 0.141434, 0.780168,
		0.786829, 0.013512, -0.617023,
		-0.097810, 0.989856, -0.103050,
		35.324360, 39.728451, 39.393982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072868, 39.174042, 39.773232>,  <35.392826, 39.035553, 39.466118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072868, 39.174042, 39.773232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863281, 39.513973, 39.750427>,  <35.737530, 39.717934, 39.736744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863281, 39.513973, 39.750427>,  <36.072868, 39.174042, 39.773232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863281, 39.513973, 39.750427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485176, 0.352815, 0.800079,
		0.700046, 0.391552, -0.597179,
		-0.523966, 0.849829, -0.057015,
		35.706093, 39.768921, 39.733322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577690, 39.616386, 39.659477>,  <36.072868, 39.174042, 39.773232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577690, 39.616386, 39.659477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264526, 39.781075, 39.846043>,  <36.076630, 39.879887, 39.957981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264526, 39.781075, 39.846043>,  <36.577690, 39.616386, 39.659477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264526, 39.781075, 39.846043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577466, 0.201971, 0.791038,
		0.231483, 0.888649, -0.395878,
		-0.782910, 0.411718, 0.466412,
		36.029652, 39.904591, 39.985966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851463, 40.148487, 40.058334>,  <36.577690, 39.616386, 39.659477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851463, 40.148487, 40.058334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.488327, 40.075493, 40.209339>,  <36.270443, 40.031696, 40.299942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.488327, 40.075493, 40.209339>,  <36.851463, 40.148487, 40.058334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488327, 40.075493, 40.209339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379224, 0.026815, 0.924916,
		-0.178907, 0.982843, 0.044859,
		-0.907845, -0.182486, 0.377515,
		36.215973, 40.020748, 40.322594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743366, 40.725590, 40.577507>,  <36.851463, 40.148487, 40.058334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743366, 40.725590, 40.577507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505665, 40.418510, 40.673424>,  <36.363045, 40.234264, 40.730972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505665, 40.418510, 40.673424>,  <36.743366, 40.725590, 40.577507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505665, 40.418510, 40.673424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327967, 0.040926, 0.943802,
		-0.734367, 0.639506, 0.227458,
		-0.594258, -0.767696, 0.239791,
		36.327389, 40.188202, 40.745361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537899, 40.835476, 41.277004>,  <36.743366, 40.725590, 40.577507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537899, 40.835476, 41.277004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457657, 40.446198, 41.232021>,  <36.409512, 40.212631, 41.205032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457657, 40.446198, 41.232021>,  <36.537899, 40.835476, 41.277004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457657, 40.446198, 41.232021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082202, -0.131103, 0.987955,
		-0.976217, 0.188948, 0.106299,
		-0.200608, -0.973196, -0.112453,
		36.397476, 40.154240, 41.198284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069855, 40.690273, 41.767330>,  <36.537899, 40.835476, 41.277004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069855, 40.690273, 41.767330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232712, 40.338062, 41.670254>,  <36.330425, 40.126736, 41.612007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232712, 40.338062, 41.670254>,  <36.069855, 40.690273, 41.767330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232712, 40.338062, 41.670254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079301, -0.230630, 0.969805,
		-0.909916, -0.414095, -0.024072,
		0.407143, -0.880532, -0.242691,
		36.354855, 40.073902, 41.597446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788975, 40.174652, 42.260174>,  <36.069855, 40.690273, 41.767330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788975, 40.174652, 42.260174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125072, 40.008770, 42.120449>,  <36.326729, 39.909241, 42.036613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125072, 40.008770, 42.120449>,  <35.788975, 40.174652, 42.260174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125072, 40.008770, 42.120449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304693, -0.171757, 0.936836,
		-0.448508, -0.893598, -0.017959,
		0.840240, -0.414706, -0.349308,
		36.377144, 39.884357, 42.015656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047012, 39.767838, 42.762901>,  <35.788975, 40.174652, 42.260174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047012, 39.767838, 42.762901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.388550, 39.774090, 42.554783>,  <36.593472, 39.777840, 42.429913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.388550, 39.774090, 42.554783>,  <36.047012, 39.767838, 42.762901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388550, 39.774090, 42.554783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517712, -0.129317, 0.845725,
		-0.054061, -0.991480, -0.118510,
		0.853845, 0.015633, -0.520292,
		36.644703, 39.778778, 42.398697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435902, 39.226265, 43.076664>,  <36.047012, 39.767838, 42.762901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435902, 39.226265, 43.076664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.682190, 39.487434, 42.900219>,  <36.829964, 39.644135, 42.794353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.682190, 39.487434, 42.900219>,  <36.435902, 39.226265, 43.076664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682190, 39.487434, 42.900219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647339, -0.099958, 0.755619,
		0.449268, -0.750799, -0.484209,
		0.615719, 0.652923, -0.441114,
		36.866905, 39.683311, 42.767883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029888, 38.966389, 43.071278>,  <36.435902, 39.226265, 43.076664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029888, 38.966389, 43.071278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.126774, 39.351013, 43.019527>,  <37.184906, 39.581787, 42.988476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.126774, 39.351013, 43.019527>,  <37.029888, 38.966389, 43.071278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126774, 39.351013, 43.019527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671838, -0.070023, 0.737381,
		0.699974, -0.265528, -0.662971,
		0.242219, 0.961557, -0.129378,
		37.199440, 39.639481, 42.980713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756618, 38.961636, 43.159618>,  <37.029888, 38.966389, 43.071278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756618, 38.961636, 43.159618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621132, 39.332932, 43.221134>,  <37.539841, 39.555710, 43.258041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621132, 39.332932, 43.221134>,  <37.756618, 38.961636, 43.159618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621132, 39.332932, 43.221134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469505, 0.025104, 0.882573,
		0.815374, 0.371146, -0.444315,
		-0.338717, 0.928235, 0.153786,
		37.519516, 39.611401, 43.267269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325417, 39.452503, 43.374420>,  <37.756618, 38.961636, 43.159618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325417, 39.452503, 43.374420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999550, 39.642303, 43.507790>,  <37.804031, 39.756184, 43.587811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999550, 39.642303, 43.507790>,  <38.325417, 39.452503, 43.374420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999550, 39.642303, 43.507790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427169, 0.102111, 0.898388,
		0.392237, 0.874314, -0.285876,
		-0.814664, 0.474498, 0.333428,
		37.755150, 39.784653, 43.607819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727047, 39.908611, 42.798065>,  <38.325417, 39.452503, 43.374420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727047, 39.908611, 42.798065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.123722, 39.939854, 42.757160>,  <39.361729, 39.958599, 42.732616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.123722, 39.939854, 42.757160>,  <38.727047, 39.908611, 42.798065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123722, 39.939854, 42.757160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080436, -0.244089, -0.966411,
		-0.100441, 0.966602, -0.235778,
		0.991686, 0.078102, -0.102266,
		39.421227, 39.963284, 42.726479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805904, 40.450581, 42.319206>,  <38.727047, 39.908611, 42.798065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805904, 40.450581, 42.319206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133282, 40.221348, 42.335857>,  <39.329708, 40.083809, 42.345848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133282, 40.221348, 42.335857>,  <38.805904, 40.450581, 42.319206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133282, 40.221348, 42.335857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093118, -0.203782, -0.974578,
		0.566994, 0.793759, -0.220148,
		0.818442, -0.573079, 0.041630,
		39.378815, 40.049423, 42.348347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963997, 40.410450, 41.601326>,  <38.805904, 40.450581, 42.319206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963997, 40.410450, 41.601326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249634, 40.161110, 41.728764>,  <39.421017, 40.011505, 41.805225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249634, 40.161110, 41.728764>,  <38.963997, 40.410450, 41.601326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249634, 40.161110, 41.728764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080021, -0.524808, -0.847451,
		0.695459, 0.579667, -0.424644,
		0.714096, -0.623348, 0.318596,
		39.463863, 39.974106, 41.824341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476501, 40.440674, 41.080074>,  <38.963997, 40.410450, 41.601326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476501, 40.440674, 41.080074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.490318, 40.105236, 41.297539>,  <39.498608, 39.903973, 41.428017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.490318, 40.105236, 41.297539>,  <39.476501, 40.440674, 41.080074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490318, 40.105236, 41.297539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087961, -0.544422, -0.834187,
		0.995525, -0.019008, -0.092568,
		0.034540, -0.838596, 0.543658,
		39.500679, 39.853657, 41.460636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050877, 40.026546, 40.751823>,  <39.476501, 40.440674, 41.080074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050877, 40.026546, 40.751823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783157, 39.795303, 40.938511>,  <39.622524, 39.656559, 41.050522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783157, 39.795303, 40.938511>,  <40.050877, 40.026546, 40.751823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783157, 39.795303, 40.938511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214966, -0.450625, -0.866445,
		0.711215, -0.680241, 0.177329,
		-0.669300, -0.578109, 0.466720,
		39.582367, 39.621872, 41.078526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123093, 39.369987, 40.442200>,  <40.050877, 40.026546, 40.751823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123093, 39.369987, 40.442200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768803, 39.369083, 40.627880>,  <39.556229, 39.368542, 40.739288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768803, 39.369083, 40.627880>,  <40.123093, 39.369987, 40.442200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768803, 39.369083, 40.627880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408404, -0.471559, -0.781561,
		0.220669, -0.881831, 0.416748,
		-0.885726, -0.002265, 0.464202,
		39.503086, 39.368404, 40.767139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897213, 38.739658, 40.220222>,  <40.123093, 39.369987, 40.442200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897213, 38.739658, 40.220222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.574974, 38.942741, 40.342365>,  <39.381630, 39.064590, 40.415649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.574974, 38.942741, 40.342365>,  <39.897213, 38.739658, 40.220222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574974, 38.942741, 40.342365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559333, -0.481824, -0.674531,
		-0.195340, -0.714196, 0.672136,
		-0.805598, 0.507711, 0.305354,
		39.333294, 39.095055, 40.433971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347042, 38.192348, 40.392269>,  <39.897213, 38.739658, 40.220222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347042, 38.192348, 40.392269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.189018, 38.549641, 40.306412>,  <39.094204, 38.764015, 40.254898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.189018, 38.549641, 40.306412>,  <39.347042, 38.192348, 40.392269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189018, 38.549641, 40.306412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643958, -0.435896, -0.628740,
		-0.655169, -0.110169, 0.747406,
		-0.395059, 0.893229, -0.214641,
		39.070499, 38.817608, 40.242020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646896, 38.021408, 40.382610>,  <39.347042, 38.192348, 40.392269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646896, 38.021408, 40.382610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.652969, 38.377392, 40.200291>,  <38.656612, 38.590981, 40.090900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.652969, 38.377392, 40.200291>,  <38.646896, 38.021408, 40.382610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652969, 38.377392, 40.200291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617147, -0.350319, -0.704561,
		-0.786702, 0.291989, 0.543915,
		0.015180, 0.889955, -0.455796,
		38.657524, 38.644379, 40.063553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027992, 38.134525, 40.126011>,  <38.646896, 38.021408, 40.382610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027992, 38.134525, 40.126011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225182, 38.411915, 39.915840>,  <38.343494, 38.578346, 39.789738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225182, 38.411915, 39.915840>,  <38.027992, 38.134525, 40.126011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225182, 38.411915, 39.915840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605556, -0.160149, -0.779522,
		-0.624722, 0.702462, 0.340985,
		0.492976, 0.693469, -0.525428,
		38.373074, 38.619957, 39.758213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478794, 38.577408, 39.715221>,  <38.027992, 38.134525, 40.126011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478794, 38.577408, 39.715221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.825966, 38.623680, 39.522015>,  <38.034271, 38.651443, 39.406090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.825966, 38.623680, 39.522015>,  <37.478794, 38.577408, 39.715221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825966, 38.623680, 39.522015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481729, -0.040743, -0.875373,
		-0.120945, 0.992450, 0.020366,
		0.867934, 0.115683, -0.483020,
		38.086346, 38.658386, 39.377110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432491, 39.087440, 39.227711>,  <37.478794, 38.577408, 39.715221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432491, 39.087440, 39.227711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.731567, 38.870193, 39.074886>,  <37.911015, 38.739845, 38.983192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.731567, 38.870193, 39.074886>,  <37.432491, 39.087440, 39.227711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731567, 38.870193, 39.074886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386194, 0.112394, -0.915545,
		0.540194, 0.832098, -0.125715,
		0.747693, -0.543122, -0.382065,
		37.955875, 38.707256, 38.960266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732925, 39.439854, 38.637962>,  <37.432491, 39.087440, 39.227711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732925, 39.439854, 38.637962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.823826, 39.053864, 38.585537>,  <37.878365, 38.822269, 38.554081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.823826, 39.053864, 38.585537>,  <37.732925, 39.439854, 38.637962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823826, 39.053864, 38.585537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385904, 0.034334, -0.921900,
		0.894111, 0.260083, -0.364585,
		0.227252, -0.964976, -0.131065,
		37.892002, 38.764370, 38.546219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059841, 39.353817, 38.002441>,  <37.732925, 39.439854, 38.637962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059841, 39.353817, 38.002441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.939217, 38.982162, 38.088024>,  <37.866844, 38.759171, 38.139374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.939217, 38.982162, 38.088024>,  <38.059841, 39.353817, 38.002441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939217, 38.982162, 38.088024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298799, -0.121001, -0.946614,
		0.905418, -0.349388, -0.241135,
		-0.301558, -0.929132, 0.213953,
		37.848751, 38.703423, 38.152210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.269896, 36.457996, 29.069630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068233, 36.187466, 28.854815>,  <29.947237, 36.025146, 28.725925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068233, 36.187466, 28.854815>,  <30.269896, 36.457996, 29.069630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068233, 36.187466, 28.854815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679320, -0.073401, 0.730162,
		-0.533246, 0.732937, -0.422436,
		-0.504155, -0.676325, -0.537040,
		29.916986, 35.984570, 28.693703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590399, 36.585197, 29.210093>,  <30.269896, 36.457996, 29.069630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590399, 36.585197, 29.210093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557083, 36.215458, 29.061150>,  <29.537094, 35.993614, 28.971783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557083, 36.215458, 29.061150>,  <29.590399, 36.585197, 29.210093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557083, 36.215458, 29.061150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787576, -0.167880, 0.592908,
		-0.610563, 0.342643, -0.714009,
		-0.083288, -0.924344, -0.372359,
		29.532097, 35.938156, 28.949442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889202, 36.477711, 28.995729>,  <29.590399, 36.585197, 29.210093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889202, 36.477711, 28.995729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060051, 36.128872, 29.091240>,  <29.162560, 35.919567, 29.148546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060051, 36.128872, 29.091240>,  <28.889202, 36.477711, 28.995729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060051, 36.128872, 29.091240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710740, -0.160575, 0.684882,
		-0.558942, -0.462237, -0.688419,
		0.427121, -0.872097, 0.238778,
		29.188187, 35.867245, 29.162874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348820, 36.088600, 29.194630>,  <28.889202, 36.477711, 28.995729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348820, 36.088600, 29.194630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644505, 35.850731, 29.321079>,  <28.821915, 35.708012, 29.396950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644505, 35.850731, 29.321079>,  <28.348820, 36.088600, 29.194630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644505, 35.850731, 29.321079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602299, -0.373715, 0.705388,
		-0.301329, -0.711835, -0.634422,
		0.739214, -0.594666, 0.316127,
		28.866268, 35.672329, 29.415916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002258, 35.415478, 29.530708>,  <28.348820, 36.088600, 29.194630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002258, 35.415478, 29.530708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376818, 35.403114, 29.670536>,  <28.601553, 35.395699, 29.754433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376818, 35.403114, 29.670536>,  <28.002258, 35.415478, 29.530708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376818, 35.403114, 29.670536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345030, -0.263033, 0.900982,
		0.064104, -0.964292, -0.256968,
		0.936400, -0.030905, 0.349571,
		28.657738, 35.393841, 29.775408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013178, 34.800911, 29.994333>,  <28.002258, 35.415478, 29.530708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013178, 34.800911, 29.994333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293858, 35.057125, 30.119129>,  <28.462265, 35.210854, 30.194006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293858, 35.057125, 30.119129>,  <28.013178, 34.800911, 29.994333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293858, 35.057125, 30.119129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336305, -0.088264, 0.937608,
		0.628105, -0.762842, 0.153479,
		0.701700, 0.640532, 0.311987,
		28.504368, 35.249283, 30.212725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398422, 34.478298, 30.610281>,  <28.013178, 34.800911, 29.994333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398422, 34.478298, 30.610281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438166, 34.876030, 30.625435>,  <28.462011, 35.114670, 30.634527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438166, 34.876030, 30.625435>,  <28.398422, 34.478298, 30.610281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438166, 34.876030, 30.625435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197180, -0.017644, 0.980208,
		0.975319, -0.104863, 0.194309,
		0.099359, 0.994330, 0.037885,
		28.467974, 35.174328, 30.636801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633955, 34.584934, 31.259607>,  <28.398422, 34.478298, 30.610281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633955, 34.584934, 31.259607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488501, 34.943657, 31.158800>,  <28.401228, 35.158890, 31.098316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488501, 34.943657, 31.158800>,  <28.633955, 34.584934, 31.259607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488501, 34.943657, 31.158800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280759, 0.152449, 0.947594,
		0.888224, 0.415338, 0.196349,
		-0.363638, 0.896802, -0.252019,
		28.379410, 35.212696, 31.083195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893238, 35.056870, 31.800129>,  <28.633955, 34.584934, 31.259607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893238, 35.056870, 31.800129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589748, 35.251144, 31.626488>,  <28.407654, 35.367710, 31.522303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589748, 35.251144, 31.626488>,  <28.893238, 35.056870, 31.800129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589748, 35.251144, 31.626488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303374, 0.326266, 0.895273,
		0.576456, 0.810962, -0.100202,
		-0.758725, 0.485687, -0.434103,
		28.362131, 35.396851, 31.496258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940399, 35.798389, 31.991646>,  <28.893238, 35.056870, 31.800129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940399, 35.798389, 31.991646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.564257, 35.732216, 31.872744>,  <28.338572, 35.692513, 31.801403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.564257, 35.732216, 31.872744>,  <28.940399, 35.798389, 31.991646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564257, 35.732216, 31.872744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338003, 0.553277, 0.761340,
		0.038511, 0.816404, -0.576195,
		-0.940357, -0.165435, -0.297255,
		28.282150, 35.682587, 31.783567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555264, 36.469357, 32.177231>,  <28.940399, 35.798389, 31.991646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555264, 36.469357, 32.177231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294544, 36.169456, 32.131569>,  <28.138113, 35.989517, 32.104172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.294544, 36.169456, 32.131569>,  <28.555264, 36.469357, 32.177231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294544, 36.169456, 32.131569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412001, 0.223686, 0.883300,
		-0.636721, 0.622765, -0.454697,
		-0.651798, -0.749752, -0.114154,
		28.099005, 35.944530, 32.097324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068115, 36.582325, 32.672001>,  <28.555264, 36.469357, 32.177231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068115, 36.582325, 32.672001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906565, 36.226265, 32.587601>,  <27.809633, 36.012630, 32.536961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906565, 36.226265, 32.587601>,  <28.068115, 36.582325, 32.672001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906565, 36.226265, 32.587601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562894, 0.059994, 0.824349,
		-0.721133, 0.451705, -0.525289,
		-0.403877, -0.890147, -0.210998,
		27.785402, 35.959221, 32.524300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403757, 36.694550, 32.700752>,  <28.068115, 36.582325, 32.672001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403757, 36.694550, 32.700752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442575, 36.301418, 32.763538>,  <27.465866, 36.065540, 32.801208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442575, 36.301418, 32.763538>,  <27.403757, 36.694550, 32.700752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442575, 36.301418, 32.763538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529219, 0.082608, 0.844454,
		-0.842917, -0.165018, -0.512113,
		0.097046, -0.982825, 0.156962,
		27.471689, 36.006569, 32.810627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784512, 36.441738, 33.023800>,  <27.403757, 36.694550, 32.700752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784512, 36.441738, 33.023800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.072634, 36.180916, 33.118443>,  <27.245506, 36.024422, 33.175228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.072634, 36.180916, 33.118443>,  <26.784512, 36.441738, 33.023800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072634, 36.180916, 33.118443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323977, -0.014638, 0.945952,
		-0.613352, -0.758028, -0.221796,
		0.720304, -0.652058, 0.236605,
		27.288725, 35.985298, 33.189423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450308, 35.984581, 33.448185>,  <26.784512, 36.441738, 33.023800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450308, 35.984581, 33.448185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.834375, 35.927448, 33.544250>,  <27.064816, 35.893169, 33.601891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.834375, 35.927448, 33.544250>,  <26.450308, 35.984581, 33.448185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834375, 35.927448, 33.544250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234384, 0.056227, 0.970517,
		-0.152122, -0.988149, 0.020510,
		0.960168, -0.142830, 0.240160,
		27.122425, 35.884602, 33.616299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370699, 35.588306, 34.047562>,  <26.450308, 35.984581, 33.448185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370699, 35.588306, 34.047562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.745178, 35.727699, 34.029282>,  <26.969866, 35.811337, 34.018314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.745178, 35.727699, 34.029282>,  <26.370699, 35.588306, 34.047562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745178, 35.727699, 34.029282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005203, 0.116258, 0.993205,
		0.351432, -0.930076, 0.107027,
		0.936199, 0.348487, -0.045696,
		27.026037, 35.832245, 34.015572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742746, 35.251011, 34.557255>,  <26.370699, 35.588306, 34.047562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742746, 35.251011, 34.557255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935877, 35.592278, 34.478279>,  <27.051756, 35.797039, 34.430893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935877, 35.592278, 34.478279>,  <26.742746, 35.251011, 34.557255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935877, 35.592278, 34.478279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032704, 0.242874, 0.969507,
		0.875104, -0.461648, 0.145168,
		0.482828, 0.853167, -0.197442,
		27.080725, 35.848228, 34.419048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473902, 35.306992, 34.825161>,  <26.742746, 35.251011, 34.557255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473902, 35.306992, 34.825161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.341011, 35.683117, 34.795670>,  <27.261276, 35.908791, 34.777977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.341011, 35.683117, 34.795670>,  <27.473902, 35.306992, 34.825161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341011, 35.683117, 34.795670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072592, 0.052443, 0.995982,
		0.940402, 0.336244, 0.050836,
		-0.332227, 0.940314, -0.073726,
		27.241343, 35.965210, 34.773552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810045, 35.781662, 35.236954>,  <27.473902, 35.306992, 34.825161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810045, 35.781662, 35.236954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444010, 35.937283, 35.194527>,  <27.224388, 36.030655, 35.169071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444010, 35.937283, 35.194527>,  <27.810045, 35.781662, 35.236954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444010, 35.937283, 35.194527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098039, 0.040493, 0.994358,
		0.391155, 0.920324, 0.001088,
		-0.915088, 0.389055, -0.106066,
		27.169483, 36.054001, 35.162708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525295, 35.453789, 35.180206>,  <27.810045, 35.781662, 35.236954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525295, 35.453789, 35.180206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.793776, 35.735256, 35.273453>,  <28.954865, 35.904137, 35.329403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.793776, 35.735256, 35.273453>,  <28.525295, 35.453789, 35.180206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793776, 35.735256, 35.273453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604860, -0.338092, -0.720998,
		-0.428526, 0.624939, -0.652546,
		0.671200, 0.703665, 0.233120,
		28.995136, 35.946358, 35.343388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669006, 35.912380, 34.636116>,  <28.525295, 35.453789, 35.180206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669006, 35.912380, 34.636116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998388, 35.928585, 34.862492>,  <29.196018, 35.938309, 34.998318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998388, 35.928585, 34.862492>,  <28.669006, 35.912380, 34.636116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998388, 35.928585, 34.862492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561961, -0.195791, -0.803658,
		0.078250, 0.979809, -0.183989,
		0.823454, 0.040508, 0.565935,
		29.245424, 35.940739, 35.032272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114418, 36.194233, 34.203568>,  <28.669006, 35.912380, 34.636116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114418, 36.194233, 34.203568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367985, 36.055923, 34.480289>,  <29.520124, 35.972939, 34.646324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367985, 36.055923, 34.480289>,  <29.114418, 36.194233, 34.203568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367985, 36.055923, 34.480289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720294, -0.061804, -0.690911,
		0.281652, 0.936282, 0.209877,
		0.633916, -0.345770, 0.691805,
		29.558159, 35.952194, 34.687832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693134, 36.627766, 34.161037>,  <29.114418, 36.194233, 34.203568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693134, 36.627766, 34.161037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816423, 36.278252, 34.311501>,  <29.890398, 36.068542, 34.401779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816423, 36.278252, 34.311501>,  <29.693134, 36.627766, 34.161037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816423, 36.278252, 34.311501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644171, -0.099257, -0.758414,
		0.700029, 0.476069, 0.532276,
		0.308225, -0.873788, 0.376153,
		29.908892, 36.016113, 34.424347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403828, 36.752895, 34.217625>,  <29.693134, 36.627766, 34.161037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403828, 36.752895, 34.217625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.368608, 36.354465, 34.221111>,  <30.347477, 36.115406, 34.223206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.368608, 36.354465, 34.221111>,  <30.403828, 36.752895, 34.217625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368608, 36.354465, 34.221111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722114, -0.069855, -0.688238,
		0.686148, -0.054300, 0.725433,
		-0.088047, -0.996078, 0.008720,
		30.342194, 36.055641, 34.223728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222988, 36.423313, 34.358582>,  <30.403828, 36.752895, 34.217625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222988, 36.423313, 34.358582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956881, 36.173016, 34.195679>,  <30.797216, 36.022835, 34.097939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956881, 36.173016, 34.195679>,  <31.222988, 36.423313, 34.358582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956881, 36.173016, 34.195679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601374, -0.125852, -0.788993,
		0.442456, -0.769807, 0.460033,
		-0.665269, -0.625747, -0.407258,
		30.757299, 35.985291, 34.073502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549662, 35.724270, 34.263645>,  <31.222988, 36.423313, 34.358582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549662, 35.724270, 34.263645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.248167, 35.738434, 34.001156>,  <31.067270, 35.746933, 33.843662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.248167, 35.738434, 34.001156>,  <31.549662, 35.724270, 34.263645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248167, 35.738434, 34.001156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608947, -0.337834, -0.717671,
		-0.247105, -0.940539, 0.233077,
		-0.753739, 0.035408, -0.656219,
		31.022045, 35.749058, 33.804291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433069, 34.996014, 33.952477>,  <31.549662, 35.724270, 34.263645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433069, 34.996014, 33.952477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.277060, 35.275963, 33.713123>,  <31.183455, 35.443932, 33.569511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.277060, 35.275963, 33.713123>,  <31.433069, 34.996014, 33.952477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277060, 35.275963, 33.713123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483437, -0.397440, -0.779955,
		-0.783689, -0.593481, -0.183333,
		-0.390025, 0.699872, -0.598381,
		31.160051, 35.485924, 33.533607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619732, 34.737072, 33.311359>,  <31.433069, 34.996014, 33.952477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619732, 34.737072, 33.311359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.490543, 35.096672, 33.193043>,  <31.413031, 35.312431, 33.122051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.490543, 35.096672, 33.193043>,  <31.619732, 34.737072, 33.311359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490543, 35.096672, 33.193043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189093, -0.244941, -0.950920,
		-0.927325, -0.363053, -0.090885,
		-0.322973, 0.898997, -0.295791,
		31.393652, 35.366371, 33.104305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059254, 34.539776, 32.881153>,  <31.619732, 34.737072, 33.311359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059254, 34.539776, 32.881153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.161110, 34.911358, 32.773670>,  <31.222223, 35.134308, 32.709179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.161110, 34.911358, 32.773670>,  <31.059254, 34.539776, 32.881153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161110, 34.911358, 32.773670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058771, -0.262487, -0.963144,
		-0.965249, 0.261046, -0.012244,
		0.254639, 0.928954, -0.268707,
		31.237501, 35.190044, 32.693058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623899, 34.728302, 32.317318>,  <31.059254, 34.539776, 32.881153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623899, 34.728302, 32.317318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931141, 34.983307, 32.293324>,  <31.115486, 35.136311, 32.278927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931141, 34.983307, 32.293324>,  <30.623899, 34.728302, 32.317318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931141, 34.983307, 32.293324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011736, -0.107676, -0.994117,
		-0.640217, 0.762882, -0.090188,
		0.768105, 0.637509, -0.059983,
		31.161572, 35.174561, 32.275330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486959, 35.235542, 31.814672>,  <30.623899, 34.728302, 32.317318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486959, 35.235542, 31.814672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882416, 35.291176, 31.837446>,  <31.119690, 35.324558, 31.851110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.882416, 35.291176, 31.837446>,  <30.486959, 35.235542, 31.814672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882416, 35.291176, 31.837446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058270, -0.005532, -0.998285,
		-0.138534, 0.990265, -0.013574,
		0.988642, 0.139088, 0.056937,
		31.179008, 35.332901, 31.854527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599773, 35.698559, 31.355146>,  <30.486959, 35.235542, 31.814672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599773, 35.698559, 31.355146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.957939, 35.524281, 31.391817>,  <31.172838, 35.419712, 31.413818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.957939, 35.524281, 31.391817>,  <30.599773, 35.698559, 31.355146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957939, 35.524281, 31.391817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114288, 0.025916, -0.993110,
		0.430320, 0.899720, 0.073000,
		0.895412, -0.435698, 0.091675,
		31.226562, 35.393570, 31.419319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837170, 35.939766, 30.705513>,  <30.599773, 35.698559, 31.355146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837170, 35.939766, 30.705513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.097456, 35.664268, 30.833393>,  <31.253628, 35.498970, 30.910122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.097456, 35.664268, 30.833393>,  <30.837170, 35.939766, 30.705513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097456, 35.664268, 30.833393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411770, -0.033678, -0.910665,
		0.637979, 0.724225, 0.261688,
		0.650714, -0.688740, 0.319700,
		31.292669, 35.457645, 30.929304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461380, 36.155605, 30.472879>,  <30.837170, 35.939766, 30.705513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461380, 36.155605, 30.472879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.510307, 35.764660, 30.541939>,  <31.539663, 35.530094, 30.583374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.510307, 35.764660, 30.541939>,  <31.461380, 36.155605, 30.472879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510307, 35.764660, 30.541939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301235, -0.129188, -0.944758,
		0.945672, 0.167570, 0.278612,
		0.122320, -0.977359, 0.172648,
		31.547003, 35.471451, 30.593733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998932, 35.958588, 30.138090>,  <31.461380, 36.155605, 30.472879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998932, 35.958588, 30.138090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856649, 35.585751, 30.165442>,  <31.771280, 35.362049, 30.181852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856649, 35.585751, 30.165442>,  <31.998932, 35.958588, 30.138090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856649, 35.585751, 30.165442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167393, -0.135519, -0.976532,
		0.919484, -0.335914, 0.204231,
		-0.355708, -0.932092, 0.068378,
		31.749937, 35.306122, 30.185955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378876, 35.656204, 29.620857>,  <31.998932, 35.958588, 30.138090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378876, 35.656204, 29.620857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.072922, 35.405560, 29.680597>,  <31.889349, 35.255173, 29.716442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.072922, 35.405560, 29.680597>,  <32.378876, 35.656204, 29.620857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072922, 35.405560, 29.680597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122137, -0.086574, -0.988730,
		0.632479, -0.774509, -0.010313,
		-0.764887, -0.626611, 0.149352,
		31.843456, 35.217575, 29.725403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579998, 34.969582, 29.283012>,  <32.378876, 35.656204, 29.620857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579998, 34.969582, 29.283012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.187935, 35.041756, 29.315836>,  <31.952698, 35.085060, 29.335531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.187935, 35.041756, 29.315836>,  <32.579998, 34.969582, 29.283012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187935, 35.041756, 29.315836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089203, -0.031816, -0.995505,
		-0.177018, -0.983071, 0.047280,
		-0.980157, 0.180440, 0.082061,
		31.893888, 35.095886, 29.340454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265297, 34.529236, 28.714775>,  <32.579998, 34.969582, 29.283012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265297, 34.529236, 28.714775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.980375, 34.788242, 28.823109>,  <31.809423, 34.943645, 28.888109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.980375, 34.788242, 28.823109>,  <32.265297, 34.529236, 28.714775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980375, 34.788242, 28.823109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305375, 0.061528, -0.950242,
		-0.631961, -0.759563, 0.153909,
		-0.712300, 0.647516, 0.270835,
		31.766685, 34.982498, 28.904360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742939, 34.299198, 28.628393>,  <32.265297, 34.529236, 28.714775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742939, 34.299198, 28.628393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.635254, 34.682961, 28.594791>,  <31.570642, 34.913219, 28.574631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.635254, 34.682961, 28.594791>,  <31.742939, 34.299198, 28.628393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635254, 34.682961, 28.594791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264712, -0.157578, -0.951366,
		-0.925987, -0.233886, 0.296389,
		-0.269215, 0.959410, -0.084002,
		31.554489, 34.970783, 28.569592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333780, 34.323601, 27.994654>,  <31.742939, 34.299198, 28.628393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333780, 34.323601, 27.994654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.380596, 34.716507, 28.053234>,  <31.408686, 34.952251, 28.088383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.380596, 34.716507, 28.053234>,  <31.333780, 34.323601, 27.994654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380596, 34.716507, 28.053234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287921, 0.174694, -0.941586,
		-0.950475, 0.068036, 0.303262,
		0.117039, 0.982269, 0.146453,
		31.415709, 35.011189, 28.097170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665592, 34.643970, 27.914915>,  <31.333780, 34.323601, 27.994654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665592, 34.643970, 27.914915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.962948, 34.905720, 27.859526>,  <31.141361, 35.062767, 27.826292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.962948, 34.905720, 27.859526>,  <30.665592, 34.643970, 27.914915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962948, 34.905720, 27.859526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317860, 0.163469, -0.933939,
		-0.588505, 0.738295, 0.329519,
		0.743389, 0.654369, -0.138473,
		31.185965, 35.102032, 27.817984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424004, 35.226688, 27.584475>,  <30.665592, 34.643970, 27.914915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424004, 35.226688, 27.584475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.813946, 35.244747, 27.497185>,  <31.047911, 35.255581, 27.444811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.813946, 35.244747, 27.497185>,  <30.424004, 35.226688, 27.584475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813946, 35.244747, 27.497185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222100, 0.276881, -0.934884,
		0.018215, 0.959843, 0.279945,
		0.974854, 0.045147, -0.218224,
		31.106401, 35.258289, 27.431717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.289532, 39.628155, 42.926376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.093651, 39.297184, 43.036327>,  <42.976124, 39.098602, 43.102299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.093651, 39.297184, 43.036327>,  <43.289532, 39.628155, 42.926376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093651, 39.297184, 43.036327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009982, 0.320566, 0.947174,
		-0.871835, 0.461086, -0.165240,
		-0.489699, -0.827428, 0.274878,
		42.946743, 39.048954, 43.118790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779800, 39.896805, 43.416302>,  <43.289532, 39.628155, 42.926376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779800, 39.896805, 43.416302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.789082, 39.501648, 43.477650>,  <42.794651, 39.264553, 43.514458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.789082, 39.501648, 43.477650>,  <42.779800, 39.896805, 43.416302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789082, 39.501648, 43.477650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090369, 0.150708, 0.984439,
		-0.995638, -0.036705, -0.085778,
		0.023206, -0.987897, 0.153368,
		42.796043, 39.205280, 43.523659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330845, 39.830414, 43.968678>,  <42.779800, 39.896805, 43.416302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330845, 39.830414, 43.968678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.533371, 39.486012, 43.987934>,  <42.654884, 39.279369, 43.999489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.533371, 39.486012, 43.987934>,  <42.330845, 39.830414, 43.968678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533371, 39.486012, 43.987934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014667, 0.047215, 0.998777,
		-0.862225, -0.506400, 0.011277,
		0.506313, -0.861005, 0.048138,
		42.685265, 39.227711, 44.002377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886662, 39.328209, 44.377762>,  <42.330845, 39.830414, 43.968678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886662, 39.328209, 44.377762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.259937, 39.185158, 44.391911>,  <42.483902, 39.099327, 44.400402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.259937, 39.185158, 44.391911>,  <41.886662, 39.328209, 44.377762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259937, 39.185158, 44.391911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026857, 0.167558, 0.985496,
		-0.358370, -0.918708, 0.165969,
		0.933193, -0.357630, 0.035374,
		42.539894, 39.077869, 44.402523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960567, 39.083954, 45.152344>,  <41.886662, 39.328209, 44.377762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960567, 39.083954, 45.152344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.335552, 39.085213, 45.013119>,  <42.560543, 39.085968, 44.929585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.335552, 39.085213, 45.013119>,  <41.960567, 39.083954, 45.152344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335552, 39.085213, 45.013119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323175, 0.363542, 0.873725,
		0.129284, -0.931573, 0.339791,
		0.937467, 0.003147, -0.348061,
		42.616791, 39.086159, 44.908699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352081, 38.734142, 45.664089>,  <41.960567, 39.083954, 45.152344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352081, 38.734142, 45.664089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.601299, 38.966835, 45.454937>,  <42.750832, 39.106449, 45.329445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.601299, 38.966835, 45.454937>,  <42.352081, 38.734142, 45.664089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601299, 38.966835, 45.454937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265545, 0.471471, 0.840952,
		0.735731, -0.662800, 0.139272,
		0.623046, 0.581731, -0.522879,
		42.788212, 39.141354, 45.298073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011898, 38.604313, 45.918579>,  <42.352081, 38.734142, 45.664089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011898, 38.604313, 45.918579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.012451, 38.957466, 45.730743>,  <43.012783, 39.169357, 45.618042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.012451, 38.957466, 45.730743>,  <43.011898, 38.604313, 45.918579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012451, 38.957466, 45.730743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348831, 0.439664, 0.827655,
		0.937185, -0.164950, -0.307370,
		0.001382, 0.882886, -0.469586,
		43.012867, 39.222332, 45.589867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600449, 38.860271, 46.269863>,  <43.011898, 38.604313, 45.918579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600449, 38.860271, 46.269863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.430889, 39.184093, 46.107414>,  <43.329155, 39.378387, 46.009945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.430889, 39.184093, 46.107414>,  <43.600449, 38.860271, 46.269863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430889, 39.184093, 46.107414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350421, 0.560074, 0.750681,
		0.835173, 0.175901, -0.521099,
		-0.423900, 0.809553, -0.406119,
		43.303719, 39.426960, 45.985577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082268, 39.324566, 46.250263>,  <43.600449, 38.860271, 46.269863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082268, 39.324566, 46.250263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.732185, 39.516911, 46.271381>,  <43.522137, 39.632317, 46.284054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.732185, 39.516911, 46.271381>,  <44.082268, 39.324566, 46.250263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732185, 39.516911, 46.271381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300186, 0.454279, 0.838760,
		0.379341, 0.749937, -0.541936,
		-0.875208, 0.480858, 0.052794,
		43.469624, 39.661167, 46.287220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243076, 40.015987, 46.713505>,  <44.082268, 39.324566, 46.250263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243076, 40.015987, 46.713505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.845245, 39.991528, 46.679836>,  <43.606548, 39.976852, 46.659634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.845245, 39.991528, 46.679836>,  <44.243076, 40.015987, 46.713505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845245, 39.991528, 46.679836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099128, 0.311387, 0.945099,
		-0.031584, 0.948314, -0.315759,
		-0.994573, -0.061150, -0.084170,
		43.546875, 39.973183, 46.654587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945370, 40.667568, 47.000816>,  <44.243076, 40.015987, 46.713505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945370, 40.667568, 47.000816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.628387, 40.423622, 47.004292>,  <43.438198, 40.277256, 47.006378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.628387, 40.423622, 47.004292>,  <43.945370, 40.667568, 47.000816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628387, 40.423622, 47.004292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246650, 0.333458, 0.909928,
		-0.557830, 0.718937, -0.414675,
		-0.792458, -0.609865, 0.008687,
		43.390652, 40.240662, 47.006897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297840, 41.047176, 47.233452>,  <43.945370, 40.667568, 47.000816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297840, 41.047176, 47.233452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.235378, 40.658409, 47.303864>,  <43.197899, 40.425148, 47.346111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.235378, 40.658409, 47.303864>,  <43.297840, 41.047176, 47.233452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235378, 40.658409, 47.303864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241634, 0.210392, 0.947285,
		-0.957720, 0.105391, -0.267704,
		-0.156158, -0.971920, 0.176031,
		43.188530, 40.366833, 47.356674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628147, 40.941246, 47.524113>,  <43.297840, 41.047176, 47.233452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628147, 40.941246, 47.524113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.889019, 40.659908, 47.637226>,  <43.045544, 40.491104, 47.705093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.889019, 40.659908, 47.637226>,  <42.628147, 40.941246, 47.524113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889019, 40.659908, 47.637226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227212, 0.174516, 0.958081,
		-0.723211, -0.689095, -0.045992,
		0.652182, -0.703344, 0.282783,
		43.084675, 40.448906, 47.722061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901775, 40.852962, 47.756691>,  <42.628147, 40.941246, 47.524113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901775, 40.852962, 47.756691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.646019, 40.895069, 48.061348>,  <41.492565, 40.920334, 48.244141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.646019, 40.895069, 48.061348>,  <41.901775, 40.852962, 47.756691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646019, 40.895069, 48.061348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667806, -0.566975, -0.482260,
		0.381068, -0.816982, 0.432814,
		-0.639392, 0.105261, 0.761641,
		41.454201, 40.926647, 48.289841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609463, 40.200825, 48.154106>,  <41.901775, 40.852962, 47.756691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609463, 40.200825, 48.154106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.362900, 40.514584, 48.126499>,  <41.214962, 40.702839, 48.109936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.362900, 40.514584, 48.126499>,  <41.609463, 40.200825, 48.154106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362900, 40.514584, 48.126499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544838, -0.488145, -0.681811,
		-0.568505, -0.382665, 0.728265,
		-0.616404, 0.784399, -0.069023,
		41.177979, 40.749905, 48.105793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892735, 39.838657, 48.134571>,  <41.609463, 40.200825, 48.154106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892735, 39.838657, 48.134571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.875381, 40.208996, 47.984409>,  <40.864967, 40.431198, 47.894310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.875381, 40.208996, 47.984409>,  <40.892735, 39.838657, 48.134571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875381, 40.208996, 47.984409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455951, -0.352696, -0.817138,
		-0.888947, 0.135714, 0.437442,
		-0.043387, 0.925844, -0.375407,
		40.862366, 40.486748, 47.871788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270008, 39.833202, 47.717266>,  <40.892735, 39.838657, 48.134571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270008, 39.833202, 47.717266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.487823, 40.137455, 47.575890>,  <40.618515, 40.320007, 47.491066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.487823, 40.137455, 47.575890>,  <40.270008, 39.833202, 47.717266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487823, 40.137455, 47.575890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386236, -0.146647, -0.910668,
		-0.744512, 0.632406, 0.213927,
		0.544540, 0.760629, -0.353438,
		40.651184, 40.365643, 47.469856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749870, 40.039200, 47.176949>,  <40.270008, 39.833202, 47.717266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749870, 40.039200, 47.176949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097134, 40.224773, 47.106457>,  <40.305492, 40.336117, 47.064163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097134, 40.224773, 47.106457>,  <39.749870, 40.039200, 47.176949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097134, 40.224773, 47.106457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181329, -0.034007, -0.982834,
		-0.461967, 0.885215, 0.054601,
		0.868163, 0.463937, -0.176225,
		40.357582, 40.363956, 47.053589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638840, 40.638462, 46.751076>,  <39.749870, 40.039200, 47.176949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638840, 40.638462, 46.751076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015564, 40.511013, 46.708218>,  <40.241596, 40.434544, 46.682503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015564, 40.511013, 46.708218>,  <39.638840, 40.638462, 46.751076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015564, 40.511013, 46.708218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116782, -0.011251, -0.993094,
		0.315216, 0.947815, -0.047805,
		0.941807, -0.318621, -0.107142,
		40.298107, 40.415428, 46.676075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128929, 41.173565, 46.411991>,  <39.638840, 40.638462, 46.751076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128929, 41.173565, 46.411991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.293461, 40.831905, 46.284721>,  <40.392181, 40.626911, 46.208359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.293461, 40.831905, 46.284721>,  <40.128929, 41.173565, 46.411991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293461, 40.831905, 46.284721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107874, 0.300998, -0.947504,
		0.905079, 0.424063, 0.031670,
		0.411334, -0.854149, -0.318172,
		40.416862, 40.575661, 46.189270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078732, 41.373772, 45.802673>,  <40.128929, 41.173565, 46.411991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078732, 41.373772, 45.802673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.271152, 41.025166, 45.764618>,  <40.386604, 40.816002, 45.741783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.271152, 41.025166, 45.764618>,  <40.078732, 41.373772, 45.802673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271152, 41.025166, 45.764618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284530, -0.052555, -0.957225,
		0.829237, 0.487543, -0.273254,
		0.481050, -0.871516, -0.095140,
		40.415466, 40.763710, 45.736076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639977, 41.348980, 45.358788>,  <40.078732, 41.373772, 45.802673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639977, 41.348980, 45.358788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.523285, 40.966434, 45.365337>,  <40.453270, 40.736908, 45.369267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.523285, 40.966434, 45.365337>,  <40.639977, 41.348980, 45.358788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523285, 40.966434, 45.365337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041954, -0.004309, -0.999110,
		0.955581, -0.292153, -0.038866,
		-0.291726, -0.956362, 0.016374,
		40.435768, 40.679527, 45.370251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009338, 40.964279, 44.793549>,  <40.639977, 41.348980, 45.358788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009338, 40.964279, 44.793549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.707432, 40.711948, 44.865543>,  <40.526287, 40.560551, 44.908741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.707432, 40.711948, 44.865543>,  <41.009338, 40.964279, 44.793549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707432, 40.711948, 44.865543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064665, -0.201486, -0.977354,
		0.652802, -0.749310, 0.111282,
		-0.754763, -0.630823, 0.179985,
		40.481003, 40.522701, 44.919540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171593, 40.277588, 44.462986>,  <41.009338, 40.964279, 44.793549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171593, 40.277588, 44.462986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.779251, 40.338371, 44.511692>,  <40.543846, 40.374840, 44.540916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.779251, 40.338371, 44.511692>,  <41.171593, 40.277588, 44.462986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779251, 40.338371, 44.511692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154018, -0.222816, -0.962617,
		-0.119145, -0.962945, 0.241955,
		-0.980858, 0.151957, 0.121763,
		40.484993, 40.383957, 44.548222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899834, 39.794193, 43.978992>,  <41.171593, 40.277588, 44.462986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899834, 39.794193, 43.978992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.580544, 40.001507, 44.101776>,  <40.388969, 40.125896, 44.175446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.580544, 40.001507, 44.101776>,  <40.899834, 39.794193, 43.978992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580544, 40.001507, 44.101776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448785, -0.171795, -0.876971,
		-0.401790, -0.837774, 0.369730,
		-0.798221, 0.518287, 0.306955,
		40.341076, 40.156994, 44.193863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384464, 39.376778, 43.835064>,  <40.899834, 39.794193, 43.978992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384464, 39.376778, 43.835064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200024, 39.729355, 43.875919>,  <40.089359, 39.940903, 43.900433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200024, 39.729355, 43.875919>,  <40.384464, 39.376778, 43.835064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200024, 39.729355, 43.875919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524080, -0.177636, -0.832938,
		-0.716047, -0.437602, 0.543858,
		-0.461104, 0.881448, 0.102142,
		40.061691, 39.993790, 43.906563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571777, 39.345558, 43.940235>,  <40.384464, 39.376778, 43.835064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571777, 39.345558, 43.940235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686569, 39.683895, 43.760372>,  <39.755444, 39.886898, 43.652454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686569, 39.683895, 43.760372>,  <39.571777, 39.345558, 43.940235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686569, 39.683895, 43.760372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476454, -0.281186, -0.833022,
		-0.831045, 0.453296, 0.322313,
		0.286976, 0.845847, -0.449653,
		39.772663, 39.937649, 43.625477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040245, 39.456802, 43.440914>,  <39.571777, 39.345558, 43.940235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040245, 39.456802, 43.440914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.339146, 39.690407, 43.314083>,  <39.518486, 39.830570, 43.237984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.339146, 39.690407, 43.314083>,  <39.040245, 39.456802, 43.440914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339146, 39.690407, 43.314083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283856, -0.150907, -0.946918,
		-0.600862, 0.797594, 0.053010,
		0.747256, 0.584014, -0.317076,
		39.563324, 39.865612, 43.218960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678204, 39.873253, 43.858543>,  <39.040245, 39.456802, 43.440914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678204, 39.873253, 43.858543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.283695, 39.897419, 43.920017>,  <38.046989, 39.911919, 43.956902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.283695, 39.897419, 43.920017>,  <38.678204, 39.873253, 43.858543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283695, 39.897419, 43.920017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161736, 0.165718, 0.972820,
		0.033306, 0.984321, -0.173215,
		-0.986272, 0.060416, 0.153681,
		37.987812, 39.915543, 43.966122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605713, 40.399639, 44.357662>,  <38.678204, 39.873253, 43.858543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605713, 40.399639, 44.357662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250610, 40.215527, 44.359734>,  <38.037548, 40.105061, 44.360977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250610, 40.215527, 44.359734>,  <38.605713, 40.399639, 44.357662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250610, 40.215527, 44.359734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033887, 0.076577, 0.996488,
		-0.459059, 0.884466, -0.083580,
		-0.887760, -0.460278, 0.005181,
		37.984283, 40.077442, 44.361286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080994, 40.798489, 44.815609>,  <38.605713, 40.399639, 44.357662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080994, 40.798489, 44.815609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986706, 40.410301, 44.795090>,  <37.930134, 40.177391, 44.782776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986706, 40.410301, 44.795090>,  <38.080994, 40.798489, 44.815609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986706, 40.410301, 44.795090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057545, -0.038757, 0.997590,
		-0.970115, 0.238106, -0.046709,
		-0.235722, -0.970466, -0.051301,
		37.915989, 40.119160, 44.779701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504745, 40.666752, 45.326866>,  <38.080994, 40.798489, 44.815609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504745, 40.666752, 45.326866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635101, 40.295444, 45.255192>,  <37.713314, 40.072659, 45.212189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635101, 40.295444, 45.255192>,  <37.504745, 40.666752, 45.326866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635101, 40.295444, 45.255192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115920, -0.227336, 0.966892,
		-0.938275, -0.294326, -0.181691,
		0.325887, -0.928272, -0.179186,
		37.732868, 40.016964, 45.201435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937119, 40.096310, 45.537090>,  <37.504745, 40.666752, 45.326866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937119, 40.096310, 45.537090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315052, 39.972347, 45.579498>,  <37.541813, 39.897972, 45.604942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315052, 39.972347, 45.579498>,  <36.937119, 40.096310, 45.537090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315052, 39.972347, 45.579498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178897, -0.217120, 0.959612,
		-0.274374, -0.925643, -0.260585,
		0.944836, -0.309910, 0.106023,
		37.598503, 39.879375, 45.611305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912640, 39.476086, 46.029819>,  <36.937119, 40.096310, 45.537090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912640, 39.476086, 46.029819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.300140, 39.575294, 46.028774>,  <37.532639, 39.634819, 46.028145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.300140, 39.575294, 46.028774>,  <36.912640, 39.476086, 46.029819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300140, 39.575294, 46.028774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044252, -0.162438, 0.985726,
		0.244059, -0.955038, -0.168338,
		0.968750, 0.248024, -0.002618,
		37.590767, 39.649700, 46.027988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190205, 39.045692, 46.575420>,  <36.912640, 39.476086, 46.029819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190205, 39.045692, 46.575420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.470917, 39.326271, 46.525650>,  <37.639343, 39.494617, 46.495789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.470917, 39.326271, 46.525650>,  <37.190205, 39.045692, 46.575420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470917, 39.326271, 46.525650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151375, 0.023842, 0.988189,
		0.696125, -0.712327, -0.089449,
		0.701781, 0.701443, -0.124426,
		37.681450, 39.536705, 46.488323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472839, 38.348698, 46.730118>,  <37.190205, 39.045692, 46.575420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472839, 38.348698, 46.730118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247799, 38.057968, 46.887699>,  <37.112774, 37.883530, 46.982246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247799, 38.057968, 46.887699>,  <37.472839, 38.348698, 46.730118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247799, 38.057968, 46.887699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307991, -0.257954, -0.915752,
		0.767216, -0.636538, -0.078732,
		-0.562601, -0.726829, 0.393954,
		37.079018, 37.839920, 47.005886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593010, 37.795422, 46.285236>,  <37.472839, 38.348698, 46.730118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593010, 37.795422, 46.285236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.239010, 37.725983, 46.458042>,  <37.026611, 37.684319, 46.561726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.239010, 37.725983, 46.458042>,  <37.593010, 37.795422, 46.285236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239010, 37.725983, 46.458042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397588, -0.201063, -0.895264,
		0.242275, -0.964074, 0.108922,
		-0.885000, -0.173594, 0.432017,
		36.973511, 37.673904, 46.587646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369366, 37.280025, 45.975811>,  <37.593010, 37.795422, 46.285236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369366, 37.280025, 45.975811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027378, 37.416313, 46.132236>,  <36.822186, 37.498085, 46.226093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027378, 37.416313, 46.132236>,  <37.369366, 37.280025, 45.975811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027378, 37.416313, 46.132236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446535, -0.099931, -0.889168,
		-0.263879, -0.934838, 0.237583,
		-0.854970, 0.340722, 0.391068,
		36.770885, 37.518532, 46.249557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829632, 36.814125, 45.835594>,  <37.369366, 37.280025, 45.975811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829632, 36.814125, 45.835594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666107, 37.177593, 45.869514>,  <36.567993, 37.395676, 45.889866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666107, 37.177593, 45.869514>,  <36.829632, 36.814125, 45.835594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666107, 37.177593, 45.869514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530611, -0.161063, -0.832172,
		-0.742512, -0.385197, 0.547995,
		-0.408812, 0.908670, 0.084799,
		36.543465, 37.450195, 45.894955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213428, 36.714397, 45.460155>,  <36.829632, 36.814125, 45.835594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213428, 36.714397, 45.460155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196449, 37.111885, 45.501575>,  <36.186264, 37.350376, 45.526428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196449, 37.111885, 45.501575>,  <36.213428, 36.714397, 45.460155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196449, 37.111885, 45.501575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537807, 0.064618, -0.840588,
		-0.841999, -0.091367, 0.531686,
		-0.042446, 0.993719, 0.103546,
		36.183716, 37.410000, 45.532639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534241, 36.859928, 45.393227>,  <36.213428, 36.714397, 45.460155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534241, 36.859928, 45.393227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677883, 37.229527, 45.340652>,  <35.764069, 37.451286, 45.309109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677883, 37.229527, 45.340652>,  <35.534241, 36.859928, 45.393227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677883, 37.229527, 45.340652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630937, 0.136580, -0.763717,
		-0.687720, 0.357184, 0.632030,
		0.359110, 0.923994, -0.131431,
		35.785618, 37.506725, 45.301224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991516, 37.252216, 45.175259>,  <35.534241, 36.859928, 45.393227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991516, 37.252216, 45.175259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312031, 37.447014, 45.036247>,  <35.504341, 37.563892, 44.952839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312031, 37.447014, 45.036247>,  <34.991516, 37.252216, 45.175259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312031, 37.447014, 45.036247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491428, 0.204436, -0.846584,
		-0.341233, 0.849142, 0.403134,
		0.801286, 0.486994, -0.347532,
		35.552418, 37.593113, 44.931988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.549957, 37.136124, 48.311787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.804550, 37.410755, 48.171215>,  <41.957306, 37.575535, 48.086872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.804550, 37.410755, 48.171215>,  <41.549957, 37.136124, 48.311787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804550, 37.410755, 48.171215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260666, -0.237346, -0.935799,
		-0.725910, 0.687224, 0.027901,
		0.636481, 0.686579, -0.351428,
		41.995495, 37.616730, 48.065788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186031, 37.708061, 47.916420>,  <41.549957, 37.136124, 48.311787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186031, 37.708061, 47.916420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.557495, 37.694069, 47.768703>,  <41.780373, 37.685673, 47.680073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.557495, 37.694069, 47.768703>,  <41.186031, 37.708061, 47.916420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557495, 37.694069, 47.768703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369176, -0.184210, -0.910920,
		-0.036162, 0.982264, -0.183981,
		0.928656, -0.034980, -0.369290,
		41.836090, 37.683575, 47.657917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023827, 37.920826, 47.307846>,  <41.186031, 37.708061, 47.916420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023827, 37.920826, 47.307846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.383991, 37.752338, 47.264343>,  <41.600090, 37.651245, 47.238243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.383991, 37.752338, 47.264343>,  <41.023827, 37.920826, 47.307846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383991, 37.752338, 47.264343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202491, -0.184531, -0.961741,
		0.385037, 0.887987, -0.251448,
		0.900413, -0.421222, -0.108758,
		41.654114, 37.625973, 47.231716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328167, 38.187214, 46.671703>,  <41.023827, 37.920826, 47.307846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328167, 38.187214, 46.671703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.516167, 37.844227, 46.755470>,  <41.628967, 37.638435, 46.805729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.516167, 37.844227, 46.755470>,  <41.328167, 38.187214, 46.671703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516167, 37.844227, 46.755470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348475, -0.398240, -0.848511,
		0.810966, 0.325823, -0.485977,
		0.469999, -0.857464, 0.209418,
		41.657166, 37.586987, 46.818295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569138, 37.937210, 46.037746>,  <41.328167, 38.187214, 46.671703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569138, 37.937210, 46.037746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.619961, 37.607903, 46.259045>,  <41.650455, 37.410316, 46.391823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.619961, 37.607903, 46.259045>,  <41.569138, 37.937210, 46.037746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619961, 37.607903, 46.259045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228901, -0.567052, -0.791237,
		0.965122, -0.026103, -0.260497,
		0.127062, -0.823268, 0.553249,
		41.658081, 37.360924, 46.425018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030338, 37.514629, 45.642635>,  <41.569138, 37.937210, 46.037746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030338, 37.514629, 45.642635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.797165, 37.297363, 45.884346>,  <41.657261, 37.167004, 46.029373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.797165, 37.297363, 45.884346>,  <42.030338, 37.514629, 45.642635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797165, 37.297363, 45.884346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119144, -0.678529, -0.724847,
		0.803735, -0.494536, 0.330824,
		-0.582936, -0.543170, 0.604278,
		41.622284, 37.134411, 46.065628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094795, 36.853012, 45.295067>,  <42.030338, 37.514629, 45.642635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094795, 36.853012, 45.295067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.763443, 36.815956, 45.516048>,  <41.564632, 36.793724, 45.648640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.763443, 36.815956, 45.516048>,  <42.094795, 36.853012, 45.295067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763443, 36.815956, 45.516048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397839, -0.597003, -0.696643,
		0.394353, -0.796873, 0.457690,
		-0.828378, -0.092636, 0.552456,
		41.514931, 36.788166, 45.681786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897106, 36.230122, 45.142929>,  <42.094795, 36.853012, 45.295067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897106, 36.230122, 45.142929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.551746, 36.374329, 45.284103>,  <41.344528, 36.460854, 45.368809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.551746, 36.374329, 45.284103>,  <41.897106, 36.230122, 45.142929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551746, 36.374329, 45.284103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492006, -0.446862, -0.747157,
		-0.111653, -0.818743, 0.563200,
		-0.863402, 0.360520, 0.352933,
		41.292725, 36.482487, 45.389984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560604, 35.655468, 45.187138>,  <41.897106, 36.230122, 45.142929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560604, 35.655468, 45.187138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.284885, 35.944149, 45.212486>,  <41.119453, 36.117355, 45.227695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.284885, 35.944149, 45.212486>,  <41.560604, 35.655468, 45.187138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284885, 35.944149, 45.212486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510916, -0.422224, -0.748793,
		-0.513647, -0.548520, 0.659767,
		-0.689298, 0.721701, 0.063374,
		41.078094, 36.160660, 45.231499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904396, 35.370190, 45.292610>,  <41.560604, 35.655468, 45.187138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904396, 35.370190, 45.292610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.866875, 35.715172, 45.093662>,  <40.844360, 35.922161, 44.974293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.866875, 35.715172, 45.093662>,  <40.904396, 35.370190, 45.292610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866875, 35.715172, 45.093662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471362, -0.478509, -0.740842,
		-0.876937, 0.164948, 0.451413,
		-0.093805, 0.862451, -0.497372,
		40.838734, 35.973907, 44.944450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139328, 35.314358, 45.001602>,  <40.904396, 35.370190, 45.292610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139328, 35.314358, 45.001602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.319469, 35.614597, 44.808197>,  <40.427555, 35.794743, 44.692154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.319469, 35.614597, 44.808197>,  <40.139328, 35.314358, 45.001602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319469, 35.614597, 44.808197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543775, -0.198932, -0.815313,
		-0.708157, 0.630103, 0.318566,
		0.450358, 0.750597, -0.483509,
		40.454578, 35.839775, 44.663143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626823, 35.845634, 44.768845>,  <40.139328, 35.314358, 45.001602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626823, 35.845634, 44.768845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.961136, 35.809528, 44.552204>,  <40.161724, 35.787865, 44.422222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.961136, 35.809528, 44.552204>,  <39.626823, 35.845634, 44.768845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961136, 35.809528, 44.552204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541976, 0.022404, -0.840095,
		0.087969, 0.995665, -0.030199,
		0.835777, -0.090269, -0.541598,
		40.211868, 35.782448, 44.389725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979408, 36.242683, 45.052616>,  <39.626823, 35.845634, 44.768845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979408, 36.242683, 45.052616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.596306, 36.128258, 45.040802>,  <38.366444, 36.059605, 45.033714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.596306, 36.128258, 45.040802>,  <38.979408, 36.242683, 45.052616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596306, 36.128258, 45.040802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007562, -0.127725, 0.991781,
		-0.287484, 0.949660, 0.124493,
		-0.957756, -0.286062, -0.029537,
		38.308979, 36.042439, 45.031940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690495, 36.648205, 45.511955>,  <38.979408, 36.242683, 45.052616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690495, 36.648205, 45.511955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435154, 36.340664, 45.497166>,  <38.281948, 36.156139, 45.488293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435154, 36.340664, 45.497166>,  <38.690495, 36.648205, 45.511955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435154, 36.340664, 45.497166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161152, -0.180464, 0.970290,
		-0.752686, 0.613428, 0.239102,
		-0.638352, -0.768856, -0.036977,
		38.243649, 36.110008, 45.486073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212898, 36.627659, 46.040062>,  <38.690495, 36.648205, 45.511955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212898, 36.627659, 46.040062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.189724, 36.238258, 45.951580>,  <38.175819, 36.004616, 45.898491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.189724, 36.238258, 45.951580>,  <38.212898, 36.627659, 46.040062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189724, 36.238258, 45.951580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029698, -0.219795, 0.975094,
		-0.997878, 0.063066, -0.016177,
		-0.057940, -0.973506, -0.221202,
		38.172340, 35.946205, 45.885220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775684, 36.397209, 46.552139>,  <38.212898, 36.627659, 46.040062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775684, 36.397209, 46.552139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.966122, 36.074982, 46.411057>,  <38.080383, 35.881645, 46.326408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.966122, 36.074982, 46.411057>,  <37.775684, 36.397209, 46.552139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966122, 36.074982, 46.411057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036324, -0.418751, 0.907375,
		-0.878646, -0.419181, -0.228624,
		0.476090, -0.805566, -0.352708,
		38.108948, 35.833313, 46.305244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360744, 35.761505, 46.920567>,  <37.775684, 36.397209, 46.552139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360744, 35.761505, 46.920567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.736012, 35.677216, 46.810707>,  <37.961174, 35.626640, 46.744793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.736012, 35.677216, 46.810707>,  <37.360744, 35.761505, 46.920567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736012, 35.677216, 46.810707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061260, -0.679790, 0.730843,
		-0.340709, -0.702481, -0.624851,
		0.938171, -0.210727, -0.274644,
		38.017464, 35.613998, 46.728313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423847, 35.025139, 47.048237>,  <37.360744, 35.761505, 46.920567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423847, 35.025139, 47.048237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.808025, 35.136150, 47.039047>,  <38.038532, 35.202759, 47.033531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.808025, 35.136150, 47.039047>,  <37.423847, 35.025139, 47.048237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808025, 35.136150, 47.039047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210892, -0.670967, 0.710864,
		0.181870, -0.687590, -0.702954,
		0.960442, 0.277532, -0.022979,
		38.096157, 35.219410, 47.032154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784698, 34.423214, 47.428635>,  <37.423847, 35.025139, 47.048237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784698, 34.423214, 47.428635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050415, 34.722134, 47.422127>,  <38.209846, 34.901485, 47.418224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050415, 34.722134, 47.422127>,  <37.784698, 34.423214, 47.428635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050415, 34.722134, 47.422127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262162, -0.212552, 0.941325,
		0.699992, -0.629578, -0.337110,
		0.664291, 0.747297, -0.016267,
		38.249702, 34.946323, 47.417248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322384, 34.123199, 47.798431>,  <37.784698, 34.423214, 47.428635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322384, 34.123199, 47.798431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.365749, 34.520821, 47.794201>,  <38.391769, 34.759392, 47.791660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.365749, 34.520821, 47.794201>,  <38.322384, 34.123199, 47.798431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365749, 34.520821, 47.794201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073778, 0.002566, 0.997272,
		0.991364, -0.108901, -0.073061,
		0.108416, 0.994049, -0.010578,
		38.398273, 34.819035, 47.791027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962086, 34.274376, 48.163158>,  <38.322384, 34.123199, 47.798431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962086, 34.274376, 48.163158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747295, 34.610382, 48.194199>,  <38.618420, 34.811985, 48.212822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747295, 34.610382, 48.194199>,  <38.962086, 34.274376, 48.163158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747295, 34.610382, 48.194199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203072, 0.039428, 0.978370,
		0.818789, 0.541124, -0.191755,
		-0.536980, 0.840018, 0.077604,
		38.586201, 34.862389, 48.217480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365612, 34.682541, 48.532177>,  <38.962086, 34.274376, 48.163158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365612, 34.682541, 48.532177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.009529, 34.860069, 48.573254>,  <38.795879, 34.966587, 48.597900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.009529, 34.860069, 48.573254>,  <39.365612, 34.682541, 48.532177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009529, 34.860069, 48.573254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184869, 0.145930, 0.971868,
		0.416350, 0.884153, -0.211957,
		-0.890211, 0.443822, 0.102694,
		38.742466, 34.993217, 48.604061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494698, 35.087833, 49.189724>,  <39.365612, 34.682541, 48.532177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494698, 35.087833, 49.189724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.100624, 35.137383, 49.142281>,  <38.864182, 35.167110, 49.113815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.100624, 35.137383, 49.142281>,  <39.494698, 35.087833, 49.189724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100624, 35.137383, 49.142281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093420, 0.192339, 0.976872,
		0.143820, 0.973479, -0.177917,
		-0.985184, 0.123873, -0.118605,
		38.805069, 35.174545, 49.106701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309658, 35.751892, 49.402988>,  <39.494698, 35.087833, 49.189724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309658, 35.751892, 49.402988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.994316, 35.507912, 49.435146>,  <38.805111, 35.361523, 49.454441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.994316, 35.507912, 49.435146>,  <39.309658, 35.751892, 49.402988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994316, 35.507912, 49.435146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007746, 0.140512, 0.990049,
		-0.615175, 0.779885, -0.115498,
		-0.788353, -0.609948, 0.080399,
		38.757809, 35.324928, 49.459267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885303, 36.045837, 49.871845>,  <39.309658, 35.751892, 49.402988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885303, 36.045837, 49.871845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.725407, 35.679264, 49.879456>,  <38.629467, 35.459320, 49.884022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.725407, 35.679264, 49.879456>,  <38.885303, 36.045837, 49.871845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725407, 35.679264, 49.879456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082173, -0.015153, 0.996503,
		-0.912935, 0.399911, 0.081363,
		-0.399745, -0.916429, 0.019028,
		38.605484, 35.404335, 49.885162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169949, 36.035961, 50.232166>,  <38.885303, 36.045837, 49.871845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169949, 36.035961, 50.232166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.399632, 35.708595, 50.240864>,  <38.537441, 35.512177, 50.246082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.399632, 35.708595, 50.240864>,  <38.169949, 36.035961, 50.232166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399632, 35.708595, 50.240864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051866, -0.009861, 0.998605,
		-0.817062, -0.574539, -0.048110,
		0.574212, -0.818418, 0.021742,
		38.571896, 35.463070, 50.247387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907032, 36.382301, 49.660187>,  <38.169949, 36.035961, 50.232166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907032, 36.382301, 49.660187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.700874, 36.706657, 49.771053>,  <37.577179, 36.901272, 49.837574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.700874, 36.706657, 49.771053>,  <37.907032, 36.382301, 49.660187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700874, 36.706657, 49.771053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085515, 0.273156, -0.958161,
		-0.852678, -0.517530, -0.071439,
		-0.515391, 0.810894, 0.277170,
		37.546257, 36.949924, 49.854206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205910, 36.434563, 49.273663>,  <37.907032, 36.382301, 49.660187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205910, 36.434563, 49.273663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.294270, 36.804832, 49.396519>,  <37.347286, 37.026993, 49.470230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.294270, 36.804832, 49.396519>,  <37.205910, 36.434563, 49.273663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294270, 36.804832, 49.396519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222608, 0.354459, -0.908187,
		-0.949552, 0.132248, 0.284363,
		0.220901, 0.925672, 0.307138,
		37.360538, 37.082535, 49.488659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621571, 36.793198, 49.029541>,  <37.205910, 36.434563, 49.273663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621571, 36.793198, 49.029541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.901215, 37.070923, 49.097866>,  <37.069000, 37.237560, 49.138859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.901215, 37.070923, 49.097866>,  <36.621571, 36.793198, 49.029541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901215, 37.070923, 49.097866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157821, 0.382837, -0.910236,
		-0.697383, 0.609394, 0.377221,
		0.699106, 0.694317, 0.170809,
		37.110947, 37.279217, 49.149109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385509, 37.342766, 48.621613>,  <36.621571, 36.793198, 49.029541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385509, 37.342766, 48.621613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762321, 37.461578, 48.684029>,  <36.988407, 37.532867, 48.721478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762321, 37.461578, 48.684029>,  <36.385509, 37.342766, 48.621613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762321, 37.461578, 48.684029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000884, 0.462867, -0.886427,
		-0.335524, 0.835180, 0.435772,
		0.942031, 0.297032, 0.156042,
		37.044930, 37.550690, 48.730843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379139, 38.086906, 48.525749>,  <36.385509, 37.342766, 48.621613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379139, 38.086906, 48.525749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.732193, 37.916962, 48.445305>,  <36.944027, 37.814995, 48.397038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.732193, 37.916962, 48.445305>,  <36.379139, 38.086906, 48.525749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732193, 37.916962, 48.445305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014589, 0.402872, -0.915140,
		0.469827, 0.810672, 0.349392,
		0.882638, -0.424860, -0.201107,
		36.996983, 37.789505, 48.384972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571293, 38.566956, 48.072205>,  <36.379139, 38.086906, 48.525749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571293, 38.566956, 48.072205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.823326, 38.263653, 48.005222>,  <36.974548, 38.081673, 47.965034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.823326, 38.263653, 48.005222>,  <36.571293, 38.566956, 48.072205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823326, 38.263653, 48.005222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087015, 0.145342, -0.985548,
		0.771635, 0.635550, 0.025598,
		0.630085, -0.758256, -0.167454,
		37.012352, 38.036175, 47.954987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005009, 38.721500, 47.435017>,  <36.571293, 38.566956, 48.072205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005009, 38.721500, 47.435017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.009361, 38.325722, 47.492802>,  <37.011971, 38.088253, 47.527473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.009361, 38.325722, 47.492802>,  <37.005009, 38.721500, 47.435017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009361, 38.325722, 47.492802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227225, -0.143137, -0.963266,
		0.973782, -0.022347, -0.226385,
		0.010878, -0.989450, 0.144462,
		37.012627, 38.028885, 47.536140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756557, 38.918034, 47.095516>,  <37.005009, 38.721500, 47.435017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756557, 38.918034, 47.095516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.826797, 39.285751, 46.954624>,  <37.868942, 39.506382, 46.870090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.826797, 39.285751, 46.954624>,  <37.756557, 38.918034, 47.095516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826797, 39.285751, 46.954624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188663, 0.319729, 0.928536,
		0.966214, -0.229505, -0.117291,
		0.175602, 0.919294, -0.352225,
		37.879478, 39.561539, 46.848957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307648, 39.057930, 47.385834>,  <37.756557, 38.918034, 47.095516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307648, 39.057930, 47.385834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.168293, 39.420971, 47.292114>,  <38.084682, 39.638794, 47.235882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.168293, 39.420971, 47.292114>,  <38.307648, 39.057930, 47.385834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168293, 39.420971, 47.292114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356579, 0.359486, 0.862335,
		0.866879, 0.216879, -0.448870,
		-0.348385, 0.907598, -0.234296,
		38.063778, 39.693249, 47.221825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851189, 39.496632, 47.517056>,  <38.307648, 39.057930, 47.385834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851189, 39.496632, 47.517056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.513695, 39.711094, 47.506855>,  <38.311199, 39.839771, 47.500736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.513695, 39.711094, 47.506855>,  <38.851189, 39.496632, 47.517056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513695, 39.711094, 47.506855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258088, 0.446884, 0.856554,
		0.470641, 0.716123, -0.515427,
		-0.843735, 0.536155, -0.025499,
		38.260574, 39.871941, 47.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994938, 40.138973, 47.833298>,  <38.851189, 39.496632, 47.517056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994938, 40.138973, 47.833298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.595116, 40.148880, 47.839840>,  <38.355221, 40.154823, 47.843765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.595116, 40.148880, 47.839840>,  <38.994938, 40.138973, 47.833298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595116, 40.148880, 47.839840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026896, 0.522394, 0.852280,
		0.012566, 0.852344, -0.522830,
		-0.999559, 0.024771, 0.016360,
		38.295246, 40.156311, 47.844749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709934, 40.832756, 47.597759>,  <38.994938, 40.138973, 47.833298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709934, 40.832756, 47.597759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.414864, 40.699078, 47.832417>,  <38.237820, 40.618870, 47.973209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.414864, 40.699078, 47.832417>,  <38.709934, 40.832756, 47.597759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414864, 40.699078, 47.832417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331139, 0.578125, 0.745733,
		-0.588372, 0.744369, -0.315804,
		-0.737675, -0.334194, 0.586643,
		38.193562, 40.598820, 48.008408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312759, 41.421070, 47.996964>,  <38.709934, 40.832756, 47.597759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312759, 41.421070, 47.996964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.214874, 41.104458, 48.220963>,  <38.156143, 40.914490, 48.355362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.214874, 41.104458, 48.220963>,  <38.312759, 41.421070, 47.996964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214874, 41.104458, 48.220963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190041, 0.527202, 0.828217,
		-0.950789, 0.309099, 0.021409,
		-0.244714, -0.791528, 0.559999,
		38.141460, 40.867001, 48.388962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794392, 41.691956, 48.580605>,  <38.312759, 41.421070, 47.996964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794392, 41.691956, 48.580605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.962589, 41.351086, 48.705173>,  <38.063507, 41.146564, 48.779915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.962589, 41.351086, 48.705173>,  <37.794392, 41.691956, 48.580605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962589, 41.351086, 48.705173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095202, 0.382793, 0.918916,
		-0.902288, -0.356748, 0.242090,
		0.420491, -0.852174, 0.311426,
		38.088737, 41.095432, 48.798603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438526, 41.605671, 49.223507>,  <37.794392, 41.691956, 48.580605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438526, 41.605671, 49.223507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802757, 41.440357, 49.220825>,  <38.021297, 41.341171, 49.219215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802757, 41.440357, 49.220825>,  <37.438526, 41.605671, 49.223507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802757, 41.440357, 49.220825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215990, 0.461925, 0.860217,
		-0.352413, -0.784744, 0.509884,
		0.910578, -0.413282, -0.006709,
		38.075932, 41.316372, 49.218811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610107, 41.421532, 49.856686>,  <37.438526, 41.605671, 49.223507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610107, 41.421532, 49.856686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.976841, 41.430229, 49.697212>,  <38.196880, 41.435448, 49.601528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.976841, 41.430229, 49.697212>,  <37.610107, 41.421532, 49.856686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976841, 41.430229, 49.697212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361975, 0.376130, 0.852937,
		0.168499, -0.926312, 0.336978,
		0.916833, 0.021742, -0.398679,
		38.251892, 41.436752, 49.577610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.831863, 39.235863, 34.161194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212532, 39.132088, 34.226933>,  <34.440933, 39.069824, 34.266376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212532, 39.132088, 34.226933>,  <33.831863, 39.235863, 34.161194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212532, 39.132088, 34.226933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175621, -0.020737, 0.984240,
		-0.251940, -0.965538, -0.065297,
		0.951674, -0.259437, 0.164344,
		34.498035, 39.054256, 34.276237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855602, 38.598095, 34.693230>,  <33.831863, 39.235863, 34.161194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855602, 38.598095, 34.693230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179943, 38.832184, 34.695587>,  <34.374546, 38.972637, 34.697002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179943, 38.832184, 34.695587>,  <33.855602, 38.598095, 34.693230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179943, 38.832184, 34.695587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031300, 0.033304, 0.998955,
		0.584418, -0.810186, 0.045322,
		0.810849, 0.585226, 0.005895,
		34.423199, 39.007751, 34.697357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340794, 38.309544, 35.230995>,  <33.855602, 38.598095, 34.693230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340794, 38.309544, 35.230995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485916, 38.679310, 35.183964>,  <34.572990, 38.901169, 35.155746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485916, 38.679310, 35.183964>,  <34.340794, 38.309544, 35.230995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485916, 38.679310, 35.183964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019392, 0.133639, 0.990840,
		0.931661, -0.357207, 0.066412,
		0.362811, 0.924415, -0.117580,
		34.594761, 38.956635, 35.148689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014366, 38.448029, 35.721828>,  <34.340794, 38.309544, 35.230995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014366, 38.448029, 35.721828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892555, 38.815521, 35.621269>,  <34.819469, 39.036015, 35.560936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892555, 38.815521, 35.621269>,  <35.014366, 38.448029, 35.721828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892555, 38.815521, 35.621269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156336, 0.308563, 0.938269,
		0.939587, 0.246424, -0.237595,
		-0.304525, 0.918730, -0.251396,
		34.801197, 39.091141, 35.545849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561214, 38.779823, 35.947121>,  <35.014366, 38.448029, 35.721828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561214, 38.779823, 35.947121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232834, 39.004822, 35.907864>,  <35.035805, 39.139820, 35.884308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232834, 39.004822, 35.907864>,  <35.561214, 38.779823, 35.947121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232834, 39.004822, 35.907864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308552, 0.581649, 0.752648,
		0.480444, 0.587609, -0.651067,
		-0.820956, 0.562494, -0.098142,
		34.986546, 39.173569, 35.878422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821602, 39.396046, 36.096794>,  <35.561214, 38.779823, 35.947121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821602, 39.396046, 36.096794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425053, 39.422100, 36.142300>,  <35.187122, 39.437733, 36.169605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425053, 39.422100, 36.142300>,  <35.821602, 39.396046, 36.096794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425053, 39.422100, 36.142300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131088, 0.482888, 0.865815,
		0.001462, 0.873256, -0.487259,
		-0.991370, 0.065139, 0.113768,
		35.127644, 39.441643, 36.176430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701576, 40.030117, 36.369293>,  <35.821602, 39.396046, 36.096794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701576, 40.030117, 36.369293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357807, 39.847279, 36.460903>,  <35.151546, 39.737576, 36.515869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357807, 39.847279, 36.460903>,  <35.701576, 40.030117, 36.369293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357807, 39.847279, 36.460903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072410, 0.334617, 0.939568,
		-0.506112, 0.824070, -0.254479,
		-0.859423, -0.457100, 0.229024,
		35.099979, 39.710148, 36.529610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368530, 40.455090, 36.894691>,  <35.701576, 40.030117, 36.369293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368530, 40.455090, 36.894691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184681, 40.100548, 36.917004>,  <35.074371, 39.887821, 36.930393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184681, 40.100548, 36.917004>,  <35.368530, 40.455090, 36.894691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184681, 40.100548, 36.917004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076430, 0.102054, 0.991838,
		-0.884818, 0.451612, -0.114651,
		-0.459626, -0.886359, 0.055783,
		35.046795, 39.834641, 36.933739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696682, 40.607746, 37.253952>,  <35.368530, 40.455090, 36.894691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696682, 40.607746, 37.253952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778175, 40.218021, 37.292358>,  <34.827072, 39.984188, 37.315403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778175, 40.218021, 37.292358>,  <34.696682, 40.607746, 37.253952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778175, 40.218021, 37.292358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004196, 0.098939, 0.995085,
		-0.979018, -0.202328, 0.024245,
		0.203732, -0.974307, 0.096014,
		34.839294, 39.925728, 37.321163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259964, 40.476112, 37.739414>,  <34.696682, 40.607746, 37.253952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259964, 40.476112, 37.739414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539814, 40.190689, 37.754154>,  <34.707726, 40.019436, 37.762997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539814, 40.190689, 37.754154>,  <34.259964, 40.476112, 37.739414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539814, 40.190689, 37.754154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019350, 0.070471, 0.997326,
		-0.714250, -0.697040, 0.063111,
		0.699623, -0.713561, 0.036846,
		34.749702, 39.976620, 37.765209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061935, 40.084442, 38.300694>,  <34.259964, 40.476112, 37.739414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061935, 40.084442, 38.300694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442524, 39.968533, 38.259243>,  <34.670876, 39.898987, 38.234371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442524, 39.968533, 38.259243>,  <34.061935, 40.084442, 38.300694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442524, 39.968533, 38.259243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119993, 0.039231, 0.991999,
		-0.283394, -0.956289, 0.072099,
		0.951467, -0.289778, -0.103630,
		34.727962, 39.881599, 38.228153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194103, 39.559132, 38.809010>,  <34.061935, 40.084442, 38.300694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194103, 39.559132, 38.809010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561172, 39.696533, 38.729137>,  <34.781414, 39.778976, 38.681213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561172, 39.696533, 38.729137>,  <34.194103, 39.559132, 38.809010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561172, 39.696533, 38.729137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156274, 0.150016, 0.976255,
		0.365307, -0.927091, 0.083984,
		0.917676, 0.343508, -0.199682,
		34.836475, 39.799583, 38.669231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224770, 38.748344, 38.789890>,  <34.194103, 39.559132, 38.809010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224770, 38.748344, 38.789890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987095, 38.482796, 38.971531>,  <33.844490, 38.323467, 39.080517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987095, 38.482796, 38.971531>,  <34.224770, 38.748344, 38.789890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987095, 38.482796, 38.971531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372634, -0.273122, -0.886876,
		0.712801, -0.696185, -0.085097,
		-0.594188, -0.663876, 0.454103,
		33.808838, 38.283634, 39.107761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292713, 38.086262, 38.364960>,  <34.224770, 38.748344, 38.789890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292713, 38.086262, 38.364960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951607, 38.057251, 38.571850>,  <33.746941, 38.039845, 38.695984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951607, 38.057251, 38.571850>,  <34.292713, 38.086262, 38.364960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951607, 38.057251, 38.571850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436219, -0.445711, -0.781700,
		0.287226, -0.892234, 0.348453,
		-0.852769, -0.072523, 0.517229,
		33.695778, 38.035496, 38.727020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091579, 37.435356, 38.393837>,  <34.292713, 38.086262, 38.364960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091579, 37.435356, 38.393837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755817, 37.645061, 38.451172>,  <33.554359, 37.770885, 38.485573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755817, 37.645061, 38.451172>,  <34.091579, 37.435356, 38.393837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755817, 37.645061, 38.451172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473062, -0.574911, -0.667600,
		-0.267590, -0.628196, 0.730593,
		-0.839409, 0.524258, 0.143335,
		33.503994, 37.802338, 38.494171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728001, 36.984180, 38.153008>,  <34.091579, 37.435356, 38.393837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728001, 36.984180, 38.153008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506729, 37.317375, 38.157452>,  <33.373966, 37.517292, 38.160118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506729, 37.317375, 38.157452>,  <33.728001, 36.984180, 38.153008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506729, 37.317375, 38.157452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450381, -0.287815, -0.845174,
		-0.700824, -0.472535, 0.534375,
		-0.553176, 0.832991, 0.011112,
		33.340778, 37.567272, 38.160786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119987, 36.727547, 37.977428>,  <33.728001, 36.984180, 38.153008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119987, 36.727547, 37.977428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115120, 37.118977, 37.895222>,  <33.112198, 37.353836, 37.845898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115120, 37.118977, 37.895222>,  <33.119987, 36.727547, 37.977428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115120, 37.118977, 37.895222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362673, -0.195859, -0.911102,
		-0.931837, 0.063451, 0.357287,
		-0.012167, 0.978577, -0.205521,
		33.111469, 37.412548, 37.833565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547527, 36.840099, 37.628563>,  <33.119987, 36.727547, 37.977428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547527, 36.840099, 37.628563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741669, 37.180916, 37.550133>,  <32.858154, 37.385406, 37.503075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741669, 37.180916, 37.550133>,  <32.547527, 36.840099, 37.628563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741669, 37.180916, 37.550133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242958, -0.083995, -0.966394,
		-0.839881, 0.516684, 0.166243,
		0.485357, 0.852046, -0.196079,
		32.887276, 37.436531, 37.491310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118904, 37.362984, 37.299732>,  <32.547527, 36.840099, 37.628563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118904, 37.362984, 37.299732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495911, 37.452118, 37.200127>,  <32.722115, 37.505600, 37.140362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495911, 37.452118, 37.200127>,  <32.118904, 37.362984, 37.299732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495911, 37.452118, 37.200127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181488, -0.284340, -0.941389,
		-0.280582, 0.932466, -0.227552,
		0.942516, 0.222839, -0.249013,
		32.778664, 37.518970, 37.125423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893114, 37.786793, 36.909954>,  <32.118904, 37.362984, 37.299732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893114, 37.786793, 36.909954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275173, 37.722683, 36.810349>,  <32.504410, 37.684216, 36.750587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275173, 37.722683, 36.810349>,  <31.893114, 37.786793, 36.909954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275173, 37.722683, 36.810349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273388, -0.154069, -0.949485,
		0.113815, 0.974974, -0.190977,
		0.955146, -0.160277, -0.249011,
		32.561718, 37.674599, 36.735645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989847, 38.193661, 36.295666>,  <31.893114, 37.786793, 36.909954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989847, 38.193661, 36.295666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282898, 37.921906, 36.279255>,  <32.458729, 37.758850, 36.269409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282898, 37.921906, 36.279255>,  <31.989847, 38.193661, 36.295666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282898, 37.921906, 36.279255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270653, -0.235495, -0.933429,
		0.624503, 0.694960, -0.356409,
		0.732628, -0.679392, -0.041026,
		32.502686, 37.718086, 36.266949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459270, 38.229118, 35.656307>,  <31.989847, 38.193661, 36.295666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459270, 38.229118, 35.656307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548676, 37.856426, 35.770798>,  <32.602318, 37.632812, 35.839493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548676, 37.856426, 35.770798>,  <32.459270, 38.229118, 35.656307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548676, 37.856426, 35.770798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160318, -0.324797, -0.932097,
		0.961426, 0.162451, -0.221970,
		0.223515, -0.931728, 0.286224,
		32.615730, 37.576908, 35.856667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047077, 37.947945, 35.178745>,  <32.459270, 38.229118, 35.656307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047077, 37.947945, 35.178745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827534, 37.660221, 35.349091>,  <32.695808, 37.487587, 35.451298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827534, 37.660221, 35.349091>,  <33.047077, 37.947945, 35.178745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827534, 37.660221, 35.349091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096075, -0.451794, -0.886934,
		0.830378, -0.527712, 0.178862,
		-0.548855, -0.719306, 0.425860,
		32.662876, 37.444427, 35.476849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284580, 37.362251, 34.937996>,  <33.047077, 37.947945, 35.178745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284580, 37.362251, 34.937996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929249, 37.222591, 35.057304>,  <32.716049, 37.138798, 35.128891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929249, 37.222591, 35.057304>,  <33.284580, 37.362251, 34.937996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929249, 37.222591, 35.057304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063192, -0.550419, -0.832494,
		0.454838, -0.758378, 0.466890,
		-0.888330, -0.349146, 0.298275,
		32.662750, 37.117847, 35.146786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386208, 36.637196, 34.910385>,  <33.284580, 37.362251, 34.937996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386208, 36.637196, 34.910385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988461, 36.678535, 34.900925>,  <32.749813, 36.703339, 34.895248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988461, 36.678535, 34.900925>,  <33.386208, 36.637196, 34.910385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988461, 36.678535, 34.900925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055030, -0.693780, -0.718082,
		-0.090620, -0.712734, 0.695557,
		-0.994364, 0.103349, -0.023649,
		32.690151, 36.709541, 34.893829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883331, 35.963711, 35.066750>,  <33.386208, 36.637196, 34.910385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883331, 35.963711, 35.066750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754375, 36.218033, 34.786232>,  <32.677002, 36.370625, 34.617920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754375, 36.218033, 34.786232>,  <32.883331, 35.963711, 35.066750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754375, 36.218033, 34.786232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120443, -0.762382, -0.635821,
		-0.938913, -0.120517, 0.322363,
		-0.322391, 0.635806, -0.701294,
		32.657658, 36.408775, 34.575844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552105, 35.611752, 34.799282>,  <32.883331, 35.963711, 35.066750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552105, 35.611752, 34.799282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301414, 35.528202, 34.498993>,  <33.151001, 35.478073, 34.318821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301414, 35.528202, 34.498993>,  <33.552105, 35.611752, 34.799282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301414, 35.528202, 34.498993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545832, -0.569891, 0.614241,
		-0.556127, 0.794730, 0.243158,
		-0.626730, -0.208873, -0.750721,
		33.113396, 35.465542, 34.273777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117237, 35.181149, 35.140179>,  <33.552105, 35.611752, 34.799282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117237, 35.181149, 35.140179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338173, 34.869617, 35.259071>,  <34.470734, 34.682697, 35.330406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338173, 34.869617, 35.259071>,  <34.117237, 35.181149, 35.140179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338173, 34.869617, 35.259071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832598, -0.497774, 0.242903,
		-0.041227, -0.381636, -0.923393,
		0.552341, -0.778829, 0.297228,
		34.503876, 34.635967, 35.348240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692043, 35.012367, 35.600899>,  <34.117237, 35.181149, 35.140179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692043, 35.012367, 35.600899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079109, 35.037865, 35.503281>,  <35.311348, 35.053162, 35.444710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079109, 35.037865, 35.503281>,  <34.692043, 35.012367, 35.600899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079109, 35.037865, 35.503281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228269, 0.190341, 0.954811,
		0.107310, -0.979647, 0.169637,
		0.967666, 0.063738, -0.244049,
		35.369408, 35.056988, 35.430065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993675, 34.488800, 35.992607>,  <34.692043, 35.012367, 35.600899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993675, 34.488800, 35.992607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301243, 34.716824, 35.876812>,  <35.485783, 34.853638, 35.807335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301243, 34.716824, 35.876812>,  <34.993675, 34.488800, 35.992607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301243, 34.716824, 35.876812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387117, -0.054758, 0.920403,
		0.508830, -0.819779, -0.262783,
		0.768917, 0.570056, -0.289488,
		35.531918, 34.887840, 35.789967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550854, 34.160351, 36.344696>,  <34.993675, 34.488800, 35.992607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550854, 34.160351, 36.344696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682968, 34.527985, 36.258717>,  <35.762238, 34.748566, 36.207127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682968, 34.527985, 36.258717>,  <35.550854, 34.160351, 36.344696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682968, 34.527985, 36.258717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338993, 0.097034, 0.935771,
		0.880907, -0.381935, -0.279513,
		0.330282, 0.919081, -0.214951,
		35.782051, 34.803707, 36.194233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294426, 34.328129, 36.615540>,  <35.550854, 34.160351, 36.344696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294426, 34.328129, 36.615540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162376, 34.696926, 36.534588>,  <36.083149, 34.918205, 36.486019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162376, 34.696926, 36.534588>,  <36.294426, 34.328129, 36.615540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162376, 34.696926, 36.534588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502380, 0.353118, 0.789254,
		0.799146, 0.158880, -0.579761,
		-0.330121, 0.921990, -0.202375,
		36.063339, 34.973522, 36.473877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824226, 34.695473, 36.845081>,  <36.294426, 34.328129, 36.615540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824226, 34.695473, 36.845081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507332, 34.938362, 36.820919>,  <36.317196, 35.084095, 36.806419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507332, 34.938362, 36.820919>,  <36.824226, 34.695473, 36.845081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507332, 34.938362, 36.820919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312148, 0.488323, 0.814926,
		0.524339, 0.626755, -0.576409,
		-0.792232, 0.607222, -0.060407,
		36.269661, 35.120529, 36.802795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085747, 35.333290, 37.089539>,  <36.824226, 34.695473, 36.845081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085747, 35.333290, 37.089539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688309, 35.341721, 37.133957>,  <36.449848, 35.346779, 37.160610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688309, 35.341721, 37.133957>,  <37.085747, 35.333290, 37.089539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688309, 35.341721, 37.133957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112077, 0.311193, 0.943715,
		-0.014668, 0.950113, -0.311561,
		-0.993591, 0.021077, 0.111050,
		36.390232, 35.348045, 37.167271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958183, 35.990013, 37.404766>,  <37.085747, 35.333290, 37.089539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958183, 35.990013, 37.404766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664215, 35.734631, 37.496216>,  <36.487835, 35.581402, 37.551086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664215, 35.734631, 37.496216>,  <36.958183, 35.990013, 37.404766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664215, 35.734631, 37.496216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142048, 0.184718, 0.972472,
		-0.663107, 0.747167, -0.045063,
		-0.734923, -0.638452, 0.228621,
		36.443737, 35.543095, 37.564804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559120, 36.287460, 37.858917>,  <36.958183, 35.990013, 37.404766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559120, 36.287460, 37.858917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463390, 35.904156, 37.921467>,  <36.405952, 35.674171, 37.958996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463390, 35.904156, 37.921467>,  <36.559120, 36.287460, 37.858917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463390, 35.904156, 37.921467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205255, 0.107486, 0.972788,
		-0.948997, 0.264907, 0.170965,
		-0.239322, -0.958265, 0.156377,
		36.391594, 35.616676, 37.968380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238388, 36.251766, 38.483170>,  <36.559120, 36.287460, 37.858917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238388, 36.251766, 38.483170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364574, 35.875977, 38.429691>,  <36.440285, 35.650501, 38.397606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364574, 35.875977, 38.429691>,  <36.238388, 36.251766, 38.483170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364574, 35.875977, 38.429691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408539, 0.007296, 0.912712,
		-0.856493, -0.342546, 0.386113,
		0.315463, -0.939473, -0.133694,
		36.459213, 35.594135, 38.389584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985527, 35.960789, 39.069309>,  <36.238388, 36.251766, 38.483170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985527, 35.960789, 39.069309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232666, 35.665565, 38.960842>,  <36.380951, 35.488430, 38.895763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232666, 35.665565, 38.960842>,  <35.985527, 35.960789, 39.069309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232666, 35.665565, 38.960842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395301, -0.006558, 0.918528,
		-0.679705, -0.674706, 0.287703,
		0.617850, -0.738057, -0.271169,
		36.418022, 35.444149, 38.879490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931675, 35.375244, 39.540623>,  <35.985527, 35.960789, 39.069309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931675, 35.375244, 39.540623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288910, 35.388000, 39.361126>,  <36.503250, 35.395653, 39.253426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288910, 35.388000, 39.361126>,  <35.931675, 35.375244, 39.540623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288910, 35.388000, 39.361126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446371, 0.061468, 0.892734,
		0.055997, -0.997602, 0.040690,
		0.893094, 0.031827, -0.448742,
		36.556839, 35.397568, 39.226501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361153, 34.984173, 39.858139>,  <35.931675, 35.375244, 39.540623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361153, 34.984173, 39.858139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609390, 35.237263, 39.672871>,  <36.758331, 35.389114, 39.561710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609390, 35.237263, 39.672871>,  <36.361153, 34.984173, 39.858139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609390, 35.237263, 39.672871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419706, 0.230918, 0.877795,
		0.662355, -0.739149, -0.122251,
		0.620591, 0.632721, -0.463175,
		36.795567, 35.427078, 39.533916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671471, 35.156670, 40.499458>,  <36.361153, 34.984173, 39.858139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671471, 35.156670, 40.499458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870777, 35.350147, 40.211632>,  <36.990360, 35.466232, 40.038937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870777, 35.350147, 40.211632>,  <36.671471, 35.156670, 40.499458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870777, 35.350147, 40.211632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657711, 0.329890, 0.677191,
		0.564930, -0.810686, -0.153758,
		0.498267, 0.483695, -0.719562,
		37.020256, 35.495255, 39.995762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398846, 34.936562, 40.598648>,  <36.671471, 35.156670, 40.499458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398846, 34.936562, 40.598648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378052, 35.282887, 40.399582>,  <37.365574, 35.490681, 40.280144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378052, 35.282887, 40.399582>,  <37.398846, 34.936562, 40.598648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378052, 35.282887, 40.399582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541048, 0.443281, 0.714681,
		0.839383, -0.232105, -0.491491,
		-0.051987, 0.865811, -0.497663,
		37.362457, 35.542629, 40.250282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065155, 35.277603, 40.585606>,  <37.398846, 34.936562, 40.598648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065155, 35.277603, 40.585606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800037, 35.573914, 40.541885>,  <37.640965, 35.751701, 40.515652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800037, 35.573914, 40.541885>,  <38.065155, 35.277603, 40.585606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800037, 35.573914, 40.541885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405369, 0.477695, 0.779412,
		0.629585, 0.472284, -0.616904,
		-0.662796, 0.740780, -0.109300,
		37.601200, 35.796146, 40.509094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447548, 35.787220, 40.735325>,  <38.065155, 35.277603, 40.585606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447548, 35.787220, 40.735325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069870, 35.910786, 40.781063>,  <37.843266, 35.984924, 40.808506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069870, 35.910786, 40.781063>,  <38.447548, 35.787220, 40.735325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069870, 35.910786, 40.781063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251351, 0.451317, 0.856233,
		0.212900, 0.837187, -0.503776,
		-0.944191, 0.308917, 0.114342,
		37.786613, 36.003460, 40.815365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505966, 36.490211, 40.924809>,  <38.447548, 35.787220, 40.735325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505966, 36.490211, 40.924809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138821, 36.375229, 41.034279>,  <37.918533, 36.306240, 41.099960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138821, 36.375229, 41.034279>,  <38.505966, 36.490211, 40.924809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138821, 36.375229, 41.034279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151830, 0.382787, 0.911275,
		-0.366715, 0.877975, -0.307700,
		-0.917860, -0.287461, 0.273677,
		37.863464, 36.288990, 41.116383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244503, 37.041176, 41.300274>,  <38.505966, 36.490211, 40.924809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244503, 37.041176, 41.300274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982506, 36.759926, 41.410980>,  <37.825306, 36.591175, 41.477402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982506, 36.759926, 41.410980>,  <38.244503, 37.041176, 41.300274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982506, 36.759926, 41.410980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051643, 0.407063, 0.911939,
		-0.753866, 0.583023, -0.302936,
		-0.654995, -0.703125, 0.276762,
		37.786007, 36.548988, 41.494007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819195, 37.390350, 41.836174>,  <38.244503, 37.041176, 41.300274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819195, 37.390350, 41.836174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719852, 37.006721, 41.890587>,  <37.660248, 36.776546, 41.923237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719852, 37.006721, 41.890587>,  <37.819195, 37.390350, 41.836174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719852, 37.006721, 41.890587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083792, 0.118640, 0.989395,
		-0.965037, 0.257125, 0.050897,
		-0.248360, -0.959068, 0.136036,
		37.645344, 36.719002, 41.931396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197464, 37.370464, 42.332619>,  <37.819195, 37.390350, 41.836174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197464, 37.370464, 42.332619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381786, 37.015884, 42.349846>,  <37.492382, 36.803135, 42.360180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381786, 37.015884, 42.349846>,  <37.197464, 37.370464, 42.332619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381786, 37.015884, 42.349846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027594, 0.034189, 0.999034,
		-0.887070, -0.461552, -0.008707,
		0.460809, -0.886454, 0.043064,
		37.520027, 36.749947, 42.362766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804985, 36.938332, 42.833275>,  <37.197464, 37.370464, 42.332619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804985, 36.938332, 42.833275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164082, 36.763268, 42.813202>,  <37.379539, 36.658230, 42.801159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164082, 36.763268, 42.813202>,  <36.804985, 36.938332, 42.833275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164082, 36.763268, 42.813202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000975, -0.111938, 0.993715,
		-0.440523, -0.892147, -0.100064,
		0.897741, -0.437657, -0.050181,
		37.433403, 36.631969, 42.798149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805702, 36.396877, 43.347584>,  <36.804985, 36.938332, 42.833275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805702, 36.396877, 43.347584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198753, 36.420532, 43.277225>,  <37.434586, 36.434723, 43.235012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198753, 36.420532, 43.277225>,  <36.805702, 36.396877, 43.347584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198753, 36.420532, 43.277225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184642, -0.406055, 0.895001,
		-0.018496, -0.911933, -0.409922,
		0.982632, 0.059135, -0.175892,
		37.493542, 36.438274, 43.224457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137806, 35.722397, 43.489407>,  <36.805702, 36.396877, 43.347584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137806, 35.722397, 43.489407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431721, 35.993713, 43.490314>,  <37.608070, 36.156506, 43.490860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431721, 35.993713, 43.490314>,  <37.137806, 35.722397, 43.489407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431721, 35.993713, 43.490314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376699, -0.410853, 0.830240,
		0.564081, -0.609193, -0.557402,
		0.734786, 0.678295, 0.002272,
		37.652157, 36.197201, 43.490997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741737, 35.324547, 43.704151>,  <37.137806, 35.722397, 43.489407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741737, 35.324547, 43.704151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819077, 35.711521, 43.769501>,  <37.865482, 35.943707, 43.808712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819077, 35.711521, 43.769501>,  <37.741737, 35.324547, 43.704151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819077, 35.711521, 43.769501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397875, -0.229524, 0.888265,
		0.896834, -0.106746, -0.429295,
		0.193352, 0.967432, 0.163373,
		37.877083, 36.001751, 43.818512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372665, 35.388676, 43.849781>,  <37.741737, 35.324547, 43.704151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372665, 35.388676, 43.849781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202168, 35.694767, 44.042751>,  <38.099869, 35.878422, 44.158535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202168, 35.694767, 44.042751>,  <38.372665, 35.388676, 43.849781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202168, 35.694767, 44.042751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509691, -0.237431, 0.826947,
		0.747350, 0.598369, -0.288829,
		-0.426242, 0.765233, 0.482427,
		38.074295, 35.924335, 44.187481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849392, 35.759613, 44.219673>,  <38.372665, 35.388676, 43.849781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849392, 35.759613, 44.219673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505962, 35.834324, 44.410656>,  <38.299904, 35.879150, 44.525246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505962, 35.834324, 44.410656>,  <38.849392, 35.759613, 44.219673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505962, 35.834324, 44.410656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428221, -0.250848, 0.868160,
		0.281921, 0.949837, 0.135390,
		-0.858573, 0.186776, 0.477460,
		38.248390, 35.890358, 44.553894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440521, 36.236362, 43.999489>,  <38.849392, 35.759613, 44.219673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440521, 36.236362, 43.999489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793484, 36.058414, 43.938240>,  <40.005260, 35.951645, 43.901493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793484, 36.058414, 43.938240>,  <39.440521, 36.236362, 43.999489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793484, 36.058414, 43.938240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189161, -0.037481, -0.981230,
		0.430781, 0.894811, -0.117225,
		0.882409, -0.444869, -0.153117,
		40.058205, 35.924953, 43.892303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649273, 36.655857, 43.432499>,  <39.440521, 36.236362, 43.999489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649273, 36.655857, 43.432499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875736, 36.326599, 43.415123>,  <40.011616, 36.129044, 43.404697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875736, 36.326599, 43.415123>,  <39.649273, 36.655857, 43.432499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875736, 36.326599, 43.415123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105120, -0.019834, -0.994262,
		0.817564, 0.567480, -0.097759,
		0.566162, -0.823149, -0.043438,
		40.045586, 36.079655, 43.402092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101906, 36.688541, 42.766685>,  <39.649273, 36.655857, 43.432499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101906, 36.688541, 42.766685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098328, 36.303333, 42.874397>,  <40.096180, 36.072208, 42.939026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098328, 36.303333, 42.874397>,  <40.101906, 36.688541, 42.766685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098328, 36.303333, 42.874397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033802, -0.269431, -0.962426,
		0.999389, 0.000492, 0.034963,
		-0.008946, -0.963020, 0.269283,
		40.095642, 36.014427, 42.955181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477139, 36.372715, 42.256310>,  <40.101906, 36.688541, 42.766685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477139, 36.372715, 42.256310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270180, 36.071079, 42.418125>,  <40.146004, 35.890099, 42.515213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270180, 36.071079, 42.418125>,  <40.477139, 36.372715, 42.256310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270180, 36.071079, 42.418125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174731, -0.369677, -0.912583,
		0.837715, -0.542855, 0.059507,
		-0.517399, -0.754087, 0.404538,
		40.114960, 35.844852, 42.539486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806507, 35.713833, 42.112869>,  <40.477139, 36.372715, 42.256310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806507, 35.713833, 42.112869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430882, 35.603939, 42.195503>,  <40.205505, 35.538002, 42.245083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430882, 35.603939, 42.195503>,  <40.806507, 35.713833, 42.112869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430882, 35.603939, 42.195503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111982, -0.323684, -0.939515,
		0.324983, -0.905400, 0.273196,
		-0.939066, -0.274733, 0.206581,
		40.149162, 35.521519, 42.257477>
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
