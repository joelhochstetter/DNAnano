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
	<24.537552, 35.414810, 35.094269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211397, 35.199291, 35.009567>,  <24.015705, 35.069981, 34.958748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211397, 35.199291, 35.009567>,  <24.537552, 35.414810, 35.094269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211397, 35.199291, 35.009567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105943, -0.220719, 0.969567,
		-0.569141, 0.813005, 0.122889,
		-0.815387, -0.538801, -0.211752,
		23.966782, 35.037651, 34.946041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743044, 36.085484, 35.551395>,  <24.537552, 35.414810, 35.094269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743044, 36.085484, 35.551395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083698, 36.289795, 35.598415>,  <25.288092, 36.412384, 35.626629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083698, 36.289795, 35.598415>,  <24.743044, 36.085484, 35.551395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083698, 36.289795, 35.598415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519446, -0.852446, -0.059259,
		0.069938, 0.111528, -0.991297,
		0.851637, 0.510781, 0.117551,
		25.339190, 36.443027, 35.633682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166140, 35.899303, 35.031643>,  <24.743044, 36.085484, 35.551395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166140, 35.899303, 35.031643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389879, 36.017208, 35.341545>,  <25.524122, 36.087952, 35.527485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389879, 36.017208, 35.341545>,  <25.166140, 35.899303, 35.031643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389879, 36.017208, 35.341545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365582, -0.926555, 0.088576,
		0.743962, 0.233691, -0.626026,
		0.559348, 0.294761, 0.774755,
		25.557684, 36.105637, 35.573971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892471, 35.750805, 34.942806>,  <25.166140, 35.899303, 35.031643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892471, 35.750805, 34.942806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811316, 35.771984, 35.333912>,  <25.762621, 35.784691, 35.568577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811316, 35.771984, 35.333912>,  <25.892471, 35.750805, 34.942806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811316, 35.771984, 35.333912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287181, -0.951410, 0.111115,
		0.936142, 0.303341, 0.177826,
		-0.202891, 0.052951, 0.977768,
		25.750448, 35.787868, 35.627243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554867, 35.716534, 35.358700>,  <25.892471, 35.750805, 34.942806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554867, 35.716534, 35.358700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233337, 35.574219, 35.549397>,  <26.040421, 35.488831, 35.663815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233337, 35.574219, 35.549397>,  <26.554867, 35.716534, 35.358700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233337, 35.574219, 35.549397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436328, -0.897365, 0.065989,
		0.404335, 0.261060, 0.876562,
		-0.803823, -0.355787, 0.476743,
		25.992191, 35.467484, 35.692421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775928, 35.313362, 35.970821>,  <26.554867, 35.716534, 35.358700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775928, 35.313362, 35.970821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412476, 35.174141, 35.878521>,  <26.194403, 35.090611, 35.823139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412476, 35.174141, 35.878521>,  <26.775928, 35.313362, 35.970821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412476, 35.174141, 35.878521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375141, -0.923071, -0.084903,
		-0.183450, -0.163710, 0.969301,
		-0.908634, -0.348049, -0.230752,
		26.139885, 35.069725, 35.809296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593775, 34.833614, 36.448742>,  <26.775928, 35.313362, 35.970821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593775, 34.833614, 36.448742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381895, 34.765007, 36.116478>,  <26.254768, 34.723843, 35.917118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381895, 34.765007, 36.116478>,  <26.593775, 34.833614, 36.448742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381895, 34.765007, 36.116478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491019, -0.860559, -0.135418,
		-0.691608, -0.479602, 0.540056,
		-0.529697, -0.171522, -0.830663,
		26.222986, 34.713551, 35.867279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360895, 34.189323, 36.498554>,  <26.593775, 34.833614, 36.448742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360895, 34.189323, 36.498554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459032, 34.308182, 36.129444>,  <26.517914, 34.379498, 35.907978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459032, 34.308182, 36.129444>,  <26.360895, 34.189323, 36.498554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459032, 34.308182, 36.129444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546199, -0.828775, -0.121651,
		-0.800920, -0.474172, -0.365634,
		0.245344, 0.297142, -0.922775,
		26.532635, 34.397324, 35.852612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417637, 33.554516, 36.089760>,  <26.360895, 34.189323, 36.498554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417637, 33.554516, 36.089760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599775, 33.820774, 35.853260>,  <26.709059, 33.980530, 35.711361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599775, 33.820774, 35.853260>,  <26.417637, 33.554516, 36.089760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599775, 33.820774, 35.853260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754880, -0.640746, -0.140004,
		-0.472033, -0.382571, -0.794244,
		0.455348, 0.665645, -0.591249,
		26.736380, 34.020466, 35.675884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650034, 33.203842, 35.436867>,  <26.417637, 33.554516, 36.089760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650034, 33.203842, 35.436867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874706, 33.524712, 35.517891>,  <27.009510, 33.717232, 35.566505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874706, 33.524712, 35.517891>,  <26.650034, 33.203842, 35.436867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874706, 33.524712, 35.517891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823059, -0.566675, -0.038121,
		0.084208, 0.188134, -0.978527,
		0.561679, 0.802175, 0.202564,
		27.043209, 33.765366, 35.578659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071026, 33.139374, 34.886074>,  <26.650034, 33.203842, 35.436867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071026, 33.139374, 34.886074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253130, 33.357212, 35.167828>,  <27.362392, 33.487915, 35.336880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253130, 33.357212, 35.167828>,  <27.071026, 33.139374, 34.886074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253130, 33.357212, 35.167828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761759, -0.647805, 0.008503,
		0.460934, 0.532699, -0.709769,
		0.455262, 0.544592, 0.704383,
		27.389709, 33.520588, 35.379143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745346, 33.305126, 34.625702>,  <27.071026, 33.139374, 34.886074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745346, 33.305126, 34.625702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743982, 33.285248, 35.025204>,  <27.743164, 33.273319, 35.264904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743982, 33.285248, 35.025204>,  <27.745346, 33.305126, 34.625702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743982, 33.285248, 35.025204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585659, -0.809653, -0.038289,
		0.810550, 0.584802, 0.031867,
		-0.003410, -0.049699, 0.998758,
		27.742960, 33.270340, 35.324833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406349, 33.150635, 34.850185>,  <27.745346, 33.305126, 34.625702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406349, 33.150635, 34.850185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146139, 33.007954, 35.118389>,  <27.990013, 32.922344, 35.279312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146139, 33.007954, 35.118389>,  <28.406349, 33.150635, 34.850185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146139, 33.007954, 35.118389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459040, -0.888003, -0.027053,
		0.605062, 0.290191, 0.741410,
		-0.650524, -0.356706, 0.670507,
		27.950981, 32.900940, 35.319542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673159, 33.094517, 35.518570>,  <28.406349, 33.150635, 34.850185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673159, 33.094517, 35.518570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405903, 32.811768, 35.425690>,  <28.245548, 32.642117, 35.369961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405903, 32.811768, 35.425690>,  <28.673159, 33.094517, 35.518570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405903, 32.811768, 35.425690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712330, -0.697853, 0.074749,
		-0.214879, -0.115460, 0.969792,
		-0.668141, -0.706874, -0.232200,
		28.205460, 32.599705, 35.356030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110888, 32.918579, 35.927116>,  <28.673159, 33.094517, 35.518570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110888, 32.918579, 35.927116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276390, 33.240429, 35.756763>,  <28.375692, 33.433540, 35.654552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276390, 33.240429, 35.756763>,  <28.110888, 32.918579, 35.927116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276390, 33.240429, 35.756763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883458, 0.467813, 0.025544,
		0.219789, 0.365683, 0.904416,
		0.413757, 0.804628, -0.425886,
		28.400517, 33.481819, 35.628998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077448, 33.594650, 36.369839>,  <28.110888, 32.918579, 35.927116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077448, 33.594650, 36.369839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047029, 33.625599, 35.972198>,  <28.028778, 33.644169, 35.733616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047029, 33.625599, 35.972198>,  <28.077448, 33.594650, 36.369839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047029, 33.625599, 35.972198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935651, 0.339058, 0.097966,
		0.344637, 0.937578, 0.046610,
		-0.076047, 0.077374, -0.994098,
		28.024216, 33.648811, 35.673969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115402, 34.305473, 36.122311>,  <28.077448, 33.594650, 36.369839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115402, 34.305473, 36.122311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899822, 34.076591, 35.875050>,  <27.770473, 33.939262, 35.726692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899822, 34.076591, 35.875050>,  <28.115402, 34.305473, 36.122311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899822, 34.076591, 35.875050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788940, 0.600030, 0.132426,
		0.295134, 0.559055, -0.774824,
		-0.538952, -0.572207, -0.618151,
		27.738136, 33.904930, 35.689606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832899, 34.781628, 35.609928>,  <28.115402, 34.305473, 36.122311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832899, 34.781628, 35.609928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597685, 34.458153, 35.616081>,  <27.456556, 34.264069, 35.619774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597685, 34.458153, 35.616081>,  <27.832899, 34.781628, 35.609928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597685, 34.458153, 35.616081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808836, 0.587925, -0.011297,
		0.000090, -0.019088, -0.999818,
		-0.588034, -0.808690, 0.015386,
		27.421274, 34.215546, 35.620697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439392, 34.967556, 35.063141>,  <27.832899, 34.781628, 35.609928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439392, 34.967556, 35.063141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228941, 34.685932, 35.253929>,  <27.102671, 34.516960, 35.368401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228941, 34.685932, 35.253929>,  <27.439392, 34.967556, 35.063141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228941, 34.685932, 35.253929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837996, 0.524697, -0.149854,
		-0.144758, -0.478538, -0.866052,
		-0.526126, -0.704055, 0.476967,
		27.071104, 34.474716, 35.397018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891476, 34.753342, 34.697945>,  <27.439392, 34.967556, 35.063141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891476, 34.753342, 34.697945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793514, 34.656319, 35.073433>,  <26.734737, 34.598106, 35.298725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793514, 34.656319, 35.073433>,  <26.891476, 34.753342, 34.697945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793514, 34.656319, 35.073433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883441, 0.454714, -0.112987,
		-0.399442, -0.856972, -0.325647,
		-0.244903, -0.242558, 0.938716,
		26.720043, 34.583549, 35.355049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331078, 34.278824, 34.691170>,  <26.891476, 34.753342, 34.697945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331078, 34.278824, 34.691170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248320, 34.217037, 35.077606>,  <26.198664, 34.179966, 35.309467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248320, 34.217037, 35.077606>,  <26.331078, 34.278824, 34.691170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248320, 34.217037, 35.077606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542650, 0.839765, 0.018053,
		-0.814079, -0.520516, -0.257564,
		-0.206896, -0.154463, 0.966093,
		26.186251, 34.170700, 35.367435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634106, 34.371902, 34.751938>,  <26.331078, 34.278824, 34.691170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634106, 34.371902, 34.751938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810225, 34.488144, 35.091747>,  <25.915895, 34.557888, 35.295631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810225, 34.488144, 35.091747>,  <25.634106, 34.371902, 34.751938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810225, 34.488144, 35.091747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490934, 0.870125, -0.043209,
		-0.751746, -0.398034, 0.525783,
		0.440298, 0.290607, 0.849521,
		25.942314, 34.575325, 35.346603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119587, 34.637558, 35.355824>,  <25.634106, 34.371902, 34.751938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119587, 34.637558, 35.355824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488693, 34.786640, 35.395012>,  <25.710157, 34.876087, 35.418526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488693, 34.786640, 35.395012>,  <25.119587, 34.637558, 35.355824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488693, 34.786640, 35.395012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378212, 0.924635, 0.044773,
		-0.073897, -0.078367, 0.994182,
		0.922764, 0.372703, 0.097967,
		25.765522, 34.898453, 35.424400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084682, 35.112640, 35.853336>,  <25.119587, 34.637558, 35.355824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084682, 35.112640, 35.853336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425341, 35.054413, 36.054733>,  <25.629736, 35.019478, 36.175571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425341, 35.054413, 36.054733>,  <25.084682, 35.112640, 35.853336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425341, 35.054413, 36.054733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283309, 0.936073, -0.208576,
		-0.440945, 0.320277, 0.838445,
		0.851648, -0.145568, 0.503494,
		25.680836, 35.010742, 36.205780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005772, 35.496887, 36.416443>,  <25.084682, 35.112640, 35.853336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005772, 35.496887, 36.416443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367849, 35.445839, 36.254288>,  <25.585096, 35.415211, 36.156994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367849, 35.445839, 36.254288>,  <25.005772, 35.496887, 36.416443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367849, 35.445839, 36.254288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063147, 0.983648, -0.168666,
		0.420285, 0.127076, 0.898450,
		0.905192, -0.127622, -0.405388,
		25.639406, 35.407551, 36.132671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393600, 35.959930, 36.854389>,  <25.005772, 35.496887, 36.416443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393600, 35.959930, 36.854389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510246, 35.905025, 36.475735>,  <25.580235, 35.872082, 36.248543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510246, 35.905025, 36.475735>,  <25.393600, 35.959930, 36.854389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510246, 35.905025, 36.475735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016629, 0.988773, -0.148499,
		0.956392, 0.059046, 0.286058,
		0.291615, -0.137266, -0.946636,
		25.597731, 35.863846, 36.191746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915018, 36.392586, 36.776176>,  <25.393600, 35.959930, 36.854389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915018, 36.392586, 36.776176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763796, 36.327141, 36.411694>,  <25.673063, 36.287876, 36.193005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763796, 36.327141, 36.411694>,  <25.915018, 36.392586, 36.776176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763796, 36.327141, 36.411694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059049, 0.986518, -0.152631,
		0.923898, -0.003898, -0.382619,
		-0.378056, -0.163609, -0.911211,
		25.650379, 36.278057, 36.138329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233265, 36.804859, 36.241547>,  <25.915018, 36.392586, 36.776176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233265, 36.804859, 36.241547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855988, 36.714588, 36.144012>,  <25.629622, 36.660423, 36.085491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855988, 36.714588, 36.144012>,  <26.233265, 36.804859, 36.241547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855988, 36.714588, 36.144012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177966, 0.962908, -0.202821,
		0.280559, -0.147907, -0.948372,
		-0.943194, -0.225681, -0.243831,
		25.573029, 36.646885, 36.070862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931360, 36.956123, 35.495903>,  <26.233265, 36.804859, 36.241547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931360, 36.956123, 35.495903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630276, 36.998516, 35.755810>,  <25.449625, 37.023952, 35.911755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630276, 36.998516, 35.755810>,  <25.931360, 36.956123, 35.495903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630276, 36.998516, 35.755810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090335, 0.960996, -0.261392,
		-0.652123, -0.255450, -0.713780,
		-0.752712, 0.105980, 0.649764,
		25.404463, 37.030312, 35.950737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245853, 37.285484, 35.117226>,  <25.931360, 36.956123, 35.495903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245853, 37.285484, 35.117226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282436, 37.350342, 35.510235>,  <25.304386, 37.389256, 35.746040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282436, 37.350342, 35.510235>,  <25.245853, 37.285484, 35.117226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282436, 37.350342, 35.510235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261498, 0.955939, -0.133416,
		-0.960861, -0.244725, 0.129829,
		0.091459, 0.162145, 0.982520,
		25.309874, 37.398987, 35.804989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.721603, 37.802486, 35.147503>,  <25.245853, 37.285484, 35.117226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.721603, 37.802486, 35.147503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961744, 37.824974, 35.466606>,  <25.105829, 37.838467, 35.658066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961744, 37.824974, 35.466606>,  <24.721603, 37.802486, 35.147503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961744, 37.824974, 35.466606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015544, 0.998158, -0.058649,
		-0.799584, 0.022810, 0.600121,
		0.600353, 0.056223, 0.797756,
		25.141850, 37.841843, 35.705933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.415855, 38.325596, 35.480785>,  <24.721603, 37.802486, 35.147503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.415855, 38.325596, 35.480785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795738, 38.307880, 35.604782>,  <25.023668, 38.297253, 35.679180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795738, 38.307880, 35.604782>,  <24.415855, 38.325596, 35.480785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795738, 38.307880, 35.604782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053531, 0.998337, -0.021381,
		-0.308527, 0.036900, 0.950499,
		0.949708, -0.044284, 0.309989,
		25.080650, 38.294594, 35.697781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418898, 38.646160, 36.176918>,  <24.415855, 38.325596, 35.480785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418898, 38.646160, 36.176918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768608, 38.683334, 35.986340>,  <24.978434, 38.705639, 35.871990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768608, 38.683334, 35.986340>,  <24.418898, 38.646160, 36.176918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768608, 38.683334, 35.986340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167199, 0.979096, -0.115823,
		0.455725, 0.180923, 0.871540,
		0.874276, 0.092937, -0.476449,
		25.030891, 38.711216, 35.843403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591843, 39.318356, 36.296532>,  <24.418898, 38.646160, 36.176918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591843, 39.318356, 36.296532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862318, 39.217838, 36.019512>,  <25.024603, 39.157528, 35.853302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862318, 39.217838, 36.019512>,  <24.591843, 39.318356, 36.296532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.862318, 39.217838, 36.019512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036060, 0.927613, -0.371797,
		0.735847, 0.276378, 0.618178,
		0.676187, -0.251294, -0.692548,
		25.065174, 39.142448, 35.811749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192751, 39.723927, 36.371017>,  <24.591843, 39.318356, 36.296532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192751, 39.723927, 36.371017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186977, 39.588108, 35.994827>,  <25.183514, 39.506618, 35.769112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186977, 39.588108, 35.994827>,  <25.192751, 39.723927, 36.371017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186977, 39.588108, 35.994827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102970, 0.935072, -0.339172,
		0.994580, -0.101737, 0.021465,
		-0.014435, -0.339543, -0.940480,
		25.182646, 39.486244, 35.712685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345345, 40.277096, 36.082783>,  <25.192751, 39.723927, 36.371017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345345, 40.277096, 36.082783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318283, 40.042797, 35.759716>,  <25.302046, 39.902218, 35.565876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318283, 40.042797, 35.759716>,  <25.345345, 40.277096, 36.082783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318283, 40.042797, 35.759716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093808, 0.809667, -0.579343,
		0.993289, 0.036569, -0.109726,
		-0.067656, -0.585749, -0.807664,
		25.297987, 39.867073, 35.517418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821268, 40.521511, 35.692253>,  <25.345345, 40.277096, 36.082783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821268, 40.521511, 35.692253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561859, 40.332394, 35.453629>,  <25.406214, 40.218925, 35.310452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561859, 40.332394, 35.453629>,  <25.821268, 40.521511, 35.692253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561859, 40.332394, 35.453629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096819, 0.828587, -0.551425,
		0.755012, -0.299853, -0.583133,
		-0.648523, -0.472791, -0.596562,
		25.367302, 40.190556, 35.274658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106020, 40.589703, 35.047100>,  <25.821268, 40.521511, 35.692253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106020, 40.589703, 35.047100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711262, 40.530884, 35.020527>,  <25.474407, 40.495594, 35.004585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711262, 40.530884, 35.020527>,  <26.106020, 40.589703, 35.047100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711262, 40.530884, 35.020527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088132, 0.836092, -0.541464,
		0.135162, -0.528514, -0.838096,
		-0.986896, -0.147048, -0.066429,
		25.415194, 40.486771, 35.000599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826298, 40.595253, 34.324829>,  <26.106020, 40.589703, 35.047100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826298, 40.595253, 34.324829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521309, 40.696507, 34.563007>,  <25.338316, 40.757259, 34.705914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521309, 40.696507, 34.563007>,  <25.826298, 40.595253, 34.324829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521309, 40.696507, 34.563007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182572, 0.798720, -0.573336,
		-0.620727, -0.545865, -0.562787,
		-0.762473, 0.253136, 0.595447,
		25.292566, 40.772446, 34.741642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734793, 41.285278, 34.291645>,  <25.826298, 40.595253, 34.324829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734793, 41.285278, 34.291645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899452, 41.601410, 34.110130>,  <25.998249, 41.791088, 34.001221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899452, 41.601410, 34.110130>,  <25.734793, 41.285278, 34.291645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899452, 41.601410, 34.110130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834206, -0.126290, 0.536797,
		0.366939, -0.599523, -0.711286,
		0.411650, 0.790331, -0.453785,
		26.022947, 41.838509, 33.973995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533587, 41.536503, 35.001831>,  <25.734793, 41.285278, 34.291645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533587, 41.536503, 35.001831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232620, 41.560654, 34.739464>,  <25.052040, 41.575146, 34.582043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232620, 41.560654, 34.739464>,  <25.533587, 41.536503, 35.001831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232620, 41.560654, 34.739464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328917, -0.897192, 0.294720,
		-0.570690, 0.437494, 0.694919,
		-0.752414, 0.060377, -0.655918,
		25.006897, 41.578766, 34.542690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800985, 41.342060, 35.354733>,  <25.533587, 41.536503, 35.001831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800985, 41.342060, 35.354733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897968, 41.283501, 34.971111>,  <24.956158, 41.248363, 34.740940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897968, 41.283501, 34.971111>,  <24.800985, 41.342060, 35.354733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897968, 41.283501, 34.971111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193178, -0.976038, 0.100158,
		-0.950735, 0.160983, -0.264931,
		0.242459, -0.146403, -0.959051,
		24.970707, 41.239578, 34.683395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254623, 40.823345, 35.224522>,  <24.800985, 41.342060, 35.354733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254623, 40.823345, 35.224522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.571802, 40.803806, 34.981590>,  <24.762110, 40.792084, 34.835831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.571802, 40.803806, 34.981590>,  <24.254623, 40.823345, 35.224522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.571802, 40.803806, 34.981590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063159, -0.984821, 0.161671,
		-0.606009, -0.166555, -0.777825,
		0.792946, -0.048848, -0.607330,
		24.809687, 40.789150, 34.799393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.150787, 40.177513, 34.794636>,  <24.254623, 40.823345, 35.224522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.150787, 40.177513, 34.794636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534416, 40.267090, 34.863949>,  <24.764595, 40.320835, 34.905537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534416, 40.267090, 34.863949>,  <24.150787, 40.177513, 34.794636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534416, 40.267090, 34.863949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180176, -0.954744, 0.236645,
		0.218432, -0.195740, -0.956020,
		0.959075, 0.223943, 0.173279,
		24.822138, 40.334274, 34.915932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.583508, 39.627186, 34.403267>,  <24.150787, 40.177513, 34.794636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.583508, 39.627186, 34.403267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822361, 39.800072, 34.673561>,  <24.965673, 39.903805, 34.835739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822361, 39.800072, 34.673561>,  <24.583508, 39.627186, 34.403267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.822361, 39.800072, 34.673561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255469, -0.901023, 0.350562,
		0.760371, -0.036704, -0.648451,
		0.597136, 0.432216, 0.675735,
		25.001501, 39.929737, 34.876282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835953, 38.989120, 34.705521>,  <24.583508, 39.627186, 34.403267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835953, 38.989120, 34.705521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039478, 39.192337, 34.983517>,  <25.161592, 39.314266, 35.150314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039478, 39.192337, 34.983517>,  <24.835953, 38.989120, 34.705521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039478, 39.192337, 34.983517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306775, -0.861306, 0.405020,
		0.804363, 0.007126, -0.594095,
		0.508812, 0.508037, 0.694989,
		25.192122, 39.344749, 35.192013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594305, 38.778336, 34.643864>,  <24.835953, 38.989120, 34.705521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594305, 38.778336, 34.643864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466223, 38.884411, 35.007652>,  <25.389374, 38.948055, 35.225925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466223, 38.884411, 35.007652>,  <25.594305, 38.778336, 34.643864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466223, 38.884411, 35.007652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377932, -0.844562, 0.379318,
		0.868698, 0.465180, 0.170211,
		-0.320204, 0.265185, 0.909476,
		25.370161, 38.963966, 35.280495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212923, 38.706722, 35.225616>,  <25.594305, 38.778336, 34.643864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212923, 38.706722, 35.225616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864555, 38.710609, 35.422146>,  <25.655535, 38.712940, 35.540066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864555, 38.710609, 35.422146>,  <26.212923, 38.706722, 35.225616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864555, 38.710609, 35.422146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135290, -0.956429, 0.258728,
		0.472434, 0.291803, 0.831659,
		-0.870921, 0.009716, 0.491328,
		25.603279, 38.713524, 35.569546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355658, 38.312546, 35.827690>,  <26.212923, 38.706722, 35.225616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355658, 38.312546, 35.827690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959911, 38.310734, 35.769531>,  <25.722464, 38.309647, 35.734638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959911, 38.310734, 35.769531>,  <26.355658, 38.312546, 35.827690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959911, 38.310734, 35.769531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024070, -0.980633, 0.194367,
		-0.143460, 0.195800, 0.970094,
		-0.989363, -0.004533, -0.145395,
		25.663103, 38.309372, 35.725914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492992, 37.833611, 36.465355>,  <26.355658, 38.312546, 35.827690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492992, 37.833611, 36.465355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334848, 37.987938, 36.798782>,  <26.239962, 38.080532, 36.998840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334848, 37.987938, 36.798782>,  <26.492992, 37.833611, 36.465355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334848, 37.987938, 36.798782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847293, -0.197222, 0.493151,
		0.354664, 0.901249, -0.248926,
		-0.395358, 0.385816, 0.833569,
		26.216240, 38.103683, 37.048855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766943, 38.397030, 36.810574>,  <26.492992, 37.833611, 36.465355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766943, 38.397030, 36.810574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597235, 38.180447, 37.100903>,  <26.495409, 38.050495, 37.275101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597235, 38.180447, 37.100903>,  <26.766943, 38.397030, 36.810574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597235, 38.180447, 37.100903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893984, -0.122835, 0.430934,
		-0.144178, 0.831703, 0.536174,
		-0.424270, -0.541462, 0.725819,
		26.469954, 38.018009, 37.318649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044350, 38.709579, 37.448761>,  <26.766943, 38.397030, 36.810574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044350, 38.709579, 37.448761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976419, 38.319584, 37.506100>,  <26.935661, 38.085587, 37.540504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976419, 38.319584, 37.506100>,  <27.044350, 38.709579, 37.448761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976419, 38.319584, 37.506100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980942, -0.153314, 0.119362,
		-0.094400, 0.160887, 0.982448,
		-0.169826, -0.974993, 0.143348,
		26.925472, 38.027084, 37.549103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332005, 38.403229, 38.027058>,  <27.044350, 38.709579, 37.448761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332005, 38.403229, 38.027058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316599, 38.108997, 37.756519>,  <27.307356, 37.932461, 37.594196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316599, 38.108997, 37.756519>,  <27.332005, 38.403229, 38.027058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316599, 38.108997, 37.756519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948699, -0.239487, 0.206435,
		-0.313825, -0.633700, 0.707063,
		-0.038514, -0.735574, -0.676348,
		27.305044, 37.888325, 37.553616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930223, 38.131092, 38.067081>,  <27.332005, 38.403229, 38.027058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930223, 38.131092, 38.067081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841574, 37.954563, 37.719261>,  <27.788383, 37.848644, 37.510571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841574, 37.954563, 37.719261>,  <27.930223, 38.131092, 38.067081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841574, 37.954563, 37.719261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931409, -0.359831, -0.054764,
		-0.288723, -0.822045, 0.490797,
		-0.221622, -0.441321, -0.869551,
		27.775087, 37.822166, 37.458397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297644, 37.609982, 38.031956>,  <27.930223, 38.131092, 38.067081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297644, 37.609982, 38.031956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242039, 37.685860, 37.643173>,  <28.208675, 37.731388, 37.409904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242039, 37.685860, 37.643173>,  <28.297644, 37.609982, 38.031956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242039, 37.685860, 37.643173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865379, -0.453897, -0.212360,
		-0.481450, -0.870628, -0.101062,
		-0.139015, 0.189697, -0.971951,
		28.200335, 37.742767, 37.351589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361088, 37.027309, 37.714527>,  <28.297644, 37.609982, 38.031956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361088, 37.027309, 37.714527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501326, 37.284679, 37.442326>,  <28.585468, 37.439102, 37.279003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501326, 37.284679, 37.442326>,  <28.361088, 37.027309, 37.714527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501326, 37.284679, 37.442326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766423, -0.614710, -0.186352,
		-0.538217, -0.456222, -0.708650,
		0.350597, 0.643423, -0.680506,
		28.606504, 37.477707, 37.238174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526480, 36.748676, 36.980972>,  <28.361088, 37.027309, 37.714527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526480, 36.748676, 36.980972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799212, 37.032593, 37.051750>,  <28.962851, 37.202942, 37.094215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799212, 37.032593, 37.051750>,  <28.526480, 36.748676, 36.980972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799212, 37.032593, 37.051750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731216, -0.654465, -0.192350,
		-0.020726, 0.260533, -0.965242,
		0.681831, 0.709787, 0.176942,
		29.003761, 37.245529, 37.104832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981144, 36.784729, 36.450665>,  <28.526480, 36.748676, 36.980972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981144, 36.784729, 36.450665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148327, 36.910519, 36.791584>,  <29.248636, 36.985992, 36.996136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148327, 36.910519, 36.791584>,  <28.981144, 36.784729, 36.450665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148327, 36.910519, 36.791584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813245, -0.547657, -0.196736,
		0.404901, 0.775357, -0.484641,
		0.417958, 0.314473, 0.852302,
		29.273714, 37.004860, 37.047276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768036, 36.487034, 36.301556>,  <28.981144, 36.784729, 36.450665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768036, 36.487034, 36.301556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845659, 36.432133, 35.913021>,  <29.892233, 36.399193, 35.679901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845659, 36.432133, 35.913021>,  <29.768036, 36.487034, 36.301556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845659, 36.432133, 35.913021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017326, 0.990489, -0.136494,
		0.980837, 0.009658, 0.194592,
		0.194060, -0.137250, -0.971341,
		29.903877, 36.390957, 35.621620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606421, 35.713623, 36.322567>,  <29.768036, 36.487034, 36.301556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606421, 35.713623, 36.322567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952549, 35.837517, 36.164940>,  <30.160225, 35.911854, 36.070366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952549, 35.837517, 36.164940>,  <29.606421, 35.713623, 36.322567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952549, 35.837517, 36.164940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042672, -0.828879, -0.557798,
		-0.499402, 0.465858, -0.730462,
		0.865319, 0.309736, -0.394064,
		30.212145, 35.930439, 36.046722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575075, 35.915867, 35.570007>,  <29.606421, 35.713623, 36.322567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575075, 35.915867, 35.570007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907427, 35.751102, 35.719654>,  <30.106838, 35.652245, 35.809444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907427, 35.751102, 35.719654>,  <29.575075, 35.915867, 35.570007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907427, 35.751102, 35.719654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010574, -0.683899, -0.729500,
		0.556352, 0.602171, -0.572593,
		0.830880, -0.411913, 0.374121,
		30.156691, 35.627529, 35.831890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695004, 35.349747, 35.084427>,  <29.575075, 35.915867, 35.570007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695004, 35.349747, 35.084427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005844, 35.321392, 35.334576>,  <30.192348, 35.304379, 35.484665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005844, 35.321392, 35.334576>,  <29.695004, 35.349747, 35.084427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005844, 35.321392, 35.334576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466967, -0.601245, -0.648419,
		0.421963, 0.795915, -0.434128,
		0.777103, -0.070886, 0.625369,
		30.238976, 35.300125, 35.522186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340366, 35.631805, 34.809864>,  <29.695004, 35.349747, 35.084427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340366, 35.631805, 34.809864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379618, 35.327408, 35.066383>,  <30.403168, 35.144768, 35.220295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379618, 35.327408, 35.066383>,  <30.340366, 35.631805, 34.809864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379618, 35.327408, 35.066383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336626, -0.581039, -0.740997,
		0.936512, 0.288590, 0.199153,
		0.098128, -0.760992, 0.641297,
		30.409056, 35.099110, 35.258774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904968, 35.277950, 34.569473>,  <30.340366, 35.631805, 34.809864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904968, 35.277950, 34.569473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684881, 35.028606, 34.791710>,  <30.552828, 34.879002, 34.925053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684881, 35.028606, 34.791710>,  <30.904968, 35.277950, 34.569473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684881, 35.028606, 34.791710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041238, -0.644264, -0.763691,
		0.834001, -0.443109, 0.328780,
		-0.550219, -0.623361, 0.555590,
		30.519815, 34.841599, 34.958385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371712, 34.722923, 34.712616>,  <30.904968, 35.277950, 34.569473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371712, 34.722923, 34.712616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985561, 34.618580, 34.712528>,  <30.753870, 34.555973, 34.712475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985561, 34.618580, 34.712528>,  <31.371712, 34.722923, 34.712616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985561, 34.618580, 34.712528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144957, -0.535767, -0.831830,
		0.216870, -0.803062, 0.555031,
		-0.965378, -0.260855, -0.000217,
		30.695948, 34.540325, 34.712463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209869, 33.956875, 34.632526>,  <31.371712, 34.722923, 34.712616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209869, 33.956875, 34.632526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856676, 34.107574, 34.520527>,  <30.644760, 34.197994, 34.453327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856676, 34.107574, 34.520527>,  <31.209869, 33.956875, 34.632526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856676, 34.107574, 34.520527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026491, -0.555559, -0.831055,
		-0.468651, -0.741227, 0.480571,
		-0.882986, 0.376744, -0.279999,
		30.591780, 34.220596, 34.436527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953648, 33.415527, 34.300480>,  <31.209869, 33.956875, 34.632526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953648, 33.415527, 34.300480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726280, 33.725349, 34.189510>,  <30.589861, 33.911243, 34.122929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726280, 33.725349, 34.189510>,  <30.953648, 33.415527, 34.300480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726280, 33.725349, 34.189510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092381, -0.395146, -0.913961,
		-0.817538, -0.493883, 0.296162,
		-0.568417, 0.774557, -0.277421,
		30.555756, 33.957718, 34.106285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352554, 33.130188, 33.916386>,  <30.953648, 33.415527, 34.300480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352554, 33.130188, 33.916386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403910, 33.511871, 33.808308>,  <30.434723, 33.740883, 33.743462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403910, 33.511871, 33.808308>,  <30.352554, 33.130188, 33.916386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403910, 33.511871, 33.808308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194536, -0.242921, -0.950339,
		-0.972457, 0.174575, 0.154440,
		0.128388, 0.954208, -0.270192,
		30.442427, 33.798134, 33.727249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888966, 33.281319, 33.312935>,  <30.352554, 33.130188, 33.916386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888966, 33.281319, 33.312935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158001, 33.574986, 33.275780>,  <30.319422, 33.751186, 33.253487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158001, 33.574986, 33.275780>,  <29.888966, 33.281319, 33.312935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158001, 33.574986, 33.275780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238615, 0.096343, -0.966323,
		-0.700492, 0.672101, 0.239982,
		0.672587, 0.734165, -0.092886,
		30.359777, 33.795235, 33.247913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603476, 33.750988, 32.903221>,  <29.888966, 33.281319, 33.312935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603476, 33.750988, 32.903221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991358, 33.848106, 32.892494>,  <30.224087, 33.906380, 32.886059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991358, 33.848106, 32.892494>,  <29.603476, 33.750988, 32.903221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991358, 33.848106, 32.892494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057189, 0.118941, -0.991253,
		-0.237485, 0.962758, 0.129223,
		0.969706, 0.242798, -0.026813,
		30.282270, 33.920944, 32.884449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635349, 34.210098, 32.521240>,  <29.603476, 33.750988, 32.903221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635349, 34.210098, 32.521240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019627, 34.102310, 32.494553>,  <30.250193, 34.037636, 32.478539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019627, 34.102310, 32.494553>,  <29.635349, 34.210098, 32.521240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019627, 34.102310, 32.494553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019516, 0.174179, -0.984520,
		0.276919, 0.947126, 0.162074,
		0.960695, -0.269469, -0.066718,
		30.307835, 34.021469, 32.474537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971827, 34.670746, 31.997400>,  <29.635349, 34.210098, 32.521240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971827, 34.670746, 31.997400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213902, 34.352654, 32.012093>,  <30.359146, 34.161797, 32.020908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213902, 34.352654, 32.012093>,  <29.971827, 34.670746, 31.997400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213902, 34.352654, 32.012093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195449, 0.103696, -0.975216,
		0.771716, 0.597370, 0.218183,
		0.605190, -0.795233, 0.036731,
		30.395458, 34.114082, 32.023113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547892, 34.862373, 31.661142>,  <29.971827, 34.670746, 31.997400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547892, 34.862373, 31.661142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566938, 34.463017, 31.673489>,  <30.578365, 34.223404, 31.680897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566938, 34.463017, 31.673489>,  <30.547892, 34.862373, 31.661142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566938, 34.463017, 31.673489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395897, -0.009508, -0.918246,
		0.917059, 0.055943, 0.394807,
		0.047616, -0.998389, 0.030867,
		30.581223, 34.163502, 31.682749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232147, 34.628857, 31.511232>,  <30.547892, 34.862373, 31.661142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232147, 34.628857, 31.511232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037189, 34.287704, 31.436350>,  <30.920214, 34.083015, 31.391420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037189, 34.287704, 31.436350>,  <31.232147, 34.628857, 31.511232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037189, 34.287704, 31.436350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352484, 0.003977, -0.935810,
		0.798875, -0.522097, 0.298687,
		-0.487396, -0.852877, -0.187207,
		30.890970, 34.031841, 31.380188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734476, 34.196140, 31.327658>,  <31.232147, 34.628857, 31.511232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734476, 34.196140, 31.327658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393820, 34.068176, 31.161591>,  <31.189426, 33.991398, 31.061951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393820, 34.068176, 31.161591>,  <31.734476, 34.196140, 31.327658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393820, 34.068176, 31.161591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468706, -0.110350, -0.876435,
		0.234569, -0.940999, 0.243923,
		-0.851641, -0.319913, -0.415167,
		31.138327, 33.972202, 31.037041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878801, 33.555046, 30.989216>,  <31.734476, 34.196140, 31.327658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878801, 33.555046, 30.989216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550205, 33.715275, 30.826885>,  <31.353046, 33.811413, 30.729486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550205, 33.715275, 30.826885>,  <31.878801, 33.555046, 30.989216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550205, 33.715275, 30.826885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347106, -0.213364, -0.913232,
		-0.452404, -0.891076, 0.036236,
		-0.821491, 0.400573, -0.405824,
		31.303759, 33.835445, 30.705137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802246, 33.157017, 30.369371>,  <31.878801, 33.555046, 30.989216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802246, 33.157017, 30.369371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577147, 33.486496, 30.341564>,  <31.442087, 33.684185, 30.324881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577147, 33.486496, 30.341564>,  <31.802246, 33.157017, 30.369371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577147, 33.486496, 30.341564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250982, 0.090130, -0.963787,
		-0.787606, -0.559816, -0.257454,
		-0.562747, 0.823700, -0.069517,
		31.408321, 33.733604, 30.320709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643360, 33.062340, 29.679811>,  <31.802246, 33.157017, 30.369371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643360, 33.062340, 29.679811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532974, 33.441704, 29.742247>,  <31.466743, 33.669323, 29.779707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532974, 33.441704, 29.742247>,  <31.643360, 33.062340, 29.679811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532974, 33.441704, 29.742247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298758, 0.238987, -0.923920,
		-0.913558, -0.208335, -0.349296,
		-0.275962, 0.948410, 0.156087,
		31.450186, 33.726227, 29.789072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239836, 33.297512, 29.108835>,  <31.643360, 33.062340, 29.679811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239836, 33.297512, 29.108835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365841, 33.638824, 29.275051>,  <31.441444, 33.843613, 29.374781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365841, 33.638824, 29.275051>,  <31.239836, 33.297512, 29.108835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365841, 33.638824, 29.275051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198298, 0.368993, -0.908032,
		-0.928140, 0.368443, -0.052967,
		0.315013, 0.853284, 0.415538,
		31.460344, 33.894810, 29.399714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814873, 33.842667, 28.782511>,  <31.239836, 33.297512, 29.108835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814873, 33.842667, 28.782511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156418, 33.971241, 28.946266>,  <31.361345, 34.048386, 29.044519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156418, 33.971241, 28.946266>,  <30.814873, 33.842667, 28.782511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156418, 33.971241, 28.946266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220798, 0.488571, -0.844125,
		-0.471343, 0.811160, 0.346202,
		0.853864, 0.321432, 0.409387,
		31.412577, 34.067669, 29.069082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869003, 34.623642, 28.727345>,  <30.814873, 33.842667, 28.782511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869003, 34.623642, 28.727345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237528, 34.477829, 28.781450>,  <31.458643, 34.390343, 28.813913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237528, 34.477829, 28.781450>,  <30.869003, 34.623642, 28.727345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237528, 34.477829, 28.781450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320389, 0.514641, -0.795296,
		0.220300, 0.776054, 0.590938,
		0.921314, -0.364534, 0.135264,
		31.513922, 34.368469, 28.822029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248760, 35.194187, 28.553482>,  <30.869003, 34.623642, 28.727345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248760, 35.194187, 28.553482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532343, 34.912247, 28.543945>,  <31.702494, 34.743084, 28.538223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532343, 34.912247, 28.543945>,  <31.248760, 35.194187, 28.553482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532343, 34.912247, 28.543945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422035, 0.451099, -0.786382,
		0.565034, 0.547450, 0.617280,
		0.708959, -0.704847, -0.023844,
		31.745031, 34.700794, 28.536793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956060, 35.450569, 28.646843>,  <31.248760, 35.194187, 28.553482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956060, 35.450569, 28.646843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951141, 35.119560, 28.422321>,  <31.948189, 34.920956, 28.287609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951141, 35.119560, 28.422321>,  <31.956060, 35.450569, 28.646843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951141, 35.119560, 28.422321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513105, 0.476581, -0.713858,
		0.858238, -0.296788, 0.418742,
		-0.012300, -0.827519, -0.561303,
		31.947451, 34.871304, 28.253931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406582, 35.646801, 28.241232>,  <31.956060, 35.450569, 28.646843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406582, 35.646801, 28.241232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275723, 35.317177, 28.056234>,  <32.197208, 35.119404, 27.945236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275723, 35.317177, 28.056234>,  <32.406582, 35.646801, 28.241232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275723, 35.317177, 28.056234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377841, 0.334531, -0.863322,
		0.866147, -0.457185, 0.201921,
		-0.327149, -0.824058, -0.462496,
		32.177578, 35.069958, 27.917486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013012, 35.359711, 27.954725>,  <32.406582, 35.646801, 28.241232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013012, 35.359711, 27.954725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711327, 35.214561, 27.735825>,  <32.530315, 35.127472, 27.604485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711327, 35.214561, 27.735825>,  <33.013012, 35.359711, 27.954725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711327, 35.214561, 27.735825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480876, 0.262271, -0.836643,
		0.447124, -0.894168, -0.023310,
		-0.754213, -0.362874, -0.547252,
		32.485062, 35.105698, 27.571650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243382, 35.038059, 27.396894>,  <33.013012, 35.359711, 27.954725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243382, 35.038059, 27.396894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874043, 35.075314, 27.247892>,  <32.652439, 35.097668, 27.158491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874043, 35.075314, 27.247892>,  <33.243382, 35.038059, 27.396894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874043, 35.075314, 27.247892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371244, -0.031172, -0.928012,
		-0.098048, -0.995165, -0.005796,
		-0.923344, 0.093142, -0.372505,
		32.597038, 35.103256, 27.136141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159081, 34.580280, 26.783272>,  <33.243382, 35.038059, 27.396894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159081, 34.580280, 26.783272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850296, 34.829601, 26.733377>,  <32.665024, 34.979195, 26.703442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850296, 34.829601, 26.733377>,  <33.159081, 34.580280, 26.783272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850296, 34.829601, 26.733377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185307, 0.032960, -0.982128,
		-0.608054, -0.781283, -0.140947,
		-0.771965, 0.623305, -0.124736,
		32.618706, 35.016594, 26.695957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859833, 34.500969, 26.110346>,  <33.159081, 34.580280, 26.783272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859833, 34.500969, 26.110346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724701, 34.866222, 26.201612>,  <32.643620, 35.085373, 26.256372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724701, 34.866222, 26.201612>,  <32.859833, 34.500969, 26.110346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724701, 34.866222, 26.201612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158071, 0.294023, -0.942637,
		-0.927838, -0.282387, -0.243670,
		-0.337833, 0.913131, 0.228169,
		32.623352, 35.140163, 26.270063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263828, 34.697563, 25.661299>,  <32.859833, 34.500969, 26.110346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263828, 34.697563, 25.661299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420094, 35.038754, 25.799757>,  <32.513851, 35.243469, 25.882832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420094, 35.038754, 25.799757>,  <32.263828, 34.697563, 25.661299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420094, 35.038754, 25.799757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130810, 0.320770, -0.938081,
		-0.911193, 0.411750, 0.013734,
		0.390661, 0.852976, 0.346144,
		32.537292, 35.294647, 25.903601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988636, 35.134827, 25.247540>,  <32.263828, 34.697563, 25.661299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988636, 35.134827, 25.247540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289967, 35.337383, 25.415384>,  <32.470764, 35.458916, 25.516090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289967, 35.337383, 25.415384>,  <31.988636, 35.134827, 25.247540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289967, 35.337383, 25.415384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293066, 0.312705, -0.903508,
		-0.588740, 0.803609, 0.087163,
		0.753324, 0.506387, 0.419613,
		32.515965, 35.489300, 25.541267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812479, 35.836643, 25.185511>,  <31.988636, 35.134827, 25.247540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812479, 35.836643, 25.185511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207088, 35.862480, 25.245646>,  <32.443855, 35.877983, 25.281727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207088, 35.862480, 25.245646>,  <31.812479, 35.836643, 25.185511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207088, 35.862480, 25.245646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091749, 0.542397, -0.835097,
		-0.135486, 0.837635, 0.529161,
		0.986522, 0.064594, 0.150339,
		32.503044, 35.881859, 25.290747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032997, 36.609909, 25.146606>,  <31.812479, 35.836643, 25.185511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032997, 36.609909, 25.146606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332142, 36.360077, 25.056625>,  <32.511627, 36.210178, 25.002636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332142, 36.360077, 25.056625>,  <32.032997, 36.609909, 25.146606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332142, 36.360077, 25.056625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175856, 0.513139, -0.840097,
		0.640141, 0.588716, 0.493592,
		0.747860, -0.624582, -0.224952,
		32.556499, 36.172703, 24.989140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565681, 37.023380, 24.957907>,  <32.032997, 36.609909, 25.146606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565681, 37.023380, 24.957907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662796, 36.671680, 24.793964>,  <32.721066, 36.460663, 24.695599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662796, 36.671680, 24.793964>,  <32.565681, 37.023380, 24.957907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662796, 36.671680, 24.793964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212383, 0.460425, -0.861917,
		0.946546, 0.122212, 0.298521,
		0.242784, -0.879245, -0.409858,
		32.735630, 36.407906, 24.671007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307358, 37.100376, 24.767311>,  <32.565681, 37.023380, 24.957907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307358, 37.100376, 24.767311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155445, 36.799824, 24.551462>,  <33.064297, 36.619492, 24.421953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155445, 36.799824, 24.551462>,  <33.307358, 37.100376, 24.767311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155445, 36.799824, 24.551462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490492, 0.331021, -0.806128,
		0.784337, -0.570831, 0.242832,
		-0.379781, -0.751383, -0.539620,
		33.041512, 36.574409, 24.389576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774685, 36.919262, 24.318974>,  <33.307358, 37.100376, 24.767311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774685, 36.919262, 24.318974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454636, 36.765575, 24.134722>,  <33.262608, 36.673363, 24.024170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454636, 36.765575, 24.134722>,  <33.774685, 36.919262, 24.318974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454636, 36.765575, 24.134722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243332, 0.493995, -0.834721,
		0.548261, -0.779966, -0.301765,
		-0.800124, -0.384216, -0.460629,
		33.214600, 36.650311, 23.996532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070740, 36.623932, 23.780046>,  <33.774685, 36.919262, 24.318974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070740, 36.623932, 23.780046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681660, 36.685257, 23.710354>,  <33.448212, 36.722054, 23.668539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681660, 36.685257, 23.710354>,  <34.070740, 36.623932, 23.780046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681660, 36.685257, 23.710354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220428, 0.375410, -0.900266,
		-0.072615, -0.914091, -0.398955,
		-0.972696, 0.153314, -0.174231,
		33.389851, 36.731251, 23.658085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000206, 36.530315, 23.084040>,  <34.070740, 36.623932, 23.780046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000206, 36.530315, 23.084040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642670, 36.697964, 23.147778>,  <33.428146, 36.798553, 23.186020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642670, 36.697964, 23.147778>,  <34.000206, 36.530315, 23.084040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642670, 36.697964, 23.147778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060759, 0.465311, -0.883059,
		-0.444252, -0.779631, -0.441378,
		-0.893839, 0.419118, 0.159346,
		33.374519, 36.823700, 23.195581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579853, 36.246002, 22.512661>,  <34.000206, 36.530315, 23.084040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579853, 36.246002, 22.512661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429821, 36.592297, 22.645210>,  <33.339802, 36.800076, 22.724739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429821, 36.592297, 22.645210>,  <33.579853, 36.246002, 22.512661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429821, 36.592297, 22.645210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070883, 0.383211, -0.920937,
		-0.924277, -0.321940, -0.205103,
		-0.375084, 0.865739, 0.331372,
		33.317295, 36.852020, 22.744621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112282, 36.462658, 22.065914>,  <33.579853, 36.246002, 22.512661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112282, 36.462658, 22.065914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216599, 36.791538, 22.268288>,  <33.279190, 36.988869, 22.389711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216599, 36.791538, 22.268288>,  <33.112282, 36.462658, 22.065914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216599, 36.791538, 22.268288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191582, 0.469569, -0.861859,
		-0.946194, 0.321696, -0.035058,
		0.260794, 0.822202, 0.505934,
		33.294838, 37.038200, 22.420069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795174, 37.076878, 21.805519>,  <33.112282, 36.462658, 22.065914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795174, 37.076878, 21.805519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105213, 37.237988, 22.000248>,  <33.291237, 37.334656, 22.117085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105213, 37.237988, 22.000248>,  <32.795174, 37.076878, 21.805519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105213, 37.237988, 22.000248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354370, 0.360773, -0.862707,
		-0.523110, 0.841198, 0.136903,
		0.775098, 0.402777, 0.486820,
		33.337742, 37.358822, 22.146294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972893, 37.804882, 21.505953>,  <32.795174, 37.076878, 21.805519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972893, 37.804882, 21.505953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304466, 37.724636, 21.714806>,  <33.503410, 37.676487, 21.840117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304466, 37.724636, 21.714806>,  <32.972893, 37.804882, 21.505953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304466, 37.724636, 21.714806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550642, 0.456722, -0.698712,
		-0.098295, 0.866693, 0.489061,
		0.828934, -0.200618, 0.522131,
		33.553146, 37.664452, 21.871445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235809, 38.466572, 21.518726>,  <32.972893, 37.804882, 21.505953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235809, 38.466572, 21.518726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520817, 38.190662, 21.570168>,  <33.691822, 38.025116, 21.601032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520817, 38.190662, 21.570168>,  <33.235809, 38.466572, 21.518726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520817, 38.190662, 21.570168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475139, 0.339453, -0.811797,
		0.516300, 0.639521, 0.569603,
		0.712515, -0.689771, 0.128602,
		33.734570, 37.983730, 21.608747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915356, 38.845348, 21.381247>,  <33.235809, 38.466572, 21.518726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915356, 38.845348, 21.381247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040230, 38.465343, 21.382982>,  <34.115154, 38.237339, 21.384024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040230, 38.465343, 21.382982>,  <33.915356, 38.845348, 21.381247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040230, 38.465343, 21.382982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719999, 0.233616, -0.653472,
		0.619792, 0.207128, 0.756938,
		0.312185, -0.950011, 0.004339,
		34.133884, 38.180340, 21.384283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620667, 38.783253, 21.445618>,  <33.915356, 38.845348, 21.381247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620667, 38.783253, 21.445618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526966, 38.434101, 21.274405>,  <34.470745, 38.224609, 21.171677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526966, 38.434101, 21.274405>,  <34.620667, 38.783253, 21.445618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526966, 38.434101, 21.274405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832303, 0.047464, -0.552285,
		0.502393, -0.485626, 0.715380,
		-0.234249, -0.872877, -0.428034,
		34.456692, 38.172237, 21.145994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279594, 38.444561, 21.441225>,  <34.620667, 38.783253, 21.445618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279594, 38.444561, 21.441225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041832, 38.270367, 21.170807>,  <34.899174, 38.165848, 21.008556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041832, 38.270367, 21.170807>,  <35.279594, 38.444561, 21.441225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041832, 38.270367, 21.170807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662216, 0.211883, -0.718732,
		0.456242, -0.874903, 0.162444,
		-0.594402, -0.435489, -0.676044,
		34.863510, 38.139721, 20.967993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685608, 38.134174, 21.030867>,  <35.279594, 38.444561, 21.441225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685608, 38.134174, 21.030867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356472, 38.145111, 20.803823>,  <35.158989, 38.151672, 20.667597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356472, 38.145111, 20.803823>,  <35.685608, 38.134174, 21.030867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356472, 38.145111, 20.803823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559134, 0.217324, -0.800087,
		0.101478, -0.975717, -0.194112,
		-0.822843, 0.027344, -0.567610,
		35.109619, 38.153313, 20.633541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885384, 37.760181, 20.436747>,  <35.685608, 38.134174, 21.030867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885384, 37.760181, 20.436747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569107, 37.976101, 20.321211>,  <35.379341, 38.105652, 20.251890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569107, 37.976101, 20.321211>,  <35.885384, 37.760181, 20.436747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569107, 37.976101, 20.321211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466798, 0.226299, -0.854920,
		-0.396122, -0.810805, -0.430910,
		-0.790688, 0.539800, -0.288840,
		35.331902, 38.138042, 20.234558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639610, 37.478638, 19.714138>,  <35.885384, 37.760181, 20.436747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639610, 37.478638, 19.714138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541752, 37.862240, 19.771338>,  <35.483036, 38.092403, 19.805658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541752, 37.862240, 19.771338>,  <35.639610, 37.478638, 19.714138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541752, 37.862240, 19.771338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459848, 0.244599, -0.853646,
		-0.853632, -0.143084, -0.500839,
		-0.244648, 0.959009, 0.143000,
		35.468357, 38.149944, 19.814238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465237, 37.672588, 18.999184>,  <35.639610, 37.478638, 19.714138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465237, 37.672588, 18.999184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462570, 38.031956, 19.174820>,  <35.460972, 38.247578, 19.280203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462570, 38.031956, 19.174820>,  <35.465237, 37.672588, 18.999184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462570, 38.031956, 19.174820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429875, 0.399033, -0.809926,
		-0.902864, 0.183356, -0.388867,
		-0.006666, 0.898417, 0.439093,
		35.460571, 38.301479, 19.306547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177860, 38.172375, 18.591101>,  <35.465237, 37.672588, 18.999184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177860, 38.172375, 18.591101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397408, 38.407234, 18.829090>,  <35.529137, 38.548149, 18.971884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397408, 38.407234, 18.829090>,  <35.177860, 38.172375, 18.591101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397408, 38.407234, 18.829090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464976, 0.377040, -0.801024,
		-0.694653, 0.716305, -0.066067,
		0.548867, 0.587153, 0.594976,
		35.562069, 38.583382, 19.007584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155052, 38.975628, 18.465054>,  <35.177860, 38.172375, 18.591101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155052, 38.975628, 18.465054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503582, 38.890202, 18.641768>,  <35.712700, 38.838943, 18.747797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503582, 38.890202, 18.641768>,  <35.155052, 38.975628, 18.465054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503582, 38.890202, 18.641768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490646, 0.365937, -0.790795,
		0.007223, 0.905803, 0.423638,
		0.871329, -0.213568, 0.441786,
		35.764980, 38.826130, 18.774303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819191, 38.879642, 18.267384>,  <35.155052, 38.975628, 18.465054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819191, 38.879642, 18.267384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963585, 39.205212, 18.449467>,  <36.050220, 39.400555, 18.558716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963585, 39.205212, 18.449467>,  <35.819191, 38.879642, 18.267384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963585, 39.205212, 18.449467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924439, -0.247987, -0.289681,
		-0.122893, 0.525381, -0.841945,
		0.360984, 0.813927, 0.455207,
		36.071880, 39.449390, 18.586029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336632, 39.042885, 17.877018>,  <35.819191, 38.879642, 18.267384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336632, 39.042885, 17.877018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405666, 39.237240, 18.219742>,  <36.447086, 39.353851, 18.425377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405666, 39.237240, 18.219742>,  <36.336632, 39.042885, 17.877018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405666, 39.237240, 18.219742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984965, -0.078505, -0.153885,
		-0.007507, 0.870488, -0.492133,
		0.172590, 0.485889, 0.856811,
		36.457443, 39.383007, 18.476786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690144, 39.776524, 17.951984>,  <36.336632, 39.042885, 17.877018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690144, 39.776524, 17.951984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779896, 39.469841, 18.192587>,  <36.833748, 39.285831, 18.336948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779896, 39.469841, 18.192587>,  <36.690144, 39.776524, 17.951984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779896, 39.469841, 18.192587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879444, -0.106579, -0.463916,
		0.419796, 0.633088, 0.650362,
		0.224385, -0.766707, 0.601507,
		36.847210, 39.239830, 18.373039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367222, 39.758148, 18.219147>,  <36.690144, 39.776524, 17.951984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367222, 39.758148, 18.219147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268860, 39.370464, 18.224319>,  <37.209843, 39.137856, 18.227423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268860, 39.370464, 18.224319>,  <37.367222, 39.758148, 18.219147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268860, 39.370464, 18.224319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820659, -0.215275, -0.529316,
		0.515802, -0.119547, 0.848326,
		-0.245902, -0.969208, 0.012932,
		37.195087, 39.079700, 18.228199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896103, 39.342487, 18.578634>,  <37.367222, 39.758148, 18.219147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896103, 39.342487, 18.578634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690605, 39.166153, 18.284224>,  <37.567307, 39.060352, 18.107578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690605, 39.166153, 18.284224>,  <37.896103, 39.342487, 18.578634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690605, 39.166153, 18.284224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841370, -0.091067, -0.532732,
		0.167817, -0.892958, 0.417688,
		-0.513745, -0.440831, -0.736026,
		37.536480, 39.033905, 18.063416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885757, 40.049232, 18.627935>,  <37.896103, 39.342487, 18.578634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885757, 40.049232, 18.627935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890751, 40.416370, 18.786634>,  <37.893749, 40.636654, 18.881853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890751, 40.416370, 18.786634>,  <37.885757, 40.049232, 18.627935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890751, 40.416370, 18.786634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576441, -0.317603, 0.752891,
		0.817043, -0.238101, 0.525117,
		0.012486, 0.917843, 0.396747,
		37.894497, 40.691723, 18.905659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083103, 40.055138, 19.345076>,  <37.885757, 40.049232, 18.627935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083103, 40.055138, 19.345076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872807, 40.393230, 19.306755>,  <37.746628, 40.596085, 19.283762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872807, 40.393230, 19.306755>,  <38.083103, 40.055138, 19.345076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872807, 40.393230, 19.306755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477720, -0.200193, 0.855398,
		0.703832, 0.495484, 0.509034,
		-0.525741, 0.845233, -0.095801,
		37.715084, 40.646801, 19.278015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228203, 40.262943, 20.021584>,  <38.083103, 40.055138, 19.345076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228203, 40.262943, 20.021584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925117, 40.441689, 19.831348>,  <37.743267, 40.548935, 19.717207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925117, 40.441689, 19.831348>,  <38.228203, 40.262943, 20.021584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925117, 40.441689, 19.831348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583252, -0.136817, 0.800686,
		0.292729, 0.884078, 0.364303,
		-0.757712, 0.446864, -0.475589,
		37.697803, 40.575748, 19.688671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912685, 40.863186, 20.386509>,  <38.228203, 40.262943, 20.021584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912685, 40.863186, 20.386509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631950, 40.698376, 20.154074>,  <37.463509, 40.599491, 20.014612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631950, 40.698376, 20.154074>,  <37.912685, 40.863186, 20.386509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631950, 40.698376, 20.154074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630227, -0.021063, 0.776125,
		-0.332019, 0.910931, -0.244884,
		-0.701838, -0.412021, -0.581086,
		37.421398, 40.574768, 19.979748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230045, 41.162014, 20.680557>,  <37.912685, 40.863186, 20.386509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230045, 41.162014, 20.680557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193527, 40.809052, 20.495937>,  <37.171616, 40.597275, 20.385166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193527, 40.809052, 20.495937>,  <37.230045, 41.162014, 20.680557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193527, 40.809052, 20.495937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565022, -0.335753, 0.753671,
		-0.820009, 0.329593, -0.467925,
		-0.091297, -0.882405, -0.461548,
		37.166138, 40.544331, 20.357473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487331, 40.936516, 20.870863>,  <37.230045, 41.162014, 20.680557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487331, 40.936516, 20.870863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686954, 40.622860, 20.723314>,  <36.806728, 40.434666, 20.634785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686954, 40.622860, 20.723314>,  <36.487331, 40.936516, 20.870863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686954, 40.622860, 20.723314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470848, -0.602720, 0.644229,
		-0.727493, -0.147823, -0.670002,
		0.499055, -0.784141, -0.368872,
		36.836670, 40.387619, 20.612654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959103, 40.351959, 20.859472>,  <36.487331, 40.936516, 20.870863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959103, 40.351959, 20.859472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302773, 40.148808, 20.834534>,  <36.508972, 40.026917, 20.819571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302773, 40.148808, 20.834534>,  <35.959103, 40.351959, 20.859472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302773, 40.148808, 20.834534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294027, -0.589737, 0.752170,
		-0.418777, -0.627910, -0.656014,
		0.859171, -0.507878, -0.062346,
		36.560524, 39.996445, 20.815830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770542, 39.611710, 20.809622>,  <35.959103, 40.351959, 20.859472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770542, 39.611710, 20.809622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142235, 39.676193, 20.942614>,  <36.365250, 39.714882, 21.022409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142235, 39.676193, 20.942614>,  <35.770542, 39.611710, 20.809622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142235, 39.676193, 20.942614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127968, -0.703720, 0.698857,
		0.346637, -0.691946, -0.633288,
		0.929229, 0.161209, 0.332482,
		36.421005, 39.724556, 21.042358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068050, 38.930408, 20.932848>,  <35.770542, 39.611710, 20.809622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068050, 38.930408, 20.932848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298214, 39.172665, 21.152706>,  <36.436314, 39.318016, 21.284622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298214, 39.172665, 21.152706>,  <36.068050, 38.930408, 20.932848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298214, 39.172665, 21.152706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283233, -0.482905, 0.828602,
		0.767259, -0.632462, -0.106331,
		0.575407, 0.605636, 0.549647,
		36.470837, 39.354355, 21.317600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389397, 38.547398, 21.442133>,  <36.068050, 38.930408, 20.932848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389397, 38.547398, 21.442133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422485, 38.916149, 21.593552>,  <36.442337, 39.137402, 21.684402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422485, 38.916149, 21.593552>,  <36.389397, 38.547398, 21.442133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422485, 38.916149, 21.593552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286930, -0.341732, 0.894925,
		0.954373, -0.182645, 0.236246,
		0.082721, 0.921878, 0.378547,
		36.447300, 39.192711, 21.707115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723038, 38.432404, 22.076527>,  <36.389397, 38.547398, 21.442133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723038, 38.432404, 22.076527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542374, 38.787590, 22.111214>,  <36.433975, 39.000702, 22.132025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542374, 38.787590, 22.111214>,  <36.723038, 38.432404, 22.076527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542374, 38.787590, 22.111214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279199, -0.232985, 0.931540,
		0.847379, 0.396528, 0.353149,
		-0.451660, 0.887966, 0.086716,
		36.406876, 39.053978, 22.137228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879948, 38.687096, 22.715517>,  <36.723038, 38.432404, 22.076527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879948, 38.687096, 22.715517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572613, 38.927876, 22.628515>,  <36.388210, 39.072342, 22.576315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572613, 38.927876, 22.628515>,  <36.879948, 38.687096, 22.715517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572613, 38.927876, 22.628515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394739, -0.178163, 0.901354,
		0.503819, 0.778405, 0.374503,
		-0.768340, 0.601950, -0.217505,
		36.342110, 39.108459, 22.563263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924309, 39.262695, 23.245281>,  <36.879948, 38.687096, 22.715517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924309, 39.262695, 23.245281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558437, 39.244080, 23.084688>,  <36.338913, 39.232910, 22.988333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558437, 39.244080, 23.084688>,  <36.924309, 39.262695, 23.245281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558437, 39.244080, 23.084688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396940, -0.083643, 0.914025,
		-0.076118, 0.995409, 0.058034,
		-0.914683, -0.046538, -0.401484,
		36.284031, 39.230118, 22.964243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534252, 39.622711, 23.602133>,  <36.924309, 39.262695, 23.245281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534252, 39.622711, 23.602133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239422, 39.418289, 23.425253>,  <36.062523, 39.295635, 23.319126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239422, 39.418289, 23.425253>,  <36.534252, 39.622711, 23.602133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239422, 39.418289, 23.425253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523594, 0.018151, 0.851775,
		-0.427279, 0.859355, -0.280965,
		-0.737077, -0.511057, -0.442198,
		36.018299, 39.264973, 23.292593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921955, 39.975861, 23.821894>,  <36.534252, 39.622711, 23.602133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921955, 39.975861, 23.821894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879002, 39.587944, 23.734282>,  <35.853230, 39.355194, 23.681713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879002, 39.587944, 23.734282>,  <35.921955, 39.975861, 23.821894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879002, 39.587944, 23.734282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593563, -0.114203, 0.796643,
		-0.797592, 0.215554, -0.563368,
		-0.107381, -0.969791, -0.219032,
		35.846786, 39.297009, 23.668571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338074, 39.804237, 24.064829>,  <35.921955, 39.975861, 23.821894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338074, 39.804237, 24.064829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473118, 39.432514, 24.004957>,  <35.554142, 39.209480, 23.969034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473118, 39.432514, 24.004957>,  <35.338074, 39.804237, 24.064829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473118, 39.432514, 24.004957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350406, -0.271664, 0.896334,
		-0.873635, -0.250160, -0.417352,
		0.337606, -0.929311, -0.149678,
		35.574398, 39.153721, 23.960054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778946, 39.383411, 24.257299>,  <35.338074, 39.804237, 24.064829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778946, 39.383411, 24.257299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089287, 39.132278, 24.282234>,  <35.275490, 38.981598, 24.297195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089287, 39.132278, 24.282234>,  <34.778946, 39.383411, 24.257299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089287, 39.132278, 24.282234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288477, -0.265138, 0.920045,
		-0.561104, -0.731800, -0.386822,
		0.775850, -0.627830, 0.062338,
		35.322041, 38.943928, 24.300936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565544, 38.751564, 24.433287>,  <34.778946, 39.383411, 24.257299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565544, 38.751564, 24.433287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948444, 38.716671, 24.543606>,  <35.178185, 38.695736, 24.609797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948444, 38.716671, 24.543606>,  <34.565544, 38.751564, 24.433287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948444, 38.716671, 24.543606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289055, -0.252231, 0.923486,
		-0.010995, -0.963727, -0.266664,
		0.957249, -0.087234, 0.275796,
		35.235619, 38.690502, 24.626345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551533, 38.100353, 24.776793>,  <34.565544, 38.751564, 24.433287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551533, 38.100353, 24.776793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874512, 38.296291, 24.908297>,  <35.068298, 38.413853, 24.987200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874512, 38.296291, 24.908297>,  <34.551533, 38.100353, 24.776793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874512, 38.296291, 24.908297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217699, -0.270542, 0.937771,
		0.548304, -0.828771, -0.111810,
		0.807446, 0.489842, 0.328762,
		35.116745, 38.443245, 25.006926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094200, 37.582294, 25.096336>,  <34.551533, 38.100353, 24.776793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094200, 37.582294, 25.096336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165504, 37.953838, 25.226223>,  <35.208286, 38.176765, 25.304155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165504, 37.953838, 25.226223>,  <35.094200, 37.582294, 25.096336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165504, 37.953838, 25.226223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191959, -0.290835, 0.937319,
		0.965077, -0.229421, 0.126458,
		0.178262, 0.928860, 0.324717,
		35.218983, 38.232498, 25.323639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259640, 37.461266, 25.786001>,  <35.094200, 37.582294, 25.096336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259640, 37.461266, 25.786001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205547, 37.857555, 25.791262>,  <35.173092, 38.095329, 25.794418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205547, 37.857555, 25.791262>,  <35.259640, 37.461266, 25.786001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205547, 37.857555, 25.791262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218048, -0.042706, 0.975003,
		0.966523, 0.128983, 0.221801,
		-0.135231, 0.990727, 0.013152,
		35.164978, 38.154774, 25.795208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706532, 37.734234, 26.317614>,  <35.259640, 37.461266, 25.786001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706532, 37.734234, 26.317614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411587, 37.992416, 26.237936>,  <35.234619, 38.147327, 26.190130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411587, 37.992416, 26.237936>,  <35.706532, 37.734234, 26.317614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411587, 37.992416, 26.237936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253631, 0.008758, 0.967261,
		0.626074, 0.763743, 0.157251,
		-0.737362, 0.645461, -0.199192,
		35.190376, 38.186054, 26.178179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759289, 38.160625, 26.893131>,  <35.706532, 37.734234, 26.317614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759289, 38.160625, 26.893131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394989, 38.201504, 26.733082>,  <35.176411, 38.226032, 26.637053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394989, 38.201504, 26.733082>,  <35.759289, 38.160625, 26.893131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394989, 38.201504, 26.733082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411198, -0.134789, 0.901526,
		0.038198, 0.985590, 0.164781,
		-0.910746, 0.102194, -0.400124,
		35.121765, 38.232162, 26.613045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428871, 38.605797, 27.434347>,  <35.759289, 38.160625, 26.893131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428871, 38.605797, 27.434347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151142, 38.421673, 27.213066>,  <34.984505, 38.311199, 27.080297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151142, 38.421673, 27.213066>,  <35.428871, 38.605797, 27.434347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151142, 38.421673, 27.213066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402588, -0.388732, 0.828740,
		-0.596522, 0.798127, 0.084592,
		-0.694323, -0.460306, -0.553203,
		34.942844, 38.283581, 27.047106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930008, 38.643337, 27.923666>,  <35.428871, 38.605797, 27.434347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930008, 38.643337, 27.923666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770340, 38.402527, 27.647049>,  <34.674538, 38.258041, 27.481079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770340, 38.402527, 27.647049>,  <34.930008, 38.643337, 27.923666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770340, 38.402527, 27.647049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648843, -0.347428, 0.676976,
		-0.647816, 0.718932, -0.251935,
		-0.399171, -0.602022, -0.691544,
		34.650589, 38.221920, 27.439587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206528, 38.767529, 27.948126>,  <34.930008, 38.643337, 27.923666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206528, 38.767529, 27.948126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303680, 38.410057, 27.797207>,  <34.361973, 38.195576, 27.706656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303680, 38.410057, 27.797207>,  <34.206528, 38.767529, 27.948126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303680, 38.410057, 27.797207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521235, -0.448257, 0.726209,
		-0.818121, 0.020278, -0.574689,
		0.242882, -0.893675, -0.377298,
		34.376545, 38.141956, 27.684017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557987, 38.462650, 27.783951>,  <34.206528, 38.767529, 27.948126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557987, 38.462650, 27.783951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823547, 38.165169, 27.815281>,  <33.982883, 37.986679, 27.834080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823547, 38.165169, 27.815281>,  <33.557987, 38.462650, 27.783951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823547, 38.165169, 27.815281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587220, -0.453601, 0.670387,
		-0.463051, -0.491056, -0.737867,
		0.663895, -0.743714, 0.078318,
		34.022717, 37.942055, 27.838779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139359, 37.974316, 27.999628>,  <33.557987, 38.462650, 27.783951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139359, 37.974316, 27.999628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500744, 37.815788, 28.064964>,  <33.717575, 37.720673, 28.104166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500744, 37.815788, 28.064964>,  <33.139359, 37.974316, 27.999628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500744, 37.815788, 28.064964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379085, -0.560829, 0.736047,
		-0.200101, -0.726915, -0.656929,
		0.903468, -0.396315, 0.163340,
		33.771786, 37.696896, 28.113966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040665, 37.249489, 28.033941>,  <33.139359, 37.974316, 27.999628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040665, 37.249489, 28.033941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365986, 37.357620, 28.240030>,  <33.561180, 37.422501, 28.363684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365986, 37.357620, 28.240030>,  <33.040665, 37.249489, 28.033941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365986, 37.357620, 28.240030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372443, -0.438431, 0.817963,
		0.447010, -0.857146, -0.255896,
		0.813307, 0.270331, 0.515222,
		33.609978, 37.438721, 28.394596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188103, 36.615826, 28.370338>,  <33.040665, 37.249489, 28.033941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188103, 36.615826, 28.370338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352001, 36.924999, 28.564117>,  <33.450340, 37.110504, 28.680384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352001, 36.924999, 28.564117>,  <33.188103, 36.615826, 28.370338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352001, 36.924999, 28.564117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168744, -0.457684, 0.872955,
		0.896456, -0.439437, -0.057107,
		0.409746, 0.772930, 0.484446,
		33.474926, 37.156879, 28.709452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453644, 36.292011, 28.997635>,  <33.188103, 36.615826, 28.370338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453644, 36.292011, 28.997635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418091, 36.685482, 29.060207>,  <33.396759, 36.921566, 29.097752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418091, 36.685482, 29.060207>,  <33.453644, 36.292011, 28.997635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418091, 36.685482, 29.060207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402230, -0.179128, 0.897844,
		0.911214, 0.016885, 0.411588,
		-0.088887, 0.983681, 0.156432,
		33.391426, 36.980587, 29.107138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856537, 36.335575, 29.542908>,  <33.453644, 36.292011, 28.997635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856537, 36.335575, 29.542908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655663, 36.680237, 29.572165>,  <33.535137, 36.887035, 29.589720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655663, 36.680237, 29.572165>,  <33.856537, 36.335575, 29.542908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655663, 36.680237, 29.572165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076557, -0.128550, 0.988743,
		0.861362, 0.490937, 0.130523,
		-0.502190, 0.861658, 0.073143,
		33.505005, 36.938736, 29.594107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063290, 36.646843, 30.150188>,  <33.856537, 36.335575, 29.542908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063290, 36.646843, 30.150188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721577, 36.842743, 30.080505>,  <33.516548, 36.960281, 30.038696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721577, 36.842743, 30.080505>,  <34.063290, 36.646843, 30.150188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721577, 36.842743, 30.080505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265682, -0.123333, 0.956139,
		0.446785, 0.863095, 0.235479,
		-0.854281, 0.489751, -0.174206,
		33.465294, 36.989670, 30.028244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046482, 37.346085, 30.590939>,  <34.063290, 36.646843, 30.150188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046482, 37.346085, 30.590939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674229, 37.223244, 30.511333>,  <33.450874, 37.149540, 30.463572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674229, 37.223244, 30.511333>,  <34.046482, 37.346085, 30.590939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674229, 37.223244, 30.511333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198172, -0.034252, 0.979568,
		-0.307642, 0.951060, -0.028982,
		-0.930636, -0.307100, -0.199011,
		33.395039, 37.131115, 30.451630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638222, 37.759384, 30.922279>,  <34.046482, 37.346085, 30.590939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638222, 37.759384, 30.922279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387257, 37.456223, 30.850801>,  <33.236679, 37.274326, 30.807915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387257, 37.456223, 30.850801>,  <33.638222, 37.759384, 30.922279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387257, 37.456223, 30.850801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354185, 0.073390, 0.932291,
		-0.693474, 0.648224, -0.314484,
		-0.627413, -0.757905, -0.178697,
		33.199032, 37.228851, 30.797192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979000, 37.872150, 31.245861>,  <33.638222, 37.759384, 30.922279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979000, 37.872150, 31.245861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977337, 37.473366, 31.214733>,  <32.976341, 37.234097, 31.196056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977337, 37.473366, 31.214733>,  <32.979000, 37.872150, 31.245861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977337, 37.473366, 31.214733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177302, -0.075852, 0.981229,
		-0.984148, 0.017874, -0.176448,
		-0.004155, -0.996959, -0.077819,
		32.976089, 37.174278, 31.191387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398891, 37.680538, 31.640003>,  <32.979000, 37.872150, 31.245861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398891, 37.680538, 31.640003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609020, 37.343903, 31.589769>,  <32.735096, 37.141922, 31.559629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609020, 37.343903, 31.589769>,  <32.398891, 37.680538, 31.640003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609020, 37.343903, 31.589769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361772, -0.354485, 0.862242,
		-0.770169, -0.407519, -0.490680,
		0.525319, -0.841587, -0.125584,
		32.766617, 37.091427, 31.552094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928549, 37.157776, 31.753578>,  <32.398891, 37.680538, 31.640003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928549, 37.157776, 31.753578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273808, 36.964546, 31.812386>,  <32.480965, 36.848606, 31.847670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273808, 36.964546, 31.812386>,  <31.928549, 37.157776, 31.753578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273808, 36.964546, 31.812386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361259, -0.387349, 0.848205,
		-0.352795, -0.785241, -0.508854,
		0.863150, -0.483071, 0.147020,
		32.532753, 36.819622, 31.856491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696749, 36.438660, 31.905361>,  <31.928549, 37.157776, 31.753578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696749, 36.438660, 31.905361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074974, 36.448280, 32.035179>,  <32.301910, 36.454052, 32.113071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074974, 36.448280, 32.035179>,  <31.696749, 36.438660, 31.905361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074974, 36.448280, 32.035179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281091, -0.442215, 0.851724,
		0.164003, -0.896587, -0.411382,
		0.945564, 0.024050, 0.324547,
		32.358643, 36.455494, 32.132542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830292, 35.785728, 32.130650>,  <31.696749, 36.438660, 31.905361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830292, 35.785728, 32.130650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109966, 36.007107, 32.311687>,  <32.277771, 36.139935, 32.420311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109966, 36.007107, 32.311687>,  <31.830292, 35.785728, 32.130650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109966, 36.007107, 32.311687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138104, -0.516572, 0.845033,
		0.701474, -0.653340, -0.284747,
		0.699187, 0.553444, 0.452590,
		32.319721, 36.173141, 32.447464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231964, 35.317017, 32.619076>,  <31.830292, 35.785728, 32.130650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231964, 35.317017, 32.619076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276272, 35.697601, 32.733936>,  <32.302856, 35.925953, 32.802853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276272, 35.697601, 32.733936>,  <32.231964, 35.317017, 32.619076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276272, 35.697601, 32.733936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157089, -0.268533, 0.950375,
		0.981353, -0.150376, 0.119720,
		0.110765, 0.951460, 0.287148,
		32.309502, 35.983040, 32.820080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543930, 35.212894, 33.193283>,  <32.231964, 35.317017, 32.619076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543930, 35.212894, 33.193283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429443, 35.594627, 33.227543>,  <32.360752, 35.823666, 33.248096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429443, 35.594627, 33.227543>,  <32.543930, 35.212894, 33.193283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429443, 35.594627, 33.227543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254511, -0.161894, 0.953423,
		0.923745, 0.251087, 0.289224,
		-0.286216, 0.954330, 0.085645,
		32.343578, 35.880928, 33.253235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836452, 35.535049, 33.793896>,  <32.543930, 35.212894, 33.193283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836452, 35.535049, 33.793896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507809, 35.750221, 33.718441>,  <32.310623, 35.879326, 33.673168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507809, 35.750221, 33.718441>,  <32.836452, 35.535049, 33.793896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507809, 35.750221, 33.718441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430503, -0.368610, 0.823890,
		0.373664, 0.758125, 0.534436,
		-0.821610, 0.537934, -0.188639,
		32.261326, 35.911602, 33.661850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330650, 35.597130, 33.119164>,  <32.836452, 35.535049, 33.793896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330650, 35.597130, 33.119164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518700, 35.265827, 33.241135>,  <33.631531, 35.067047, 33.314316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518700, 35.265827, 33.241135>,  <33.330650, 35.597130, 33.119164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518700, 35.265827, 33.241135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880003, 0.413398, -0.233874,
		0.067650, 0.378287, 0.923213,
		0.470125, -0.828252, 0.304927,
		33.659737, 35.017353, 33.332611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976269, 35.828804, 33.341316>,  <33.330650, 35.597130, 33.119164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976269, 35.828804, 33.341316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037430, 35.437759, 33.283489>,  <34.074127, 35.203133, 33.248795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037430, 35.437759, 33.283489>,  <33.976269, 35.828804, 33.341316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037430, 35.437759, 33.283489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947333, 0.186652, -0.260235,
		0.281391, -0.097158, 0.954662,
		0.152906, -0.977610, -0.144563,
		34.083302, 35.144478, 33.240120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520382, 35.615658, 33.718311>,  <33.976269, 35.828804, 33.341316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520382, 35.615658, 33.718311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483185, 35.377850, 33.398838>,  <34.460869, 35.235165, 33.207153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483185, 35.377850, 33.398838>,  <34.520382, 35.615658, 33.718311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483185, 35.377850, 33.398838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914891, 0.265477, -0.304133,
		0.392846, -0.758992, 0.519234,
		-0.092989, -0.594520, -0.798686,
		34.455288, 35.199493, 33.159233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121319, 35.379131, 33.638245>,  <34.520382, 35.615658, 33.718311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121319, 35.379131, 33.638245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948906, 35.324150, 33.281521>,  <34.845459, 35.291161, 33.067486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948906, 35.324150, 33.281521>,  <35.121319, 35.379131, 33.638245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948906, 35.324150, 33.281521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749483, 0.495829, -0.438667,
		0.502481, -0.857473, -0.110696,
		-0.431031, -0.137457, -0.891806,
		34.819595, 35.282913, 33.013981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727737, 35.235229, 33.255573>,  <35.121319, 35.379131, 33.638245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727737, 35.235229, 33.255573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429920, 35.279919, 32.992310>,  <35.251228, 35.306732, 32.834351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429920, 35.279919, 32.992310>,  <35.727737, 35.235229, 33.255573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429920, 35.279919, 32.992310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641330, 0.393404, -0.658733,
		0.185327, -0.912552, -0.364558,
		-0.744547, 0.111721, -0.658156,
		35.206554, 35.313435, 32.794865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913830, 34.953323, 32.615219>,  <35.727737, 35.235229, 33.255573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913830, 34.953323, 32.615219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640282, 35.207130, 32.471161>,  <35.476151, 35.359413, 32.384727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640282, 35.207130, 32.471161>,  <35.913830, 34.953323, 32.615219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640282, 35.207130, 32.471161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638267, 0.281159, -0.716634,
		-0.353458, -0.719957, -0.597269,
		-0.683873, 0.634517, -0.360147,
		35.435120, 35.397484, 32.363117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723450, 34.920650, 31.832226>,  <35.913830, 34.953323, 32.615219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723450, 34.920650, 31.832226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653576, 35.299736, 31.939049>,  <35.611652, 35.527187, 32.003143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653576, 35.299736, 31.939049>,  <35.723450, 34.920650, 31.832226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653576, 35.299736, 31.939049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478654, 0.318760, -0.818097,
		-0.860450, -0.015083, -0.509311,
		-0.174687, 0.947716, 0.267057,
		35.601170, 35.584049, 32.019165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626190, 35.224426, 31.255474>,  <35.723450, 34.920650, 31.832226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626190, 35.224426, 31.255474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665749, 35.540066, 31.497976>,  <35.689484, 35.729450, 31.643478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665749, 35.540066, 31.497976>,  <35.626190, 35.224426, 31.255474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665749, 35.540066, 31.497976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569418, 0.454764, -0.684801,
		-0.816077, 0.412939, -0.404350,
		0.098897, 0.789095, 0.606258,
		35.695419, 35.776794, 31.679853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649158, 35.697216, 30.783974>,  <35.626190, 35.224426, 31.255474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649158, 35.697216, 30.783974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796429, 35.903316, 31.093542>,  <35.884792, 36.026978, 31.279284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796429, 35.903316, 31.093542>,  <35.649158, 35.697216, 30.783974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796429, 35.903316, 31.093542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603428, 0.500838, -0.620513,
		-0.707332, 0.695466, -0.126521,
		0.368179, 0.515255, 0.773923,
		35.906883, 36.057892, 31.325720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630714, 36.377132, 30.634565>,  <35.649158, 35.697216, 30.783974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630714, 36.377132, 30.634565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929295, 36.343590, 30.898621>,  <36.108444, 36.323463, 31.057053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929295, 36.343590, 30.898621>,  <35.630714, 36.377132, 30.634565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929295, 36.343590, 30.898621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615076, 0.465536, -0.636363,
		-0.253957, 0.881048, 0.399075,
		0.746450, -0.083852, 0.660137,
		36.153229, 36.318436, 31.096663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912037, 37.094215, 30.809233>,  <35.630714, 36.377132, 30.634565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912037, 37.094215, 30.809233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184532, 36.814991, 30.897430>,  <36.348030, 36.647457, 30.950350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184532, 36.814991, 30.897430>,  <35.912037, 37.094215, 30.809233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184532, 36.814991, 30.897430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671328, 0.475597, -0.568442,
		0.291941, 0.535272, 0.792625,
		0.681241, -0.698063, 0.220497,
		36.388905, 36.605572, 30.963579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587578, 37.449951, 30.934984>,  <35.912037, 37.094215, 30.809233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587578, 37.449951, 30.934984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695435, 37.069386, 30.875511>,  <36.760147, 36.841045, 30.839828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695435, 37.069386, 30.875511>,  <36.587578, 37.449951, 30.934984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695435, 37.069386, 30.875511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586148, 0.284660, -0.758551,
		0.764020, 0.117385, 0.634425,
		0.269638, -0.951415, -0.148681,
		36.776325, 36.783962, 30.830908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370495, 37.478504, 30.867054>,  <36.587578, 37.449951, 30.934984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370495, 37.478504, 30.867054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213764, 37.160072, 30.682564>,  <37.119724, 36.969013, 30.571869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213764, 37.160072, 30.682564>,  <37.370495, 37.478504, 30.867054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213764, 37.160072, 30.682564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465349, 0.260978, -0.845778,
		0.793678, -0.546028, 0.268197,
		-0.391825, -0.796081, -0.461226,
		37.096218, 36.921249, 30.544195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884323, 37.415787, 30.287077>,  <37.370495, 37.478504, 30.867054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884323, 37.415787, 30.287077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585880, 37.173065, 30.177448>,  <37.406815, 37.027431, 30.111671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585880, 37.173065, 30.177448>,  <37.884323, 37.415787, 30.287077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585880, 37.173065, 30.177448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177380, 0.215605, -0.960235,
		0.641763, -0.765054, -0.053231,
		-0.746108, -0.606801, -0.274073,
		37.362049, 36.991024, 30.095226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157269, 36.883541, 29.774616>,  <37.884323, 37.415787, 30.287077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157269, 36.883541, 29.774616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769123, 36.970432, 29.732279>,  <37.536236, 37.022568, 29.706877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769123, 36.970432, 29.732279>,  <38.157269, 36.883541, 29.774616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769123, 36.970432, 29.732279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144290, 0.169542, -0.974903,
		-0.193830, -0.961285, -0.195861,
		-0.970366, 0.217227, -0.105841,
		37.478012, 37.035599, 29.700527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032120, 36.500317, 29.217363>,  <38.157269, 36.883541, 29.774616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032120, 36.500317, 29.217363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728291, 36.758945, 29.245611>,  <37.545994, 36.914124, 29.262560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728291, 36.758945, 29.245611>,  <38.032120, 36.500317, 29.217363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728291, 36.758945, 29.245611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138590, 0.266975, -0.953686,
		-0.635483, -0.714609, -0.292396,
		-0.759575, 0.646574, 0.070620,
		37.500420, 36.952919, 29.266798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814400, 36.482998, 28.550320>,  <38.032120, 36.500317, 29.217363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814400, 36.482998, 28.550320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640392, 36.804714, 28.712248>,  <37.535988, 36.997742, 28.809404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640392, 36.804714, 28.712248>,  <37.814400, 36.482998, 28.550320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640392, 36.804714, 28.712248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032876, 0.435103, -0.899780,
		-0.899819, -0.404734, -0.162838,
		-0.435022, 0.804286, 0.404820,
		37.509884, 37.046001, 28.833694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280254, 36.536530, 28.216471>,  <37.814400, 36.482998, 28.550320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280254, 36.536530, 28.216471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367260, 36.909008, 28.333475>,  <37.419464, 37.132496, 28.403679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367260, 36.909008, 28.333475>,  <37.280254, 36.536530, 28.216471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367260, 36.909008, 28.333475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050794, 0.288482, -0.956137,
		-0.974735, 0.222830, 0.015449,
		0.217512, 0.931195, 0.292512,
		37.432514, 37.188366, 28.421228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916924, 36.812862, 27.711117>,  <37.280254, 36.536530, 28.216471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916924, 36.812862, 27.711117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149734, 37.100143, 27.863659>,  <37.289421, 37.272511, 27.955185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149734, 37.100143, 27.863659>,  <36.916924, 36.812862, 27.711117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149734, 37.100143, 27.863659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007756, 0.473856, -0.880568,
		-0.813134, 0.509555, 0.281366,
		0.582025, 0.718202, 0.381356,
		37.324341, 37.315605, 27.978065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570839, 37.496967, 27.573298>,  <36.916924, 36.812862, 27.711117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570839, 37.496967, 27.573298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969566, 37.499378, 27.605076>,  <37.208805, 37.500824, 27.624144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969566, 37.499378, 27.605076>,  <36.570839, 37.496967, 27.573298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969566, 37.499378, 27.605076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073494, 0.315451, -0.946091,
		-0.030767, 0.948922, 0.314005,
		0.996821, 0.006031, 0.079446,
		37.268612, 37.501186, 27.628910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680614, 38.060478, 27.338177>,  <36.570839, 37.496967, 27.573298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680614, 38.060478, 27.338177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041111, 37.890606, 27.303764>,  <37.257408, 37.788681, 27.283117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041111, 37.890606, 27.303764>,  <36.680614, 38.060478, 27.338177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041111, 37.890606, 27.303764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061877, 0.322646, -0.944495,
		0.428870, 0.845898, 0.317061,
		0.901245, -0.424684, -0.086031,
		37.311485, 37.763199, 27.277954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959564, 38.461948, 27.020668>,  <36.680614, 38.060478, 27.338177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959564, 38.461948, 27.020668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205399, 38.152203, 26.960482>,  <37.352901, 37.966354, 26.924370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205399, 38.152203, 26.960482>,  <36.959564, 38.461948, 27.020668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205399, 38.152203, 26.960482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116910, 0.278050, -0.953426,
		0.780136, 0.568374, 0.261418,
		0.614589, -0.774364, -0.150468,
		37.389774, 37.919895, 26.915340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508453, 38.771881, 26.657949>,  <36.959564, 38.461948, 27.020668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508453, 38.771881, 26.657949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543293, 38.382076, 26.575249>,  <37.564198, 38.148193, 26.525627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543293, 38.382076, 26.575249>,  <37.508453, 38.771881, 26.657949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543293, 38.382076, 26.575249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126095, 0.216657, -0.968070,
		0.988187, 0.058248, 0.141752,
		0.087100, -0.974508, -0.206753,
		37.569424, 38.089725, 26.513224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040356, 38.788151, 26.087721>,  <37.508453, 38.771881, 26.657949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040356, 38.788151, 26.087721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829746, 38.448166, 26.095121>,  <37.703381, 38.244175, 26.099562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829746, 38.448166, 26.095121>,  <38.040356, 38.788151, 26.087721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829746, 38.448166, 26.095121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050350, -0.052898, -0.997330,
		0.848669, -0.524184, 0.070648,
		-0.526521, -0.849960, 0.018500,
		37.671791, 38.193176, 26.100672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482735, 38.236343, 25.666149>,  <38.040356, 38.788151, 26.087721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482735, 38.236343, 25.666149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102654, 38.113407, 25.686754>,  <37.874603, 38.039646, 25.699118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102654, 38.113407, 25.686754>,  <38.482735, 38.236343, 25.666149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102654, 38.113407, 25.686754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026503, -0.085009, -0.996028,
		0.310501, -0.947794, 0.072631,
		-0.950203, -0.307342, 0.051515,
		37.817593, 38.021206, 25.702209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457413, 37.552696, 25.415487>,  <38.482735, 38.236343, 25.666149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457413, 37.552696, 25.415487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069145, 37.644547, 25.386976>,  <37.836185, 37.699657, 25.369869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069145, 37.644547, 25.386976>,  <38.457413, 37.552696, 25.415487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069145, 37.644547, 25.386976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018232, -0.365898, -0.930476,
		-0.239745, -0.901881, 0.359351,
		-0.970665, 0.229629, -0.071279,
		37.777946, 37.713436, 25.365593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221630, 36.966560, 25.147228>,  <38.457413, 37.552696, 25.415487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221630, 36.966560, 25.147228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946091, 37.242447, 25.057993>,  <37.780766, 37.407978, 25.004452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946091, 37.242447, 25.057993>,  <38.221630, 36.966560, 25.147228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946091, 37.242447, 25.057993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069465, -0.243529, -0.967403,
		-0.721566, -0.681895, 0.119844,
		-0.688853, 0.689720, -0.223090,
		37.739433, 37.449364, 24.991066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772797, 36.714066, 24.632914>,  <38.221630, 36.966560, 25.147228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772797, 36.714066, 24.632914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740894, 37.112068, 24.608906>,  <37.721752, 37.350868, 24.594501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740894, 37.112068, 24.608906>,  <37.772797, 36.714066, 24.632914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740894, 37.112068, 24.608906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274702, -0.035942, -0.960857,
		-0.958216, -0.093118, -0.270464,
		-0.079752, 0.995006, -0.060019,
		37.716969, 37.410568, 24.590900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511303, 36.847584, 23.884418>,  <37.772797, 36.714066, 24.632914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511303, 36.847584, 23.884418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632896, 37.209240, 24.004501>,  <37.705853, 37.426231, 24.076551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632896, 37.209240, 24.004501>,  <37.511303, 36.847584, 23.884418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632896, 37.209240, 24.004501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250182, 0.228297, -0.940898,
		-0.919239, 0.361128, -0.156800,
		0.303988, 0.904139, 0.300207,
		37.724094, 37.480480, 24.094564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147869, 37.344673, 23.364122>,  <37.511303, 36.847584, 23.884418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147869, 37.344673, 23.364122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493900, 37.449360, 23.535299>,  <37.701519, 37.512173, 23.638006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493900, 37.449360, 23.535299>,  <37.147869, 37.344673, 23.364122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493900, 37.449360, 23.535299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438319, 0.020486, -0.898586,
		-0.243944, 0.964927, -0.096995,
		0.865082, 0.261719, 0.427943,
		37.753426, 37.527874, 23.663683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299755, 37.807632, 22.916853>,  <37.147869, 37.344673, 23.364122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299755, 37.807632, 22.916853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645290, 37.758785, 23.112350>,  <37.852612, 37.729477, 23.229649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645290, 37.758785, 23.112350>,  <37.299755, 37.807632, 22.916853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645290, 37.758785, 23.112350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503323, 0.168409, -0.847529,
		0.021191, 0.978123, 0.206944,
		0.863839, -0.122119, 0.488743,
		37.904442, 37.722149, 23.258974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595604, 38.444355, 22.824745>,  <37.299755, 37.807632, 22.916853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595604, 38.444355, 22.824745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886108, 38.178501, 22.894958>,  <38.060410, 38.018990, 22.937086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886108, 38.178501, 22.894958>,  <37.595604, 38.444355, 22.824745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886108, 38.178501, 22.894958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475254, 0.300964, -0.826774,
		0.496672, 0.683874, 0.534447,
		0.726258, -0.664633, 0.175533,
		38.103985, 37.979111, 22.947618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289829, 38.776329, 22.714945>,  <37.595604, 38.444355, 22.824745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289829, 38.776329, 22.714945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349922, 38.382118, 22.683550>,  <38.385979, 38.145592, 22.664713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349922, 38.382118, 22.683550>,  <38.289829, 38.776329, 22.714945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349922, 38.382118, 22.683550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613638, 0.155200, -0.774184,
		0.775163, 0.068145, 0.628075,
		0.150234, -0.985530, -0.078489,
		38.394993, 38.086460, 22.660004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935848, 38.684093, 22.642561>,  <38.289829, 38.776329, 22.714945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935848, 38.684093, 22.642561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797028, 38.341267, 22.490248>,  <38.713734, 38.135571, 22.398859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797028, 38.341267, 22.490248>,  <38.935848, 38.684093, 22.642561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797028, 38.341267, 22.490248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570319, 0.129449, -0.811160,
		0.744507, -0.498683, 0.443874,
		-0.347053, -0.857063, -0.380784,
		38.692913, 38.084148, 22.376013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529476, 38.318073, 22.415550>,  <38.935848, 38.684093, 22.642561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529476, 38.318073, 22.415550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207878, 38.190002, 22.215118>,  <39.014919, 38.113159, 22.094860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207878, 38.190002, 22.215118>,  <39.529476, 38.318073, 22.415550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207878, 38.190002, 22.215118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519842, 0.030688, -0.853711,
		0.288720, -0.946859, 0.141771,
		-0.803993, -0.320182, -0.501077,
		38.966679, 38.093948, 22.064795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759468, 37.806927, 22.017487>,  <39.529476, 38.318073, 22.415550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759468, 37.806927, 22.017487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416683, 37.890961, 21.829243>,  <39.211010, 37.941380, 21.716297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416683, 37.890961, 21.829243>,  <39.759468, 37.806927, 22.017487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416683, 37.890961, 21.829243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498697, 0.107618, -0.860070,
		-0.130042, -0.971742, -0.196994,
		-0.856965, 0.210086, -0.470610,
		39.159592, 37.953987, 21.688059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601063, 37.297211, 21.449169>,  <39.759468, 37.806927, 22.017487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601063, 37.297211, 21.449169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363312, 37.588276, 21.312216>,  <39.220661, 37.762913, 21.230043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363312, 37.588276, 21.312216>,  <39.601063, 37.297211, 21.449169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363312, 37.588276, 21.312216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422642, -0.079559, -0.902798,
		-0.684168, -0.681310, -0.260251,
		-0.594380, 0.727659, -0.342381,
		39.184998, 37.806572, 21.209501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356514, 37.046112, 20.779066>,  <39.601063, 37.297211, 21.449169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356514, 37.046112, 20.779066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316662, 37.444050, 20.786562>,  <39.292751, 37.682812, 20.791059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316662, 37.444050, 20.786562>,  <39.356514, 37.046112, 20.779066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316662, 37.444050, 20.786562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225133, 0.040884, -0.973470,
		-0.969221, -0.092763, -0.228046,
		-0.099626, 0.994848, 0.018741,
		39.286774, 37.742504, 20.792185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216606, 36.346294, 20.430553>,  <39.356514, 37.046112, 20.779066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216606, 36.346294, 20.430553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511059, 36.081238, 20.375378>,  <39.687729, 35.922203, 20.342272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511059, 36.081238, 20.375378>,  <39.216606, 36.346294, 20.430553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511059, 36.081238, 20.375378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001418, -0.202286, 0.979325,
		-0.676842, -0.721103, -0.147969,
		0.736127, -0.662639, -0.137938,
		39.731895, 35.882446, 20.333996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075573, 35.767403, 20.819103>,  <39.216606, 36.346294, 20.430553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075573, 35.767403, 20.819103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467995, 35.703861, 20.774734>,  <39.703445, 35.665737, 20.748114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467995, 35.703861, 20.774734>,  <39.075573, 35.767403, 20.819103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467995, 35.703861, 20.774734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070170, -0.242328, 0.967654,
		-0.180591, -0.957102, -0.226590,
		0.981052, -0.158850, -0.110922,
		39.762310, 35.656204, 20.741457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208412, 35.148151, 21.116804>,  <39.075573, 35.767403, 20.819103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208412, 35.148151, 21.116804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558685, 35.341152, 21.109144>,  <39.768848, 35.456951, 21.104548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558685, 35.341152, 21.109144>,  <39.208412, 35.148151, 21.116804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558685, 35.341152, 21.109144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146578, -0.227821, 0.962607,
		0.460095, -0.845749, -0.270223,
		0.875687, 0.482499, -0.019149,
		39.821392, 35.485901, 21.103399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619724, 34.749821, 21.539988>,  <39.208412, 35.148151, 21.116804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619724, 34.749821, 21.539988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829552, 35.089958, 21.523260>,  <39.955448, 35.294041, 21.513224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829552, 35.089958, 21.523260>,  <39.619724, 34.749821, 21.539988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829552, 35.089958, 21.523260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107347, -0.017335, 0.994070,
		0.844572, -0.525949, -0.100375,
		0.524570, 0.850340, -0.041818,
		39.986923, 35.345058, 21.510715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263382, 34.574493, 21.853109>,  <39.619724, 34.749821, 21.539988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263382, 34.574493, 21.853109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196049, 34.967113, 21.889374>,  <40.155647, 35.202686, 21.911133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196049, 34.967113, 21.889374>,  <40.263382, 34.574493, 21.853109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196049, 34.967113, 21.889374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053044, -0.082820, 0.995152,
		0.984302, 0.172325, -0.038124,
		-0.168332, 0.981552, 0.090660,
		40.145550, 35.261578, 21.916573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709583, 34.710251, 22.356369>,  <40.263382, 34.574493, 21.853109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709583, 34.710251, 22.356369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437920, 35.001816, 22.321892>,  <40.274921, 35.176754, 22.301205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437920, 35.001816, 22.321892>,  <40.709583, 34.710251, 22.356369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437920, 35.001816, 22.321892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020100, 0.135857, 0.990525,
		0.733711, 0.670996, -0.106920,
		-0.679164, 0.728908, -0.086193,
		40.234169, 35.220490, 22.296034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953648, 35.282093, 22.821127>,  <40.709583, 34.710251, 22.356369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953648, 35.282093, 22.821127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564888, 35.358829, 22.766560>,  <40.331631, 35.404869, 22.733820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564888, 35.358829, 22.766560>,  <40.953648, 35.282093, 22.821127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564888, 35.358829, 22.766560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150081, -0.058523, 0.986940,
		0.181351, 0.979680, 0.085670,
		-0.971899, 0.191840, -0.136418,
		40.273319, 35.416382, 22.725634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698009, 35.747562, 23.377323>,  <40.953648, 35.282093, 22.821127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698009, 35.747562, 23.377323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353115, 35.589554, 23.250505>,  <40.146179, 35.494751, 23.174416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353115, 35.589554, 23.250505>,  <40.698009, 35.747562, 23.377323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353115, 35.589554, 23.250505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289069, -0.130226, 0.948409,
		-0.415926, 0.909397, -0.001903,
		-0.862232, -0.395018, -0.317043,
		40.094444, 35.471046, 23.155392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200180, 35.988235, 23.865839>,  <40.698009, 35.747562, 23.377323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200180, 35.988235, 23.865839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016796, 35.683910, 23.682108>,  <39.906765, 35.501316, 23.571869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016796, 35.683910, 23.682108>,  <40.200180, 35.988235, 23.865839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016796, 35.683910, 23.682108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352205, -0.318981, 0.879888,
		-0.815948, 0.565166, -0.121723,
		-0.458456, -0.760814, -0.459326,
		39.879261, 35.455666, 23.544310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547169, 35.944012, 24.148085>,  <40.200180, 35.988235, 23.865839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547169, 35.944012, 24.148085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590611, 35.577358, 23.994204>,  <39.616676, 35.357368, 23.901875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590611, 35.577358, 23.994204>,  <39.547169, 35.944012, 24.148085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590611, 35.577358, 23.994204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378387, -0.395976, 0.836676,
		-0.919254, 0.054703, -0.389845,
		0.108601, -0.916630, -0.384701,
		39.623192, 35.302368, 23.878794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869484, 35.561756, 24.298985>,  <39.547169, 35.944012, 24.148085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869484, 35.561756, 24.298985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156521, 35.294510, 24.220310>,  <39.328743, 35.134163, 24.173105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156521, 35.294510, 24.220310>,  <38.869484, 35.561756, 24.298985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156521, 35.294510, 24.220310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248227, -0.509205, 0.824071,
		-0.650728, -0.542523, -0.531245,
		0.717591, -0.668116, -0.196686,
		39.371799, 35.094074, 24.161304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618084, 34.847919, 24.302217>,  <38.869484, 35.561756, 24.298985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618084, 34.847919, 24.302217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008499, 34.844975, 24.389206>,  <39.242748, 34.843208, 24.441399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008499, 34.844975, 24.389206>,  <38.618084, 34.847919, 24.302217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008499, 34.844975, 24.389206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208522, -0.317227, 0.925141,
		0.062177, -0.948321, -0.311161,
		0.976039, -0.007362, 0.217470,
		39.301311, 34.842766, 24.454447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773735, 34.189457, 24.572084>,  <38.618084, 34.847919, 24.302217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773735, 34.189457, 24.572084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066700, 34.418358, 24.719654>,  <39.242477, 34.555698, 24.808195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066700, 34.418358, 24.719654>,  <38.773735, 34.189457, 24.572084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066700, 34.418358, 24.719654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269106, -0.254429, 0.928896,
		0.625428, -0.779611, -0.032350,
		0.732409, 0.572252, 0.368925,
		39.286423, 34.590034, 24.830332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857426, 33.917629, 25.147205>,  <38.773735, 34.189457, 24.572084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857426, 33.917629, 25.147205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087399, 34.234741, 25.228148>,  <39.225384, 34.425011, 25.276712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087399, 34.234741, 25.228148>,  <38.857426, 33.917629, 25.147205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087399, 34.234741, 25.228148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205363, -0.099579, 0.973607,
		0.792008, -0.601316, 0.105556,
		0.574934, 0.792782, 0.202356,
		39.259880, 34.472576, 25.288855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290691, 33.747131, 25.684195>,  <38.857426, 33.917629, 25.147205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290691, 33.747131, 25.684195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267445, 34.145733, 25.708189>,  <39.253498, 34.384895, 25.722586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267445, 34.145733, 25.708189>,  <39.290691, 33.747131, 25.684195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267445, 34.145733, 25.708189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085291, -0.064822, 0.994245,
		0.994660, 0.052666, 0.088760,
		-0.058117, 0.996506, 0.059984,
		39.250011, 34.444683, 25.726185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698410, 33.908958, 26.279882>,  <39.290691, 33.747131, 25.684195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698410, 33.908958, 26.279882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497120, 34.246449, 26.205168>,  <39.376347, 34.448944, 26.160339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497120, 34.246449, 26.205168>,  <39.698410, 33.908958, 26.279882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497120, 34.246449, 26.205168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204933, 0.093465, 0.974303,
		0.839504, 0.528573, 0.125873,
		-0.503226, 0.843727, -0.186787,
		39.346153, 34.499565, 26.149132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971905, 34.432774, 26.731255>,  <39.698410, 33.908958, 26.279882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971905, 34.432774, 26.731255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604992, 34.548489, 26.621777>,  <39.384846, 34.617916, 26.556089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604992, 34.548489, 26.621777>,  <39.971905, 34.432774, 26.731255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604992, 34.548489, 26.621777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285497, 0.001452, 0.958378,
		0.277644, 0.957241, 0.081259,
		-0.917281, 0.289287, -0.273693,
		39.329807, 34.635273, 26.539669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692856, 34.856083, 27.264400>,  <39.971905, 34.432774, 26.731255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692856, 34.856083, 27.264400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352993, 34.748444, 27.083000>,  <39.149075, 34.683861, 26.974161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352993, 34.748444, 27.083000>,  <39.692856, 34.856083, 27.264400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352993, 34.748444, 27.083000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509882, 0.199855, 0.836707,
		-0.134526, 0.942147, -0.307020,
		-0.849660, -0.269103, -0.453498,
		39.098095, 34.667713, 26.946951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284233, 35.201843, 27.627577>,  <39.692856, 34.856083, 27.264400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284233, 35.201843, 27.627577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023315, 34.961098, 27.443279>,  <38.866768, 34.816650, 27.332701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023315, 34.961098, 27.443279>,  <39.284233, 35.201843, 27.627577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023315, 34.961098, 27.443279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525575, -0.078857, 0.847085,
		-0.546159, 0.794699, -0.264885,
		-0.652289, -0.601860, -0.460742,
		38.827629, 34.780540, 27.305058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638966, 35.443684, 27.698792>,  <39.284233, 35.201843, 27.627577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638966, 35.443684, 27.698792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619240, 35.046078, 27.659807>,  <38.607403, 34.807514, 27.636417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619240, 35.046078, 27.659807>,  <38.638966, 35.443684, 27.698792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619240, 35.046078, 27.659807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502715, -0.059614, 0.862395,
		-0.863044, 0.091527, -0.496767,
		-0.049318, -0.994016, -0.097461,
		38.604446, 34.747871, 27.630569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036278, 35.253628, 27.919146>,  <38.638966, 35.443684, 27.698792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036278, 35.253628, 27.919146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195831, 34.887634, 27.943462>,  <38.291561, 34.668037, 27.958054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195831, 34.887634, 27.943462>,  <38.036278, 35.253628, 27.919146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195831, 34.887634, 27.943462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640004, -0.230300, 0.733046,
		-0.656726, -0.331306, -0.677457,
		0.398881, -0.914985, 0.060794,
		38.315495, 34.613140, 27.961700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465027, 34.792973, 27.882364>,  <38.036278, 35.253628, 27.919146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465027, 34.792973, 27.882364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768105, 34.581451, 28.035341>,  <37.949951, 34.454536, 28.127127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768105, 34.581451, 28.035341>,  <37.465027, 34.792973, 27.882364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768105, 34.581451, 28.035341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578679, -0.273491, 0.768331,
		-0.301708, -0.803469, -0.513234,
		0.757696, -0.528810, 0.382437,
		37.995415, 34.422810, 28.150074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164825, 34.145374, 28.196627>,  <37.465027, 34.792973, 27.882364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164825, 34.145374, 28.196627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525238, 34.191654, 28.363844>,  <37.741486, 34.219421, 28.464174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525238, 34.191654, 28.363844>,  <37.164825, 34.145374, 28.196627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525238, 34.191654, 28.363844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386311, -0.224245, 0.894694,
		0.197260, -0.967640, -0.157356,
		0.901028, 0.115699, 0.418045,
		37.795547, 34.226364, 28.489258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246273, 33.603008, 28.738111>,  <37.164825, 34.145374, 28.196627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246273, 33.603008, 28.738111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519829, 33.877537, 28.837122>,  <37.683960, 34.042252, 28.896528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519829, 33.877537, 28.837122>,  <37.246273, 33.603008, 28.738111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519829, 33.877537, 28.837122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210492, -0.139240, 0.967629,
		0.698566, -0.713849, 0.049240,
		0.683885, 0.686317, 0.247528,
		37.724995, 34.083431, 28.911381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462261, 33.415619, 29.321564>,  <37.246273, 33.603008, 28.738111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462261, 33.415619, 29.321564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624332, 33.779984, 29.352715>,  <37.721573, 33.998604, 29.371405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624332, 33.779984, 29.352715>,  <37.462261, 33.415619, 29.321564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624332, 33.779984, 29.352715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074886, -0.051830, 0.995844,
		0.911167, -0.409323, 0.047215,
		0.405175, 0.910916, 0.077878,
		37.745884, 34.053257, 29.376078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989525, 33.405304, 29.821743>,  <37.462261, 33.415619, 29.321564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989525, 33.405304, 29.821743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862064, 33.784428, 29.817471>,  <37.785587, 34.011902, 29.814907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862064, 33.784428, 29.817471>,  <37.989525, 33.405304, 29.821743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862064, 33.784428, 29.817471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128296, -0.031961, 0.991221,
		0.939148, 0.317228, 0.131785,
		-0.318655, 0.947810, -0.010683,
		37.766468, 34.068771, 29.814266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303051, 33.625618, 30.396818>,  <37.989525, 33.405304, 29.821743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303051, 33.625618, 30.396818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010197, 33.880901, 30.301596>,  <37.834484, 34.034069, 30.244463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010197, 33.880901, 30.301596>,  <38.303051, 33.625618, 30.396818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010197, 33.880901, 30.301596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192125, 0.141816, 0.971070,
		0.653502, 0.756691, 0.018787,
		-0.732136, 0.638206, -0.238056,
		37.790558, 34.072365, 30.230179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450157, 34.138283, 30.792030>,  <38.303051, 33.625618, 30.396818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450157, 34.138283, 30.792030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061691, 34.192810, 30.713795>,  <37.828613, 34.225525, 30.666853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061691, 34.192810, 30.713795>,  <38.450157, 34.138283, 30.792030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061691, 34.192810, 30.713795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183714, 0.094946, 0.978384,
		0.151938, 0.986105, -0.067165,
		-0.971166, 0.136314, -0.195588,
		37.770340, 34.233704, 30.655119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213909, 34.650166, 31.245409>,  <38.450157, 34.138283, 30.792030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213909, 34.650166, 31.245409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887760, 34.455132, 31.120562>,  <37.692070, 34.338112, 31.045654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887760, 34.455132, 31.120562>,  <38.213909, 34.650166, 31.245409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887760, 34.455132, 31.120562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288369, -0.125422, 0.949270,
		-0.502000, 0.864017, -0.038339,
		-0.815377, -0.487589, -0.312118,
		37.643147, 34.308853, 31.026926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697350, 34.837193, 31.722080>,  <38.213909, 34.650166, 31.245409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697350, 34.837193, 31.722080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547710, 34.523563, 31.523979>,  <37.457928, 34.335384, 31.405117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547710, 34.523563, 31.523979>,  <37.697350, 34.837193, 31.722080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547710, 34.523563, 31.523979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496097, -0.282006, 0.821195,
		-0.783544, 0.552899, -0.283481,
		-0.374094, -0.784077, -0.495255,
		37.435482, 34.288342, 31.375402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010960, 34.755337, 31.867506>,  <37.697350, 34.837193, 31.722080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010960, 34.755337, 31.867506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140373, 34.389992, 31.768633>,  <37.218021, 34.170784, 31.709309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140373, 34.389992, 31.768633>,  <37.010960, 34.755337, 31.867506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140373, 34.389992, 31.768633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333249, -0.354483, 0.873663,
		-0.885592, -0.200283, -0.419062,
		0.323530, -0.913361, -0.247183,
		37.237431, 34.115982, 31.694477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523949, 34.310772, 32.186954>,  <37.010960, 34.755337, 31.867506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523949, 34.310772, 32.186954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843487, 34.079517, 32.120499>,  <37.035210, 33.940765, 32.080627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843487, 34.079517, 32.120499>,  <36.523949, 34.310772, 32.186954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843487, 34.079517, 32.120499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169015, -0.480784, 0.860396,
		-0.577305, -0.659243, -0.481786,
		0.798845, -0.578140, -0.166137,
		37.083141, 33.906075, 32.070656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307243, 33.561146, 32.344154>,  <36.523949, 34.310772, 32.186954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307243, 33.561146, 32.344154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705849, 33.575665, 32.374207>,  <36.945011, 33.584377, 32.392239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705849, 33.575665, 32.374207>,  <36.307243, 33.561146, 32.344154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705849, 33.575665, 32.374207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039642, -0.586353, 0.809085,
		0.073419, -0.809242, -0.582870,
		0.996513, 0.036296, 0.075129,
		37.004803, 33.586552, 32.396744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470852, 32.940575, 32.540279>,  <36.307243, 33.561146, 32.344154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470852, 32.940575, 32.540279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816486, 33.121223, 32.629177>,  <37.023869, 33.229610, 32.682514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816486, 33.121223, 32.629177>,  <36.470852, 32.940575, 32.540279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816486, 33.121223, 32.629177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001488, -0.439241, 0.898368,
		0.503338, -0.776600, -0.378871,
		0.864088, 0.451619, 0.222243,
		37.075714, 33.256710, 32.695850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011028, 32.439732, 32.719196>,  <36.470852, 32.940575, 32.540279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011028, 32.439732, 32.719196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107533, 32.787926, 32.890800>,  <37.165436, 32.996841, 32.993763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107533, 32.787926, 32.890800>,  <37.011028, 32.439732, 32.719196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107533, 32.787926, 32.890800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074920, -0.457456, 0.886070,
		0.967563, -0.181636, -0.175585,
		0.241265, 0.870484, 0.429010,
		37.179913, 33.049072, 33.019505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566078, 32.252754, 33.162907>,  <37.011028, 32.439732, 32.719196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566078, 32.252754, 33.162907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448368, 32.607838, 33.304535>,  <37.377743, 32.820889, 33.389511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448368, 32.607838, 33.304535>,  <37.566078, 32.252754, 33.162907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448368, 32.607838, 33.304535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025376, -0.363088, 0.931409,
		0.955384, 0.283076, 0.084321,
		-0.294276, 0.887713, 0.354072,
		37.360085, 32.874153, 33.410755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936375, 32.332249, 33.779179>,  <37.566078, 32.252754, 33.162907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936375, 32.332249, 33.779179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635921, 32.592339, 33.824802>,  <37.455650, 32.748390, 33.852177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635921, 32.592339, 33.824802>,  <37.936375, 32.332249, 33.779179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635921, 32.592339, 33.824802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067202, -0.247193, 0.966633,
		0.656720, 0.718406, 0.229371,
		-0.751134, 0.650221, 0.114058,
		37.410580, 32.787407, 33.859020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093441, 32.531902, 34.472595>,  <37.936375, 32.332249, 33.779179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093441, 32.531902, 34.472595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713680, 32.615673, 34.378971>,  <37.485825, 32.665936, 34.322796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713680, 32.615673, 34.378971>,  <38.093441, 32.531902, 34.472595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713680, 32.615673, 34.378971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265158, -0.135062, 0.954699,
		0.168324, 0.968452, 0.183758,
		-0.949399, 0.209424, -0.234059,
		37.428860, 32.678501, 34.308754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931953, 32.993362, 35.003372>,  <38.093441, 32.531902, 34.472595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931953, 32.993362, 35.003372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594391, 32.842529, 34.850727>,  <37.391853, 32.752029, 34.759140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594391, 32.842529, 34.850727>,  <37.931953, 32.993362, 35.003372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594391, 32.842529, 34.850727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348264, -0.156015, 0.924322,
		-0.408087, 0.912943, 0.000336,
		-0.843906, -0.377087, -0.381613,
		37.341221, 32.729404, 34.736244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337418, 33.477493, 35.183609>,  <37.931953, 32.993362, 35.003372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337418, 33.477493, 35.183609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198578, 33.105347, 35.136379>,  <37.115273, 32.882057, 35.108044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198578, 33.105347, 35.136379>,  <37.337418, 33.477493, 35.183609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198578, 33.105347, 35.136379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255061, -0.027504, 0.966534,
		-0.902477, 0.365601, -0.227753,
		-0.347102, -0.930365, -0.118072,
		37.094448, 32.826237, 35.100956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590591, 33.459923, 35.509979>,  <37.337418, 33.477493, 35.183609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590591, 33.459923, 35.509979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820114, 33.132622, 35.496090>,  <36.957829, 32.936241, 35.487755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820114, 33.132622, 35.496090>,  <36.590591, 33.459923, 35.509979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820114, 33.132622, 35.496090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139175, -0.139205, 0.980435,
		-0.807082, -0.557743, -0.193757,
		0.573803, -0.818257, -0.034726,
		36.992256, 32.887146, 35.485672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256851, 33.423248, 36.224224>,  <36.590591, 33.459923, 35.509979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256851, 33.423248, 36.224224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567814, 33.207386, 36.094971>,  <36.754391, 33.077869, 36.017418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567814, 33.207386, 36.094971>,  <36.256851, 33.423248, 36.224224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567814, 33.207386, 36.094971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292000, -0.145383, 0.945304,
		-0.557116, -0.829238, 0.044558,
		0.777404, -0.539655, -0.323133,
		36.801037, 33.045490, 35.998032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171574, 32.790436, 36.644241>,  <36.256851, 33.423248, 36.224224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171574, 32.790436, 36.644241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554470, 32.878265, 36.568890>,  <36.784206, 32.930962, 36.523678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554470, 32.878265, 36.568890>,  <36.171574, 32.790436, 36.644241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554470, 32.878265, 36.568890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175220, 0.078106, 0.981426,
		0.230204, -0.972465, 0.036293,
		0.957238, 0.219569, -0.188375,
		36.841640, 32.944138, 36.512379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555775, 32.538670, 37.161976>,  <36.171574, 32.790436, 36.644241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555775, 32.538670, 37.161976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802643, 32.813786, 37.009113>,  <36.950764, 32.978855, 36.917397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802643, 32.813786, 37.009113>,  <36.555775, 32.538670, 37.161976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802643, 32.813786, 37.009113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276065, 0.265534, 0.923731,
		0.736812, -0.675597, -0.025996,
		0.617168, 0.687793, -0.382157,
		36.987793, 33.020123, 36.894466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417038, 32.570740, 37.346554>,  <36.555775, 32.538670, 37.161976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417038, 32.570740, 37.346554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264835, 32.935482, 37.284939>,  <37.173515, 33.154327, 37.247971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264835, 32.935482, 37.284939>,  <37.417038, 32.570740, 37.346554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264835, 32.935482, 37.284939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329807, 0.289418, 0.898590,
		0.863970, 0.291115, -0.410863,
		-0.380504, 0.911860, -0.154037,
		37.150684, 33.209042, 37.238728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571003, 32.331589, 38.054115>,  <37.417038, 32.570740, 37.346554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571003, 32.331589, 38.054115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547565, 32.187237, 38.426422>,  <37.533504, 32.100624, 38.649807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547565, 32.187237, 38.426422>,  <37.571003, 32.331589, 38.054115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547565, 32.187237, 38.426422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941972, 0.288729, 0.171244,
		-0.330539, 0.886792, 0.323024,
		-0.058591, -0.360882, 0.930769,
		37.529987, 32.078972, 38.705654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489357, 32.842960, 38.714397>,  <37.571003, 32.331589, 38.054115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489357, 32.842960, 38.714397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705341, 32.511024, 38.770706>,  <37.834930, 32.311863, 38.804493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705341, 32.511024, 38.770706>,  <37.489357, 32.842960, 38.714397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705341, 32.511024, 38.770706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811505, 0.557650, 0.174602,
		-0.223394, 0.019961, 0.974524,
		0.539958, -0.829836, 0.140774,
		37.867329, 32.262074, 38.812939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926857, 32.869503, 39.367065>,  <37.489357, 32.842960, 38.714397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926857, 32.869503, 39.367065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113441, 32.669479, 39.075214>,  <38.225391, 32.549465, 38.900105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113441, 32.669479, 39.075214>,  <37.926857, 32.869503, 39.367065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113441, 32.669479, 39.075214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809905, 0.573086, 0.125007,
		0.355628, -0.649239, 0.672322,
		0.466458, -0.500061, -0.729627,
		38.253380, 32.519463, 38.856327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528984, 32.519062, 39.514706>,  <37.926857, 32.869503, 39.367065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528984, 32.519062, 39.514706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559513, 32.630054, 39.131626>,  <38.577831, 32.696651, 38.901779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559513, 32.630054, 39.131626>,  <38.528984, 32.519062, 39.514706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559513, 32.630054, 39.131626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910766, 0.371517, 0.180227,
		0.405809, -0.885990, -0.224367,
		0.076323, 0.277483, -0.957694,
		38.582409, 32.713299, 38.844318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054237, 32.173161, 39.150482>,  <38.528984, 32.519062, 39.514706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054237, 32.173161, 39.150482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004734, 32.507069, 38.935879>,  <38.975033, 32.707413, 38.807117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004734, 32.507069, 38.935879>,  <39.054237, 32.173161, 39.150482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004734, 32.507069, 38.935879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971104, 0.213071, 0.107508,
		0.204059, -0.507702, -0.837018,
		-0.123763, 0.834769, -0.536510,
		38.967606, 32.757500, 38.774925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565586, 32.098141, 38.638279>,  <39.054237, 32.173161, 39.150482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565586, 32.098141, 38.638279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463604, 32.480244, 38.698242>,  <39.402412, 32.709507, 38.734219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463604, 32.480244, 38.698242>,  <39.565586, 32.098141, 38.638279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463604, 32.480244, 38.698242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962477, 0.235812, 0.134279,
		0.092922, 0.178518, -0.979539,
		-0.254959, 0.955261, 0.149907,
		39.387115, 32.766823, 38.743214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140251, 32.465008, 38.360035>,  <39.565586, 32.098141, 38.638279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140251, 32.465008, 38.360035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931732, 32.705162, 38.602612>,  <39.806618, 32.849255, 38.748158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931732, 32.705162, 38.602612>,  <40.140251, 32.465008, 38.360035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931732, 32.705162, 38.602612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840818, 0.482816, 0.244774,
		-0.145842, 0.637511, -0.756511,
		-0.521302, 0.600390, 0.606445,
		39.775341, 32.885281, 38.784546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428932, 33.226154, 38.326305>,  <40.140251, 32.465008, 38.360035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428932, 33.226154, 38.326305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207661, 33.278748, 38.655354>,  <40.074898, 33.310303, 38.852783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207661, 33.278748, 38.655354>,  <40.428932, 33.226154, 38.326305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207661, 33.278748, 38.655354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678309, 0.644348, 0.353147,
		-0.483619, 0.753344, -0.445628,
		-0.553181, 0.131485, 0.822620,
		40.041706, 33.318192, 38.902138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573429, 33.870449, 38.461655>,  <40.428932, 33.226154, 38.326305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573429, 33.870449, 38.461655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439411, 33.725849, 38.809692>,  <40.359001, 33.639088, 39.018513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439411, 33.725849, 38.809692>,  <40.573429, 33.870449, 38.461655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439411, 33.725849, 38.809692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718703, 0.499100, 0.484114,
		-0.609272, 0.787537, 0.092594,
		-0.335044, -0.361504, 0.870092,
		40.338898, 33.617397, 39.070721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371078, 34.453403, 38.871098>,  <40.573429, 33.870449, 38.461655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371078, 34.453403, 38.871098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481899, 34.152134, 39.109749>,  <40.548393, 33.971371, 39.252941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481899, 34.152134, 39.109749>,  <40.371078, 34.453403, 38.871098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481899, 34.152134, 39.109749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689565, 0.588272, 0.422417,
		-0.669135, 0.294382, 0.682347,
		0.277054, -0.753177, 0.596629,
		40.565014, 33.926182, 39.288738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481075, 34.861778, 39.501114>,  <40.371078, 34.453403, 38.871098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481075, 34.861778, 39.501114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640499, 34.498802, 39.554325>,  <40.736153, 34.281017, 39.586254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640499, 34.498802, 39.554325>,  <40.481075, 34.861778, 39.501114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640499, 34.498802, 39.554325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731661, 0.402051, 0.550480,
		-0.553014, -0.122065, 0.824182,
		0.398557, -0.907445, 0.133030,
		40.760067, 34.226570, 39.594234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665016, 34.895107, 40.099400>,  <40.481075, 34.861778, 39.501114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665016, 34.895107, 40.099400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883987, 34.592533, 39.956219>,  <41.015369, 34.410988, 39.870312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883987, 34.592533, 39.956219>,  <40.665016, 34.895107, 40.099400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883987, 34.592533, 39.956219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800771, 0.349235, 0.486622,
		-0.243089, -0.553027, 0.796912,
		0.547425, -0.756437, -0.357953,
		41.048214, 34.365601, 39.848831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807152, 34.594193, 40.671055>,  <40.665016, 34.895107, 40.099400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807152, 34.594193, 40.671055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089783, 34.523457, 40.396984>,  <41.259361, 34.481014, 40.232540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089783, 34.523457, 40.396984>,  <40.807152, 34.594193, 40.671055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089783, 34.523457, 40.396984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677697, 0.447754, 0.583304,
		0.203642, -0.876495, 0.436217,
		0.706581, -0.176838, -0.685180,
		41.301758, 34.470406, 40.191429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375786, 34.160515, 40.936859>,  <40.807152, 34.594193, 40.671055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375786, 34.160515, 40.936859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552895, 34.368256, 40.644497>,  <41.659161, 34.492901, 40.469082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552895, 34.368256, 40.644497>,  <41.375786, 34.160515, 40.936859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552895, 34.368256, 40.644497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660439, 0.362431, 0.657620,
		0.606440, -0.773896, -0.182526,
		0.442776, 0.519355, -0.730903,
		41.685726, 34.524063, 40.425224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115417, 34.086365, 41.108143>,  <41.375786, 34.160515, 40.936859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115417, 34.086365, 41.108143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047230, 34.397644, 40.866364>,  <42.006317, 34.584412, 40.721298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047230, 34.397644, 40.866364>,  <42.115417, 34.086365, 41.108143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047230, 34.397644, 40.866364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565120, 0.579723, 0.586991,
		0.807205, -0.241522, -0.538597,
		-0.170466, 0.778195, -0.604445,
		41.996090, 34.631104, 40.685032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728245, 34.405750, 41.074200>,  <42.115417, 34.086365, 41.108143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728245, 34.405750, 41.074200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462189, 34.678959, 40.953487>,  <42.302555, 34.842884, 40.881062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462189, 34.678959, 40.953487>,  <42.728245, 34.405750, 41.074200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462189, 34.678959, 40.953487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592719, 0.728739, 0.342963,
		0.454169, 0.049249, -0.889553,
		-0.665143, 0.683018, -0.301780,
		42.262646, 34.883865, 40.862953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050507, 34.985607, 40.619076>,  <42.728245, 34.405750, 41.074200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050507, 34.985607, 40.619076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719765, 35.118057, 40.800919>,  <42.521320, 35.197529, 40.910023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719765, 35.118057, 40.800919>,  <43.050507, 34.985607, 40.619076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719765, 35.118057, 40.800919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536878, 0.705519, 0.462606,
		-0.167551, 0.626575, -0.761137,
		-0.826855, 0.331127, 0.454605,
		42.471706, 35.217396, 40.937302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115593, 35.711639, 40.957466>,  <43.050507, 34.985607, 40.619076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115593, 35.711639, 40.957466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145386, 35.734474, 40.559231>,  <43.163261, 35.748173, 40.320290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145386, 35.734474, 40.559231>,  <43.115593, 35.711639, 40.957466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145386, 35.734474, 40.559231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456867, -0.885470, -0.084948,
		-0.886411, 0.461178, -0.039871,
		0.074481, 0.057083, -0.995587,
		43.167728, 35.751598, 40.260555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433376, 35.895000, 40.664574>,  <43.115593, 35.711639, 40.957466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433376, 35.895000, 40.664574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672749, 35.657047, 40.449913>,  <42.816372, 35.514275, 40.321117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672749, 35.657047, 40.449913>,  <42.433376, 35.895000, 40.664574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672749, 35.657047, 40.449913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700748, -0.713348, 0.009342,
		-0.388376, 0.370466, -0.843753,
		0.598428, -0.594886, -0.536651,
		42.852276, 35.478580, 40.288918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875576, 35.627415, 40.288425>,  <42.433376, 35.895000, 40.664574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875576, 35.627415, 40.288425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197842, 35.390472, 40.290417>,  <42.391201, 35.248306, 40.291611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197842, 35.390472, 40.290417>,  <41.875576, 35.627415, 40.288425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197842, 35.390472, 40.290417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592071, -0.805486, -0.025375,
		0.019039, 0.017498, -0.999666,
		0.805661, -0.592356, 0.004976,
		42.439541, 35.212765, 40.291908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816261, 35.328419, 39.645229>,  <41.875576, 35.627415, 40.288425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816261, 35.328419, 39.645229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000153, 35.091133, 39.909576>,  <42.110489, 34.948761, 40.068184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000153, 35.091133, 39.909576>,  <41.816261, 35.328419, 39.645229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000153, 35.091133, 39.909576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571232, -0.767322, -0.291393,
		0.679956, -0.243546, -0.691625,
		0.459731, -0.593213, 0.660867,
		42.138073, 34.913170, 40.107838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198521, 34.757309, 39.352230>,  <41.816261, 35.328419, 39.645229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198521, 34.757309, 39.352230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060757, 34.655704, 39.713753>,  <41.978100, 34.594742, 39.930664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060757, 34.655704, 39.713753>,  <42.198521, 34.757309, 39.352230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060757, 34.655704, 39.713753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679659, -0.596662, -0.426683,
		0.647647, -0.761232, 0.032857,
		-0.344409, -0.254008, 0.903805,
		41.957436, 34.579502, 39.984894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297958, 34.090149, 39.404938>,  <42.198521, 34.757309, 39.352230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297958, 34.090149, 39.404938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989285, 34.208549, 39.630108>,  <41.804081, 34.279591, 39.765209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989285, 34.208549, 39.630108>,  <42.297958, 34.090149, 39.404938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989285, 34.208549, 39.630108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596520, -0.643863, -0.479170,
		0.220610, -0.705564, 0.673432,
		-0.771683, 0.296006, 0.562926,
		41.757778, 34.297352, 39.798985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830967, 33.435425, 39.363087>,  <42.297958, 34.090149, 39.404938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830967, 33.435425, 39.363087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584068, 33.708328, 39.519817>,  <41.435928, 33.872070, 39.613853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584068, 33.708328, 39.519817>,  <41.830967, 33.435425, 39.363087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584068, 33.708328, 39.519817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785013, -0.567330, -0.248779,
		0.052562, -0.461145, 0.885767,
		-0.617245, 0.682262, 0.391825,
		41.398895, 33.913006, 39.637363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296112, 33.006771, 39.455360>,  <41.830967, 33.435425, 39.363087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296112, 33.006771, 39.455360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163624, 33.378750, 39.519218>,  <41.084129, 33.601936, 39.557533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163624, 33.378750, 39.519218>,  <41.296112, 33.006771, 39.455360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163624, 33.378750, 39.519218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943552, -0.326437, -0.056104,
		-0.000060, -0.169216, 0.985579,
		-0.331223, 0.929949, 0.159645,
		41.064259, 33.657734, 39.567112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860722, 32.992531, 40.105583>,  <41.296112, 33.006771, 39.455360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860722, 32.992531, 40.105583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766796, 33.270668, 39.833889>,  <40.710442, 33.437550, 39.670872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766796, 33.270668, 39.833889>,  <40.860722, 32.992531, 40.105583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766796, 33.270668, 39.833889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897437, -0.423547, -0.123345,
		-0.373456, 0.580611, 0.723479,
		-0.234812, 0.695341, -0.679238,
		40.696354, 33.479271, 39.630116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164928, 33.176846, 40.214634>,  <40.860722, 32.992531, 40.105583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164928, 33.176846, 40.214634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252563, 33.282997, 39.839066>,  <40.305145, 33.346687, 39.613724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252563, 33.282997, 39.839066>,  <40.164928, 33.176846, 40.214634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252563, 33.282997, 39.839066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823254, -0.466219, -0.323872,
		-0.523693, 0.843927, 0.116333,
		0.219087, 0.265381, -0.938921,
		40.318291, 33.362610, 39.557388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599232, 33.569839, 39.828758>,  <40.164928, 33.176846, 40.214634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599232, 33.569839, 39.828758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832127, 33.334404, 39.604412>,  <39.971863, 33.193142, 39.469807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832127, 33.334404, 39.604412>,  <39.599232, 33.569839, 39.828758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832127, 33.334404, 39.604412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794643, -0.557829, -0.239519,
		-0.171887, 0.585141, -0.792505,
		0.582235, -0.588589, -0.560862,
		40.006798, 33.157825, 39.436153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432278, 33.822510, 39.148914>,  <39.599232, 33.569839, 39.828758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432278, 33.822510, 39.148914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585484, 33.575741, 38.873898>,  <39.677406, 33.427681, 38.708889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585484, 33.575741, 38.873898>,  <39.432278, 33.822510, 39.148914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585484, 33.575741, 38.873898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920968, -0.197395, -0.335936,
		0.071529, 0.761870, -0.643769,
		0.383016, -0.616920, -0.687539,
		39.700390, 33.390663, 38.667637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157845, 34.033386, 38.481941>,  <39.432278, 33.822510, 39.148914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157845, 34.033386, 38.481941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229019, 33.641514, 38.518948>,  <39.271725, 33.406391, 38.541149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229019, 33.641514, 38.518948>,  <39.157845, 34.033386, 38.481941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229019, 33.641514, 38.518948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948350, -0.195809, -0.249581,
		0.262625, -0.043325, -0.963925,
		0.177932, -0.979685, 0.092511,
		39.282398, 33.347607, 38.546700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899498, 33.700794, 37.900311>,  <39.157845, 34.033386, 38.481941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899498, 33.700794, 37.900311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925434, 33.407642, 38.171215>,  <38.940998, 33.231750, 38.333759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925434, 33.407642, 38.171215>,  <38.899498, 33.700794, 37.900311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925434, 33.407642, 38.171215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942908, -0.267181, -0.198843,
		0.326679, -0.625704, -0.708361,
		0.064844, -0.732877, 0.677264,
		38.944889, 33.187778, 38.374393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474842, 33.172215, 37.610271>,  <38.899498, 33.700794, 37.900311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474842, 33.172215, 37.610271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508240, 33.046780, 37.988625>,  <38.528278, 32.971519, 38.215637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508240, 33.046780, 37.988625>,  <38.474842, 33.172215, 37.610271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508240, 33.046780, 37.988625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889071, -0.452162, -0.071431,
		0.450092, -0.834991, -0.316555,
		0.083490, -0.313591, 0.945881,
		38.533287, 32.952702, 38.272388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442120, 32.505444, 37.651325>,  <38.474842, 33.172215, 37.610271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442120, 32.505444, 37.651325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275517, 32.657536, 37.981647>,  <38.175556, 32.748791, 38.179840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275517, 32.657536, 37.981647>,  <38.442120, 32.505444, 37.651325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275517, 32.657536, 37.981647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870914, -0.427474, -0.242436,
		0.260827, -0.820178, 0.509193,
		-0.416507, 0.380229, 0.825801,
		38.150566, 32.771603, 38.229389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945267, 31.828798, 37.509983>,  <38.442120, 32.505444, 37.651325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945267, 31.828798, 37.509983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907494, 31.453176, 37.642200>,  <38.884830, 31.227804, 37.721531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907494, 31.453176, 37.642200>,  <38.945267, 31.828798, 37.509983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907494, 31.453176, 37.642200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263842, -0.343765, -0.901229,
		0.959932, 0.002109, 0.280223,
		-0.094430, -0.939053, 0.330548,
		38.879166, 31.171461, 37.741364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559612, 31.416239, 37.501194>,  <38.945267, 31.828798, 37.509983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559612, 31.416239, 37.501194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249859, 31.173903, 37.428207>,  <39.064007, 31.028500, 37.384415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249859, 31.173903, 37.428207>,  <39.559612, 31.416239, 37.501194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249859, 31.173903, 37.428207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377717, -0.211288, -0.901492,
		0.507610, -0.767015, 0.392454,
		-0.774379, -0.605843, -0.182463,
		39.017544, 30.992149, 37.373470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935993, 31.932379, 37.220619>,  <39.559612, 31.416239, 37.501194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935993, 31.932379, 37.220619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952740, 31.862097, 36.827198>,  <39.962788, 31.819927, 36.591145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952740, 31.862097, 36.827198>,  <39.935993, 31.932379, 37.220619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952740, 31.862097, 36.827198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983149, 0.168084, -0.071872,
		0.177947, 0.969988, -0.165706,
		0.041862, -0.175703, -0.983553,
		39.965298, 31.809385, 36.532131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320946, 32.587826, 36.925785>,  <39.935993, 31.932379, 37.220619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320946, 32.587826, 36.925785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549232, 32.361382, 36.687862>,  <40.686207, 32.225513, 36.545109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549232, 32.361382, 36.687862>,  <40.320946, 32.587826, 36.925785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549232, 32.361382, 36.687862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771624, 0.617483, 0.152684,
		0.280850, -0.546109, 0.789233,
		0.570719, -0.566110, -0.594810,
		40.720448, 32.191547, 36.509418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874344, 32.459656, 37.254520>,  <40.320946, 32.587826, 36.925785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874344, 32.459656, 37.254520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964985, 32.440163, 36.865414>,  <41.019371, 32.428467, 36.631950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964985, 32.440163, 36.865414>,  <40.874344, 32.459656, 37.254520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964985, 32.440163, 36.865414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566423, 0.819085, 0.090915,
		0.792348, -0.571599, 0.213211,
		0.226605, -0.048731, -0.972767,
		41.032967, 32.425545, 36.573582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601368, 32.457016, 36.959995>,  <40.874344, 32.459656, 37.254520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601368, 32.457016, 36.959995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314415, 32.636257, 36.746616>,  <41.142242, 32.743801, 36.618587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314415, 32.636257, 36.746616>,  <41.601368, 32.457016, 36.959995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314415, 32.636257, 36.746616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460702, 0.879509, 0.119240,
		0.522605, -0.160221, -0.837385,
		-0.717383, 0.448100, -0.533450,
		41.099201, 32.770687, 36.586582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866470, 32.700172, 36.281033>,  <41.601368, 32.457016, 36.959995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866470, 32.700172, 36.281033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564259, 32.935661, 36.395977>,  <41.382931, 33.076954, 36.464943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564259, 32.935661, 36.395977>,  <41.866470, 32.700172, 36.281033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564259, 32.935661, 36.395977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573735, 0.806362, -0.143561,
		-0.316238, 0.056407, -0.947002,
		-0.755528, 0.588727, 0.287364,
		41.337601, 33.112278, 36.482185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699707, 33.272015, 35.755836>,  <41.866470, 32.700172, 36.281033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699707, 33.272015, 35.755836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607700, 33.348854, 36.137451>,  <41.552494, 33.394958, 36.366421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607700, 33.348854, 36.137451>,  <41.699707, 33.272015, 35.755836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607700, 33.348854, 36.137451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584577, 0.811030, -0.022365,
		-0.778049, 0.552564, -0.298852,
		-0.230020, 0.192103, 0.954037,
		41.538696, 33.406487, 36.423664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468502, 33.993042, 35.857533>,  <41.699707, 33.272015, 35.755836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468502, 33.993042, 35.857533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650665, 33.896961, 36.200439>,  <41.759964, 33.839314, 36.406185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650665, 33.896961, 36.200439>,  <41.468502, 33.993042, 35.857533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650665, 33.896961, 36.200439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541889, 0.838787, -0.052848,
		-0.706371, 0.488611, 0.512152,
		0.455409, -0.240199, 0.857267,
		41.787289, 33.824902, 36.457619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416512, 34.545097, 36.434647>,  <41.468502, 33.993042, 35.857533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416512, 34.545097, 36.434647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745892, 34.319927, 36.406219>,  <41.943520, 34.184826, 36.389164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745892, 34.319927, 36.406219>,  <41.416512, 34.545097, 36.434647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745892, 34.319927, 36.406219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541887, 0.817366, -0.195629,
		0.168210, 0.122581, 0.978100,
		0.823446, -0.562926, -0.071064,
		41.992924, 34.151051, 36.384899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952999, 35.003948, 36.770863>,  <41.416512, 34.545097, 36.434647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952999, 35.003948, 36.770863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132103, 34.711796, 36.564541>,  <42.239563, 34.536503, 36.440746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132103, 34.711796, 36.564541>,  <41.952999, 35.003948, 36.770863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132103, 34.711796, 36.564541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749622, 0.621085, -0.228736,
		0.487423, -0.284240, 0.825607,
		0.447756, -0.730384, -0.515804,
		42.266430, 34.492680, 36.409801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629189, 34.964367, 36.945717>,  <41.952999, 35.003948, 36.770863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629189, 34.964367, 36.945717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612431, 34.838108, 36.566536>,  <42.602375, 34.762352, 36.339027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612431, 34.838108, 36.566536>,  <42.629189, 34.964367, 36.945717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612431, 34.838108, 36.566536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620089, 0.735729, -0.272384,
		0.783413, -0.599224, 0.164909,
		-0.041891, -0.315647, -0.947952,
		42.599865, 34.743416, 36.282150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291321, 34.576977, 36.663734>,  <42.629189, 34.964367, 36.945717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291321, 34.576977, 36.663734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061775, 34.765633, 36.395931>,  <42.924049, 34.878826, 36.235249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061775, 34.765633, 36.395931>,  <43.291321, 34.576977, 36.663734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061775, 34.765633, 36.395931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733469, 0.659642, -0.163996,
		0.364291, -0.585175, -0.724473,
		-0.573860, 0.471637, -0.669510,
		42.889618, 34.907124, 36.195080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825336, 35.104691, 36.656326>,  <43.291321, 34.576977, 36.663734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825336, 35.104691, 36.656326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141792, 34.950718, 36.466202>,  <44.331665, 34.858334, 36.352127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141792, 34.950718, 36.466202>,  <43.825336, 35.104691, 36.656326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141792, 34.950718, 36.466202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300495, 0.921487, -0.246099,
		0.532723, 0.051872, 0.844699,
		0.791144, -0.384930, -0.475310,
		44.379135, 34.835239, 36.323608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032932, 34.374001, 36.871002>,  <43.825336, 35.104691, 36.656326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032932, 34.374001, 36.871002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144852, 34.077229, 36.627281>,  <44.212006, 33.899166, 36.481049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144852, 34.077229, 36.627281>,  <44.032932, 34.374001, 36.871002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144852, 34.077229, 36.627281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533895, 0.647711, -0.543531,
		0.797913, -0.173220, 0.577347,
		0.279803, -0.741934, -0.609298,
		44.228794, 33.854649, 36.444492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628880, 34.591099, 37.002365>,  <44.032932, 34.374001, 36.871002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628880, 34.591099, 37.002365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589592, 34.361092, 36.677475>,  <44.566021, 34.223087, 36.482540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589592, 34.361092, 36.677475>,  <44.628880, 34.591099, 37.002365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589592, 34.361092, 36.677475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766219, 0.477117, -0.430427,
		0.635030, -0.664616, 0.393729,
		-0.098214, -0.575016, -0.812225,
		44.560127, 34.188587, 36.433807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382420, 34.326073, 36.837406>,  <44.628880, 34.591099, 37.002365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382420, 34.326073, 36.837406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142937, 34.318424, 36.517109>,  <44.999249, 34.313835, 36.324932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142937, 34.318424, 36.517109>,  <45.382420, 34.326073, 36.837406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142937, 34.318424, 36.517109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747573, 0.345570, -0.567200,
		0.287557, -0.938198, -0.192601,
		-0.598703, -0.019119, -0.800742,
		44.963326, 34.312687, 36.276886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750439, 33.914261, 36.365311>,  <45.382420, 34.326073, 36.837406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750439, 33.914261, 36.365311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489246, 34.151035, 36.176323>,  <45.332531, 34.293102, 36.062931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489246, 34.151035, 36.176323>,  <45.750439, 33.914261, 36.365311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489246, 34.151035, 36.176323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670974, 0.162777, -0.723393,
		-0.351299, -0.789373, -0.503467,
		-0.652980, 0.591940, -0.472466,
		45.293354, 34.328617, 36.034584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953979, 33.736267, 35.780197>,  <45.750439, 33.914261, 36.365311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953979, 33.736267, 35.780197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741070, 34.066486, 35.705193>,  <45.613323, 34.264618, 35.660191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741070, 34.066486, 35.705193>,  <45.953979, 33.736267, 35.780197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741070, 34.066486, 35.705193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542297, 0.162410, -0.824340,
		-0.650079, -0.540457, -0.534138,
		-0.532270, 0.825548, -0.187509,
		45.581390, 34.314152, 35.648941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454662, 33.645172, 35.178722>,  <45.953979, 33.736267, 35.780197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454662, 33.645172, 35.178722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619549, 34.005127, 35.235695>,  <45.718479, 34.221100, 35.269878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619549, 34.005127, 35.235695>,  <45.454662, 33.645172, 35.178722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619549, 34.005127, 35.235695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299454, 0.013829, -0.954010,
		-0.860470, 0.435907, -0.263774,
		0.412212, 0.899886, 0.142434,
		45.743214, 34.275093, 35.278423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180855, 34.005402, 34.663586>,  <45.454662, 33.645172, 35.178722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180855, 34.005402, 34.663586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495819, 34.221001, 34.783230>,  <45.684795, 34.350361, 34.855019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495819, 34.221001, 34.783230>,  <45.180855, 34.005402, 34.663586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495819, 34.221001, 34.783230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168651, 0.278352, -0.945556,
		-0.592915, 0.794983, 0.128273,
		0.787406, 0.539001, 0.299114,
		45.732040, 34.382702, 34.872963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349937, 34.751530, 34.465305>,  <45.180855, 34.005402, 34.663586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349937, 34.751530, 34.465305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721943, 34.623665, 34.537861>,  <45.945145, 34.546947, 34.581394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721943, 34.623665, 34.537861>,  <45.349937, 34.751530, 34.465305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721943, 34.623665, 34.537861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202894, 0.035013, -0.978575,
		0.306458, 0.946886, 0.097419,
		0.930009, -0.319658, 0.181387,
		46.000946, 34.527767, 34.592278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933163, 35.182041, 34.171646>,  <45.349937, 34.751530, 34.465305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933163, 35.182041, 34.171646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017075, 34.793213, 34.213718>,  <46.067421, 34.559914, 34.238960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017075, 34.793213, 34.213718>,  <45.933163, 35.182041, 34.171646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017075, 34.793213, 34.213718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193603, -0.146741, -0.970044,
		0.958390, 0.183132, -0.218980,
		0.209780, -0.972075, 0.105180,
		46.080009, 34.501591, 34.245274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033108, 34.834164, 33.451824>,  <45.933163, 35.182041, 34.171646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033108, 34.834164, 33.451824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027950, 34.512398, 33.689396>,  <46.024857, 34.319340, 33.831940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027950, 34.512398, 33.689396>,  <46.033108, 34.834164, 33.451824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027950, 34.512398, 33.689396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134416, -0.587191, -0.798210,
		0.990841, -0.090129, -0.100553,
		-0.012898, -0.804415, 0.593928,
		46.024082, 34.271072, 33.867573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.581474, 35.322647, 33.549152>,  <46.033108, 34.834164, 33.451824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.581474, 35.322647, 33.549152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846863, 35.606007, 33.452839>,  <47.006096, 35.776024, 33.395050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846863, 35.606007, 33.452839>,  <46.581474, 35.322647, 33.549152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.846863, 35.606007, 33.452839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412570, -0.614850, -0.672120,
		-0.624176, 0.346591, -0.700199,
		0.663468, 0.708403, -0.240782,
		47.045902, 35.818527, 33.380604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.611050, 35.750462, 34.099407>,  <46.581474, 35.322647, 33.549152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.611050, 35.750462, 34.099407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008106, 35.735184, 34.145363>,  <47.246342, 35.726017, 34.172935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008106, 35.735184, 34.145363>,  <46.611050, 35.750462, 34.099407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.008106, 35.735184, 34.145363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120954, -0.354796, 0.927087,
		0.005354, -0.934163, -0.356806,
		0.992643, -0.038194, 0.114890,
		47.305901, 35.723724, 34.179829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750488, 35.076790, 34.329327>,  <46.611050, 35.750462, 34.099407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750488, 35.076790, 34.329327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074306, 35.276340, 34.453102>,  <47.268597, 35.396072, 34.527367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074306, 35.276340, 34.453102>,  <46.750488, 35.076790, 34.329327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074306, 35.276340, 34.453102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058154, -0.456365, 0.887890,
		0.584164, -0.736787, -0.340438,
		0.809550, 0.498876, 0.309439,
		47.317173, 35.426003, 34.545933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.220196, 34.555611, 34.402493>,  <46.750488, 35.076790, 34.329327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.220196, 34.555611, 34.402493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.286472, 34.876476, 34.631954>,  <47.326237, 35.068996, 34.769630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.286472, 34.876476, 34.631954>,  <47.220196, 34.555611, 34.402493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.286472, 34.876476, 34.631954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041194, -0.586812, 0.808674,
		0.985317, -0.110359, -0.130274,
		0.165691, 0.802167, 0.573650,
		47.336178, 35.117126, 34.804050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.768070, 34.670193, 34.909485>,  <47.220196, 34.555611, 34.402493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.768070, 34.670193, 34.909485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853100, 34.980465, 34.671783>,  <47.904118, 35.166626, 34.529163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853100, 34.980465, 34.671783>,  <47.768070, 34.670193, 34.909485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.853100, 34.980465, 34.671783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731905, 0.529322, 0.429107,
		0.647399, 0.343718, 0.680245,
		0.212576, 0.775678, -0.594251,
		47.916874, 35.213169, 34.493507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.508484, 33.242271, 25.320858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118816, 33.312428, 25.263969>,  <34.885014, 33.354523, 25.229836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118816, 33.312428, 25.263969>,  <35.508484, 33.242271, 25.320858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118816, 33.312428, 25.263969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143690, 0.004370, 0.989613,
		0.174192, 0.984489, 0.020945,
		-0.974172, 0.175392, -0.142223,
		34.826565, 33.365044, 25.221302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340733, 33.704983, 25.822628>,  <35.508484, 33.242271, 25.320858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340733, 33.704983, 25.822628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000767, 33.527214, 25.709393>,  <34.796787, 33.420555, 25.641451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000767, 33.527214, 25.709393>,  <35.340733, 33.704983, 25.822628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000767, 33.527214, 25.709393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355837, 0.087848, 0.930410,
		-0.388623, 0.891501, -0.232804,
		-0.849913, -0.444420, -0.283089,
		34.745792, 33.393887, 25.624466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769184, 34.061073, 26.160717>,  <35.340733, 33.704983, 25.822628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769184, 34.061073, 26.160717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.589516, 33.718967, 26.057356>,  <34.481712, 33.513706, 25.995340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.589516, 33.718967, 26.057356>,  <34.769184, 34.061073, 26.160717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589516, 33.718967, 26.057356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469057, -0.020419, 0.882932,
		-0.760414, 0.517794, -0.391994,
		-0.449173, -0.855261, -0.258402,
		34.454765, 33.462387, 25.979836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097332, 34.196407, 26.342659>,  <34.769184, 34.061073, 26.160717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097332, 34.196407, 26.342659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.109272, 33.797596, 26.314270>,  <34.116436, 33.558308, 26.297235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.109272, 33.797596, 26.314270>,  <34.097332, 34.196407, 26.342659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109272, 33.797596, 26.314270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341236, -0.076904, 0.936826,
		-0.939504, -0.003746, -0.342519,
		0.029851, -0.997032, -0.070974,
		34.118229, 33.498486, 26.292978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652092, 34.032249, 26.743727>,  <34.097332, 34.196407, 26.342659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652092, 34.032249, 26.743727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.849804, 33.684971, 26.726173>,  <33.968430, 33.476604, 26.715641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.849804, 33.684971, 26.726173>,  <33.652092, 34.032249, 26.743727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849804, 33.684971, 26.726173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226194, -0.177190, 0.957831,
		-0.839361, -0.463506, -0.283962,
		0.494276, -0.868197, -0.043884,
		33.998085, 33.424511, 26.713009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213249, 33.534695, 26.946638>,  <33.652092, 34.032249, 26.743727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213249, 33.534695, 26.946638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592331, 33.434170, 27.025331>,  <33.819778, 33.373856, 27.072548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592331, 33.434170, 27.025331>,  <33.213249, 33.534695, 26.946638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592331, 33.434170, 27.025331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267084, -0.287037, 0.919932,
		-0.174717, -0.924367, -0.339147,
		0.947703, -0.251309, 0.196733,
		33.876640, 33.358776, 27.084351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200260, 32.807743, 27.210428>,  <33.213249, 33.534695, 26.946638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200260, 32.807743, 27.210428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558495, 32.934372, 27.335464>,  <33.773434, 33.010349, 27.410486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558495, 32.934372, 27.335464>,  <33.200260, 32.807743, 27.210428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558495, 32.934372, 27.335464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175521, -0.394208, 0.902104,
		0.408805, -0.862776, -0.297482,
		0.895584, 0.316570, 0.312590,
		33.827171, 33.029343, 27.429241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486786, 32.262676, 27.634108>,  <33.200260, 32.807743, 27.210428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486786, 32.262676, 27.634108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.713253, 32.576771, 27.734385>,  <33.849133, 32.765228, 27.794550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.713253, 32.576771, 27.734385>,  <33.486786, 32.262676, 27.634108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713253, 32.576771, 27.734385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117050, -0.224462, 0.967428,
		0.815935, -0.577073, -0.035172,
		0.566171, 0.785241, 0.250692,
		33.883106, 32.812344, 27.809593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834164, 32.055073, 28.160107>,  <33.486786, 32.262676, 27.634108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834164, 32.055073, 28.160107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873470, 32.449745, 28.211954>,  <33.897057, 32.686550, 28.243063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873470, 32.449745, 28.211954>,  <33.834164, 32.055073, 28.160107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873470, 32.449745, 28.211954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247549, -0.101916, 0.963500,
		0.963879, -0.126771, 0.234237,
		0.098271, 0.986683, 0.129616,
		33.902950, 32.745750, 28.250839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395382, 32.154148, 28.677431>,  <33.834164, 32.055073, 28.160107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395382, 32.154148, 28.677431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.174946, 32.487213, 28.655592>,  <34.042686, 32.687050, 28.642488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.174946, 32.487213, 28.655592>,  <34.395382, 32.154148, 28.677431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174946, 32.487213, 28.655592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037913, 0.040378, 0.998465,
		0.833585, 0.552312, 0.009317,
		-0.551088, 0.832659, -0.054599,
		34.009621, 32.737011, 28.639212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790142, 32.703850, 29.097185>,  <34.395382, 32.154148, 28.677431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790142, 32.703850, 29.097185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398712, 32.784855, 29.082289>,  <34.163857, 32.833458, 29.073351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398712, 32.784855, 29.082289>,  <34.790142, 32.703850, 29.097185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398712, 32.784855, 29.082289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016297, 0.104115, 0.994432,
		0.205264, 0.973729, -0.098584,
		-0.978571, 0.202515, -0.037240,
		34.105141, 32.845608, 29.071117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737972, 33.194420, 29.579958>,  <34.790142, 32.703850, 29.097185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737972, 33.194420, 29.579958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366039, 33.066441, 29.507248>,  <34.142879, 32.989655, 29.463623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.366039, 33.066441, 29.507248>,  <34.737972, 33.194420, 29.579958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366039, 33.066441, 29.507248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159107, -0.095849, 0.982598,
		-0.331802, 0.942575, 0.038218,
		-0.929835, -0.319947, -0.181773,
		34.087090, 32.970455, 29.452717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201252, 33.523952, 30.062672>,  <34.737972, 33.194420, 29.579958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201252, 33.523952, 30.062672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040623, 33.176708, 29.945972>,  <33.944244, 32.968361, 29.875954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040623, 33.176708, 29.945972>,  <34.201252, 33.523952, 30.062672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040623, 33.176708, 29.945972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192130, -0.231615, 0.953646,
		-0.895446, 0.439013, -0.073780,
		-0.401575, -0.868114, -0.291746,
		33.920151, 32.916275, 29.858448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477413, 33.432590, 30.525650>,  <34.201252, 33.523952, 30.062672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477413, 33.432590, 30.525650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594387, 33.083324, 30.369665>,  <33.664574, 32.873764, 30.276075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594387, 33.083324, 30.369665>,  <33.477413, 33.432590, 30.525650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594387, 33.083324, 30.369665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192573, -0.453204, 0.870357,
		-0.936694, -0.179429, -0.300681,
		0.292437, -0.873161, -0.389961,
		33.682117, 32.821377, 30.252676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882317, 33.099426, 30.592579>,  <33.477413, 33.432590, 30.525650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882317, 33.099426, 30.592579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.202518, 32.859795, 30.599449>,  <33.394642, 32.716015, 30.603571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.202518, 32.859795, 30.599449>,  <32.882317, 33.099426, 30.592579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202518, 32.859795, 30.599449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346994, -0.439917, 0.828292,
		-0.488659, -0.669011, -0.560033,
		0.800505, -0.599081, 0.017173,
		33.442669, 32.680073, 30.604601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621204, 32.418350, 30.935865>,  <32.882317, 33.099426, 30.592579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621204, 32.418350, 30.935865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.019161, 32.409576, 30.975281>,  <33.257935, 32.404312, 30.998930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.019161, 32.409576, 30.975281>,  <32.621204, 32.418350, 30.935865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019161, 32.409576, 30.975281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100661, -0.289222, 0.951955,
		0.007619, -0.957011, -0.289952,
		0.994891, -0.021933, 0.098537,
		33.317627, 32.402996, 31.004843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732918, 31.941048, 31.398460>,  <32.621204, 32.418350, 30.935865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732918, 31.941048, 31.398460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.092640, 32.111885, 31.436062>,  <33.308475, 32.214390, 31.458622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.092640, 32.111885, 31.436062>,  <32.732918, 31.941048, 31.398460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092640, 32.111885, 31.436062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021941, -0.170615, 0.985093,
		0.436767, -0.887964, -0.144064,
		0.899307, 0.427095, 0.094002,
		33.362431, 32.240013, 31.464262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955978, 31.604216, 31.989695>,  <32.732918, 31.941048, 31.398460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955978, 31.604216, 31.989695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.209721, 31.907495, 31.929403>,  <33.361965, 32.089462, 31.893229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.209721, 31.907495, 31.929403>,  <32.955978, 31.604216, 31.989695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209721, 31.907495, 31.929403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287449, -0.050354, 0.956471,
		0.717608, -0.650074, -0.249886,
		0.634360, 0.758201, -0.150729,
		33.400028, 32.134956, 31.884184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573559, 31.391644, 32.161224>,  <32.955978, 31.604216, 31.989695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573559, 31.391644, 32.161224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614250, 31.786783, 32.208225>,  <33.638664, 32.023869, 32.236423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614250, 31.786783, 32.208225>,  <33.573559, 31.391644, 32.161224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614250, 31.786783, 32.208225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288874, -0.142356, 0.946724,
		0.951947, -0.062362, -0.299845,
		0.101724, 0.987849, 0.117500,
		33.644768, 32.083138, 32.243477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254028, 31.484524, 32.507034>,  <33.573559, 31.391644, 32.161224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254028, 31.484524, 32.507034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041725, 31.813925, 32.587173>,  <33.914341, 32.011566, 32.635258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041725, 31.813925, 32.587173>,  <34.254028, 31.484524, 32.507034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041725, 31.813925, 32.587173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385388, 0.023966, 0.922443,
		0.754831, 0.566809, -0.330088,
		-0.530760, 0.823501, 0.200351,
		33.882496, 32.060974, 32.647278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639309, 31.836691, 33.064716>,  <34.254028, 31.484524, 32.507034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639309, 31.836691, 33.064716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268478, 31.986553, 33.069935>,  <34.045982, 32.076469, 33.073067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268478, 31.986553, 33.069935>,  <34.639309, 31.836691, 33.064716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268478, 31.986553, 33.069935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016973, 0.007173, 0.999830,
		0.374497, 0.927137, -0.013008,
		-0.927073, 0.374655, 0.013050,
		33.990356, 32.098949, 33.073849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820011, 31.968023, 33.784920>,  <34.639309, 31.836691, 33.064716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820011, 31.968023, 33.784920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144855, 31.735399, 33.765907>,  <35.339764, 31.595825, 33.754498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144855, 31.735399, 33.765907>,  <34.820011, 31.968023, 33.784920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144855, 31.735399, 33.765907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051286, 0.010004, -0.998634,
		0.581243, 0.813441, -0.021702,
		0.812113, -0.581562, -0.047533,
		35.388489, 31.560930, 33.751648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254456, 32.175301, 33.178967>,  <34.820011, 31.968023, 33.784920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254456, 32.175301, 33.178967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352352, 31.795748, 33.258686>,  <35.411091, 31.568014, 33.306519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352352, 31.795748, 33.258686>,  <35.254456, 32.175301, 33.178967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352352, 31.795748, 33.258686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079359, -0.224460, -0.971246,
		0.966336, 0.221884, -0.130236,
		0.244737, -0.948886, 0.199296,
		35.425774, 31.511082, 33.318474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759426, 32.025112, 32.730965>,  <35.254456, 32.175301, 33.178967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759426, 32.025112, 32.730965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669189, 31.652220, 32.844139>,  <35.615047, 31.428484, 32.912045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669189, 31.652220, 32.844139>,  <35.759426, 32.025112, 32.730965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669189, 31.652220, 32.844139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108506, -0.312661, -0.943647,
		0.968161, -0.182177, 0.171686,
		-0.225591, -0.932231, 0.282938,
		35.601513, 31.372551, 32.929020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312817, 31.461535, 32.688023>,  <35.759426, 32.025112, 32.730965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312817, 31.461535, 32.688023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971561, 31.257380, 32.644836>,  <35.766808, 31.134886, 32.618923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971561, 31.257380, 32.644836>,  <36.312817, 31.461535, 32.688023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971561, 31.257380, 32.644836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289304, -0.290649, -0.912045,
		0.434115, -0.809338, 0.395622,
		-0.853140, -0.510387, -0.107970,
		35.715618, 31.104263, 32.612446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526196, 30.911953, 32.266602>,  <36.312817, 31.461535, 32.688023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526196, 30.911953, 32.266602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128376, 30.882469, 32.237087>,  <35.889687, 30.864779, 32.219379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128376, 30.882469, 32.237087>,  <36.526196, 30.911953, 32.266602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128376, 30.882469, 32.237087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098238, -0.424378, -0.900140,
		0.035035, -0.902480, 0.429305,
		-0.994546, -0.073711, -0.073789,
		35.830013, 30.860355, 32.214951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423691, 30.261040, 32.042175>,  <36.526196, 30.911953, 32.266602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423691, 30.261040, 32.042175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083076, 30.451336, 31.954041>,  <35.878708, 30.565514, 31.901159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083076, 30.451336, 31.954041>,  <36.423691, 30.261040, 32.042175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083076, 30.451336, 31.954041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075440, -0.304711, -0.949453,
		-0.518835, -0.825119, 0.223584,
		-0.851540, 0.475742, -0.220342,
		35.827614, 30.594059, 31.887938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098732, 29.892221, 31.476797>,  <36.423691, 30.261040, 32.042175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098732, 29.892221, 31.476797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951645, 30.264036, 31.465874>,  <35.863392, 30.487125, 31.459320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951645, 30.264036, 31.465874>,  <36.098732, 29.892221, 31.476797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951645, 30.264036, 31.465874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158728, 0.033802, -0.986744,
		-0.916290, -0.367180, -0.159973,
		-0.367720, 0.929536, -0.027309,
		35.841328, 30.542896, 31.457682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718178, 29.841585, 30.902660>,  <36.098732, 29.892221, 31.476797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718178, 29.841585, 30.902660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777130, 30.235466, 30.939850>,  <35.812500, 30.471794, 30.962164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777130, 30.235466, 30.939850>,  <35.718178, 29.841585, 30.902660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777130, 30.235466, 30.939850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280344, 0.048555, -0.958671,
		-0.948518, 0.167354, -0.268898,
		0.147381, 0.984700, 0.092972,
		35.821342, 30.530876, 30.967741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448196, 30.124901, 30.285517>,  <35.718178, 29.841585, 30.902660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448196, 30.124901, 30.285517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660542, 30.433298, 30.426235>,  <35.787949, 30.618336, 30.510666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660542, 30.433298, 30.426235>,  <35.448196, 30.124901, 30.285517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660542, 30.433298, 30.426235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318426, 0.203230, -0.925906,
		-0.785362, 0.603545, -0.137618,
		0.530858, 0.770993, 0.351794,
		35.819798, 30.664597, 30.531773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277054, 30.650631, 29.906792>,  <35.448196, 30.124901, 30.285517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277054, 30.650631, 29.906792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614120, 30.786085, 30.074238>,  <35.816360, 30.867357, 30.174706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614120, 30.786085, 30.074238>,  <35.277054, 30.650631, 29.906792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614120, 30.786085, 30.074238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347826, 0.251111, -0.903305,
		-0.411010, 0.906791, 0.093817,
		0.842667, 0.338635, 0.418614,
		35.866920, 30.887676, 30.199821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364296, 31.364239, 29.705936>,  <35.277054, 30.650631, 29.906792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364296, 31.364239, 29.705936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716591, 31.191023, 29.782648>,  <35.927967, 31.087093, 29.828674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716591, 31.191023, 29.782648>,  <35.364296, 31.364239, 29.705936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716591, 31.191023, 29.782648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383690, 0.415029, -0.824945,
		0.277641, 0.800142, 0.531684,
		0.880737, -0.433040, 0.191777,
		35.980812, 31.061111, 29.840181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834362, 31.888126, 29.678930>,  <35.364296, 31.364239, 29.705936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834362, 31.888126, 29.678930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030613, 31.543112, 29.629440>,  <36.148365, 31.336103, 29.599747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030613, 31.543112, 29.629440>,  <35.834362, 31.888126, 29.678930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030613, 31.543112, 29.629440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363585, 0.331686, -0.870512,
		0.791888, 0.382116, 0.476342,
		0.490632, -0.862538, -0.123726,
		36.177803, 31.284349, 29.592323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527195, 32.077187, 29.476559>,  <35.834362, 31.888126, 29.678930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527195, 32.077187, 29.476559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494091, 31.692513, 29.372005>,  <36.474228, 31.461708, 29.309275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494091, 31.692513, 29.372005>,  <36.527195, 32.077187, 29.476559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494091, 31.692513, 29.372005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383469, 0.211357, -0.899044,
		0.919839, -0.174634, 0.351283,
		-0.082757, -0.961682, -0.261381,
		36.469265, 31.404009, 29.293591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245762, 31.706463, 29.280207>,  <36.527195, 32.077187, 29.476559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245762, 31.706463, 29.280207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958691, 31.509787, 29.082954>,  <36.786446, 31.391781, 28.964603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958691, 31.509787, 29.082954>,  <37.245762, 31.706463, 29.280207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958691, 31.509787, 29.082954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500089, 0.128893, -0.856328,
		0.484608, -0.861178, 0.153385,
		-0.717681, -0.491689, -0.493128,
		36.743385, 31.362280, 28.935017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596180, 31.486967, 28.709528>,  <37.245762, 31.706463, 29.280207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596180, 31.486967, 28.709528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213554, 31.407583, 28.624105>,  <36.983978, 31.359953, 28.572853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213554, 31.407583, 28.624105>,  <37.596180, 31.486967, 28.709528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213554, 31.407583, 28.624105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230045, -0.063855, -0.971083,
		0.179083, -0.978027, 0.106736,
		-0.956561, -0.198459, -0.213554,
		36.926586, 31.348045, 28.560040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557919, 30.921528, 28.211538>,  <37.596180, 31.486967, 28.709528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557919, 30.921528, 28.211538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198566, 31.092661, 28.171793>,  <36.982956, 31.195341, 28.147945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198566, 31.092661, 28.171793>,  <37.557919, 30.921528, 28.211538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198566, 31.092661, 28.171793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127860, 0.038313, -0.991052,
		-0.420199, -0.903045, -0.089123,
		-0.898379, 0.427834, -0.099365,
		36.929054, 31.221010, 28.141983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329254, 30.627239, 27.667122>,  <37.557919, 30.921528, 28.211538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329254, 30.627239, 27.667122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078545, 30.938414, 27.684849>,  <36.928120, 31.125118, 27.695484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078545, 30.938414, 27.684849>,  <37.329254, 30.627239, 27.667122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078545, 30.938414, 27.684849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070670, -0.000114, -0.997500,
		-0.775987, -0.628343, 0.055048,
		-0.626778, 0.777937, 0.044316,
		36.890511, 31.171795, 27.698143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903034, 30.569532, 27.076651>,  <37.329254, 30.627239, 27.667122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903034, 30.569532, 27.076651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848499, 30.950813, 27.184591>,  <36.815777, 31.179581, 27.249355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848499, 30.950813, 27.184591>,  <36.903034, 30.569532, 27.076651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848499, 30.950813, 27.184591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076135, 0.261506, -0.962195,
		-0.987732, -0.151729, 0.036918,
		-0.136339, 0.953202, 0.269850,
		36.807598, 31.236774, 27.265547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428066, 30.851023, 26.595999>,  <36.903034, 30.569532, 27.076651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428066, 30.851023, 26.595999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610416, 31.157135, 26.777777>,  <36.719826, 31.340803, 26.886843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610416, 31.157135, 26.777777>,  <36.428066, 30.851023, 26.595999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610416, 31.157135, 26.777777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172702, 0.424824, -0.888650,
		-0.873126, 0.483599, 0.061502,
		0.455878, 0.765282, 0.454443,
		36.747181, 31.386719, 26.914110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.059780, 31.424202, 26.376617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414703, 31.564329, 26.496593>,  <36.627659, 31.648405, 26.568579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414703, 31.564329, 26.496593>,  <36.059780, 31.424202, 26.376617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414703, 31.564329, 26.496593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037358, 0.593637, -0.803866,
		-0.459664, 0.724481, 0.513650,
		0.887307, 0.350319, 0.299939,
		36.680897, 31.669424, 26.586575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057835, 32.047295, 26.090416>,  <36.059780, 31.424202, 26.376617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057835, 32.047295, 26.090416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448563, 32.004036, 26.164312>,  <36.682999, 31.978081, 26.208651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448563, 32.004036, 26.164312>,  <36.057835, 32.047295, 26.090416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448563, 32.004036, 26.164312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212644, 0.589638, -0.779172,
		-0.024663, 0.800394, 0.598966,
		0.976818, -0.108149, 0.184741,
		36.741608, 31.971592, 26.219734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233807, 32.749580, 26.044168>,  <36.057835, 32.047295, 26.090416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233807, 32.749580, 26.044168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555141, 32.520535, 25.978729>,  <36.747940, 32.383106, 25.939466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555141, 32.520535, 25.978729>,  <36.233807, 32.749580, 26.044168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555141, 32.520535, 25.978729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291756, 0.617902, -0.730120,
		0.519167, 0.538799, 0.663447,
		0.803333, -0.572619, -0.163596,
		36.796143, 32.348747, 25.929651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733440, 33.227142, 25.995972>,  <36.233807, 32.749580, 26.044168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733440, 33.227142, 25.995972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872890, 32.889069, 25.833920>,  <36.956562, 32.686226, 25.736689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872890, 32.889069, 25.833920>,  <36.733440, 33.227142, 25.995972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872890, 32.889069, 25.833920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133874, 0.472721, -0.870984,
		0.927652, 0.249410, 0.277950,
		0.348624, -0.845180, -0.405131,
		36.977478, 32.635513, 25.712379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351540, 33.439034, 25.708559>,  <36.733440, 33.227142, 25.995972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351540, 33.439034, 25.708559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282887, 33.102043, 25.504293>,  <37.241695, 32.899849, 25.381735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282887, 33.102043, 25.504293>,  <37.351540, 33.439034, 25.708559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282887, 33.102043, 25.504293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308355, 0.446369, -0.840043,
		0.935659, -0.301646, 0.183169,
		-0.171635, -0.842475, -0.510663,
		37.231396, 32.849300, 25.351095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930428, 33.390278, 25.148287>,  <37.351540, 33.439034, 25.708559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930428, 33.390278, 25.148287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621365, 33.159855, 25.041586>,  <37.435925, 33.021603, 24.977566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621365, 33.159855, 25.041586>,  <37.930428, 33.390278, 25.148287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621365, 33.159855, 25.041586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023148, 0.394357, -0.918666,
		0.634397, -0.715992, -0.291369,
		-0.772661, -0.576054, -0.266753,
		37.389565, 32.987038, 24.961559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199257, 32.862579, 24.613113>,  <37.930428, 33.390278, 25.148287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199257, 32.862579, 24.613113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803753, 32.907192, 24.573299>,  <37.566448, 32.933960, 24.549412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803753, 32.907192, 24.573299>,  <38.199257, 32.862579, 24.613113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803753, 32.907192, 24.573299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134369, 0.371343, -0.918722,
		-0.065506, -0.921773, -0.382157,
		-0.988764, 0.111532, -0.099533,
		37.507122, 32.940651, 24.543440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101490, 32.663216, 23.956615>,  <38.199257, 32.862579, 24.613113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101490, 32.663216, 23.956615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767635, 32.874668, 24.018492>,  <37.567322, 33.001537, 24.055618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767635, 32.874668, 24.018492>,  <38.101490, 32.663216, 23.956615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767635, 32.874668, 24.018492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147966, 0.485721, -0.861499,
		-0.530551, -0.696151, -0.483621,
		-0.834639, 0.528629, 0.154693,
		37.517242, 33.033257, 24.064899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796524, 32.593319, 23.335543>,  <38.101490, 32.663216, 23.956615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796524, 32.593319, 23.335543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627205, 32.917652, 23.497213>,  <37.525612, 33.112251, 23.594215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627205, 32.917652, 23.497213>,  <37.796524, 32.593319, 23.335543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627205, 32.917652, 23.497213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000298, 0.445993, -0.895037,
		-0.905989, -0.378990, -0.188547,
		-0.423300, 0.810838, 0.404178,
		37.500214, 33.160904, 23.618467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113338, 32.696594, 23.012228>,  <37.796524, 32.593319, 23.335543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113338, 32.696594, 23.012228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234528, 33.052074, 23.149881>,  <37.307240, 33.265362, 23.232473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234528, 33.052074, 23.149881>,  <37.113338, 32.696594, 23.012228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234528, 33.052074, 23.149881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115122, 0.392590, -0.912480,
		-0.946021, 0.236839, 0.221252,
		0.302972, 0.888696, 0.344133,
		37.325420, 33.318684, 23.253120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727455, 33.131660, 22.605246>,  <37.113338, 32.696594, 23.012228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727455, 33.131660, 22.605246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987045, 33.396111, 22.755842>,  <37.142799, 33.554779, 22.846199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987045, 33.396111, 22.755842>,  <36.727455, 33.131660, 22.605246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987045, 33.396111, 22.755842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074201, 0.437494, -0.896154,
		-0.757183, 0.609517, 0.234866,
		0.648974, 0.661126, 0.376491,
		37.181736, 33.594448, 22.868790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624477, 33.683949, 22.233046>,  <36.727455, 33.131660, 22.605246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624477, 33.683949, 22.233046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957767, 33.811024, 22.414068>,  <37.157742, 33.887268, 22.522682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957767, 33.811024, 22.414068>,  <36.624477, 33.683949, 22.233046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957767, 33.811024, 22.414068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243774, 0.523573, -0.816361,
		-0.496291, 0.790537, 0.358813,
		0.833228, 0.317684, 0.452557,
		37.207737, 33.906330, 22.549835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658596, 34.470299, 22.189814>,  <36.624477, 33.683949, 22.233046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658596, 34.470299, 22.189814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017097, 34.295383, 22.219507>,  <37.232197, 34.190434, 22.237324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017097, 34.295383, 22.219507>,  <36.658596, 34.470299, 22.189814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017097, 34.295383, 22.219507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271726, 0.409044, -0.871119,
		0.350567, 0.800913, 0.485429,
		0.896252, -0.437289, 0.074232,
		37.285973, 34.164196, 22.241777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052586, 34.896088, 21.932936>,  <36.658596, 34.470299, 22.189814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052586, 34.896088, 21.932936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304893, 34.587265, 21.901833>,  <37.456280, 34.401970, 21.883171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304893, 34.587265, 21.901833>,  <37.052586, 34.896088, 21.932936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304893, 34.587265, 21.901833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327589, 0.355795, -0.875269,
		0.703427, 0.526624, 0.477345,
		0.630774, -0.772060, -0.077759,
		37.494125, 34.355648, 21.878504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715305, 35.158054, 21.683950>,  <37.052586, 34.896088, 21.932936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715305, 35.158054, 21.683950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753345, 34.769516, 21.596832>,  <37.776169, 34.536392, 21.544561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753345, 34.769516, 21.596832>,  <37.715305, 35.158054, 21.683950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753345, 34.769516, 21.596832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404923, 0.237615, -0.882936,
		0.909392, -0.004222, 0.415919,
		0.095101, -0.971350, -0.217795,
		37.781876, 34.478111, 21.531494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267887, 35.101677, 21.243095>,  <37.715305, 35.158054, 21.683950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267887, 35.101677, 21.243095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113773, 34.741459, 21.162521>,  <38.021305, 34.525330, 21.114178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113773, 34.741459, 21.162521>,  <38.267887, 35.101677, 21.243095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113773, 34.741459, 21.162521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385769, 0.041117, -0.921679,
		0.838296, -0.432814, 0.331560,
		-0.385283, -0.900545, -0.201434,
		37.998188, 34.471294, 21.102091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748138, 34.624001, 20.876596>,  <38.267887, 35.101677, 21.243095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748138, 34.624001, 20.876596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388096, 34.502075, 20.752081>,  <38.172070, 34.428921, 20.677372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388096, 34.502075, 20.752081>,  <38.748138, 34.624001, 20.876596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388096, 34.502075, 20.752081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314313, 0.040453, -0.948457,
		0.301698, -0.951551, 0.059396,
		-0.900103, -0.304817, -0.311290,
		38.118065, 34.410629, 20.658693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968330, 34.246410, 20.346199>,  <38.748138, 34.624001, 20.876596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968330, 34.246410, 20.346199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584595, 34.301731, 20.247782>,  <38.354355, 34.334923, 20.188732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584595, 34.301731, 20.247782>,  <38.968330, 34.246410, 20.346199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584595, 34.301731, 20.247782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240582, -0.055173, -0.969059,
		-0.147604, -0.988851, 0.019655,
		-0.959340, 0.138308, -0.246044,
		38.296791, 34.343224, 20.173969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833054, 33.846451, 19.762381>,  <38.968330, 34.246410, 20.346199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833054, 33.846451, 19.762381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519119, 34.094170, 19.753450>,  <38.330757, 34.242802, 19.748093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519119, 34.094170, 19.753450>,  <38.833054, 33.846451, 19.762381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519119, 34.094170, 19.753450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006953, -0.044827, -0.998971,
		-0.619662, -0.783875, 0.039488,
		-0.784838, 0.619299, -0.022327,
		38.283669, 34.279961, 19.746752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370239, 33.633018, 19.216957>,  <38.833054, 33.846451, 19.762381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370239, 33.633018, 19.216957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278717, 34.020164, 19.258711>,  <38.223804, 34.252453, 19.283764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278717, 34.020164, 19.258711>,  <38.370239, 33.633018, 19.216957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278717, 34.020164, 19.258711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220487, 0.155966, -0.962839,
		-0.948175, -0.197283, -0.249086,
		-0.228801, 0.967860, 0.104384,
		38.210075, 34.310524, 19.290026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085148, 33.626865, 18.644850>,  <38.370239, 33.633018, 19.216957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085148, 33.626865, 18.644850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152161, 34.005756, 18.754171>,  <38.192368, 34.233089, 18.819765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152161, 34.005756, 18.754171>,  <38.085148, 33.626865, 18.644850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152161, 34.005756, 18.754171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262390, 0.224383, -0.938511,
		-0.950307, 0.228945, -0.210951,
		0.167533, 0.947226, 0.273306,
		38.202419, 34.289925, 18.836163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663452, 33.994194, 18.260305>,  <38.085148, 33.626865, 18.644850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663452, 33.994194, 18.260305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975674, 34.221676, 18.364084>,  <38.163006, 34.358166, 18.426352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975674, 34.221676, 18.364084>,  <37.663452, 33.994194, 18.260305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975674, 34.221676, 18.364084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173752, 0.201302, -0.963996,
		-0.600456, 0.797529, 0.058313,
		0.780553, 0.568705, 0.259445,
		38.209839, 34.392288, 18.441917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627983, 34.726540, 18.006762>,  <37.663452, 33.994194, 18.260305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627983, 34.726540, 18.006762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995281, 34.580616, 18.068398>,  <38.215660, 34.493061, 18.105379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995281, 34.580616, 18.068398>,  <37.627983, 34.726540, 18.006762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995281, 34.580616, 18.068398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221371, 0.150212, -0.963551,
		0.328369, 0.918884, 0.218690,
		0.918242, -0.364812, 0.154089,
		38.270752, 34.471172, 18.114624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039333, 35.070145, 18.184292>,  <37.627983, 34.726540, 18.006762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039333, 35.070145, 18.184292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728107, 35.284008, 18.052382>,  <36.541370, 35.412327, 17.973236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728107, 35.284008, 18.052382>,  <37.039333, 35.070145, 18.184292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728107, 35.284008, 18.052382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150422, 0.351119, 0.924169,
		0.609910, 0.768668, -0.192768,
		-0.778064, 0.534663, -0.329776,
		36.494690, 35.444408, 17.953449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985165, 35.799091, 18.473661>,  <37.039333, 35.070145, 18.184292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985165, 35.799091, 18.473661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605984, 35.725498, 18.369709>,  <36.378475, 35.681343, 18.307339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605984, 35.725498, 18.369709>,  <36.985165, 35.799091, 18.473661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605984, 35.725498, 18.369709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308523, 0.328896, 0.892548,
		-0.078739, 0.926271, -0.368540,
		-0.947952, -0.183981, -0.259879,
		36.321598, 35.670303, 18.291746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596809, 36.405476, 18.694517>,  <36.985165, 35.799091, 18.473661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596809, 36.405476, 18.694517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313873, 36.124760, 18.660685>,  <36.144112, 35.956329, 18.640385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313873, 36.124760, 18.660685>,  <36.596809, 36.405476, 18.694517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313873, 36.124760, 18.660685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408889, 0.308616, 0.858817,
		-0.576608, 0.642062, -0.505252,
		-0.707342, -0.701793, -0.084582,
		36.101669, 35.914223, 18.635309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068710, 36.650261, 19.022495>,  <36.596809, 36.405476, 18.694517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068710, 36.650261, 19.022495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942848, 36.270889, 19.007147>,  <35.867332, 36.043266, 18.997938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942848, 36.270889, 19.007147>,  <36.068710, 36.650261, 19.022495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942848, 36.270889, 19.007147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438080, 0.109238, 0.892274,
		-0.842069, 0.297564, -0.449860,
		-0.314651, -0.948432, -0.038371,
		35.848454, 35.986359, 18.995636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473938, 36.681961, 19.242929>,  <36.068710, 36.650261, 19.022495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473938, 36.681961, 19.242929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574112, 36.302925, 19.322289>,  <35.634216, 36.075504, 19.369904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574112, 36.302925, 19.322289>,  <35.473938, 36.681961, 19.242929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574112, 36.302925, 19.322289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363653, 0.097848, 0.926381,
		-0.897240, -0.304143, -0.320089,
		0.250432, -0.947588, 0.198396,
		35.649242, 36.018650, 19.381807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904758, 36.359203, 19.556587>,  <35.473938, 36.681961, 19.242929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904758, 36.359203, 19.556587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194973, 36.106873, 19.666607>,  <35.369102, 35.955475, 19.732618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194973, 36.106873, 19.666607>,  <34.904758, 36.359203, 19.556587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194973, 36.106873, 19.666607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498403, -0.206060, 0.842101,
		-0.474545, -0.748060, -0.463911,
		0.725536, -0.630829, 0.275050,
		35.412632, 35.917625, 19.749123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671127, 35.667255, 19.706770>,  <34.904758, 36.359203, 19.556587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671127, 35.667255, 19.706770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018993, 35.686867, 19.903254>,  <35.227711, 35.698631, 20.021143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018993, 35.686867, 19.903254>,  <34.671127, 35.667255, 19.706770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018993, 35.686867, 19.903254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458969, -0.286078, 0.841134,
		0.181760, -0.956951, -0.226290,
		0.869661, 0.049025, 0.491209,
		35.279892, 35.701572, 20.050615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593159, 35.145931, 20.202923>,  <34.671127, 35.667255, 19.706770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593159, 35.145931, 20.202923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906342, 35.357639, 20.333675>,  <35.094250, 35.484665, 20.412127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906342, 35.357639, 20.333675>,  <34.593159, 35.145931, 20.202923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906342, 35.357639, 20.333675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258003, -0.201861, 0.944821,
		0.566055, -0.824087, -0.021493,
		0.782954, 0.529275, 0.326881,
		35.141228, 35.516422, 20.431740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944744, 34.761818, 20.772392>,  <34.593159, 35.145931, 20.202923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944744, 34.761818, 20.772392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064171, 35.140186, 20.823133>,  <35.135826, 35.367207, 20.853579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064171, 35.140186, 20.823133>,  <34.944744, 34.761818, 20.772392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064171, 35.140186, 20.823133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155058, -0.083071, 0.984406,
		0.941707, -0.313585, 0.121869,
		0.298571, 0.945920, 0.126852,
		35.153744, 35.423962, 20.861189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422897, 34.712494, 21.344984>,  <34.944744, 34.761818, 20.772392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422897, 34.712494, 21.344984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364651, 35.107529, 21.321447>,  <35.329704, 35.344551, 21.307325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364651, 35.107529, 21.321447>,  <35.422897, 34.712494, 21.344984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364651, 35.107529, 21.321447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047301, 0.052457, 0.997503,
		0.988210, 0.148032, 0.039075,
		-0.145613, 0.987590, -0.058841,
		35.320969, 35.403805, 21.303795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011955, 34.929890, 21.770447>,  <35.422897, 34.712494, 21.344984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011955, 34.929890, 21.770447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739204, 35.219257, 21.727160>,  <35.575554, 35.392876, 21.701187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739204, 35.219257, 21.727160>,  <36.011955, 34.929890, 21.770447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739204, 35.219257, 21.727160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012065, 0.136802, 0.990525,
		0.731366, 0.676723, -0.084554,
		-0.681878, 0.723416, -0.108217,
		35.534641, 35.436283, 21.694695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279621, 35.456158, 22.281649>,  <36.011955, 34.929890, 21.770447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279621, 35.456158, 22.281649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887314, 35.472775, 22.205374>,  <35.651928, 35.482746, 22.159609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887314, 35.472775, 22.205374>,  <36.279621, 35.456158, 22.281649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887314, 35.472775, 22.205374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194242, -0.113193, 0.974401,
		0.018898, 0.992704, 0.119086,
		-0.980772, 0.041546, -0.190686,
		35.593082, 35.485237, 22.148169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993568, 35.896236, 22.760155>,  <36.279621, 35.456158, 22.281649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993568, 35.896236, 22.760155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667229, 35.703281, 22.632595>,  <35.471424, 35.587509, 22.556059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667229, 35.703281, 22.632595>,  <35.993568, 35.896236, 22.760155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667229, 35.703281, 22.632595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332227, -0.060367, 0.941266,
		-0.473305, 0.873876, -0.111011,
		-0.815848, -0.482386, -0.318897,
		35.422474, 35.558567, 22.536926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543274, 35.939880, 23.242022>,  <35.993568, 35.896236, 22.760155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543274, 35.939880, 23.242022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357384, 35.652966, 23.034355>,  <35.245850, 35.480816, 22.909756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357384, 35.652966, 23.034355>,  <35.543274, 35.939880, 23.242022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357384, 35.652966, 23.034355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274851, -0.440508, 0.854641,
		-0.841715, 0.539869, 0.007571,
		-0.464729, -0.717283, -0.519165,
		35.217964, 35.437782, 22.878605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806484, 35.875309, 23.529720>,  <35.543274, 35.939880, 23.242022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806484, 35.875309, 23.529720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933956, 35.541695, 23.349577>,  <35.010441, 35.341526, 23.241491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933956, 35.541695, 23.349577>,  <34.806484, 35.875309, 23.529720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933956, 35.541695, 23.349577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372241, -0.547081, 0.749759,
		-0.871710, -0.071294, -0.484809,
		0.318683, -0.834038, -0.450357,
		35.029560, 35.291485, 23.214470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389709, 35.375252, 23.680399>,  <34.806484, 35.875309, 23.529720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389709, 35.375252, 23.680399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676735, 35.129375, 23.549397>,  <34.848949, 34.981850, 23.470795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676735, 35.129375, 23.549397>,  <34.389709, 35.375252, 23.680399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676735, 35.129375, 23.549397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373817, -0.736650, 0.563567,
		-0.587676, -0.281967, -0.758374,
		0.717564, -0.614688, -0.327507,
		34.892002, 34.944969, 23.451143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096062, 34.718704, 23.581503>,  <34.389709, 35.375252, 23.680399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096062, 34.718704, 23.581503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.485737, 34.630688, 23.601660>,  <34.719543, 34.577877, 23.613754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.485737, 34.630688, 23.601660>,  <34.096062, 34.718704, 23.581503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485737, 34.630688, 23.601660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216494, -0.847464, 0.484701,
		-0.063950, -0.483100, -0.873227,
		0.974187, -0.220045, 0.050393,
		34.777992, 34.564674, 23.616777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207218, 33.948490, 23.291786>,  <34.096062, 34.718704, 23.581503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207218, 33.948490, 23.291786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527985, 34.037773, 23.513453>,  <34.720444, 34.091343, 23.646454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527985, 34.037773, 23.513453>,  <34.207218, 33.948490, 23.291786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527985, 34.037773, 23.513453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215894, -0.756632, 0.617170,
		0.557059, -0.614562, -0.558569,
		0.801920, 0.223208, 0.554168,
		34.768562, 34.104736, 23.679703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574524, 33.334179, 23.484156>,  <34.207218, 33.948490, 23.291786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574524, 33.334179, 23.484156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665913, 33.608105, 23.760946>,  <34.720745, 33.772461, 23.927021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665913, 33.608105, 23.760946>,  <34.574524, 33.334179, 23.484156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665913, 33.608105, 23.760946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255269, -0.643771, 0.721386,
		0.939487, -0.341460, 0.027725,
		0.228476, 0.684810, 0.691979,
		34.734455, 33.813549, 23.968540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930077, 32.933064, 23.967861>,  <34.574524, 33.334179, 23.484156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930077, 32.933064, 23.967861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.838295, 33.271122, 24.160976>,  <34.783226, 33.473957, 24.276846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.838295, 33.271122, 24.160976>,  <34.930077, 32.933064, 23.967861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838295, 33.271122, 24.160976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295791, -0.533111, 0.792654,
		0.927286, 0.039072, 0.372309,
		-0.229452, 0.845143, 0.482790,
		34.769459, 33.524666, 24.305813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123314, 32.715496, 24.606514>,  <34.930077, 32.933064, 23.967861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123314, 32.715496, 24.606514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887932, 33.036831, 24.643097>,  <34.746700, 33.229633, 24.665047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887932, 33.036831, 24.643097>,  <35.123314, 32.715496, 24.606514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887932, 33.036831, 24.643097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330014, -0.341909, 0.879880,
		0.738111, 0.487591, 0.466312,
		-0.588458, 0.803339, 0.091455,
		34.711395, 33.277832, 24.670534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.381802, 30.101728, 29.041235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.415142, 30.494856, 29.107105>,  <36.435146, 30.730732, 29.146627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.415142, 30.494856, 29.107105>,  <36.381802, 30.101728, 29.041235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415142, 30.494856, 29.107105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022470, -0.163357, 0.986311,
		0.996267, -0.085908, 0.008468,
		0.083349, 0.982820, 0.164677,
		36.440147, 30.789701, 29.156509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901665, 30.193674, 29.582684>,  <36.381802, 30.101728, 29.041235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901665, 30.193674, 29.582684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.674953, 30.523220, 29.583021>,  <36.538925, 30.720947, 29.583223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.674953, 30.523220, 29.583021>,  <36.901665, 30.193674, 29.582684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674953, 30.523220, 29.583021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209055, -0.144809, 0.967123,
		0.796902, 0.547972, 0.254308,
		-0.566783, 0.823867, 0.000842,
		36.504917, 30.770380, 29.583273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131863, 30.478271, 30.173788>,  <36.901665, 30.193674, 29.582684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131863, 30.478271, 30.173788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.782360, 30.649063, 30.080631>,  <36.572659, 30.751539, 30.024738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.782360, 30.649063, 30.080631>,  <37.131863, 30.478271, 30.173788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782360, 30.649063, 30.080631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252174, 0.011729, 0.967611,
		0.415883, 0.904185, 0.097425,
		-0.873756, 0.426981, -0.232890,
		36.520233, 30.777157, 30.010765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029552, 31.024675, 30.682533>,  <37.131863, 30.478271, 30.173788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029552, 31.024675, 30.682533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.660496, 31.001030, 30.530094>,  <36.439060, 30.986843, 30.438631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.660496, 31.001030, 30.530094>,  <37.029552, 31.024675, 30.682533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660496, 31.001030, 30.530094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372569, -0.118611, 0.920393,
		-0.099609, 0.991180, 0.087413,
		-0.922643, -0.059112, -0.381097,
		36.383701, 30.983297, 30.415766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627243, 31.565174, 30.880573>,  <37.029552, 31.024675, 30.682533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627243, 31.565174, 30.880573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361897, 31.283422, 30.779547>,  <36.202686, 31.114370, 30.718931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361897, 31.283422, 30.779547>,  <36.627243, 31.565174, 30.880573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361897, 31.283422, 30.779547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455839, 0.112726, 0.882895,
		-0.593424, 0.700814, -0.395863,
		-0.663369, -0.704381, -0.252564,
		36.162888, 31.072107, 30.703777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967197, 31.795078, 31.107775>,  <36.627243, 31.565174, 30.880573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967197, 31.795078, 31.107775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.924374, 31.400892, 31.055017>,  <35.898678, 31.164381, 31.023363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.924374, 31.400892, 31.055017>,  <35.967197, 31.795078, 31.107775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924374, 31.400892, 31.055017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442540, -0.071559, 0.893889,
		-0.890335, 0.154067, -0.428447,
		-0.107059, -0.985465, -0.131892,
		35.892258, 31.105253, 31.015450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324337, 31.747213, 31.458101>,  <35.967197, 31.795078, 31.107775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324337, 31.747213, 31.458101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.480732, 31.379284, 31.445131>,  <35.574570, 31.158525, 31.437349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.480732, 31.379284, 31.445131>,  <35.324337, 31.747213, 31.458101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480732, 31.379284, 31.445131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385968, -0.195842, 0.901485,
		-0.835557, -0.339956, -0.431595,
		0.390990, -0.919824, -0.032425,
		35.598030, 31.103336, 31.435404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739086, 31.285402, 31.673281>,  <35.324337, 31.747213, 31.458101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739086, 31.285402, 31.673281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.084053, 31.096695, 31.746670>,  <35.291035, 30.983471, 31.790703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.084053, 31.096695, 31.746670>,  <34.739086, 31.285402, 31.673281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084053, 31.096695, 31.746670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301042, -0.186627, 0.935171,
		-0.406944, -0.861745, -0.302974,
		0.862422, -0.471770, 0.183474,
		35.342781, 30.955164, 31.801712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521660, 30.719826, 32.056473>,  <34.739086, 31.285402, 31.673281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521660, 30.719826, 32.056473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912727, 30.784708, 32.109928>,  <35.147366, 30.823637, 32.142002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912727, 30.784708, 32.109928>,  <34.521660, 30.719826, 32.056473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912727, 30.784708, 32.109928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116724, -0.109725, 0.987084,
		0.174778, -0.980637, -0.088341,
		0.977665, 0.162209, 0.133642,
		35.206028, 30.833370, 32.150021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645088, 30.368063, 32.716423>,  <34.521660, 30.719826, 32.056473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645088, 30.368063, 32.716423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.955982, 30.615978, 32.673035>,  <35.142517, 30.764727, 32.646999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.955982, 30.615978, 32.673035>,  <34.645088, 30.368063, 32.716423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955982, 30.615978, 32.673035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017770, 0.150708, 0.988419,
		0.628958, -0.770162, 0.106122,
		0.777236, 0.619788, -0.108475,
		35.189152, 30.801914, 32.640491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095192, 30.203735, 33.192104>,  <34.645088, 30.368063, 32.716423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095192, 30.203735, 33.192104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.236141, 30.570477, 33.117043>,  <35.320713, 30.790522, 33.072006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.236141, 30.570477, 33.117043>,  <35.095192, 30.203735, 33.192104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236141, 30.570477, 33.117043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124644, 0.152748, 0.980373,
		0.927520, -0.368851, -0.060455,
		0.352377, 0.916852, -0.187652,
		35.341854, 30.845531, 33.060745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746010, 30.285627, 33.583889>,  <35.095192, 30.203735, 33.192104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746010, 30.285627, 33.583889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629677, 30.659855, 33.503765>,  <35.559875, 30.884392, 33.455692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629677, 30.659855, 33.503765>,  <35.746010, 30.285627, 33.583889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629677, 30.659855, 33.503765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223624, 0.270031, 0.936523,
		0.930273, 0.227579, -0.287750,
		-0.290834, 0.935570, -0.200310,
		35.542427, 30.940525, 33.443672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360184, 30.694193, 33.784420>,  <35.746010, 30.285627, 33.583889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360184, 30.694193, 33.784420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.058132, 30.956419, 33.782997>,  <35.876900, 31.113754, 33.782143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.058132, 30.956419, 33.782997>,  <36.360184, 30.694193, 33.784420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058132, 30.956419, 33.782997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081481, 0.099245, 0.991721,
		0.650492, 0.748588, -0.128359,
		-0.755130, 0.655566, -0.003562,
		35.831593, 31.153090, 33.781929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580967, 31.303968, 34.086441>,  <36.360184, 30.694193, 33.784420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580967, 31.303968, 34.086441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.182556, 31.319288, 34.118622>,  <35.943512, 31.328480, 34.137932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.182556, 31.319288, 34.118622>,  <36.580967, 31.303968, 34.086441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182556, 31.319288, 34.118622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086100, 0.181185, 0.979673,
		0.022943, 0.982703, -0.183762,
		-0.996022, 0.038298, 0.080454,
		35.883751, 31.330778, 34.142757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638092, 31.681198, 34.782833>,  <36.580967, 31.303968, 34.086441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638092, 31.681198, 34.782833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770039, 32.041557, 34.895668>,  <36.849205, 32.257774, 34.963367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770039, 32.041557, 34.895668>,  <36.638092, 31.681198, 34.782833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770039, 32.041557, 34.895668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187235, 0.355308, -0.915806,
		-0.925274, 0.249276, 0.285883,
		0.329865, 0.900899, 0.282084,
		36.868999, 32.311829, 34.980293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212330, 32.181393, 34.425022>,  <36.638092, 31.681198, 34.782833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212330, 32.181393, 34.425022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.538799, 32.388023, 34.528568>,  <36.734680, 32.512001, 34.590694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.538799, 32.388023, 34.528568>,  <36.212330, 32.181393, 34.425022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538799, 32.388023, 34.528568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118813, 0.288396, -0.950111,
		-0.565464, 0.806209, 0.174004,
		0.816171, 0.516579, 0.258866,
		36.783649, 32.542995, 34.606228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137070, 32.850746, 34.071033>,  <36.212330, 32.181393, 34.425022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137070, 32.850746, 34.071033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525818, 32.785408, 34.138889>,  <36.759068, 32.746204, 34.179604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525818, 32.785408, 34.138889>,  <36.137070, 32.850746, 34.071033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525818, 32.785408, 34.138889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223539, 0.413220, -0.882768,
		0.074096, 0.895862, 0.438112,
		0.971875, -0.163345, 0.169642,
		36.817379, 32.736404, 34.189781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349430, 33.497482, 33.933643>,  <36.137070, 32.850746, 34.071033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349430, 33.497482, 33.933643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670841, 33.261234, 33.903946>,  <36.863689, 33.119488, 33.886127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670841, 33.261234, 33.903946>,  <36.349430, 33.497482, 33.933643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670841, 33.261234, 33.903946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321159, 0.535152, -0.781325,
		0.501195, 0.603974, 0.619693,
		0.803530, -0.590616, -0.074243,
		36.911900, 33.084049, 33.881672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945087, 34.036518, 33.839596>,  <36.349430, 33.497482, 33.933643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945087, 34.036518, 33.839596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095108, 33.682285, 33.729992>,  <37.185120, 33.469746, 33.664230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095108, 33.682285, 33.729992>,  <36.945087, 34.036518, 33.839596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095108, 33.682285, 33.729992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272013, 0.387712, -0.880732,
		0.886195, 0.255790, 0.386303,
		0.375056, -0.885580, -0.274010,
		37.207626, 33.416611, 33.647789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625229, 34.176167, 33.526123>,  <36.945087, 34.036518, 33.839596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625229, 34.176167, 33.526123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.479198, 33.841038, 33.363754>,  <37.391579, 33.639961, 33.266335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.479198, 33.841038, 33.363754>,  <37.625229, 34.176167, 33.526123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479198, 33.841038, 33.363754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261409, 0.326219, -0.908431,
		0.893524, -0.437756, 0.099921,
		-0.365074, -0.837825, -0.405918,
		37.369675, 33.589691, 33.241978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110390, 33.923107, 33.070099>,  <37.625229, 34.176167, 33.526123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110390, 33.923107, 33.070099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.784725, 33.722950, 32.952290>,  <37.589325, 33.602856, 32.881603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.784725, 33.722950, 32.952290>,  <38.110390, 33.923107, 33.070099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784725, 33.722950, 32.952290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205392, 0.226245, -0.952170,
		0.543094, -0.835715, -0.081423,
		-0.814164, -0.500394, -0.294521,
		37.540478, 33.572830, 32.863934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307400, 33.575153, 32.452183>,  <38.110390, 33.923107, 33.070099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307400, 33.575153, 32.452183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.907959, 33.568066, 32.432270>,  <37.668293, 33.563812, 32.420322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.907959, 33.568066, 32.432270>,  <38.307400, 33.575153, 32.452183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907959, 33.568066, 32.432270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042210, 0.299369, -0.953203,
		0.031789, -0.953973, -0.298203,
		-0.998603, -0.017714, -0.049784,
		37.608379, 33.562752, 32.417336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129532, 33.171188, 31.820658>,  <38.307400, 33.575153, 32.452183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129532, 33.171188, 31.820658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.798195, 33.378208, 31.906439>,  <37.599392, 33.502419, 31.957907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.798195, 33.378208, 31.906439>,  <38.129532, 33.171188, 31.820658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798195, 33.378208, 31.906439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072992, 0.279833, -0.957270,
		-0.555442, -0.808604, -0.194022,
		-0.828346, 0.517545, 0.214452,
		37.549690, 33.533470, 31.970774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643837, 32.986847, 31.353407>,  <38.129532, 33.171188, 31.820658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643837, 32.986847, 31.353407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528610, 33.348358, 31.480026>,  <37.459473, 33.565266, 31.555998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528610, 33.348358, 31.480026>,  <37.643837, 32.986847, 31.353407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528610, 33.348358, 31.480026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050110, 0.344335, -0.937509,
		-0.956299, -0.254202, -0.144479,
		-0.288066, 0.903778, 0.316549,
		37.442192, 33.619492, 31.574991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177879, 33.159225, 30.792440>,  <37.643837, 32.986847, 31.353407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177879, 33.159225, 30.792440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257263, 33.498798, 30.988373>,  <37.304893, 33.702541, 31.105932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257263, 33.498798, 30.988373>,  <37.177879, 33.159225, 30.792440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257263, 33.498798, 30.988373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027247, 0.504356, -0.863066,
		-0.979730, 0.157939, 0.123226,
		0.198461, 0.848929, 0.489829,
		37.316803, 33.753479, 31.135321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667721, 33.639568, 30.538876>,  <37.177879, 33.159225, 30.792440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667721, 33.639568, 30.538876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.981117, 33.835518, 30.691807>,  <37.169155, 33.953087, 30.783566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.981117, 33.835518, 30.691807>,  <36.667721, 33.639568, 30.538876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981117, 33.835518, 30.691807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110296, 0.495864, -0.861367,
		-0.611540, 0.717040, 0.334472,
		0.783488, 0.489870, 0.382327,
		37.216164, 33.982479, 30.806505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552040, 34.362297, 30.337399>,  <36.667721, 33.639568, 30.538876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552040, 34.362297, 30.337399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941036, 34.359364, 30.430534>,  <37.174435, 34.357605, 30.486416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941036, 34.359364, 30.430534>,  <36.552040, 34.362297, 30.337399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941036, 34.359364, 30.430534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223476, 0.311591, -0.923563,
		-0.065779, 0.950188, 0.304657,
		0.972487, -0.007333, 0.232840,
		37.232784, 34.357162, 30.500387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856152, 35.047302, 30.311529>,  <36.552040, 34.362297, 30.337399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856152, 35.047302, 30.311529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144241, 34.777119, 30.248245>,  <37.317097, 34.615009, 30.210276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144241, 34.777119, 30.248245>,  <36.856152, 35.047302, 30.311529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144241, 34.777119, 30.248245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068177, 0.295862, -0.952795,
		0.690382, 0.675441, 0.259139,
		0.720226, -0.675459, -0.158208,
		37.360310, 34.574482, 30.200783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238224, 35.619427, 30.621031>,  <36.856152, 35.047302, 30.311529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238224, 35.619427, 30.621031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.107140, 35.989277, 30.698671>,  <37.028488, 36.211185, 30.745256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.107140, 35.989277, 30.698671>,  <37.238224, 35.619427, 30.621031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107140, 35.989277, 30.698671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277483, -0.290581, 0.915732,
		0.903112, 0.246232, 0.351793,
		-0.327707, 0.924625, 0.194102,
		37.008827, 36.266666, 30.756903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335102, 35.844582, 31.417368>,  <37.238224, 35.619427, 30.621031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335102, 35.844582, 31.417368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.042366, 36.073845, 31.269909>,  <36.866722, 36.211403, 31.181435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.042366, 36.073845, 31.269909>,  <37.335102, 35.844582, 31.417368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042366, 36.073845, 31.269909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587158, -0.255750, 0.768009,
		0.345906, 0.778515, 0.523701,
		-0.731843, 0.573154, -0.368646,
		36.822815, 36.245792, 31.159315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054409, 36.151428, 32.039272>,  <37.335102, 35.844582, 31.417368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054409, 36.151428, 32.039272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.780930, 36.198006, 31.751104>,  <36.616844, 36.225952, 31.578205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.780930, 36.198006, 31.751104>,  <37.054409, 36.151428, 32.039272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780930, 36.198006, 31.751104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728126, -0.175002, 0.662727,
		-0.048903, 0.977658, 0.204434,
		-0.683697, 0.116445, -0.720416,
		36.575821, 36.232941, 31.534979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542847, 36.475315, 32.392456>,  <37.054409, 36.151428, 32.039272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542847, 36.475315, 32.392456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.319683, 36.377979, 32.075085>,  <36.185787, 36.319576, 31.884663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.319683, 36.377979, 32.075085>,  <36.542847, 36.475315, 32.392456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319683, 36.377979, 32.075085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713100, -0.348498, 0.608307,
		-0.424535, 0.905170, 0.020902,
		-0.557906, -0.243343, -0.793426,
		36.152309, 36.304977, 31.837057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846897, 36.755238, 32.555721>,  <36.542847, 36.475315, 32.392456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846897, 36.755238, 32.555721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.828926, 36.462719, 32.283489>,  <35.818142, 36.287209, 32.120152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.828926, 36.462719, 32.283489>,  <35.846897, 36.755238, 32.555721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828926, 36.462719, 32.283489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762694, -0.414886, 0.496153,
		-0.645198, 0.541366, -0.539113,
		-0.044930, -0.731295, -0.680580,
		35.815449, 36.243332, 32.079315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192413, 36.678753, 32.491196>,  <35.846897, 36.755238, 32.555721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192413, 36.678753, 32.491196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328953, 36.333206, 32.343025>,  <35.410877, 36.125877, 32.254124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328953, 36.333206, 32.343025>,  <35.192413, 36.678753, 32.491196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328953, 36.333206, 32.343025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795821, -0.475323, 0.375148,
		-0.500151, 0.166739, -0.849734,
		0.341347, -0.863867, -0.370428,
		35.431358, 36.074047, 32.231895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606342, 36.376495, 32.361080>,  <35.192413, 36.678753, 32.491196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606342, 36.376495, 32.361080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.862473, 36.074905, 32.302433>,  <35.016151, 35.893951, 32.267246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.862473, 36.074905, 32.302433>,  <34.606342, 36.376495, 32.361080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862473, 36.074905, 32.302433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713304, -0.654516, 0.250612,
		-0.284921, -0.055889, -0.956920,
		0.640326, -0.753979, -0.146619,
		35.054569, 35.848713, 32.258446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240318, 35.821873, 32.052982>,  <34.606342, 36.376495, 32.361080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240318, 35.821873, 32.052982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.538990, 35.625034, 32.232006>,  <34.718193, 35.506931, 32.339420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.538990, 35.625034, 32.232006>,  <34.240318, 35.821873, 32.052982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538990, 35.625034, 32.232006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643809, -0.703823, 0.300239,
		0.167257, -0.512326, -0.842346,
		0.746683, -0.492093, 0.447559,
		34.762997, 35.477406, 32.366272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168217, 35.072506, 31.913910>,  <34.240318, 35.821873, 32.052982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168217, 35.072506, 31.913910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.369503, 35.139187, 32.253082>,  <34.490276, 35.179195, 32.456585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.369503, 35.139187, 32.253082>,  <34.168217, 35.072506, 31.913910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369503, 35.139187, 32.253082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702258, -0.492923, 0.513674,
		0.503594, -0.853954, -0.130980,
		0.503217, 0.166701, 0.847929,
		34.520470, 35.189198, 32.507462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149101, 34.310555, 32.229706>,  <34.168217, 35.072506, 31.913910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149101, 34.310555, 32.229706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.234669, 34.583279, 32.509525>,  <34.286011, 34.746914, 32.677418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.234669, 34.583279, 32.509525>,  <34.149101, 34.310555, 32.229706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234669, 34.583279, 32.509525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705624, -0.387369, 0.593330,
		0.675523, -0.620545, 0.398236,
		0.213923, 0.681813, 0.699548,
		34.298847, 34.787823, 32.719391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207966, 33.938408, 32.902454>,  <34.149101, 34.310555, 32.229706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207966, 33.938408, 32.902454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.176151, 34.317196, 33.026985>,  <34.157063, 34.544468, 33.101704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.176151, 34.317196, 33.026985>,  <34.207966, 33.938408, 32.902454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176151, 34.317196, 33.026985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809845, -0.243485, 0.533729,
		0.581228, -0.209674, 0.786264,
		-0.079534, 0.946970, 0.311324,
		34.152290, 34.601288, 33.120384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133667, 33.846519, 33.645432>,  <34.207966, 33.938408, 32.902454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133667, 33.846519, 33.645432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.994896, 34.206718, 33.540562>,  <33.911633, 34.422840, 33.477638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.994896, 34.206718, 33.540562>,  <34.133667, 33.846519, 33.645432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994896, 34.206718, 33.540562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851248, -0.184980, 0.491079,
		0.393719, 0.393549, 0.830725,
		-0.346931, 0.900501, -0.262178,
		33.890816, 34.476868, 33.461906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.482998, 37.396267, 27.345522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103756, 37.520275, 27.317291>,  <37.876209, 37.594681, 27.300354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103756, 37.520275, 27.317291>,  <38.482998, 37.396267, 27.345522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103756, 37.520275, 27.317291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095120, -0.064765, 0.993357,
		0.303391, 0.948521, 0.090894,
		-0.948106, 0.310021, -0.070574,
		37.819324, 37.613281, 27.296120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500610, 37.830021, 27.925821>,  <38.482998, 37.396267, 27.345522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500610, 37.830021, 27.925821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111435, 37.779541, 27.848400>,  <37.877930, 37.749252, 27.801949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111435, 37.779541, 27.848400>,  <38.500610, 37.830021, 27.925821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111435, 37.779541, 27.848400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194980, -0.001056, 0.980807,
		-0.123985, 0.992004, -0.023579,
		-0.972939, -0.126203, -0.193551,
		37.819553, 37.741680, 27.790335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161160, 38.228809, 28.364023>,  <38.500610, 37.830021, 27.925821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161160, 38.228809, 28.364023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899807, 37.948513, 28.249441>,  <37.742996, 37.780334, 28.180693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899807, 37.948513, 28.249441>,  <38.161160, 38.228809, 28.364023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899807, 37.948513, 28.249441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272991, -0.134837, 0.952520,
		-0.706095, 0.700557, -0.103196,
		-0.653381, -0.700741, -0.286453,
		37.703793, 37.738289, 28.163506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624645, 38.385643, 28.899029>,  <38.161160, 38.228809, 28.364023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624645, 38.385643, 28.899029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555153, 38.013214, 28.770708>,  <37.513458, 37.789757, 28.693716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555153, 38.013214, 28.770708>,  <37.624645, 38.385643, 28.899029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555153, 38.013214, 28.770708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262355, -0.270226, 0.926362,
		-0.949204, 0.245102, -0.197326,
		-0.173731, -0.931076, -0.320803,
		37.503033, 37.733891, 28.674467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055740, 38.185810, 29.240501>,  <37.624645, 38.385643, 28.899029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055740, 38.185810, 29.240501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195194, 37.840038, 29.095604>,  <37.278866, 37.632576, 29.008665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195194, 37.840038, 29.095604>,  <37.055740, 38.185810, 29.240501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195194, 37.840038, 29.095604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383040, -0.484154, 0.786686,
		-0.855415, -0.135512, -0.499903,
		0.348635, -0.864426, -0.362246,
		37.299786, 37.580711, 28.986931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471416, 37.733864, 29.301044>,  <37.055740, 38.185810, 29.240501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471416, 37.733864, 29.301044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797089, 37.501984, 29.288040>,  <36.992493, 37.362854, 29.280237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797089, 37.501984, 29.288040>,  <36.471416, 37.733864, 29.301044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797089, 37.501984, 29.288040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267979, -0.424868, 0.864681,
		-0.515068, -0.695295, -0.501268,
		0.814182, -0.579699, -0.032512,
		37.041344, 37.328075, 29.278286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220383, 37.022293, 29.551168>,  <36.471416, 37.733864, 29.301044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220383, 37.022293, 29.551168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617245, 37.001507, 29.596664>,  <36.855362, 36.989037, 29.623962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617245, 37.001507, 29.596664>,  <36.220383, 37.022293, 29.551168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617245, 37.001507, 29.596664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122444, -0.588452, 0.799207,
		0.025400, -0.806861, -0.590196,
		0.992151, -0.051966, 0.113742,
		36.914890, 36.985916, 29.630787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338402, 36.247890, 29.730656>,  <36.220383, 37.022293, 29.551168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338402, 36.247890, 29.730656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640709, 36.482712, 29.846710>,  <36.822094, 36.623604, 29.916342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640709, 36.482712, 29.846710>,  <36.338402, 36.247890, 29.730656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640709, 36.482712, 29.846710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002161, -0.445298, 0.895380,
		0.654831, -0.676076, -0.337812,
		0.755772, 0.587052, 0.290135,
		36.867439, 36.658829, 29.933750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857250, 35.788517, 30.008417>,  <36.338402, 36.247890, 29.730656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857250, 35.788517, 30.008417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926777, 36.150166, 30.164547>,  <36.968494, 36.367153, 30.258224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926777, 36.150166, 30.164547>,  <36.857250, 35.788517, 30.008417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926777, 36.150166, 30.164547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066885, -0.406281, 0.911297,
		0.982504, -0.132294, -0.131092,
		0.173819, 0.904121, 0.390324,
		36.978924, 36.421402, 30.281645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404633, 35.333778, 29.734940>,  <36.857250, 35.788517, 30.008417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404633, 35.333778, 29.734940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511162, 34.948513, 29.749876>,  <37.575081, 34.717354, 29.758839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511162, 34.948513, 29.749876>,  <37.404633, 35.333778, 29.734940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511162, 34.948513, 29.749876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279886, 0.040203, -0.959191,
		0.922354, 0.265906, 0.280283,
		0.266322, -0.963160, 0.037342,
		37.591057, 34.659565, 29.761078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094845, 35.288639, 29.495689>,  <37.404633, 35.333778, 29.734940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094845, 35.288639, 29.495689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960945, 34.915791, 29.440420>,  <37.880604, 34.692081, 29.407259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960945, 34.915791, 29.440420>,  <38.094845, 35.288639, 29.495689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960945, 34.915791, 29.440420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530529, -0.065247, -0.845152,
		0.778770, -0.356218, 0.516359,
		-0.334749, -0.932122, -0.138172,
		37.860519, 34.636154, 29.398968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657459, 34.960953, 29.166933>,  <38.094845, 35.288639, 29.495689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657459, 34.960953, 29.166933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359993, 34.699638, 29.110107>,  <38.181515, 34.542850, 29.076012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359993, 34.699638, 29.110107>,  <38.657459, 34.960953, 29.166933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359993, 34.699638, 29.110107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407830, -0.274914, -0.870688,
		0.529750, -0.705439, 0.470873,
		-0.743667, -0.653283, -0.142064,
		38.136894, 34.503654, 29.067488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963661, 34.437885, 28.990026>,  <38.657459, 34.960953, 29.166933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963661, 34.437885, 28.990026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601879, 34.375481, 28.831224>,  <38.384808, 34.338039, 28.735943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601879, 34.375481, 28.831224>,  <38.963661, 34.437885, 28.990026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601879, 34.375481, 28.831224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420796, -0.173858, -0.890339,
		0.069882, -0.972334, 0.222897,
		-0.904459, -0.156013, -0.397005,
		38.330540, 34.328678, 28.712122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947491, 33.748947, 28.700321>,  <38.963661, 34.437885, 28.990026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947491, 33.748947, 28.700321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670494, 33.980301, 28.527843>,  <38.504295, 34.119114, 28.424356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670494, 33.980301, 28.527843>,  <38.947491, 33.748947, 28.700321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670494, 33.980301, 28.527843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409849, -0.176470, -0.894920,
		-0.593705, -0.796445, -0.114849,
		-0.692487, 0.578389, -0.431194,
		38.462749, 34.153816, 28.398485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867233, 33.458649, 28.035788>,  <38.947491, 33.748947, 28.700321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867233, 33.458649, 28.035788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690159, 33.815849, 28.003336>,  <38.583912, 34.030170, 27.983866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690159, 33.815849, 28.003336>,  <38.867233, 33.458649, 28.035788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690159, 33.815849, 28.003336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187990, 0.003964, -0.982163,
		-0.876748, -0.450043, -0.169630,
		-0.442688, 0.892998, -0.081128,
		38.557354, 34.083748, 27.978998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530556, 33.471096, 27.409815>,  <38.867233, 33.458649, 28.035788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530556, 33.471096, 27.409815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558968, 33.862381, 27.487841>,  <38.576015, 34.097153, 27.534657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558968, 33.862381, 27.487841>,  <38.530556, 33.471096, 27.409815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558968, 33.862381, 27.487841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333026, 0.161081, -0.929057,
		-0.940238, 0.130956, -0.314329,
		0.071033, 0.978215, 0.195066,
		38.580276, 34.155846, 27.546360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081127, 33.849121, 26.921801>,  <38.530556, 33.471096, 27.409815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081127, 33.849121, 26.921801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323658, 34.150417, 27.023777>,  <38.469177, 34.331196, 27.084963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323658, 34.150417, 27.023777>,  <38.081127, 33.849121, 26.921801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323658, 34.150417, 27.023777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215651, 0.152832, -0.964436,
		-0.765417, 0.639742, -0.069771,
		0.606327, 0.753241, 0.254941,
		38.505554, 34.376389, 27.100260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898422, 34.373627, 26.447151>,  <38.081127, 33.849121, 26.921801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898422, 34.373627, 26.447151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266365, 34.443687, 26.587545>,  <38.487129, 34.485725, 26.671782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266365, 34.443687, 26.587545>,  <37.898422, 34.373627, 26.447151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266365, 34.443687, 26.587545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311395, 0.218069, -0.924921,
		-0.238544, 0.960087, 0.146049,
		0.919853, 0.175156, 0.350985,
		38.542320, 34.496235, 26.692841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173866, 34.995293, 26.106895>,  <37.898422, 34.373627, 26.447151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173866, 34.995293, 26.106895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529228, 34.880306, 26.250057>,  <38.742447, 34.811314, 26.335955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529228, 34.880306, 26.250057>,  <38.173866, 34.995293, 26.106895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529228, 34.880306, 26.250057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389940, 0.061151, -0.918808,
		0.242239, 0.955837, 0.166421,
		0.888407, -0.287465, 0.357906,
		38.795750, 34.794067, 26.357430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638828, 35.545025, 25.935854>,  <38.173866, 34.995293, 26.106895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638828, 35.545025, 25.935854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860458, 35.217201, 25.994261>,  <38.993435, 35.020508, 26.029305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860458, 35.217201, 25.994261>,  <38.638828, 35.545025, 25.935854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860458, 35.217201, 25.994261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503171, 0.189975, -0.843047,
		0.663190, 0.540582, 0.517640,
		0.554075, -0.819561, 0.146015,
		39.026680, 34.971333, 26.038065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294369, 35.731815, 25.817440>,  <38.638828, 35.545025, 25.935854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294369, 35.731815, 25.817440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289330, 35.333351, 25.782803>,  <39.286304, 35.094273, 25.762020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289330, 35.333351, 25.782803>,  <39.294369, 35.731815, 25.817440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289330, 35.333351, 25.782803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501718, 0.068613, -0.862306,
		0.864939, -0.054309, 0.498929,
		-0.012598, -0.996164, -0.086594,
		39.285549, 35.034500, 25.756824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975689, 35.533134, 25.680363>,  <39.294369, 35.731815, 25.817440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975689, 35.533134, 25.680363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757088, 35.229866, 25.538088>,  <39.625927, 35.047905, 25.452723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757088, 35.229866, 25.538088>,  <39.975689, 35.533134, 25.680363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757088, 35.229866, 25.538088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457409, 0.085542, -0.885132,
		0.701505, -0.646425, 0.300044,
		-0.546505, -0.758167, -0.355689,
		39.593136, 35.002415, 25.431381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290859, 35.357346, 25.008966>,  <39.975689, 35.533134, 25.680363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290859, 35.357346, 25.008966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983955, 35.103115, 24.974646>,  <39.799812, 34.950577, 24.954052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983955, 35.103115, 24.974646>,  <40.290859, 35.357346, 25.008966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983955, 35.103115, 24.974646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239523, -0.159866, -0.957639,
		0.594934, -0.755306, 0.274893,
		-0.767256, -0.635575, -0.085803,
		39.753777, 34.912441, 24.948904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.286106, 36.102627, 23.340425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.550892, 36.303585, 23.562922>,  <32.709763, 36.424160, 23.696419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.550892, 36.303585, 23.562922>,  <32.286106, 36.102627, 23.340425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550892, 36.303585, 23.562922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191399, -0.604208, 0.773498,
		0.724690, -0.618489, -0.303803,
		0.661960, 0.502399, 0.556241,
		32.749481, 36.454304, 23.729794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729771, 35.587944, 23.627472>,  <32.286106, 36.102627, 23.340425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729771, 35.587944, 23.627472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.822811, 35.891975, 23.870180>,  <32.878635, 36.074394, 24.015806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.822811, 35.891975, 23.870180>,  <32.729771, 35.587944, 23.627472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822811, 35.891975, 23.870180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217656, -0.567378, 0.794172,
		0.947903, -0.316796, 0.033462,
		0.232605, 0.760081, 0.606772,
		32.892593, 36.119999, 24.052212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089855, 35.299564, 24.167259>,  <32.729771, 35.587944, 23.627472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089855, 35.299564, 24.167259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.000710, 35.650284, 24.337696>,  <32.947224, 35.860718, 24.439959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.000710, 35.650284, 24.337696>,  <33.089855, 35.299564, 24.167259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000710, 35.650284, 24.337696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168816, -0.465191, 0.868964,
		0.960122, 0.121728, 0.251692,
		-0.222862, 0.876801, 0.426090,
		32.933849, 35.913322, 24.465523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623245, 35.405605, 24.745924>,  <33.089855, 35.299564, 24.167259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623245, 35.405605, 24.745924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.299309, 35.632484, 24.805847>,  <33.104946, 35.768612, 24.841801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.299309, 35.632484, 24.805847>,  <33.623245, 35.405605, 24.745924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299309, 35.632484, 24.805847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015966, -0.276577, 0.960859,
		0.586428, 0.775754, 0.233040,
		-0.809844, 0.567195, 0.149806,
		33.056355, 35.802643, 24.850788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769291, 35.681698, 25.381102>,  <33.623245, 35.405605, 24.745924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769291, 35.681698, 25.381102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373814, 35.736546, 25.356823>,  <33.136528, 35.769455, 25.342257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373814, 35.736546, 25.356823>,  <33.769291, 35.681698, 25.381102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373814, 35.736546, 25.356823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080901, -0.146952, 0.985830,
		0.126256, 0.979594, 0.156383,
		-0.988693, 0.137119, -0.060696,
		33.077206, 35.777679, 25.338614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525360, 36.102394, 26.069633>,  <33.769291, 35.681698, 25.381102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525360, 36.102394, 26.069633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.209274, 35.923237, 25.902327>,  <33.019623, 35.815742, 25.801943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.209274, 35.923237, 25.902327>,  <33.525360, 36.102394, 26.069633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209274, 35.923237, 25.902327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362991, -0.207819, 0.908322,
		-0.493760, 0.869597, 0.001639,
		-0.790215, -0.447898, -0.418269,
		32.972210, 35.788868, 25.776846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966824, 36.398426, 26.430365>,  <33.525360, 36.102394, 26.069633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966824, 36.398426, 26.430365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.824818, 36.057198, 26.277405>,  <32.739613, 35.852459, 26.185629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.824818, 36.057198, 26.277405>,  <32.966824, 36.398426, 26.430365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824818, 36.057198, 26.277405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399685, -0.231273, 0.886997,
		-0.845112, 0.467738, -0.258855,
		-0.355017, -0.853073, -0.382400,
		32.718311, 35.801277, 26.162685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248661, 36.340591, 26.471895>,  <32.966824, 36.398426, 26.430365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248661, 36.340591, 26.471895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.398380, 35.970295, 26.450304>,  <32.488213, 35.748119, 26.437349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.398380, 35.970295, 26.450304>,  <32.248661, 36.340591, 26.471895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398380, 35.970295, 26.450304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422847, -0.222192, 0.878539,
		-0.825289, -0.306010, -0.474611,
		0.374296, -0.925737, -0.053977,
		32.510670, 35.692574, 26.434111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690020, 35.957127, 26.708788>,  <32.248661, 36.340591, 26.471895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690020, 35.957127, 26.708788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.977066, 35.678562, 26.706158>,  <32.149296, 35.511425, 26.704580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.977066, 35.678562, 26.706158>,  <31.690020, 35.957127, 26.708788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977066, 35.678562, 26.706158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435384, -0.455971, 0.776229,
		-0.543571, -0.554170, -0.630417,
		0.717615, -0.696409, -0.006576,
		32.192352, 35.469639, 26.704185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360773, 35.324909, 26.773079>,  <31.690020, 35.957127, 26.708788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360773, 35.324909, 26.773079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729879, 35.275520, 26.919100>,  <31.951344, 35.245888, 27.006712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729879, 35.275520, 26.919100>,  <31.360773, 35.324909, 26.773079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729879, 35.275520, 26.919100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363394, -0.594087, 0.717639,
		0.128266, -0.794869, -0.593070,
		0.922764, -0.123469, 0.365051,
		32.006710, 35.238480, 27.028616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358406, 34.688591, 27.021748>,  <31.360773, 35.324909, 26.773079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358406, 34.688591, 27.021748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.701054, 34.812843, 27.186535>,  <31.906641, 34.887394, 27.285408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.701054, 34.812843, 27.186535>,  <31.358406, 34.688591, 27.021748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701054, 34.812843, 27.186535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160585, -0.598289, 0.785024,
		0.490326, -0.738621, -0.462623,
		0.856617, 0.310627, 0.411968,
		31.958038, 34.906033, 27.310125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726063, 34.020298, 27.322763>,  <31.358406, 34.688591, 27.021748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726063, 34.020298, 27.322763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885256, 34.341644, 27.499949>,  <31.980772, 34.534451, 27.606260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885256, 34.341644, 27.499949>,  <31.726063, 34.020298, 27.322763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885256, 34.341644, 27.499949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009653, -0.479156, 0.877677,
		0.917342, -0.353577, -0.182941,
		0.397984, 0.803363, 0.442963,
		32.004650, 34.582653, 27.632837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280800, 33.763153, 27.700588>,  <31.726063, 34.020298, 27.322763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280800, 33.763153, 27.700588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.180748, 34.096092, 27.898428>,  <32.120716, 34.295856, 28.017132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.180748, 34.096092, 27.898428>,  <32.280800, 33.763153, 27.700588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180748, 34.096092, 27.898428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023178, -0.505544, 0.862489,
		0.967934, 0.227200, 0.107160,
		-0.250131, 0.832350, 0.494599,
		32.105709, 34.345798, 28.046808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614391, 33.762291, 28.333977>,  <32.280800, 33.763153, 27.700588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614391, 33.762291, 28.333977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.341331, 34.044510, 28.410082>,  <32.177498, 34.213840, 28.455744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.341331, 34.044510, 28.410082>,  <32.614391, 33.762291, 28.333977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341331, 34.044510, 28.410082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074728, -0.326402, 0.942273,
		0.726918, 0.629021, 0.275541,
		-0.682647, 0.705545, 0.190262,
		32.136536, 34.256172, 28.467161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322739, 33.820423, 28.711552>,  <32.614391, 33.762291, 28.333977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322739, 33.820423, 28.711552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.538300, 33.484886, 28.680758>,  <33.667637, 33.283566, 28.662281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.538300, 33.484886, 28.680758>,  <33.322739, 33.820423, 28.711552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538300, 33.484886, 28.680758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265477, 0.255864, -0.929546,
		0.799441, 0.480496, 0.360579,
		0.538902, -0.838843, -0.076988,
		33.699970, 33.233234, 28.657661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885818, 34.038422, 28.343002>,  <33.322739, 33.820423, 28.711552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885818, 34.038422, 28.343002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893002, 33.639404, 28.315926>,  <33.897312, 33.399994, 28.299679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893002, 33.639404, 28.315926>,  <33.885818, 34.038422, 28.343002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893002, 33.639404, 28.315926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268027, 0.070027, -0.960863,
		0.963244, -0.000887, 0.268626,
		0.017959, -0.997545, -0.067691,
		33.898388, 33.340141, 28.295618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579475, 33.871281, 28.224155>,  <33.885818, 34.038422, 28.343002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579475, 33.871281, 28.224155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345463, 33.573227, 28.096090>,  <34.205055, 33.394394, 28.019251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345463, 33.573227, 28.096090>,  <34.579475, 33.871281, 28.224155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345463, 33.573227, 28.096090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370501, 0.105607, -0.922809,
		0.721431, -0.658496, 0.214290,
		-0.585036, -0.745137, -0.320162,
		34.169952, 33.349686, 28.000042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983921, 33.494797, 27.710720>,  <34.579475, 33.871281, 28.224155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983921, 33.494797, 27.710720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.618809, 33.347099, 27.640877>,  <34.399742, 33.258480, 27.598970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.618809, 33.347099, 27.640877>,  <34.983921, 33.494797, 27.710720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618809, 33.347099, 27.640877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222188, -0.090170, -0.970825,
		0.342731, -0.924946, 0.164347,
		-0.912780, -0.369248, -0.174608,
		34.344975, 33.236324, 27.588495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041908, 32.838516, 27.251263>,  <34.983921, 33.494797, 27.710720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041908, 32.838516, 27.251263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667271, 32.975456, 27.221378>,  <34.442486, 33.057621, 27.203447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667271, 32.975456, 27.221378>,  <35.041908, 32.838516, 27.251263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667271, 32.975456, 27.221378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000291, -0.213969, -0.976840,
		-0.350408, -0.914884, 0.200503,
		-0.936597, 0.342351, -0.074710,
		34.386292, 33.078163, 27.198965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729816, 32.359619, 26.676081>,  <35.041908, 32.838516, 27.251263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729816, 32.359619, 26.676081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498344, 32.685558, 26.689680>,  <34.359463, 32.881123, 26.697840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498344, 32.685558, 26.689680>,  <34.729816, 32.359619, 26.676081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498344, 32.685558, 26.689680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063060, 0.086269, -0.994274,
		-0.813112, -0.573224, -0.101306,
		-0.578682, 0.814845, 0.033998,
		34.324741, 32.930012, 26.699879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254639, 32.161285, 26.165350>,  <34.729816, 32.359619, 26.676081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254639, 32.161285, 26.165350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.249950, 32.559452, 26.203314>,  <34.247139, 32.798351, 26.226093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.249950, 32.559452, 26.203314>,  <34.254639, 32.161285, 26.165350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249950, 32.559452, 26.203314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023332, 0.095164, -0.995188,
		-0.999659, -0.009448, -0.024340,
		-0.011719, 0.995417, 0.094911,
		34.246433, 32.858078, 26.231787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849953, 32.383381, 25.622541>,  <34.254639, 32.161285, 26.165350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849953, 32.383381, 25.622541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062374, 32.703636, 25.733507>,  <34.189827, 32.895790, 25.800087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062374, 32.703636, 25.733507>,  <33.849953, 32.383381, 25.622541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062374, 32.703636, 25.733507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144958, 0.236728, -0.960701,
		-0.834849, 0.550394, 0.009655,
		0.531050, 0.800641, 0.277417,
		34.221687, 32.943829, 25.816732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577110, 32.964989, 25.172512>,  <33.849953, 32.383381, 25.622541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577110, 32.964989, 25.172512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.925140, 33.097607, 25.318415>,  <34.133957, 33.177177, 25.405956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.925140, 33.097607, 25.318415>,  <33.577110, 32.964989, 25.172512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925140, 33.097607, 25.318415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195499, 0.447195, -0.872810,
		-0.452498, 0.830718, 0.324274,
		0.870072, 0.331550, 0.364759,
		34.186161, 33.197071, 25.427843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599094, 33.620941, 24.975323>,  <33.577110, 32.964989, 25.172512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599094, 33.620941, 24.975323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976246, 33.514542, 25.055553>,  <34.202538, 33.450703, 25.103693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976246, 33.514542, 25.055553>,  <33.599094, 33.620941, 24.975323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976246, 33.514542, 25.055553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303276, 0.436145, -0.847232,
		0.137882, 0.859664, 0.491901,
		0.942875, -0.266000, 0.200578,
		34.259109, 33.434742, 25.115726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034615, 34.314499, 24.935053>,  <33.599094, 33.620941, 24.975323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034615, 34.314499, 24.935053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274723, 34.001148, 24.870564>,  <34.418789, 33.813137, 24.831871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274723, 34.001148, 24.870564>,  <34.034615, 34.314499, 24.935053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274723, 34.001148, 24.870564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464358, 0.505483, -0.727227,
		0.651189, 0.361668, 0.667195,
		0.600270, -0.783380, -0.161222,
		34.454803, 33.766136, 24.822197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666290, 34.634087, 24.988081>,  <34.034615, 34.314499, 24.935053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666290, 34.634087, 24.988081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.704460, 34.284996, 24.796566>,  <34.727360, 34.075542, 24.681656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.704460, 34.284996, 24.796566>,  <34.666290, 34.634087, 24.988081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704460, 34.284996, 24.796566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708562, 0.397379, -0.583121,
		0.699167, -0.283608, 0.656302,
		0.095423, -0.872729, -0.478788,
		34.733086, 34.023178, 24.652929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328491, 34.550163, 24.824858>,  <34.666290, 34.634087, 24.988081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328491, 34.550163, 24.824858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146584, 34.301659, 24.569607>,  <35.037437, 34.152554, 24.416456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146584, 34.301659, 24.569607>,  <35.328491, 34.550163, 24.824858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146584, 34.301659, 24.569607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562998, 0.354642, -0.746500,
		0.690083, -0.698754, 0.188490,
		-0.454774, -0.621266, -0.638130,
		35.010151, 34.115280, 24.378168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844765, 34.202404, 24.377407>,  <35.328491, 34.550163, 24.824858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844765, 34.202404, 24.377407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513058, 34.188766, 24.154284>,  <35.314034, 34.180584, 24.020409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513058, 34.188766, 24.154284>,  <35.844765, 34.202404, 24.377407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513058, 34.188766, 24.154284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448928, 0.553810, -0.701254,
		0.332830, -0.831945, -0.443951,
		-0.829269, -0.034096, -0.557808,
		35.264278, 34.178535, 23.986940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418156, 33.703430, 24.313526>,  <35.844765, 34.202404, 24.377407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418156, 33.703430, 24.313526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753578, 33.503521, 24.226759>,  <36.954830, 33.383575, 24.174698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753578, 33.503521, 24.226759>,  <36.418156, 33.703430, 24.313526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753578, 33.503521, 24.226759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092249, -0.522646, 0.847544,
		-0.536966, -0.690692, -0.484367,
		0.838545, -0.499785, -0.216928,
		37.005146, 33.353588, 24.161682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245735, 32.968002, 24.331434>,  <36.418156, 33.703430, 24.313526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245735, 32.968002, 24.331434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.639343, 32.973614, 24.402439>,  <36.875507, 32.976982, 24.445042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.639343, 32.973614, 24.402439>,  <36.245735, 32.968002, 24.331434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639343, 32.973614, 24.402439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136776, -0.578756, 0.803949,
		0.114019, -0.815380, -0.567587,
		0.984018, 0.014033, 0.177514,
		36.934547, 32.977825, 24.455692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445839, 32.256752, 24.503483>,  <36.245735, 32.968002, 24.331434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445839, 32.256752, 24.503483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730545, 32.490051, 24.660053>,  <36.901367, 32.630032, 24.753996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730545, 32.490051, 24.660053>,  <36.445839, 32.256752, 24.503483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730545, 32.490051, 24.660053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058055, -0.506498, 0.860285,
		0.700018, -0.635042, -0.326645,
		0.711762, 0.583251, 0.391425,
		36.944073, 32.665028, 24.777481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013184, 31.771605, 24.709362>,  <36.445839, 32.256752, 24.503483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013184, 31.771605, 24.709362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.066975, 32.109943, 24.915840>,  <37.099247, 32.312946, 25.039726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.066975, 32.109943, 24.915840>,  <37.013184, 31.771605, 24.709362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066975, 32.109943, 24.915840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055539, -0.526542, 0.848333,
		0.989359, -0.085409, -0.117784,
		0.134473, 0.845848, 0.516195,
		37.107315, 32.363697, 25.070700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507282, 31.593901, 25.136694>,  <37.013184, 31.771605, 24.709362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507282, 31.593901, 25.136694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339184, 31.906193, 25.321671>,  <37.238323, 32.093567, 25.432657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339184, 31.906193, 25.321671>,  <37.507282, 31.593901, 25.136694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339184, 31.906193, 25.321671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109516, -0.462266, 0.879952,
		0.900776, 0.420443, 0.108764,
		-0.420248, 0.780729, 0.462443,
		37.213108, 32.140411, 25.460403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782001, 31.492424, 25.736090>,  <37.507282, 31.593901, 25.136694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782001, 31.492424, 25.736090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475876, 31.744812, 25.786961>,  <37.292202, 31.896244, 25.817484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475876, 31.744812, 25.786961>,  <37.782001, 31.492424, 25.736090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475876, 31.744812, 25.786961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073042, -0.111173, 0.991113,
		0.639502, 0.767800, 0.038994,
		-0.765312, 0.630971, 0.127177,
		37.246281, 31.934103, 25.825113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993587, 31.785336, 26.309160>,  <37.782001, 31.492424, 25.736090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993587, 31.785336, 26.309160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.597782, 31.842302, 26.299517>,  <37.360298, 31.876482, 26.293730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.597782, 31.842302, 26.299517>,  <37.993587, 31.785336, 26.309160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597782, 31.842302, 26.299517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046444, -0.155650, 0.986720,
		0.136772, 0.977492, 0.160633,
		-0.989513, 0.142416, -0.024110,
		37.300930, 31.885027, 26.292284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873730, 32.052399, 26.892435>,  <37.993587, 31.785336, 26.309160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873730, 32.052399, 26.892435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500713, 31.939873, 26.801893>,  <37.276905, 31.872356, 26.747568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500713, 31.939873, 26.801893>,  <37.873730, 32.052399, 26.892435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500713, 31.939873, 26.801893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161514, -0.235681, 0.958315,
		-0.322938, 0.930223, 0.174345,
		-0.932537, -0.281317, -0.226355,
		37.220951, 31.855478, 26.733986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478764, 32.346745, 27.426926>,  <37.873730, 32.052399, 26.892435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478764, 32.346745, 27.426926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.251427, 32.056999, 27.270830>,  <37.115025, 31.883152, 27.177174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.251427, 32.056999, 27.270830>,  <37.478764, 32.346745, 27.426926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251427, 32.056999, 27.270830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319101, -0.243115, 0.916008,
		-0.758398, 0.645127, -0.092975,
		-0.568338, -0.724366, -0.390238,
		37.080925, 31.839689, 27.153759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699150, 32.492188, 27.681044>,  <37.478764, 32.346745, 27.426926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699150, 32.492188, 27.681044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749336, 32.115131, 27.557306>,  <36.779449, 31.888899, 27.483065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749336, 32.115131, 27.557306>,  <36.699150, 32.492188, 27.681044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749336, 32.115131, 27.557306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268232, -0.332424, 0.904182,
		-0.955149, -0.030469, -0.294554,
		0.125466, -0.942638, -0.309341,
		36.786976, 31.832340, 27.464504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134209, 32.219791, 27.901625>,  <36.699150, 32.492188, 27.681044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134209, 32.219791, 27.901625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.350933, 31.892731, 27.823757>,  <36.480968, 31.696495, 27.777037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.350933, 31.892731, 27.823757>,  <36.134209, 32.219791, 27.901625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350933, 31.892731, 27.823757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296348, -0.402574, 0.866091,
		-0.786524, -0.411567, -0.460426,
		0.541810, -0.817647, -0.194667,
		36.513477, 31.647436, 27.765358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739449, 31.596191, 27.893665>,  <36.134209, 32.219791, 27.901625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739449, 31.596191, 27.893665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.112518, 31.485285, 27.985954>,  <36.336361, 31.418741, 28.041328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.112518, 31.485285, 27.985954>,  <35.739449, 31.596191, 27.893665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112518, 31.485285, 27.985954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339249, -0.456951, 0.822257,
		-0.122556, -0.845174, -0.520251,
		0.932679, -0.277267, 0.230722,
		36.392323, 31.402105, 28.055170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660900, 31.091078, 28.296198>,  <35.739449, 31.596191, 27.893665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660900, 31.091078, 28.296198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052948, 31.139568, 28.359013>,  <36.288177, 31.168663, 28.396702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052948, 31.139568, 28.359013>,  <35.660900, 31.091078, 28.296198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052948, 31.139568, 28.359013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084170, -0.462698, 0.882511,
		0.179644, -0.878189, -0.443297,
		0.980124, 0.121226, 0.157038,
		36.346985, 31.175936, 28.406124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906185, 30.440840, 28.535065>,  <35.660900, 31.091078, 28.296198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906185, 30.440840, 28.535065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140003, 30.748222, 28.639208>,  <36.280293, 30.932652, 28.701693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140003, 30.748222, 28.639208>,  <35.906185, 30.440840, 28.535065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140003, 30.748222, 28.639208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126217, -0.230857, 0.964767,
		0.801485, -0.596809, -0.037954,
		0.584544, 0.768455, 0.260356,
		36.315365, 30.978760, 28.717314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.590973, 34.700394, 24.579439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.191803, 34.715794, 24.558821>,  <39.952301, 34.725033, 24.546450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.191803, 34.715794, 24.558821>,  <40.590973, 34.700394, 24.579439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191803, 34.715794, 24.558821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052491, 0.023920, -0.998335,
		-0.037204, -0.998972, -0.025891,
		-0.997928, 0.038501, -0.051547,
		39.892426, 34.727345, 24.543356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420582, 34.378593, 24.024134>,  <40.590973, 34.700394, 24.579439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420582, 34.378593, 24.024134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066788, 34.559315, 24.070704>,  <39.854511, 34.667747, 24.098646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066788, 34.559315, 24.070704>,  <40.420582, 34.378593, 24.024134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066788, 34.559315, 24.070704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025775, 0.201842, -0.979079,
		-0.465851, -0.868984, -0.166882,
		-0.884488, 0.451803, 0.116426,
		39.801441, 34.694855, 24.105631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903530, 34.148834, 23.464621>,  <40.420582, 34.378593, 24.024134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903530, 34.148834, 23.464621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806084, 34.512486, 23.599760>,  <39.747616, 34.730675, 23.680843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.806084, 34.512486, 23.599760>,  <39.903530, 34.148834, 23.464621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806084, 34.512486, 23.599760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023394, 0.342734, -0.939141,
		-0.969589, -0.236696, -0.062229,
		-0.243619, 0.909125, 0.337848,
		39.732998, 34.785225, 23.701115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325623, 34.375481, 23.072460>,  <39.903530, 34.148834, 23.464621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325623, 34.375481, 23.072460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.503677, 34.706665, 23.208897>,  <39.610508, 34.905376, 23.290758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.503677, 34.706665, 23.208897>,  <39.325623, 34.375481, 23.072460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503677, 34.706665, 23.208897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013363, 0.374727, -0.927039,
		-0.895365, 0.417213, 0.155739,
		0.445133, 0.827957, 0.341092,
		39.637218, 34.955051, 23.311224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084969, 34.860977, 22.695566>,  <39.325623, 34.375481, 23.072460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084969, 34.860977, 22.695566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396900, 35.068588, 22.835554>,  <39.584061, 35.193153, 22.919546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.396900, 35.068588, 22.835554>,  <39.084969, 34.860977, 22.695566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396900, 35.068588, 22.835554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214526, 0.303628, -0.928326,
		-0.588083, 0.799015, 0.125434,
		0.779831, 0.519023, 0.349968,
		39.630848, 35.224297, 22.940544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022892, 35.646618, 22.602554>,  <39.084969, 34.860977, 22.695566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022892, 35.646618, 22.602554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415649, 35.578190, 22.635117>,  <39.651302, 35.537132, 22.654654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415649, 35.578190, 22.635117>,  <39.022892, 35.646618, 22.602554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415649, 35.578190, 22.635117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154359, 0.473257, -0.867295,
		0.109848, 0.864153, 0.491093,
		0.981889, -0.171075, 0.081403,
		39.710217, 35.526867, 22.659538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413609, 36.273090, 22.390871>,  <39.022892, 35.646618, 22.602554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413609, 36.273090, 22.390871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.660515, 35.961109, 22.349571>,  <39.808659, 35.773922, 22.324791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.660515, 35.961109, 22.349571>,  <39.413609, 36.273090, 22.390871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660515, 35.961109, 22.349571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174730, 0.263857, -0.948604,
		0.767109, 0.567497, 0.299150,
		0.617262, -0.779953, -0.103248,
		39.845692, 35.727123, 22.318596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949482, 36.518181, 22.014946>,  <39.413609, 36.273090, 22.390871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949482, 36.518181, 22.014946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036133, 36.128368, 21.991735>,  <40.088123, 35.894482, 21.977810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036133, 36.128368, 21.991735>,  <39.949482, 36.518181, 22.014946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036133, 36.128368, 21.991735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147407, 0.091405, -0.984843,
		0.965062, 0.204790, 0.163453,
		0.216627, -0.974529, -0.058024,
		40.101120, 35.836010, 21.974329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556213, 36.487530, 21.689709>,  <39.949482, 36.518181, 22.014946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556213, 36.487530, 21.689709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.394268, 36.128162, 21.621674>,  <40.297100, 35.912540, 21.580853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.394268, 36.128162, 21.621674>,  <40.556213, 36.487530, 21.689709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394268, 36.128162, 21.621674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111042, 0.136332, -0.984420,
		0.907609, -0.417444, 0.044566,
		-0.404864, -0.898418, -0.170090,
		40.272808, 35.858639, 21.570646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895729, 36.206768, 21.063856>,  <40.556213, 36.487530, 21.689709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895729, 36.206768, 21.063856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578171, 35.963840, 21.075874>,  <40.387638, 35.818085, 21.083086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578171, 35.963840, 21.075874>,  <40.895729, 36.206768, 21.063856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578171, 35.963840, 21.075874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028723, -0.011902, -0.999517,
		0.607382, -0.794370, -0.007996,
		-0.793891, -0.607318, 0.030046,
		40.340004, 35.781647, 21.084888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988449, 35.615376, 20.506865>,  <40.895729, 36.206768, 21.063856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988449, 35.615376, 20.506865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595234, 35.630489, 20.578651>,  <40.359306, 35.639557, 20.621723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595234, 35.630489, 20.578651>,  <40.988449, 35.615376, 20.506865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595234, 35.630489, 20.578651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183319, -0.173217, -0.967672,
		-0.005476, -0.984158, 0.177205,
		-0.983038, 0.037784, 0.179466,
		40.300323, 35.641823, 20.632492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626522, 35.001499, 20.058769>,  <40.988449, 35.615376, 20.506865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626522, 35.001499, 20.058769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.382240, 35.304611, 20.150692>,  <40.235672, 35.486477, 20.205845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.382240, 35.304611, 20.150692>,  <40.626522, 35.001499, 20.058769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382240, 35.304611, 20.150692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208737, 0.125889, -0.969836,
		-0.763852, -0.640251, 0.081296,
		-0.610704, 0.757780, 0.229805,
		40.199028, 35.531944, 20.219633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924080, 34.767288, 19.805399>,  <40.626522, 35.001499, 20.058769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924080, 34.767288, 19.805399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.982590, 35.162971, 19.808823>,  <40.017696, 35.400383, 19.810877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.982590, 35.162971, 19.808823>,  <39.924080, 34.767288, 19.805399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982590, 35.162971, 19.808823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225641, 0.041789, -0.973314,
		-0.963167, 0.140437, 0.229318,
		0.146272, 0.989208, 0.008561,
		40.026470, 35.459732, 19.811392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216057, 34.976109, 19.627390>,  <39.924080, 34.767288, 19.805399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216057, 34.976109, 19.627390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528564, 35.211716, 19.544764>,  <39.716068, 35.353081, 19.495188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528564, 35.211716, 19.544764>,  <39.216057, 34.976109, 19.627390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528564, 35.211716, 19.544764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273616, 0.025732, -0.961495,
		-0.561022, 0.807710, 0.181268,
		0.781274, 0.589018, -0.206567,
		39.762947, 35.388420, 19.482794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116360, 35.251793, 18.890881>,  <39.216057, 34.976109, 19.627390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116360, 35.251793, 18.890881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.809959, 35.034496, 18.753401>,  <38.626118, 34.904118, 18.670914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.809959, 35.034496, 18.753401>,  <39.116360, 35.251793, 18.890881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809959, 35.034496, 18.753401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335019, -0.118954, 0.934672,
		-0.548640, 0.831105, -0.090879,
		-0.766000, -0.543245, -0.343699,
		38.580158, 34.871521, 18.650291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348076, 35.563675, 19.044973>,  <39.116360, 35.251793, 18.890881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348076, 35.563675, 19.044973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296780, 35.170807, 18.989986>,  <38.266003, 34.935085, 18.956995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296780, 35.170807, 18.989986>,  <38.348076, 35.563675, 19.044973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296780, 35.170807, 18.989986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498459, -0.055999, 0.865103,
		-0.857376, 0.179460, -0.482390,
		-0.128238, -0.982170, -0.137466,
		38.258308, 34.876156, 18.948746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645073, 35.485435, 19.349928>,  <38.348076, 35.563675, 19.044973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645073, 35.485435, 19.349928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822834, 35.127926, 19.325674>,  <37.929489, 34.913422, 19.311121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.822834, 35.127926, 19.325674>,  <37.645073, 35.485435, 19.349928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822834, 35.127926, 19.325674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546733, -0.324220, 0.771988,
		-0.709640, -0.309923, -0.632739,
		0.444403, -0.893773, -0.060634,
		37.956154, 34.859795, 19.307484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241714, 35.097164, 19.686890>,  <37.645073, 35.485435, 19.349928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241714, 35.097164, 19.686890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545597, 34.837212, 19.677944>,  <37.727924, 34.681240, 19.672577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545597, 34.837212, 19.677944>,  <37.241714, 35.097164, 19.686890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545597, 34.837212, 19.677944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296764, -0.377105, 0.877339,
		-0.578605, -0.659879, -0.479350,
		0.759703, -0.649887, -0.022366,
		37.773506, 34.642246, 19.671234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013859, 34.495541, 19.923164>,  <37.241714, 35.097164, 19.686890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013859, 34.495541, 19.923164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397831, 34.421001, 20.006882>,  <37.628216, 34.376278, 20.057112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397831, 34.421001, 20.006882>,  <37.013859, 34.495541, 19.923164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397831, 34.421001, 20.006882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253886, -0.262197, 0.931018,
		-0.118615, -0.946852, -0.299002,
		0.959934, -0.186345, 0.209292,
		37.685810, 34.365097, 20.069670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952827, 33.937614, 20.318815>,  <37.013859, 34.495541, 19.923164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952827, 33.937614, 20.318815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.319809, 34.059013, 20.421715>,  <37.539997, 34.131851, 20.483454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.319809, 34.059013, 20.421715>,  <36.952827, 33.937614, 20.318815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319809, 34.059013, 20.421715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198866, -0.210193, 0.957221,
		0.344586, -0.929359, -0.132485,
		0.917449, 0.303498, 0.257248,
		37.595043, 34.150063, 20.498890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360676, 33.434872, 20.749632>,  <36.952827, 33.937614, 20.318815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360676, 33.434872, 20.749632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.558064, 33.766075, 20.856134>,  <37.676498, 33.964798, 20.920036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.558064, 33.766075, 20.856134>,  <37.360676, 33.434872, 20.749632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558064, 33.766075, 20.856134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111864, -0.243165, 0.963513,
		0.862538, -0.505251, -0.027371,
		0.493472, 0.828005, 0.266258,
		37.706104, 34.014477, 20.936012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997658, 33.245258, 21.215054>,  <37.360676, 33.434872, 20.749632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997658, 33.245258, 21.215054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889599, 33.619411, 21.306332>,  <37.824764, 33.843903, 21.361099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889599, 33.619411, 21.306332>,  <37.997658, 33.245258, 21.215054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889599, 33.619411, 21.306332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069051, -0.255220, 0.964414,
		0.960341, 0.244774, 0.133535,
		-0.270145, 0.935387, 0.228196,
		37.808556, 33.900028, 21.374790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363335, 33.401516, 21.878202>,  <37.997658, 33.245258, 21.215054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363335, 33.401516, 21.878202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097916, 33.700748, 21.881742>,  <37.938663, 33.880287, 21.883867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097916, 33.700748, 21.881742>,  <38.363335, 33.401516, 21.878202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097916, 33.700748, 21.881742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130361, -0.127262, 0.983265,
		0.736692, 0.651286, 0.181965,
		-0.663544, 0.748084, 0.008851,
		37.898853, 33.925175, 21.884398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528984, 33.806957, 22.431721>,  <38.363335, 33.401516, 21.878202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528984, 33.806957, 22.431721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149227, 33.915478, 22.368406>,  <37.921375, 33.980591, 22.330418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149227, 33.915478, 22.368406>,  <38.528984, 33.806957, 22.431721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149227, 33.915478, 22.368406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218161, -0.206994, 0.953708,
		0.225981, 0.939972, 0.255706,
		-0.949388, 0.271305, -0.158288,
		37.864410, 33.996868, 22.320919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385189, 34.197220, 22.947674>,  <38.528984, 33.806957, 22.431721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385189, 34.197220, 22.947674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013004, 34.097801, 22.839994>,  <37.789696, 34.038151, 22.775387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013004, 34.097801, 22.839994>,  <38.385189, 34.197220, 22.947674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013004, 34.097801, 22.839994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225936, -0.189180, 0.955596,
		-0.288440, 0.949965, 0.119868,
		-0.930460, -0.248549, -0.269199,
		37.733868, 34.023235, 22.759235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949215, 34.536274, 23.402332>,  <38.385189, 34.197220, 22.947674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949215, 34.536274, 23.402332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701538, 34.262512, 23.248352>,  <37.552933, 34.098255, 23.155964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701538, 34.262512, 23.248352>,  <37.949215, 34.536274, 23.402332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701538, 34.262512, 23.248352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222092, -0.317577, 0.921857,
		-0.753177, 0.656302, 0.044641,
		-0.619193, -0.684407, -0.384951,
		37.515781, 34.057190, 23.132866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466793, 34.513157, 23.875790>,  <37.949215, 34.536274, 23.402332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466793, 34.513157, 23.875790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400536, 34.173359, 23.675421>,  <37.360783, 33.969479, 23.555201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400536, 34.173359, 23.675421>,  <37.466793, 34.513157, 23.875790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400536, 34.173359, 23.675421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391082, -0.409709, 0.824132,
		-0.905327, 0.332413, -0.264357,
		-0.165643, -0.849494, -0.500921,
		37.350842, 33.918510, 23.525145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783726, 34.250690, 24.038280>,  <37.466793, 34.513157, 23.875790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783726, 34.250690, 24.038280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007839, 33.933228, 23.943468>,  <37.142307, 33.742748, 23.886581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007839, 33.933228, 23.943468>,  <36.783726, 34.250690, 24.038280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007839, 33.933228, 23.943468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265226, -0.443001, 0.856391,
		-0.784687, -0.416957, -0.458707,
		0.560286, -0.793660, -0.237030,
		37.175926, 33.695129, 23.872358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034649, 34.333977, 23.710558>,  <36.783726, 34.250690, 24.038280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034649, 34.333977, 23.710558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639050, 34.358116, 23.656546>,  <35.401688, 34.372601, 23.624138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639050, 34.358116, 23.656546>,  <36.034649, 34.333977, 23.710558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639050, 34.358116, 23.656546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144454, 0.590155, -0.794261,
		0.031755, -0.805031, -0.592382,
		-0.989002, 0.060350, -0.135031,
		35.342350, 34.376221, 23.616035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928997, 34.261917, 23.023401>,  <36.034649, 34.333977, 23.710558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928997, 34.261917, 23.023401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594872, 34.433628, 23.160791>,  <35.394398, 34.536655, 23.243225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594872, 34.433628, 23.160791>,  <35.928997, 34.261917, 23.023401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594872, 34.433628, 23.160791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085304, 0.718394, -0.690386,
		-0.543117, -0.547388, -0.636703,
		-0.835312, 0.429274, 0.343478,
		35.344276, 34.562408, 23.263834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530048, 34.358559, 22.429417>,  <35.928997, 34.261917, 23.023401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530048, 34.358559, 22.429417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373718, 34.614994, 22.693617>,  <35.279919, 34.768856, 22.852137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373718, 34.614994, 22.693617>,  <35.530048, 34.358559, 22.429417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373718, 34.614994, 22.693617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071546, 0.694244, -0.716175,
		-0.917678, -0.327158, -0.225464,
		-0.390830, 0.641087, 0.660499,
		35.256470, 34.807320, 22.891768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768383, 34.329906, 22.366884>,  <35.530048, 34.358559, 22.429417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768383, 34.329906, 22.366884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914700, 34.678055, 22.498732>,  <35.002491, 34.886944, 22.577839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914700, 34.678055, 22.498732>,  <34.768383, 34.329906, 22.366884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914700, 34.678055, 22.498732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251815, 0.433510, -0.865250,
		-0.895982, 0.233502, 0.377748,
		0.365795, 0.870371, 0.329618,
		35.024437, 34.939167, 22.597616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298412, 34.946918, 22.136015>,  <34.768383, 34.329906, 22.366884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298412, 34.946918, 22.136015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630779, 35.143257, 22.240814>,  <34.830200, 35.261063, 22.303694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630779, 35.143257, 22.240814>,  <34.298412, 34.946918, 22.136015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630779, 35.143257, 22.240814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091373, 0.344112, -0.934472,
		-0.548844, 0.800408, 0.241078,
		0.830916, 0.490851, 0.261999,
		34.880054, 35.290512, 22.319414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297993, 35.700714, 22.020342>,  <34.298412, 34.946918, 22.136015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297993, 35.700714, 22.020342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691238, 35.641918, 22.063955>,  <34.927185, 35.606640, 22.090122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691238, 35.641918, 22.063955>,  <34.297993, 35.700714, 22.020342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691238, 35.641918, 22.063955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166116, 0.466671, -0.868691,
		0.076805, 0.872131, 0.483207,
		0.983111, -0.146988, 0.109032,
		34.986172, 35.597820, 22.096664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602997, 36.376026, 21.826992>,  <34.297993, 35.700714, 22.020342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602997, 36.376026, 21.826992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874146, 36.084084, 21.791660>,  <35.036835, 35.908916, 21.770460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874146, 36.084084, 21.791660>,  <34.602997, 36.376026, 21.826992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874146, 36.084084, 21.791660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330959, 0.410232, -0.849809,
		0.656476, 0.546824, 0.519637,
		0.677868, -0.729858, -0.088331,
		35.077507, 35.865128, 21.765162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713028, 37.139469, 21.815323>,  <34.602997, 36.376026, 21.826992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713028, 37.139469, 21.815323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425163, 37.414284, 21.775179>,  <34.252445, 37.579174, 21.751093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425163, 37.414284, 21.775179>,  <34.713028, 37.139469, 21.815323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425163, 37.414284, 21.775179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283817, -0.159169, 0.945575,
		0.633672, 0.708974, 0.309541,
		-0.719658, 0.687038, -0.100358,
		34.209267, 37.620396, 21.745071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656471, 37.411304, 22.434191>,  <34.713028, 37.139469, 21.815323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656471, 37.411304, 22.434191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302143, 37.506813, 22.275043>,  <34.089546, 37.564117, 22.179554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302143, 37.506813, 22.275043>,  <34.656471, 37.411304, 22.434191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302143, 37.506813, 22.275043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453919, -0.267980, 0.849791,
		0.096288, 0.933366, 0.345768,
		-0.885825, 0.238775, -0.397870,
		34.036396, 37.578445, 22.155684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224461, 37.869465, 22.865889>,  <34.656471, 37.411304, 22.434191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224461, 37.869465, 22.865889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940456, 37.709946, 22.633734>,  <33.770054, 37.614235, 22.494440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940456, 37.709946, 22.633734>,  <34.224461, 37.869465, 22.865889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940456, 37.709946, 22.633734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504139, -0.287586, 0.814333,
		-0.491664, 0.870779, 0.003140,
		-0.710007, -0.398795, -0.580389,
		33.727455, 37.590305, 22.459618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613846, 38.071167, 23.111589>,  <34.224461, 37.869465, 22.865889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613846, 38.071167, 23.111589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.513153, 37.759090, 22.882528>,  <33.452736, 37.571846, 22.745090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.513153, 37.759090, 22.882528>,  <33.613846, 38.071167, 23.111589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513153, 37.759090, 22.882528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445830, -0.431701, 0.784137,
		-0.858991, 0.452701, -0.239157,
		-0.251735, -0.780190, -0.572655,
		33.437634, 37.525032, 22.710732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865253, 37.964584, 23.244759>,  <33.613846, 38.071167, 23.111589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865253, 37.964584, 23.244759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015770, 37.623699, 23.099354>,  <33.106079, 37.419170, 23.012112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015770, 37.623699, 23.099354>,  <32.865253, 37.964584, 23.244759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015770, 37.623699, 23.099354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474737, -0.514282, 0.714240,
		-0.795630, -0.096192, -0.598097,
		0.376295, -0.852209, -0.363512,
		33.128658, 37.368038, 22.990301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297699, 37.476002, 23.125885>,  <32.865253, 37.964584, 23.244759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297699, 37.476002, 23.125885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643871, 37.281662, 23.174829>,  <32.851574, 37.165058, 23.204197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643871, 37.281662, 23.174829>,  <32.297699, 37.476002, 23.125885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643871, 37.281662, 23.174829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396987, -0.515975, 0.759060,
		-0.305653, -0.705493, -0.639418,
		0.865435, -0.485849, 0.122362,
		32.903503, 37.135906, 23.211538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103275, 36.796150, 23.344128>,  <32.297699, 37.476002, 23.125885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103275, 36.796150, 23.344128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.490803, 36.797554, 23.443222>,  <32.723320, 36.798397, 23.502680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.490803, 36.797554, 23.443222>,  <32.103275, 36.796150, 23.344128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490803, 36.797554, 23.443222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183990, -0.659475, 0.728862,
		0.165934, -0.751718, -0.638268,
		0.968821, 0.003508, 0.247738,
		32.781448, 36.798607, 23.517544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.980324, 39.008392, 20.849026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082397, 38.621883, 20.835142>,  <39.143642, 38.389980, 20.826813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082397, 38.621883, 20.835142>,  <38.980324, 39.008392, 20.849026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082397, 38.621883, 20.835142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546203, -0.173681, 0.819449,
		-0.797837, -0.190151, -0.572100,
		0.255182, -0.966270, -0.034708,
		39.158951, 38.332001, 20.824730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336838, 38.661640, 20.828564>,  <38.980324, 39.008392, 20.849026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336838, 38.661640, 20.828564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629898, 38.433681, 20.977400>,  <38.805733, 38.296906, 21.066702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629898, 38.433681, 20.977400>,  <38.336838, 38.661640, 20.828564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629898, 38.433681, 20.977400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561703, -0.197568, 0.803403,
		-0.384342, -0.797614, -0.464858,
		0.732647, -0.569894, 0.372088,
		38.849693, 38.262714, 21.089025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032024, 38.061909, 21.054386>,  <38.336838, 38.661640, 20.828564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032024, 38.061909, 21.054386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.376492, 38.053635, 21.257547>,  <38.583172, 38.048672, 21.379444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.376492, 38.053635, 21.257547>,  <38.032024, 38.061909, 21.054386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376492, 38.053635, 21.257547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475880, -0.384060, 0.791224,
		0.178699, -0.923076, -0.340583,
		0.861165, -0.020685, 0.507905,
		38.634842, 38.047428, 21.409918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041496, 37.435062, 21.420269>,  <38.032024, 38.061909, 21.054386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041496, 37.435062, 21.420269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.321999, 37.641335, 21.617172>,  <38.490299, 37.765099, 21.735313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.321999, 37.641335, 21.617172>,  <38.041496, 37.435062, 21.420269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321999, 37.641335, 21.617172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298159, -0.415053, 0.859554,
		0.647569, -0.749535, -0.137301,
		0.701253, 0.515683, 0.492256,
		38.532375, 37.796040, 21.764849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319603, 36.908710, 21.938890>,  <38.041496, 37.435062, 21.420269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319603, 36.908710, 21.938890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449947, 37.260395, 22.077917>,  <38.528152, 37.471405, 22.161333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449947, 37.260395, 22.077917>,  <38.319603, 36.908710, 21.938890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449947, 37.260395, 22.077917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338521, -0.234751, 0.911205,
		0.882734, -0.414583, 0.221137,
		0.325858, 0.879212, 0.347568,
		38.547707, 37.524158, 22.182188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718346, 36.841816, 22.605011>,  <38.319603, 36.908710, 21.938890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718346, 36.841816, 22.605011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.615665, 37.227570, 22.630537>,  <38.554058, 37.459023, 22.645853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.615665, 37.227570, 22.630537>,  <38.718346, 36.841816, 22.605011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615665, 37.227570, 22.630537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338731, -0.151611, 0.928588,
		0.905189, 0.216749, 0.365584,
		-0.256697, 0.964383, 0.063817,
		38.538658, 37.516884, 22.649683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052395, 37.086380, 23.210133>,  <38.718346, 36.841816, 22.605011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052395, 37.086380, 23.210133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.755302, 37.336037, 23.113146>,  <38.577045, 37.485832, 23.054955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.755302, 37.336037, 23.113146>,  <39.052395, 37.086380, 23.210133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755302, 37.336037, 23.113146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312759, -0.003199, 0.949827,
		0.592053, 0.781303, 0.197583,
		-0.742735, 0.624144, -0.242465,
		38.532482, 37.523281, 23.040407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073490, 37.544231, 23.827353>,  <39.052395, 37.086380, 23.210133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073490, 37.544231, 23.827353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.714710, 37.604237, 23.660988>,  <38.499443, 37.640240, 23.561169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.714710, 37.604237, 23.660988>,  <39.073490, 37.544231, 23.827353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714710, 37.604237, 23.660988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373461, 0.246481, 0.894301,
		0.236672, 0.957467, -0.165056,
		-0.896946, 0.150014, -0.415912,
		38.445625, 37.649242, 23.536215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853889, 38.166615, 24.066351>,  <39.073490, 37.544231, 23.827353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853889, 38.166615, 24.066351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.524689, 37.966702, 23.958363>,  <38.327168, 37.846752, 23.893570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.524689, 37.966702, 23.958363>,  <38.853889, 38.166615, 24.066351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524689, 37.966702, 23.958363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432986, 0.244316, 0.867660,
		-0.367683, 0.830980, -0.417471,
		-0.823002, -0.499783, -0.269972,
		38.277786, 37.816765, 23.877371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375137, 38.516251, 24.438013>,  <38.853889, 38.166615, 24.066351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375137, 38.516251, 24.438013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.147972, 38.209354, 24.318806>,  <38.011673, 38.025219, 24.247280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.147972, 38.209354, 24.318806>,  <38.375137, 38.516251, 24.438013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147972, 38.209354, 24.318806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443792, -0.019505, 0.895918,
		-0.693195, 0.641066, -0.329417,
		-0.567917, -0.767238, -0.298020,
		37.977596, 37.979183, 24.229399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722275, 38.728680, 24.598330>,  <38.375137, 38.516251, 24.438013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722275, 38.728680, 24.598330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.722141, 38.328987, 24.582630>,  <37.722061, 38.089172, 24.573210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.722141, 38.328987, 24.582630>,  <37.722275, 38.728680, 24.598330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722141, 38.328987, 24.582630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573838, -0.031951, 0.818345,
		-0.818969, 0.022800, -0.573385,
		-0.000338, -0.999229, -0.039251,
		37.722038, 38.029217, 24.570854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064171, 38.459080, 24.612099>,  <37.722275, 38.728680, 24.598330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064171, 38.459080, 24.612099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.266769, 38.159615, 24.783195>,  <37.388329, 37.979935, 24.885853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.266769, 38.159615, 24.783195>,  <37.064171, 38.459080, 24.612099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266769, 38.159615, 24.783195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599047, 0.051268, 0.799071,
		-0.620168, -0.660960, -0.422520,
		0.506492, -0.748668, 0.427741,
		37.418716, 37.935013, 24.911518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368660, 38.187717, 24.294472>,  <37.064171, 38.459080, 24.612099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368660, 38.187717, 24.294472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.054214, 38.434471, 24.309849>,  <35.865547, 38.582523, 24.319075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.054214, 38.434471, 24.309849>,  <36.368660, 38.187717, 24.294472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054214, 38.434471, 24.309849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060502, 0.138698, -0.988485,
		-0.615111, -0.774738, -0.146355,
		-0.786116, 0.616883, 0.038441,
		35.818378, 38.619537, 24.321381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945007, 37.915382, 23.718864>,  <36.368660, 38.187717, 24.294472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945007, 37.915382, 23.718864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.832775, 38.288773, 23.808212>,  <35.765434, 38.512806, 23.861820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.832775, 38.288773, 23.808212>,  <35.945007, 37.915382, 23.718864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832775, 38.288773, 23.808212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093721, 0.258250, -0.961522,
		-0.955243, -0.248855, -0.159947,
		-0.280585, 0.933477, 0.223368,
		35.748600, 38.568817, 23.875223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525085, 38.098011, 23.153193>,  <35.945007, 37.915382, 23.718864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525085, 38.098011, 23.153193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.605686, 38.454082, 23.316643>,  <35.654045, 38.667725, 23.414713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.605686, 38.454082, 23.316643>,  <35.525085, 38.098011, 23.153193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605686, 38.454082, 23.316643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246997, 0.357519, -0.900651,
		-0.947834, 0.282413, -0.147831,
		0.201503, 0.890181, 0.408624,
		35.666138, 38.721138, 23.439230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156361, 38.530270, 22.704996>,  <35.525085, 38.098011, 23.153193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156361, 38.530270, 22.704996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.414787, 38.760483, 22.905542>,  <35.569843, 38.898609, 23.025871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.414787, 38.760483, 22.905542>,  <35.156361, 38.530270, 22.704996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414787, 38.760483, 22.905542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344100, 0.366708, -0.864361,
		-0.681321, 0.730952, 0.038876,
		0.646062, 0.575530, 0.501367,
		35.608604, 38.933144, 23.055952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097069, 39.192211, 22.413656>,  <35.156361, 38.530270, 22.704996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097069, 39.192211, 22.413656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.465130, 39.187698, 22.570215>,  <35.685966, 39.184990, 22.664150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.465130, 39.187698, 22.570215>,  <35.097069, 39.192211, 22.413656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465130, 39.187698, 22.570215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380112, 0.265666, -0.885966,
		-0.093989, 0.963999, 0.248741,
		0.920153, -0.011278, 0.391397,
		35.741177, 39.184315, 22.687634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385254, 39.831894, 22.106169>,  <35.097069, 39.192211, 22.413656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385254, 39.831894, 22.106169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.679844, 39.599491, 22.244755>,  <35.856598, 39.460049, 22.327906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.679844, 39.599491, 22.244755>,  <35.385254, 39.831894, 22.106169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679844, 39.599491, 22.244755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583284, 0.286013, -0.760248,
		0.342614, 0.761991, 0.549532,
		0.736475, -0.581005, 0.346465,
		35.900787, 39.425190, 22.348694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898796, 40.254997, 22.309036>,  <35.385254, 39.831894, 22.106169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898796, 40.254997, 22.309036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.062962, 39.894543, 22.253159>,  <36.161461, 39.678268, 22.219631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.062962, 39.894543, 22.253159>,  <35.898796, 40.254997, 22.309036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062962, 39.894543, 22.253159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634075, 0.392103, -0.666487,
		0.655371, 0.184957, 0.732312,
		0.410413, -0.901136, -0.139696,
		36.186085, 39.624203, 22.211250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539318, 40.378880, 22.241184>,  <35.898796, 40.254997, 22.309036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539318, 40.378880, 22.241184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.505623, 40.022301, 22.063095>,  <36.485405, 39.808353, 21.956242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.505623, 40.022301, 22.063095>,  <36.539318, 40.378880, 22.241184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505623, 40.022301, 22.063095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723401, 0.252568, -0.642573,
		0.685270, -0.376204, 0.623599,
		-0.084238, -0.891448, -0.445224,
		36.480350, 39.754868, 21.929527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163841, 40.300350, 21.963989>,  <36.539318, 40.378880, 22.241184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163841, 40.300350, 21.963989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.965141, 40.011223, 21.771833>,  <36.845921, 39.837746, 21.656540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.965141, 40.011223, 21.771833>,  <37.163841, 40.300350, 21.963989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965141, 40.011223, 21.771833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464501, 0.246143, -0.850678,
		0.733132, -0.645712, 0.213480,
		-0.496746, -0.722820, -0.480389,
		36.816116, 39.794376, 21.627716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609589, 39.969547, 21.494967>,  <37.163841, 40.300350, 21.963989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609589, 39.969547, 21.494967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.244194, 39.878925, 21.359779>,  <37.024960, 39.824554, 21.278667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.244194, 39.878925, 21.359779>,  <37.609589, 39.969547, 21.494967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244194, 39.878925, 21.359779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271426, 0.279491, -0.920985,
		0.303117, -0.933036, -0.193815,
		-0.913481, -0.226560, -0.337968,
		36.970150, 39.810959, 21.258389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715382, 39.474396, 20.864679>,  <37.609589, 39.969547, 21.494967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715382, 39.474396, 20.864679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.346409, 39.625523, 20.832767>,  <37.125023, 39.716198, 20.813622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.346409, 39.625523, 20.832767>,  <37.715382, 39.474396, 20.864679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346409, 39.625523, 20.832767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211815, 0.322323, -0.922628,
		-0.322873, -0.867963, -0.377350,
		-0.922436, 0.377820, -0.079778,
		37.069679, 39.738869, 20.808834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438007, 39.309830, 20.175501>,  <37.715382, 39.474396, 20.864679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438007, 39.309830, 20.175501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233231, 39.629417, 20.301714>,  <37.110367, 39.821171, 20.377441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233231, 39.629417, 20.301714>,  <37.438007, 39.309830, 20.175501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233231, 39.629417, 20.301714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195273, 0.465939, -0.863000,
		-0.836533, -0.380187, -0.394550,
		-0.511938, 0.798973, 0.315533,
		37.079651, 39.869110, 20.396374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069359, 39.440098, 19.647917>,  <37.438007, 39.309830, 20.175501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069359, 39.440098, 19.647917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.099598, 39.774170, 19.865822>,  <37.117741, 39.974613, 19.996565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.099598, 39.774170, 19.865822>,  <37.069359, 39.440098, 19.647917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099598, 39.774170, 19.865822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385890, 0.479254, -0.788292,
		-0.919442, 0.269810, -0.286057,
		0.075594, 0.835176, 0.544763,
		37.122276, 40.024723, 20.029251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331921, 39.261875, 19.951292>,  <37.069359, 39.440098, 19.647917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331921, 39.261875, 19.951292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.090954, 39.092068, 19.680922>,  <35.946373, 38.990185, 19.518700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.090954, 39.092068, 19.680922>,  <36.331921, 39.261875, 19.951292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090954, 39.092068, 19.680922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649326, -0.231834, 0.724312,
		-0.464185, 0.875237, -0.135988,
		-0.602418, -0.424516, -0.675928,
		35.910229, 38.964714, 19.478144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668400, 39.372021, 20.075209>,  <36.331921, 39.261875, 19.951292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668400, 39.372021, 20.075209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.581448, 39.067715, 19.830595>,  <35.529278, 38.885132, 19.683826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.581448, 39.067715, 19.830595>,  <35.668400, 39.372021, 20.075209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581448, 39.067715, 19.830595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724390, -0.294184, 0.623470,
		-0.654221, 0.578520, -0.487144,
		-0.217380, -0.760769, -0.611536,
		35.516235, 38.839485, 19.647135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958870, 39.380989, 19.860661>,  <35.668400, 39.372021, 20.075209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958870, 39.380989, 19.860661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.097752, 39.006470, 19.839495>,  <35.181080, 38.781757, 19.826796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.097752, 39.006470, 19.839495>,  <34.958870, 39.380989, 19.860661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097752, 39.006470, 19.839495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639529, -0.277671, 0.716869,
		-0.685893, -0.215063, -0.695197,
		0.347208, -0.936294, -0.052914,
		35.201916, 38.725582, 19.823620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390903, 38.873215, 19.819445>,  <34.958870, 39.380989, 19.860661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390903, 38.873215, 19.819445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684914, 38.633751, 19.946781>,  <34.861320, 38.490074, 20.023184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684914, 38.633751, 19.946781>,  <34.390903, 38.873215, 19.819445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684914, 38.633751, 19.946781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593731, -0.341548, 0.728580,
		-0.327427, -0.724547, -0.606484,
		0.735034, -0.598645, 0.318354,
		34.905422, 38.454155, 20.042284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123623, 38.223274, 19.799255>,  <34.390903, 38.873215, 19.819445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123623, 38.223274, 19.799255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435131, 38.198154, 20.048920>,  <34.622036, 38.183083, 20.198719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.435131, 38.198154, 20.048920>,  <34.123623, 38.223274, 19.799255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435131, 38.198154, 20.048920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595108, -0.388670, 0.703407,
		0.198416, -0.919234, -0.340058,
		0.778767, -0.062804, 0.624162,
		34.668762, 38.179314, 20.236168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039116, 37.587666, 20.134026>,  <34.123623, 38.223274, 19.799255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039116, 37.587666, 20.134026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.307339, 37.740311, 20.388496>,  <34.468273, 37.831898, 20.541178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.307339, 37.740311, 20.388496>,  <34.039116, 37.587666, 20.134026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307339, 37.740311, 20.388496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498581, -0.403175, 0.767377,
		0.549332, -0.831757, -0.080087,
		0.670561, 0.381615, 0.636175,
		34.508507, 37.854794, 20.579350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141525, 37.067524, 20.583790>,  <34.039116, 37.587666, 20.134026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141525, 37.067524, 20.583790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.259850, 37.400883, 20.770529>,  <34.330845, 37.600899, 20.882572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.259850, 37.400883, 20.770529>,  <34.141525, 37.067524, 20.583790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259850, 37.400883, 20.770529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535541, -0.260006, 0.803488,
		0.791006, -0.487698, 0.369404,
		0.295812, 0.833395, 0.466849,
		34.348595, 37.650902, 20.910583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309448, 36.906197, 21.192760>,  <34.141525, 37.067524, 20.583790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309448, 36.906197, 21.192760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.241684, 37.297470, 21.240854>,  <34.201027, 37.532234, 21.269711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.241684, 37.297470, 21.240854>,  <34.309448, 36.906197, 21.192760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241684, 37.297470, 21.240854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483682, -0.188818, 0.854634,
		0.858691, 0.086630, 0.505118,
		-0.169412, 0.978183, 0.120236,
		34.190861, 37.590923, 21.276924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056305, 36.648949, 21.274822>,  <34.309448, 36.906197, 21.192760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056305, 36.648949, 21.274822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.144127, 36.258717, 21.272375>,  <35.196819, 36.024578, 21.270906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.144127, 36.258717, 21.272375>,  <35.056305, 36.648949, 21.274822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144127, 36.258717, 21.272375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207522, 0.052829, -0.976803,
		0.953273, 0.213196, 0.214054,
		0.219558, -0.975580, -0.006117,
		35.209995, 35.966042, 21.270540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690948, 36.567165, 20.841999>,  <35.056305, 36.648949, 21.274822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690948, 36.567165, 20.841999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.517109, 36.207855, 20.867985>,  <35.412804, 35.992268, 20.883575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.517109, 36.207855, 20.867985>,  <35.690948, 36.567165, 20.841999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517109, 36.207855, 20.867985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250465, -0.189834, -0.949332,
		0.865096, -0.396307, 0.307489,
		-0.434599, -0.898278, 0.064963,
		35.386730, 35.938374, 20.887474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227715, 36.105591, 20.771992>,  <35.690948, 36.567165, 20.841999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227715, 36.105591, 20.771992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.878704, 35.933510, 20.679361>,  <35.669296, 35.830261, 20.623783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.878704, 35.933510, 20.679361>,  <36.227715, 36.105591, 20.771992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878704, 35.933510, 20.679361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332457, -0.175471, -0.926651,
		0.358010, -0.885516, 0.296125,
		-0.872526, -0.430199, -0.231576,
		35.616947, 35.804451, 20.609888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475689, 35.503330, 20.461355>,  <36.227715, 36.105591, 20.771992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475689, 35.503330, 20.461355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.111855, 35.612942, 20.336420>,  <35.893555, 35.678707, 20.261459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.111855, 35.612942, 20.336420>,  <36.475689, 35.503330, 20.461355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111855, 35.612942, 20.336420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280296, -0.150239, -0.948084,
		-0.306726, -0.949915, 0.059847,
		-0.909590, 0.274027, -0.312339,
		35.838978, 35.695148, 20.242718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472324, 35.104366, 19.884537>,  <36.475689, 35.503330, 20.461355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472324, 35.104366, 19.884537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146828, 35.335503, 19.859446>,  <35.951530, 35.474182, 19.844391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146828, 35.335503, 19.859446>,  <36.472324, 35.104366, 19.884537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146828, 35.335503, 19.859446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017375, -0.132057, -0.991090,
		-0.580972, -0.805398, 0.117500,
		-0.813738, 0.577836, -0.062727,
		35.902706, 35.508854, 19.840628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888710, 34.755947, 19.541426>,  <36.472324, 35.104366, 19.884537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888710, 34.755947, 19.541426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.808765, 35.145813, 19.501238>,  <35.760799, 35.379730, 19.477125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.808765, 35.145813, 19.501238>,  <35.888710, 34.755947, 19.541426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808765, 35.145813, 19.501238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125681, -0.127189, -0.983884,
		-0.971731, -0.184009, 0.147916,
		-0.199857, 0.974661, -0.100468,
		35.748810, 35.438210, 19.471098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583946, 34.754169, 18.931789>,  <35.888710, 34.755947, 19.541426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583946, 34.754169, 18.931789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.677032, 35.142044, 18.961611>,  <35.732883, 35.374767, 18.979504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.677032, 35.142044, 18.961611>,  <35.583946, 34.754169, 18.931789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677032, 35.142044, 18.961611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053183, 0.063854, -0.996541,
		-0.971089, 0.235878, -0.036711,
		0.232718, 0.969683, 0.074553,
		35.746849, 35.432949, 18.983976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155540, 35.062996, 18.468227>,  <35.583946, 34.754169, 18.931789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155540, 35.062996, 18.468227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.449436, 35.329048, 18.521536>,  <35.625774, 35.488678, 18.553520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.449436, 35.329048, 18.521536>,  <35.155540, 35.062996, 18.468227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449436, 35.329048, 18.521536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243016, -0.074669, -0.967144,
		-0.633322, 0.742989, -0.216499,
		0.734743, 0.665126, 0.133269,
		35.669861, 35.528587, 18.561516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096214, 35.571609, 17.862206>,  <35.155540, 35.062996, 18.468227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096214, 35.571609, 17.862206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.467503, 35.590424, 18.009821>,  <35.690277, 35.601711, 18.098391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.467503, 35.590424, 18.009821>,  <35.096214, 35.571609, 17.862206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467503, 35.590424, 18.009821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371922, -0.140563, -0.917560,
		0.008720, 0.988954, -0.147966,
		0.928223, 0.047031, 0.369040,
		35.745968, 35.604534, 18.120533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.414497, 32.506592, 33.567486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811138, 32.548927, 33.597195>,  <33.049122, 32.574329, 33.615021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811138, 32.548927, 33.597195>,  <32.414497, 32.506592, 33.567486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811138, 32.548927, 33.597195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091423, -0.980111, 0.176137,
		0.091438, -0.167868, -0.981560,
		0.991605, 0.105843, 0.074272,
		33.108620, 32.580681, 33.619476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844425, 32.731895, 33.093117>,  <32.414497, 32.506592, 33.567486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844425, 32.731895, 33.093117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209064, 32.567581, 33.099377>,  <33.427849, 32.468994, 33.103130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209064, 32.567581, 33.099377>,  <32.844425, 32.731895, 33.093117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209064, 32.567581, 33.099377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034636, 0.038828, -0.998645,
		0.409622, 0.910904, 0.049623,
		0.911597, -0.410786, 0.015645,
		33.482544, 32.444344, 33.104069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302235, 33.211418, 32.906818>,  <32.844425, 32.731895, 33.093117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302235, 33.211418, 32.906818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470448, 32.864685, 32.799671>,  <33.571373, 32.656643, 32.735382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470448, 32.864685, 32.799671>,  <33.302235, 33.211418, 32.906818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470448, 32.864685, 32.799671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194727, 0.202127, -0.959805,
		0.886136, 0.455786, -0.083796,
		0.420528, -0.866836, -0.267865,
		33.596607, 32.604633, 32.719311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522449, 33.353989, 32.252663>,  <33.302235, 33.211418, 32.906818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522449, 33.353989, 32.252663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581760, 32.958416, 32.250450>,  <33.617348, 32.721073, 32.249123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.581760, 32.958416, 32.250450>,  <33.522449, 33.353989, 32.252663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581760, 32.958416, 32.250450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038199, -0.000139, -0.999270,
		0.988208, 0.148380, -0.037797,
		0.148277, -0.988930, -0.005530,
		33.626244, 32.661736, 32.248791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091190, 33.210403, 31.812157>,  <33.522449, 33.353989, 32.252663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091190, 33.210403, 31.812157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881805, 32.871601, 31.849176>,  <33.756176, 32.668320, 31.871387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881805, 32.871601, 31.849176>,  <34.091190, 33.210403, 31.812157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881805, 32.871601, 31.849176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072569, -0.152544, -0.985629,
		0.848954, -0.509222, 0.141317,
		-0.523461, -0.847008, 0.092549,
		33.724766, 32.617500, 31.876942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571598, 32.755157, 31.362795>,  <34.091190, 33.210403, 31.812157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571598, 32.755157, 31.362795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208797, 32.587933, 31.383085>,  <33.991116, 32.487598, 31.395260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208797, 32.587933, 31.383085>,  <34.571598, 32.755157, 31.362795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208797, 32.587933, 31.383085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065234, -0.258472, -0.963814,
		0.416045, -0.870871, 0.261707,
		-0.907002, -0.418062, 0.050726,
		33.936699, 32.462513, 31.398302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618790, 32.268387, 30.825750>,  <34.571598, 32.755157, 31.362795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618790, 32.268387, 30.825750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228405, 32.294369, 30.908964>,  <33.994175, 32.309959, 30.958893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228405, 32.294369, 30.908964>,  <34.618790, 32.268387, 30.825750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228405, 32.294369, 30.908964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214648, -0.121201, -0.969142,
		-0.037735, -0.990501, 0.132230,
		-0.975962, 0.064954, 0.208035,
		33.935616, 32.313854, 30.971375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330334, 31.807299, 30.412457>,  <34.618790, 32.268387, 30.825750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330334, 31.807299, 30.412457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050819, 32.084183, 30.484621>,  <33.883110, 32.250313, 30.527920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050819, 32.084183, 30.484621>,  <34.330334, 31.807299, 30.412457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050819, 32.084183, 30.484621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099759, 0.155441, -0.982795,
		-0.708345, -0.704757, -0.039565,
		-0.698781, 0.692211, 0.180412,
		33.841187, 32.291847, 30.538744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916470, 31.573942, 29.875986>,  <34.330334, 31.807299, 30.412457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916470, 31.573942, 29.875986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838081, 31.956326, 29.963385>,  <33.791046, 32.185757, 30.015823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838081, 31.956326, 29.963385>,  <33.916470, 31.573942, 29.875986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838081, 31.956326, 29.963385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126261, 0.196362, -0.972368,
		-0.972447, -0.218146, 0.082218,
		-0.195974, 0.955957, 0.218495,
		33.779289, 32.243114, 30.028933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300175, 31.899549, 29.433186>,  <33.916470, 31.573942, 29.875986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300175, 31.899549, 29.433186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527699, 32.203773, 29.558405>,  <33.664215, 32.386307, 29.633537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527699, 32.203773, 29.558405>,  <33.300175, 31.899549, 29.433186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527699, 32.203773, 29.558405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035565, 0.403010, -0.914504,
		-0.821699, 0.509047, 0.256286,
		0.568812, 0.760562, 0.313049,
		33.698341, 32.431942, 29.652319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960026, 32.513351, 29.059189>,  <33.300175, 31.899549, 29.433186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960026, 32.513351, 29.059189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328144, 32.612396, 29.180346>,  <33.549015, 32.671822, 29.253040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328144, 32.612396, 29.180346>,  <32.960026, 32.513351, 29.059189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328144, 32.612396, 29.180346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195487, 0.379583, -0.904269,
		-0.338880, 0.891406, 0.300923,
		0.920296, 0.247612, 0.302891,
		33.604233, 32.686680, 29.271214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901379, 33.306099, 29.099335>,  <32.960026, 32.513351, 29.059189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901379, 33.306099, 29.099335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256344, 33.131405, 29.040339>,  <33.469322, 33.026588, 29.004942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256344, 33.131405, 29.040339>,  <32.901379, 33.306099, 29.099335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256344, 33.131405, 29.040339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051923, 0.412620, -0.909422,
		0.458038, 0.799377, 0.388842,
		0.887415, -0.436739, -0.147490,
		33.522568, 33.000381, 28.996092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707409, 34.016315, 29.127035>,  <32.901379, 33.306099, 29.099335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707409, 34.016315, 29.127035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.340954, 34.144070, 29.030132>,  <32.121082, 34.220722, 28.971991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.340954, 34.144070, 29.030132>,  <32.707409, 34.016315, 29.127035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340954, 34.144070, 29.030132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314722, -0.198748, 0.928143,
		0.248286, 0.926549, 0.282597,
		-0.916135, 0.319384, -0.242259,
		32.066113, 34.239883, 28.957455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537678, 34.482304, 29.679443>,  <32.707409, 34.016315, 29.127035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537678, 34.482304, 29.679443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199562, 34.375557, 29.494289>,  <31.996693, 34.311508, 29.383196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199562, 34.375557, 29.494289>,  <32.537678, 34.482304, 29.679443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199562, 34.375557, 29.494289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462700, -0.067618, 0.883933,
		-0.267189, 0.961359, -0.066321,
		-0.845292, -0.266864, -0.462887,
		31.945974, 34.295498, 29.355423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996155, 34.856441, 29.979856>,  <32.537678, 34.482304, 29.679443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996155, 34.856441, 29.979856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807320, 34.548737, 29.807640>,  <31.694017, 34.364113, 29.704311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807320, 34.548737, 29.807640>,  <31.996155, 34.856441, 29.979856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807320, 34.548737, 29.807640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601072, -0.076372, 0.795538,
		-0.644860, 0.634350, -0.426329,
		-0.472090, -0.769264, -0.430539,
		31.665693, 34.317959, 29.678478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359976, 34.956802, 30.076740>,  <31.996155, 34.856441, 29.979856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359976, 34.956802, 30.076740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327942, 34.570129, 29.979494>,  <31.308722, 34.338123, 29.921146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327942, 34.570129, 29.979494>,  <31.359976, 34.956802, 30.076740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327942, 34.570129, 29.979494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659848, -0.131395, 0.739822,
		-0.747119, 0.219668, -0.627342,
		-0.080086, -0.966686, -0.243115,
		31.303917, 34.280125, 29.906559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677944, 34.740177, 30.031946>,  <31.359976, 34.956802, 30.076740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677944, 34.740177, 30.031946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901134, 34.420128, 30.120007>,  <31.035049, 34.228100, 30.172842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901134, 34.420128, 30.120007>,  <30.677944, 34.740177, 30.031946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901134, 34.420128, 30.120007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637092, -0.243022, 0.731474,
		-0.531767, -0.548402, -0.645352,
		0.557977, -0.800122, 0.220151,
		31.068527, 34.180092, 30.186052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197805, 34.206467, 30.178679>,  <30.677944, 34.740177, 30.031946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197805, 34.206467, 30.178679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534252, 34.080196, 30.354347>,  <30.736120, 34.004433, 30.459749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534252, 34.080196, 30.354347>,  <30.197805, 34.206467, 30.178679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534252, 34.080196, 30.354347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523755, -0.272840, 0.806994,
		-0.134922, -0.908795, -0.394826,
		0.841116, -0.315673, 0.439174,
		30.786587, 33.985493, 30.486099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000128, 33.564499, 30.613049>,  <30.197805, 34.206467, 30.178679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000128, 33.564499, 30.613049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.352255, 33.695786, 30.750057>,  <30.563530, 33.774559, 30.832262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.352255, 33.695786, 30.750057>,  <30.000128, 33.564499, 30.613049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352255, 33.695786, 30.750057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256713, -0.277578, 0.925769,
		0.398927, -0.902898, -0.160099,
		0.880315, 0.328215, 0.342520,
		30.616350, 33.794250, 30.852814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179531, 32.995274, 31.184538>,  <30.000128, 33.564499, 30.613049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179531, 32.995274, 31.184538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.415222, 33.315937, 31.224854>,  <30.556637, 33.508335, 31.249043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.415222, 33.315937, 31.224854>,  <30.179531, 32.995274, 31.184538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415222, 33.315937, 31.224854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003304, -0.122350, 0.992482,
		0.807960, -0.585131, -0.069444,
		0.589228, 0.801656, 0.100788,
		30.591991, 33.556435, 31.255091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763432, 32.814129, 31.710371>,  <30.179531, 32.995274, 31.184538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763432, 32.814129, 31.710371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733448, 33.212826, 31.722282>,  <30.715458, 33.452045, 31.729429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733448, 33.212826, 31.722282>,  <30.763432, 32.814129, 31.710371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733448, 33.212826, 31.722282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183460, -0.015570, 0.982904,
		0.980165, 0.079143, -0.181695,
		-0.074961, 0.996742, 0.029781,
		30.710960, 33.511848, 31.731216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223118, 33.069530, 32.196869>,  <30.763432, 32.814129, 31.710371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223118, 33.069530, 32.196869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.003437, 33.401150, 32.154800>,  <30.871630, 33.600121, 32.129559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.003437, 33.401150, 32.154800>,  <31.223118, 33.069530, 32.196869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003437, 33.401150, 32.154800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101404, 0.058806, 0.993106,
		0.829516, 0.556078, 0.051773,
		-0.549200, 0.829047, -0.105169,
		30.838676, 33.649864, 32.123249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527618, 33.536518, 32.601364>,  <31.223118, 33.069530, 32.196869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527618, 33.536518, 32.601364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.168255, 33.700294, 32.537838>,  <30.952637, 33.798561, 32.499722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.168255, 33.700294, 32.537838>,  <31.527618, 33.536518, 32.601364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168255, 33.700294, 32.537838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065265, 0.233148, 0.970249,
		0.434286, 0.882044, -0.182740,
		-0.898408, 0.409439, -0.158819,
		30.898733, 33.823128, 32.490192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554255, 34.121792, 32.952751>,  <31.527618, 33.536518, 32.601364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554255, 34.121792, 32.952751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.158785, 34.082569, 32.907310>,  <30.921503, 34.059036, 32.880047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.158785, 34.082569, 32.907310>,  <31.554255, 34.121792, 32.952751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158785, 34.082569, 32.907310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136210, 0.268547, 0.953588,
		-0.063000, 0.958262, -0.278863,
		-0.988675, -0.098060, -0.113606,
		30.862183, 34.053150, 32.873230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223728, 34.793507, 33.135059>,  <31.554255, 34.121792, 32.952751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223728, 34.793507, 33.135059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.954622, 34.506023, 33.205311>,  <30.793159, 34.333534, 33.247459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.954622, 34.506023, 33.205311>,  <31.223728, 34.793507, 33.135059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954622, 34.506023, 33.205311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119277, 0.339632, 0.932965,
		-0.730180, 0.606717, -0.314218,
		-0.672764, -0.718711, 0.175625,
		30.752792, 34.290409, 33.257999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596823, 35.037319, 33.484787>,  <31.223728, 34.793507, 33.135059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596823, 35.037319, 33.484787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570589, 34.646023, 33.563526>,  <30.554848, 34.411247, 33.610767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570589, 34.646023, 33.563526>,  <30.596823, 35.037319, 33.484787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570589, 34.646023, 33.563526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229687, 0.206771, 0.951047,
		-0.971052, 0.017163, -0.238250,
		-0.065586, -0.978239, 0.196843,
		30.550913, 34.352551, 33.622578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202864, 35.446316, 33.420139>,  <30.596823, 35.037319, 33.484787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202864, 35.446316, 33.420139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385294, 35.620575, 33.730545>,  <31.494753, 35.725132, 33.916790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385294, 35.620575, 33.730545>,  <31.202864, 35.446316, 33.420139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385294, 35.620575, 33.730545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063542, 0.853824, -0.516670,
		-0.887669, 0.284952, 0.361728,
		0.456078, 0.435646, 0.776019,
		31.522118, 35.751270, 33.963352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741158, 35.955112, 33.540379>,  <31.202864, 35.446316, 33.420139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741158, 35.955112, 33.540379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.132360, 35.974331, 33.621567>,  <31.367083, 35.985863, 33.670280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.132360, 35.974331, 33.621567>,  <30.741158, 35.955112, 33.540379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132360, 35.974331, 33.621567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113703, 0.693016, -0.711899,
		-0.174865, 0.719320, 0.672310,
		0.978005, 0.048043, 0.202973,
		31.425762, 35.988743, 33.682457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202967, 36.509186, 33.326820>,  <30.741158, 35.955112, 33.540379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202967, 36.509186, 33.326820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537123, 36.323490, 33.444538>,  <31.737616, 36.212074, 33.515171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537123, 36.323490, 33.444538>,  <31.202967, 36.509186, 33.326820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537123, 36.323490, 33.444538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513932, 0.469810, -0.717741,
		0.194938, 0.750842, 0.631059,
		0.835388, -0.464237, 0.294298,
		31.787739, 36.184219, 33.532829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692356, 37.012421, 33.204105>,  <31.202967, 36.509186, 33.326820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692356, 37.012421, 33.204105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.904524, 36.674397, 33.231030>,  <32.031826, 36.471581, 33.247185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.904524, 36.674397, 33.231030>,  <31.692356, 37.012421, 33.204105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904524, 36.674397, 33.231030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559912, 0.289611, -0.776289,
		0.636518, 0.449444, 0.626774,
		0.530419, -0.845060, 0.067307,
		32.063648, 36.420879, 33.251221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451225, 37.286999, 33.000828>,  <31.692356, 37.012421, 33.204105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451225, 37.286999, 33.000828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430992, 36.888592, 32.971451>,  <32.418854, 36.649548, 32.953827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430992, 36.888592, 32.971451>,  <32.451225, 37.286999, 33.000828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430992, 36.888592, 32.971451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644413, 0.023629, -0.764312,
		0.763002, -0.085986, 0.640651,
		-0.050582, -0.996016, -0.073440,
		32.415817, 36.589787, 32.949417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213867, 36.920345, 33.045578>,  <32.451225, 37.286999, 33.000828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213867, 36.920345, 33.045578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939507, 36.695118, 32.861191>,  <32.774891, 36.559982, 32.750557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939507, 36.695118, 32.861191>,  <33.213867, 36.920345, 33.045578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939507, 36.695118, 32.861191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546677, 0.019392, -0.837119,
		0.480295, -0.826182, 0.294516,
		-0.685902, -0.563069, -0.460969,
		32.733734, 36.526196, 32.722900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563721, 36.493767, 32.610775>,  <33.213867, 36.920345, 33.045578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563721, 36.493767, 32.610775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190777, 36.489697, 32.466221>,  <32.967010, 36.487255, 32.379486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190777, 36.489697, 32.466221>,  <33.563721, 36.493767, 32.610775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190777, 36.489697, 32.466221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360176, 0.060342, -0.930931,
		0.031265, -0.998126, -0.052601,
		-0.932360, -0.010160, -0.361388,
		32.911068, 36.486645, 32.357803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541538, 36.080742, 32.014397>,  <33.563721, 36.493767, 32.610775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541538, 36.080742, 32.014397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219711, 36.311718, 31.958918>,  <33.026615, 36.450302, 31.925629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219711, 36.311718, 31.958918>,  <33.541538, 36.080742, 32.014397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219711, 36.311718, 31.958918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303375, 0.198862, -0.931889,
		-0.510526, -0.791845, -0.335178,
		-0.804567, 0.577438, -0.138701,
		32.978340, 36.484951, 31.917307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345829, 35.940788, 31.358534>,  <33.541538, 36.080742, 32.014397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345829, 35.940788, 31.358534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168274, 36.291119, 31.434317>,  <33.061741, 36.501316, 31.479786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168274, 36.291119, 31.434317>,  <33.345829, 35.940788, 31.358534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168274, 36.291119, 31.434317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143169, 0.278032, -0.949842,
		-0.884571, -0.394499, -0.248806,
		-0.443887, 0.875825, 0.189459,
		33.035107, 36.553867, 31.491154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856537, 35.908607, 30.848825>,  <33.345829, 35.940788, 31.358534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856537, 35.908607, 30.848825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897972, 36.288727, 30.966270>,  <32.922832, 36.516796, 31.036737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897972, 36.288727, 30.966270>,  <32.856537, 35.908607, 30.848825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897972, 36.288727, 30.966270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091013, 0.284906, -0.954225,
		-0.990447, 0.125571, -0.056975,
		0.103591, 0.950295, 0.293613,
		32.929050, 36.573814, 31.054354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418396, 36.253044, 30.434437>,  <32.856537, 35.908607, 30.848825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418396, 36.253044, 30.434437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670044, 36.540474, 30.553003>,  <32.821033, 36.712933, 30.624144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670044, 36.540474, 30.553003>,  <32.418396, 36.253044, 30.434437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670044, 36.540474, 30.553003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047141, 0.345365, -0.937284,
		-0.775877, 0.603638, 0.183402,
		0.629121, 0.718571, 0.296417,
		32.858780, 36.756046, 30.641928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160088, 36.865334, 30.115406>,  <32.418396, 36.253044, 30.434437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160088, 36.865334, 30.115406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533512, 36.951965, 30.229633>,  <32.757568, 37.003944, 30.298170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533512, 36.951965, 30.229633>,  <32.160088, 36.865334, 30.115406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533512, 36.951965, 30.229633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180298, 0.404826, -0.896442,
		-0.309757, 0.888374, 0.338883,
		0.933565, 0.216579, 0.285570,
		32.813583, 37.016937, 30.315304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289757, 37.554855, 29.845160>,  <32.160088, 36.865334, 30.115406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289757, 37.554855, 29.845160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646378, 37.381260, 29.896984>,  <32.860352, 37.277103, 29.928080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646378, 37.381260, 29.896984>,  <32.289757, 37.554855, 29.845160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646378, 37.381260, 29.896984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316602, 0.392617, -0.863490,
		0.323878, 0.810867, 0.487441,
		0.891553, -0.433990, 0.129562,
		32.913845, 37.251064, 29.935852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821651, 38.047661, 29.636023>,  <32.289757, 37.554855, 29.845160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821651, 38.047661, 29.636023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003345, 37.691769, 29.617893>,  <33.112362, 37.478233, 29.607016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003345, 37.691769, 29.617893>,  <32.821651, 38.047661, 29.636023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003345, 37.691769, 29.617893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476939, 0.285830, -0.831162,
		0.752463, 0.355926, 0.554180,
		0.454233, -0.889729, -0.045322,
		33.139614, 37.424850, 29.604298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559132, 38.208290, 29.631586>,  <32.821651, 38.047661, 29.636023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559132, 38.208290, 29.631586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481663, 37.850887, 29.469532>,  <33.435181, 37.636444, 29.372299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481663, 37.850887, 29.469532>,  <33.559132, 38.208290, 29.631586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481663, 37.850887, 29.469532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609866, 0.213823, -0.763114,
		0.768476, -0.394870, 0.503510,
		-0.193669, -0.893509, -0.405136,
		33.423561, 37.582836, 29.347992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153645, 37.988499, 29.425819>,  <33.559132, 38.208290, 29.631586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153645, 37.988499, 29.425819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954334, 37.740051, 29.183847>,  <33.834747, 37.590984, 29.038664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954334, 37.740051, 29.183847>,  <34.153645, 37.988499, 29.425819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954334, 37.740051, 29.183847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594135, 0.263535, -0.759969,
		0.631448, -0.738082, 0.237713,
		-0.498274, -0.621115, -0.604930,
		33.804852, 37.553719, 29.002369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688385, 37.655300, 29.089142>,  <34.153645, 37.988499, 29.425819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688385, 37.655300, 29.089142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358837, 37.580627, 28.875082>,  <34.161106, 37.535824, 28.746647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358837, 37.580627, 28.875082>,  <34.688385, 37.655300, 29.089142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358837, 37.580627, 28.875082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515661, 0.144966, -0.844440,
		0.235225, -0.971665, -0.023166,
		-0.823871, -0.186688, -0.535150,
		34.111675, 37.524624, 28.714537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984230, 37.313892, 28.475609>,  <34.688385, 37.655300, 29.089142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984230, 37.313892, 28.475609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618637, 37.437180, 28.370054>,  <34.399281, 37.511150, 28.306721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618637, 37.437180, 28.370054>,  <34.984230, 37.313892, 28.475609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618637, 37.437180, 28.370054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336854, 0.213833, -0.916954,
		-0.226191, -0.926973, -0.299263,
		-0.913984, 0.308215, -0.263887,
		34.344440, 37.529644, 28.290888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909946, 36.985252, 27.878160>,  <34.984230, 37.313892, 28.475609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909946, 36.985252, 27.878160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643295, 37.283020, 27.862944>,  <34.483303, 37.461681, 27.853813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643295, 37.283020, 27.862944>,  <34.909946, 36.985252, 27.878160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643295, 37.283020, 27.862944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328934, 0.247994, -0.911209,
		-0.668888, -0.619949, -0.410185,
		-0.666626, 0.744420, -0.038042,
		34.443306, 37.506348, 27.851532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633892, 36.945576, 27.221516>,  <34.909946, 36.985252, 27.878160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633892, 36.945576, 27.221516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567215, 37.316307, 27.356102>,  <34.527210, 37.538746, 27.436853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567215, 37.316307, 27.356102>,  <34.633892, 36.945576, 27.221516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567215, 37.316307, 27.356102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136187, 0.359611, -0.923110,
		-0.976559, -0.108049, -0.186164,
		-0.166688, 0.926825, 0.336467,
		34.517208, 37.594357, 27.457043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132561, 37.321800, 26.676363>,  <34.633892, 36.945576, 27.221516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132561, 37.321800, 26.676363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301582, 37.607948, 26.898964>,  <34.402996, 37.779636, 27.032524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301582, 37.607948, 26.898964>,  <34.132561, 37.321800, 26.676363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301582, 37.607948, 26.898964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306555, 0.465016, -0.830532,
		-0.852921, 0.521541, -0.022808,
		0.422550, 0.715371, 0.556504,
		34.428349, 37.822559, 27.065914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932079, 37.930271, 26.315212>,  <34.132561, 37.321800, 26.676363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932079, 37.930271, 26.315212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245850, 38.017971, 26.547285>,  <34.434113, 38.070591, 26.686529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245850, 38.017971, 26.547285>,  <33.932079, 37.930271, 26.315212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245850, 38.017971, 26.547285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355588, 0.607459, -0.710317,
		-0.508174, 0.763494, 0.398542,
		0.784421, 0.219248, 0.580184,
		34.481174, 38.083744, 26.721340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956207, 38.630814, 26.423504>,  <33.932079, 37.930271, 26.315212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956207, 38.630814, 26.423504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326229, 38.483398, 26.460278>,  <34.548241, 38.394947, 26.482342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326229, 38.483398, 26.460278>,  <33.956207, 38.630814, 26.423504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326229, 38.483398, 26.460278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268452, 0.463127, -0.844658,
		0.268715, 0.806034, 0.527354,
		0.925055, -0.368541, 0.091932,
		34.603745, 38.372837, 26.487858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323185, 39.143562, 26.121918>,  <33.956207, 38.630814, 26.423504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323185, 39.143562, 26.121918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591095, 38.847473, 26.145481>,  <34.751839, 38.669819, 26.159618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591095, 38.847473, 26.145481>,  <34.323185, 39.143562, 26.121918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591095, 38.847473, 26.145481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463027, 0.354300, -0.812452,
		0.580527, 0.571434, 0.580045,
		0.669772, -0.740226, 0.058909,
		34.792027, 38.625404, 26.163155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006180, 39.441090, 25.960144>,  <34.323185, 39.143562, 26.121918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006180, 39.441090, 25.960144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060127, 39.049675, 25.897825>,  <35.092495, 38.814827, 25.860434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060127, 39.049675, 25.897825>,  <35.006180, 39.441090, 25.960144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060127, 39.049675, 25.897825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632642, 0.206049, -0.746530,
		0.762611, 0.002118, 0.646854,
		0.134865, -0.978539, -0.155796,
		35.100586, 38.756115, 25.851086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700867, 39.299957, 25.789305>,  <35.006180, 39.441090, 25.960144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700867, 39.299957, 25.789305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546711, 38.961903, 25.641138>,  <35.454216, 38.759068, 25.552238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546711, 38.961903, 25.641138>,  <35.700867, 39.299957, 25.789305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546711, 38.961903, 25.641138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608894, 0.068708, -0.790271,
		0.693341, -0.530109, 0.488122,
		-0.385391, -0.845141, -0.370418,
		35.431095, 38.708359, 25.530012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011921, 39.321724, 25.188465>,  <35.700867, 39.299957, 25.789305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011921, 39.321724, 25.188465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798622, 38.983650, 25.173983>,  <35.670643, 38.780804, 25.165293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798622, 38.983650, 25.173983>,  <36.011921, 39.321724, 25.188465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798622, 38.983650, 25.173983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293838, -0.144917, -0.944806,
		0.793290, -0.514450, 0.325624,
		-0.533244, -0.845186, -0.036204,
		35.638649, 38.730095, 25.163122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464058, 38.737297, 24.977259>,  <36.011921, 39.321724, 25.188465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464058, 38.737297, 24.977259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.080803, 38.694229, 24.871143>,  <35.850849, 38.668388, 24.807474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.080803, 38.694229, 24.871143>,  <36.464058, 38.737297, 24.977259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080803, 38.694229, 24.871143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265379, 0.013753, -0.964046,
		0.107447, -0.994092, 0.015396,
		-0.958138, -0.107670, -0.265289,
		35.793362, 38.661930, 24.791557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551083, 38.067093, 25.223373>,  <36.464058, 38.737297, 24.977259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551083, 38.067093, 25.223373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933411, 37.961834, 25.275763>,  <37.162807, 37.898678, 25.307196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933411, 37.961834, 25.275763>,  <36.551083, 38.067093, 25.223373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933411, 37.961834, 25.275763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150548, -0.055570, 0.987039,
		-0.252462, -0.963153, -0.092733,
		0.955823, -0.263151, 0.130972,
		37.220158, 37.882889, 25.315054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561340, 37.594700, 25.721819>,  <36.551083, 38.067093, 25.223373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561340, 37.594700, 25.721819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932487, 37.742714, 25.703379>,  <37.155178, 37.831524, 25.692314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932487, 37.742714, 25.703379>,  <36.561340, 37.594700, 25.721819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932487, 37.742714, 25.703379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078959, -0.074145, 0.994117,
		0.364443, -0.926053, -0.098015,
		0.927872, 0.370038, -0.046099,
		37.210850, 37.853725, 25.689548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076813, 37.043140, 26.036524>,  <36.561340, 37.594700, 25.721819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076813, 37.043140, 26.036524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240116, 37.408047, 26.049805>,  <37.338097, 37.626991, 26.057774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240116, 37.408047, 26.049805>,  <37.076813, 37.043140, 26.036524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240116, 37.408047, 26.049805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203056, -0.126209, 0.970999,
		0.889999, -0.389672, -0.236766,
		0.408254, 0.912265, 0.033200,
		37.362591, 37.681725, 26.059765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705200, 36.836151, 26.191463>,  <37.076813, 37.043140, 26.036524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705200, 36.836151, 26.191463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661324, 37.221245, 26.290350>,  <37.634998, 37.452301, 26.349682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661324, 37.221245, 26.290350>,  <37.705200, 36.836151, 26.191463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661324, 37.221245, 26.290350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106683, -0.235879, 0.965909,
		0.988224, 0.132327, -0.076833,
		-0.109692, 0.962731, 0.247218,
		37.628414, 37.510063, 26.364515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232414, 36.980412, 26.754244>,  <37.705200, 36.836151, 26.191463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232414, 36.980412, 26.754244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959923, 37.269135, 26.803102>,  <37.796429, 37.442368, 26.832417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959923, 37.269135, 26.803102>,  <38.232414, 36.980412, 26.754244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959923, 37.269135, 26.803102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144174, -0.031300, 0.989057,
		0.717734, 0.691384, -0.082743,
		-0.681228, 0.721809, 0.122145,
		37.755554, 37.485676, 26.839746>
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
