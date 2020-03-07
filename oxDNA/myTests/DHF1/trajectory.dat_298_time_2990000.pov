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
	<4.371482, -0.493704, 1.099684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.135387, -0.575485, 1.412048>,  <3.993731, -0.624554, 1.599467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.135387, -0.575485, 1.412048>,  <4.371482, -0.493704, 1.099684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.135387, -0.575485, 1.412048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398564, 0.915065, -0.061670,
		-0.701974, -0.347643, -0.621592,
		-0.590236, -0.204454, 0.780910,
		3.958317, -0.636821, 1.646321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.704742, -0.326693, 0.872791>,  <4.371482, -0.493704, 1.099684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.704742, -0.326693, 0.872791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.708580, -0.311096, 1.272469>,  <3.710883, -0.301738, 1.512275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.708580, -0.311096, 1.272469>,  <3.704742, -0.326693, 0.872791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.708580, -0.311096, 1.272469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405847, 0.913390, -0.031747,
		-0.913891, -0.405215, 0.024590,
		0.009595, 0.038993, 0.999194,
		3.711459, -0.299398, 1.572227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.119933, -0.069848, 1.106872>,  <3.704742, -0.326693, 0.872791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.119933, -0.069848, 1.106872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.321960, 0.011185, 1.442459>,  <3.443177, 0.059804, 1.643811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.321960, 0.011185, 1.442459>,  <3.119933, -0.069848, 1.106872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.321960, 0.011185, 1.442459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520095, 0.847184, 0.108537,
		-0.688772, -0.491161, 0.533248,
		0.505068, 0.202582, 0.838967,
		3.473481, 0.071959, 1.694149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.708564, -0.062657, 1.864462>,  <3.119933, -0.069848, 1.106872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.708564, -0.062657, 1.864462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.007107, 0.191071, 1.783875>,  <3.186233, 0.343307, 1.735522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.007107, 0.191071, 1.783875>,  <2.708564, -0.062657, 1.864462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.007107, 0.191071, 1.783875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610943, 0.773060, 0.170666,
		0.264004, -0.004292, 0.964512,
		0.746358, 0.634319, -0.201469,
		3.231014, 0.381366, 1.723434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.599863, 0.450488, 2.430227>,  <2.708564, -0.062657, 1.864462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.599863, 0.450488, 2.430227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.830273, 0.604019, 2.141541>,  <2.968518, 0.696138, 1.968329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.830273, 0.604019, 2.141541>,  <2.599863, 0.450488, 2.430227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.830273, 0.604019, 2.141541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327429, 0.917320, 0.226526,
		0.748991, 0.105826, 0.654074,
		0.576023, 0.383828, -0.721715,
		3.003080, 0.719168, 1.925026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.029852, 1.019928, 2.708111>,  <2.599863, 0.450488, 2.430227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.029852, 1.019928, 2.708111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.010742, 1.094986, 2.315681>,  <2.999276, 1.140021, 2.080224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.010742, 1.094986, 2.315681>,  <3.029852, 1.019928, 2.708111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.010742, 1.094986, 2.315681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316860, 0.928619, 0.193043,
		0.947268, 0.320086, 0.015092,
		-0.047776, 0.187646, -0.981074,
		2.996409, 1.151280, 2.021359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.256874, 1.781284, 2.621418>,  <3.029852, 1.019928, 2.708111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.256874, 1.781284, 2.621418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.119461, 1.732407, 2.248955>,  <3.037013, 1.703080, 2.025477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.119461, 1.732407, 2.248955>,  <3.256874, 1.781284, 2.621418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.119461, 1.732407, 2.248955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331233, 0.943548, -0.001617,
		0.878789, 0.307875, -0.364614,
		-0.343533, -0.122193, -0.931157,
		3.016401, 1.695749, 1.969608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.517209, 2.312411, 2.224808>,  <3.256874, 1.781284, 2.621418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.517209, 2.312411, 2.224808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.170597, 2.185776, 2.070457>,  <2.962630, 2.109795, 1.977847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.170597, 2.185776, 2.070457>,  <3.517209, 2.312411, 2.224808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.170597, 2.185776, 2.070457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333519, 0.942431, -0.024253,
		0.371340, 0.107681, -0.922232,
		-0.866529, -0.316588, -0.385876,
		2.910639, 2.090799, 1.954695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.302099, 3.661002, 1.764728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.963551, 3.468872, 1.856766>,  <1.760422, 3.353594, 1.911988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.963551, 3.468872, 1.856766>,  <2.302099, 3.661002, 1.764728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.963551, 3.468872, 1.856766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476343, -0.875937, -0.076368,
		0.238229, 0.044968, 0.970167,
		-0.846371, -0.480326, 0.230094,
		1.709639, 3.324774, 1.925794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.462160, 3.204212, 2.414996>,  <2.302099, 3.661002, 1.764728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.462160, 3.204212, 2.414996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.187548, 3.094269, 2.145737>,  <2.022780, 3.028303, 1.984181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.187548, 3.094269, 2.145737>,  <2.462160, 3.204212, 2.414996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.187548, 3.094269, 2.145737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420949, -0.905115, -0.059743,
		-0.592856, -0.324376, 0.737090,
		-0.686530, -0.274858, -0.673149,
		1.981589, 3.011811, 1.943792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012267, 2.501185, 2.592853>,  <2.462160, 3.204212, 2.414996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012267, 2.501185, 2.592853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.105694, 2.591110, 2.214455>,  <2.161750, 2.645065, 1.987416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.105694, 2.591110, 2.214455>,  <2.012267, 2.501185, 2.592853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.105694, 2.591110, 2.214455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459095, -0.883128, -0.096522,
		-0.857134, -0.411757, -0.309480,
		0.233567, 0.224813, -0.945995,
		2.175764, 2.658554, 1.930656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.700083, 2.023689, 2.001883>,  <2.012267, 2.501185, 2.592853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.700083, 2.023689, 2.001883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.030336, 2.189529, 1.848816>,  <2.228488, 2.289034, 1.756976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.030336, 2.189529, 1.848816>,  <1.700083, 2.023689, 2.001883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.030336, 2.189529, 1.848816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401691, -0.908226, -0.117340,
		-0.396199, -0.056835, -0.916404,
		0.825633, 0.414602, -0.382668,
		2.278026, 2.313910, 1.734015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.857034, 1.637288, 1.405752>,  <1.700083, 2.023689, 2.001883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.857034, 1.637288, 1.405752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.198006, 1.793213, 1.545128>,  <2.402589, 1.886768, 1.628754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.198006, 1.793213, 1.545128>,  <1.857034, 1.637288, 1.405752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.198006, 1.793213, 1.545128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471908, -0.860539, -0.191770,
		0.225093, 0.327902, -0.917504,
		0.852430, 0.389811, 0.348441,
		2.453735, 1.910156, 1.649660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.268324, 1.233256, 1.071913>,  <1.857034, 1.637288, 1.405752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.268324, 1.233256, 1.071913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.526300, 1.400864, 1.327560>,  <2.681086, 1.501428, 1.480949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.526300, 1.400864, 1.327560>,  <2.268324, 1.233256, 1.071913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.526300, 1.400864, 1.327560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491398, -0.867861, 0.073114,
		0.585303, 0.266908, -0.765624,
		0.644941, 0.419020, 0.639120,
		2.719783, 1.526570, 1.519296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.887026, 1.174854, 0.755566>,  <2.268324, 1.233256, 1.071913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.887026, 1.174854, 0.755566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.947123, 1.212082, 1.149269>,  <2.983181, 1.234419, 1.385491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.947123, 1.212082, 1.149269>,  <2.887026, 1.174854, 0.755566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.947123, 1.212082, 1.149269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660153, -0.750540, -0.029799,
		0.735952, 0.654238, -0.174203,
		0.150242, 0.093070, 0.984259,
		2.992195, 1.240003, 1.444547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.621638, 1.234290, 0.874229>,  <2.887026, 1.174854, 0.755566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.621638, 1.234290, 0.874229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434614, 1.066620, 1.185532>,  <3.322400, 0.966018, 1.372313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434614, 1.066620, 1.185532>,  <3.621638, 1.234290, 0.874229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.434614, 1.066620, 1.185532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588373, -0.804633, -0.079899,
		0.659701, 0.420547, 0.622844,
		-0.467559, -0.419174, 0.778255,
		3.294346, 0.940868, 1.419008>
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
