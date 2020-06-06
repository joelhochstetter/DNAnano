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
	<24.361565, 35.275887, 34.604809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199041, 35.037125, 34.881538>,  <24.101528, 34.893867, 35.047577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199041, 35.037125, 34.881538>,  <24.361565, 35.275887, 34.604809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.199041, 35.037125, 34.881538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204450, -0.797332, -0.567858,
		0.890570, -0.089280, 0.445997,
		-0.406306, -0.596901, 0.691827,
		24.077150, 34.858055, 35.089085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862253, 34.710449, 34.727417>,  <24.361565, 35.275887, 34.604809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862253, 34.710449, 34.727417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502647, 34.587818, 34.852497>,  <24.286884, 34.514240, 34.927544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502647, 34.587818, 34.852497>,  <24.862253, 34.710449, 34.727417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502647, 34.587818, 34.852497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179642, -0.909397, -0.375134,
		0.399374, -0.281078, 0.872637,
		-0.899016, -0.306581, 0.312696,
		24.232943, 34.495842, 34.946304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806961, 33.913715, 35.104210>,  <24.862253, 34.710449, 34.727417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806961, 33.913715, 35.104210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.448750, 34.016430, 34.958836>,  <24.233822, 34.078060, 34.871609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.448750, 34.016430, 34.958836>,  <24.806961, 33.913715, 35.104210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.448750, 34.016430, 34.958836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027757, -0.847350, -0.530309,
		-0.444137, -0.464819, 0.765954,
		-0.895529, 0.256790, -0.363438,
		24.180092, 34.093468, 34.849804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419165, 33.945198, 35.492069>,  <24.806961, 33.913715, 35.104210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419165, 33.945198, 35.492069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152473, 34.201145, 35.644932>,  <24.992458, 34.354713, 35.736649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152473, 34.201145, 35.644932>,  <25.419165, 33.945198, 35.492069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152473, 34.201145, 35.644932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362998, -0.169032, 0.916330,
		0.650925, 0.749666, -0.119571,
		-0.666730, 0.639866, 0.382155,
		24.952454, 34.393105, 35.759579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763418, 34.521412, 35.880455>,  <25.419165, 33.945198, 35.492069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763418, 34.521412, 35.880455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390383, 34.453724, 36.007980>,  <25.166561, 34.413113, 36.084496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390383, 34.453724, 36.007980>,  <25.763418, 34.521412, 35.880455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.390383, 34.453724, 36.007980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334497, -0.073336, 0.939539,
		-0.135604, 0.982847, 0.124995,
		-0.932589, -0.169216, 0.318815,
		25.110605, 34.402958, 36.103626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631739, 34.814713, 36.602448>,  <25.763418, 34.521412, 35.880455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631739, 34.814713, 36.602448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403578, 34.491085, 36.545803>,  <25.266682, 34.296909, 36.511818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403578, 34.491085, 36.545803>,  <25.631739, 34.814713, 36.602448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403578, 34.491085, 36.545803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180159, -0.291444, 0.939469,
		-0.801364, 0.510363, 0.312001,
		-0.570402, -0.809067, -0.141606,
		25.232458, 34.248363, 36.503323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055759, 34.708954, 37.097340>,  <25.631739, 34.814713, 36.602448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055759, 34.708954, 37.097340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197197, 34.358734, 36.965652>,  <25.282059, 34.148602, 36.886639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197197, 34.358734, 36.965652>,  <25.055759, 34.708954, 37.097340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197197, 34.358734, 36.965652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242075, -0.254311, 0.936336,
		-0.903532, -0.410778, 0.122026,
		0.353594, -0.875549, -0.329217,
		25.303276, 34.096069, 36.866886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.775148, 34.123173, 37.376560>,  <25.055759, 34.708954, 37.097340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.775148, 34.123173, 37.376560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149643, 33.993629, 37.322037>,  <25.374340, 33.915905, 37.289322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149643, 33.993629, 37.322037>,  <24.775148, 34.123173, 37.376560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149643, 33.993629, 37.322037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014873, -0.351058, 0.936236,
		-0.351058, -0.878564, -0.323856,
		-0.936236, 0.323856, 0.136309,
		25.430513, 33.896473, 37.281143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823555, 33.723888, 37.912010>,  <24.775148, 34.123173, 37.376560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823555, 33.723888, 37.912010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205183, 33.780022, 37.806137>,  <25.434160, 33.813702, 37.742615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205183, 33.780022, 37.806137>,  <24.823555, 33.723888, 37.912010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205183, 33.780022, 37.806137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291925, -0.237003, 0.926612,
		0.067302, -0.961320, -0.267084,
		0.954070, 0.140331, -0.264683,
		25.491404, 33.822121, 37.726734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121222, 33.271191, 38.188217>,  <24.823555, 33.723888, 37.912010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121222, 33.271191, 38.188217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403646, 33.550793, 38.142826>,  <25.573101, 33.718552, 38.115593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403646, 33.550793, 38.142826>,  <25.121222, 33.271191, 38.188217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403646, 33.550793, 38.142826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354963, -0.210686, 0.910831,
		0.612765, -0.683380, -0.396877,
		0.706060, 0.699002, -0.113474,
		25.615465, 33.760494, 38.108784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749142, 32.966942, 38.467941>,  <25.121222, 33.271191, 38.188217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749142, 32.966942, 38.467941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759178, 33.366688, 38.478115>,  <25.765200, 33.606533, 38.484219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759178, 33.366688, 38.478115>,  <25.749142, 32.966942, 38.467941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759178, 33.366688, 38.478115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247205, -0.030858, 0.968472,
		0.968638, -0.018014, -0.247821,
		0.025093, 0.999362, 0.025438,
		25.766706, 33.666496, 38.485744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361582, 33.122585, 38.822533>,  <25.749142, 32.966942, 38.467941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361582, 33.122585, 38.822533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118677, 33.438915, 38.853096>,  <25.972935, 33.628712, 38.871433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118677, 33.438915, 38.853096>,  <26.361582, 33.122585, 38.822533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118677, 33.438915, 38.853096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247864, 0.097200, 0.963907,
		0.754850, 0.604281, -0.255042,
		-0.607260, 0.790820, 0.076407,
		25.936499, 33.676163, 38.876019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699137, 33.670639, 39.172379>,  <26.361582, 33.122585, 38.822533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699137, 33.670639, 39.172379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305647, 33.723667, 39.220901>,  <26.069553, 33.755486, 39.250015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305647, 33.723667, 39.220901>,  <26.699137, 33.670639, 39.172379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305647, 33.723667, 39.220901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141923, 0.159122, 0.977005,
		0.110218, 0.978318, -0.175346,
		-0.983723, 0.132569, 0.121308,
		26.010530, 33.763439, 39.257294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765175, 34.226070, 39.631863>,  <26.699137, 33.670639, 39.172379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765175, 34.226070, 39.631863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391048, 34.084694, 39.638344>,  <26.166573, 33.999870, 39.642235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391048, 34.084694, 39.638344>,  <26.765175, 34.226070, 39.631863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391048, 34.084694, 39.638344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095083, 0.295212, 0.950689,
		-0.340793, 0.887655, -0.309723,
		-0.935318, -0.353438, 0.016205,
		26.110453, 33.978664, 39.643204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387638, 34.698013, 39.998501>,  <26.765175, 34.226070, 39.631863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387638, 34.698013, 39.998501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181440, 34.357601, 40.038513>,  <26.057722, 34.153355, 40.062523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181440, 34.357601, 40.038513>,  <26.387638, 34.698013, 39.998501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181440, 34.357601, 40.038513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095148, 0.059172, 0.993703,
		-0.851594, 0.521767, 0.050472,
		-0.515495, -0.851033, 0.100036,
		26.026793, 34.102291, 40.068523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029903, 34.763531, 40.591633>,  <26.387638, 34.698013, 39.998501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029903, 34.763531, 40.591633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964312, 34.372921, 40.535763>,  <25.924957, 34.138554, 40.502239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964312, 34.372921, 40.535763>,  <26.029903, 34.763531, 40.591633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964312, 34.372921, 40.535763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141455, -0.116856, 0.983023,
		-0.976269, 0.180953, -0.118972,
		-0.163979, -0.976525, -0.139679,
		25.915117, 34.079964, 40.493858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630022, 34.587566, 41.152847>,  <26.029903, 34.763531, 40.591633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630022, 34.587566, 41.152847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806040, 34.259747, 41.006046>,  <25.911652, 34.063053, 40.917965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806040, 34.259747, 41.006046>,  <25.630022, 34.587566, 41.152847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806040, 34.259747, 41.006046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148286, -0.336771, 0.929837,
		-0.885647, -0.463593, -0.026666,
		0.440046, -0.819553, -0.367005,
		25.938053, 34.013882, 40.895947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280676, 34.047623, 41.451763>,  <25.630022, 34.587566, 41.152847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280676, 34.047623, 41.451763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632612, 33.897419, 41.335228>,  <25.843773, 33.807297, 41.265308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632612, 33.897419, 41.335228>,  <25.280676, 34.047623, 41.451763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632612, 33.897419, 41.335228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128277, -0.402619, 0.906335,
		-0.457637, -0.834799, -0.306069,
		0.879837, -0.375511, -0.291339,
		25.896564, 33.784767, 41.247826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363939, 33.415298, 41.856621>,  <25.280676, 34.047623, 41.451763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363939, 33.415298, 41.856621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733465, 33.505627, 41.732960>,  <25.955181, 33.559826, 41.658764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733465, 33.505627, 41.732960>,  <25.363939, 33.415298, 41.856621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733465, 33.505627, 41.732960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362735, -0.258034, 0.895456,
		0.122444, -0.939373, -0.320290,
		0.923813, 0.225824, -0.309149,
		26.010609, 33.573372, 41.640217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791203, 32.993252, 42.249813>,  <25.363939, 33.415298, 41.856621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791203, 32.993252, 42.249813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077427, 33.223446, 42.091427>,  <26.249163, 33.361561, 41.996395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077427, 33.223446, 42.091427>,  <25.791203, 32.993252, 42.249813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077427, 33.223446, 42.091427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561058, -0.135782, 0.816564,
		0.416153, -0.806463, -0.420039,
		0.715563, 0.575483, -0.395966,
		26.292095, 33.396091, 41.972637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376133, 32.615376, 42.195038>,  <25.791203, 32.993252, 42.249813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376133, 32.615376, 42.195038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487328, 32.999474, 42.205334>,  <26.554045, 33.229931, 42.211510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487328, 32.999474, 42.205334>,  <26.376133, 32.615376, 42.195038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487328, 32.999474, 42.205334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603038, -0.195310, 0.773433,
		0.747710, -0.199480, -0.633354,
		0.277985, 0.960240, 0.025741,
		26.570723, 33.287544, 42.213055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084562, 32.628849, 42.403816>,  <26.376133, 32.615376, 42.195038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084562, 32.628849, 42.403816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954176, 33.002270, 42.463448>,  <26.875944, 33.226322, 42.499226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954176, 33.002270, 42.463448>,  <27.084562, 32.628849, 42.403816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954176, 33.002270, 42.463448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632714, 0.098260, 0.768126,
		0.702438, 0.344709, -0.622701,
		-0.325967, 0.933553, 0.149081,
		26.856386, 33.282337, 42.508171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691925, 33.015881, 42.620575>,  <27.084562, 32.628849, 42.403816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691925, 33.015881, 42.620575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368021, 33.213074, 42.747860>,  <27.173677, 33.331390, 42.824230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368021, 33.213074, 42.747860>,  <27.691925, 33.015881, 42.620575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368021, 33.213074, 42.747860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408313, 0.083965, 0.908972,
		0.421385, 0.865980, -0.269281,
		-0.809762, 0.492979, 0.318209,
		27.125092, 33.360966, 42.843323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949133, 33.606949, 42.838898>,  <27.691925, 33.015881, 42.620575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949133, 33.606949, 42.838898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600571, 33.588207, 43.034225>,  <27.391434, 33.576962, 43.151424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600571, 33.588207, 43.034225>,  <27.949133, 33.606949, 42.838898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600571, 33.588207, 43.034225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479388, 0.129939, 0.867930,
		-0.104118, 0.990414, -0.090769,
		-0.871405, -0.046854, 0.488321,
		27.339149, 33.574150, 43.180721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008377, 34.090878, 43.309071>,  <27.949133, 33.606949, 42.838898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008377, 34.090878, 43.309071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712761, 33.868774, 43.461655>,  <27.535391, 33.735512, 43.553204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712761, 33.868774, 43.461655>,  <28.008377, 34.090878, 43.309071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712761, 33.868774, 43.461655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372273, 0.135317, 0.918206,
		-0.561458, 0.820597, 0.106703,
		-0.739039, -0.555256, 0.381461,
		27.491049, 33.702198, 43.576092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608097, 34.426102, 43.859837>,  <28.008377, 34.090878, 43.309071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608097, 34.426102, 43.859837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633633, 34.027607, 43.883293>,  <27.648954, 33.788509, 43.897366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633633, 34.027607, 43.883293>,  <27.608097, 34.426102, 43.859837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633633, 34.027607, 43.883293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653557, 0.086144, 0.751959,
		-0.754180, -0.009681, 0.656596,
		0.063841, -0.996236, 0.058641,
		27.652784, 33.728737, 43.900887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653925, 34.108070, 44.582542>,  <27.608097, 34.426102, 43.859837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653925, 34.108070, 44.582542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838993, 33.856518, 44.332600>,  <27.950035, 33.705585, 44.182632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838993, 33.856518, 44.332600>,  <27.653925, 34.108070, 44.582542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838993, 33.856518, 44.332600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794809, -0.017967, 0.606594,
		-0.392701, -0.777295, 0.491526,
		0.462671, -0.628879, -0.624857,
		27.977795, 33.667854, 44.145142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880333, 33.621597, 45.025028>,  <27.653925, 34.108070, 44.582542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880333, 33.621597, 45.025028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117365, 33.698929, 44.712242>,  <28.259584, 33.745327, 44.524570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117365, 33.698929, 44.712242>,  <27.880333, 33.621597, 45.025028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117365, 33.698929, 44.712242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761096, 0.183520, 0.622136,
		0.263783, -0.963818, -0.038391,
		0.592580, 0.193328, -0.781967,
		28.295139, 33.756927, 44.477654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228643, 33.087704, 45.271767>,  <27.880333, 33.621597, 45.025028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228643, 33.087704, 45.271767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093077, 32.913918, 45.605564>,  <28.011736, 32.809647, 45.805843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093077, 32.913918, 45.605564>,  <28.228643, 33.087704, 45.271767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093077, 32.913918, 45.605564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706656, -0.703125, -0.079073,
		0.621105, 0.562897, 0.545321,
		-0.338919, -0.434467, 0.834489,
		27.991402, 32.783577, 45.855911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783621, 33.003643, 45.747219>,  <28.228643, 33.087704, 45.271767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783621, 33.003643, 45.747219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515127, 32.710720, 45.793114>,  <28.354031, 32.534966, 45.820652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515127, 32.710720, 45.793114>,  <28.783621, 33.003643, 45.747219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515127, 32.710720, 45.793114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721390, -0.680969, -0.126004,
		0.170410, -0.001805, 0.985372,
		-0.671236, -0.732309, 0.114741,
		28.313757, 32.491028, 45.827538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072271, 32.442787, 46.181896>,  <28.783621, 33.003643, 45.747219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072271, 32.442787, 46.181896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785776, 32.288273, 45.949421>,  <28.613878, 32.195564, 45.809937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785776, 32.288273, 45.949421>,  <29.072271, 32.442787, 46.181896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785776, 32.288273, 45.949421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575174, -0.798393, -0.178168,
		-0.395195, -0.461897, 0.794023,
		-0.716238, -0.386290, -0.581192,
		28.570906, 32.172386, 45.775063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805492, 31.639044, 46.332623>,  <29.072271, 32.442787, 46.181896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805492, 31.639044, 46.332623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756750, 31.759041, 45.954170>,  <28.727505, 31.831039, 45.727100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756750, 31.759041, 45.954170>,  <28.805492, 31.639044, 46.332623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756750, 31.759041, 45.954170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454470, -0.830571, -0.321883,
		-0.882388, -0.469209, -0.035129,
		-0.121854, 0.299990, -0.946128,
		28.720194, 31.849037, 45.670330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546299, 31.094172, 45.910076>,  <28.805492, 31.639044, 46.332623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546299, 31.094172, 45.910076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795918, 31.319498, 45.693470>,  <28.945688, 31.454695, 45.563507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795918, 31.319498, 45.693470>,  <28.546299, 31.094172, 45.910076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795918, 31.319498, 45.693470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619970, -0.778771, -0.095668,
		-0.475607, -0.276022, -0.835230,
		0.624047, 0.563318, -0.541514,
		28.983131, 31.488493, 45.531017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910898, 30.650217, 45.197556>,  <28.546299, 31.094172, 45.910076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910898, 30.650217, 45.197556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143112, 30.939318, 45.347546>,  <29.282440, 31.112778, 45.437538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143112, 30.939318, 45.347546>,  <28.910898, 30.650217, 45.197556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143112, 30.939318, 45.347546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804953, -0.578773, -0.130662,
		0.122590, 0.377692, -0.917780,
		0.580536, 0.722752, 0.374976,
		29.317272, 31.156143, 45.460037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456089, 30.870319, 44.689312>,  <28.910898, 30.650217, 45.197556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456089, 30.870319, 44.689312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573145, 30.940865, 45.065239>,  <29.643379, 30.983191, 45.290794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573145, 30.940865, 45.065239>,  <29.456089, 30.870319, 44.689312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573145, 30.940865, 45.065239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837616, -0.521380, -0.162977,
		0.461260, 0.834901, -0.300299,
		0.292640, 0.176361, 0.939818,
		29.660936, 30.993773, 45.347183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107113, 30.399895, 44.830509>,  <29.456089, 30.870319, 44.689312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107113, 30.399895, 44.830509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309410, 30.216564, 44.538162>,  <30.430788, 30.106565, 44.362755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309410, 30.216564, 44.538162>,  <30.107113, 30.399895, 44.830509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309410, 30.216564, 44.538162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355224, 0.661403, -0.660577,
		0.786155, 0.593702, 0.171691,
		0.505743, -0.458327, -0.730863,
		30.461132, 30.079065, 44.318905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606079, 30.887321, 44.426414>,  <30.107113, 30.399895, 44.830509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606079, 30.887321, 44.426414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470968, 30.581905, 44.206264>,  <30.389902, 30.398655, 44.074177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470968, 30.581905, 44.206264>,  <30.606079, 30.887321, 44.426414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470968, 30.581905, 44.206264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318376, 0.642958, -0.696593,
		0.885745, -0.060067, -0.460270,
		-0.337777, -0.763542, -0.550373,
		30.369635, 30.352842, 44.041153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682276, 31.120270, 43.763809>,  <30.606079, 30.887321, 44.426414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682276, 31.120270, 43.763809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424622, 30.820869, 43.700771>,  <30.270029, 30.641230, 43.662949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424622, 30.820869, 43.700771>,  <30.682276, 31.120270, 43.763809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424622, 30.820869, 43.700771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323506, 0.453280, -0.830591,
		0.693132, -0.484031, -0.534118,
		-0.644137, -0.748499, -0.157596,
		30.231380, 30.596319, 43.653492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609373, 31.142538, 43.094791>,  <30.682276, 31.120270, 43.763809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609373, 31.142538, 43.094791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297930, 30.895086, 43.136864>,  <30.111063, 30.746614, 43.162106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297930, 30.895086, 43.136864>,  <30.609373, 31.142538, 43.094791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297930, 30.895086, 43.136864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406416, 0.369436, -0.835669,
		0.478115, -0.693406, -0.539068,
		-0.778609, -0.618632, 0.105179,
		30.064346, 30.709497, 43.168419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625633, 30.633568, 42.570599>,  <30.609373, 31.142538, 43.094791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625633, 30.633568, 42.570599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245974, 30.656013, 42.694511>,  <30.018177, 30.669481, 42.768860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245974, 30.656013, 42.694511>,  <30.625633, 30.633568, 42.570599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245974, 30.656013, 42.694511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293139, 0.201338, -0.934630,
		-0.114815, -0.977913, -0.174651,
		-0.949151, 0.056112, 0.309781,
		29.961227, 30.672848, 42.787445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235149, 30.351542, 42.094814>,  <30.625633, 30.633568, 42.570599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235149, 30.351542, 42.094814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986782, 30.594284, 42.293282>,  <29.837761, 30.739929, 42.412361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986782, 30.594284, 42.293282>,  <30.235149, 30.351542, 42.094814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986782, 30.594284, 42.293282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393297, 0.306352, -0.866871,
		-0.678069, -0.733399, 0.048455,
		-0.620919, 0.606856, 0.496172,
		29.800507, 30.776340, 42.442135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561754, 30.351990, 41.728741>,  <30.235149, 30.351542, 42.094814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561754, 30.351990, 41.728741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541735, 30.683338, 41.951916>,  <29.529724, 30.882147, 42.085819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541735, 30.683338, 41.951916>,  <29.561754, 30.351990, 41.728741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541735, 30.683338, 41.951916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381157, 0.500515, -0.777305,
		-0.923155, -0.251563, 0.290691,
		-0.050047, 0.828372, 0.557938,
		29.526720, 30.931850, 42.119297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988270, 30.506603, 41.644428>,  <29.561754, 30.351990, 41.728741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988270, 30.506603, 41.644428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159090, 30.850946, 41.755096>,  <29.261581, 31.057552, 41.821499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159090, 30.850946, 41.755096>,  <28.988270, 30.506603, 41.644428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159090, 30.850946, 41.755096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483671, 0.475998, -0.734499,
		-0.763996, 0.179850, 0.619648,
		0.427050, 0.860860, 0.276672,
		29.287205, 31.109205, 41.838097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589302, 30.985422, 41.467319>,  <28.988270, 30.506603, 41.644428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589302, 30.985422, 41.467319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905285, 31.219475, 41.540623>,  <29.094875, 31.359907, 41.584606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905285, 31.219475, 41.540623>,  <28.589302, 30.985422, 41.467319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905285, 31.219475, 41.540623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375218, 0.697697, -0.610271,
		-0.484950, 0.413326, 0.770704,
		0.789959, 0.585133, 0.183261,
		29.142273, 31.395014, 41.595600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336519, 31.675711, 41.536873>,  <28.589302, 30.985422, 41.467319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336519, 31.675711, 41.536873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730682, 31.722569, 41.487488>,  <28.967180, 31.750683, 41.457855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730682, 31.722569, 41.487488>,  <28.336519, 31.675711, 41.536873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730682, 31.722569, 41.487488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169092, 0.756419, -0.631853,
		0.019374, 0.643512, 0.765191,
		0.985410, 0.117146, -0.123467,
		29.026306, 31.757711, 41.450447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375586, 32.427460, 41.414783>,  <28.336519, 31.675711, 41.536873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375586, 32.427460, 41.414783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712280, 32.274780, 41.262054>,  <28.914297, 32.183174, 41.170418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712280, 32.274780, 41.262054>,  <28.375586, 32.427460, 41.414783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712280, 32.274780, 41.262054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075511, 0.617032, -0.783307,
		0.534582, 0.688169, 0.490556,
		0.841736, -0.381700, -0.381818,
		28.964802, 32.160271, 41.147511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767971, 33.024586, 41.240704>,  <28.375586, 32.427460, 41.414783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767971, 33.024586, 41.240704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904259, 32.718578, 41.022106>,  <28.986031, 32.534973, 40.890949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904259, 32.718578, 41.022106>,  <28.767971, 33.024586, 41.240704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904259, 32.718578, 41.022106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090161, 0.605182, -0.790965,
		0.935832, 0.220225, 0.275172,
		0.340720, -0.765020, -0.546493,
		29.006475, 32.489071, 40.858158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230652, 33.290047, 40.867908>,  <28.767971, 33.024586, 41.240704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230652, 33.290047, 40.867908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165997, 32.950775, 40.666130>,  <29.127203, 32.747211, 40.545063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165997, 32.950775, 40.666130>,  <29.230652, 33.290047, 40.867908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165997, 32.950775, 40.666130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109236, 0.523401, -0.845056,
		0.980786, -0.081489, -0.177253,
		-0.161638, -0.848181, -0.504442,
		29.117506, 32.696320, 40.514797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672472, 33.297508, 40.284222>,  <29.230652, 33.290047, 40.867908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672472, 33.297508, 40.284222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392063, 33.026726, 40.194515>,  <29.223818, 32.864254, 40.140694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392063, 33.026726, 40.194515>,  <29.672472, 33.297508, 40.284222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392063, 33.026726, 40.194515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072230, 0.380254, -0.922057,
		0.709473, -0.630183, -0.315463,
		-0.701021, -0.676961, -0.224262,
		29.181757, 32.823639, 40.127235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791149, 32.878498, 39.594604>,  <29.672472, 33.297508, 40.284222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791149, 32.878498, 39.594604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396681, 32.849556, 39.654243>,  <29.160000, 32.832191, 39.690025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396681, 32.849556, 39.654243>,  <29.791149, 32.878498, 39.594604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396681, 32.849556, 39.654243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158403, 0.147025, -0.976367,
		0.048727, -0.986483, -0.156453,
		-0.986172, -0.072358, 0.149098,
		29.100830, 32.827847, 39.698975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556551, 32.503212, 39.039295>,  <29.791149, 32.878498, 39.594604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556551, 32.503212, 39.039295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235744, 32.701153, 39.173096>,  <29.043261, 32.819920, 39.253376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235744, 32.701153, 39.173096>,  <29.556551, 32.503212, 39.039295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235744, 32.701153, 39.173096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248383, 0.232998, -0.940222,
		-0.543212, -0.837156, -0.063954,
		-0.802014, 0.494855, 0.334503,
		28.995140, 32.849609, 39.273445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026936, 32.353115, 38.574486>,  <29.556551, 32.503212, 39.039295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026936, 32.353115, 38.574486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880032, 32.673729, 38.763237>,  <28.791889, 32.866096, 38.876488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880032, 32.673729, 38.763237>,  <29.026936, 32.353115, 38.574486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880032, 32.673729, 38.763237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344206, 0.354187, -0.869525,
		-0.864084, -0.481764, 0.145813,
		-0.367261, 0.801533, 0.471874,
		28.769854, 32.914188, 38.904800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250185, 32.369446, 38.433361>,  <29.026936, 32.353115, 38.574486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250185, 32.369446, 38.433361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381548, 32.739548, 38.509304>,  <28.460365, 32.961609, 38.554871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381548, 32.739548, 38.509304>,  <28.250185, 32.369446, 38.433361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381548, 32.739548, 38.509304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483723, 0.337400, -0.807572,
		-0.811271, 0.173374, 0.558374,
		0.328408, 0.925258, 0.189858,
		28.480070, 33.017124, 38.566261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697266, 32.780685, 38.183720>,  <28.250185, 32.369446, 38.433361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697266, 32.780685, 38.183720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965364, 33.072025, 38.240681>,  <28.126225, 33.246830, 38.274857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965364, 33.072025, 38.240681>,  <27.697266, 32.780685, 38.183720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965364, 33.072025, 38.240681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494358, 0.581287, -0.646310,
		-0.553515, 0.362789, 0.749670,
		0.670247, 0.728347, 0.142403,
		28.166439, 33.290531, 38.283401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287939, 33.320614, 38.329193>,  <27.697266, 32.780685, 38.183720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287939, 33.320614, 38.329193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640907, 33.443565, 38.186729>,  <27.852688, 33.517338, 38.101250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640907, 33.443565, 38.186729>,  <27.287939, 33.320614, 38.329193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640907, 33.443565, 38.186729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469239, 0.629553, -0.619255,
		0.033878, 0.713570, 0.699765,
		0.882421, 0.307378, -0.356163,
		27.905634, 33.535778, 38.079880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268314, 34.130299, 38.313709>,  <27.287939, 33.320614, 38.329193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268314, 34.130299, 38.313709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565451, 34.031071, 38.064983>,  <27.743732, 33.971535, 37.915749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565451, 34.031071, 38.064983>,  <27.268314, 34.130299, 38.313709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565451, 34.031071, 38.064983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211446, 0.794334, -0.569495,
		0.635196, 0.554525, 0.537613,
		0.742843, -0.248065, -0.621810,
		27.788303, 33.956650, 37.878441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559639, 34.778690, 38.125652>,  <27.268314, 34.130299, 38.313709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559639, 34.778690, 38.125652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721563, 34.553589, 37.837364>,  <27.818718, 34.418526, 37.664391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721563, 34.553589, 37.837364>,  <27.559639, 34.778690, 38.125652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721563, 34.553589, 37.837364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068721, 0.804681, -0.589717,
		0.911815, 0.189194, 0.364415,
		0.404809, -0.562756, -0.720719,
		27.843006, 34.384762, 37.621147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259077, 35.077614, 37.913479>,  <27.559639, 34.778690, 38.125652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259077, 35.077614, 37.913479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158369, 34.845398, 37.603748>,  <28.097944, 34.706070, 37.417908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158369, 34.845398, 37.603748>,  <28.259077, 35.077614, 37.913479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158369, 34.845398, 37.603748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030781, 0.804503, -0.593150,
		0.967297, -0.125504, -0.220421,
		-0.251772, -0.580537, -0.774330,
		28.082838, 34.671238, 37.371449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793509, 35.525711, 37.765984>,  <28.259077, 35.077614, 37.913479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793509, 35.525711, 37.765984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036053, 35.231743, 37.644516>,  <29.181580, 35.055363, 37.571636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036053, 35.231743, 37.644516>,  <28.793509, 35.525711, 37.765984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036053, 35.231743, 37.644516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660772, 0.678128, -0.321748,
		0.442389, -0.005564, 0.896806,
		0.606359, -0.734923, -0.303673,
		29.217960, 35.011265, 37.553413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401419, 35.703590, 37.977417>,  <28.793509, 35.525711, 37.765984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401419, 35.703590, 37.977417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488651, 35.484676, 37.654202>,  <29.540991, 35.353329, 37.460274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488651, 35.484676, 37.654202>,  <29.401419, 35.703590, 37.977417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488651, 35.484676, 37.654202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501919, 0.772968, -0.388068,
		0.836969, -0.320938, 0.443262,
		0.218082, -0.547283, -0.808036,
		29.554075, 35.320492, 37.411789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154778, 35.826950, 37.849190>,  <29.401419, 35.703590, 37.977417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154778, 35.826950, 37.849190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974627, 35.732185, 37.504856>,  <29.866535, 35.675327, 37.298256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974627, 35.732185, 37.504856>,  <30.154778, 35.826950, 37.849190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974627, 35.732185, 37.504856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596759, 0.637279, -0.487600,
		0.664109, -0.733314, -0.145637,
		-0.450375, -0.236909, -0.860835,
		29.839514, 35.661114, 37.246605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692610, 36.164921, 38.387737>,  <30.154778, 35.826950, 37.849190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692610, 36.164921, 38.387737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636385, 35.889084, 38.671906>,  <30.602650, 35.723579, 38.842407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636385, 35.889084, 38.671906>,  <30.692610, 36.164921, 38.387737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636385, 35.889084, 38.671906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537182, 0.655867, 0.530353,
		-0.831672, -0.307079, -0.462628,
		-0.140562, -0.689595, 0.710423,
		30.594217, 35.682205, 38.885033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504950, 36.593513, 37.745964>,  <30.692610, 36.164921, 38.387737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504950, 36.593513, 37.745964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160975, 36.502205, 37.928566>,  <29.954590, 36.447418, 38.038128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160975, 36.502205, 37.928566>,  <30.504950, 36.593513, 37.745964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160975, 36.502205, 37.928566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328867, 0.436187, 0.837608,
		-0.390327, 0.870420, -0.300022,
		-0.859937, -0.228273, 0.456509,
		29.902994, 36.433723, 38.065517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281298, 37.227619, 38.071983>,  <30.504950, 36.593513, 37.745964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281298, 37.227619, 38.071983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134825, 36.905853, 38.259098>,  <30.046942, 36.712795, 38.371368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134825, 36.905853, 38.259098>,  <30.281298, 37.227619, 38.071983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134825, 36.905853, 38.259098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229747, 0.408989, 0.883145,
		-0.901736, 0.430865, 0.035048,
		-0.366182, -0.804415, 0.467790,
		30.024971, 36.664528, 38.399433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808943, 37.437553, 38.647480>,  <30.281298, 37.227619, 38.071983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808943, 37.437553, 38.647480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050014, 37.124664, 38.710606>,  <30.194656, 36.936932, 38.748482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050014, 37.124664, 38.710606>,  <29.808943, 37.437553, 38.647480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050014, 37.124664, 38.710606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345088, 0.433800, 0.832305,
		-0.719509, -0.447152, 0.531378,
		0.602678, -0.782223, 0.157816,
		30.230818, 36.889996, 38.757950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794670, 37.405033, 39.319363>,  <29.808943, 37.437553, 38.647480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794670, 37.405033, 39.319363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132908, 37.218552, 39.215351>,  <30.335852, 37.106663, 39.152943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132908, 37.218552, 39.215351>,  <29.794670, 37.405033, 39.319363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132908, 37.218552, 39.215351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429705, 0.305438, 0.849742,
		-0.316733, -0.830276, 0.458609,
		0.845597, -0.466208, -0.260031,
		30.386587, 37.078690, 39.137341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048540, 36.913647, 39.781536>,  <29.794670, 37.405033, 39.319363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048540, 36.913647, 39.781536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368820, 37.069931, 39.599892>,  <30.560989, 37.163704, 39.490906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368820, 37.069931, 39.599892>,  <30.048540, 36.913647, 39.781536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368820, 37.069931, 39.599892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425263, 0.163190, 0.890236,
		0.421934, -0.905931, -0.035489,
		0.800701, 0.390714, -0.454114,
		30.609030, 37.187145, 39.463657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710087, 36.539635, 40.169128>,  <30.048540, 36.913647, 39.781536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710087, 36.539635, 40.169128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840979, 36.858437, 39.966068>,  <30.919514, 37.049717, 39.844231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840979, 36.858437, 39.966068>,  <30.710087, 36.539635, 40.169128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840979, 36.858437, 39.966068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678505, 0.175736, 0.713266,
		0.657687, -0.577843, -0.483265,
		0.327228, 0.797003, -0.507649,
		30.939148, 37.097538, 39.813774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380772, 36.543957, 40.231705>,  <30.710087, 36.539635, 40.169128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380772, 36.543957, 40.231705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319422, 36.927208, 40.134979>,  <31.282612, 37.157158, 40.076946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319422, 36.927208, 40.134979>,  <31.380772, 36.543957, 40.231705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319422, 36.927208, 40.134979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633874, 0.283119, 0.719755,
		0.758077, -0.042884, -0.650754,
		-0.153375, 0.958125, -0.241809,
		31.273409, 37.214645, 40.062435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042183, 36.755527, 40.258015>,  <31.380772, 36.543957, 40.231705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042183, 36.755527, 40.258015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786333, 37.062027, 40.282448>,  <31.632822, 37.245926, 40.297108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786333, 37.062027, 40.282448>,  <32.042183, 36.755527, 40.258015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786333, 37.062027, 40.282448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542666, 0.393850, 0.741886,
		0.544415, 0.507679, -0.667738,
		-0.639629, 0.766253, 0.061083,
		31.594444, 37.291904, 40.300774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472179, 37.327263, 40.444950>,  <32.042183, 36.755527, 40.258015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472179, 37.327263, 40.444950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100151, 37.452713, 40.521484>,  <31.876934, 37.527985, 40.567406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100151, 37.452713, 40.521484>,  <32.472179, 37.327263, 40.444950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100151, 37.452713, 40.521484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305425, 0.370642, 0.877120,
		0.204174, 0.874220, -0.440513,
		-0.930069, 0.313629, 0.191333,
		31.821131, 37.546803, 40.578884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567181, 37.983330, 40.694092>,  <32.472179, 37.327263, 40.444950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567181, 37.983330, 40.694092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206749, 37.881012, 40.834164>,  <31.990490, 37.819622, 40.918209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206749, 37.881012, 40.834164>,  <32.567181, 37.983330, 40.694092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206749, 37.881012, 40.834164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272504, 0.294174, 0.916080,
		-0.337347, 0.920885, -0.195367,
		-0.901076, -0.255799, 0.350183,
		31.936426, 37.804272, 40.939220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243732, 38.621620, 41.026901>,  <32.567181, 37.983330, 40.694092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243732, 38.621620, 41.026901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087185, 38.290176, 41.187016>,  <31.993256, 38.091309, 41.283085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087185, 38.290176, 41.187016>,  <32.243732, 38.621620, 41.026901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087185, 38.290176, 41.187016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132800, 0.379574, 0.915581,
		-0.910600, 0.411491, -0.038514,
		-0.391372, -0.828613, 0.400286,
		31.969774, 38.041592, 41.307102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794018, 38.932564, 41.559364>,  <32.243732, 38.621620, 41.026901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794018, 38.932564, 41.559364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846766, 38.547039, 41.652042>,  <31.878414, 38.315723, 41.707649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846766, 38.547039, 41.652042>,  <31.794018, 38.932564, 41.559364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846766, 38.547039, 41.652042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155125, 0.250923, 0.955497,
		-0.979054, -0.090061, 0.182601,
		0.131871, -0.963808, 0.231696,
		31.886328, 38.257896, 41.721550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444820, 38.933723, 42.100613>,  <31.794018, 38.932564, 41.559364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444820, 38.933723, 42.100613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660410, 38.597633, 42.124386>,  <31.789764, 38.395981, 42.138649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660410, 38.597633, 42.124386>,  <31.444820, 38.933723, 42.100613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660410, 38.597633, 42.124386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017606, 0.081785, 0.996494,
		-0.842138, -0.536039, 0.058873,
		0.538975, -0.840222, 0.059436,
		31.822102, 38.345566, 42.142216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239031, 38.591793, 42.697926>,  <31.444820, 38.933723, 42.100613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239031, 38.591793, 42.697926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581032, 38.395100, 42.632000>,  <31.786232, 38.277084, 42.592445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581032, 38.395100, 42.632000>,  <31.239031, 38.591793, 42.697926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581032, 38.395100, 42.632000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162015, -0.048632, 0.985589,
		-0.492667, -0.869384, 0.038089,
		0.855003, -0.491738, -0.164813,
		31.837532, 38.247578, 42.582558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117105, 38.045959, 43.142670>,  <31.239031, 38.591793, 42.697926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117105, 38.045959, 43.142670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502546, 38.106956, 43.054832>,  <31.733810, 38.143555, 43.002129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502546, 38.106956, 43.054832>,  <31.117105, 38.045959, 43.142670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502546, 38.106956, 43.054832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213377, 0.056201, 0.975352,
		0.161075, -0.986705, 0.021617,
		0.963600, 0.152492, -0.219592,
		31.791626, 38.152702, 42.988956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518129, 37.582199, 43.420551>,  <31.117105, 38.045959, 43.142670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518129, 37.582199, 43.420551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791731, 37.866570, 43.355171>,  <31.955893, 38.037193, 43.315945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791731, 37.866570, 43.355171>,  <31.518129, 37.582199, 43.420551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791731, 37.866570, 43.355171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175686, 0.056922, 0.982799,
		0.708006, -0.700954, -0.085965,
		0.684004, 0.710931, -0.163449,
		31.996933, 38.079849, 43.306137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157372, 37.510902, 43.930000>,  <31.518129, 37.582199, 43.420551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157372, 37.510902, 43.930000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129459, 37.892220, 43.812447>,  <32.112713, 38.121010, 43.741917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129459, 37.892220, 43.812447>,  <32.157372, 37.510902, 43.930000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129459, 37.892220, 43.812447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029501, 0.296444, 0.954595,
		0.997126, 0.057943, -0.048810,
		-0.069781, 0.953291, -0.293883,
		32.108524, 38.178207, 43.724281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646736, 37.717991, 44.269878>,  <32.157372, 37.510902, 43.930000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646736, 37.717991, 44.269878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425301, 38.026577, 44.144417>,  <32.292439, 38.211731, 44.069141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425301, 38.026577, 44.144417>,  <32.646736, 37.717991, 44.269878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425301, 38.026577, 44.144417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019013, 0.388237, 0.921364,
		0.832576, 0.504090, -0.229590,
		-0.553585, 0.771470, -0.313652,
		32.259224, 38.258018, 44.050320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976788, 38.256954, 44.549126>,  <32.646736, 37.717991, 44.269878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976788, 38.256954, 44.549126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610741, 38.397243, 44.469574>,  <32.391113, 38.481415, 44.421844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610741, 38.397243, 44.469574>,  <32.976788, 38.256954, 44.549126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610741, 38.397243, 44.469574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081713, 0.321692, 0.943312,
		0.394816, 0.879493, -0.265728,
		-0.915119, 0.350721, -0.198876,
		32.336205, 38.502460, 44.409912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017612, 38.918297, 44.811264>,  <32.976788, 38.256954, 44.549126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017612, 38.918297, 44.811264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627937, 38.829922, 44.792782>,  <32.394131, 38.776897, 44.781693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627937, 38.829922, 44.792782>,  <33.017612, 38.918297, 44.811264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627937, 38.829922, 44.792782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100629, 0.241861, 0.965079,
		-0.202047, 0.944822, -0.257852,
		-0.974192, -0.220939, -0.046210,
		32.335678, 38.763641, 44.778919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658623, 39.522797, 45.116035>,  <33.017612, 38.918297, 44.811264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658623, 39.522797, 45.116035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414394, 39.206593, 45.135201>,  <32.267857, 39.016872, 45.146698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414394, 39.206593, 45.135201>,  <32.658623, 39.522797, 45.116035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414394, 39.206593, 45.135201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200323, 0.212689, 0.956365,
		-0.766204, 0.574336, -0.288219,
		-0.610575, -0.790507, 0.047910,
		32.231220, 38.969440, 45.149574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057686, 39.843227, 45.385273>,  <32.658623, 39.522797, 45.116035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057686, 39.843227, 45.385273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006554, 39.452236, 45.452435>,  <31.975874, 39.217640, 45.492729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006554, 39.452236, 45.452435>,  <32.057686, 39.843227, 45.385273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006554, 39.452236, 45.452435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102410, 0.181394, 0.978064,
		-0.986495, 0.107830, -0.123291,
		-0.127829, -0.977481, 0.167901,
		31.968204, 39.158993, 45.502804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732410, 39.812206, 45.978588>,  <32.057686, 39.843227, 45.385273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732410, 39.812206, 45.978588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857027, 39.433262, 45.949078>,  <31.931797, 39.205894, 45.931370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857027, 39.433262, 45.949078>,  <31.732410, 39.812206, 45.978588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857027, 39.433262, 45.949078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005814, -0.075742, 0.997110,
		-0.950214, -0.311072, -0.018089,
		0.311543, -0.947363, -0.073780,
		31.950491, 39.149052, 45.926945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247845, 39.404686, 46.318741>,  <31.732410, 39.812206, 45.978588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247845, 39.404686, 46.318741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599377, 39.214752, 46.300037>,  <31.810297, 39.100792, 46.288815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599377, 39.214752, 46.300037>,  <31.247845, 39.404686, 46.318741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599377, 39.214752, 46.300037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043329, -0.018176, 0.998896,
		-0.475162, -0.879886, 0.004600,
		0.878831, -0.474836, -0.046761,
		31.863026, 39.072300, 46.286011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242994, 39.011055, 46.907795>,  <31.247845, 39.404686, 46.318741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242994, 39.011055, 46.907795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621416, 38.965225, 46.786564>,  <31.848469, 38.937725, 46.713825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621416, 38.965225, 46.786564>,  <31.242994, 39.011055, 46.907795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621416, 38.965225, 46.786564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307265, 0.020397, 0.951405,
		-0.102828, -0.993205, 0.054502,
		0.946052, -0.114578, -0.303079,
		31.905231, 38.930851, 46.695641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531567, 38.312542, 47.241508>,  <31.242994, 39.011055, 46.907795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531567, 38.312542, 47.241508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829771, 38.567432, 47.163380>,  <32.008694, 38.720367, 47.116501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829771, 38.567432, 47.163380>,  <31.531567, 38.312542, 47.241508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829771, 38.567432, 47.163380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223375, 0.037227, 0.974022,
		0.627948, -0.769773, -0.114589,
		0.745510, 0.637231, -0.195325,
		32.053425, 38.758602, 47.104782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109734, 38.109184, 47.660603>,  <31.531567, 38.312542, 47.241508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109734, 38.109184, 47.660603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173538, 38.493252, 47.568840>,  <32.211823, 38.723694, 47.513783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173538, 38.493252, 47.568840>,  <32.109734, 38.109184, 47.660603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173538, 38.493252, 47.568840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297315, 0.174862, 0.938630,
		0.941360, -0.217931, -0.257580,
		0.159516, 0.960171, -0.229402,
		32.221394, 38.781303, 47.500019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774021, 38.205925, 47.887978>,  <32.109734, 38.109184, 47.660603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774021, 38.205925, 47.887978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588928, 38.559013, 47.855286>,  <32.477875, 38.770866, 47.835670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588928, 38.559013, 47.855286>,  <32.774021, 38.205925, 47.887978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588928, 38.559013, 47.855286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283374, 0.234644, 0.929861,
		0.839989, 0.407112, -0.358718,
		-0.462729, 0.882724, -0.081734,
		32.450111, 38.823830, 47.830765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262447, 38.738720, 48.050266>,  <32.774021, 38.205925, 47.887978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262447, 38.738720, 48.050266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901054, 38.899986, 48.108475>,  <32.684219, 38.996746, 48.143402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901054, 38.899986, 48.108475>,  <33.262447, 38.738720, 48.050266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901054, 38.899986, 48.108475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302045, 0.357964, 0.883533,
		0.304115, 0.842212, -0.445188,
		-0.903484, 0.403163, 0.145524,
		32.630009, 39.020935, 48.152130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337814, 39.423019, 48.315289>,  <33.262447, 38.738720, 48.050266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337814, 39.423019, 48.315289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973213, 39.297886, 48.422100>,  <32.754452, 39.222805, 48.486187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973213, 39.297886, 48.422100>,  <33.337814, 39.423019, 48.315289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973213, 39.297886, 48.422100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182635, 0.273861, 0.944270,
		-0.368523, 0.909471, -0.192491,
		-0.911502, -0.312829, 0.267025,
		32.699764, 39.204037, 48.502209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073292, 39.964863, 48.761929>,  <33.337814, 39.423019, 48.315289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073292, 39.964863, 48.761929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862988, 39.632542, 48.834969>,  <32.736805, 39.433147, 48.878792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862988, 39.632542, 48.834969>,  <33.073292, 39.964863, 48.761929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862988, 39.632542, 48.834969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086842, 0.161116, 0.983107,
		-0.846187, 0.532739, -0.012560,
		-0.525763, -0.830802, 0.182598,
		32.705257, 39.383301, 48.889748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630165, 40.142197, 49.390720>,  <33.073292, 39.964863, 48.761929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630165, 40.142197, 49.390720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602287, 39.743286, 49.381081>,  <32.585560, 39.503941, 49.375298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602287, 39.743286, 49.381081>,  <32.630165, 40.142197, 49.390720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602287, 39.743286, 49.381081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112930, -0.031889, 0.993091,
		-0.991155, 0.066495, 0.114845,
		-0.069698, -0.997277, -0.024098,
		32.581379, 39.444103, 49.373852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059784, 39.885674, 49.976730>,  <32.630165, 40.142197, 49.390720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059784, 39.885674, 49.976730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320557, 39.600609, 49.873116>,  <32.477020, 39.429569, 49.810947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320557, 39.600609, 49.873116>,  <32.059784, 39.885674, 49.976730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320557, 39.600609, 49.873116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053832, -0.297254, 0.953280,
		-0.756364, -0.635418, -0.155425,
		0.651932, -0.712660, -0.259038,
		32.516136, 39.386810, 49.795403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877890, 39.407410, 50.420975>,  <32.059784, 39.885674, 49.976730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877890, 39.407410, 50.420975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240868, 39.294239, 50.296722>,  <32.458656, 39.226337, 50.222172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240868, 39.294239, 50.296722>,  <31.877890, 39.407410, 50.420975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240868, 39.294239, 50.296722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247207, -0.238295, 0.939204,
		-0.339753, -0.929067, -0.146297,
		0.907445, -0.282932, -0.310633,
		32.513100, 39.209358, 50.203533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022129, 38.787689, 50.736351>,  <31.877890, 39.407410, 50.420975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022129, 38.787689, 50.736351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377483, 38.922516, 50.611668>,  <32.590694, 39.003410, 50.536858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377483, 38.922516, 50.611668>,  <32.022129, 38.787689, 50.736351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377483, 38.922516, 50.611668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360860, -0.092943, 0.927977,
		0.283818, -0.936882, -0.204202,
		0.888385, 0.337065, -0.311705,
		32.643997, 39.023636, 50.518158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635033, 38.238621, 50.895805>,  <32.022129, 38.787689, 50.736351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635033, 38.238621, 50.895805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754616, 38.619469, 50.870239>,  <32.826366, 38.847977, 50.854900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754616, 38.619469, 50.870239>,  <32.635033, 38.238621, 50.895805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754616, 38.619469, 50.870239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314866, -0.035197, 0.948483,
		0.900822, -0.303685, -0.310314,
		0.298962, 0.952122, -0.063914,
		32.844303, 38.905106, 50.851067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137470, 38.208275, 51.308434>,  <32.635033, 38.238621, 50.895805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137470, 38.208275, 51.308434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134140, 38.608189, 51.300777>,  <33.132141, 38.848137, 51.296185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134140, 38.608189, 51.300777>,  <33.137470, 38.208275, 51.308434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134140, 38.608189, 51.300777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156265, 0.020202, 0.987508,
		0.987680, 0.005227, -0.156399,
		-0.008322, 0.999782, -0.019137,
		33.131645, 38.908123, 51.295036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712154, 38.432022, 51.804214>,  <33.137470, 38.208275, 51.308434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712154, 38.432022, 51.804214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486931, 38.758633, 51.753212>,  <33.351799, 38.954597, 51.722610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486931, 38.758633, 51.753212>,  <33.712154, 38.432022, 51.804214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486931, 38.758633, 51.753212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113604, 0.229301, 0.966703,
		0.818573, 0.529822, -0.221870,
		-0.563056, 0.816523, -0.127510,
		33.318012, 39.003590, 51.714958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048523, 39.033092, 52.129810>,  <33.712154, 38.432022, 51.804214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048523, 39.033092, 52.129810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663811, 39.142616, 52.131241>,  <33.432983, 39.208328, 52.132099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663811, 39.142616, 52.131241>,  <34.048523, 39.033092, 52.129810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663811, 39.142616, 52.131241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068438, 0.227727, 0.971317,
		0.265139, 0.934436, -0.237762,
		-0.961778, 0.273806, 0.003572,
		33.375278, 39.224758, 52.132313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051720, 39.559475, 52.524990>,  <34.048523, 39.033092, 52.129810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051720, 39.559475, 52.524990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662045, 39.469284, 52.520691>,  <33.428238, 39.415169, 52.518112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662045, 39.469284, 52.520691>,  <34.051720, 39.559475, 52.524990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662045, 39.469284, 52.520691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059859, 0.212144, 0.975404,
		-0.217655, 0.950870, -0.220165,
		-0.974189, -0.225480, -0.010744,
		33.369789, 39.401642, 52.517467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807022, 39.993610, 52.941200>,  <34.051720, 39.559475, 52.524990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807022, 39.993610, 52.941200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525253, 39.709896, 52.930622>,  <33.356194, 39.539665, 52.924274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525253, 39.709896, 52.930622>,  <33.807022, 39.993610, 52.941200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525253, 39.709896, 52.930622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127026, 0.089322, 0.987870,
		-0.698323, 0.699236, -0.153018,
		-0.704421, -0.709289, -0.026445,
		33.313927, 39.497108, 52.922688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363075, 40.269287, 53.541523>,  <33.807022, 39.993610, 52.941200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363075, 40.269287, 53.541523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283497, 39.888294, 53.449268>,  <33.235748, 39.659698, 53.393917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283497, 39.888294, 53.449268>,  <33.363075, 40.269287, 53.541523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283497, 39.888294, 53.449268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011219, -0.237540, 0.971313,
		-0.979946, 0.190650, 0.057943,
		-0.198945, -0.952485, -0.230637,
		33.223812, 39.602551, 53.380077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788197, 40.068451, 53.892876>,  <33.363075, 40.269287, 53.541523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788197, 40.068451, 53.892876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995800, 39.735115, 53.816795>,  <33.120361, 39.535114, 53.771149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995800, 39.735115, 53.816795>,  <32.788197, 40.068451, 53.892876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995800, 39.735115, 53.816795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167078, -0.119316, 0.978698,
		-0.838279, -0.539733, 0.077306,
		0.519011, -0.833338, -0.190198,
		33.151505, 39.485115, 53.759735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600327, 39.585041, 54.427982>,  <32.788197, 40.068451, 53.892876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600327, 39.585041, 54.427982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964306, 39.517128, 54.276634>,  <33.182693, 39.476379, 54.185825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964306, 39.517128, 54.276634>,  <32.600327, 39.585041, 54.427982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964306, 39.517128, 54.276634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357123, -0.143057, 0.923037,
		-0.210848, -0.975042, -0.069539,
		0.909948, -0.169787, -0.378373,
		33.237289, 39.466194, 54.163124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847412, 38.809132, 54.559998>,  <32.600327, 39.585041, 54.427982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847412, 38.809132, 54.559998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145668, 39.065090, 54.485653>,  <33.324623, 39.218666, 54.441044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145668, 39.065090, 54.485653>,  <32.847412, 38.809132, 54.559998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145668, 39.065090, 54.485653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582741, -0.490935, 0.647608,
		0.323156, -0.591196, -0.738957,
		0.745643, 0.639899, -0.185865,
		33.369362, 39.257061, 54.429893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385803, 38.548714, 54.145992>,  <32.847412, 38.809132, 54.559998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385803, 38.548714, 54.145992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540249, 38.836052, 54.377472>,  <33.632915, 39.008453, 54.516361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540249, 38.836052, 54.377472>,  <33.385803, 38.548714, 54.145992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540249, 38.836052, 54.377472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512846, -0.688630, 0.512619,
		0.766748, 0.098854, -0.634292,
		0.386117, 0.718343, 0.578702,
		33.656086, 39.051556, 54.551083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210911, 38.556076, 54.219715>,  <33.385803, 38.548714, 54.145992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210911, 38.556076, 54.219715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046612, 38.687187, 54.560032>,  <33.948032, 38.765854, 54.764221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046612, 38.687187, 54.560032>,  <34.210911, 38.556076, 54.219715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046612, 38.687187, 54.560032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523394, -0.679302, 0.514400,
		0.746554, 0.656588, 0.107464,
		-0.410750, 0.327781, 0.850790,
		33.923386, 38.785522, 54.815269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683823, 38.547386, 54.803093>,  <34.210911, 38.556076, 54.219715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683823, 38.547386, 54.803093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317806, 38.524052, 54.962742>,  <34.098198, 38.510052, 55.058533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317806, 38.524052, 54.962742>,  <34.683823, 38.547386, 54.803093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317806, 38.524052, 54.962742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317429, -0.714665, 0.623292,
		0.248880, 0.697030, 0.672464,
		-0.915040, -0.058334, 0.399123,
		34.043293, 38.506550, 55.082478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796112, 38.536652, 55.558403>,  <34.683823, 38.547386, 54.803093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796112, 38.536652, 55.558403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452393, 38.375542, 55.432304>,  <34.246162, 38.278877, 55.356644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452393, 38.375542, 55.432304>,  <34.796112, 38.536652, 55.558403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452393, 38.375542, 55.432304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192559, -0.825754, 0.530143,
		-0.473846, 0.394847, 0.787125,
		-0.859297, -0.402774, -0.315248,
		34.194603, 38.254711, 55.337730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257584, 37.897972, 55.505669>,  <34.796112, 38.536652, 55.558403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257584, 37.897972, 55.505669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394291, 37.532307, 55.418484>,  <35.476315, 37.312908, 55.366173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394291, 37.532307, 55.418484>,  <35.257584, 37.897972, 55.505669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394291, 37.532307, 55.418484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646143, -0.060159, -0.760842,
		0.682420, 0.400861, -0.611239,
		0.341764, -0.914162, -0.217960,
		35.496819, 37.258057, 55.353096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389622, 37.942371, 54.877895>,  <35.257584, 37.897972, 55.505669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389622, 37.942371, 54.877895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376472, 37.544613, 54.918095>,  <35.368584, 37.305958, 54.942215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376472, 37.544613, 54.918095>,  <35.389622, 37.942371, 54.877895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376472, 37.544613, 54.918095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613775, -0.059276, -0.787252,
		0.788796, -0.087560, -0.608386,
		-0.032869, -0.994394, 0.100499,
		35.366611, 37.246296, 54.948246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612091, 37.626637, 54.271488>,  <35.389622, 37.942371, 54.877895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612091, 37.626637, 54.271488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402451, 37.342049, 54.458736>,  <35.276665, 37.171295, 54.571083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402451, 37.342049, 54.458736>,  <35.612091, 37.626637, 54.271488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402451, 37.342049, 54.458736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497781, -0.190086, -0.846216,
		0.691037, -0.676523, -0.254530,
		-0.524102, -0.711467, 0.468116,
		35.245220, 37.128609, 54.599171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854832, 36.989815, 53.973083>,  <35.612091, 37.626637, 54.271488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854832, 36.989815, 53.973083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477024, 37.006279, 54.103436>,  <35.250340, 37.016159, 54.181648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477024, 37.006279, 54.103436>,  <35.854832, 36.989815, 53.973083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477024, 37.006279, 54.103436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328205, -0.158036, -0.931293,
		0.013165, -0.986575, 0.162777,
		-0.944514, 0.041164, 0.325879,
		35.193668, 37.018627, 54.201199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513645, 36.248863, 53.812595>,  <35.854832, 36.989815, 53.973083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513645, 36.248863, 53.812595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300457, 36.587257, 53.806290>,  <35.172543, 36.790295, 53.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300457, 36.587257, 53.806290>,  <35.513645, 36.248863, 53.812595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300457, 36.587257, 53.806290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448871, -0.298480, -0.842273,
		-0.717256, -0.441833, 0.538820,
		-0.532972, 0.845986, -0.015761,
		35.140564, 36.841053, 53.801563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739075, 36.143688, 53.980518>,  <35.513645, 36.248863, 53.812595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739075, 36.143688, 53.980518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813721, 36.467262, 53.757519>,  <34.858509, 36.661407, 53.623718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813721, 36.467262, 53.757519>,  <34.739075, 36.143688, 53.980518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813721, 36.467262, 53.757519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497672, -0.411430, -0.763576,
		-0.847052, 0.419948, 0.325802,
		0.186618, 0.808930, -0.557499,
		34.869705, 36.709942, 53.590267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037029, 36.425137, 53.712105>,  <34.739075, 36.143688, 53.980518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037029, 36.425137, 53.712105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309624, 36.576859, 53.461761>,  <34.473183, 36.667892, 53.311554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309624, 36.576859, 53.461761>,  <34.037029, 36.425137, 53.712105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309624, 36.576859, 53.461761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440316, -0.470571, -0.764646,
		-0.584544, 0.796675, -0.153676,
		0.681490, 0.379304, -0.625859,
		34.514072, 36.690651, 53.274002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613903, 36.722393, 53.189903>,  <34.037029, 36.425137, 53.712105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613903, 36.722393, 53.189903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975471, 36.722824, 53.018822>,  <34.192413, 36.723083, 52.916172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975471, 36.722824, 53.018822>,  <33.613903, 36.722393, 53.189903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975471, 36.722824, 53.018822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416045, -0.229688, -0.879858,
		-0.099183, 0.973264, -0.207173,
		0.903919, 0.001074, -0.427703,
		34.246647, 36.723145, 52.890511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541317, 37.024200, 52.512825>,  <33.613903, 36.722393, 53.189903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541317, 37.024200, 52.512825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888168, 36.830261, 52.467201>,  <34.096279, 36.713898, 52.439827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888168, 36.830261, 52.467201>,  <33.541317, 37.024200, 52.512825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888168, 36.830261, 52.467201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307361, -0.340676, -0.888521,
		0.391938, 0.805521, -0.444433,
		0.867130, -0.484846, -0.114062,
		34.148308, 36.684807, 52.432983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779915, 37.124439, 51.764732>,  <33.541317, 37.024200, 52.512825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779915, 37.124439, 51.764732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946423, 36.790443, 51.908684>,  <34.046326, 36.590046, 51.995056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946423, 36.790443, 51.908684>,  <33.779915, 37.124439, 51.764732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946423, 36.790443, 51.908684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095944, -0.433931, -0.895823,
		0.904167, 0.338372, -0.260742,
		0.416265, -0.834990, 0.359882,
		34.071301, 36.539948, 52.016647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036411, 36.772926, 51.143661>,  <33.779915, 37.124439, 51.764732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036411, 36.772926, 51.143661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066029, 36.487667, 51.422501>,  <34.083801, 36.316513, 51.589802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066029, 36.487667, 51.422501>,  <34.036411, 36.772926, 51.143661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066029, 36.487667, 51.422501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010956, -0.699552, -0.714498,
		0.997195, 0.045269, -0.059613,
		0.074047, -0.713147, 0.697093,
		34.088242, 36.273724, 51.631630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532421, 36.319588, 50.924664>,  <34.036411, 36.772926, 51.143661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532421, 36.319588, 50.924664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285622, 36.108383, 51.158077>,  <34.137543, 35.981659, 51.298126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285622, 36.108383, 51.158077>,  <34.532421, 36.319588, 50.924664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285622, 36.108383, 51.158077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022116, -0.729578, -0.683539,
		0.786654, -0.434648, 0.438471,
		-0.616998, -0.528012, 0.583538,
		34.100521, 35.949978, 51.333138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856590, 35.691498, 50.939842>,  <34.532421, 36.319588, 50.924664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856590, 35.691498, 50.939842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475407, 35.644615, 51.051655>,  <34.246696, 35.616486, 51.118744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475407, 35.644615, 51.051655>,  <34.856590, 35.691498, 50.939842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475407, 35.644615, 51.051655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119574, -0.702060, -0.702007,
		0.278525, -0.702407, 0.655018,
		-0.952956, -0.117203, 0.279531,
		34.189518, 35.609455, 51.135513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832664, 35.004971, 50.898308>,  <34.856590, 35.691498, 50.939842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832664, 35.004971, 50.898308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458218, 35.145386, 50.906845>,  <34.233551, 35.229633, 50.911968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458218, 35.145386, 50.906845>,  <34.832664, 35.004971, 50.898308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458218, 35.145386, 50.906845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220290, -0.537973, -0.813669,
		-0.274146, -0.766392, 0.580937,
		-0.936118, 0.351038, 0.021345,
		34.177383, 35.250698, 50.913250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420418, 34.400143, 50.693295>,  <34.832664, 35.004971, 50.898308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420418, 34.400143, 50.693295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142857, 34.685211, 50.652096>,  <33.976322, 34.856251, 50.627377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142857, 34.685211, 50.652096>,  <34.420418, 34.400143, 50.693295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142857, 34.685211, 50.652096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293826, -0.410824, -0.863070,
		-0.657396, -0.568620, 0.494471,
		-0.693899, 0.712667, -0.102999,
		33.934689, 34.899010, 50.621197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687592, 34.102970, 50.601509>,  <34.420418, 34.400143, 50.693295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687592, 34.102970, 50.601509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740238, 34.461521, 50.432186>,  <33.771828, 34.676651, 50.330593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740238, 34.461521, 50.432186>,  <33.687592, 34.102970, 50.601509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740238, 34.461521, 50.432186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345670, -0.358717, -0.867084,
		-0.929080, 0.260448, 0.262636,
		0.131618, 0.896376, -0.423305,
		33.779724, 34.730434, 50.305195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253082, 34.070465, 50.051128>,  <33.687592, 34.102970, 50.601509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253082, 34.070465, 50.051128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461964, 34.400082, 49.963253>,  <33.587292, 34.597851, 49.910526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461964, 34.400082, 49.963253>,  <33.253082, 34.070465, 50.051128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461964, 34.400082, 49.963253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154792, -0.161738, -0.974618,
		-0.838658, 0.542950, 0.043096,
		0.522199, 0.824042, -0.219687,
		33.618622, 34.647293, 49.897346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842110, 34.323322, 49.505344>,  <33.253082, 34.070465, 50.051128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842110, 34.323322, 49.505344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196022, 34.505413, 49.465481>,  <33.408371, 34.614666, 49.441563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196022, 34.505413, 49.465481>,  <32.842110, 34.323322, 49.505344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196022, 34.505413, 49.465481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096125, -0.030964, -0.994887,
		-0.455981, 0.889839, 0.016362,
		0.884783, 0.455222, -0.099655,
		33.461456, 34.641979, 49.435585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833702, 35.023224, 49.108940>,  <32.842110, 34.323322, 49.505344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833702, 35.023224, 49.108940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215347, 34.909042, 49.072762>,  <33.444336, 34.840534, 49.051052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215347, 34.909042, 49.072762>,  <32.833702, 35.023224, 49.108940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215347, 34.909042, 49.072762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110308, -0.054234, -0.992417,
		0.278387, 0.956856, -0.083234,
		0.954114, -0.285457, -0.090450,
		33.501583, 34.823406, 49.045628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158783, 35.432415, 48.642746>,  <32.833702, 35.023224, 49.108940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158783, 35.432415, 48.642746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364883, 35.089603, 48.641293>,  <33.488544, 34.883915, 48.640419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364883, 35.089603, 48.641293>,  <33.158783, 35.432415, 48.642746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364883, 35.089603, 48.641293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254544, -0.148980, -0.955517,
		0.818367, 0.493256, -0.294915,
		0.515251, -0.857032, -0.003635,
		33.519459, 34.832493, 48.640202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618744, 35.443123, 48.122719>,  <33.158783, 35.432415, 48.642746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618744, 35.443123, 48.122719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597481, 35.053539, 48.210880>,  <33.584724, 34.819790, 48.263779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597481, 35.053539, 48.210880>,  <33.618744, 35.443123, 48.122719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597481, 35.053539, 48.210880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086289, -0.215414, -0.972703,
		0.994851, -0.070726, -0.072590,
		-0.053158, -0.973958, 0.220407,
		33.581532, 34.761353, 48.277004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887222, 35.239868, 47.601559>,  <33.618744, 35.443123, 48.122719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887222, 35.239868, 47.601559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748791, 34.889835, 47.736885>,  <33.665733, 34.679813, 47.818081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748791, 34.889835, 47.736885>,  <33.887222, 35.239868, 47.601559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748791, 34.889835, 47.736885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104077, -0.322564, -0.940808,
		0.932415, -0.360805, 0.020556,
		-0.346079, -0.875084, 0.338315,
		33.644966, 34.627312, 47.838379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385967, 34.672581, 47.312290>,  <33.887222, 35.239868, 47.601559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385967, 34.672581, 47.312290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023197, 34.538250, 47.414036>,  <33.805534, 34.457653, 47.475082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023197, 34.538250, 47.414036>,  <34.385967, 34.672581, 47.312290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023197, 34.538250, 47.414036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159157, -0.285915, -0.944945,
		0.390066, -0.897481, 0.205855,
		-0.906928, -0.335828, 0.254366,
		33.751118, 34.437500, 47.490345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322433, 33.997238, 47.054493>,  <34.385967, 34.672581, 47.312290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322433, 33.997238, 47.054493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957180, 34.155079, 47.095444>,  <33.738029, 34.249783, 47.120014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957180, 34.155079, 47.095444>,  <34.322433, 33.997238, 47.054493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957180, 34.155079, 47.095444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127586, -0.038113, -0.991095,
		-0.387188, -0.918060, 0.085148,
		-0.913130, 0.394604, 0.102375,
		33.683239, 34.273460, 47.126156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012093, 33.797138, 46.486332>,  <34.322433, 33.997238, 47.054493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012093, 33.797138, 46.486332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758640, 34.074345, 46.623878>,  <33.606567, 34.240669, 46.706406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758640, 34.074345, 46.623878>,  <34.012093, 33.797138, 46.486332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758640, 34.074345, 46.623878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243326, 0.243399, -0.938908,
		-0.734372, -0.678595, 0.014402,
		-0.633633, 0.693012, 0.343865,
		33.568550, 34.282249, 46.727039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476353, 33.613476, 46.234367>,  <34.012093, 33.797138, 46.486332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476353, 33.613476, 46.234367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412373, 34.004761, 46.287319>,  <33.373985, 34.239532, 46.319088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412373, 34.004761, 46.287319>,  <33.476353, 33.613476, 46.234367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412373, 34.004761, 46.287319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371575, 0.064576, -0.926154,
		-0.914521, -0.197324, 0.353150,
		-0.159947, 0.978209, 0.132377,
		33.364388, 34.298225, 46.327034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813835, 33.730049, 46.125996>,  <33.476353, 33.613476, 46.234367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813835, 33.730049, 46.125996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002029, 34.075962, 46.055805>,  <33.114944, 34.283512, 46.013691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002029, 34.075962, 46.055805>,  <32.813835, 33.730049, 46.125996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002029, 34.075962, 46.055805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470462, 0.077592, -0.879002,
		-0.746532, 0.496113, 0.443354,
		0.470485, 0.864784, -0.175478,
		33.143173, 34.335396, 46.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293365, 34.194355, 45.882187>,  <32.813835, 33.730049, 46.125996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293365, 34.194355, 45.882187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627708, 34.361855, 45.740208>,  <32.828316, 34.462353, 45.655018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627708, 34.361855, 45.740208>,  <32.293365, 34.194355, 45.882187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627708, 34.361855, 45.740208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460088, 0.181696, -0.869083,
		-0.299434, 0.889739, 0.344533,
		0.835858, 0.418748, -0.354953,
		32.878468, 34.487480, 45.633720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026245, 34.674812, 45.517654>,  <32.293365, 34.194355, 45.882187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026245, 34.674812, 45.517654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404488, 34.680313, 45.387650>,  <32.631435, 34.683613, 45.309647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404488, 34.680313, 45.387650>,  <32.026245, 34.674812, 45.517654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404488, 34.680313, 45.387650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313776, 0.302192, -0.900125,
		0.085834, 0.953148, 0.290072,
		0.945609, 0.013756, -0.325013,
		32.688171, 34.684441, 45.290146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263615, 35.451683, 45.173759>,  <32.026245, 34.674812, 45.517654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263615, 35.451683, 45.173759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460812, 35.139412, 45.020134>,  <32.579128, 34.952049, 44.927959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460812, 35.139412, 45.020134>,  <32.263615, 35.451683, 45.173759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460812, 35.139412, 45.020134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282474, 0.273901, -0.919340,
		0.822903, 0.561713, -0.085490,
		0.492990, -0.780677, -0.384064,
		32.608707, 34.905209, 44.904915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565716, 35.708168, 44.531544>,  <32.263615, 35.451683, 45.173759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565716, 35.708168, 44.531544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604008, 35.314682, 44.470684>,  <32.626984, 35.078590, 44.434170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604008, 35.314682, 44.470684>,  <32.565716, 35.708168, 44.531544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604008, 35.314682, 44.470684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310919, 0.115651, -0.943374,
		0.945603, 0.137616, -0.294783,
		0.095732, -0.983711, -0.152147,
		32.632729, 35.019569, 44.425041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896801, 35.677101, 43.855778>,  <32.565716, 35.708168, 44.531544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896801, 35.677101, 43.855778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752682, 35.312862, 43.936764>,  <32.666210, 35.094318, 43.985355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752682, 35.312862, 43.936764>,  <32.896801, 35.677101, 43.855778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752682, 35.312862, 43.936764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203793, -0.134966, -0.969666,
		0.910303, -0.390632, -0.136945,
		-0.360300, -0.910599, 0.202468,
		32.644592, 35.039684, 43.997505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275021, 35.266800, 43.402180>,  <32.896801, 35.677101, 43.855778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275021, 35.266800, 43.402180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949345, 35.067509, 43.521420>,  <32.753937, 34.947933, 43.592964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949345, 35.067509, 43.521420>,  <33.275021, 35.266800, 43.402180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949345, 35.067509, 43.521420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163821, -0.295432, -0.941213,
		0.557005, -0.815163, 0.158918,
		-0.814191, -0.498227, 0.298098,
		32.705086, 34.918041, 43.610847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284813, 34.589695, 43.108765>,  <33.275021, 35.266800, 43.402180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284813, 34.589695, 43.108765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895100, 34.652081, 43.173805>,  <32.661270, 34.689510, 43.212830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895100, 34.652081, 43.173805>,  <33.284813, 34.589695, 43.108765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895100, 34.652081, 43.173805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210437, -0.372043, -0.904047,
		-0.080499, -0.915020, 0.395296,
		-0.974287, 0.155959, 0.162605,
		32.602814, 34.698868, 43.222588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961411, 33.924969, 42.923061>,  <33.284813, 34.589695, 43.108765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961411, 33.924969, 42.923061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693546, 34.221638, 42.938446>,  <32.532825, 34.399639, 42.947678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693546, 34.221638, 42.938446>,  <32.961411, 33.924969, 42.923061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693546, 34.221638, 42.938446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383282, -0.300782, -0.873284,
		-0.636118, -0.599548, 0.485691,
		-0.669663, 0.741668, 0.038463,
		32.492649, 34.444138, 42.949986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394829, 33.555603, 42.609810>,  <32.961411, 33.924969, 42.923061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394829, 33.555603, 42.609810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386166, 33.954479, 42.581127>,  <32.380966, 34.193806, 42.563919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386166, 33.954479, 42.581127>,  <32.394829, 33.555603, 42.609810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386166, 33.954479, 42.581127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334521, -0.074817, -0.939414,
		-0.942139, 0.003643, 0.335202,
		-0.021657, 0.997191, -0.071707,
		32.379669, 34.253635, 42.559616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016048, 33.637657, 42.184967>,  <32.394829, 33.555603, 42.609810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016048, 33.637657, 42.184967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165760, 34.008556, 42.189377>,  <32.255589, 34.231094, 42.192024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165760, 34.008556, 42.189377>,  <32.016048, 33.637657, 42.184967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165760, 34.008556, 42.189377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395276, 0.170283, -0.902641,
		-0.838850, 0.333487, 0.430253,
		0.374284, 0.927249, 0.011023,
		32.278046, 34.286732, 42.192684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582180, 33.985470, 41.669109>,  <32.016048, 33.637657, 42.184967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582180, 33.985470, 41.669109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894693, 34.228798, 41.725025>,  <32.082203, 34.374794, 41.758575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894693, 34.228798, 41.725025>,  <31.582180, 33.985470, 41.669109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894693, 34.228798, 41.725025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134585, 0.382878, -0.913943,
		-0.609492, 0.695236, 0.381007,
		0.781285, 0.608319, 0.139793,
		32.129078, 34.411293, 41.766964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380999, 34.733711, 41.557079>,  <31.582180, 33.985470, 41.669109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380999, 34.733711, 41.557079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775200, 34.691582, 41.503880>,  <32.011723, 34.666306, 41.471962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775200, 34.691582, 41.503880>,  <31.380999, 34.733711, 41.557079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775200, 34.691582, 41.503880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089536, 0.342974, -0.935068,
		0.144098, 0.933422, 0.328573,
		0.985504, -0.105323, -0.132997,
		32.070850, 34.659985, 41.463982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598337, 35.354172, 41.104084>,  <31.380999, 34.733711, 41.557079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598337, 35.354172, 41.104084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936987, 35.141678, 41.091351>,  <32.140175, 35.014179, 41.083710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936987, 35.141678, 41.091351>,  <31.598337, 35.354172, 41.104084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936987, 35.141678, 41.091351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290233, 0.511015, -0.809091,
		0.446085, 0.675758, 0.586821,
		0.846624, -0.531239, -0.031829,
		32.190975, 34.982307, 41.081802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217411, 35.853188, 40.971287>,  <31.598337, 35.354172, 41.104084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217411, 35.853188, 40.971287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359554, 35.493465, 40.869335>,  <32.444839, 35.277630, 40.808163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359554, 35.493465, 40.869335>,  <32.217411, 35.853188, 40.971287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359554, 35.493465, 40.869335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345732, 0.379796, -0.858036,
		0.868442, 0.216789, 0.445883,
		0.355357, -0.899310, -0.254880,
		32.466160, 35.223671, 40.792870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903702, 35.896824, 40.791996>,  <32.217411, 35.853188, 40.971287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903702, 35.896824, 40.791996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787682, 35.564079, 40.602730>,  <32.718071, 35.364433, 40.489170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787682, 35.564079, 40.602730>,  <32.903702, 35.896824, 40.791996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787682, 35.564079, 40.602730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475247, 0.303948, -0.825685,
		0.830671, -0.464357, 0.307179,
		-0.290046, -0.831858, -0.473165,
		32.700668, 35.314522, 40.460781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476055, 35.435429, 40.475201>,  <32.903702, 35.896824, 40.791996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476055, 35.435429, 40.475201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155563, 35.373604, 40.243980>,  <32.963268, 35.336510, 40.105247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155563, 35.373604, 40.243980>,  <33.476055, 35.435429, 40.475201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155563, 35.373604, 40.243980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491902, 0.379907, -0.783392,
		0.340687, -0.912021, -0.228364,
		-0.801227, -0.154559, -0.578054,
		32.915195, 35.327236, 40.070564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708313, 35.092949, 39.897141>,  <33.476055, 35.435429, 40.475201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708313, 35.092949, 39.897141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378044, 35.304249, 39.817921>,  <33.179882, 35.431026, 39.770390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378044, 35.304249, 39.817921>,  <33.708313, 35.092949, 39.897141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378044, 35.304249, 39.817921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454751, 0.415448, -0.787785,
		-0.333866, -0.740513, -0.583244,
		-0.825672, 0.528246, -0.198045,
		33.130341, 35.462723, 39.758507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667629, 35.547005, 39.238743>,  <33.708313, 35.092949, 39.897141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667629, 35.547005, 39.238743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048134, 35.641342, 39.159271>,  <34.276436, 35.697945, 39.111588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048134, 35.641342, 39.159271>,  <33.667629, 35.547005, 39.238743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048134, 35.641342, 39.159271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304602, -0.618130, 0.724660,
		0.048103, -0.749860, -0.659845,
		0.951264, 0.235848, -0.198675,
		34.333511, 35.712097, 39.099670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041405, 34.837318, 39.163742>,  <33.667629, 35.547005, 39.238743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041405, 34.837318, 39.163742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328514, 35.108448, 39.227436>,  <34.500782, 35.271126, 39.265652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328514, 35.108448, 39.227436>,  <34.041405, 34.837318, 39.163742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328514, 35.108448, 39.227436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256824, -0.470312, 0.844304,
		0.647178, -0.565125, -0.511659,
		0.717776, 0.677821, 0.159238,
		34.543846, 35.311794, 39.275208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559753, 34.474339, 39.461464>,  <34.041405, 34.837318, 39.163742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559753, 34.474339, 39.461464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699505, 34.840416, 39.541824>,  <34.783356, 35.060062, 39.590038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699505, 34.840416, 39.541824>,  <34.559753, 34.474339, 39.461464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699505, 34.840416, 39.541824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329001, -0.320578, 0.888250,
		0.877324, -0.244236, -0.413101,
		0.349374, 0.915193, 0.200897,
		34.804317, 35.114975, 39.602093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275833, 34.460403, 39.651730>,  <34.559753, 34.474339, 39.461464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275833, 34.460403, 39.651730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137672, 34.784718, 39.840763>,  <35.054775, 34.979305, 39.954182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137672, 34.784718, 39.840763>,  <35.275833, 34.460403, 39.651730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137672, 34.784718, 39.840763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371912, -0.344080, 0.862143,
		0.861615, 0.473541, -0.182695,
		-0.345398, 0.810782, 0.472580,
		35.034054, 35.027954, 39.982536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817051, 34.599670, 40.135399>,  <35.275833, 34.460403, 39.651730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817051, 34.599670, 40.135399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473774, 34.766655, 40.254883>,  <35.267807, 34.866848, 40.326572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473774, 34.766655, 40.254883>,  <35.817051, 34.599670, 40.135399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473774, 34.766655, 40.254883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256385, -0.155551, 0.953976,
		0.444716, 0.895281, 0.026461,
		-0.858192, 0.417464, 0.298713,
		35.216316, 34.891895, 40.344498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147556, 34.850754, 40.804893>,  <35.817051, 34.599670, 40.135399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147556, 34.850754, 40.804893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749191, 34.871807, 40.834244>,  <35.510170, 34.884438, 40.851856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749191, 34.871807, 40.834244>,  <36.147556, 34.850754, 40.804893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749191, 34.871807, 40.834244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059512, -0.228621, 0.971695,
		0.067917, 0.972092, 0.224555,
		-0.995914, 0.052631, 0.073378,
		35.450417, 34.887596, 40.856258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080139, 35.167717, 41.327621>,  <36.147556, 34.850754, 40.804893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080139, 35.167717, 41.327621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724358, 34.987225, 41.298603>,  <35.510887, 34.878929, 41.281193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724358, 34.987225, 41.298603>,  <36.080139, 35.167717, 41.327621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724358, 34.987225, 41.298603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077913, -0.006698, 0.996938,
		-0.450337, 0.892381, -0.029200,
		-0.889453, -0.451233, -0.072544,
		35.457523, 34.851856, 41.276840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613098, 35.491009, 41.818985>,  <36.080139, 35.167717, 41.327621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613098, 35.491009, 41.818985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454742, 35.128651, 41.758823>,  <35.359730, 34.911236, 41.722729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454742, 35.128651, 41.758823>,  <35.613098, 35.491009, 41.818985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454742, 35.128651, 41.758823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068285, -0.134286, 0.988587,
		-0.915757, 0.401638, -0.008698,
		-0.395886, -0.905900, -0.150400,
		35.335976, 34.856880, 41.713703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076141, 35.476181, 42.340595>,  <35.613098, 35.491009, 41.818985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076141, 35.476181, 42.340595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128948, 35.091465, 42.244659>,  <35.160633, 34.860634, 42.187096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128948, 35.091465, 42.244659>,  <35.076141, 35.476181, 42.340595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128948, 35.091465, 42.244659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234653, -0.265408, 0.935145,
		-0.963073, -0.067178, -0.260727,
		0.132020, -0.961793, -0.239843,
		35.168556, 34.802929, 42.172707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618736, 35.162823, 42.725842>,  <35.076141, 35.476181, 42.340595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618736, 35.162823, 42.725842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869064, 34.866833, 42.627228>,  <35.019260, 34.689240, 42.568058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869064, 34.866833, 42.627228>,  <34.618736, 35.162823, 42.725842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869064, 34.866833, 42.627228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081566, -0.376440, 0.922843,
		-0.775689, -0.557427, -0.295942,
		0.625822, -0.739979, -0.246533,
		35.056812, 34.644840, 42.553268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399662, 34.616367, 43.114708>,  <34.618736, 35.162823, 42.725842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399662, 34.616367, 43.114708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775669, 34.522877, 43.015324>,  <35.001274, 34.466782, 42.955692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775669, 34.522877, 43.015324>,  <34.399662, 34.616367, 43.114708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775669, 34.522877, 43.015324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199069, -0.215607, 0.955973,
		-0.277013, -0.948094, -0.156146,
		0.940019, -0.233733, -0.248462,
		35.057674, 34.452759, 42.940784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541584, 33.843639, 43.453457>,  <34.399662, 34.616367, 43.114708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541584, 33.843639, 43.453457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867008, 34.064095, 43.379295>,  <35.062263, 34.196365, 43.334797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867008, 34.064095, 43.379295>,  <34.541584, 33.843639, 43.453457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867008, 34.064095, 43.379295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294304, -0.115279, 0.948734,
		0.501507, -0.826414, -0.255988,
		0.813557, 0.551135, -0.185404,
		35.111076, 34.229435, 43.323673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035221, 33.372192, 43.685688>,  <34.541584, 33.843639, 43.453457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035221, 33.372192, 43.685688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208019, 33.732937, 43.687977>,  <35.311699, 33.949383, 43.689350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208019, 33.732937, 43.687977>,  <35.035221, 33.372192, 43.685688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208019, 33.732937, 43.687977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199509, -0.101752, 0.974599,
		0.879533, -0.419877, -0.223885,
		0.431993, 0.901859, 0.005725,
		35.337616, 34.003494, 43.689693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564751, 33.240761, 44.064384>,  <35.035221, 33.372192, 43.685688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564751, 33.240761, 44.064384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556679, 33.640663, 44.060986>,  <35.551838, 33.880604, 44.058945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556679, 33.640663, 44.060986>,  <35.564751, 33.240761, 44.064384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556679, 33.640663, 44.060986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291742, 0.014019, 0.956394,
		0.956284, 0.016816, -0.291955,
		-0.020175, 0.999760, -0.008500,
		35.550625, 33.940590, 44.058437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138481, 33.412792, 44.437832>,  <35.564751, 33.240761, 44.064384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138481, 33.412792, 44.437832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933830, 33.752136, 44.492260>,  <35.811039, 33.955742, 44.524918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933830, 33.752136, 44.492260>,  <36.138481, 33.412792, 44.437832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933830, 33.752136, 44.492260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345221, 0.057957, 0.936730,
		0.786801, 0.526234, -0.322526,
		-0.511631, 0.848362, 0.136067,
		35.780342, 34.006645, 44.533081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561050, 33.959904, 44.783993>,  <36.138481, 33.412792, 44.437832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561050, 33.959904, 44.783993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177071, 34.054153, 44.844627>,  <35.946682, 34.110703, 44.881008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177071, 34.054153, 44.844627>,  <36.561050, 33.959904, 44.783993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177071, 34.054153, 44.844627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209733, 0.245619, 0.946405,
		0.185765, 0.940294, -0.285200,
		-0.959950, 0.235625, 0.151583,
		35.889084, 34.124840, 44.890102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617077, 34.610443, 45.068363>,  <36.561050, 33.959904, 44.783993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617077, 34.610443, 45.068363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261818, 34.452976, 45.163204>,  <36.048660, 34.358498, 45.220108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261818, 34.452976, 45.163204>,  <36.617077, 34.610443, 45.068363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261818, 34.452976, 45.163204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222485, 0.083104, 0.971388,
		-0.402103, 0.915491, 0.013775,
		-0.888152, -0.393663, 0.237099,
		35.995373, 34.334877, 45.234333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391903, 34.972668, 45.658722>,  <36.617077, 34.610443, 45.068363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391903, 34.972668, 45.658722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186062, 34.629986, 45.644596>,  <36.062557, 34.424377, 45.636120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186062, 34.629986, 45.644596>,  <36.391903, 34.972668, 45.658722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186062, 34.629986, 45.644596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106505, 0.023002, 0.994046,
		-0.850789, 0.515298, -0.103080,
		-0.514601, -0.856702, -0.035312,
		36.031681, 34.372974, 45.634003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784035, 35.071327, 46.097244>,  <36.391903, 34.972668, 45.658722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784035, 35.071327, 46.097244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857864, 34.678349, 46.086391>,  <35.902161, 34.442562, 46.079880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857864, 34.678349, 46.086391>,  <35.784035, 35.071327, 46.097244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857864, 34.678349, 46.086391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014744, -0.024833, 0.999583,
		-0.982708, -0.184898, 0.009902,
		0.184575, -0.982444, -0.027130,
		35.913239, 34.383614, 46.078251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381016, 34.747158, 46.586170>,  <35.784035, 35.071327, 46.097244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381016, 34.747158, 46.586170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637135, 34.444839, 46.531338>,  <35.790806, 34.263447, 46.498440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637135, 34.444839, 46.531338>,  <35.381016, 34.747158, 46.586170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637135, 34.444839, 46.531338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115555, -0.271210, 0.955559,
		-0.759388, -0.595999, -0.260991,
		0.640295, -0.755798, -0.137082,
		35.829224, 34.218102, 46.490211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117294, 34.335007, 47.066296>,  <35.381016, 34.747158, 46.586170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117294, 34.335007, 47.066296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484451, 34.195972, 46.989704>,  <35.704746, 34.112553, 46.943748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484451, 34.195972, 46.989704>,  <35.117294, 34.335007, 47.066296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484451, 34.195972, 46.989704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219774, 0.043483, 0.974581,
		-0.330421, -0.936641, 0.116302,
		0.917890, -0.347582, -0.191481,
		35.759819, 34.091698, 46.932259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117134, 33.719913, 47.436272>,  <35.117294, 34.335007, 47.066296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117134, 33.719913, 47.436272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488895, 33.851387, 47.369129>,  <35.711952, 33.930271, 47.328842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488895, 33.851387, 47.369129>,  <35.117134, 33.719913, 47.436272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488895, 33.851387, 47.369129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183333, -0.016432, 0.982914,
		0.320309, -0.944298, -0.075531,
		0.929404, 0.328683, -0.167857,
		35.767715, 33.949993, 47.318771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478348, 33.312611, 47.895927>,  <35.117134, 33.719913, 47.436272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478348, 33.312611, 47.895927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707142, 33.625290, 47.796497>,  <35.844418, 33.812897, 47.736839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707142, 33.625290, 47.796497>,  <35.478348, 33.312611, 47.895927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707142, 33.625290, 47.796497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291786, 0.089320, 0.952304,
		0.766614, -0.617231, -0.176999,
		0.571983, 0.781696, -0.248573,
		35.878738, 33.859798, 47.721924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152748, 33.264755, 48.244099>,  <35.478348, 33.312611, 47.895927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152748, 33.264755, 48.244099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153404, 33.657410, 48.167789>,  <36.153797, 33.893002, 48.122005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153404, 33.657410, 48.167789>,  <36.152748, 33.264755, 48.244099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153404, 33.657410, 48.167789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246936, 0.184468, 0.951312,
		0.969030, -0.048666, -0.242099,
		0.001637, 0.981633, -0.190772,
		36.153896, 33.951900, 48.110558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784374, 33.636982, 48.545097>,  <36.152748, 33.264755, 48.244099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784374, 33.636982, 48.545097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520260, 33.932747, 48.492508>,  <36.361790, 34.110207, 48.460953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520260, 33.932747, 48.492508>,  <36.784374, 33.636982, 48.545097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520260, 33.932747, 48.492508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324881, 0.439059, 0.837663,
		0.677108, 0.510383, -0.530127,
		-0.660286, 0.739417, -0.131476,
		36.322174, 34.154572, 48.453064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172764, 34.192959, 48.872215>,  <36.784374, 33.636982, 48.545097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172764, 34.192959, 48.872215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789822, 34.303616, 48.838898>,  <36.560055, 34.370010, 48.818905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789822, 34.303616, 48.838898>,  <37.172764, 34.192959, 48.872215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789822, 34.303616, 48.838898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129743, 0.669280, 0.731595,
		0.258139, 0.689589, -0.676632,
		-0.957356, 0.276641, -0.083298,
		36.502613, 34.386608, 48.813908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153839, 34.905277, 48.986446>,  <37.172764, 34.192959, 48.872215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153839, 34.905277, 48.986446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784683, 34.768879, 49.058006>,  <36.563190, 34.687038, 49.100941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784683, 34.768879, 49.058006>,  <37.153839, 34.905277, 48.986446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784683, 34.768879, 49.058006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019049, 0.504434, 0.863240,
		-0.384603, 0.793264, -0.472030,
		-0.922885, -0.340997, 0.178896,
		36.507816, 34.666580, 49.111675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792774, 35.487274, 49.363289>,  <37.153839, 34.905277, 48.986446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792774, 35.487274, 49.363289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570663, 35.163937, 49.441509>,  <36.437397, 34.969933, 49.488441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570663, 35.163937, 49.441509>,  <36.792774, 35.487274, 49.363289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570663, 35.163937, 49.441509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017980, 0.223411, 0.974558,
		-0.831469, 0.544669, -0.109522,
		-0.555281, -0.808346, 0.195552,
		36.404079, 34.921432, 49.500175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235016, 35.672699, 49.773636>,  <36.792774, 35.487274, 49.363289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235016, 35.672699, 49.773636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290794, 35.286343, 49.860916>,  <36.324261, 35.054527, 49.913284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290794, 35.286343, 49.860916>,  <36.235016, 35.672699, 49.773636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290794, 35.286343, 49.860916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008898, 0.221564, 0.975105,
		-0.990189, -0.134036, 0.039491,
		0.139450, -0.965890, 0.218198,
		36.332630, 34.996574, 49.926376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790840, 35.553345, 50.334454>,  <36.235016, 35.672699, 49.773636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790840, 35.553345, 50.334454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046967, 35.246147, 50.329166>,  <36.200642, 35.061829, 50.325993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046967, 35.246147, 50.329166>,  <35.790840, 35.553345, 50.334454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046967, 35.246147, 50.329166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149422, 0.107665, 0.982895,
		-0.753439, -0.631337, 0.183695,
		0.640315, -0.767999, -0.013216,
		36.239059, 35.015747, 50.325203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653973, 35.178074, 50.834332>,  <35.790840, 35.553345, 50.334454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653973, 35.178074, 50.834332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026379, 35.051052, 50.762360>,  <36.249821, 34.974838, 50.719177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026379, 35.051052, 50.762360>,  <35.653973, 35.178074, 50.834332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026379, 35.051052, 50.762360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165638, -0.071677, 0.983578,
		-0.325235, -0.945527, -0.014134,
		0.931014, -0.317553, -0.179928,
		36.305683, 34.955788, 50.708382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885853, 34.725876, 51.354374>,  <35.653973, 35.178074, 50.834332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885853, 34.725876, 51.354374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245152, 34.824188, 51.208637>,  <36.460732, 34.883175, 51.121193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245152, 34.824188, 51.208637>,  <35.885853, 34.725876, 51.354374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245152, 34.824188, 51.208637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366741, 0.037658, 0.929560,
		0.242185, -0.968595, -0.056310,
		0.898247, 0.245777, -0.364344,
		36.514626, 34.897923, 51.099335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362892, 34.344013, 51.770855>,  <35.885853, 34.725876, 51.354374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362892, 34.344013, 51.770855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545750, 34.658173, 51.603920>,  <36.655464, 34.846668, 51.503761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545750, 34.658173, 51.603920>,  <36.362892, 34.344013, 51.770855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545750, 34.658173, 51.603920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323696, 0.290128, 0.900581,
		0.828394, -0.546788, -0.121599,
		0.457148, 0.785397, -0.417333,
		36.682896, 34.893791, 51.478722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051769, 34.411282, 52.001587>,  <36.362892, 34.344013, 51.770855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051769, 34.411282, 52.001587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967030, 34.771049, 51.848663>,  <36.916187, 34.986912, 51.756908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967030, 34.771049, 51.848663>,  <37.051769, 34.411282, 52.001587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967030, 34.771049, 51.848663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352020, 0.435159, 0.828685,
		0.911704, 0.040971, -0.408801,
		-0.211845, 0.899421, -0.382313,
		36.903477, 35.040874, 51.733971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576660, 34.782116, 52.259235>,  <37.051769, 34.411282, 52.001587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576660, 34.782116, 52.259235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306908, 35.066727, 52.180305>,  <37.145058, 35.237495, 52.132946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306908, 35.066727, 52.180305>,  <37.576660, 34.782116, 52.259235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306908, 35.066727, 52.180305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194193, 0.428741, 0.882309,
		0.712391, 0.556692, -0.427309,
		-0.674379, 0.711530, -0.197326,
		37.104595, 35.280186, 52.121109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902931, 35.363392, 52.532112>,  <37.576660, 34.782116, 52.259235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902931, 35.363392, 52.532112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526722, 35.484604, 52.470680>,  <37.300995, 35.557331, 52.433823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526722, 35.484604, 52.470680>,  <37.902931, 35.363392, 52.532112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526722, 35.484604, 52.470680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052013, 0.575181, 0.816371,
		0.335721, 0.759829, -0.556733,
		-0.940524, 0.303030, -0.153580,
		37.244564, 35.575512, 52.424606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915310, 36.154251, 52.421623>,  <37.902931, 35.363392, 52.532112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915310, 36.154251, 52.421623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555973, 36.024803, 52.540451>,  <37.340370, 35.947136, 52.611748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555973, 36.024803, 52.540451>,  <37.915310, 36.154251, 52.421623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555973, 36.024803, 52.540451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098019, 0.511530, 0.853656,
		-0.428216, 0.795996, -0.427810,
		-0.898345, -0.323616, 0.297068,
		37.286469, 35.927719, 52.629570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696239, 36.955864, 52.307194>,  <37.915310, 36.154251, 52.421623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696239, 36.955864, 52.307194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587826, 37.304485, 52.470623>,  <37.522778, 37.513657, 52.568680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587826, 37.304485, 52.470623>,  <37.696239, 36.955864, 52.307194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587826, 37.304485, 52.470623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565016, 0.199596, -0.800574,
		-0.779293, -0.447836, 0.438344,
		-0.271034, 0.871553, 0.408578,
		37.506516, 37.565952, 52.593197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985786, 37.029121, 52.197140>,  <37.696239, 36.955864, 52.307194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985786, 37.029121, 52.197140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137115, 37.397259, 52.236820>,  <37.227913, 37.618141, 52.260628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137115, 37.397259, 52.236820>,  <36.985786, 37.029121, 52.197140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137115, 37.397259, 52.236820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522887, 0.300905, -0.797524,
		-0.763844, 0.249855, 0.595075,
		0.378327, 0.920342, 0.099198,
		37.250614, 37.673363, 52.266579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470577, 37.443092, 52.152233>,  <36.985786, 37.029121, 52.197140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470577, 37.443092, 52.152233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779190, 37.677074, 52.052185>,  <36.964359, 37.817463, 51.992157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779190, 37.677074, 52.052185>,  <36.470577, 37.443092, 52.152233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779190, 37.677074, 52.052185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476835, 0.271449, -0.836029,
		-0.421148, 0.764289, 0.488361,
		0.771533, 0.584960, -0.250120,
		37.010651, 37.852562, 51.977150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189484, 38.098450, 51.932957>,  <36.470577, 37.443092, 52.152233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189484, 38.098450, 51.932957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547478, 38.098404, 51.754517>,  <36.762272, 38.098377, 51.647453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547478, 38.098404, 51.754517>,  <36.189484, 38.098450, 51.932957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547478, 38.098404, 51.754517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401404, 0.436095, -0.805417,
		0.194637, 0.899901, 0.390250,
		0.894981, -0.000116, -0.446103,
		36.815971, 38.098370, 51.620686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314877, 38.807400, 51.661907>,  <36.189484, 38.098450, 51.932957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314877, 38.807400, 51.661907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588528, 38.589588, 51.467812>,  <36.752716, 38.458900, 51.351353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588528, 38.589588, 51.467812>,  <36.314877, 38.807400, 51.661907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588528, 38.589588, 51.467812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323375, 0.369879, -0.870987,
		0.653758, 0.752780, 0.076958,
		0.684126, -0.544529, -0.485242,
		36.793766, 38.426228, 51.322239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635651, 39.223206, 51.121498>,  <36.314877, 38.807400, 51.661907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635651, 39.223206, 51.121498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671181, 38.842079, 51.005402>,  <36.692497, 38.613403, 50.935741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671181, 38.842079, 51.005402>,  <36.635651, 39.223206, 51.121498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671181, 38.842079, 51.005402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416033, 0.229271, -0.879972,
		0.905001, 0.198917, -0.376040,
		0.088826, -0.952821, -0.290246,
		36.697830, 38.556232, 50.918327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876102, 39.326717, 50.370373>,  <36.635651, 39.223206, 51.121498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876102, 39.326717, 50.370373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794380, 38.936581, 50.403740>,  <36.745346, 38.702499, 50.423759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794380, 38.936581, 50.403740>,  <36.876102, 39.326717, 50.370373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794380, 38.936581, 50.403740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065843, -0.071327, -0.995277,
		0.976690, -0.208836, -0.049647,
		-0.204309, -0.975346, 0.083415,
		36.733086, 38.643978, 50.428764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242554, 38.916439, 49.875187>,  <36.876102, 39.326717, 50.370373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242554, 38.916439, 49.875187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947254, 38.659580, 49.957787>,  <36.770077, 38.505466, 50.007347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947254, 38.659580, 49.957787>,  <37.242554, 38.916439, 49.875187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947254, 38.659580, 49.957787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206222, -0.076615, -0.975501,
		0.642236, -0.762744, -0.075864,
		-0.738245, -0.642146, 0.206499,
		36.725780, 38.466938, 50.019737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348019, 38.309074, 49.384975>,  <37.242554, 38.916439, 49.875187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348019, 38.309074, 49.384975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968689, 38.287704, 49.510086>,  <36.741093, 38.274883, 49.585152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968689, 38.287704, 49.510086>,  <37.348019, 38.309074, 49.384975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968689, 38.287704, 49.510086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307471, -0.088747, -0.947410,
		0.078372, -0.994620, 0.067735,
		-0.948324, -0.053424, 0.312773,
		36.684193, 38.271679, 49.603916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209335, 37.689720, 49.170212>,  <37.348019, 38.309074, 49.384975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209335, 37.689720, 49.170212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855057, 37.866199, 49.228027>,  <36.642490, 37.972088, 49.262718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855057, 37.866199, 49.228027>,  <37.209335, 37.689720, 49.170212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855057, 37.866199, 49.228027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325593, -0.368339, -0.870813,
		-0.330954, -0.818338, 0.469885,
		-0.885697, 0.441190, 0.144542,
		36.589348, 37.998558, 49.271389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670345, 37.139477, 49.157703>,  <37.209335, 37.689720, 49.170212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670345, 37.139477, 49.157703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480095, 37.481339, 49.074425>,  <36.365944, 37.686455, 49.024456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480095, 37.481339, 49.074425>,  <36.670345, 37.139477, 49.157703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480095, 37.481339, 49.074425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270681, -0.367394, -0.889805,
		-0.836967, -0.366858, 0.406081,
		-0.475624, 0.854656, -0.208195,
		36.337406, 37.737736, 49.011967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011780, 36.973843, 48.919201>,  <36.670345, 37.139477, 49.157703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011780, 36.973843, 48.919201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065182, 37.339554, 48.766220>,  <36.097221, 37.558983, 48.674431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065182, 37.339554, 48.766220>,  <36.011780, 36.973843, 48.919201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065182, 37.339554, 48.766220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456160, -0.285908, -0.842719,
		-0.879827, 0.286963, 0.378889,
		0.133502, 0.914281, -0.382450,
		36.105232, 37.613838, 48.651485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410175, 37.087528, 48.654835>,  <36.011780, 36.973843, 48.919201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410175, 37.087528, 48.654835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685677, 37.307384, 48.465725>,  <35.850975, 37.439301, 48.352257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685677, 37.307384, 48.465725>,  <35.410175, 37.087528, 48.654835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685677, 37.307384, 48.465725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344187, -0.326044, -0.880472,
		-0.638091, 0.769148, -0.035383,
		0.688749, 0.549642, -0.472777,
		35.892300, 37.472279, 48.323891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969337, 37.459488, 48.213295>,  <35.410175, 37.087528, 48.654835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969337, 37.459488, 48.213295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331879, 37.455299, 48.044338>,  <35.549404, 37.452785, 47.942963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331879, 37.455299, 48.044338>,  <34.969337, 37.459488, 48.213295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331879, 37.455299, 48.044338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403341, -0.319242, -0.857555,
		-0.125867, 0.947615, -0.293569,
		0.906352, -0.010470, -0.422394,
		35.603783, 37.452160, 47.917622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023556, 37.908810, 47.580448>,  <34.969337, 37.459488, 48.213295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023556, 37.908810, 47.580448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345821, 37.675892, 47.536926>,  <35.539181, 37.536140, 47.510815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345821, 37.675892, 47.536926>,  <35.023556, 37.908810, 47.580448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345821, 37.675892, 47.536926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309464, -0.257115, -0.915491,
		0.505108, 0.771251, -0.387347,
		0.805666, -0.582292, -0.108804,
		35.587521, 37.501205, 47.504284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198414, 38.161598, 46.869659>,  <35.023556, 37.908810, 47.580448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198414, 38.161598, 46.869659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435493, 37.842796, 46.916107>,  <35.577744, 37.651516, 46.943977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435493, 37.842796, 46.916107>,  <35.198414, 38.161598, 46.869659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435493, 37.842796, 46.916107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049283, -0.179795, -0.982469,
		0.803912, 0.576589, -0.145844,
		0.592703, -0.797006, 0.116123,
		35.613304, 37.603695, 46.950943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699451, 38.170334, 46.306259>,  <35.198414, 38.161598, 46.869659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699451, 38.170334, 46.306259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666054, 37.789711, 46.424625>,  <35.646015, 37.561337, 46.495644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666054, 37.789711, 46.424625>,  <35.699451, 38.170334, 46.306259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666054, 37.789711, 46.424625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109930, -0.303933, -0.946330,
		0.990426, -0.046486, 0.129982,
		-0.083497, -0.951559, 0.295912,
		35.641006, 37.504242, 46.513401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286392, 37.793549, 46.217529>,  <35.699451, 38.170334, 46.306259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286392, 37.793549, 46.217529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992268, 37.522564, 46.225109>,  <35.815792, 37.359974, 46.229656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992268, 37.522564, 46.225109>,  <36.286392, 37.793549, 46.217529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992268, 37.522564, 46.225109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176203, -0.218102, -0.959887,
		0.654420, -0.702480, 0.279744,
		-0.735315, -0.677461, 0.018951,
		35.771675, 37.319324, 46.230793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624985, 37.181110, 45.905884>,  <36.286392, 37.793549, 46.217529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624985, 37.181110, 45.905884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230648, 37.121239, 45.875652>,  <35.994045, 37.085316, 45.857513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230648, 37.121239, 45.875652>,  <36.624985, 37.181110, 45.905884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230648, 37.121239, 45.875652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116456, -0.286874, -0.950863,
		0.120640, -0.946203, 0.300243,
		-0.985842, -0.149678, -0.075583,
		35.934895, 37.076336, 45.852978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599834, 36.444962, 45.685261>,  <36.624985, 37.181110, 45.905884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599834, 36.444962, 45.685261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240742, 36.608757, 45.620274>,  <36.025284, 36.707035, 45.581280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240742, 36.608757, 45.620274>,  <36.599834, 36.444962, 45.685261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240742, 36.608757, 45.620274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037540, -0.296355, -0.954340,
		-0.438938, -0.862841, 0.250676,
		-0.897733, 0.409486, -0.162473,
		35.971420, 36.731602, 45.571533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142696, 35.935215, 45.450489>,  <36.599834, 36.444962, 45.685261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142696, 35.935215, 45.450489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983932, 36.278172, 45.319439>,  <35.888676, 36.483948, 45.240810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983932, 36.278172, 45.319439>,  <36.142696, 35.935215, 45.450489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983932, 36.278172, 45.319439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063410, -0.381705, -0.922107,
		-0.915664, -0.345219, 0.205870,
		-0.396911, 0.857394, -0.327623,
		35.864861, 36.535389, 45.221153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603340, 35.678982, 44.976135>,  <36.142696, 35.935215, 45.450489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603340, 35.678982, 44.976135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720062, 36.054962, 44.905315>,  <35.790096, 36.280548, 44.862823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720062, 36.054962, 44.905315>,  <35.603340, 35.678982, 44.976135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720062, 36.054962, 44.905315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068035, -0.164235, -0.984072,
		-0.954054, 0.299206, 0.016024,
		0.291808, 0.939948, -0.177046,
		35.807606, 36.336948, 44.852203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305397, 36.044079, 44.261112>,  <35.603340, 35.678982, 44.976135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305397, 36.044079, 44.261112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616459, 36.292065, 44.302860>,  <35.803097, 36.440857, 44.327908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616459, 36.292065, 44.302860>,  <35.305397, 36.044079, 44.261112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616459, 36.292065, 44.302860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302401, -0.223319, -0.926651,
		-0.551187, 0.752176, -0.361144,
		0.777655, 0.619968, 0.104368,
		35.849754, 36.478054, 44.334171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431725, 36.369560, 43.548172>,  <35.305397, 36.044079, 44.261112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431725, 36.369560, 43.548172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764492, 36.449909, 43.755077>,  <35.964153, 36.498119, 43.879219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764492, 36.449909, 43.755077>,  <35.431725, 36.369560, 43.548172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764492, 36.449909, 43.755077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547769, -0.148370, -0.823368,
		-0.088645, 0.968317, -0.233462,
		0.831920, 0.200871, 0.517262,
		36.014069, 36.510170, 43.910255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667706, 36.790173, 43.047661>,  <35.431725, 36.369560, 43.548172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667706, 36.790173, 43.047661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974705, 36.714718, 43.292728>,  <36.158905, 36.669445, 43.439770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974705, 36.714718, 43.292728>,  <35.667706, 36.790173, 43.047661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974705, 36.714718, 43.292728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577644, -0.210946, -0.788561,
		0.277989, 0.959124, -0.052938,
		0.767496, -0.188632, 0.612673,
		36.204952, 36.658127, 43.476532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229008, 36.893402, 42.598736>,  <35.667706, 36.790173, 43.047661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229008, 36.893402, 42.598736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388893, 36.704494, 42.912979>,  <36.484825, 36.591148, 43.101524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388893, 36.704494, 42.912979>,  <36.229008, 36.893402, 42.598736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388893, 36.704494, 42.912979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710643, -0.381681, -0.591021,
		0.578976, 0.794531, 0.183052,
		0.399717, -0.472272, 0.785612,
		36.508808, 36.562813, 43.148663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928871, 37.232880, 42.716972>,  <36.229008, 36.893402, 42.598736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928871, 37.232880, 42.716972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886646, 36.859760, 42.854813>,  <36.861313, 36.635891, 42.937519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886646, 36.859760, 42.854813>,  <36.928871, 37.232880, 42.716972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886646, 36.859760, 42.854813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833285, -0.272089, -0.481253,
		0.542673, 0.236354, 0.806005,
		-0.105559, -0.932794, 0.344605,
		36.854980, 36.579922, 42.958195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634171, 36.951077, 42.894367>,  <36.928871, 37.232880, 42.716972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634171, 36.951077, 42.894367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395756, 36.632683, 42.852146>,  <37.252705, 36.441647, 42.826813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395756, 36.632683, 42.852146>,  <37.634171, 36.951077, 42.894367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395756, 36.632683, 42.852146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684074, -0.434558, -0.585834,
		0.420449, -0.421385, 0.803528,
		-0.596041, -0.795986, -0.105550,
		37.216942, 36.393887, 42.820480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127094, 36.402985, 42.933365>,  <37.634171, 36.951077, 42.894367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127094, 36.402985, 42.933365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789604, 36.263477, 42.770157>,  <37.587109, 36.179771, 42.672230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789604, 36.263477, 42.770157>,  <38.127094, 36.402985, 42.933365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789604, 36.263477, 42.770157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535657, -0.596035, -0.598175,
		-0.034569, -0.723257, 0.689713,
		-0.843728, -0.348772, -0.408022,
		37.536488, 36.158844, 42.647751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167416, 35.702618, 42.892292>,  <38.127094, 36.402985, 42.933365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167416, 35.702618, 42.892292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888260, 35.800919, 42.623203>,  <37.720764, 35.859898, 42.461750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888260, 35.800919, 42.623203>,  <38.167416, 35.702618, 42.892292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888260, 35.800919, 42.623203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481821, -0.533854, -0.694873,
		-0.529885, -0.809083, 0.254180,
		-0.697904, 0.245734, -0.672714,
		37.678890, 35.874645, 42.421387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020542, 35.062748, 42.403133>,  <38.167416, 35.702618, 42.892292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020542, 35.062748, 42.403133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900360, 35.388145, 42.203953>,  <37.828251, 35.583385, 42.084446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900360, 35.388145, 42.203953>,  <38.020542, 35.062748, 42.403133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900360, 35.388145, 42.203953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452853, -0.337807, -0.825113,
		-0.839436, -0.473404, -0.266899,
		-0.300451, 0.813496, -0.497949,
		37.810226, 35.632195, 42.054569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731148, 34.764751, 41.713303>,  <38.020542, 35.062748, 42.403133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731148, 34.764751, 41.713303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858566, 35.143181, 41.689747>,  <37.935017, 35.370239, 41.675613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858566, 35.143181, 41.689747>,  <37.731148, 34.764751, 41.713303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858566, 35.143181, 41.689747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316016, -0.164567, -0.934372,
		-0.893678, 0.279033, -0.351398,
		0.318549, 0.946075, -0.058891,
		37.954132, 35.427002, 41.672081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554497, 35.044029, 40.972942>,  <37.731148, 34.764751, 41.713303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554497, 35.044029, 40.972942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813259, 35.325191, 41.091221>,  <37.968517, 35.493889, 41.162189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813259, 35.325191, 41.091221>,  <37.554497, 35.044029, 40.972942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813259, 35.325191, 41.091221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436526, -0.023395, -0.899387,
		-0.625263, 0.710902, -0.321969,
		0.646909, 0.702901, 0.295700,
		38.007332, 35.536060, 41.179932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627811, 35.540440, 40.427486>,  <37.554497, 35.044029, 40.972942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627811, 35.540440, 40.427486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966385, 35.579159, 40.636940>,  <38.169529, 35.602390, 40.762611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966385, 35.579159, 40.636940>,  <37.627811, 35.540440, 40.427486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966385, 35.579159, 40.636940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509529, 0.138485, -0.849236,
		-0.154715, 0.985623, 0.067899,
		0.846430, 0.096793, 0.523629,
		38.220314, 35.608196, 40.794029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937107, 36.138172, 40.216621>,  <37.627811, 35.540440, 40.427486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937107, 36.138172, 40.216621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247150, 35.939270, 40.372547>,  <38.433174, 35.819931, 40.466103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247150, 35.939270, 40.372547>,  <37.937107, 36.138172, 40.216621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247150, 35.939270, 40.372547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525124, 0.163889, -0.835096,
		0.351366, 0.851987, 0.388150,
		0.775104, -0.497251, 0.389814,
		38.479683, 35.790096, 40.489491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452198, 36.578957, 39.998470>,  <37.937107, 36.138172, 40.216621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452198, 36.578957, 39.998470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654911, 36.258160, 40.124950>,  <38.776539, 36.065681, 40.200840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654911, 36.258160, 40.124950>,  <38.452198, 36.578957, 39.998470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654911, 36.258160, 40.124950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739902, 0.216421, -0.636951,
		0.442396, 0.556753, 0.703073,
		0.506785, -0.801990, 0.316199,
		38.806946, 36.017563, 40.219810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196762, 36.858047, 40.054192>,  <38.452198, 36.578957, 39.998470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196762, 36.858047, 40.054192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190155, 36.458672, 40.032856>,  <39.186192, 36.219048, 40.020054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190155, 36.458672, 40.032856>,  <39.196762, 36.858047, 40.054192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190155, 36.458672, 40.032856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694104, 0.026950, -0.719370,
		0.719685, -0.048905, 0.692576,
		-0.016516, -0.998440, -0.053340,
		39.185200, 36.159142, 40.016853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895870, 36.691475, 40.041561>,  <39.196762, 36.858047, 40.054192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895870, 36.691475, 40.041561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697460, 36.370300, 39.909348>,  <39.578415, 36.177597, 39.830021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697460, 36.370300, 39.909348>,  <39.895870, 36.691475, 40.041561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697460, 36.370300, 39.909348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646189, -0.087074, -0.758194,
		0.580001, -0.589669, 0.562040,
		-0.496022, -0.802937, -0.330535,
		39.548653, 36.129417, 39.810188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424603, 36.306984, 39.733295>,  <39.895870, 36.691475, 40.041561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424603, 36.306984, 39.733295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077606, 36.169258, 39.589684>,  <39.869408, 36.086624, 39.503517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077606, 36.169258, 39.589684>,  <40.424603, 36.306984, 39.733295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077606, 36.169258, 39.589684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429858, -0.155628, -0.889383,
		0.250352, -0.925866, 0.283012,
		-0.867494, -0.344314, -0.359029,
		39.817356, 36.065964, 39.481976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604435, 35.709747, 39.375343>,  <40.424603, 36.306984, 39.733295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604435, 35.709747, 39.375343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248459, 35.806938, 39.220959>,  <40.034874, 35.865253, 39.128330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248459, 35.806938, 39.220959>,  <40.604435, 35.709747, 39.375343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248459, 35.806938, 39.220959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371500, -0.104692, -0.922511,
		-0.264558, -0.964365, 0.002903,
		-0.889942, 0.242979, -0.385959,
		39.981476, 35.879833, 39.105171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519424, 35.277374, 38.796417>,  <40.604435, 35.709747, 39.375343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519424, 35.277374, 38.796417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263893, 35.573631, 38.713142>,  <40.110573, 35.751385, 38.663177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263893, 35.573631, 38.713142>,  <40.519424, 35.277374, 38.796417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263893, 35.573631, 38.713142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362078, 0.050677, -0.930769,
		-0.678817, -0.669986, -0.300544,
		-0.638833, 0.740643, -0.208187,
		40.072243, 35.795822, 38.650688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872238, 34.598095, 38.731968>,  <40.519424, 35.277374, 38.796417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872238, 34.598095, 38.731968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486145, 34.495113, 38.713882>,  <40.254490, 34.433323, 38.703033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486145, 34.495113, 38.713882>,  <40.872238, 34.598095, 38.731968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486145, 34.495113, 38.713882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191273, -0.577765, -0.793475,
		0.178163, -0.774535, 0.606921,
		-0.965232, -0.257456, -0.045211,
		40.196575, 34.417877, 38.700317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820118, 33.891705, 38.544376>,  <40.872238, 34.598095, 38.731968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820118, 33.891705, 38.544376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467228, 34.058365, 38.456669>,  <40.255493, 34.158363, 38.404045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467228, 34.058365, 38.456669>,  <40.820118, 33.891705, 38.544376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467228, 34.058365, 38.456669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055254, -0.370864, -0.927042,
		-0.467575, -0.829975, 0.304164,
		-0.882225, 0.416655, -0.219266,
		40.202560, 34.183361, 38.390888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391773, 33.323555, 38.120998>,  <40.820118, 33.891705, 38.544376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391773, 33.323555, 38.120998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266708, 33.687145, 38.010715>,  <40.191669, 33.905300, 37.944546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266708, 33.687145, 38.010715>,  <40.391773, 33.323555, 38.120998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266708, 33.687145, 38.010715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038623, -0.277855, -0.959846,
		-0.949080, -0.310753, 0.051767,
		-0.312659, 0.908971, -0.275709,
		40.172909, 33.959835, 37.928001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935188, 33.142708, 37.579380>,  <40.391773, 33.323555, 38.120998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935188, 33.142708, 37.579380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089294, 33.510220, 37.544933>,  <40.181759, 33.730728, 37.524265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089294, 33.510220, 37.544933>,  <39.935188, 33.142708, 37.579380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089294, 33.510220, 37.544933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155974, -0.156816, -0.975234,
		-0.909530, 0.362289, -0.203721,
		0.385263, 0.918780, -0.086122,
		40.204872, 33.785854, 37.519096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547466, 32.997028, 37.193050>,  <39.935188, 33.142708, 37.579380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547466, 32.997028, 37.193050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301739, 32.954910, 36.880253>,  <40.154301, 32.929638, 36.692574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301739, 32.954910, 36.880253>,  <40.547466, 32.997028, 37.193050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301739, 32.954910, 36.880253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205435, 0.935533, -0.287357,
		0.761842, -0.337180, -0.553088,
		-0.614323, -0.105297, -0.781998,
		40.117443, 32.923321, 36.645653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930046, 33.689796, 37.197197>,  <40.547466, 32.997028, 37.193050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930046, 33.689796, 37.197197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048267, 34.009949, 36.988567>,  <41.119202, 34.202042, 36.863388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048267, 34.009949, 36.988567>,  <40.930046, 33.689796, 37.197197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048267, 34.009949, 36.988567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954288, -0.221894, 0.200244,
		0.044537, -0.556913, -0.829376,
		0.295552, 0.800381, -0.521573,
		41.136932, 34.250065, 36.832096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550526, 33.435959, 36.796265>,  <40.930046, 33.689796, 37.197197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550526, 33.435959, 36.796265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553024, 33.829258, 36.869129>,  <41.554523, 34.065239, 36.912849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553024, 33.829258, 36.869129>,  <41.550526, 33.435959, 36.796265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553024, 33.829258, 36.869129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996413, -0.021492, 0.081846,
		0.084391, 0.181000, -0.979856,
		0.006245, 0.983248, 0.182165,
		41.554897, 34.124233, 36.923779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211884, 33.733784, 37.060989>,  <41.550526, 33.435959, 36.796265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211884, 33.733784, 37.060989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390236, 34.014004, 37.283848>,  <42.497250, 34.182137, 37.417564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390236, 34.014004, 37.283848>,  <42.211884, 33.733784, 37.060989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390236, 34.014004, 37.283848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050326, -0.601842, 0.797028,
		0.893675, -0.383421, -0.233096,
		0.445884, 0.700553, 0.557147,
		42.524002, 34.224171, 37.450993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627819, 33.405514, 37.432133>,  <42.211884, 33.733784, 37.060989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627819, 33.405514, 37.432133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614971, 33.739159, 37.652397>,  <42.607262, 33.939346, 37.784554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614971, 33.739159, 37.652397>,  <42.627819, 33.405514, 37.432133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614971, 33.739159, 37.652397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180144, -0.537089, 0.824065,
		0.983116, 0.125667, -0.133008,
		-0.032120, 0.834112, 0.550659,
		42.605335, 33.989391, 37.817596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252472, 33.455540, 37.881496>,  <42.627819, 33.405514, 37.432133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252472, 33.455540, 37.881496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974293, 33.679932, 38.061115>,  <42.807384, 33.814568, 38.168888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974293, 33.679932, 38.061115>,  <43.252472, 33.455540, 37.881496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974293, 33.679932, 38.061115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216844, -0.431945, 0.875444,
		0.685075, 0.706201, 0.178750,
		-0.695450, 0.560984, 0.449051,
		42.765659, 33.848228, 38.195831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519779, 33.659935, 38.532127>,  <43.252472, 33.455540, 37.881496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519779, 33.659935, 38.532127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127388, 33.717648, 38.584072>,  <42.891953, 33.752274, 38.615238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127388, 33.717648, 38.584072>,  <43.519779, 33.659935, 38.532127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127388, 33.717648, 38.584072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042558, -0.492852, 0.869072,
		0.189389, 0.858068, 0.477337,
		-0.980979, 0.144278, 0.129858,
		42.833096, 33.760929, 38.623028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373730, 34.086063, 39.120667>,  <43.519779, 33.659935, 38.532127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373730, 34.086063, 39.120667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041981, 33.872063, 39.056267>,  <42.842934, 33.743664, 39.017628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041981, 33.872063, 39.056267>,  <43.373730, 34.086063, 39.120667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041981, 33.872063, 39.056267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046762, -0.353635, 0.934214,
		-0.556739, 0.767280, 0.318312,
		-0.829370, -0.534999, -0.161003,
		42.793171, 33.711563, 39.007965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079884, 34.030460, 39.803535>,  <43.373730, 34.086063, 39.120667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079884, 34.030460, 39.803535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865433, 33.756134, 39.606674>,  <42.736763, 33.591537, 39.488556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865433, 33.756134, 39.606674>,  <43.079884, 34.030460, 39.803535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865433, 33.756134, 39.606674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067226, -0.546487, 0.834765,
		-0.841455, 0.480628, 0.246882,
		-0.536129, -0.685820, -0.492155,
		42.704594, 33.550388, 39.459026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421089, 33.952942, 40.157688>,  <43.079884, 34.030460, 39.803535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421089, 33.952942, 40.157688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462536, 33.613064, 39.950890>,  <42.487404, 33.409138, 39.826809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462536, 33.613064, 39.950890>,  <42.421089, 33.952942, 40.157688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462536, 33.613064, 39.950890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344303, -0.518302, 0.782827,
		-0.933123, 0.096888, -0.346257,
		0.103619, -0.849692, -0.516998,
		42.493622, 33.358158, 39.795792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812988, 33.616291, 40.248024>,  <42.421089, 33.952942, 40.157688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812988, 33.616291, 40.248024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069305, 33.328392, 40.141178>,  <42.223095, 33.155655, 40.077072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069305, 33.328392, 40.141178>,  <41.812988, 33.616291, 40.248024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069305, 33.328392, 40.141178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315773, -0.564243, 0.762835,
		-0.699764, -0.404472, -0.588840,
		0.640794, -0.719744, -0.267115,
		42.261543, 33.112469, 40.061043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509552, 33.039085, 40.307224>,  <41.812988, 33.616291, 40.248024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509552, 33.039085, 40.307224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893307, 32.926250, 40.308578>,  <42.123558, 32.858551, 40.309391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893307, 32.926250, 40.308578>,  <41.509552, 33.039085, 40.307224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893307, 32.926250, 40.308578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216042, -0.726932, 0.651841,
		-0.181413, -0.626097, -0.758349,
		0.959382, -0.282087, 0.003388,
		42.181122, 32.841625, 40.309593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461792, 32.362633, 40.279972>,  <41.509552, 33.039085, 40.307224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461792, 32.362633, 40.279972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827812, 32.420738, 40.430485>,  <42.047424, 32.455601, 40.520790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827812, 32.420738, 40.430485>,  <41.461792, 32.362633, 40.279972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827812, 32.420738, 40.430485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057485, -0.876401, 0.478138,
		0.399229, -0.459150, -0.793598,
		0.915047, 0.145267, 0.376279,
		42.102325, 32.464317, 40.543369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843174, 31.810001, 40.176006>,  <41.461792, 32.362633, 40.279972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843174, 31.810001, 40.176006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055786, 31.973742, 40.472630>,  <42.183353, 32.071987, 40.650604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055786, 31.973742, 40.472630>,  <41.843174, 31.810001, 40.176006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055786, 31.973742, 40.472630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036323, -0.885678, 0.462876,
		0.846258, -0.219099, -0.485637,
		0.531534, 0.409353, 0.741554,
		42.215248, 32.096546, 40.695095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375538, 31.283827, 40.455235>,  <41.843174, 31.810001, 40.176006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375538, 31.283827, 40.455235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348969, 31.545778, 40.756359>,  <42.333027, 31.702950, 40.937035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348969, 31.545778, 40.756359>,  <42.375538, 31.283827, 40.455235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348969, 31.545778, 40.756359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140045, -0.740890, 0.656864,
		0.987915, 0.149058, -0.042501,
		-0.066422, 0.654877, 0.752811,
		42.329041, 31.742241, 40.982201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007530, 31.187624, 40.748215>,  <42.375538, 31.283827, 40.455235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007530, 31.187624, 40.748215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744637, 31.350964, 41.001606>,  <42.586899, 31.448967, 41.153641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744637, 31.350964, 41.001606>,  <43.007530, 31.187624, 40.748215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744637, 31.350964, 41.001606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199345, -0.716388, 0.668617,
		0.726844, 0.565720, 0.389434,
		-0.657236, 0.408349, 0.633476,
		42.547466, 31.473469, 41.191650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353706, 31.226814, 41.358425>,  <43.007530, 31.187624, 40.748215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353706, 31.226814, 41.358425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967041, 31.251848, 41.457741>,  <42.735043, 31.266869, 41.517330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967041, 31.251848, 41.457741>,  <43.353706, 31.226814, 41.358425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967041, 31.251848, 41.457741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136281, -0.695164, 0.705815,
		0.216773, 0.716122, 0.663460,
		-0.966663, 0.062584, 0.248287,
		42.677044, 31.270624, 41.532227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445110, 31.134693, 42.041592>,  <43.353706, 31.226814, 41.358425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445110, 31.134693, 42.041592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067223, 31.034824, 41.956577>,  <42.840488, 30.974903, 41.905567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067223, 31.034824, 41.956577>,  <43.445110, 31.134693, 42.041592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067223, 31.034824, 41.956577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082704, -0.808700, 0.582378,
		-0.317280, 0.532606, 0.784643,
		-0.944719, -0.249670, -0.212535,
		42.783806, 30.959923, 41.892818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165943, 30.889744, 42.674877>,  <43.445110, 31.134693, 42.041592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165943, 30.889744, 42.674877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908916, 30.755564, 42.399315>,  <42.754700, 30.675056, 42.233978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908916, 30.755564, 42.399315>,  <43.165943, 30.889744, 42.674877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908916, 30.755564, 42.399315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222727, -0.778487, 0.586814,
		-0.733148, 0.530502, 0.425513,
		-0.642563, -0.335448, -0.688903,
		42.716148, 30.654930, 42.192642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528652, 30.746677, 43.028641>,  <43.165943, 30.889744, 42.674877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528652, 30.746677, 43.028641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531826, 30.538336, 42.687195>,  <42.533730, 30.413332, 42.482327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531826, 30.538336, 42.687195>,  <42.528652, 30.746677, 43.028641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531826, 30.538336, 42.687195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227997, -0.832094, 0.505604,
		-0.973629, 0.190610, -0.125354,
		0.007933, -0.520852, -0.853610,
		42.534206, 30.382080, 42.431110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998875, 30.248871, 43.135471>,  <42.528652, 30.746677, 43.028641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998875, 30.248871, 43.135471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223213, 30.101812, 42.838745>,  <42.357815, 30.013577, 42.660709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223213, 30.101812, 42.838745>,  <41.998875, 30.248871, 43.135471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223213, 30.101812, 42.838745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007502, -0.898216, 0.439491,
		-0.827885, -0.240922, -0.506521,
		0.560848, -0.367648, -0.741812,
		42.391468, 29.991518, 42.616203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848366, 29.504799, 43.152313>,  <41.998875, 30.248871, 43.135471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848366, 29.504799, 43.152313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172031, 29.505478, 42.917282>,  <42.366230, 29.505886, 42.776264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172031, 29.505478, 42.917282>,  <41.848366, 29.504799, 43.152313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172031, 29.505478, 42.917282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065035, -0.994110, 0.086689,
		-0.583973, -0.108359, -0.804508,
		0.809163, 0.001697, -0.587581,
		42.414780, 29.505987, 42.741009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761101, 28.822617, 42.967579>,  <41.848366, 29.504799, 43.152313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761101, 28.822617, 42.967579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136169, 28.941090, 42.894859>,  <42.361210, 29.012175, 42.851227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136169, 28.941090, 42.894859>,  <41.761101, 28.822617, 42.967579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136169, 28.941090, 42.894859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332307, -0.917257, 0.219573,
		-0.101722, -0.266299, -0.958508,
		0.937670, 0.296184, -0.181798,
		42.417469, 29.029945, 42.840321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067699, 28.382746, 42.574844>,  <41.761101, 28.822617, 42.967579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067699, 28.382746, 42.574844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388130, 28.544966, 42.750942>,  <42.580387, 28.642298, 42.856602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388130, 28.544966, 42.750942>,  <42.067699, 28.382746, 42.574844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388130, 28.544966, 42.750942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408604, -0.907970, 0.092913,
		0.437408, 0.105454, -0.893058,
		0.801072, 0.405548, 0.440243,
		42.628452, 28.666630, 42.883015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677967, 28.362019, 42.110447>,  <42.067699, 28.382746, 42.574844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677967, 28.362019, 42.110447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741432, 28.347649, 42.505119>,  <42.779510, 28.339027, 42.741920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741432, 28.347649, 42.505119>,  <42.677967, 28.362019, 42.110447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741432, 28.347649, 42.505119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487530, -0.866158, -0.109934,
		0.858568, 0.498478, -0.119916,
		0.158666, -0.035923, 0.986679,
		42.789032, 28.336872, 42.801125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472393, 28.269518, 42.241898>,  <42.677967, 28.362019, 42.110447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472393, 28.269518, 42.241898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267136, 28.140343, 42.559990>,  <43.143982, 28.062838, 42.750847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267136, 28.140343, 42.559990>,  <43.472393, 28.269518, 42.241898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267136, 28.140343, 42.559990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578176, -0.814820, 0.042187,
		0.634348, 0.481433, 0.604834,
		-0.513142, -0.322940, 0.795233,
		43.113194, 28.043461, 42.798561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823799, 28.233774, 42.856953>,  <43.472393, 28.269518, 42.241898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823799, 28.233774, 42.856953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552258, 27.940315, 42.844826>,  <43.389332, 27.764240, 42.837551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552258, 27.940315, 42.844826>,  <43.823799, 28.233774, 42.856953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552258, 27.940315, 42.844826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723387, -0.675301, 0.143804,
		-0.125972, 0.075694, 0.989142,
		-0.678853, -0.733648, -0.030313,
		43.348602, 27.720221, 42.835732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420834, 28.005127, 42.542511>,  <43.823799, 28.233774, 42.856953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420834, 28.005127, 42.542511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773201, 27.987261, 42.730976>,  <44.984619, 27.976542, 42.844055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773201, 27.987261, 42.730976>,  <44.420834, 28.005127, 42.542511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773201, 27.987261, 42.730976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167126, 0.960758, -0.221390,
		-0.442785, 0.273769, 0.853810,
		0.880914, -0.044666, 0.471163,
		45.037476, 27.973862, 42.872326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525291, 28.533577, 43.166294>,  <44.420834, 28.005127, 42.542511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525291, 28.533577, 43.166294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873764, 28.445599, 42.990719>,  <45.082848, 28.392811, 42.885376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873764, 28.445599, 42.990719>,  <44.525291, 28.533577, 43.166294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873764, 28.445599, 42.990719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255161, 0.966647, 0.022058,
		0.419442, -0.131215, 0.898249,
		0.871184, -0.219946, -0.438933,
		45.135120, 28.379616, 42.859039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175652, 28.805403, 43.583138>,  <44.525291, 28.533577, 43.166294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175652, 28.805403, 43.583138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299519, 28.804356, 43.202801>,  <45.373840, 28.803728, 42.974598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299519, 28.804356, 43.202801>,  <45.175652, 28.805403, 43.583138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299519, 28.804356, 43.202801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283933, 0.954626, 0.089845,
		0.907462, -0.297797, 0.296361,
		0.309669, -0.002616, -0.950841,
		45.392418, 28.803572, 42.917549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946903, 28.814686, 43.471409>,  <45.175652, 28.805403, 43.583138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946903, 28.814686, 43.471409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716385, 28.993429, 43.197708>,  <45.578075, 29.100676, 43.033489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716385, 28.993429, 43.197708>,  <45.946903, 28.814686, 43.471409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716385, 28.993429, 43.197708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437579, 0.875862, 0.203447,
		0.690222, -0.182168, -0.700292,
		-0.576297, 0.446856, -0.684252,
		45.543495, 29.127485, 42.992432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358326, 29.311520, 43.076675>,  <45.946903, 28.814686, 43.471409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358326, 29.311520, 43.076675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973259, 29.411671, 43.035519>,  <45.742218, 29.471762, 43.010822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973259, 29.411671, 43.035519>,  <46.358326, 29.311520, 43.076675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973259, 29.411671, 43.035519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217560, 0.941806, 0.256261,
		0.161067, 0.224308, -0.961115,
		-0.962666, 0.250376, -0.102894,
		45.684460, 29.486784, 43.004650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305378, 29.961292, 42.670277>,  <46.358326, 29.311520, 43.076675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305378, 29.961292, 42.670277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976227, 29.928747, 42.895222>,  <45.778736, 29.909220, 43.030190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976227, 29.928747, 42.895222>,  <46.305378, 29.961292, 42.670277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976227, 29.928747, 42.895222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122207, 0.941195, 0.314987,
		-0.554925, 0.327920, -0.764543,
		-0.822875, -0.081362, 0.562367,
		45.729362, 29.904339, 43.063931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206329, 30.682158, 43.052219>,  <46.305378, 29.961292, 42.670277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206329, 30.682158, 43.052219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842777, 30.848930, 43.056488>,  <45.624645, 30.948994, 43.059048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842777, 30.848930, 43.056488>,  <46.206329, 30.682158, 43.052219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.842777, 30.848930, 43.056488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165307, 0.383611, -0.908579,
		-0.382908, -0.824022, -0.417577,
		-0.908876, 0.416930, 0.010671,
		45.570114, 30.974009, 43.059689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908245, 30.629169, 42.336182>,  <46.206329, 30.682158, 43.052219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908245, 30.629169, 42.336182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761330, 30.942196, 42.537254>,  <45.673180, 31.130013, 42.657898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761330, 30.942196, 42.537254>,  <45.908245, 30.629169, 42.336182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761330, 30.942196, 42.537254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174662, 0.588874, -0.789126,
		-0.913562, -0.202033, -0.352969,
		-0.367284, 0.782566, 0.502686,
		45.651146, 31.176966, 42.688061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643574, 31.044739, 41.905293>,  <45.908245, 30.629169, 42.336182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643574, 31.044739, 41.905293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648613, 31.310104, 42.204552>,  <45.651638, 31.469324, 42.384106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648613, 31.310104, 42.204552>,  <45.643574, 31.044739, 41.905293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648613, 31.310104, 42.204552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263379, 0.719583, -0.642519,
		-0.964610, 0.205142, -0.165663,
		0.012599, 0.663413, 0.748147,
		45.652393, 31.509129, 42.428997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230045, 31.597481, 41.683441>,  <45.643574, 31.044739, 41.905293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230045, 31.597481, 41.683441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500130, 31.729437, 41.947338>,  <45.662182, 31.808611, 42.105675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500130, 31.729437, 41.947338>,  <45.230045, 31.597481, 41.683441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500130, 31.729437, 41.947338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259251, 0.731217, -0.630960,
		-0.690561, 0.597072, 0.408205,
		0.675215, 0.329888, 0.659741,
		45.702694, 31.828403, 42.145260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144054, 32.305962, 41.704983>,  <45.230045, 31.597481, 41.683441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144054, 32.305962, 41.704983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506245, 32.227512, 41.855534>,  <45.723557, 32.180443, 41.945862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506245, 32.227512, 41.855534>,  <45.144054, 32.305962, 41.704983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506245, 32.227512, 41.855534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411158, 0.625202, -0.663378,
		-0.105208, 0.755420, 0.646740,
		0.905472, -0.196120, 0.376373,
		45.777885, 32.168678, 41.968445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346840, 32.918365, 41.768543>,  <45.144054, 32.305962, 41.704983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346840, 32.918365, 41.768543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693783, 32.722313, 41.803089>,  <45.901947, 32.604683, 41.823818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693783, 32.722313, 41.803089>,  <45.346840, 32.918365, 41.768543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693783, 32.722313, 41.803089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423532, 0.635794, -0.645281,
		0.261361, 0.596269, 0.759048,
		0.867359, -0.490132, 0.086367,
		45.953991, 32.575272, 41.828999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773647, 33.461052, 41.645027>,  <45.346840, 32.918365, 41.768543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773647, 33.461052, 41.645027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983631, 33.124096, 41.596367>,  <46.109623, 32.921925, 41.567169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983631, 33.124096, 41.596367>,  <45.773647, 33.461052, 41.645027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983631, 33.124096, 41.596367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543012, 0.441546, -0.714265,
		0.655403, 0.308903, 0.689221,
		0.524961, -0.842387, -0.121653,
		46.141121, 32.871380, 41.559872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441021, 33.633423, 41.708481>,  <45.773647, 33.461052, 41.645027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441021, 33.633423, 41.708481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417713, 33.308681, 41.476101>,  <46.403728, 33.113838, 41.336674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417713, 33.308681, 41.476101>,  <46.441021, 33.633423, 41.708481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417713, 33.308681, 41.476101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383536, 0.519069, -0.763850,
		0.921686, -0.267324, 0.281128,
		-0.058271, -0.811853, -0.580947,
		46.400230, 33.065125, 41.301815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044498, 33.648254, 41.216404>,  <46.441021, 33.633423, 41.708481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044498, 33.648254, 41.216404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781780, 33.396873, 41.049709>,  <46.624149, 33.246044, 40.949692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781780, 33.396873, 41.049709>,  <47.044498, 33.648254, 41.216404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781780, 33.396873, 41.049709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241650, 0.348089, -0.905781,
		0.714297, -0.695620, -0.076759,
		-0.656799, -0.628448, -0.416736,
		46.584740, 33.208340, 40.924690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.380398, 33.456211, 40.640129>,  <47.044498, 33.648254, 41.216404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.380398, 33.456211, 40.640129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.992569, 33.389297, 40.568638>,  <46.759872, 33.349148, 40.525745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.992569, 33.389297, 40.568638>,  <47.380398, 33.456211, 40.640129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.992569, 33.389297, 40.568638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099713, 0.396896, -0.912431,
		0.223572, -0.902490, -0.368139,
		-0.969574, -0.167285, -0.178725,
		46.701698, 33.339111, 40.515018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.352394, 33.144447, 40.030811>,  <47.380398, 33.456211, 40.640129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.352394, 33.144447, 40.030811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998833, 33.323395, 40.085342>,  <46.786697, 33.430763, 40.118061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998833, 33.323395, 40.085342>,  <47.352394, 33.144447, 40.030811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998833, 33.323395, 40.085342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011655, 0.312478, -0.949853,
		-0.467533, -0.837985, -0.281413,
		-0.883899, 0.447368, 0.136327,
		46.733662, 33.457603, 40.126240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021519, 33.024742, 39.325905>,  <47.352394, 33.144447, 40.030811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021519, 33.024742, 39.325905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.813499, 33.315651, 39.505070>,  <46.688686, 33.490196, 39.612568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.813499, 33.315651, 39.505070>,  <47.021519, 33.024742, 39.325905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.813499, 33.315651, 39.505070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228300, 0.386965, -0.893385,
		-0.823060, -0.566863, -0.035205,
		-0.520050, 0.727272, 0.447910,
		46.657486, 33.533833, 39.639442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517841, 33.115898, 38.820038>,  <47.021519, 33.024742, 39.325905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517841, 33.115898, 38.820038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462002, 33.431232, 39.059719>,  <46.428497, 33.620434, 39.203529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462002, 33.431232, 39.059719>,  <46.517841, 33.115898, 38.820038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462002, 33.431232, 39.059719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403306, 0.507396, -0.761508,
		-0.904354, -0.347967, 0.247107,
		-0.139599, 0.788333, 0.599203,
		46.420124, 33.667732, 39.239479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774895, 33.284527, 38.782028>,  <46.517841, 33.115898, 38.820038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774895, 33.284527, 38.782028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972198, 33.613419, 38.895611>,  <46.090580, 33.810753, 38.963760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972198, 33.613419, 38.895611>,  <45.774895, 33.284527, 38.782028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972198, 33.613419, 38.895611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522676, 0.541074, -0.658824,
		-0.695349, 0.176552, 0.696649,
		0.493255, 0.822234, 0.283956,
		46.120174, 33.860088, 38.980797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295063, 33.734352, 38.738724>,  <45.774895, 33.284527, 38.782028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295063, 33.734352, 38.738724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631561, 33.950554, 38.733818>,  <45.833462, 34.080276, 38.730877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631561, 33.950554, 38.733818>,  <45.295063, 33.734352, 38.738724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631561, 33.950554, 38.733818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434366, 0.662198, -0.610590,
		-0.321910, 0.518984, 0.791852,
		0.841250, 0.540508, -0.012261,
		45.883938, 34.112705, 38.730141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187809, 34.426262, 38.886356>,  <45.295063, 33.734352, 38.738724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187809, 34.426262, 38.886356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535759, 34.439602, 38.689499>,  <45.744530, 34.447605, 38.571384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535759, 34.439602, 38.689499>,  <45.187809, 34.426262, 38.886356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535759, 34.439602, 38.689499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405898, 0.615340, -0.675725,
		0.280300, 0.787556, 0.548805,
		0.869873, 0.033354, -0.492147,
		45.796722, 34.449608, 38.541855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339390, 35.108482, 38.662235>,  <45.187809, 34.426262, 38.886356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339390, 35.108482, 38.662235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572075, 34.892879, 38.418571>,  <45.711685, 34.763515, 38.272373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572075, 34.892879, 38.418571>,  <45.339390, 35.108482, 38.662235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572075, 34.892879, 38.418571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293283, 0.559545, -0.775174,
		0.758679, 0.629586, 0.167412,
		0.581713, -0.539010, -0.609162,
		45.746590, 34.731178, 38.235825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472809, 35.578037, 38.141052>,  <45.339390, 35.108482, 38.662235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472809, 35.578037, 38.141052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585243, 35.235970, 37.966846>,  <45.652706, 35.030727, 37.862324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585243, 35.235970, 37.966846>,  <45.472809, 35.578037, 38.141052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585243, 35.235970, 37.966846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361998, 0.325810, -0.873387,
		0.888789, 0.403156, -0.217988,
		0.281089, -0.855168, -0.435518,
		45.669571, 34.979420, 37.836189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970139, 35.684937, 37.559387>,  <45.472809, 35.578037, 38.141052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970139, 35.684937, 37.559387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788647, 35.341839, 37.462711>,  <45.679752, 35.135983, 37.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788647, 35.341839, 37.462711>,  <45.970139, 35.684937, 37.559387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788647, 35.341839, 37.462711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285634, 0.396886, -0.872293,
		0.844124, -0.326748, -0.425077,
		-0.453727, -0.857740, -0.241691,
		45.652527, 35.084518, 37.390205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118248, 35.589691, 36.806332>,  <45.970139, 35.684937, 37.559387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118248, 35.589691, 36.806332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818222, 35.336224, 36.882092>,  <45.638206, 35.184143, 36.927547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818222, 35.336224, 36.882092>,  <46.118248, 35.589691, 36.806332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818222, 35.336224, 36.882092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408240, 0.218286, -0.886392,
		0.520335, -0.742169, -0.422417,
		-0.750061, -0.633668, 0.189401,
		45.593204, 35.146122, 36.938911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988377, 35.268764, 36.205471>,  <46.118248, 35.589691, 36.806332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988377, 35.268764, 36.205471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633640, 35.195793, 36.375290>,  <45.420799, 35.152012, 36.477180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633640, 35.195793, 36.375290>,  <45.988377, 35.268764, 36.205471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633640, 35.195793, 36.375290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446830, 0.104476, -0.888498,
		0.117760, -0.977647, -0.174181,
		-0.886835, -0.182459, 0.424539,
		45.367588, 35.141068, 36.502655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097588, 35.726936, 35.772865>,  <45.988377, 35.268764, 36.205471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097588, 35.726936, 35.772865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836475, 36.027851, 35.808506>,  <45.679806, 36.208401, 35.829891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836475, 36.027851, 35.808506>,  <46.097588, 35.726936, 35.772865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836475, 36.027851, 35.808506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701361, 0.644623, -0.304227,
		-0.286300, -0.136105, -0.948424,
		-0.652783, 0.752287, 0.089097,
		45.640640, 36.253536, 35.835236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652126, 35.720657, 36.299957>,  <46.097588, 35.726936, 35.772865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652126, 35.720657, 36.299957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919743, 35.876621, 36.046864>,  <47.080311, 35.970200, 35.895008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919743, 35.876621, 36.046864>,  <46.652126, 35.720657, 36.299957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919743, 35.876621, 36.046864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486422, -0.873397, -0.023889,
		-0.561946, -0.291795, -0.773998,
		0.669037, 0.389914, -0.632737,
		47.120453, 35.993595, 35.857044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734806, 35.240353, 35.654205>,  <46.652126, 35.720657, 36.299957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734806, 35.240353, 35.654205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071907, 35.426178, 35.762974>,  <47.274170, 35.537674, 35.828236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071907, 35.426178, 35.762974>,  <46.734806, 35.240353, 35.654205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071907, 35.426178, 35.762974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461394, -0.883614, 0.079635,
		0.277267, 0.058349, -0.959020,
		0.842756, 0.464566, 0.271918,
		47.324734, 35.565548, 35.844551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253151, 35.078041, 35.201771>,  <46.734806, 35.240353, 35.654205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253151, 35.078041, 35.201771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349461, 35.149155, 35.583435>,  <47.407246, 35.191822, 35.812435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349461, 35.149155, 35.583435>,  <47.253151, 35.078041, 35.201771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.349461, 35.149155, 35.583435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403898, -0.912269, 0.068053,
		0.882549, 0.368997, -0.291459,
		0.240778, 0.177779, 0.954159,
		47.421696, 35.202488, 35.869682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723221, 35.052067, 34.630375>,  <47.253151, 35.078041, 35.201771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723221, 35.052067, 34.630375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.906586, 34.908607, 34.955639>,  <48.016605, 34.822533, 35.150799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.906586, 34.908607, 34.955639>,  <47.723221, 35.052067, 34.630375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.906586, 34.908607, 34.955639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728526, -0.372407, -0.574946,
		0.509029, 0.855972, 0.090567,
		0.458409, -0.358644, 0.813164,
		48.044109, 34.801014, 35.199589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.571720, 40.498642, 46.591854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181587, 40.567120, 46.647606>,  <34.947510, 40.608208, 46.681057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181587, 40.567120, 46.647606>,  <35.571720, 40.498642, 46.591854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181587, 40.567120, 46.647606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202041, -0.437774, -0.876090,
		-0.088964, -0.882636, 0.461561,
		-0.975328, 0.171194, 0.139383,
		34.888988, 40.618477, 46.689419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223694, 39.887882, 46.557533>,  <35.571720, 40.498642, 46.591854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223694, 39.887882, 46.557533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940422, 40.159397, 46.479828>,  <34.770458, 40.322304, 46.433205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940422, 40.159397, 46.479828>,  <35.223694, 39.887882, 46.557533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940422, 40.159397, 46.479828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125343, -0.391648, -0.911538,
		-0.694821, -0.621179, 0.362437,
		-0.708176, 0.678784, -0.194264,
		34.727970, 40.363033, 46.421547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633633, 39.491417, 46.265564>,  <35.223694, 39.887882, 46.557533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633633, 39.491417, 46.265564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555920, 39.870506, 46.164318>,  <34.509293, 40.097961, 46.103573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555920, 39.870506, 46.164318>,  <34.633633, 39.491417, 46.265564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555920, 39.870506, 46.164318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131561, -0.280872, -0.950685,
		-0.972084, -0.151400, 0.179252,
		-0.194281, 0.947728, -0.253113,
		34.497635, 40.154823, 46.088383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982204, 39.508175, 46.006847>,  <34.633633, 39.491417, 46.265564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982204, 39.508175, 46.006847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.150326, 39.834717, 45.848400>,  <34.251198, 40.030643, 45.753334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.150326, 39.834717, 45.848400>,  <33.982204, 39.508175, 46.006847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150326, 39.834717, 45.848400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317063, -0.276895, -0.907083,
		-0.850185, 0.506845, 0.142456,
		0.420306, 0.816356, -0.396114,
		34.276417, 40.079624, 45.729565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528709, 39.707199, 45.575985>,  <33.982204, 39.508175, 46.006847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528709, 39.707199, 45.575985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.846001, 39.913254, 45.446102>,  <34.036373, 40.036884, 45.368172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.846001, 39.913254, 45.446102>,  <33.528709, 39.707199, 45.575985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846001, 39.913254, 45.446102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161405, -0.336298, -0.927821,
		-0.587149, 0.788379, -0.183615,
		0.793224, 0.515133, -0.324705,
		34.083969, 40.067795, 45.348690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287868, 39.988972, 44.945320>,  <33.528709, 39.707199, 45.575985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287868, 39.988972, 44.945320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686432, 40.020786, 44.933678>,  <33.925571, 40.039875, 44.926693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686432, 40.020786, 44.933678>,  <33.287868, 39.988972, 44.945320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686432, 40.020786, 44.933678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029047, -0.001900, -0.999576,
		-0.079558, 0.996830, 0.000417,
		0.996407, 0.079536, -0.029106,
		33.985355, 40.044647, 44.924946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380707, 40.512249, 44.440094>,  <33.287868, 39.988972, 44.945320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380707, 40.512249, 44.440094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.707077, 40.287464, 44.494450>,  <33.902901, 40.152596, 44.527065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.707077, 40.287464, 44.494450>,  <33.380707, 40.512249, 44.440094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707077, 40.287464, 44.494450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109770, -0.080193, -0.990717,
		0.567639, 0.823269, -0.003745,
		0.815927, -0.561958, 0.135891,
		33.951855, 40.118877, 44.535217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750294, 40.701225, 43.885830>,  <33.380707, 40.512249, 44.440094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750294, 40.701225, 43.885830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930458, 40.367043, 44.011776>,  <34.038559, 40.166534, 44.087345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930458, 40.367043, 44.011776>,  <33.750294, 40.701225, 43.885830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930458, 40.367043, 44.011776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172274, -0.264713, -0.948814,
		0.876042, 0.481603, 0.024697,
		0.450414, -0.835455, 0.314868,
		34.065582, 40.116405, 44.106236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411404, 40.643970, 43.492565>,  <33.750294, 40.701225, 43.885830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411404, 40.643970, 43.492565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303699, 40.275883, 43.606194>,  <34.239079, 40.055031, 43.674370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303699, 40.275883, 43.606194>,  <34.411404, 40.643970, 43.492565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303699, 40.275883, 43.606194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083352, -0.316125, -0.945049,
		0.959455, -0.230782, 0.161820,
		-0.269256, -0.920220, 0.284072,
		34.222923, 39.999817, 43.691414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979027, 40.149063, 43.312252>,  <34.411404, 40.643970, 43.492565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979027, 40.149063, 43.312252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.668434, 39.899002, 43.343872>,  <34.482079, 39.748966, 43.362846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.668434, 39.899002, 43.343872>,  <34.979027, 40.149063, 43.312252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668434, 39.899002, 43.343872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286676, -0.462187, -0.839166,
		0.561149, -0.628937, 0.538099,
		-0.776485, -0.625157, 0.079055,
		34.435490, 39.711456, 43.367588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237659, 39.416203, 43.406563>,  <34.979027, 40.149063, 43.312252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237659, 39.416203, 43.406563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868126, 39.381336, 43.257469>,  <34.646404, 39.360416, 43.168015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868126, 39.381336, 43.257469>,  <35.237659, 39.416203, 43.406563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868126, 39.381336, 43.257469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350265, -0.585270, -0.731282,
		-0.154407, -0.806139, 0.571225,
		-0.923836, -0.087165, -0.372732,
		34.590977, 39.355186, 43.145649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262436, 38.798370, 43.185909>,  <35.237659, 39.416203, 43.406563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262436, 38.798370, 43.185909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.967155, 38.989071, 42.995007>,  <34.789989, 39.103493, 42.880466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.967155, 38.989071, 42.995007>,  <35.262436, 38.798370, 43.185909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967155, 38.989071, 42.995007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392696, -0.271548, -0.878665,
		-0.548502, -0.836045, 0.013238,
		-0.738198, 0.476751, -0.477256,
		34.745697, 39.132095, 42.851830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094963, 38.373722, 42.686756>,  <35.262436, 38.798370, 43.185909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094963, 38.373722, 42.686756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932720, 38.718891, 42.566200>,  <34.835373, 38.925995, 42.493866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932720, 38.718891, 42.566200>,  <35.094963, 38.373722, 42.686756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932720, 38.718891, 42.566200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224927, -0.225367, -0.947954,
		-0.885940, -0.452290, -0.102685,
		-0.405609, 0.862927, -0.301394,
		34.811039, 38.977768, 42.475780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595417, 38.223347, 42.106411>,  <35.094963, 38.373722, 42.686756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595417, 38.223347, 42.106411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.695961, 38.608192, 42.064178>,  <34.756287, 38.839100, 42.038837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.695961, 38.608192, 42.064178>,  <34.595417, 38.223347, 42.106411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695961, 38.608192, 42.064178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217926, -0.162539, -0.962336,
		-0.943041, 0.218884, -0.250526,
		0.251360, 0.962118, -0.105580,
		34.771370, 38.896828, 42.032505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215229, 38.343258, 41.574066>,  <34.595417, 38.223347, 42.106411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215229, 38.343258, 41.574066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490047, 38.633820, 41.581078>,  <34.654938, 38.808159, 41.585285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490047, 38.633820, 41.581078>,  <34.215229, 38.343258, 41.574066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490047, 38.633820, 41.581078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113832, -0.083782, -0.989961,
		-0.717646, 0.682140, -0.140250,
		0.687042, 0.726406, 0.017524,
		34.696159, 38.851742, 41.586334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938992, 38.861378, 41.028728>,  <34.215229, 38.343258, 41.574066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938992, 38.861378, 41.028728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.334278, 38.872097, 41.089016>,  <34.571449, 38.878529, 41.125187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.334278, 38.872097, 41.089016>,  <33.938992, 38.861378, 41.028728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334278, 38.872097, 41.089016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153079, -0.174736, -0.972643,
		0.000273, 0.984250, -0.176779,
		0.988214, 0.026796, 0.150716,
		34.630741, 38.880135, 41.134232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182392, 39.180382, 40.453846>,  <33.938992, 38.861378, 41.028728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182392, 39.180382, 40.453846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511341, 39.008926, 40.603500>,  <34.708710, 38.906055, 40.693295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511341, 39.008926, 40.603500>,  <34.182392, 39.180382, 40.453846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511341, 39.008926, 40.603500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350885, -0.135546, -0.926556,
		0.447867, 0.893252, 0.038933,
		0.822371, -0.428635, 0.374135,
		34.758053, 38.880337, 40.715740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621380, 39.361576, 39.974644>,  <34.182392, 39.180382, 40.453846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621380, 39.361576, 39.974644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.798500, 39.054348, 40.159679>,  <34.904774, 38.870010, 40.270699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.798500, 39.054348, 40.159679>,  <34.621380, 39.361576, 39.974644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798500, 39.054348, 40.159679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287747, -0.366900, -0.884639,
		0.849191, 0.524830, 0.058546,
		0.442804, -0.768074, 0.462587,
		34.931343, 38.823925, 40.298454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351830, 39.394268, 39.800251>,  <34.621380, 39.361576, 39.974644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351830, 39.394268, 39.800251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286495, 39.018452, 39.920647>,  <35.247295, 38.792961, 39.992882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286495, 39.018452, 39.920647>,  <35.351830, 39.394268, 39.800251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286495, 39.018452, 39.920647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367596, -0.341072, -0.865184,
		0.915530, -0.030672, 0.401079,
		-0.163333, -0.939537, 0.300987,
		35.237495, 38.736591, 40.010944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887123, 38.988670, 39.546822>,  <35.351830, 39.394268, 39.800251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887123, 38.988670, 39.546822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604763, 38.717655, 39.629436>,  <35.435349, 38.555046, 39.679005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604763, 38.717655, 39.629436>,  <35.887123, 38.988670, 39.546822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604763, 38.717655, 39.629436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221084, -0.487776, -0.844510,
		0.672929, -0.550474, 0.494111,
		-0.705896, -0.677535, 0.206537,
		35.392994, 38.514393, 39.691399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213787, 38.372425, 39.344410>,  <35.887123, 38.988670, 39.546822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213787, 38.372425, 39.344410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818794, 38.309349, 39.346142>,  <35.581799, 38.271503, 39.347179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818794, 38.309349, 39.346142>,  <36.213787, 38.372425, 39.344410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818794, 38.309349, 39.346142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077179, -0.506888, -0.858550,
		0.137576, -0.847467, 0.512711,
		-0.987480, -0.157687, 0.004329,
		35.522549, 38.262043, 39.347439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077370, 37.585541, 39.216576>,  <36.213787, 38.372425, 39.344410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077370, 37.585541, 39.216576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753914, 37.790260, 39.100536>,  <35.559841, 37.913094, 39.030914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753914, 37.790260, 39.100536>,  <36.077370, 37.585541, 39.216576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753914, 37.790260, 39.100536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085064, -0.386208, -0.918481,
		-0.582119, -0.767399, 0.268768,
		-0.808642, 0.511803, -0.290097,
		35.511322, 37.943802, 39.013508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724918, 37.363499, 38.865692>,  <36.077370, 37.585541, 39.216576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724918, 37.363499, 38.865692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.118992, 37.427975, 38.842255>,  <37.355434, 37.466660, 38.828194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.118992, 37.427975, 38.842255>,  <36.724918, 37.363499, 38.865692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118992, 37.427975, 38.842255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009332, 0.391482, 0.920138,
		0.171257, -0.905957, 0.387186,
		0.985182, 0.161193, -0.058590,
		37.414547, 37.476334, 38.824677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946564, 37.119278, 39.427238>,  <36.724918, 37.363499, 38.865692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946564, 37.119278, 39.427238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258873, 37.347061, 39.324379>,  <37.446259, 37.483730, 39.262665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258873, 37.347061, 39.324379>,  <36.946564, 37.119278, 39.427238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258873, 37.347061, 39.324379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010254, 0.399816, 0.916538,
		0.624737, -0.718240, 0.306324,
		0.780768, 0.569454, -0.257144,
		37.493103, 37.517899, 39.247234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413891, 36.998474, 40.002354>,  <36.946564, 37.119278, 39.427238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413891, 36.998474, 40.002354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510021, 37.341850, 39.821106>,  <37.567699, 37.547878, 39.712357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510021, 37.341850, 39.821106>,  <37.413891, 36.998474, 40.002354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510021, 37.341850, 39.821106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130882, 0.433884, 0.891411,
		0.961829, -0.273532, -0.008082,
		0.240323, 0.858443, -0.453123,
		37.582119, 37.599384, 39.685169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053623, 37.131966, 40.243805>,  <37.413891, 36.998474, 40.002354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053623, 37.131966, 40.243805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892639, 37.469913, 40.102829>,  <37.796047, 37.672684, 40.018242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892639, 37.469913, 40.102829>,  <38.053623, 37.131966, 40.243805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892639, 37.469913, 40.102829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269113, 0.477178, 0.836588,
		0.874988, 0.241846, -0.419412,
		-0.402460, 0.844874, -0.352441,
		37.771900, 37.723377, 39.997097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514793, 37.678631, 40.370827>,  <38.053623, 37.131966, 40.243805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514793, 37.678631, 40.370827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181423, 37.895145, 40.326256>,  <37.981403, 38.025055, 40.299515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181423, 37.895145, 40.326256>,  <38.514793, 37.678631, 40.370827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181423, 37.895145, 40.326256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329480, 0.648553, 0.686164,
		0.443679, 0.535151, -0.718862,
		-0.833422, 0.541287, -0.111428,
		37.931396, 38.057533, 40.292828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703171, 38.410076, 40.470512>,  <38.514793, 37.678631, 40.370827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703171, 38.410076, 40.470512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304745, 38.407791, 40.505909>,  <38.065689, 38.406418, 40.527145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304745, 38.407791, 40.505909>,  <38.703171, 38.410076, 40.470512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304745, 38.407791, 40.505909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070875, 0.548404, 0.833205,
		-0.053292, 0.836194, -0.545838,
		-0.996061, -0.005717, 0.088491,
		38.005928, 38.406075, 40.532455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514843, 39.152260, 40.580765>,  <38.703171, 38.410076, 40.470512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514843, 39.152260, 40.580765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235443, 38.924057, 40.753567>,  <38.067802, 38.787136, 40.857246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235443, 38.924057, 40.753567>,  <38.514843, 39.152260, 40.580765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235443, 38.924057, 40.753567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070888, 0.655877, 0.751532,
		-0.712093, 0.494319, -0.498570,
		-0.698497, -0.570503, 0.432004,
		38.025894, 38.752907, 40.883167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072926, 39.711166, 40.857925>,  <38.514843, 39.152260, 40.580765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072926, 39.711166, 40.857925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972710, 39.374615, 41.049473>,  <37.912579, 39.172684, 41.164402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972710, 39.374615, 41.049473>,  <38.072926, 39.711166, 40.857925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972710, 39.374615, 41.049473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163972, 0.524374, 0.835551,
		-0.954119, 0.130818, -0.269339,
		-0.250539, -0.841379, 0.478865,
		37.897549, 39.122200, 41.193130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405499, 39.831970, 41.200474>,  <38.072926, 39.711166, 40.857925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405499, 39.831970, 41.200474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589664, 39.528549, 41.384918>,  <37.700165, 39.346497, 41.495586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589664, 39.528549, 41.384918>,  <37.405499, 39.831970, 41.200474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589664, 39.528549, 41.384918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066742, 0.488391, 0.870068,
		-0.885194, -0.431364, 0.174233,
		0.460411, -0.758550, 0.461111,
		37.727787, 39.300983, 41.523251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017517, 39.842007, 41.822990>,  <37.405499, 39.831970, 41.200474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017517, 39.842007, 41.822990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331490, 39.600109, 41.876911>,  <37.519871, 39.454971, 41.909264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.331490, 39.600109, 41.876911>,  <37.017517, 39.842007, 41.822990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331490, 39.600109, 41.876911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054147, 0.283687, 0.957387,
		-0.617217, -0.744180, 0.255419,
		0.784927, -0.604746, 0.134801,
		37.566967, 39.418686, 41.917351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794224, 39.358593, 42.328243>,  <37.017517, 39.842007, 41.822990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794224, 39.358593, 42.328243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194050, 39.352043, 42.338093>,  <37.433945, 39.348114, 42.344002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194050, 39.352043, 42.338093>,  <36.794224, 39.358593, 42.328243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194050, 39.352043, 42.338093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015669, 0.412929, 0.910629,
		-0.025077, -0.910616, 0.412492,
		0.999563, -0.016372, 0.024623,
		37.493919, 39.347130, 42.345478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039207, 38.999481, 42.941692>,  <36.794224, 39.358593, 42.328243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039207, 38.999481, 42.941692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343491, 39.244637, 42.856194>,  <37.526062, 39.391731, 42.804893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343491, 39.244637, 42.856194>,  <37.039207, 38.999481, 42.941692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343491, 39.244637, 42.856194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065995, 0.254562, 0.964802,
		0.645731, -0.748038, 0.153200,
		0.760707, 0.612892, -0.213745,
		37.571701, 39.428505, 42.792068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617008, 38.911800, 43.434628>,  <37.039207, 38.999481, 42.941692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617008, 38.911800, 43.434628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680504, 39.274086, 43.277409>,  <37.718601, 39.491455, 43.183079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680504, 39.274086, 43.277409>,  <37.617008, 38.911800, 43.434628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680504, 39.274086, 43.277409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043110, 0.391358, 0.919228,
		0.986378, -0.162866, 0.023080,
		0.158744, 0.905712, -0.393048,
		37.728127, 39.545799, 43.159492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254757, 39.207047, 43.781349>,  <37.617008, 38.911800, 43.434628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254757, 39.207047, 43.781349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063194, 39.525227, 43.632805>,  <37.948257, 39.716133, 43.543678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063194, 39.525227, 43.632805>,  <38.254757, 39.207047, 43.781349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063194, 39.525227, 43.632805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038588, 0.403544, 0.914146,
		0.877018, 0.452120, -0.162564,
		-0.478905, 0.795449, -0.371362,
		37.919521, 39.763863, 43.521397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640289, 39.818024, 43.954483>,  <38.254757, 39.207047, 43.781349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640289, 39.818024, 43.954483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.276424, 39.962303, 43.872105>,  <38.058105, 40.048870, 43.822678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.276424, 39.962303, 43.872105>,  <38.640289, 39.818024, 43.954483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276424, 39.962303, 43.872105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025777, 0.445861, 0.894731,
		0.414554, 0.819209, -0.396284,
		-0.909660, 0.360700, -0.205950,
		38.003525, 40.070515, 43.810318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588585, 40.252510, 44.503094>,  <38.640289, 39.818024, 43.954483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588585, 40.252510, 44.503094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232117, 40.266174, 44.322144>,  <38.018234, 40.274372, 44.213573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232117, 40.266174, 44.322144>,  <38.588585, 40.252510, 44.503094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232117, 40.266174, 44.322144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393930, 0.436294, 0.808991,
		0.225004, 0.899156, -0.375357,
		-0.891175, 0.034162, -0.452372,
		37.964764, 40.276424, 44.186432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229500, 40.953373, 44.709721>,  <38.588585, 40.252510, 44.503094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229500, 40.953373, 44.709721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956718, 40.676327, 44.615730>,  <37.793049, 40.510098, 44.559334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956718, 40.676327, 44.615730>,  <38.229500, 40.953373, 44.709721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956718, 40.676327, 44.615730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566408, 0.296865, 0.768800,
		-0.462727, 0.657383, -0.594753,
		-0.681957, -0.692618, -0.234979,
		37.752132, 40.468540, 44.545235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731419, 41.230938, 44.944820>,  <38.229500, 40.953373, 44.709721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731419, 41.230938, 44.944820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596203, 40.859711, 44.882301>,  <37.515076, 40.636974, 44.844791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596203, 40.859711, 44.882301>,  <37.731419, 41.230938, 44.944820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596203, 40.859711, 44.882301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527180, 0.049151, 0.848331,
		-0.779623, 0.369164, -0.505872,
		-0.338038, -0.928064, -0.156296,
		37.494793, 40.581291, 44.835411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.695061, 41.028801, 45.091412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920277, 40.701462, 45.137512>,  <37.055408, 40.505058, 45.165173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920277, 40.701462, 45.137512>,  <36.695061, 41.028801, 45.091412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920277, 40.701462, 45.137512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370309, -0.125157, 0.920438,
		-0.738819, -0.560924, -0.373512,
		0.563043, -0.818352, 0.115247,
		37.089191, 40.455956, 45.172085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270336, 40.603611, 45.436798>,  <36.695061, 41.028801, 45.091412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270336, 40.603611, 45.436798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632023, 40.451683, 45.514904>,  <36.849037, 40.360527, 45.561768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632023, 40.451683, 45.514904>,  <36.270336, 40.603611, 45.436798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632023, 40.451683, 45.514904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240574, -0.075233, 0.967711,
		-0.352863, -0.921997, -0.159401,
		0.904219, -0.379817, 0.195262,
		36.903290, 40.337738, 45.573483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202877, 40.013168, 45.933811>,  <36.270336, 40.603611, 45.436798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202877, 40.013168, 45.933811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573673, 40.157059, 45.976307>,  <36.796150, 40.243393, 46.001804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573673, 40.157059, 45.976307>,  <36.202877, 40.013168, 45.933811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573673, 40.157059, 45.976307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126510, 0.033203, 0.991409,
		0.353113, -0.932465, 0.076288,
		0.926988, 0.359730, 0.106242,
		36.851768, 40.264977, 46.008179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601109, 39.448868, 46.354401>,  <36.202877, 40.013168, 45.933811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601109, 39.448868, 46.354401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816696, 39.782291, 46.402905>,  <36.946049, 39.982346, 46.432007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816696, 39.782291, 46.402905>,  <36.601109, 39.448868, 46.354401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816696, 39.782291, 46.402905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082832, -0.090810, 0.992418,
		0.838246, -0.544922, 0.020101,
		0.538965, 0.833555, 0.121258,
		36.978386, 40.032356, 46.439281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970825, 39.277798, 46.903103>,  <36.601109, 39.448868, 46.354401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970825, 39.277798, 46.903103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017262, 39.673248, 46.864872>,  <37.045124, 39.910519, 46.841934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017262, 39.673248, 46.864872>,  <36.970825, 39.277798, 46.903103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017262, 39.673248, 46.864872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059760, 0.103007, 0.992884,
		0.991439, -0.109554, 0.071038,
		0.116092, 0.988629, -0.095578,
		37.052090, 39.969837, 46.836197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483711, 39.357811, 47.322189>,  <36.970825, 39.277798, 46.903103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483711, 39.357811, 47.322189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338436, 39.729473, 47.294571>,  <37.251270, 39.952469, 47.278000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338436, 39.729473, 47.294571>,  <37.483711, 39.357811, 47.322189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338436, 39.729473, 47.294571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023443, 0.064967, 0.997612,
		0.931420, 0.363941, -0.001813,
		-0.363190, 0.929153, -0.069043,
		37.229481, 40.008221, 47.273857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964035, 39.788494, 47.633850>,  <37.483711, 39.357811, 47.322189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964035, 39.788494, 47.633850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.632401, 40.011387, 47.652241>,  <37.433418, 40.145123, 47.663277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.632401, 40.011387, 47.652241>,  <37.964035, 39.788494, 47.633850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632401, 40.011387, 47.652241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125962, 0.106032, 0.986352,
		0.544747, 0.823562, -0.158099,
		-0.829086, 0.557227, 0.045977,
		37.383675, 40.178555, 47.666035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129051, 40.375134, 47.963734>,  <37.964035, 39.788494, 47.633850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129051, 40.375134, 47.963734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732590, 40.410061, 48.003727>,  <37.494713, 40.431019, 48.027721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732590, 40.410061, 48.003727>,  <38.129051, 40.375134, 47.963734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732590, 40.410061, 48.003727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106914, 0.078680, 0.991150,
		0.078680, 0.993068, -0.087319,
		-0.991150, 0.087319, 0.099982,
		37.435246, 40.436256, 48.033722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071178, 40.921806, 48.407429>,  <38.129051, 40.375134, 47.963734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071178, 40.921806, 48.407429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702522, 40.770157, 48.440529>,  <37.481331, 40.679169, 48.460388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702522, 40.770157, 48.440529>,  <38.071178, 40.921806, 48.407429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702522, 40.770157, 48.440529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005223, 0.201101, 0.979557,
		-0.388015, 0.903229, -0.183362,
		-0.921638, -0.379125, 0.082748,
		37.426029, 40.656418, 48.465355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734745, 41.443481, 48.652794>,  <38.071178, 40.921806, 48.407429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734745, 41.443481, 48.652794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550438, 41.104382, 48.757881>,  <37.439854, 40.900921, 48.820934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550438, 41.104382, 48.757881>,  <37.734745, 41.443481, 48.652794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550438, 41.104382, 48.757881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048959, 0.319840, 0.946206,
		-0.886170, 0.423117, -0.188877,
		-0.460766, -0.847747, 0.262717,
		37.412209, 40.850060, 48.836697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237949, 41.504864, 49.159962>,  <37.734745, 41.443481, 48.652794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237949, 41.504864, 49.159962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247845, 41.106987, 49.199924>,  <37.253784, 40.868263, 49.223900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247845, 41.106987, 49.199924>,  <37.237949, 41.504864, 49.159962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247845, 41.106987, 49.199924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028718, 0.099185, 0.994654,
		-0.999281, -0.027479, -0.026111,
		0.024743, -0.994690, 0.099903,
		37.255268, 40.808578, 49.229897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850021, 41.467190, 49.810989>,  <37.237949, 41.504864, 49.159962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850021, 41.467190, 49.810989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008007, 41.110844, 49.721226>,  <37.102798, 40.897038, 49.667366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008007, 41.110844, 49.721226>,  <36.850021, 41.467190, 49.810989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008007, 41.110844, 49.721226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103901, -0.199390, 0.974396,
		-0.912801, -0.408171, 0.013810,
		0.394966, -0.890865, -0.224413,
		37.126495, 40.843586, 49.653900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614956, 41.001793, 50.256660>,  <36.850021, 41.467190, 49.810989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614956, 41.001793, 50.256660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.968102, 40.851677, 50.143734>,  <37.179989, 40.761608, 50.075977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.968102, 40.851677, 50.143734>,  <36.614956, 41.001793, 50.256660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968102, 40.851677, 50.143734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231723, -0.174752, 0.956957,
		-0.408473, -0.910284, -0.067319,
		0.882867, -0.375292, -0.282315,
		37.232960, 40.739090, 50.059040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718922, 40.571213, 50.739567>,  <36.614956, 41.001793, 50.256660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718922, 40.571213, 50.739567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082272, 40.634350, 50.584675>,  <37.300282, 40.672234, 50.491741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082272, 40.634350, 50.584675>,  <36.718922, 40.571213, 50.739567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082272, 40.634350, 50.584675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376883, 0.092147, 0.921666,
		0.181161, -0.983155, 0.024215,
		0.908372, 0.157844, -0.387228,
		37.354782, 40.681702, 50.468506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083687, 40.239296, 51.154213>,  <36.718922, 40.571213, 50.739567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083687, 40.239296, 51.154213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.383106, 40.458775, 51.005287>,  <37.562756, 40.590462, 50.915932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.383106, 40.458775, 51.005287>,  <37.083687, 40.239296, 51.154213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383106, 40.458775, 51.005287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398531, 0.076477, 0.913961,
		0.529957, -0.832519, -0.161425,
		0.748544, 0.548693, -0.372314,
		37.607670, 40.623383, 50.893593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801483, 40.024265, 51.480602>,  <37.083687, 40.239296, 51.154213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801483, 40.024265, 51.480602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823830, 40.400917, 51.347805>,  <37.837238, 40.626907, 51.268127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823830, 40.400917, 51.347805>,  <37.801483, 40.024265, 51.480602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823830, 40.400917, 51.347805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258214, 0.307573, 0.915819,
		0.964471, -0.136892, -0.225957,
		0.055870, 0.941626, -0.331993,
		37.840591, 40.683403, 51.248207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387596, 40.259468, 51.762684>,  <37.801483, 40.024265, 51.480602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387596, 40.259468, 51.762684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205631, 40.605072, 51.676392>,  <38.096455, 40.812435, 51.624615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205631, 40.605072, 51.676392>,  <38.387596, 40.259468, 51.762684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205631, 40.605072, 51.676392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222108, 0.344675, 0.912067,
		0.862396, 0.366990, -0.348699,
		-0.454908, 0.864012, -0.215735,
		38.069160, 40.864277, 51.611671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816189, 40.822800, 52.059887>,  <38.387596, 40.259468, 51.762684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816189, 40.822800, 52.059887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.449547, 40.978054, 52.021553>,  <38.229561, 41.071205, 51.998554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.449547, 40.978054, 52.021553>,  <38.816189, 40.822800, 52.059887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449547, 40.978054, 52.021553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073656, 0.399551, 0.913747,
		0.392943, 0.830489, -0.394820,
		-0.916608, 0.388132, -0.095830,
		38.174564, 41.094494, 51.992805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789471, 41.589622, 52.210495>,  <38.816189, 40.822800, 52.059887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789471, 41.589622, 52.210495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435204, 41.420532, 52.287334>,  <38.222645, 41.319080, 52.333439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435204, 41.420532, 52.287334>,  <38.789471, 41.589622, 52.210495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435204, 41.420532, 52.287334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038991, 0.344546, 0.937959,
		-0.462682, 0.838209, -0.288670,
		-0.885666, -0.422722, 0.192098,
		38.169502, 41.293716, 52.344963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623734, 41.894371, 52.840401>,  <38.789471, 41.589622, 52.210495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623734, 41.894371, 52.840401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321918, 41.633892, 52.807858>,  <38.140831, 41.477604, 52.788330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321918, 41.633892, 52.807858>,  <38.623734, 41.894371, 52.840401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321918, 41.633892, 52.807858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124587, 0.020415, 0.991999,
		-0.644323, 0.758636, -0.096535,
		-0.754537, -0.651194, -0.081363,
		38.095558, 41.438534, 52.783447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061241, 42.166878, 53.210735>,  <38.623734, 41.894371, 52.840401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061241, 42.166878, 53.210735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973778, 41.779938, 53.159473>,  <37.921299, 41.547775, 53.128716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973778, 41.779938, 53.159473>,  <38.061241, 42.166878, 53.210735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973778, 41.779938, 53.159473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275234, -0.064857, 0.959187,
		-0.936182, 0.245003, -0.252066,
		-0.218655, -0.967351, -0.128151,
		37.908180, 41.489731, 53.121029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285873, 42.019428, 53.345810>,  <38.061241, 42.166878, 53.210735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285873, 42.019428, 53.345810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507511, 41.692291, 53.407913>,  <37.640495, 41.496010, 53.445175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507511, 41.692291, 53.407913>,  <37.285873, 42.019428, 53.345810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507511, 41.692291, 53.407913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484086, -0.164831, 0.859355,
		-0.677230, -0.551323, -0.487240,
		0.554095, -0.817847, 0.155259,
		37.673740, 41.446938, 53.454491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933044, 41.547401, 53.690170>,  <37.285873, 42.019428, 53.345810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933044, 41.547401, 53.690170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301308, 41.427967, 53.790752>,  <37.522266, 41.356308, 53.851101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301308, 41.427967, 53.790752>,  <36.933044, 41.547401, 53.690170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301308, 41.427967, 53.790752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327054, -0.238331, 0.914459,
		-0.213106, -0.924148, -0.317073,
		0.920664, -0.298577, 0.251456,
		37.577507, 41.338390, 53.866188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768337, 41.323940, 54.282616>,  <36.933044, 41.547401, 53.690170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768337, 41.323940, 54.282616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.167152, 41.295712, 54.294792>,  <37.406441, 41.278774, 54.302097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.167152, 41.295712, 54.294792>,  <36.768337, 41.323940, 54.282616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167152, 41.295712, 54.294792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056016, -0.396031, 0.916527,
		-0.052622, -0.915521, -0.398813,
		0.997042, -0.070569, 0.030444,
		37.466267, 41.274540, 54.303925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029465, 41.191513, 54.309704>,  <36.768337, 41.323940, 54.282616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029465, 41.191513, 54.309704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650917, 41.285084, 54.398849>,  <35.423790, 41.341225, 54.452335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650917, 41.285084, 54.398849>,  <36.029465, 41.191513, 54.309704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650917, 41.285084, 54.398849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286465, -0.288523, -0.913615,
		-0.149417, -0.928457, 0.340061,
		-0.946368, 0.233925, 0.222861,
		35.367008, 41.355263, 54.465706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620708, 40.614037, 54.328045>,  <36.029465, 41.191513, 54.309704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620708, 40.614037, 54.328045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348099, 40.902618, 54.278992>,  <35.184532, 41.075768, 54.249561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348099, 40.902618, 54.278992>,  <35.620708, 40.614037, 54.328045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348099, 40.902618, 54.278992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356785, -0.473885, -0.805070,
		-0.638931, -0.504919, 0.580365,
		-0.681521, 0.721450, -0.122632,
		35.143642, 41.119053, 54.242203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986889, 40.228561, 54.037037>,  <35.620708, 40.614037, 54.328045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986889, 40.228561, 54.037037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933102, 40.614750, 53.947781>,  <34.900829, 40.846462, 53.894226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933102, 40.614750, 53.947781>,  <34.986889, 40.228561, 54.037037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933102, 40.614750, 53.947781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422669, -0.259558, -0.868321,
		-0.896253, -0.022444, 0.442974,
		-0.134466, 0.965466, -0.223144,
		34.892761, 40.904388, 53.880836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299648, 40.319401, 53.640251>,  <34.986889, 40.228561, 54.037037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299648, 40.319401, 53.640251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.488995, 40.664619, 53.569733>,  <34.602600, 40.871750, 53.527424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.488995, 40.664619, 53.569733>,  <34.299648, 40.319401, 53.640251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488995, 40.664619, 53.569733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369011, 0.012560, -0.929340,
		-0.799849, 0.504969, 0.324419,
		0.473362, 0.863046, -0.176293,
		34.631004, 40.923534, 53.516846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749016, 40.848377, 53.349449>,  <34.299648, 40.319401, 53.640251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749016, 40.848377, 53.349449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117680, 40.943005, 53.226437>,  <34.338879, 40.999783, 53.152630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117680, 40.943005, 53.226437>,  <33.749016, 40.848377, 53.349449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117680, 40.943005, 53.226437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349954, 0.164568, -0.922198,
		-0.167552, 0.957577, 0.234464,
		0.921661, 0.236568, -0.307534,
		34.394176, 41.013973, 53.134178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629799, 41.254162, 52.875160>,  <33.749016, 40.848377, 53.349449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629799, 41.254162, 52.875160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016201, 41.201328, 52.786263>,  <34.248043, 41.169628, 52.732925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016201, 41.201328, 52.786263>,  <33.629799, 41.254162, 52.875160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016201, 41.201328, 52.786263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208715, 0.108874, -0.971897,
		0.152568, 0.985241, 0.077605,
		0.966003, -0.132083, -0.222245,
		34.306004, 41.161705, 52.719589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788410, 41.720032, 52.272564>,  <33.629799, 41.254162, 52.875160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788410, 41.720032, 52.272564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098751, 41.468281, 52.254986>,  <34.284954, 41.317230, 52.244438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098751, 41.468281, 52.254986>,  <33.788410, 41.720032, 52.272564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098751, 41.468281, 52.254986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106406, -0.061870, -0.992396,
		0.621877, 0.774629, -0.114972,
		0.775852, -0.629382, -0.043950,
		34.331505, 41.279465, 52.241802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334705, 41.977844, 51.821762>,  <33.788410, 41.720032, 52.272564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334705, 41.977844, 51.821762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380817, 41.581413, 51.848549>,  <34.408485, 41.343555, 51.864620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380817, 41.581413, 51.848549>,  <34.334705, 41.977844, 51.821762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380817, 41.581413, 51.848549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164317, -0.047464, -0.985265,
		0.979648, 0.124587, 0.157378,
		0.115281, -0.991073, 0.066969,
		34.415401, 41.284092, 51.868641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900654, 41.898560, 51.320911>,  <34.334705, 41.977844, 51.821762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900654, 41.898560, 51.320911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757343, 41.529945, 51.380806>,  <34.671356, 41.308777, 51.416744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757343, 41.529945, 51.380806>,  <34.900654, 41.898560, 51.320911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757343, 41.529945, 51.380806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252046, -0.249897, -0.934893,
		0.898952, -0.297206, 0.321799,
		-0.358272, -0.921531, 0.149735,
		34.649860, 41.253487, 51.425728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448181, 41.427624, 51.248199>,  <34.900654, 41.898560, 51.320911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448181, 41.427624, 51.248199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094246, 41.268791, 51.150711>,  <34.881886, 41.173492, 51.092220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094246, 41.268791, 51.150711>,  <35.448181, 41.427624, 51.248199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094246, 41.268791, 51.150711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326554, -0.155451, -0.932307,
		0.332312, -0.904525, 0.267216,
		-0.884834, -0.397077, -0.243717,
		34.828796, 41.149670, 51.077595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618649, 40.926155, 50.752354>,  <35.448181, 41.427624, 51.248199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618649, 40.926155, 50.752354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223053, 40.951111, 50.698669>,  <34.985695, 40.966084, 50.666458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223053, 40.951111, 50.698669>,  <35.618649, 40.926155, 50.752354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223053, 40.951111, 50.698669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117410, -0.221433, -0.968082,
		-0.090114, -0.973178, 0.211670,
		-0.988987, 0.062386, -0.134215,
		34.926357, 40.969826, 50.658405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388729, 40.308727, 50.354759>,  <35.618649, 40.926155, 50.752354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388729, 40.308727, 50.354759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098259, 40.580009, 50.309689>,  <34.923977, 40.742779, 50.282646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098259, 40.580009, 50.309689>,  <35.388729, 40.308727, 50.354759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098259, 40.580009, 50.309689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014277, -0.178728, -0.983795,
		-0.687357, -0.712803, 0.139472,
		-0.726179, 0.678209, -0.112673,
		34.880405, 40.783474, 50.275887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951599, 39.962391, 49.995918>,  <35.388729, 40.308727, 50.354759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951599, 39.962391, 49.995918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880192, 40.350754, 49.932072>,  <34.837345, 40.583771, 49.893764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880192, 40.350754, 49.932072>,  <34.951599, 39.962391, 49.995918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880192, 40.350754, 49.932072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082270, -0.146926, -0.985720,
		-0.980491, -0.189104, -0.053647,
		-0.178522, 0.970903, -0.159618,
		34.826633, 40.642025, 49.884186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391682, 40.011631, 49.441128>,  <34.951599, 39.962391, 49.995918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391682, 40.011631, 49.441128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577103, 40.365997, 49.434608>,  <34.688354, 40.578617, 49.430698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577103, 40.365997, 49.434608>,  <34.391682, 40.011631, 49.441128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577103, 40.365997, 49.434608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121170, 0.045161, -0.991604,
		-0.877745, 0.461635, 0.128282,
		0.463552, 0.885920, -0.016296,
		34.716167, 40.631775, 49.429718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917324, 40.433395, 49.120903>,  <34.391682, 40.011631, 49.441128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917324, 40.433395, 49.120903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293724, 40.559849, 49.072598>,  <34.519562, 40.635723, 49.043613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293724, 40.559849, 49.072598>,  <33.917324, 40.433395, 49.120903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293724, 40.559849, 49.072598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160659, 0.103252, -0.981594,
		-0.297850, 0.943078, 0.147950,
		0.940996, 0.316137, -0.120761,
		34.576023, 40.654690, 49.036369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815819, 41.018604, 48.650047>,  <33.917324, 40.433395, 49.120903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815819, 41.018604, 48.650047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209969, 40.982510, 48.592232>,  <34.446457, 40.960854, 48.557541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209969, 40.982510, 48.592232>,  <33.815819, 41.018604, 48.650047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209969, 40.982510, 48.592232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140029, 0.054499, -0.988646,
		0.097089, 0.994428, 0.041066,
		0.985376, -0.090237, -0.144540,
		34.505581, 40.955437, 48.548870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082176, 41.614807, 48.162773>,  <33.815819, 41.018604, 48.650047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082176, 41.614807, 48.162773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356068, 41.323559, 48.150196>,  <34.520401, 41.148811, 48.142651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356068, 41.323559, 48.150196>,  <34.082176, 41.614807, 48.162773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356068, 41.323559, 48.150196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020121, 0.024245, -0.999504,
		0.728521, 0.685021, 0.001951,
		0.684729, -0.728120, -0.031446,
		34.561485, 41.105122, 48.140762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598259, 41.807919, 47.715847>,  <34.082176, 41.614807, 48.162773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598259, 41.807919, 47.715847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652966, 41.412186, 47.735886>,  <34.685791, 41.174744, 47.747910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652966, 41.412186, 47.735886>,  <34.598259, 41.807919, 47.715847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652966, 41.412186, 47.735886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032844, -0.046010, -0.998401,
		0.990058, 0.138194, 0.026201,
		0.136767, -0.989336, 0.050092,
		34.693996, 41.115383, 47.750912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160511, 41.641834, 47.265022>,  <34.598259, 41.807919, 47.715847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160511, 41.641834, 47.265022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967117, 41.301151, 47.345860>,  <34.851082, 41.096741, 47.394363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967117, 41.301151, 47.345860>,  <35.160511, 41.641834, 47.265022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967117, 41.301151, 47.345860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115468, -0.290909, -0.949757,
		0.867706, -0.435853, 0.238994,
		-0.483480, -0.851706, 0.202096,
		34.822075, 41.045639, 47.406490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515816, 41.160797, 46.939659>,  <35.160511, 41.641834, 47.265022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515816, 41.160797, 46.939659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158863, 40.988251, 46.992699>,  <34.944691, 40.884724, 47.024521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158863, 40.988251, 46.992699>,  <35.515816, 41.160797, 46.939659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158863, 40.988251, 46.992699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034973, -0.359044, -0.932665,
		0.449930, -0.827653, 0.335489,
		-0.892379, -0.431367, 0.132599,
		34.891148, 40.858841, 47.032478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.575577, 29.277328, 43.480835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306137, 29.083261, 43.257809>,  <43.144474, 28.966822, 43.123993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306137, 29.083261, 43.257809>,  <43.575577, 29.277328, 43.480835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306137, 29.083261, 43.257809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218368, 0.851348, -0.476993,
		0.706104, -0.199546, -0.679410,
		-0.673597, -0.485168, -0.557566,
		43.104057, 28.937712, 43.090538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669548, 29.498594, 42.755527>,  <43.575577, 29.277328, 43.480835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669548, 29.498594, 42.755527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299992, 29.345589, 42.759808>,  <43.078259, 29.253786, 42.762375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299992, 29.345589, 42.759808>,  <43.669548, 29.498594, 42.755527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299992, 29.345589, 42.759808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313166, 0.739724, -0.595597,
		0.219906, -0.553617, -0.803212,
		-0.923887, -0.382514, 0.010704,
		43.022827, 29.230835, 42.763020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455929, 29.516289, 42.028130>,  <43.669548, 29.498594, 42.755527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455929, 29.516289, 42.028130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126968, 29.509979, 42.255604>,  <42.929592, 29.506193, 42.392090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126968, 29.509979, 42.255604>,  <43.455929, 29.516289, 42.028130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126968, 29.509979, 42.255604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389019, 0.744978, -0.541915,
		-0.415108, -0.666903, -0.618810,
		-0.822405, -0.015776, 0.568684,
		42.880245, 29.505247, 42.426208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998600, 29.601324, 41.559792>,  <43.455929, 29.516289, 42.028130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998600, 29.601324, 41.559792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816887, 29.714220, 41.897778>,  <42.707859, 29.781958, 42.100571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816887, 29.714220, 41.897778>,  <42.998600, 29.601324, 41.559792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816887, 29.714220, 41.897778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429462, 0.761614, -0.485290,
		-0.780506, -0.583340, -0.224777,
		-0.454282, 0.282239, 0.844967,
		42.680603, 29.798891, 42.151268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287399, 29.645264, 41.358829>,  <42.998600, 29.601324, 41.559792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287399, 29.645264, 41.358829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382626, 29.874212, 41.672699>,  <42.439762, 30.011581, 41.861023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382626, 29.874212, 41.672699>,  <42.287399, 29.645264, 41.358829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382626, 29.874212, 41.672699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334702, 0.806765, -0.486935,
		-0.911756, -0.146711, 0.383636,
		0.238066, 0.572369, 0.784677,
		42.454044, 30.045923, 41.908104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784969, 30.198530, 41.351620>,  <42.287399, 29.645264, 41.358829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784969, 30.198530, 41.351620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.060070, 30.348103, 41.600513>,  <42.225128, 30.437845, 41.749851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.060070, 30.348103, 41.600513>,  <41.784969, 30.198530, 41.351620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060070, 30.348103, 41.600513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200961, 0.921705, -0.331776,
		-0.697579, 0.103133, 0.709046,
		0.687748, 0.373931, 0.622237,
		42.266396, 30.460281, 41.787186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525421, 30.670233, 41.728081>,  <41.784969, 30.198530, 41.351620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525421, 30.670233, 41.728081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.909508, 30.781296, 41.739960>,  <42.139961, 30.847933, 41.747089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.909508, 30.781296, 41.739960>,  <41.525421, 30.670233, 41.728081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909508, 30.781296, 41.739960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263396, 0.935916, -0.233845,
		-0.092725, 0.216720, 0.971820,
		0.960221, 0.277657, 0.029700,
		42.197575, 30.864594, 41.748871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428932, 31.321274, 41.898964>,  <41.525421, 30.670233, 41.728081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428932, 31.321274, 41.898964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821430, 31.321709, 41.821865>,  <42.056931, 31.321970, 41.775604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821430, 31.321709, 41.821865>,  <41.428932, 31.321274, 41.898964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821430, 31.321709, 41.821865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074186, 0.925084, -0.372447,
		0.177904, 0.379762, 0.907817,
		0.981248, 0.001087, -0.192749,
		42.115803, 31.322035, 41.764042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759396, 32.014210, 42.115887>,  <41.428932, 31.321274, 41.898964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759396, 32.014210, 42.115887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985062, 31.857271, 41.825291>,  <42.120461, 31.763109, 41.650932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985062, 31.857271, 41.825291>,  <41.759396, 32.014210, 42.115887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985062, 31.857271, 41.825291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063301, 0.856742, -0.511846,
		0.823229, 0.334755, 0.458511,
		0.564169, -0.392342, -0.726485,
		42.154312, 31.739569, 41.607346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301804, 32.574558, 41.999691>,  <41.759396, 32.014210, 42.115887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301804, 32.574558, 41.999691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336594, 32.321404, 41.691952>,  <42.357468, 32.169510, 41.507309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336594, 32.321404, 41.691952>,  <42.301804, 32.574558, 41.999691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336594, 32.321404, 41.691952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143558, 0.772173, -0.618984,
		0.985813, -0.056612, 0.158013,
		0.086972, -0.632886, -0.769345,
		42.362686, 32.131538, 41.461147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914860, 32.754395, 41.582718>,  <42.301804, 32.574558, 41.999691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914860, 32.754395, 41.582718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705563, 32.539421, 41.318180>,  <42.579983, 32.410439, 41.159458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705563, 32.539421, 41.318180>,  <42.914860, 32.754395, 41.582718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705563, 32.539421, 41.318180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143841, 0.709229, -0.690148,
		0.839956, -0.456244, -0.293794,
		-0.523243, -0.537435, -0.661348,
		42.548588, 32.378189, 41.119778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289902, 32.717915, 41.005764>,  <42.914860, 32.754395, 41.582718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289902, 32.717915, 41.005764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.932720, 32.629047, 40.849159>,  <42.718410, 32.575729, 40.755196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.932720, 32.629047, 40.849159>,  <43.289902, 32.717915, 41.005764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932720, 32.629047, 40.849159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149778, 0.673540, -0.723817,
		0.424504, -0.704973, -0.568163,
		-0.892952, -0.222165, -0.391510,
		42.664833, 32.562397, 40.731705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438492, 32.637207, 40.359489>,  <43.289902, 32.717915, 41.005764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438492, 32.637207, 40.359489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040928, 32.679550, 40.347214>,  <42.802391, 32.704956, 40.339848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040928, 32.679550, 40.347214>,  <43.438492, 32.637207, 40.359489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040928, 32.679550, 40.347214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082833, 0.533789, -0.841551,
		-0.072702, -0.838966, -0.539305,
		-0.993908, 0.105854, -0.030686,
		42.742756, 32.711308, 40.338009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272030, 32.289070, 39.708057>,  <43.438492, 32.637207, 40.359489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272030, 32.289070, 39.708057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978466, 32.536129, 39.821117>,  <42.802326, 32.684364, 39.888954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978466, 32.536129, 39.821117>,  <43.272030, 32.289070, 39.708057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978466, 32.536129, 39.821117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123152, 0.288226, -0.949610,
		-0.667988, -0.731738, -0.135468,
		-0.733912, 0.617645, 0.282647,
		42.758293, 32.721424, 39.905910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600010, 32.214748, 39.160404>,  <43.272030, 32.289070, 39.708057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600010, 32.214748, 39.160404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604931, 32.569809, 39.344547>,  <42.607883, 32.782845, 39.455032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604931, 32.569809, 39.344547>,  <42.600010, 32.214748, 39.160404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604931, 32.569809, 39.344547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135441, 0.457629, -0.878767,
		-0.990709, -0.051541, 0.125854,
		0.012302, 0.887648, 0.460358,
		42.608620, 32.836102, 39.482655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132313, 32.602001, 38.833466>,  <42.600010, 32.214748, 39.160404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132313, 32.602001, 38.833466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270473, 32.917683, 39.036583>,  <42.353371, 33.107094, 39.158455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270473, 32.917683, 39.036583>,  <42.132313, 32.602001, 38.833466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270473, 32.917683, 39.036583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129550, 0.576013, -0.807110,
		-0.929471, 0.212989, 0.301195,
		0.345398, 0.789205, 0.507795,
		42.374092, 33.154446, 39.188923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603153, 33.194199, 38.834366>,  <42.132313, 32.602001, 38.833466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603153, 33.194199, 38.834366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.965675, 33.354694, 38.887466>,  <42.183189, 33.450993, 38.919327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.965675, 33.354694, 38.887466>,  <41.603153, 33.194199, 38.834366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965675, 33.354694, 38.887466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148726, 0.596800, -0.788486,
		-0.395596, 0.694864, 0.600556,
		0.906303, 0.401241, 0.132747,
		42.237568, 33.475067, 38.927292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533188, 33.943981, 38.678265>,  <41.603153, 33.194199, 38.834366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533188, 33.943981, 38.678265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.925526, 33.870987, 38.651028>,  <42.160931, 33.827190, 38.634686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.925526, 33.870987, 38.651028>,  <41.533188, 33.943981, 38.678265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925526, 33.870987, 38.651028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081443, 0.701816, -0.707688,
		0.176935, 0.688587, 0.703236,
		0.980847, -0.182489, -0.068095,
		42.219780, 33.816242, 38.630600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831894, 34.640198, 38.629993>,  <41.533188, 33.943981, 38.678265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831894, 34.640198, 38.629993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123852, 34.392494, 38.514221>,  <42.299026, 34.243874, 38.444756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123852, 34.392494, 38.514221>,  <41.831894, 34.640198, 38.629993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123852, 34.392494, 38.514221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099943, 0.515551, -0.851011,
		0.676214, 0.592221, 0.438188,
		0.729894, -0.619259, -0.289435,
		42.342819, 34.206715, 38.427391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491638, 35.018299, 38.663601>,  <41.831894, 34.640198, 38.629993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491638, 35.018299, 38.663601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529697, 34.708515, 38.413433>,  <42.552532, 34.522644, 38.263332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529697, 34.708515, 38.413433>,  <42.491638, 35.018299, 38.663601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529697, 34.708515, 38.413433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258040, 0.625987, -0.735905,
		0.961437, -0.091362, 0.259406,
		0.095151, -0.774464, -0.625422,
		42.558243, 34.476177, 38.225807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090691, 35.159355, 38.141880>,  <42.491638, 35.018299, 38.663601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090691, 35.159355, 38.141880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912827, 34.863602, 37.939659>,  <42.806107, 34.686150, 37.818329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912827, 34.863602, 37.939659>,  <43.090691, 35.159355, 38.141880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912827, 34.863602, 37.939659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229190, 0.451707, -0.862225,
		0.865880, -0.499265, -0.031396,
		-0.444661, -0.739388, -0.505551,
		42.779427, 34.641785, 37.787994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642921, 34.928204, 37.633438>,  <43.090691, 35.159355, 38.141880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642921, 34.928204, 37.633438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.260723, 34.858692, 37.538090>,  <43.031403, 34.816986, 37.480881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.260723, 34.858692, 37.538090>,  <43.642921, 34.928204, 37.633438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260723, 34.858692, 37.538090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152400, 0.401054, -0.903288,
		0.252574, -0.899419, -0.356723,
		-0.955500, -0.173782, -0.238367,
		42.974072, 34.806557, 37.466579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251572, 34.917763, 37.162186>,  <43.642921, 34.928204, 37.633438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251572, 34.917763, 37.162186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.594185, 34.989002, 36.968430>,  <44.799751, 35.031746, 36.852177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.594185, 34.989002, 36.968430>,  <44.251572, 34.917763, 37.162186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594185, 34.989002, 36.968430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515004, -0.355923, 0.779801,
		-0.033526, -0.917388, -0.396580,
		0.856532, 0.178097, -0.484391,
		44.851143, 35.042431, 36.823112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615795, 34.275837, 37.239326>,  <44.251572, 34.917763, 37.162186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615795, 34.275837, 37.239326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908413, 34.526241, 37.131290>,  <45.083984, 34.676483, 37.066467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908413, 34.526241, 37.131290>,  <44.615795, 34.275837, 37.239326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908413, 34.526241, 37.131290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565106, -0.335099, 0.753899,
		0.381445, -0.704140, -0.598904,
		0.731543, 0.626015, -0.270092,
		45.127876, 34.714046, 37.050262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219814, 33.952950, 37.133430>,  <44.615795, 34.275837, 37.239326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219814, 33.952950, 37.133430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.384148, 34.309006, 37.212288>,  <45.482746, 34.522640, 37.259602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.384148, 34.309006, 37.212288>,  <45.219814, 33.952950, 37.133430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384148, 34.309006, 37.212288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428993, -0.379536, 0.819705,
		0.804476, -0.252190, -0.537791,
		0.410833, 0.890142, 0.197140,
		45.507397, 34.576050, 37.271431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952812, 33.880680, 37.240494>,  <45.219814, 33.952950, 37.133430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952812, 33.880680, 37.240494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841728, 34.206722, 37.443855>,  <45.775078, 34.402348, 37.565872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841728, 34.206722, 37.443855>,  <45.952812, 33.880680, 37.240494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841728, 34.206722, 37.443855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482843, -0.339087, 0.807392,
		0.830504, 0.469704, -0.299400,
		-0.277713, 0.815106, 0.508407,
		45.758415, 34.451256, 37.596378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555092, 34.090874, 37.408634>,  <45.952812, 33.880680, 37.240494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555092, 34.090874, 37.408634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.299728, 34.280518, 37.651173>,  <46.146511, 34.394302, 37.796696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.299728, 34.280518, 37.651173>,  <46.555092, 34.090874, 37.408634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299728, 34.280518, 37.651173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543150, -0.280670, 0.791336,
		0.545360, 0.834534, -0.078329,
		-0.638412, 0.474107, 0.606343,
		46.108204, 34.422749, 37.833076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.914135, 34.504009, 37.929886>,  <46.555092, 34.090874, 37.408634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.914135, 34.504009, 37.929886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556656, 34.476334, 38.107208>,  <46.342171, 34.459728, 38.213600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.556656, 34.476334, 38.107208>,  <46.914135, 34.504009, 37.929886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556656, 34.476334, 38.107208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429843, -0.415275, 0.801737,
		0.128622, 0.907061, 0.400870,
		-0.893695, -0.069190, 0.443307,
		46.288548, 34.455578, 38.240200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.014626, 34.703522, 38.630058>,  <46.914135, 34.504009, 37.929886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.014626, 34.703522, 38.630058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.651157, 34.542820, 38.675518>,  <46.433079, 34.446400, 38.702793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.651157, 34.542820, 38.675518>,  <47.014626, 34.703522, 38.630058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651157, 34.542820, 38.675518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251969, -0.310612, 0.916532,
		-0.332916, 0.861461, 0.383473,
		-0.908669, -0.401752, 0.113654,
		46.378555, 34.422295, 38.709614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733932, 34.981152, 39.269417>,  <47.014626, 34.703522, 38.630058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733932, 34.981152, 39.269417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568604, 34.627331, 39.182953>,  <46.469406, 34.415039, 39.131073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568604, 34.627331, 39.182953>,  <46.733932, 34.981152, 39.269417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568604, 34.627331, 39.182953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346390, -0.372274, 0.861061,
		-0.842126, 0.281022, 0.460272,
		-0.413324, -0.884555, -0.216158,
		46.444607, 34.361965, 39.118107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413578, 34.808662, 39.925194>,  <46.733932, 34.981152, 39.269417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413578, 34.808662, 39.925194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429546, 34.470898, 39.711514>,  <46.439129, 34.268238, 39.583305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429546, 34.470898, 39.711514>,  <46.413578, 34.808662, 39.925194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429546, 34.470898, 39.711514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063154, -0.531423, 0.844749,
		-0.997205, -0.067461, 0.032113,
		0.039922, -0.844416, -0.534198,
		46.441525, 34.217571, 39.551254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095604, 34.443398, 40.335365>,  <46.413578, 34.808662, 39.925194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095604, 34.443398, 40.335365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.241028, 34.143402, 40.114334>,  <46.328281, 33.963406, 39.981716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.241028, 34.143402, 40.114334>,  <46.095604, 34.443398, 40.335365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241028, 34.143402, 40.114334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109920, -0.623555, 0.774013,
		-0.925064, -0.220658, -0.309137,
		0.363556, -0.749992, -0.552574,
		46.350094, 33.918404, 39.948563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548946, 33.896439, 40.317898>,  <46.095604, 34.443398, 40.335365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548946, 33.896439, 40.317898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.922386, 33.764969, 40.260818>,  <46.146450, 33.686085, 40.226570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.922386, 33.764969, 40.260818>,  <45.548946, 33.896439, 40.317898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922386, 33.764969, 40.260818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132348, -0.686390, 0.715089,
		-0.332978, -0.648722, -0.684314,
		0.933600, -0.328676, -0.142696,
		46.202465, 33.666367, 40.218010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484726, 33.114845, 40.225677>,  <45.548946, 33.896439, 40.317898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484726, 33.114845, 40.225677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864117, 33.179768, 40.334526>,  <46.091751, 33.218719, 40.399834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864117, 33.179768, 40.334526>,  <45.484726, 33.114845, 40.225677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864117, 33.179768, 40.334526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077215, -0.714540, 0.695321,
		0.307298, -0.680507, -0.665191,
		0.948476, 0.162308, 0.272122,
		46.148659, 33.228458, 40.416164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743439, 32.406921, 40.370533>,  <45.484726, 33.114845, 40.225677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743439, 32.406921, 40.370533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008873, 32.656727, 40.535282>,  <46.168133, 32.806610, 40.634132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008873, 32.656727, 40.535282>,  <45.743439, 32.406921, 40.370533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008873, 32.656727, 40.535282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006483, -0.545734, 0.837933,
		0.748069, -0.558713, -0.358094,
		0.663589, 0.624511, 0.411869,
		46.207951, 32.844082, 40.658844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.318714, 31.967564, 40.541897>,  <45.743439, 32.406921, 40.370533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.318714, 31.967564, 40.541897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.348988, 32.299839, 40.762527>,  <46.367153, 32.499203, 40.894905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.348988, 32.299839, 40.762527>,  <46.318714, 31.967564, 40.541897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348988, 32.299839, 40.762527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036964, -0.555116, 0.830951,
		0.996447, -0.042500, -0.072718,
		0.075682, 0.830687, 0.551573,
		46.371693, 32.549046, 40.927998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781757, 31.830299, 41.204491>,  <46.318714, 31.967564, 40.541897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781757, 31.830299, 41.204491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.575012, 32.150341, 41.326271>,  <46.450966, 32.342365, 41.399338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.575012, 32.150341, 41.326271>,  <46.781757, 31.830299, 41.204491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575012, 32.150341, 41.326271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093042, -0.406033, 0.909110,
		0.850998, 0.441557, 0.284306,
		-0.516862, 0.800103, 0.304450,
		46.419952, 32.390373, 41.417606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.082191, 31.977570, 41.787945>,  <46.781757, 31.830299, 41.204491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.082191, 31.977570, 41.787945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.726627, 32.160671, 41.794777>,  <46.513287, 32.270531, 41.798874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.726627, 32.160671, 41.794777>,  <47.082191, 31.977570, 41.787945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726627, 32.160671, 41.794777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230030, -0.478314, 0.847527,
		0.396128, 0.749450, 0.530477,
		-0.888914, 0.457755, 0.017077,
		46.459953, 32.297997, 41.799900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936375, 32.141106, 42.505943>,  <47.082191, 31.977570, 41.787945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936375, 32.141106, 42.505943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574665, 32.145363, 42.335220>,  <46.357639, 32.147919, 42.232784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574665, 32.145363, 42.335220>,  <46.936375, 32.141106, 42.505943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574665, 32.145363, 42.335220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393676, -0.407663, 0.823911,
		-0.165225, 0.913070, 0.372832,
		-0.904279, 0.010645, -0.426810,
		46.303383, 32.148556, 42.207176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510750, 32.210838, 43.084099>,  <46.936375, 32.141106, 42.505943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510750, 32.210838, 43.084099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260227, 32.105827, 42.790482>,  <46.109913, 32.042820, 42.614311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260227, 32.105827, 42.790482>,  <46.510750, 32.210838, 43.084099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260227, 32.105827, 42.790482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556639, -0.508624, 0.656852,
		-0.545793, 0.819988, 0.172422,
		-0.626309, -0.262528, -0.734041,
		46.072334, 32.027069, 42.570271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867813, 32.377991, 43.365837>,  <46.510750, 32.210838, 43.084099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867813, 32.377991, 43.365837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.795132, 32.106174, 43.081524>,  <45.751522, 31.943085, 42.910934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.795132, 32.106174, 43.081524>,  <45.867813, 32.377991, 43.365837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795132, 32.106174, 43.081524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467511, -0.576207, 0.670388,
		-0.865112, 0.454108, -0.212995,
		-0.181699, -0.679538, -0.710784,
		45.740623, 31.902313, 42.868290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196503, 32.227463, 43.381336>,  <45.867813, 32.377991, 43.365837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196503, 32.227463, 43.381336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335552, 31.903439, 43.192463>,  <45.418980, 31.709024, 43.079140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335552, 31.903439, 43.192463>,  <45.196503, 32.227463, 43.381336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335552, 31.903439, 43.192463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508476, -0.585977, 0.630938,
		-0.787790, 0.020770, -0.615594,
		0.347619, -0.810062, -0.472187,
		45.439838, 31.660419, 43.050808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.566494, 40.215843, 42.565197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268253, 39.955677, 42.623203>,  <38.089310, 39.799576, 42.658009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268253, 39.955677, 42.623203>,  <38.566494, 40.215843, 42.565197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268253, 39.955677, 42.623203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232371, -0.457725, -0.858191,
		0.624560, -0.606174, 0.492420,
		-0.745606, -0.650416, 0.145019,
		38.044571, 39.760551, 42.666710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805462, 39.494911, 42.283199>,  <38.566494, 40.215843, 42.565197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805462, 39.494911, 42.283199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408165, 39.463409, 42.317291>,  <38.169785, 39.444508, 42.337746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408165, 39.463409, 42.317291>,  <38.805462, 39.494911, 42.283199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408165, 39.463409, 42.317291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018729, -0.616056, -0.787479,
		0.114525, -0.783755, 0.610419,
		-0.993244, -0.078753, 0.085232,
		38.110191, 39.439785, 42.342861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611492, 38.760006, 42.250797>,  <38.805462, 39.494911, 42.283199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611492, 38.760006, 42.250797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263474, 38.929054, 42.149281>,  <38.054665, 39.030483, 42.088371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263474, 38.929054, 42.149281>,  <38.611492, 38.760006, 42.250797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263474, 38.929054, 42.149281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066019, -0.610076, -0.789588,
		-0.488533, -0.670221, 0.558694,
		-0.870044, 0.422624, -0.253795,
		38.002460, 39.055843, 42.073143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177555, 38.164059, 41.978096>,  <38.611492, 38.760006, 42.250797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177555, 38.164059, 41.978096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034061, 38.517868, 41.858810>,  <37.947968, 38.730152, 41.787239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034061, 38.517868, 41.858810>,  <38.177555, 38.164059, 41.978096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034061, 38.517868, 41.858810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362309, -0.426376, -0.828816,
		-0.860258, -0.189277, 0.473424,
		-0.358732, 0.884521, -0.298216,
		37.926441, 38.783226, 41.769344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498360, 38.028847, 41.782921>,  <38.177555, 38.164059, 41.978096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498360, 38.028847, 41.782921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604183, 38.363911, 41.591782>,  <37.667679, 38.564949, 41.477097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604183, 38.363911, 41.591782>,  <37.498360, 38.028847, 41.782921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604183, 38.363911, 41.591782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327306, -0.388100, -0.861539,
		-0.907126, 0.384333, 0.171494,
		0.264561, 0.837656, -0.477850,
		37.683552, 38.615208, 41.448425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896561, 38.265892, 41.298969>,  <37.498360, 38.028847, 41.782921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896561, 38.265892, 41.298969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236153, 38.422749, 41.157288>,  <37.439907, 38.516861, 41.072277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236153, 38.422749, 41.157288>,  <36.896561, 38.265892, 41.298969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236153, 38.422749, 41.157288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227452, -0.333851, -0.914773,
		-0.476971, 0.857187, -0.194240,
		0.848978, 0.392140, -0.354206,
		37.490845, 38.540390, 41.051025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733414, 38.458942, 40.635139>,  <36.896561, 38.265892, 41.298969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733414, 38.458942, 40.635139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132221, 38.432354, 40.619488>,  <37.371506, 38.416401, 40.610096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132221, 38.432354, 40.619488>,  <36.733414, 38.458942, 40.635139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132221, 38.432354, 40.619488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059736, -0.344579, -0.936855,
		0.048788, 0.936401, -0.347523,
		0.997021, -0.066467, -0.039125,
		37.431328, 38.412415, 40.607750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844845, 38.611931, 39.974037>,  <36.733414, 38.458942, 40.635139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844845, 38.611931, 39.974037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192402, 38.446499, 40.082829>,  <37.400936, 38.347240, 40.148106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192402, 38.446499, 40.082829>,  <36.844845, 38.611931, 39.974037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192402, 38.446499, 40.082829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109507, -0.375237, -0.920438,
		0.482735, 0.829546, -0.280750,
		0.868893, -0.413583, 0.271981,
		37.453072, 38.322426, 40.164421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423141, 38.910362, 39.591694>,  <36.844845, 38.611931, 39.974037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423141, 38.910362, 39.591694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548206, 38.544624, 39.694626>,  <37.623245, 38.325184, 39.756386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548206, 38.544624, 39.694626>,  <37.423141, 38.910362, 39.591694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548206, 38.544624, 39.694626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133007, -0.226104, -0.964980,
		0.940506, 0.335938, 0.050920,
		0.312661, -0.914343, 0.257335,
		37.642006, 38.270321, 39.771828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794971, 38.709808, 38.939095>,  <37.423141, 38.910362, 39.591694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794971, 38.709808, 38.939095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738071, 38.382549, 39.161949>,  <37.703930, 38.186195, 39.295662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738071, 38.382549, 39.161949>,  <37.794971, 38.709808, 38.939095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738071, 38.382549, 39.161949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111545, -0.572521, -0.812267,
		0.983525, -0.053400, 0.172703,
		-0.142251, -0.818149, 0.557133,
		37.695396, 38.137104, 39.329090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381821, 38.341328, 38.898201>,  <37.794971, 38.709808, 38.939095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381821, 38.341328, 38.898201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103661, 38.074162, 39.004261>,  <37.936764, 37.913860, 39.067898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103661, 38.074162, 39.004261>,  <38.381821, 38.341328, 38.898201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103661, 38.074162, 39.004261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166659, -0.508806, -0.844596,
		0.699029, -0.543144, 0.465138,
		-0.695402, -0.667916, 0.265150,
		37.895039, 37.873787, 39.083805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693859, 37.708435, 38.768631>,  <38.381821, 38.341328, 38.898201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693859, 37.708435, 38.768631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299454, 37.641979, 38.763229>,  <38.062813, 37.602104, 38.759987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299454, 37.641979, 38.763229>,  <38.693859, 37.708435, 38.768631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299454, 37.641979, 38.763229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091256, -0.470232, -0.877812,
		0.139490, -0.866764, 0.478814,
		-0.986010, -0.166140, -0.013505,
		38.003651, 37.592136, 38.759178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646549, 37.161961, 38.279137>,  <38.693859, 37.708435, 38.768631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646549, 37.161961, 38.279137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265133, 37.276924, 38.315254>,  <38.036282, 37.345901, 38.336926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265133, 37.276924, 38.315254>,  <38.646549, 37.161961, 38.279137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265133, 37.276924, 38.315254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163590, -0.242323, -0.956304,
		-0.252972, -0.926647, 0.278083,
		-0.953543, 0.287410, 0.090290,
		37.979069, 37.363148, 38.342342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273071, 37.221237, 37.804111>,  <38.646549, 37.161961, 38.279137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273071, 37.221237, 37.804111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482265, 36.910736, 37.944916>,  <39.607784, 36.724434, 38.029400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482265, 36.910736, 37.944916>,  <39.273071, 37.221237, 37.804111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482265, 36.910736, 37.944916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735379, -0.619747, -0.274102,
		0.430930, -0.115508, -0.894962,
		0.522989, -0.776254, 0.352010,
		39.639164, 36.677860, 38.050518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222801, 36.701954, 38.388409>,  <39.273071, 37.221237, 37.804111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222801, 36.701954, 38.388409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476212, 36.403313, 38.469624>,  <39.628258, 36.224129, 38.518353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476212, 36.403313, 38.469624>,  <39.222801, 36.701954, 38.388409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476212, 36.403313, 38.469624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477374, -0.170668, 0.861967,
		-0.608898, -0.643003, -0.464533,
		0.633528, -0.746606, 0.203034,
		39.666271, 36.179333, 38.530533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831306, 36.266300, 38.637009>,  <39.222801, 36.701954, 38.388409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831306, 36.266300, 38.637009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185265, 36.143799, 38.777397>,  <39.397640, 36.070297, 38.861629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185265, 36.143799, 38.777397>,  <38.831306, 36.266300, 38.637009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185265, 36.143799, 38.777397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416167, -0.181370, 0.891016,
		-0.209231, -0.934510, -0.287948,
		0.884888, -0.306263, 0.350964,
		39.450733, 36.051926, 38.882687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720661, 35.583096, 38.882256>,  <38.831306, 36.266300, 38.637009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720661, 35.583096, 38.882256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047462, 35.729328, 39.060627>,  <39.243546, 35.817066, 39.167648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047462, 35.729328, 39.060627>,  <38.720661, 35.583096, 38.882256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047462, 35.729328, 39.060627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394262, -0.210163, 0.894644,
		0.420782, -0.906743, -0.027570,
		0.817007, 0.365580, 0.445927,
		39.292564, 35.839001, 39.194405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864494, 35.095428, 39.395760>,  <38.720661, 35.583096, 38.882256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864494, 35.095428, 39.395760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060108, 35.423721, 39.513905>,  <39.177479, 35.620697, 39.584789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060108, 35.423721, 39.513905>,  <38.864494, 35.095428, 39.395760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060108, 35.423721, 39.513905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315848, -0.149013, 0.937035,
		0.813070, -0.551534, 0.186354,
		0.489038, 0.820735, 0.295359,
		39.206821, 35.669941, 39.602512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332825, 34.785156, 39.839062>,  <38.864494, 35.095428, 39.395760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332825, 34.785156, 39.839062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267227, 35.172615, 39.913719>,  <39.227867, 35.405090, 39.958515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267227, 35.172615, 39.913719>,  <39.332825, 34.785156, 39.839062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267227, 35.172615, 39.913719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254892, -0.224390, 0.940574,
		0.952961, 0.106677, 0.283698,
		-0.163996, 0.968643, 0.186644,
		39.218029, 35.463207, 39.969711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348568, 34.926170, 40.624973>,  <39.332825, 34.785156, 39.839062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348568, 34.926170, 40.624973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179974, 35.259617, 40.482178>,  <39.078819, 35.459682, 40.396500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179974, 35.259617, 40.482178>,  <39.348568, 34.926170, 40.624973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179974, 35.259617, 40.482178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507134, 0.109679, 0.854860,
		0.751777, 0.541351, 0.376525,
		-0.421482, 0.833613, -0.356992,
		39.053528, 35.509701, 40.375080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556992, 35.330746, 41.067108>,  <39.348568, 34.926170, 40.624973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556992, 35.330746, 41.067108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223862, 35.464546, 40.890694>,  <39.023983, 35.544827, 40.784847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223862, 35.464546, 40.890694>,  <39.556992, 35.330746, 41.067108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223862, 35.464546, 40.890694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478606, -0.034867, 0.877337,
		0.278089, 0.941752, 0.189131,
		-0.832828, 0.334497, -0.441032,
		38.974014, 35.564896, 40.758385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239395, 35.855152, 41.512001>,  <39.556992, 35.330746, 41.067108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239395, 35.855152, 41.512001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921101, 35.788807, 41.279007>,  <38.730122, 35.749001, 41.139210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921101, 35.788807, 41.279007>,  <39.239395, 35.855152, 41.512001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921101, 35.788807, 41.279007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605599, 0.207049, 0.768363,
		-0.006841, 0.964168, -0.265204,
		-0.795741, -0.165863, -0.582482,
		38.682377, 35.739048, 41.104263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863514, 36.377556, 41.647484>,  <39.239395, 35.855152, 41.512001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863514, 36.377556, 41.647484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606518, 36.107452, 41.502579>,  <38.452320, 35.945389, 41.415638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606518, 36.107452, 41.502579>,  <38.863514, 36.377556, 41.647484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606518, 36.107452, 41.502579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666498, 0.259147, 0.699016,
		-0.378139, 0.690555, -0.616558,
		-0.642488, -0.675260, -0.362260,
		38.413773, 35.904873, 41.393902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232227, 36.710320, 41.507446>,  <38.863514, 36.377556, 41.647484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232227, 36.710320, 41.507446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124798, 36.326653, 41.542934>,  <38.060341, 36.096455, 41.564228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124798, 36.326653, 41.542934>,  <38.232227, 36.710320, 41.507446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124798, 36.326653, 41.542934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759470, 0.267505, 0.592998,
		-0.592516, 0.091885, -0.800302,
		-0.268572, -0.959166, 0.088717,
		38.044228, 36.038902, 41.569550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498848, 36.594635, 41.306328>,  <38.232227, 36.710320, 41.507446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498848, 36.594635, 41.306328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581688, 36.300274, 41.564182>,  <37.631390, 36.123657, 41.718895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581688, 36.300274, 41.564182>,  <37.498848, 36.594635, 41.306328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581688, 36.300274, 41.564182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636765, 0.398850, 0.659886,
		-0.742726, -0.547142, -0.385997,
		0.207096, -0.735904, 0.644637,
		37.643818, 36.079502, 41.757572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831623, 36.279694, 41.517681>,  <37.498848, 36.594635, 41.306328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831623, 36.279694, 41.517681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097904, 36.151058, 41.787025>,  <37.257675, 36.073875, 41.948631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097904, 36.151058, 41.787025>,  <36.831623, 36.279694, 41.517681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097904, 36.151058, 41.787025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670520, 0.138210, 0.728904,
		-0.327473, -0.936738, -0.123625,
		0.665706, -0.321590, 0.673361,
		37.297615, 36.054581, 41.989033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499962, 35.672447, 42.029922>,  <36.831623, 36.279694, 41.517681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499962, 35.672447, 42.029922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805527, 35.849174, 42.218063>,  <36.988865, 35.955212, 42.330948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805527, 35.849174, 42.218063>,  <36.499962, 35.672447, 42.029922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805527, 35.849174, 42.218063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569934, 0.120062, 0.812871,
		0.302673, -0.889032, 0.343527,
		0.763914, 0.441822, 0.470351,
		37.034702, 35.981720, 42.359169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657936, 35.288349, 42.664143>,  <36.499962, 35.672447, 42.029922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657936, 35.288349, 42.664143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800411, 35.660233, 42.701603>,  <36.885895, 35.883362, 42.724079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800411, 35.660233, 42.701603>,  <36.657936, 35.288349, 42.664143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800411, 35.660233, 42.701603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587588, 0.144921, 0.796077,
		0.726547, -0.338583, 0.597905,
		0.356187, 0.929709, 0.093655,
		36.907269, 35.939144, 42.729698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251610, 34.834515, 43.119843>,  <36.657936, 35.288349, 42.664143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251610, 34.834515, 43.119843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910049, 34.631657, 43.166576>,  <35.705112, 34.509941, 43.194614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910049, 34.631657, 43.166576>,  <36.251610, 34.834515, 43.119843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910049, 34.631657, 43.166576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110799, -0.042190, -0.992947,
		0.508501, -0.860825, -0.020165,
		-0.853903, -0.507149, 0.116832,
		35.653877, 34.479511, 43.201626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275253, 34.259727, 42.594852>,  <36.251610, 34.834515, 43.119843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275253, 34.259727, 42.594852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892876, 34.304691, 42.703323>,  <35.663448, 34.331669, 42.768406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892876, 34.304691, 42.703323>,  <36.275253, 34.259727, 42.594852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892876, 34.304691, 42.703323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275981, -0.029371, -0.960714,
		-0.100040, -0.993226, 0.059103,
		-0.955943, 0.112421, 0.271173,
		35.606094, 34.338417, 42.784676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910667, 33.714836, 42.254261>,  <36.275253, 34.259727, 42.594852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910667, 33.714836, 42.254261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636677, 33.993950, 42.338074>,  <35.472282, 34.161419, 42.388363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636677, 33.993950, 42.338074>,  <35.910667, 33.714836, 42.254261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636677, 33.993950, 42.338074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214294, 0.081917, -0.973328,
		-0.696339, -0.711607, 0.093420,
		-0.684975, 0.697786, 0.209535,
		35.431183, 34.203285, 42.400932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317036, 33.539776, 41.888268>,  <35.910667, 33.714836, 42.254261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317036, 33.539776, 41.888268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237282, 33.926163, 41.954174>,  <35.189430, 34.157997, 41.993717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237282, 33.926163, 41.954174>,  <35.317036, 33.539776, 41.888268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237282, 33.926163, 41.954174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215406, 0.120827, -0.969021,
		-0.955954, -0.228695, 0.183986,
		-0.199380, 0.965971, 0.164767,
		35.177467, 34.215954, 42.003605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826092, 33.711891, 41.412991>,  <35.317036, 33.539776, 41.888268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826092, 33.711891, 41.412991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957767, 34.073463, 41.522202>,  <35.036774, 34.290405, 41.587727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957767, 34.073463, 41.522202>,  <34.826092, 33.711891, 41.412991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957767, 34.073463, 41.522202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024408, 0.297189, -0.954507,
		-0.943948, 0.307549, 0.119895,
		0.329189, 0.903931, 0.273025,
		35.056522, 34.344643, 41.604111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328621, 34.184044, 41.292248>,  <34.826092, 33.711891, 41.412991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328621, 34.184044, 41.292248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664879, 34.399986, 41.274883>,  <34.866634, 34.529552, 41.264465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664879, 34.399986, 41.274883>,  <34.328621, 34.184044, 41.292248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664879, 34.399986, 41.274883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224621, 0.274593, -0.934957,
		-0.492818, 0.795713, 0.352096,
		0.840640, 0.539852, -0.043409,
		34.917072, 34.561943, 41.261860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166302, 34.732643, 40.868687>,  <34.328621, 34.184044, 41.292248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166302, 34.732643, 40.868687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563541, 34.778488, 40.878620>,  <34.801884, 34.805996, 40.884579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563541, 34.778488, 40.878620>,  <34.166302, 34.732643, 40.868687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563541, 34.778488, 40.878620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036137, 0.500545, -0.864956,
		-0.111563, 0.858090, 0.501233,
		0.993100, 0.114610, 0.024833,
		34.861473, 34.812870, 40.886070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125069, 35.493935, 40.827785>,  <34.166302, 34.732643, 40.868687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125069, 35.493935, 40.827785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480335, 35.345139, 40.719872>,  <34.693497, 35.255863, 40.655121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480335, 35.345139, 40.719872>,  <34.125069, 35.493935, 40.827785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480335, 35.345139, 40.719872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006241, 0.596815, -0.802354,
		0.459479, 0.710941, 0.532393,
		0.888167, -0.371988, -0.269787,
		34.746784, 35.233543, 40.638935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568676, 36.066086, 40.626892>,  <34.125069, 35.493935, 40.827785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568676, 36.066086, 40.626892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678909, 35.734032, 40.433014>,  <34.745049, 35.534798, 40.316689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678909, 35.734032, 40.433014>,  <34.568676, 36.066086, 40.626892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678909, 35.734032, 40.433014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065976, 0.519361, -0.852005,
		0.959011, 0.202818, 0.197895,
		0.275580, -0.830138, -0.484691,
		34.761585, 35.484989, 40.287605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970612, 36.311195, 40.085625>,  <34.568676, 36.066086, 40.626892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970612, 36.311195, 40.085625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912167, 35.943859, 39.938488>,  <34.877102, 35.723457, 39.850204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912167, 35.943859, 39.938488>,  <34.970612, 36.311195, 40.085625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912167, 35.943859, 39.938488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162266, 0.389044, -0.906816,
		0.975869, -0.072807, -0.205859,
		-0.146111, -0.918338, -0.367842,
		34.868332, 35.668358, 39.828136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425137, 36.308819, 39.497066>,  <34.970612, 36.311195, 40.085625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425137, 36.308819, 39.497066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162434, 36.010666, 39.451317>,  <35.004814, 35.831776, 39.423866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162434, 36.010666, 39.451317>,  <35.425137, 36.308819, 39.497066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162434, 36.010666, 39.451317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178710, 0.301185, -0.936670,
		0.732624, -0.594722, -0.331011,
		-0.656753, -0.745381, -0.114373,
		34.965408, 35.787052, 39.417004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531788, 36.042427, 38.844803>,  <35.425137, 36.308819, 39.497066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531788, 36.042427, 38.844803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149895, 35.948181, 38.917427>,  <34.920757, 35.891632, 38.961002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149895, 35.948181, 38.917427>,  <35.531788, 36.042427, 38.844803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149895, 35.948181, 38.917427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265411, 0.399182, -0.877617,
		0.134301, -0.886081, -0.443648,
		-0.954735, -0.235614, 0.181565,
		34.863476, 35.877495, 38.971897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.046402, 33.823257, 46.761906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.651844, 33.882698, 46.790001>,  <36.415108, 33.918362, 46.806858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.651844, 33.882698, 46.790001>,  <37.046402, 33.823257, 46.761906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651844, 33.882698, 46.790001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095032, -0.166980, -0.981370,
		-0.134102, -0.974698, 0.178831,
		-0.986400, 0.148598, 0.070235,
		36.355923, 33.927280, 46.811069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726498, 33.300377, 46.288727>,  <37.046402, 33.823257, 46.761906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726498, 33.300377, 46.288727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.440960, 33.570534, 46.362774>,  <36.269638, 33.732628, 46.407200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.440960, 33.570534, 46.362774>,  <36.726498, 33.300377, 46.288727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440960, 33.570534, 46.362774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363770, -0.131739, -0.922126,
		-0.598414, -0.725592, 0.339730,
		-0.713843, 0.675397, 0.185114,
		36.226807, 33.773151, 46.418308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043926, 33.086422, 46.058353>,  <36.726498, 33.300377, 46.288727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043926, 33.086422, 46.058353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.973938, 33.480003, 46.072311>,  <35.931946, 33.716152, 46.080685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.973938, 33.480003, 46.072311>,  <36.043926, 33.086422, 46.058353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973938, 33.480003, 46.072311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253923, -0.010856, -0.967164,
		-0.951267, -0.178086, 0.251748,
		-0.174972, 0.983955, 0.034893,
		35.921448, 33.775188, 46.082779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340881, 33.278996, 45.793751>,  <36.043926, 33.086422, 46.058353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340881, 33.278996, 45.793751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.551334, 33.615181, 45.741894>,  <35.677605, 33.816891, 45.710781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.551334, 33.615181, 45.741894>,  <35.340881, 33.278996, 45.793751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551334, 33.615181, 45.741894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319860, 0.054331, -0.945905,
		-0.787956, 0.539137, 0.297416,
		0.526132, 0.840464, -0.129638,
		35.709175, 33.867321, 45.703003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846432, 33.789948, 45.553692>,  <35.340881, 33.278996, 45.793751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846432, 33.789948, 45.553692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.190952, 33.968605, 45.456806>,  <35.397663, 34.075798, 45.398674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.190952, 33.968605, 45.456806>,  <34.846432, 33.789948, 45.553692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190952, 33.968605, 45.456806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351218, 0.178888, -0.919046,
		-0.367157, 0.876646, 0.310946,
		0.861302, 0.446644, -0.242214,
		35.449345, 34.102600, 45.384140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643059, 34.346054, 45.101032>,  <34.846432, 33.789948, 45.553692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643059, 34.346054, 45.101032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.032150, 34.293530, 45.024551>,  <35.265606, 34.262012, 44.978664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.032150, 34.293530, 45.024551>,  <34.643059, 34.346054, 45.101032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032150, 34.293530, 45.024551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164091, 0.193034, -0.967374,
		0.163940, 0.972365, 0.166221,
		0.972727, -0.131316, -0.191202,
		35.323967, 34.254135, 44.967190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890442, 34.941132, 44.697941>,  <34.643059, 34.346054, 45.101032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890442, 34.941132, 44.697941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.156654, 34.648144, 44.640606>,  <35.316383, 34.472351, 44.606205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.156654, 34.648144, 44.640606>,  <34.890442, 34.941132, 44.697941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156654, 34.648144, 44.640606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022229, 0.172510, -0.984757,
		0.746035, 0.658577, 0.098529,
		0.665536, -0.732473, -0.143338,
		35.356316, 34.428402, 44.597603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494568, 35.219658, 44.195076>,  <34.890442, 34.941132, 44.697941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494568, 35.219658, 44.195076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.493889, 34.822689, 44.145939>,  <35.493481, 34.584507, 44.116455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.493889, 34.822689, 44.145939>,  <35.494568, 35.219658, 44.195076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493889, 34.822689, 44.145939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117423, 0.122194, -0.985536,
		0.993080, 0.012752, -0.116740,
		-0.001697, -0.992424, -0.122846,
		35.493382, 34.524963, 44.109085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943954, 35.152702, 43.690331>,  <35.494568, 35.219658, 44.195076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943954, 35.152702, 43.690331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735573, 34.811268, 43.691113>,  <35.610546, 34.606407, 43.691582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735573, 34.811268, 43.691113>,  <35.943954, 35.152702, 43.690331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735573, 34.811268, 43.691113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037702, 0.020726, -0.999074,
		0.852753, -0.520543, -0.042979,
		-0.520952, -0.853584, 0.001951,
		35.579288, 34.555191, 43.691696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682590, 35.402668, 43.503117>,  <35.943954, 35.152702, 43.690331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682590, 35.402668, 43.503117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.754173, 35.764927, 43.349346>,  <36.797123, 35.982281, 43.257084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.754173, 35.764927, 43.349346>,  <36.682590, 35.402668, 43.503117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754173, 35.764927, 43.349346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520509, 0.418726, 0.744137,
		0.834892, 0.066926, 0.546330,
		0.178961, 0.905643, -0.384427,
		36.807861, 36.036621, 43.234016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017799, 35.733616, 44.026714>,  <36.682590, 35.402668, 43.503117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017799, 35.733616, 44.026714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873814, 36.012402, 43.778625>,  <36.787422, 36.179672, 43.629772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873814, 36.012402, 43.778625>,  <37.017799, 35.733616, 44.026714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873814, 36.012402, 43.778625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304113, 0.540821, 0.784237,
		0.882011, 0.470913, 0.017280,
		-0.359962, 0.696960, -0.620221,
		36.765823, 36.221489, 43.592560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290833, 36.337585, 44.190174>,  <37.017799, 35.733616, 44.026714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290833, 36.337585, 44.190174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962559, 36.431465, 43.981789>,  <36.765594, 36.487793, 43.856758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962559, 36.431465, 43.981789>,  <37.290833, 36.337585, 44.190174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962559, 36.431465, 43.981789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375324, 0.466041, 0.801210,
		0.430830, 0.853067, -0.294384,
		-0.820681, 0.234696, -0.520961,
		36.716354, 36.501873, 43.825500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117104, 36.886608, 44.553558>,  <37.290833, 36.337585, 44.190174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117104, 36.886608, 44.553558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.790916, 36.784214, 44.345909>,  <36.595203, 36.722778, 44.221321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.790916, 36.784214, 44.345909>,  <37.117104, 36.886608, 44.553558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790916, 36.784214, 44.345909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578624, 0.337906, 0.742303,
		-0.014605, 0.905698, -0.423671,
		-0.815463, -0.255988, -0.519124,
		36.546276, 36.707417, 44.190170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701294, 37.472244, 44.479065>,  <37.117104, 36.886608, 44.553558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701294, 37.472244, 44.479065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451515, 37.160454, 44.459099>,  <36.301647, 36.973381, 44.447121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451515, 37.160454, 44.459099>,  <36.701294, 37.472244, 44.479065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451515, 37.160454, 44.459099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367903, 0.237153, 0.899114,
		-0.688998, 0.579809, -0.434859,
		-0.624443, -0.779474, -0.049915,
		36.264183, 36.926613, 44.444126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024422, 37.626713, 44.607929>,  <36.701294, 37.472244, 44.479065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024422, 37.626713, 44.607929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984459, 37.239754, 44.701023>,  <35.960484, 37.007580, 44.756878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984459, 37.239754, 44.701023>,  <36.024422, 37.626713, 44.607929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984459, 37.239754, 44.701023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421788, 0.253025, 0.870674,
		-0.901173, -0.011181, -0.433314,
		-0.099904, -0.967395, 0.232735,
		35.954487, 36.949535, 44.770844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345795, 37.651066, 44.859264>,  <36.024422, 37.626713, 44.607929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345795, 37.651066, 44.859264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501694, 37.300518, 44.972450>,  <35.595234, 37.090191, 45.040363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501694, 37.300518, 44.972450>,  <35.345795, 37.651066, 44.859264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501694, 37.300518, 44.972450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260958, 0.189569, 0.946554,
		-0.883174, -0.442761, -0.154812,
		0.389750, -0.876371, 0.282964,
		35.618618, 37.037605, 45.057339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817413, 37.248703, 45.278683>,  <35.345795, 37.651066, 44.859264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817413, 37.248703, 45.278683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.172642, 37.093697, 45.377613>,  <35.385777, 37.000694, 45.436970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.172642, 37.093697, 45.377613>,  <34.817413, 37.248703, 45.278683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172642, 37.093697, 45.377613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236620, 0.075943, 0.968630,
		-0.394141, -0.918730, -0.024251,
		0.888068, -0.387515, 0.247322,
		35.439060, 36.977444, 45.451809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630390, 36.809395, 45.789577>,  <34.817413, 37.248703, 45.278683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630390, 36.809395, 45.789577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.027493, 36.852512, 45.810810>,  <35.265755, 36.878384, 45.823551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.027493, 36.852512, 45.810810>,  <34.630390, 36.809395, 45.789577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027493, 36.852512, 45.810810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071942, 0.179414, 0.981140,
		0.096231, -0.977851, 0.185868,
		0.992756, 0.107788, 0.053083,
		35.325317, 36.884850, 45.826736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931519, 36.301376, 46.350689>,  <34.630390, 36.809395, 45.789577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931519, 36.301376, 46.350689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.191624, 36.602493, 46.309776>,  <35.347687, 36.783165, 46.285229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.191624, 36.602493, 46.309776>,  <34.931519, 36.301376, 46.350689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191624, 36.602493, 46.309776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053781, 0.088685, 0.994607,
		0.757803, -0.652257, 0.017183,
		0.650264, 0.752792, -0.102285,
		35.386703, 36.828331, 46.279091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555370, 36.256561, 46.774788>,  <34.931519, 36.301376, 46.350689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555370, 36.256561, 46.774788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588383, 36.650742, 46.715363>,  <35.608189, 36.887249, 46.679710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588383, 36.650742, 46.715363>,  <35.555370, 36.256561, 46.774788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588383, 36.650742, 46.715363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501849, 0.087693, 0.860498,
		0.861009, -0.145570, -0.487312,
		0.082529, 0.985454, -0.148559,
		35.613140, 36.946377, 46.670795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181572, 36.446484, 47.058376>,  <35.555370, 36.256561, 46.774788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181572, 36.446484, 47.058376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007236, 36.806225, 47.044495>,  <35.902634, 37.022068, 47.036167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007236, 36.806225, 47.044495>,  <36.181572, 36.446484, 47.058376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007236, 36.806225, 47.044495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438087, 0.245672, 0.864711,
		0.786208, 0.361672, -0.501069,
		-0.435841, 0.899355, -0.034706,
		35.876484, 37.076031, 47.034084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701996, 36.937134, 47.243477>,  <36.181572, 36.446484, 47.058376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701996, 36.937134, 47.243477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344124, 37.103168, 47.309498>,  <36.129398, 37.202789, 47.349110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344124, 37.103168, 47.309498>,  <36.701996, 36.937134, 47.243477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344124, 37.103168, 47.309498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340866, 0.395582, 0.852834,
		0.288707, 0.819278, -0.495410,
		-0.894683, 0.415088, 0.165057,
		36.075718, 37.227695, 47.359016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809135, 37.571743, 47.449917>,  <36.701996, 36.937134, 47.243477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809135, 37.571743, 47.449917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435280, 37.522369, 47.583313>,  <36.210968, 37.492744, 47.663349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435280, 37.522369, 47.583313>,  <36.809135, 37.571743, 47.449917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435280, 37.522369, 47.583313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181739, 0.640280, 0.746333,
		-0.305653, 0.758159, -0.575996,
		-0.934637, -0.123438, 0.333490,
		36.154888, 37.485336, 47.683361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.439949, 39.532833, 48.324795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810156, 39.393307, 48.265816>,  <32.032280, 39.309589, 48.230427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810156, 39.393307, 48.265816>,  <31.439949, 39.532833, 48.324795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810156, 39.393307, 48.265816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158087, -0.002059, -0.987423,
		0.344130, 0.937187, -0.057050,
		0.925518, -0.348821, -0.147448,
		32.087811, 39.288662, 48.221581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709450, 39.923809, 47.769222>,  <31.439949, 39.532833, 48.324795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709450, 39.923809, 47.769222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.939394, 39.597076, 47.788509>,  <32.077362, 39.401035, 47.800083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.939394, 39.597076, 47.788509>,  <31.709450, 39.923809, 47.769222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939394, 39.597076, 47.788509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144327, 0.043212, -0.988586,
		0.805423, 0.575258, 0.142731,
		0.574859, -0.816830, 0.048221,
		32.111851, 39.352028, 47.802975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436745, 40.019131, 47.354622>,  <31.709450, 39.923809, 47.769222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436745, 40.019131, 47.354622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362522, 39.627834, 47.391727>,  <32.317989, 39.393055, 47.413990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362522, 39.627834, 47.391727>,  <32.436745, 40.019131, 47.354622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362522, 39.627834, 47.391727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137424, -0.119313, -0.983300,
		0.972976, -0.169712, 0.156574,
		-0.185560, -0.978244, 0.092766,
		32.306854, 39.334362, 47.419556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925529, 39.738457, 46.885654>,  <32.436745, 40.019131, 47.354622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925529, 39.738457, 46.885654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669559, 39.441486, 46.964947>,  <32.515976, 39.263302, 47.012520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669559, 39.441486, 46.964947>,  <32.925529, 39.738457, 46.885654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669559, 39.441486, 46.964947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042325, -0.291622, -0.955597,
		0.767271, -0.603121, 0.218039,
		-0.639925, -0.742430, 0.198226,
		32.477581, 39.218758, 47.024414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186665, 39.161411, 46.494129>,  <32.925529, 39.738457, 46.885654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186665, 39.161411, 46.494129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.800526, 39.081200, 46.560932>,  <32.568844, 39.033073, 46.601013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.800526, 39.081200, 46.560932>,  <33.186665, 39.161411, 46.494129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800526, 39.081200, 46.560932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110949, -0.263881, -0.958153,
		0.236205, -0.943481, 0.232489,
		-0.965348, -0.200526, 0.167009,
		32.510921, 39.021042, 46.611034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989437, 38.438671, 46.171173>,  <33.186665, 39.161411, 46.494129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989437, 38.438671, 46.171173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649776, 38.638702, 46.239124>,  <32.445980, 38.758720, 46.279896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649776, 38.638702, 46.239124>,  <32.989437, 38.438671, 46.171173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649776, 38.638702, 46.239124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402989, -0.405596, -0.820421,
		-0.341368, -0.765126, 0.545939,
		-0.849157, 0.500073, 0.169880,
		32.395031, 38.788727, 46.290089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450233, 37.977283, 46.000843>,  <32.989437, 38.438671, 46.171173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450233, 37.977283, 46.000843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287807, 38.340626, 45.960827>,  <32.190353, 38.558632, 45.936817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287807, 38.340626, 45.960827>,  <32.450233, 37.977283, 46.000843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287807, 38.340626, 45.960827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354158, -0.257336, -0.899083,
		-0.842427, -0.329656, 0.426196,
		-0.406064, 0.908353, -0.100036,
		32.165989, 38.613132, 45.930817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953979, 37.825611, 45.637043>,  <32.450233, 37.977283, 46.000843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953979, 37.825611, 45.637043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950422, 38.224480, 45.607208>,  <31.948288, 38.463802, 45.589306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950422, 38.224480, 45.607208>,  <31.953979, 37.825611, 45.637043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950422, 38.224480, 45.607208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114779, -0.075118, -0.990547,
		-0.993351, -0.000246, 0.115122,
		-0.008892, 0.997175, -0.074590,
		31.947754, 38.523632, 45.584831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338751, 38.054153, 45.269852>,  <31.953979, 37.825611, 45.637043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338751, 38.054153, 45.269852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.607470, 38.346363, 45.220810>,  <31.768700, 38.521687, 45.191387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.607470, 38.346363, 45.220810>,  <31.338751, 38.054153, 45.269852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607470, 38.346363, 45.220810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056322, -0.114657, -0.991807,
		-0.738593, 0.673196, -0.035881,
		0.671794, 0.730521, -0.122600,
		31.809008, 38.565521, 45.184029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070292, 38.535488, 44.767651>,  <31.338751, 38.054153, 45.269852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070292, 38.535488, 44.767651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466635, 38.589344, 44.771107>,  <31.704441, 38.621658, 44.773182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466635, 38.589344, 44.771107>,  <31.070292, 38.535488, 44.767651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466635, 38.589344, 44.771107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008952, -0.001676, -0.999959,
		-0.134624, 0.990893, -0.002866,
		0.990856, 0.134644, 0.008645,
		31.763891, 38.629738, 44.773701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137960, 38.864616, 44.155083>,  <31.070292, 38.535488, 44.767651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137960, 38.864616, 44.155083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.512939, 38.761681, 44.248867>,  <31.737926, 38.699921, 44.305138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.512939, 38.761681, 44.248867>,  <31.137960, 38.864616, 44.155083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512939, 38.761681, 44.248867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232715, -0.037673, -0.971815,
		0.258915, 0.965588, 0.024569,
		0.937447, -0.257335, 0.234461,
		31.794174, 38.684479, 44.319206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584820, 39.356808, 43.907215>,  <31.137960, 38.864616, 44.155083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584820, 39.356808, 43.907215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802189, 39.021194, 43.917885>,  <31.932610, 38.819824, 43.924286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802189, 39.021194, 43.917885>,  <31.584820, 39.356808, 43.907215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802189, 39.021194, 43.917885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218876, 0.110939, -0.969425,
		0.810423, 0.532646, 0.243932,
		0.543423, -0.839035, 0.026676,
		31.965216, 38.769485, 43.925888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270611, 39.419422, 43.531765>,  <31.584820, 39.356808, 43.907215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270611, 39.419422, 43.531765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193443, 39.028419, 43.565853>,  <32.147144, 38.793819, 43.586308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193443, 39.028419, 43.565853>,  <32.270611, 39.419422, 43.531765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193443, 39.028419, 43.565853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238756, -0.131006, -0.962202,
		0.951724, -0.165278, 0.258659,
		-0.192917, -0.977507, 0.085221,
		32.135567, 38.735168, 43.591419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839203, 39.015419, 43.147007>,  <32.270611, 39.419422, 43.531765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839203, 39.015419, 43.147007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542633, 38.749847, 43.185951>,  <32.364689, 38.590504, 43.209316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542633, 38.749847, 43.185951>,  <32.839203, 39.015419, 43.147007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542633, 38.749847, 43.185951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126317, -0.280583, -0.951481,
		0.659036, -0.693157, 0.291899,
		-0.741428, -0.663932, 0.097357,
		32.320206, 38.550667, 43.215157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495575, 38.799454, 43.528912>,  <32.839203, 39.015419, 43.147007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495575, 38.799454, 43.528912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.774067, 39.081837, 43.476925>,  <33.941162, 39.251266, 43.445732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.774067, 39.081837, 43.476925>,  <33.495575, 38.799454, 43.528912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774067, 39.081837, 43.476925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081410, 0.257545, 0.962831,
		0.713192, -0.659767, 0.236782,
		0.696225, 0.705959, -0.129967,
		33.982933, 39.293625, 43.437935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925522, 38.796825, 44.102173>,  <33.495575, 38.799454, 43.528912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925522, 38.796825, 44.102173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.011364, 39.164818, 43.970970>,  <34.062870, 39.385612, 43.892250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.011364, 39.164818, 43.970970>,  <33.925522, 38.796825, 44.102173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011364, 39.164818, 43.970970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048050, 0.325476, 0.944329,
		0.975518, -0.218422, 0.025645,
		0.214609, 0.919977, -0.328003,
		34.075748, 39.440811, 43.872570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509609, 38.947243, 44.470264>,  <33.925522, 38.796825, 44.102173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509609, 38.947243, 44.470264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385418, 39.308903, 44.352879>,  <34.310905, 39.525898, 44.282448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385418, 39.308903, 44.352879>,  <34.509609, 38.947243, 44.470264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385418, 39.308903, 44.352879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103152, 0.338948, 0.935133,
		0.944968, 0.260063, -0.198499,
		-0.310475, 0.904147, -0.293469,
		34.292274, 39.580147, 44.264839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991951, 39.400253, 44.745094>,  <34.509609, 38.947243, 44.470264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991951, 39.400253, 44.745094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669094, 39.625340, 44.673676>,  <34.475380, 39.760391, 44.630825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669094, 39.625340, 44.673676>,  <34.991951, 39.400253, 44.745094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669094, 39.625340, 44.673676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032772, 0.259256, 0.965253,
		0.589450, 0.784945, -0.190814,
		-0.807140, 0.562715, -0.178543,
		34.426952, 39.794155, 44.620113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270817, 40.022694, 44.763153>,  <34.991951, 39.400253, 44.745094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270817, 40.022694, 44.763153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874832, 40.039021, 44.817268>,  <34.637241, 40.048817, 44.849735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.874832, 40.039021, 44.817268>,  <35.270817, 40.022694, 44.763153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874832, 40.039021, 44.817268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140367, 0.394334, 0.908184,
		-0.016275, 0.918060, -0.396107,
		-0.989966, 0.040820, 0.135283,
		34.577843, 40.051266, 44.857853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125862, 40.722935, 44.870468>,  <35.270817, 40.022694, 44.763153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125862, 40.722935, 44.870468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814796, 40.527294, 45.028465>,  <34.628159, 40.409908, 45.123264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814796, 40.527294, 45.028465>,  <35.125862, 40.722935, 44.870468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814796, 40.527294, 45.028465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073545, 0.553193, 0.829800,
		-0.624365, 0.674355, -0.394226,
		-0.777663, -0.489105, 0.394990,
		34.581497, 40.380562, 45.146961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906460, 41.162663, 45.331348>,  <35.125862, 40.722935, 44.870468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906460, 41.162663, 45.331348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.690941, 40.840633, 45.430588>,  <34.561630, 40.647415, 45.490131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.690941, 40.840633, 45.430588>,  <34.906460, 41.162663, 45.331348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690941, 40.840633, 45.430588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031919, 0.313799, 0.948953,
		-0.841831, 0.503373, -0.194771,
		-0.538796, -0.805075, 0.248099,
		34.529301, 40.599110, 45.505016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392570, 41.427113, 45.714550>,  <34.906460, 41.162663, 45.331348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392570, 41.427113, 45.714550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.403290, 41.044277, 45.829971>,  <34.409721, 40.814575, 45.899223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.403290, 41.044277, 45.829971>,  <34.392570, 41.427113, 45.714550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403290, 41.044277, 45.829971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059816, 0.289674, 0.955254,
		-0.997850, -0.008337, 0.065011,
		0.026796, -0.957089, 0.288552,
		34.411327, 40.757149, 45.916538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817268, 41.261997, 46.200943>,  <34.392570, 41.427113, 45.714550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817268, 41.261997, 46.200943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.114258, 41.000816, 46.260792>,  <34.292450, 40.844109, 46.296703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.114258, 41.000816, 46.260792>,  <33.817268, 41.261997, 46.200943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114258, 41.000816, 46.260792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056937, 0.161041, 0.985304,
		-0.667451, -0.740081, 0.082392,
		0.742474, -0.652951, 0.149626,
		34.336998, 40.804932, 46.305679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612793, 40.846985, 46.742882>,  <33.817268, 41.261997, 46.200943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612793, 40.846985, 46.742882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.009609, 40.797726, 46.732365>,  <34.247700, 40.768169, 46.726055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.009609, 40.797726, 46.732365>,  <33.612793, 40.846985, 46.742882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009609, 40.797726, 46.732365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014442, -0.096116, 0.995265,
		-0.125104, -0.987721, -0.093572,
		0.992039, -0.123161, -0.026289,
		34.307220, 40.760780, 46.724480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736507, 40.365231, 47.184940>,  <33.612793, 40.846985, 46.742882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736507, 40.365231, 47.184940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106705, 40.506996, 47.131485>,  <34.328823, 40.592056, 47.099411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106705, 40.506996, 47.131485>,  <33.736507, 40.365231, 47.184940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106705, 40.506996, 47.131485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156425, -0.036288, 0.987023,
		0.344967, -0.934383, -0.089024,
		0.925488, 0.354416, -0.133643,
		34.384350, 40.613319, 47.091393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145943, 39.956371, 47.594265>,  <33.736507, 40.365231, 47.184940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145943, 39.956371, 47.594265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356003, 40.288410, 47.519272>,  <34.482040, 40.487633, 47.474277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356003, 40.288410, 47.519272>,  <34.145943, 39.956371, 47.594265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356003, 40.288410, 47.519272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313911, 0.015813, 0.949321,
		0.790995, -0.557392, -0.252273,
		0.525155, 0.830099, -0.187479,
		34.513550, 40.537441, 47.463028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737610, 39.846004, 47.913872>,  <34.145943, 39.956371, 47.594265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737610, 39.846004, 47.913872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737415, 40.241795, 47.855999>,  <34.737297, 40.479271, 47.821274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.737415, 40.241795, 47.855999>,  <34.737610, 39.846004, 47.913872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737415, 40.241795, 47.855999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249714, 0.140221, 0.958113,
		0.968320, -0.035665, -0.247155,
		-0.000486, 0.989478, -0.144685,
		34.737270, 40.538639, 47.812595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410198, 40.131676, 47.981518>,  <34.737610, 39.846004, 47.913872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410198, 40.131676, 47.981518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158291, 40.435219, 48.047882>,  <35.007145, 40.617344, 48.087700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158291, 40.435219, 48.047882>,  <35.410198, 40.131676, 47.981518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158291, 40.435219, 48.047882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394047, 0.128041, 0.910128,
		0.669412, 0.638549, -0.379661,
		-0.629773, 0.758855, 0.165906,
		34.969360, 40.662876, 48.097652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149239, 40.423267, 48.042469>,  <35.410198, 40.131676, 47.981518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149239, 40.423267, 48.042469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547810, 40.455650, 48.052059>,  <36.786953, 40.475082, 48.057812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547810, 40.455650, 48.052059>,  <36.149239, 40.423267, 48.042469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547810, 40.455650, 48.052059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015070, 0.108877, -0.993941,
		-0.083080, 0.990753, 0.107268,
		0.996429, 0.080960, 0.023976,
		36.846737, 40.479939, 48.059254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279179, 40.910633, 47.539570>,  <36.149239, 40.423267, 48.042469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279179, 40.910633, 47.539570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621807, 40.714302, 47.603279>,  <36.827385, 40.596504, 47.641506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621807, 40.714302, 47.603279>,  <36.279179, 40.910633, 47.539570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621807, 40.714302, 47.603279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256848, 0.137837, -0.956572,
		0.447561, 0.860283, 0.244136,
		0.856574, -0.490830, 0.159272,
		36.878780, 40.567055, 47.651062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794949, 41.235584, 47.270916>,  <36.279179, 40.910633, 47.539570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794949, 41.235584, 47.270916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.930180, 40.859138, 47.270443>,  <37.011318, 40.633270, 47.270157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.930180, 40.859138, 47.270443>,  <36.794949, 41.235584, 47.270916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930180, 40.859138, 47.270443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333483, 0.120973, -0.934962,
		0.880053, 0.315693, 0.354745,
		0.338076, -0.941118, -0.001184,
		37.031601, 40.576801, 47.270088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229271, 41.298008, 46.709518>,  <36.794949, 41.235584, 47.270916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229271, 41.298008, 46.709518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215141, 40.904373, 46.779171>,  <37.206665, 40.668190, 46.820961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215141, 40.904373, 46.779171>,  <37.229271, 41.298008, 46.709518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215141, 40.904373, 46.779171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357946, -0.175138, -0.917171,
		0.933074, 0.029932, 0.358437,
		-0.035323, -0.984089, 0.174131,
		37.204544, 40.609146, 46.831409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880272, 40.930836, 46.573780>,  <37.229271, 41.298008, 46.709518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880272, 40.930836, 46.573780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570122, 40.685230, 46.514751>,  <37.384033, 40.537865, 46.479332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570122, 40.685230, 46.514751>,  <37.880272, 40.930836, 46.573780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570122, 40.685230, 46.514751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335996, -0.203256, -0.919670,
		0.534696, -0.762674, 0.363907,
		-0.775375, -0.614015, -0.147575,
		37.337509, 40.501026, 46.470478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111736, 40.571281, 46.025028>,  <37.880272, 40.930836, 46.573780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111736, 40.571281, 46.025028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.737045, 40.431267, 46.025883>,  <37.512230, 40.347256, 46.026394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.737045, 40.431267, 46.025883>,  <38.111736, 40.571281, 46.025028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737045, 40.431267, 46.025883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026410, -0.076761, -0.996700,
		0.349050, -0.933584, 0.081149,
		-0.936732, -0.350041, 0.002138,
		37.456024, 40.326256, 46.026524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119030, 39.853416, 45.694298>,  <38.111736, 40.571281, 46.025028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119030, 39.853416, 45.694298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751743, 40.009907, 45.669582>,  <37.531372, 40.103802, 45.654755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751743, 40.009907, 45.669582>,  <38.119030, 39.853416, 45.694298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751743, 40.009907, 45.669582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046303, -0.048890, -0.997730,
		-0.393361, -0.918994, 0.026776,
		-0.918217, 0.391228, -0.061784,
		37.476276, 40.127274, 45.651047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813446, 39.412167, 45.256645>,  <38.119030, 39.853416, 45.694298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813446, 39.412167, 45.256645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.618881, 39.761421, 45.243813>,  <37.502144, 39.970974, 45.236115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.618881, 39.761421, 45.243813>,  <37.813446, 39.412167, 45.256645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618881, 39.761421, 45.243813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102177, 0.020379, -0.994557,
		-0.867734, -0.487044, -0.099127,
		-0.486414, 0.873140, -0.032081,
		37.472958, 40.023361, 45.234188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192745, 39.346882, 44.896393>,  <37.813446, 39.412167, 45.256645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192745, 39.346882, 44.896393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.270676, 39.738895, 44.880539>,  <37.317436, 39.974106, 44.871029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.270676, 39.738895, 44.880539>,  <37.192745, 39.346882, 44.896393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270676, 39.738895, 44.880539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035673, -0.033298, -0.998809,
		-0.980188, 0.196012, 0.028473,
		0.194830, 0.980036, -0.039631,
		37.329124, 40.032906, 44.868649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859463, 39.612034, 44.254524>,  <37.192745, 39.346882, 44.896393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859463, 39.612034, 44.254524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135410, 39.885136, 44.350796>,  <37.300980, 40.048996, 44.408558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135410, 39.885136, 44.350796>,  <36.859463, 39.612034, 44.254524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135410, 39.885136, 44.350796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312652, 0.018857, -0.949681,
		-0.652937, 0.730405, -0.200455,
		0.689871, 0.682754, 0.240675,
		37.342373, 40.089962, 44.422997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662945, 40.219662, 43.899635>,  <36.859463, 39.612034, 44.254524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662945, 40.219662, 43.899635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054489, 40.260700, 43.970406>,  <37.289417, 40.285324, 44.012867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054489, 40.260700, 43.970406>,  <36.662945, 40.219662, 43.899635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054489, 40.260700, 43.970406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187267, -0.101812, -0.977019,
		-0.082227, 0.989499, -0.118873,
		0.978862, 0.102599, 0.176928,
		37.348148, 40.291481, 44.023483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870155, 40.608719, 43.487000>,  <36.662945, 40.219662, 43.899635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870155, 40.608719, 43.487000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228203, 40.458153, 43.582565>,  <37.443031, 40.367813, 43.639904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228203, 40.458153, 43.582565>,  <36.870155, 40.608719, 43.487000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228203, 40.458153, 43.582565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223967, -0.083720, -0.970994,
		0.385496, 0.922662, 0.009365,
		0.895115, -0.376412, 0.238919,
		37.496738, 40.345230, 43.654240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182549, 40.788658, 42.964252>,  <36.870155, 40.608719, 43.487000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182549, 40.788658, 42.964252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402058, 40.497475, 43.128658>,  <37.533764, 40.322765, 43.227303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402058, 40.497475, 43.128658>,  <37.182549, 40.788658, 42.964252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402058, 40.497475, 43.128658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254527, -0.322819, -0.911594,
		0.796283, 0.604870, 0.008131,
		0.548771, -0.727956, 0.411011,
		37.566689, 40.279087, 43.251961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862122, 40.696129, 42.542603>,  <37.182549, 40.788658, 42.964252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862122, 40.696129, 42.542603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.824360, 40.352711, 42.744194>,  <37.801701, 40.146660, 42.865150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.824360, 40.352711, 42.744194>,  <37.862122, 40.696129, 42.542603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824360, 40.352711, 42.744194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147067, -0.512713, -0.845870,
		0.984611, -0.005737, 0.174666,
		-0.094406, -0.858541, 0.503979,
		37.796040, 40.095150, 42.895390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.505445, 32.931110, 44.043236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.783955, 33.183800, 43.906925>,  <26.951059, 33.335415, 43.825138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.783955, 33.183800, 43.906925>,  <26.505445, 32.931110, 44.043236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783955, 33.183800, 43.906925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556594, 0.175416, -0.812054,
		-0.453218, 0.755084, 0.473752,
		0.696273, 0.631725, -0.340773,
		26.992836, 33.373318, 43.804691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196630, 33.587959, 43.765820>,  <26.505445, 32.931110, 44.043236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196630, 33.587959, 43.765820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551327, 33.545414, 43.585873>,  <26.764145, 33.519886, 43.477905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551327, 33.545414, 43.585873>,  <26.196630, 33.587959, 43.765820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551327, 33.545414, 43.585873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397261, 0.322283, -0.859254,
		0.236375, 0.940649, 0.243528,
		0.886741, -0.106362, -0.449863,
		26.817348, 33.513504, 43.450912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041414, 34.013847, 43.192295>,  <26.196630, 33.587959, 43.765820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041414, 34.013847, 43.192295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380533, 33.827358, 43.091198>,  <26.584003, 33.715466, 43.030540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380533, 33.827358, 43.091198>,  <26.041414, 34.013847, 43.192295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380533, 33.827358, 43.091198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162873, 0.224656, -0.960730,
		0.504693, 0.855668, 0.114527,
		0.847796, -0.466220, -0.252747,
		26.634872, 33.687492, 43.015373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346308, 34.430969, 42.708473>,  <26.041414, 34.013847, 43.192295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346308, 34.430969, 42.708473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.532202, 34.079369, 42.665817>,  <26.643738, 33.868408, 42.640224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.532202, 34.079369, 42.665817>,  <26.346308, 34.430969, 42.708473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532202, 34.079369, 42.665817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056822, 0.149797, -0.987083,
		0.883624, 0.452674, 0.119563,
		0.464736, -0.879004, -0.106642,
		26.671623, 33.815666, 42.633823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946398, 34.496143, 42.331551>,  <26.346308, 34.430969, 42.708473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946398, 34.496143, 42.331551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823994, 34.119469, 42.275574>,  <26.750551, 33.893463, 42.241989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823994, 34.119469, 42.275574>,  <26.946398, 34.496143, 42.331551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823994, 34.119469, 42.275574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131237, 0.187316, -0.973493,
		0.942940, -0.279531, -0.180905,
		-0.306008, -0.941687, -0.139943,
		26.732191, 33.836964, 42.233589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127712, 34.406437, 41.596622>,  <26.946398, 34.496143, 42.331551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127712, 34.406437, 41.596622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898436, 34.096153, 41.702251>,  <26.760870, 33.909985, 41.765629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898436, 34.096153, 41.702251>,  <27.127712, 34.406437, 41.596622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898436, 34.096153, 41.702251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231300, -0.155995, -0.960295,
		0.786100, -0.611511, -0.090006,
		-0.573191, -0.775706, 0.264071,
		26.726479, 33.863441, 41.781471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210697, 33.814480, 41.190056>,  <27.127712, 34.406437, 41.596622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210697, 33.814480, 41.190056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851542, 33.687843, 41.312412>,  <26.636049, 33.611862, 41.385826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851542, 33.687843, 41.312412>,  <27.210697, 33.814480, 41.190056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851542, 33.687843, 41.312412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327375, 0.015640, -0.944765,
		0.294321, -0.948433, -0.117687,
		-0.897887, -0.316592, 0.305890,
		26.582176, 33.592865, 41.404179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967659, 33.040977, 40.989788>,  <27.210697, 33.814480, 41.190056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967659, 33.040977, 40.989788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664867, 33.295582, 41.048889>,  <26.483192, 33.448345, 41.084351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664867, 33.295582, 41.048889>,  <26.967659, 33.040977, 40.989788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664867, 33.295582, 41.048889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320544, -0.164672, -0.932810,
		-0.569417, -0.753479, 0.328685,
		-0.756978, 0.636516, 0.147756,
		26.437775, 33.486538, 41.093216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448772, 32.770844, 40.619278>,  <26.967659, 33.040977, 40.989788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448772, 32.770844, 40.619278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.309250, 33.140202, 40.683376>,  <26.225536, 33.361816, 40.721836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.309250, 33.140202, 40.683376>,  <26.448772, 32.770844, 40.619278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309250, 33.140202, 40.683376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409009, 0.003853, -0.912522,
		-0.843235, -0.383834, 0.376332,
		-0.348807, 0.923394, 0.160241,
		26.204607, 33.417221, 40.731449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850222, 32.839653, 40.317184>,  <26.448772, 32.770844, 40.619278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850222, 32.839653, 40.317184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.880978, 33.233494, 40.379974>,  <25.899431, 33.469799, 40.417648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.880978, 33.233494, 40.379974>,  <25.850222, 32.839653, 40.317184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880978, 33.233494, 40.379974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450341, 0.174762, -0.875586,
		-0.889539, -0.003367, 0.456846,
		0.076891, 0.984605, 0.156974,
		25.904045, 33.528873, 40.427067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176380, 33.098526, 40.117695>,  <25.850222, 32.839653, 40.317184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176380, 33.098526, 40.117695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.430336, 33.407211, 40.102867>,  <25.582710, 33.592422, 40.093971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.430336, 33.407211, 40.102867>,  <25.176380, 33.098526, 40.117695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430336, 33.407211, 40.102867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348539, 0.243265, -0.905176,
		-0.689519, 0.587606, 0.423418,
		0.634889, 0.771714, -0.037068,
		25.620802, 33.638725, 40.091747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864225, 33.614357, 39.879951>,  <25.176380, 33.098526, 40.117695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864225, 33.614357, 39.879951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.247519, 33.686073, 39.790829>,  <25.477495, 33.729103, 39.737354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.247519, 33.686073, 39.790829>,  <24.864225, 33.614357, 39.879951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247519, 33.686073, 39.790829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262876, 0.245390, -0.933102,
		-0.112618, 0.952702, 0.282271,
		0.958235, 0.179286, -0.222807,
		25.534988, 33.739861, 39.723988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852734, 34.316433, 39.547798>,  <24.864225, 33.614357, 39.879951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852734, 34.316433, 39.547798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.190266, 34.133690, 39.435211>,  <25.392786, 34.024044, 39.367661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.190266, 34.133690, 39.435211>,  <24.852734, 34.316433, 39.547798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190266, 34.133690, 39.435211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062974, 0.436597, -0.897451,
		0.532899, 0.775023, 0.339644,
		0.843832, -0.456862, -0.281468,
		25.443415, 33.996632, 39.350769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212940, 34.735146, 39.008533>,  <24.852734, 34.316433, 39.547798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212940, 34.735146, 39.008533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.458830, 34.423721, 38.958015>,  <25.606363, 34.236866, 38.927704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.458830, 34.423721, 38.958015>,  <25.212940, 34.735146, 39.008533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458830, 34.423721, 38.958015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018686, 0.145704, -0.989152,
		0.788521, 0.610415, 0.075020,
		0.614724, -0.778565, -0.126297,
		25.643248, 34.190151, 38.920128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861565, 34.974144, 38.644821>,  <25.212940, 34.735146, 39.008533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861565, 34.974144, 38.644821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.825668, 34.580044, 38.586540>,  <25.804131, 34.343582, 38.551571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.825668, 34.580044, 38.586540>,  <25.861565, 34.974144, 38.644821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825668, 34.580044, 38.586540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008638, 0.145514, -0.989318,
		0.995928, -0.090039, -0.004548,
		-0.089739, -0.985250, -0.145700,
		25.798746, 34.284470, 38.542831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327003, 34.816494, 38.024685>,  <25.861565, 34.974144, 38.644821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327003, 34.816494, 38.024685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126919, 34.471611, 38.056648>,  <26.006868, 34.264679, 38.075829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126919, 34.471611, 38.056648>,  <26.327003, 34.816494, 38.024685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126919, 34.471611, 38.056648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005823, -0.088934, -0.996021,
		0.865885, -0.498684, 0.039465,
		-0.500209, -0.862209, 0.079911,
		25.976856, 34.212948, 38.080620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732388, 34.203060, 37.747303>,  <26.327003, 34.816494, 38.024685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732388, 34.203060, 37.747303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350361, 34.090458, 37.710197>,  <26.121145, 34.022896, 37.687935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350361, 34.090458, 37.710197>,  <26.732388, 34.203060, 37.747303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350361, 34.090458, 37.710197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109717, -0.045043, -0.992942,
		0.275339, -0.958502, 0.073904,
		-0.955066, -0.281504, -0.092762,
		26.063841, 34.006008, 37.682369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833426, 33.710388, 37.245773>,  <26.732388, 34.203060, 37.747303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833426, 33.710388, 37.245773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.440485, 33.783978, 37.259277>,  <26.204720, 33.828129, 37.267380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.440485, 33.783978, 37.259277>,  <26.833426, 33.710388, 37.245773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440485, 33.783978, 37.259277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070064, -0.194571, -0.978383,
		-0.173409, -0.963485, 0.204026,
		-0.982354, 0.183955, 0.033765,
		26.145779, 33.839169, 37.269405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159798, 34.235489, 36.775532>,  <26.833426, 33.710388, 37.245773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159798, 34.235489, 36.775532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503899, 34.439140, 36.786545>,  <27.710360, 34.561329, 36.793152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503899, 34.439140, 36.786545>,  <27.159798, 34.235489, 36.775532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503899, 34.439140, 36.786545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436985, -0.764030, 0.474659,
		0.262701, -0.396293, -0.879739,
		0.860251, 0.509126, 0.027537,
		27.761974, 34.591877, 36.794807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661022, 33.808334, 36.496479>,  <27.159798, 34.235489, 36.775532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661022, 33.808334, 36.496479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782738, 34.081490, 36.762131>,  <27.855768, 34.245384, 36.921520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782738, 34.081490, 36.762131>,  <27.661022, 33.808334, 36.496479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782738, 34.081490, 36.762131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346772, -0.728762, 0.590470,
		0.887218, 0.050626, -0.458564,
		0.304291, 0.682893, 0.664127,
		27.874025, 34.286358, 36.961369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290199, 33.564018, 36.740452>,  <27.661022, 33.808334, 36.496479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290199, 33.564018, 36.740452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150850, 33.818398, 37.015903>,  <28.067242, 33.971024, 37.181175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150850, 33.818398, 37.015903>,  <28.290199, 33.564018, 36.740452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150850, 33.818398, 37.015903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445160, -0.534274, 0.718599,
		0.824906, 0.556891, -0.096970,
		-0.348372, 0.635944, 0.688631,
		28.046339, 34.009182, 37.222492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794840, 33.824142, 37.108826>,  <28.290199, 33.564018, 36.740452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794840, 33.824142, 37.108826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475323, 33.846676, 37.348412>,  <28.283613, 33.860195, 37.492161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475323, 33.846676, 37.348412>,  <28.794840, 33.824142, 37.108826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475323, 33.846676, 37.348412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545179, -0.353194, 0.760285,
		0.254381, 0.933853, 0.251416,
		-0.798793, 0.056335, 0.598963,
		28.235685, 33.863575, 37.528099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127798, 33.899960, 37.740314>,  <28.794840, 33.824142, 37.108826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127798, 33.899960, 37.740314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754911, 33.790096, 37.834579>,  <28.531179, 33.724178, 37.891140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754911, 33.790096, 37.834579>,  <29.127798, 33.899960, 37.740314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754911, 33.790096, 37.834579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286504, -0.162239, 0.944242,
		-0.221113, 0.947755, 0.229933,
		-0.932215, -0.274661, 0.235663,
		28.475246, 33.707699, 37.905277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157705, 34.075092, 38.393990>,  <29.127798, 33.899960, 37.740314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157705, 34.075092, 38.393990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843630, 33.828804, 38.367531>,  <28.655186, 33.681030, 38.351654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843630, 33.828804, 38.367531>,  <29.157705, 34.075092, 38.393990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843630, 33.828804, 38.367531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180188, -0.329354, 0.926854,
		-0.592464, 0.715835, 0.369549,
		-0.785187, -0.615716, -0.066146,
		28.608074, 33.644089, 38.347687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734617, 34.168137, 39.054607>,  <29.157705, 34.075092, 38.393990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734617, 34.168137, 39.054607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656281, 33.820847, 38.872253>,  <28.609278, 33.612473, 38.762840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656281, 33.820847, 38.872253>,  <28.734617, 34.168137, 39.054607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656281, 33.820847, 38.872253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181665, -0.488964, 0.853177,
		-0.963662, 0.084269, 0.253485,
		-0.195842, -0.868224, -0.455887,
		28.597528, 33.560379, 38.735489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232759, 33.926098, 39.479115>,  <28.734617, 34.168137, 39.054607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232759, 33.926098, 39.479115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403091, 33.616879, 39.291046>,  <28.505291, 33.431347, 39.178204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403091, 33.616879, 39.291046>,  <28.232759, 33.926098, 39.479115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403091, 33.616879, 39.291046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037861, -0.503960, 0.862897,
		-0.904010, -0.385250, -0.185334,
		0.425832, -0.773051, -0.470170,
		28.530842, 33.384964, 39.149994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871965, 33.358006, 39.680267>,  <28.232759, 33.926098, 39.479115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871965, 33.358006, 39.680267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227541, 33.214134, 39.566833>,  <28.440886, 33.127811, 39.498772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227541, 33.214134, 39.566833>,  <27.871965, 33.358006, 39.680267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227541, 33.214134, 39.566833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009840, -0.604000, 0.796924,
		-0.457922, -0.711206, -0.533379,
		0.888938, -0.359680, -0.283583,
		28.494223, 33.106232, 39.481758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875492, 32.673210, 39.700996>,  <27.871965, 33.358006, 39.680267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875492, 32.673210, 39.700996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270578, 32.734077, 39.715229>,  <28.507629, 32.770599, 39.723766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270578, 32.734077, 39.715229>,  <27.875492, 32.673210, 39.700996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270578, 32.734077, 39.715229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086519, -0.722071, 0.686388,
		0.130138, -0.674877, -0.726365,
		0.987714, 0.152170, 0.035579,
		28.566893, 32.779728, 39.725903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200500, 32.014103, 39.915169>,  <27.875492, 32.673210, 39.700996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200500, 32.014103, 39.915169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496876, 32.276028, 39.974815>,  <28.674700, 32.433182, 40.010605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496876, 32.276028, 39.974815>,  <28.200500, 32.014103, 39.915169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496876, 32.276028, 39.974815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387392, -0.598111, 0.701563,
		0.548580, -0.462047, -0.696831,
		0.740937, 0.654810, 0.149119,
		28.719156, 32.472469, 40.019550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804470, 31.604967, 39.915314>,  <28.200500, 32.014103, 39.915169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804470, 31.604967, 39.915314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911089, 31.933809, 40.116547>,  <28.975060, 32.131115, 40.237286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911089, 31.933809, 40.116547>,  <28.804470, 31.604967, 39.915314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911089, 31.933809, 40.116547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420008, -0.568876, 0.707087,
		0.867495, 0.022830, -0.496923,
		0.266545, 0.822106, 0.503086,
		28.991053, 32.180443, 40.267471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511023, 31.507509, 40.146946>,  <28.804470, 31.604967, 39.915314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511023, 31.507509, 40.146946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345661, 31.790838, 40.375813>,  <29.246445, 31.960836, 40.513134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345661, 31.790838, 40.375813>,  <29.511023, 31.507509, 40.146946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345661, 31.790838, 40.375813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388712, -0.430955, 0.814359,
		0.823407, 0.559068, -0.097175,
		-0.413404, 0.708323, 0.572168,
		29.221640, 32.003334, 40.547462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010469, 31.572609, 40.653893>,  <29.511023, 31.507509, 40.146946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010469, 31.572609, 40.653893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693760, 31.757479, 40.813637>,  <29.503735, 31.868401, 40.909485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693760, 31.757479, 40.813637>,  <30.010469, 31.572609, 40.653893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693760, 31.757479, 40.813637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172811, -0.457613, 0.872196,
		0.585861, 0.759596, 0.282457,
		-0.791773, 0.462174, 0.399364,
		29.456228, 31.896132, 40.933445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293200, 31.861183, 41.161835>,  <30.010469, 31.572609, 40.653893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293200, 31.861183, 41.161835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904451, 31.839029, 41.253395>,  <29.671202, 31.825737, 41.308331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904451, 31.839029, 41.253395>,  <30.293200, 31.861183, 41.161835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904451, 31.839029, 41.253395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232781, -0.373444, 0.897971,
		0.035748, 0.925998, 0.375832,
		-0.971872, -0.055386, 0.228905,
		29.612890, 31.822414, 41.322067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122402, 32.136402, 41.921917>,  <30.293200, 31.861183, 41.161835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122402, 32.136402, 41.921917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813076, 31.904226, 41.819874>,  <29.627481, 31.764921, 41.758648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.813076, 31.904226, 41.819874>,  <30.122402, 32.136402, 41.921917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813076, 31.904226, 41.819874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007057, -0.394456, 0.918887,
		-0.633985, 0.712388, 0.300943,
		-0.773313, -0.580437, -0.255106,
		29.581081, 31.730095, 41.743343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682386, 32.175526, 42.498356>,  <30.122402, 32.136402, 41.921917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682386, 32.175526, 42.498356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.531883, 31.868900, 42.290199>,  <29.441582, 31.684925, 42.165306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.531883, 31.868900, 42.290199>,  <29.682386, 32.175526, 42.498356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531883, 31.868900, 42.290199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035954, -0.549160, 0.834943,
		-0.925817, 0.332864, 0.179064,
		-0.376258, -0.766567, -0.520390,
		29.419006, 31.638931, 42.134083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332340, 31.896856, 42.939346>,  <29.682386, 32.175526, 42.498356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332340, 31.896856, 42.939346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.393761, 31.605095, 42.672695>,  <29.430613, 31.430038, 42.512703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.393761, 31.605095, 42.672695>,  <29.332340, 31.896856, 42.939346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393761, 31.605095, 42.672695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039892, -0.669503, 0.741737,
		-0.987335, -0.140488, -0.073706,
		0.153551, -0.729403, -0.666628,
		29.439827, 31.386274, 42.472706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814741, 31.398792, 42.986244>,  <29.332340, 31.896856, 42.939346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814741, 31.398792, 42.986244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135756, 31.220026, 42.828156>,  <29.328363, 31.112766, 42.733303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135756, 31.220026, 42.828156>,  <28.814741, 31.398792, 42.986244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135756, 31.220026, 42.828156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002258, -0.660177, 0.751107,
		-0.596599, -0.603683, -0.528807,
		0.802537, -0.446916, -0.395224,
		29.376516, 31.085951, 42.709587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666052, 30.746193, 43.112984>,  <28.814741, 31.398792, 42.986244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666052, 30.746193, 43.112984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061632, 30.759804, 43.055267>,  <29.298981, 30.767969, 43.020638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061632, 30.759804, 43.055267>,  <28.666052, 30.746193, 43.112984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061632, 30.759804, 43.055267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127726, -0.689626, 0.712813,
		-0.075250, -0.723366, -0.686352,
		0.988951, 0.034026, -0.144287,
		29.358318, 30.770012, 43.011982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941948, 30.180056, 43.543022>,  <28.666052, 30.746193, 43.112984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941948, 30.180056, 43.543022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294113, 30.325001, 43.420670>,  <29.505413, 30.411968, 43.347256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294113, 30.325001, 43.420670>,  <28.941948, 30.180056, 43.543022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294113, 30.325001, 43.420670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472274, -0.611824, 0.634530,
		0.042783, -0.703110, -0.709792,
		0.880413, 0.362364, -0.305885,
		29.558237, 30.433710, 43.328903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395493, 29.652798, 43.552681>,  <28.941948, 30.180056, 43.543022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395493, 29.652798, 43.552681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653141, 29.958685, 43.559734>,  <29.807730, 30.142218, 43.563965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653141, 29.958685, 43.559734>,  <29.395493, 29.652798, 43.552681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653141, 29.958685, 43.559734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560230, -0.487324, 0.669819,
		0.520815, -0.421568, -0.742315,
		0.644123, 0.764719, 0.017631,
		29.846378, 30.188101, 43.565025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006002, 29.392559, 43.332520>,  <29.395493, 29.652798, 43.552681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006002, 29.392559, 43.332520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.090477, 29.711666, 43.558426>,  <30.141161, 29.903131, 43.693970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.090477, 29.711666, 43.558426>,  <30.006002, 29.392559, 43.332520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090477, 29.711666, 43.558426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521371, -0.580680, 0.625287,
		0.826785, 0.162404, -0.538564,
		0.211184, 0.797769, 0.564770,
		30.153831, 29.950996, 43.727856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728237, 29.311209, 43.454136>,  <30.006002, 29.392559, 43.332520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728237, 29.311209, 43.454136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.563498, 29.522356, 43.751251>,  <30.464655, 29.649044, 43.929520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.563498, 29.522356, 43.751251>,  <30.728237, 29.311209, 43.454136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563498, 29.522356, 43.751251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599753, -0.456671, 0.657075,
		0.686060, 0.716106, -0.128511,
		-0.411848, 0.527868, 0.742790,
		30.439943, 29.680716, 43.974087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.544945, 38.324829, 47.663383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323292, 38.059029, 47.863934>,  <36.190300, 37.899548, 47.984264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323292, 38.059029, 47.863934>,  <36.544945, 38.324829, 47.663383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323292, 38.059029, 47.863934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078973, 0.557622, 0.826330,
		-0.828674, 0.497492, -0.256519,
		-0.554133, -0.664500, 0.501375,
		36.157051, 37.859680, 48.014347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286034, 38.740219, 48.121010>,  <36.544945, 38.324829, 47.663383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286034, 38.740219, 48.121010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.237320, 38.392563, 48.312744>,  <36.208092, 38.183968, 48.427784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.237320, 38.392563, 48.312744>,  <36.286034, 38.740219, 48.121010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237320, 38.392563, 48.312744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007395, 0.483713, 0.875196,
		-0.992529, 0.103042, -0.065337,
		-0.121786, -0.869140, 0.479337,
		36.200783, 38.131821, 48.456547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846138, 38.857430, 48.736073>,  <36.286034, 38.740219, 48.121010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846138, 38.857430, 48.736073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980225, 38.489918, 48.819477>,  <36.060677, 38.269409, 48.869518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980225, 38.489918, 48.819477>,  <35.846138, 38.857430, 48.736073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980225, 38.489918, 48.819477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162825, 0.274481, 0.947707,
		-0.927964, -0.283737, 0.241610,
		0.335217, -0.918778, 0.208509,
		36.080791, 38.214283, 48.882030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474586, 38.718662, 49.365772>,  <35.846138, 38.857430, 48.736073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474586, 38.718662, 49.365772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798519, 38.485149, 49.342541>,  <35.992878, 38.345043, 49.328602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.798519, 38.485149, 49.342541>,  <35.474586, 38.718662, 49.365772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798519, 38.485149, 49.342541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239889, 0.239170, 0.940878,
		-0.535373, -0.775887, 0.333729,
		0.809833, -0.583778, -0.058082,
		36.041470, 38.310017, 49.325115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440903, 38.263885, 49.951660>,  <35.474586, 38.718662, 49.365772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440903, 38.263885, 49.951660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824463, 38.289345, 49.841057>,  <36.054600, 38.304619, 49.774696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824463, 38.289345, 49.841057>,  <35.440903, 38.263885, 49.951660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824463, 38.289345, 49.841057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277825, -0.012665, 0.960548,
		0.057639, -0.997892, -0.029828,
		0.958901, 0.063652, -0.276509,
		36.112133, 38.308437, 49.758102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722912, 37.724365, 50.381611>,  <35.440903, 38.263885, 49.951660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722912, 37.724365, 50.381611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019337, 37.968910, 50.270565>,  <36.197189, 38.115635, 50.203938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019337, 37.968910, 50.270565>,  <35.722912, 37.724365, 50.381611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019337, 37.968910, 50.270565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436554, -0.124564, 0.891013,
		0.510148, -0.781488, -0.359201,
		0.741059, 0.611360, -0.277615,
		36.241653, 38.152317, 50.187279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360600, 37.391151, 50.474728>,  <35.722912, 37.724365, 50.381611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360600, 37.391151, 50.474728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455215, 37.779781, 50.478584>,  <36.511986, 38.012959, 50.480900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455215, 37.779781, 50.478584>,  <36.360600, 37.391151, 50.474728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455215, 37.779781, 50.478584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610234, -0.156272, 0.776656,
		0.756086, -0.177823, -0.629852,
		0.236535, 0.971575, 0.009642,
		36.526176, 38.071255, 50.481476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964287, 37.364094, 50.632328>,  <36.360600, 37.391151, 50.474728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964287, 37.364094, 50.632328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877003, 37.744888, 50.718208>,  <36.824631, 37.973366, 50.769737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877003, 37.744888, 50.718208>,  <36.964287, 37.364094, 50.632328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877003, 37.744888, 50.718208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587541, -0.047512, 0.807799,
		0.779218, 0.302419, -0.548965,
		-0.218211, 0.951990, 0.214705,
		36.811539, 38.030487, 50.782619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637669, 37.623894, 50.782234>,  <36.964287, 37.364094, 50.632328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637669, 37.623894, 50.782234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363605, 37.861916, 50.950268>,  <37.199169, 38.004730, 51.051086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363605, 37.861916, 50.950268>,  <37.637669, 37.623894, 50.782234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363605, 37.861916, 50.950268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477250, -0.068945, 0.876059,
		0.550268, 0.800721, -0.236752,
		-0.685156, 0.595057, 0.420082,
		37.158058, 38.040432, 51.076294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003078, 38.129826, 51.169010>,  <37.637669, 37.623894, 50.782234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003078, 38.129826, 51.169010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635925, 38.151840, 51.326221>,  <37.415634, 38.165051, 51.420547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635925, 38.151840, 51.326221>,  <38.003078, 38.129826, 51.169010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635925, 38.151840, 51.326221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375752, -0.198160, 0.905286,
		0.127707, 0.978623, 0.161206,
		-0.917879, 0.055038, 0.393026,
		37.360561, 38.168350, 51.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970551, 38.656982, 51.668507>,  <38.003078, 38.129826, 51.169010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970551, 38.656982, 51.668507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.679855, 38.398651, 51.762108>,  <37.505440, 38.243652, 51.818268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.679855, 38.398651, 51.762108>,  <37.970551, 38.656982, 51.668507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679855, 38.398651, 51.762108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336037, -0.037145, 0.941116,
		-0.599108, 0.762578, 0.244017,
		-0.726738, -0.645829, 0.234000,
		37.461834, 38.204903, 51.832310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692181, 38.827183, 52.285370>,  <37.970551, 38.656982, 51.668507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692181, 38.827183, 52.285370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574734, 38.445538, 52.261879>,  <37.504265, 38.216549, 52.247784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574734, 38.445538, 52.261879>,  <37.692181, 38.827183, 52.285370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574734, 38.445538, 52.261879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351144, -0.164796, 0.921705,
		-0.889093, 0.250006, 0.383419,
		-0.293618, -0.954117, -0.058731,
		37.486649, 38.159302, 52.244259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378963, 39.187782, 52.194897>,  <37.692181, 38.827183, 52.285370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378963, 39.187782, 52.194897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632088, 39.437424, 52.378223>,  <38.783962, 39.587208, 52.488220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632088, 39.437424, 52.378223>,  <38.378963, 39.187782, 52.194897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632088, 39.437424, 52.378223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514686, 0.781246, -0.353205,
		-0.578491, -0.012376, 0.815595,
		0.632809, 0.624101, 0.458314,
		38.821930, 39.624653, 52.515717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074814, 39.694057, 52.762260>,  <38.378963, 39.187782, 52.194897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074814, 39.694057, 52.762260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.374344, 39.816490, 52.527119>,  <38.554062, 39.889950, 52.386032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.374344, 39.816490, 52.527119>,  <38.074814, 39.694057, 52.762260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374344, 39.816490, 52.527119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602426, 0.684102, -0.411202,
		0.276292, 0.662058, 0.696665,
		0.748829, 0.306077, -0.587853,
		38.598991, 39.908314, 52.350761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180866, 40.236172, 53.332298>,  <38.074814, 39.694057, 52.762260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180866, 40.236172, 53.332298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.025398, 40.602074, 53.376415>,  <37.932117, 40.821613, 53.402885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.025398, 40.602074, 53.376415>,  <38.180866, 40.236172, 53.332298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025398, 40.602074, 53.376415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023312, 0.109901, -0.993669,
		-0.921081, -0.388784, -0.021391,
		-0.388674, 0.914751, 0.110291,
		37.908794, 40.876499, 53.409504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593380, 40.225742, 52.911407>,  <38.180866, 40.236172, 53.332298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593380, 40.225742, 52.911407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.709217, 40.602940, 52.977016>,  <37.778721, 40.829258, 53.016380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.709217, 40.602940, 52.977016>,  <37.593380, 40.225742, 52.911407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709217, 40.602940, 52.977016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222682, 0.233041, -0.946628,
		-0.930886, 0.237613, 0.277475,
		0.289594, 0.942991, 0.164022,
		37.796097, 40.885838, 53.026222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127243, 40.569096, 52.582951>,  <37.593380, 40.225742, 52.911407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127243, 40.569096, 52.582951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400162, 40.851673, 52.658215>,  <37.563911, 41.021221, 52.703373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400162, 40.851673, 52.658215>,  <37.127243, 40.569096, 52.582951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400162, 40.851673, 52.658215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064931, 0.314916, -0.946896,
		-0.728188, 0.633845, 0.260736,
		0.682295, 0.706448, 0.188162,
		37.604851, 41.063606, 52.714664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891266, 41.103531, 52.236744>,  <37.127243, 40.569096, 52.582951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891266, 41.103531, 52.236744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284401, 41.142414, 52.299461>,  <37.520283, 41.165745, 52.337093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284401, 41.142414, 52.299461>,  <36.891266, 41.103531, 52.236744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284401, 41.142414, 52.299461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141944, 0.144423, -0.979282,
		-0.117843, 0.984729, 0.128145,
		0.982835, 0.097212, 0.156795,
		37.579250, 41.171577, 52.346500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996120, 41.617161, 51.890305>,  <36.891266, 41.103531, 52.236744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996120, 41.617161, 51.890305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340176, 41.416019, 51.924511>,  <37.546608, 41.295334, 51.945034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340176, 41.416019, 51.924511>,  <36.996120, 41.617161, 51.890305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340176, 41.416019, 51.924511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110515, 0.020049, -0.993672,
		0.497953, 0.864142, 0.072817,
		0.860133, -0.502849, 0.085517,
		37.598217, 41.265163, 51.950165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328911, 41.868652, 51.295139>,  <36.996120, 41.617161, 51.890305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328911, 41.868652, 51.295139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.549156, 41.553192, 51.404575>,  <37.681305, 41.363914, 51.470238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.549156, 41.553192, 51.404575>,  <37.328911, 41.868652, 51.295139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549156, 41.553192, 51.404575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200489, -0.193211, -0.960455,
		0.810327, 0.583690, 0.051732,
		0.550613, -0.788654, 0.273587,
		37.714340, 41.316597, 51.486652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968933, 41.911156, 50.869576>,  <37.328911, 41.868652, 51.295139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968933, 41.911156, 50.869576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918793, 41.529888, 50.979668>,  <37.888706, 41.301128, 51.045723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918793, 41.529888, 50.979668>,  <37.968933, 41.911156, 50.869576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918793, 41.529888, 50.979668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086513, -0.286865, -0.954057,
		0.988333, -0.095785, 0.118422,
		-0.125356, -0.953170, 0.275231,
		37.881187, 41.243938, 51.062237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336216, 41.502880, 50.363453>,  <37.968933, 41.911156, 50.869576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336216, 41.502880, 50.363453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153225, 41.191711, 50.535755>,  <38.043430, 41.005009, 50.639137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153225, 41.191711, 50.535755>,  <38.336216, 41.502880, 50.363453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153225, 41.191711, 50.535755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228938, -0.365050, -0.902400,
		0.859245, -0.511443, -0.011094,
		-0.457477, -0.777923, 0.430756,
		38.015984, 40.958336, 50.664982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519283, 40.888359, 49.959774>,  <38.336216, 41.502880, 50.363453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519283, 40.888359, 49.959774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.160358, 40.823963, 50.124168>,  <37.945004, 40.785324, 50.222805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.160358, 40.823963, 50.124168>,  <38.519283, 40.888359, 49.959774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160358, 40.823963, 50.124168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359978, -0.271904, -0.892460,
		0.255429, -0.948762, 0.186029,
		-0.897314, -0.160993, 0.410985,
		37.891163, 40.775665, 50.247463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386696, 40.178841, 49.748600>,  <38.519283, 40.888359, 49.959774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386696, 40.178841, 49.748600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059856, 40.387646, 49.846458>,  <37.863754, 40.512928, 49.905174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059856, 40.387646, 49.846458>,  <38.386696, 40.178841, 49.748600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059856, 40.387646, 49.846458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407566, -0.222937, -0.885545,
		-0.407726, -0.823287, 0.394916,
		-0.817099, 0.522014, 0.244646,
		37.814728, 40.544250, 49.919853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781937, 39.672684, 49.702438>,  <38.386696, 40.178841, 49.748600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781937, 39.672684, 49.702438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612911, 40.033688, 49.669163>,  <37.511497, 40.250290, 49.649197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612911, 40.033688, 49.669163>,  <37.781937, 39.672684, 49.702438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612911, 40.033688, 49.669163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452997, -0.289811, -0.843091,
		-0.785008, -0.318569, 0.531297,
		-0.422559, 0.902509, -0.083193,
		37.486145, 40.304440, 49.644203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206402, 39.548138, 49.368362>,  <37.781937, 39.672684, 49.702438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206402, 39.548138, 49.368362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243511, 39.942978, 49.316181>,  <37.265778, 40.179882, 49.284874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243511, 39.942978, 49.316181>,  <37.206402, 39.548138, 49.368362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243511, 39.942978, 49.316181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491355, -0.068562, -0.868257,
		-0.866004, 0.144648, 0.478658,
		0.092773, 0.987105, -0.130449,
		37.271343, 40.239109, 49.277046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817623, 39.642143, 48.810169>,  <37.206402, 39.548138, 49.368362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817623, 39.642143, 48.810169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983952, 40.004112, 48.846405>,  <37.083748, 40.221294, 48.868145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983952, 40.004112, 48.846405>,  <36.817623, 39.642143, 48.810169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983952, 40.004112, 48.846405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253945, 0.211180, -0.943883,
		-0.873271, 0.369486, 0.317614,
		0.415825, 0.904922, 0.090588,
		37.108700, 40.275589, 48.873581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248055, 40.109802, 48.669994>,  <36.817623, 39.642143, 48.810169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248055, 40.109802, 48.669994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605347, 40.268818, 48.585999>,  <36.819721, 40.364227, 48.535603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605347, 40.268818, 48.585999>,  <36.248055, 40.109802, 48.669994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605347, 40.268818, 48.585999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296028, 0.168516, -0.940197,
		-0.338377, 0.901979, 0.268206,
		0.893235, 0.397537, -0.209989,
		36.873318, 40.388081, 48.523003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773952, 40.666500, 48.605900>,  <36.248055, 40.109802, 48.669994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773952, 40.666500, 48.605900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386585, 40.763676, 48.583466>,  <35.154163, 40.821980, 48.570004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386585, 40.763676, 48.583466>,  <35.773952, 40.666500, 48.605900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386585, 40.763676, 48.583466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005631, 0.203576, 0.979043,
		0.249265, 0.948439, -0.195779,
		-0.968419, 0.242939, -0.056085,
		35.096058, 40.836559, 48.566639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733868, 41.252613, 49.028564>,  <35.773952, 40.666500, 48.605900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733868, 41.252613, 49.028564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360268, 41.110325, 49.015213>,  <35.136108, 41.024952, 49.007202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360268, 41.110325, 49.015213>,  <35.733868, 41.252613, 49.028564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360268, 41.110325, 49.015213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123425, 0.233559, 0.964477,
		-0.335288, 0.904938, -0.262048,
		-0.933996, -0.355721, -0.033382,
		35.080070, 41.003609, 49.005199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389515, 41.707798, 49.420853>,  <35.733868, 41.252613, 49.028564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389515, 41.707798, 49.420853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165539, 41.376396, 49.423515>,  <35.031151, 41.177555, 49.425114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165539, 41.376396, 49.423515>,  <35.389515, 41.707798, 49.420853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165539, 41.376396, 49.423515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212286, 0.151227, 0.965435,
		-0.800874, 0.539175, -0.260558,
		-0.559942, -0.828505, 0.006655,
		34.997555, 41.127846, 49.425510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713005, 41.883907, 49.715984>,  <35.389515, 41.707798, 49.420853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713005, 41.883907, 49.715984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746956, 41.487366, 49.756012>,  <34.767326, 41.249439, 49.780029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746956, 41.487366, 49.756012>,  <34.713005, 41.883907, 49.715984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746956, 41.487366, 49.756012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334018, 0.066315, 0.940231,
		-0.938738, -0.113227, -0.325501,
		0.084874, -0.991354, 0.100072,
		34.772419, 41.189960, 49.786034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052624, 41.734028, 50.003414>,  <34.713005, 41.883907, 49.715984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052624, 41.734028, 50.003414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308212, 41.443573, 50.104961>,  <34.461563, 41.269302, 50.165890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308212, 41.443573, 50.104961>,  <34.052624, 41.734028, 50.003414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308212, 41.443573, 50.104961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338573, 0.030863, 0.940434,
		-0.690716, -0.686860, -0.226129,
		0.638967, -0.726134, 0.253870,
		34.499901, 41.225735, 50.181122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677799, 41.337551, 50.476589>,  <34.052624, 41.734028, 50.003414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677799, 41.337551, 50.476589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062309, 41.247307, 50.539898>,  <34.293015, 41.193161, 50.577885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062309, 41.247307, 50.539898>,  <33.677799, 41.337551, 50.476589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062309, 41.247307, 50.539898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185882, -0.106761, 0.976755,
		-0.203474, -0.968349, -0.144565,
		0.961274, -0.225616, 0.158275,
		34.350693, 41.179623, 50.587379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674065, 40.763386, 50.752697>,  <33.677799, 41.337551, 50.476589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674065, 40.763386, 50.752697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030418, 40.900898, 50.871452>,  <34.244228, 40.983406, 50.942703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030418, 40.900898, 50.871452>,  <33.674065, 40.763386, 50.752697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030418, 40.900898, 50.871452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225028, -0.233728, 0.945903,
		0.394577, -0.909496, -0.130863,
		0.890882, 0.343784, 0.296886,
		34.297684, 41.004032, 50.960518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624779, 39.984737, 50.693287>,  <33.674065, 40.763386, 50.752697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624779, 39.984737, 50.693287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398529, 39.657928, 50.738091>,  <33.262779, 39.461842, 50.764973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398529, 39.657928, 50.738091>,  <33.624779, 39.984737, 50.693287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398529, 39.657928, 50.738091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145709, -0.034672, -0.988720,
		0.811691, -0.575560, -0.099437,
		-0.565620, -0.817024, 0.112007,
		33.228844, 39.412823, 50.771694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768658, 39.431477, 50.080269>,  <33.624779, 39.984737, 50.693287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768658, 39.431477, 50.080269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403584, 39.355251, 50.224869>,  <33.184540, 39.309517, 50.311630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403584, 39.355251, 50.224869>,  <33.768658, 39.431477, 50.080269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403584, 39.355251, 50.224869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324291, -0.200539, -0.924456,
		0.248664, -0.960973, 0.121232,
		-0.912689, -0.190565, 0.361502,
		33.129776, 39.298080, 50.333321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644287, 38.818649, 49.803982>,  <33.768658, 39.431477, 50.080269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644287, 38.818649, 49.803982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296112, 38.993408, 49.894722>,  <33.087208, 39.098263, 49.949165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296112, 38.993408, 49.894722>,  <33.644287, 38.818649, 49.803982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296112, 38.993408, 49.894722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366336, -0.267051, -0.891337,
		-0.328848, -0.858953, 0.392503,
		-0.870435, 0.436903, 0.226846,
		33.034981, 39.124477, 49.962776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113827, 38.329647, 49.735615>,  <33.644287, 38.818649, 49.803982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113827, 38.329647, 49.735615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.944649, 38.689934, 49.695980>,  <32.843140, 38.906105, 49.672199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.944649, 38.689934, 49.695980>,  <33.113827, 38.329647, 49.735615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944649, 38.689934, 49.695980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452201, -0.304560, -0.838306,
		-0.785258, -0.309751, 0.536120,
		-0.422947, 0.900720, -0.099089,
		32.817764, 38.960152, 49.666252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462246, 38.131847, 49.482124>,  <33.113827, 38.329647, 49.735615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462246, 38.131847, 49.482124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529980, 38.520691, 49.417206>,  <32.570621, 38.753998, 49.378254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529980, 38.520691, 49.417206>,  <32.462246, 38.131847, 49.482124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529980, 38.520691, 49.417206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405052, -0.081477, -0.910656,
		-0.898476, 0.219941, 0.379956,
		0.169333, 0.972105, -0.162292,
		32.580780, 38.812321, 49.368519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913086, 38.339138, 49.055382>,  <32.462246, 38.131847, 49.482124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913086, 38.339138, 49.055382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155220, 38.655529, 49.019779>,  <32.300503, 38.845364, 48.998417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155220, 38.655529, 49.019779>,  <31.913086, 38.339138, 49.055382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155220, 38.655529, 49.019779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234565, 0.070412, -0.969547,
		-0.760622, 0.607781, 0.228158,
		0.605337, 0.790977, -0.089008,
		32.336823, 38.892822, 48.993076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506927, 38.869434, 48.758064>,  <31.913086, 38.339138, 49.055382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506927, 38.869434, 48.758064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882326, 38.986885, 48.685390>,  <32.107563, 39.057354, 48.641785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882326, 38.986885, 48.685390>,  <31.506927, 38.869434, 48.758064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882326, 38.986885, 48.685390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213238, 0.078999, -0.973801,
		-0.271582, 0.952650, 0.136753,
		0.938495, 0.293628, -0.181686,
		32.163876, 39.074974, 48.630886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.425800, 35.433235, 53.496975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.619385, 35.729321, 53.310268>,  <36.735535, 35.906971, 53.198246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.619385, 35.729321, 53.310268>,  <36.425800, 35.433235, 53.496975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619385, 35.729321, 53.310268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060805, -0.503657, -0.861761,
		-0.872972, 0.445444, -0.198744,
		0.483966, 0.740209, -0.466763,
		36.764576, 35.951382, 53.170238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070885, 35.580345, 52.903179>,  <36.425800, 35.433235, 53.496975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070885, 35.580345, 52.903179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412041, 35.763149, 52.802212>,  <36.616734, 35.872833, 52.741631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412041, 35.763149, 52.802212>,  <36.070885, 35.580345, 52.903179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412041, 35.763149, 52.802212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081636, -0.360797, -0.929065,
		-0.515669, 0.812997, -0.270411,
		0.852890, 0.457014, -0.252422,
		36.667908, 35.900253, 52.726486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012074, 36.006207, 52.292728>,  <36.070885, 35.580345, 52.903179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012074, 36.006207, 52.292728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392368, 35.885193, 52.319775>,  <36.620544, 35.812584, 52.336002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392368, 35.885193, 52.319775>,  <36.012074, 36.006207, 52.292728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392368, 35.885193, 52.319775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020647, -0.279446, -0.959939,
		0.309307, 0.911255, -0.271926,
		0.950738, -0.302530, 0.067620,
		36.677589, 35.794434, 52.340061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274261, 36.185516, 51.701656>,  <36.012074, 36.006207, 52.292728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274261, 36.185516, 51.701656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519520, 35.900631, 51.838367>,  <36.666676, 35.729702, 51.920395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519520, 35.900631, 51.838367>,  <36.274261, 36.185516, 51.701656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519520, 35.900631, 51.838367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022973, -0.416392, -0.908895,
		0.789638, 0.565134, -0.238947,
		0.613143, -0.712209, 0.341782,
		36.703461, 35.686970, 51.940903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774178, 36.217525, 51.254154>,  <36.274261, 36.185516, 51.701656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774178, 36.217525, 51.254154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814838, 35.852711, 51.413082>,  <36.839233, 35.633823, 51.508438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814838, 35.852711, 51.413082>,  <36.774178, 36.217525, 51.254154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814838, 35.852711, 51.413082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125638, -0.384422, -0.914568,
		0.986855, 0.142883, 0.075510,
		0.101648, -0.912033, 0.397320,
		36.845333, 35.579102, 51.532280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353516, 35.842426, 50.848404>,  <36.774178, 36.217525, 51.254154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353516, 35.842426, 50.848404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141262, 35.582134, 51.065655>,  <37.013912, 35.425961, 51.196007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141262, 35.582134, 51.065655>,  <37.353516, 35.842426, 50.848404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141262, 35.582134, 51.065655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026890, -0.627531, -0.778127,
		0.847177, -0.427501, 0.315489,
		-0.530629, -0.650728, 0.543126,
		36.982075, 35.386917, 51.228592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661232, 35.208965, 50.613968>,  <37.353516, 35.842426, 50.848404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661232, 35.208965, 50.613968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.301510, 35.102108, 50.752468>,  <37.085678, 35.037994, 50.835567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.301510, 35.102108, 50.752468>,  <37.661232, 35.208965, 50.613968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301510, 35.102108, 50.752468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147394, -0.560271, -0.815090,
		0.411735, -0.784049, 0.464480,
		-0.899305, -0.267140, 0.346248,
		37.031719, 35.021965, 50.856342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522236, 34.511776, 50.485943>,  <37.661232, 35.208965, 50.613968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522236, 34.511776, 50.485943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.155716, 34.658108, 50.551136>,  <36.935802, 34.745907, 50.590252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.155716, 34.658108, 50.551136>,  <37.522236, 34.511776, 50.485943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155716, 34.658108, 50.551136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341997, -0.502969, -0.793763,
		-0.208401, -0.783067, 0.585982,
		-0.916301, 0.365825, 0.162988,
		36.880825, 34.767857, 50.600033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051460, 33.952961, 50.440495>,  <37.522236, 34.511776, 50.485943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051460, 33.952961, 50.440495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.811520, 34.267612, 50.381981>,  <36.667557, 34.456402, 50.346874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.811520, 34.267612, 50.381981>,  <37.051460, 33.952961, 50.440495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811520, 34.267612, 50.381981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460017, -0.488655, -0.741351,
		-0.654649, -0.377405, 0.654981,
		-0.599849, 0.786627, -0.146285,
		36.631565, 34.503601, 50.338097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504936, 33.755116, 49.935318>,  <37.051460, 33.952961, 50.440495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504936, 33.755116, 49.935318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.451466, 34.150761, 49.959957>,  <36.419384, 34.388145, 49.974739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.451466, 34.150761, 49.959957>,  <36.504936, 33.755116, 49.935318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451466, 34.150761, 49.959957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469611, -0.008490, -0.882833,
		-0.872694, -0.146945, 0.465631,
		-0.133681, 0.989108, 0.061598,
		36.411362, 34.447495, 49.978436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702206, 33.867908, 49.692596>,  <36.504936, 33.755116, 49.935318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702206, 33.867908, 49.692596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.907104, 34.206249, 49.633064>,  <36.030045, 34.409252, 49.597347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.907104, 34.206249, 49.633064>,  <35.702206, 33.867908, 49.692596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907104, 34.206249, 49.633064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428232, 0.101337, -0.897969,
		-0.744463, 0.523711, 0.414128,
		0.512243, 0.845847, -0.148828,
		36.060776, 34.460003, 49.588417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230831, 34.379719, 49.454803>,  <35.702206, 33.867908, 49.692596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230831, 34.379719, 49.454803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.614746, 34.428879, 49.353848>,  <35.845097, 34.458374, 49.293274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.614746, 34.428879, 49.353848>,  <35.230831, 34.379719, 49.454803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614746, 34.428879, 49.353848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236817, -0.128281, -0.963048,
		-0.150731, 0.984094, -0.094019,
		0.959790, 0.122896, -0.252386,
		35.902683, 34.465748, 49.278133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706825, 34.899403, 49.455921>,  <35.230831, 34.379719, 49.454803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706825, 34.899403, 49.455921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.312382, 34.836067, 49.435837>,  <34.075714, 34.798065, 49.423786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.312382, 34.836067, 49.435837>,  <34.706825, 34.899403, 49.455921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312382, 34.836067, 49.435837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103173, 0.346938, 0.932196,
		-0.130181, 0.924426, -0.358455,
		-0.986108, -0.158337, -0.050211,
		34.016548, 34.788567, 49.420773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360260, 35.614277, 49.489155>,  <34.706825, 34.899403, 49.455921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360260, 35.614277, 49.489155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133724, 35.312099, 49.620956>,  <33.997803, 35.130795, 49.700039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133724, 35.312099, 49.620956>,  <34.360260, 35.614277, 49.489155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133724, 35.312099, 49.620956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008508, 0.405138, 0.914216,
		-0.824130, 0.514950, -0.235871,
		-0.566336, -0.755440, 0.329505,
		33.963825, 35.085468, 49.719807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878933, 35.934101, 49.864521>,  <34.360260, 35.614277, 49.489155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878933, 35.934101, 49.864521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850449, 35.557606, 49.996578>,  <33.833359, 35.331707, 50.075813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850449, 35.557606, 49.996578>,  <33.878933, 35.934101, 49.864521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850449, 35.557606, 49.996578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028098, 0.332748, 0.942597,
		-0.997066, 0.057844, -0.050142,
		-0.071208, -0.941240, 0.330146,
		33.829086, 35.275234, 50.095623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272491, 35.918621, 50.228611>,  <33.878933, 35.934101, 49.864521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272491, 35.918621, 50.228611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.501762, 35.614075, 50.349800>,  <33.639324, 35.431347, 50.422516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.501762, 35.614075, 50.349800>,  <33.272491, 35.918621, 50.228611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501762, 35.614075, 50.349800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112375, 0.293213, 0.949420,
		-0.811691, -0.578232, 0.082504,
		0.573176, -0.761364, 0.302977,
		33.673714, 35.385666, 50.440693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981728, 35.784912, 50.916027>,  <33.272491, 35.918621, 50.228611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981728, 35.784912, 50.916027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.342213, 35.611561, 50.915821>,  <33.558502, 35.507549, 50.915695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.342213, 35.611561, 50.915821>,  <32.981728, 35.784912, 50.916027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342213, 35.611561, 50.915821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148504, 0.307691, 0.939826,
		-0.407142, -0.847059, 0.341653,
		0.901212, -0.433380, -0.000517,
		33.612576, 35.481548, 50.915665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973076, 35.426289, 51.519543>,  <32.981728, 35.784912, 50.916027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973076, 35.426289, 51.519543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.353310, 35.474079, 51.404922>,  <33.581451, 35.502754, 51.336151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.353310, 35.474079, 51.404922>,  <32.973076, 35.426289, 51.519543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353310, 35.474079, 51.404922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246441, 0.270965, 0.930508,
		0.188819, -0.955146, 0.228131,
		0.950586, 0.119476, -0.286550,
		33.638485, 35.509922, 51.318958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418339, 35.217327, 52.127117>,  <32.973076, 35.426289, 51.519543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418339, 35.217327, 52.127117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.616547, 35.468510, 51.887074>,  <33.735474, 35.619217, 51.743046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.616547, 35.468510, 51.887074>,  <33.418339, 35.217327, 52.127117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616547, 35.468510, 51.887074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302519, 0.522869, 0.796926,
		0.814211, -0.576439, 0.069125,
		0.495523, 0.627954, -0.600110,
		33.765205, 35.656895, 51.707039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984570, 35.369919, 52.557747>,  <33.418339, 35.217327, 52.127117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984570, 35.369919, 52.557747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041603, 35.633472, 52.262302>,  <34.075825, 35.791603, 52.085037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041603, 35.633472, 52.262302>,  <33.984570, 35.369919, 52.557747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041603, 35.633472, 52.262302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536939, 0.575395, 0.616942,
		0.831485, -0.484552, -0.271740,
		0.142582, 0.658885, -0.738607,
		34.084377, 35.831139, 52.040722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719128, 35.483948, 52.545822>,  <33.984570, 35.369919, 52.557747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719128, 35.483948, 52.545822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.538113, 35.802563, 52.385452>,  <34.429504, 35.993732, 52.289230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.538113, 35.802563, 52.385452>,  <34.719128, 35.483948, 52.545822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538113, 35.802563, 52.385452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546584, 0.602999, 0.581067,
		0.704598, 0.043814, -0.708253,
		-0.452534, 0.796538, -0.400924,
		34.402351, 36.041523, 52.265175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265709, 35.970032, 52.434948>,  <34.719128, 35.483948, 52.545822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265709, 35.970032, 52.434948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932671, 36.191410, 52.426201>,  <34.732845, 36.324238, 52.420952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932671, 36.191410, 52.426201>,  <35.265709, 35.970032, 52.434948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932671, 36.191410, 52.426201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462559, 0.716505, 0.522167,
		0.304656, 0.424643, -0.852563,
		-0.832601, 0.553442, -0.021865,
		34.682892, 36.357441, 52.419640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370968, 36.717316, 52.298832>,  <35.265709, 35.970032, 52.434948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370968, 36.717316, 52.298832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.019707, 36.732738, 52.489563>,  <34.808952, 36.741993, 52.604004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.019707, 36.732738, 52.489563>,  <35.370968, 36.717316, 52.298832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019707, 36.732738, 52.489563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405500, 0.588843, 0.699166,
		-0.253821, 0.807327, -0.532727,
		-0.878148, 0.038558, 0.476832,
		34.756264, 36.744305, 52.632614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331059, 37.455418, 52.533779>,  <35.370968, 36.717316, 52.298832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331059, 37.455418, 52.533779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100739, 37.214165, 52.754574>,  <34.962547, 37.069412, 52.887051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100739, 37.214165, 52.754574>,  <35.331059, 37.455418, 52.533779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100739, 37.214165, 52.754574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244000, 0.517605, 0.820091,
		-0.780333, 0.606892, -0.150872,
		-0.575799, -0.603131, 0.551986,
		34.927998, 37.033226, 52.920170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907669, 37.862309, 53.009617>,  <35.331059, 37.455418, 52.533779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907669, 37.862309, 53.009617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.880669, 37.515045, 53.206287>,  <34.864468, 37.306686, 53.324291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.880669, 37.515045, 53.206287>,  <34.907669, 37.862309, 53.009617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880669, 37.515045, 53.206287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014724, 0.493618, 0.869554,
		-0.997611, 0.051454, -0.046101,
		-0.067498, -0.868156, 0.491681,
		34.860420, 37.254597, 53.353790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407616, 37.918251, 53.582542>,  <34.907669, 37.862309, 53.009617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407616, 37.918251, 53.582542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.647194, 37.607258, 53.659260>,  <34.790943, 37.420662, 53.705288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.647194, 37.607258, 53.659260>,  <34.407616, 37.918251, 53.582542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647194, 37.607258, 53.659260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175785, 0.361314, 0.915725,
		-0.781255, -0.514759, 0.353078,
		0.598950, -0.777480, 0.191791,
		34.826878, 37.374012, 53.716797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778625, 38.358002, 53.518837>,  <34.407616, 37.918251, 53.582542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778625, 38.358002, 53.518837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577126, 38.693333, 53.602200>,  <33.456226, 38.894531, 53.652218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577126, 38.693333, 53.602200>,  <33.778625, 38.358002, 53.518837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577126, 38.693333, 53.602200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354315, 0.019515, -0.934922,
		-0.787842, -0.544811, 0.287203,
		-0.503751, 0.838331, 0.208410,
		33.425999, 38.944832, 53.664722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138752, 38.303715, 53.283314>,  <33.778625, 38.358002, 53.518837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138752, 38.303715, 53.283314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.180939, 38.701027, 53.302410>,  <33.206249, 38.939415, 53.313866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.180939, 38.701027, 53.302410>,  <33.138752, 38.303715, 53.283314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180939, 38.701027, 53.302410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421273, 0.088113, -0.902643,
		-0.900780, 0.075089, 0.427734,
		0.105468, 0.993276, 0.047738,
		33.212578, 38.999008, 53.316730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413097, 38.588993, 53.023804>,  <33.138752, 38.303715, 53.283314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413097, 38.588993, 53.023804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.687531, 38.877174, 52.983322>,  <32.852192, 39.050083, 52.959034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.687531, 38.877174, 52.983322>,  <32.413097, 38.588993, 53.023804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687531, 38.877174, 52.983322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312058, 0.165764, -0.935490,
		-0.657200, 0.673404, 0.338550,
		0.686082, 0.720451, -0.101202,
		32.893356, 39.093311, 52.952961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074234, 39.091896, 52.636490>,  <32.413097, 38.588993, 53.023804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074234, 39.091896, 52.636490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.463234, 39.165821, 52.579800>,  <32.696632, 39.210175, 52.545784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.463234, 39.165821, 52.579800>,  <32.074234, 39.091896, 52.636490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463234, 39.165821, 52.579800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152903, 0.047606, -0.987094,
		-0.175678, 0.981620, 0.074555,
		0.972501, 0.184810, -0.141730,
		32.754986, 39.221264, 52.537281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135464, 39.593975, 52.109653>,  <32.074234, 39.091896, 52.636490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135464, 39.593975, 52.109653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.517597, 39.475800, 52.106647>,  <32.746876, 39.404896, 52.104843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.517597, 39.475800, 52.106647>,  <32.135464, 39.593975, 52.109653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517597, 39.475800, 52.106647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021598, -0.044433, -0.998779,
		0.294743, 0.954328, -0.048830,
		0.955333, -0.295437, -0.007515,
		32.804195, 39.387169, 52.104393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509399, 39.949821, 51.630219>,  <32.135464, 39.593975, 52.109653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509399, 39.949821, 51.630219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.773876, 39.651028, 51.658047>,  <32.932560, 39.471752, 51.674744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.773876, 39.651028, 51.658047>,  <32.509399, 39.949821, 51.630219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773876, 39.651028, 51.658047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088436, -0.014483, -0.995977,
		0.744988, 0.664682, 0.056484,
		0.661190, -0.746986, 0.069572,
		32.972233, 39.426933, 51.678917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189938, 40.175144, 51.244949>,  <32.509399, 39.949821, 51.630219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189938, 40.175144, 51.244949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146484, 39.777611, 51.236137>,  <33.120411, 39.539089, 51.230850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146484, 39.777611, 51.236137>,  <33.189938, 40.175144, 51.244949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146484, 39.777611, 51.236137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108663, 0.033903, -0.993500,
		0.988125, -0.105536, -0.111677,
		-0.108636, -0.993837, -0.022032,
		33.113895, 39.479458, 51.229527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956913, 40.148788, 51.376083>,  <33.189938, 40.175144, 51.244949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956913, 40.148788, 51.376083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.138721, 40.504879, 51.388130>,  <34.247807, 40.718533, 51.395359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.138721, 40.504879, 51.388130>,  <33.956913, 40.148788, 51.376083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138721, 40.504879, 51.388130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064280, -0.000946, 0.997931,
		0.888412, -0.455519, 0.056794,
		0.454523, 0.890226, 0.030121,
		34.275078, 40.771946, 51.397167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478100, 40.062531, 51.836021>,  <33.956913, 40.148788, 51.376083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478100, 40.062531, 51.836021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444336, 40.458763, 51.792885>,  <34.424076, 40.696503, 51.767002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444336, 40.458763, 51.792885>,  <34.478100, 40.062531, 51.836021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444336, 40.458763, 51.792885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291369, 0.128034, 0.948004,
		0.952879, 0.048598, -0.299431,
		-0.084408, 0.990578, -0.107841,
		34.419014, 40.755936, 51.760532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098061, 40.231998, 52.225712>,  <34.478100, 40.062531, 51.836021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098061, 40.231998, 52.225712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.882637, 40.568962, 52.232716>,  <34.753384, 40.771141, 52.236919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.882637, 40.568962, 52.232716>,  <35.098061, 40.231998, 52.225712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882637, 40.568962, 52.232716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287003, 0.163862, 0.943811,
		0.792203, 0.513322, -0.330022,
		-0.538557, 0.842407, 0.017513,
		34.721069, 40.821686, 52.237968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490875, 40.809330, 52.511021>,  <35.098061, 40.231998, 52.225712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490875, 40.809330, 52.511021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.122158, 40.957672, 52.556210>,  <34.900928, 41.046677, 52.583324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.122158, 40.957672, 52.556210>,  <35.490875, 40.809330, 52.511021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122158, 40.957672, 52.556210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219920, 0.260223, 0.940170,
		0.319265, 0.891489, -0.321430,
		-0.921795, 0.370852, 0.112976,
		34.845619, 41.068928, 52.590103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533405, 41.521587, 52.718632>,  <35.490875, 40.809330, 52.511021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533405, 41.521587, 52.718632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.189384, 41.363224, 52.847363>,  <34.982971, 41.268204, 52.924603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.189384, 41.363224, 52.847363>,  <35.533405, 41.521587, 52.718632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189384, 41.363224, 52.847363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299062, 0.119868, 0.946675,
		-0.413375, 0.910432, 0.015309,
		-0.860048, -0.395911, 0.321827,
		34.931370, 41.244450, 52.943909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369373, 41.977856, 53.264423>,  <35.533405, 41.521587, 52.718632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369373, 41.977856, 53.264423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.143738, 41.653923, 53.328899>,  <35.008358, 41.459564, 53.367584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.143738, 41.653923, 53.328899>,  <35.369373, 41.977856, 53.264423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143738, 41.653923, 53.328899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043889, 0.165535, 0.985227,
		-0.824549, 0.562827, -0.057834,
		-0.564085, -0.809830, 0.161194,
		34.974514, 41.410973, 53.377258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803799, 42.168880, 53.503078>,  <35.369373, 41.977856, 53.264423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803799, 42.168880, 53.503078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.869427, 41.797276, 53.635754>,  <34.908802, 41.574314, 53.715359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.869427, 41.797276, 53.635754>,  <34.803799, 42.168880, 53.503078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869427, 41.797276, 53.635754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161787, 0.357035, 0.919973,
		-0.973091, -0.097275, 0.208880,
		0.164068, -0.929012, 0.331690,
		34.918648, 41.518574, 53.735260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338718, 42.086555, 54.090633>,  <34.803799, 42.168880, 53.503078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338718, 42.086555, 54.090633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.591114, 41.778111, 54.124649>,  <34.742554, 41.593044, 54.145058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.591114, 41.778111, 54.124649>,  <34.338718, 42.086555, 54.090633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591114, 41.778111, 54.124649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153168, 0.231282, 0.960754,
		-0.760519, -0.593203, 0.264047,
		0.630992, -0.771115, 0.085035,
		34.780411, 41.546776, 54.150158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113041, 41.752285, 54.823082>,  <34.338718, 42.086555, 54.090633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113041, 41.752285, 54.823082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472530, 41.618023, 54.710205>,  <34.688225, 41.537464, 54.642479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472530, 41.618023, 54.710205>,  <34.113041, 41.752285, 54.823082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472530, 41.618023, 54.710205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338704, 0.122607, 0.932871,
		-0.278527, -0.933971, 0.223878,
		0.898723, -0.335658, -0.282190,
		34.742146, 41.517326, 54.625549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.413784, 38.464897, 38.678394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731659, 38.265247, 38.816578>,  <34.922386, 38.145458, 38.899487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731659, 38.265247, 38.816578>,  <34.413784, 38.464897, 38.678394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731659, 38.265247, 38.816578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248023, 0.252442, 0.935285,
		-0.554032, -0.828943, 0.076819,
		0.794690, -0.499125, 0.345458,
		34.970066, 38.115509, 38.920216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237877, 38.070492, 39.348835>,  <34.413784, 38.464897, 38.678394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237877, 38.070492, 39.348835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637119, 38.094620, 39.343960>,  <34.876663, 38.109097, 39.341034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637119, 38.094620, 39.343960>,  <34.237877, 38.070492, 39.348835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637119, 38.094620, 39.343960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001969, 0.229294, 0.973355,
		0.061508, -0.971487, 0.228978,
		0.998105, 0.060320, -0.012190,
		34.936550, 38.112717, 39.340302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444496, 37.679855, 39.905151>,  <34.237877, 38.070492, 39.348835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444496, 37.679855, 39.905151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746601, 37.935955, 39.849060>,  <34.927864, 38.089615, 39.815407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746601, 37.935955, 39.849060>,  <34.444496, 37.679855, 39.905151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746601, 37.935955, 39.849060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019713, 0.191658, 0.981264,
		0.655124, -0.743877, 0.132131,
		0.755264, 0.640245, -0.140224,
		34.973179, 38.128029, 39.806992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992188, 37.540070, 40.483810>,  <34.444496, 37.679855, 39.905151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992188, 37.540070, 40.483810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067192, 37.909782, 40.350822>,  <35.112194, 38.131611, 40.271030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067192, 37.909782, 40.350822>,  <34.992188, 37.540070, 40.483810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067192, 37.909782, 40.350822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232512, 0.287086, 0.929258,
		0.954346, -0.251551, -0.161075,
		0.187513, 0.924286, -0.332468,
		35.123447, 38.187069, 40.251083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583321, 37.818520, 40.849049>,  <34.992188, 37.540070, 40.483810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583321, 37.818520, 40.849049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388470, 38.130482, 40.691849>,  <35.271561, 38.317661, 40.597527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388470, 38.130482, 40.691849>,  <35.583321, 37.818520, 40.849049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388470, 38.130482, 40.691849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091525, 0.401938, 0.911081,
		0.868523, 0.479780, -0.124412,
		-0.487124, 0.779909, -0.393004,
		35.242332, 38.364456, 40.573948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869316, 38.442337, 41.168465>,  <35.583321, 37.818520, 40.849049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869316, 38.442337, 41.168465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521664, 38.583519, 41.029881>,  <35.313072, 38.668228, 40.946732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521664, 38.583519, 41.029881>,  <35.869316, 38.442337, 41.168465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521664, 38.583519, 41.029881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167318, 0.449369, 0.877537,
		0.465417, 0.820665, -0.331505,
		-0.869133, 0.352954, -0.346456,
		35.260925, 38.689404, 40.925945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914837, 39.151794, 41.290703>,  <35.869316, 38.442337, 41.168465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914837, 39.151794, 41.290703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526680, 39.065811, 41.246643>,  <35.293785, 39.014221, 41.220207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526680, 39.065811, 41.246643>,  <35.914837, 39.151794, 41.290703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526680, 39.065811, 41.246643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208112, 0.512627, 0.833008,
		-0.122593, 0.831268, -0.542184,
		-0.970392, -0.214957, -0.110153,
		35.235561, 39.001324, 41.213596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642216, 39.751465, 41.675652>,  <35.914837, 39.151794, 41.290703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642216, 39.751465, 41.675652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341141, 39.493153, 41.624382>,  <35.160496, 39.338165, 41.593620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341141, 39.493153, 41.624382>,  <35.642216, 39.751465, 41.675652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341141, 39.493153, 41.624382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297936, 0.160495, 0.940997,
		-0.587102, 0.746468, -0.313203,
		-0.752692, -0.645776, -0.128173,
		35.115334, 39.299419, 41.585930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147469, 40.135445, 42.041924>,  <35.642216, 39.751465, 41.675652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147469, 40.135445, 42.041924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008236, 39.763271, 41.996075>,  <34.924698, 39.539967, 41.968567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008236, 39.763271, 41.996075>,  <35.147469, 40.135445, 42.041924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008236, 39.763271, 41.996075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511522, 0.086039, 0.854952,
		-0.785613, 0.356221, -0.505885,
		-0.348078, -0.930432, -0.114621,
		34.903812, 39.484142, 41.961689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377346, 40.157864, 42.122871>,  <35.147469, 40.135445, 42.041924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377346, 40.157864, 42.122871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493378, 39.785358, 42.211056>,  <34.562996, 39.561855, 42.263966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493378, 39.785358, 42.211056>,  <34.377346, 40.157864, 42.122871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493378, 39.785358, 42.211056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477358, 0.058864, 0.876735,
		-0.829448, -0.359563, -0.427470,
		0.290078, -0.931262, 0.220465,
		34.580402, 39.505981, 42.277195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746189, 39.826488, 42.393772>,  <34.377346, 40.157864, 42.122871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746189, 39.826488, 42.393772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060432, 39.612679, 42.518421>,  <34.248978, 39.484394, 42.593212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060432, 39.612679, 42.518421>,  <33.746189, 39.826488, 42.393772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060432, 39.612679, 42.518421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432965, -0.115127, 0.894028,
		-0.442005, -0.837275, -0.321875,
		0.785604, -0.534525, 0.311624,
		34.296112, 39.452320, 42.611908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432499, 39.121899, 42.624393>,  <33.746189, 39.826488, 42.393772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432499, 39.121899, 42.624393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781525, 39.231255, 42.786327>,  <33.990940, 39.296867, 42.883488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781525, 39.231255, 42.786327>,  <33.432499, 39.121899, 42.624393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781525, 39.231255, 42.786327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422236, 0.005323, 0.906470,
		0.245667, -0.961888, 0.120081,
		0.872562, 0.273392, 0.404836,
		34.043293, 39.313271, 42.907780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013523, 38.423069, 42.634548>,  <33.432499, 39.121899, 42.624393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013523, 38.423069, 42.634548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644840, 38.335667, 42.762737>,  <32.423630, 38.283226, 42.839653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644840, 38.335667, 42.762737>,  <33.013523, 38.423069, 42.634548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644840, 38.335667, 42.762737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211212, -0.410247, -0.887179,
		0.325332, -0.885410, 0.331976,
		-0.921710, -0.218510, 0.320476,
		32.368328, 38.270115, 42.858879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981838, 37.728111, 42.501270>,  <33.013523, 38.423069, 42.634548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981838, 37.728111, 42.501270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616032, 37.889244, 42.516129>,  <32.396545, 37.985924, 42.525043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616032, 37.889244, 42.516129>,  <32.981838, 37.728111, 42.501270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616032, 37.889244, 42.516129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199518, -0.369256, -0.907658,
		-0.351911, -0.837485, 0.418064,
		-0.914522, 0.402826, 0.037148,
		32.341675, 38.010094, 42.527271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489384, 37.195984, 42.262917>,  <32.981838, 37.728111, 42.501270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489384, 37.195984, 42.262917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306805, 37.549141, 42.218815>,  <32.197258, 37.761036, 42.192352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306805, 37.549141, 42.218815>,  <32.489384, 37.195984, 42.262917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306805, 37.549141, 42.218815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347811, -0.291112, -0.891225,
		-0.818953, -0.368449, 0.439957,
		-0.456447, 0.882893, -0.110256,
		32.169872, 37.814011, 42.185738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823843, 37.060635, 42.151218>,  <32.489384, 37.195984, 42.262917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823843, 37.060635, 42.151218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860641, 37.424351, 41.988869>,  <31.882721, 37.642578, 41.891460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860641, 37.424351, 41.988869>,  <31.823843, 37.060635, 42.151218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860641, 37.424351, 41.988869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333072, -0.356025, -0.873104,
		-0.938403, 0.215508, 0.270105,
		0.091996, 0.909287, -0.405874,
		31.888241, 37.697136, 41.867107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206734, 37.148823, 41.902153>,  <31.823843, 37.060635, 42.151218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206734, 37.148823, 41.902153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453991, 37.408558, 41.724949>,  <31.602346, 37.564400, 41.618626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453991, 37.408558, 41.724949>,  <31.206734, 37.148823, 41.902153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453991, 37.408558, 41.724949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415104, -0.208935, -0.885458,
		-0.667523, 0.731234, 0.140392,
		0.618144, 0.649340, -0.443007,
		31.639435, 37.603359, 41.592049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816616, 37.359455, 41.349060>,  <31.206734, 37.148823, 41.902153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816616, 37.359455, 41.349060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173897, 37.493015, 41.228596>,  <31.388266, 37.573151, 41.156319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173897, 37.493015, 41.228596>,  <30.816616, 37.359455, 41.349060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173897, 37.493015, 41.228596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269990, -0.137330, -0.953019,
		-0.359573, 0.932551, -0.032514,
		0.893204, 0.333901, -0.301160,
		31.441858, 37.593185, 41.138248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660213, 37.906967, 40.852169>,  <30.816616, 37.359455, 41.349060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660213, 37.906967, 40.852169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032270, 37.780991, 40.776653>,  <31.255505, 37.705402, 40.731342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032270, 37.780991, 40.776653>,  <30.660213, 37.906967, 40.852169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032270, 37.780991, 40.776653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276977, -0.264223, -0.923834,
		0.241075, 0.911589, -0.332998,
		0.930143, -0.314946, -0.188792,
		31.311314, 37.686508, 40.720016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870493, 38.389874, 40.315773>,  <30.660213, 37.906967, 40.852169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870493, 38.389874, 40.315773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062479, 38.038960, 40.316223>,  <31.177671, 37.828411, 40.316494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062479, 38.038960, 40.316223>,  <30.870493, 38.389874, 40.315773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062479, 38.038960, 40.316223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254972, -0.140725, -0.956654,
		0.839418, 0.458874, -0.291226,
		0.479966, -0.877286, 0.001127,
		31.206469, 37.775772, 40.316563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274277, 38.444439, 39.772877>,  <30.870493, 38.389874, 40.315773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274277, 38.444439, 39.772877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247799, 38.054882, 39.859730>,  <31.231913, 37.821148, 39.911842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247799, 38.054882, 39.859730>,  <31.274277, 38.444439, 39.772877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247799, 38.054882, 39.859730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211785, -0.198939, -0.956854,
		0.975072, -0.109324, -0.193088,
		-0.066195, -0.973895, 0.217133,
		31.227940, 37.762714, 39.924870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488806, 38.074310, 39.169209>,  <31.274277, 38.444439, 39.772877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488806, 38.074310, 39.169209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347918, 37.756752, 39.367466>,  <31.263384, 37.566216, 39.486420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347918, 37.756752, 39.367466>,  <31.488806, 38.074310, 39.169209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347918, 37.756752, 39.367466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385103, -0.359738, -0.849873,
		0.853015, -0.490220, -0.179025,
		-0.352223, -0.793897, 0.495648,
		31.242250, 37.518581, 39.516159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720552, 37.388187, 38.918819>,  <31.488806, 38.074310, 39.169209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720552, 37.388187, 38.918819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357971, 37.331810, 39.078053>,  <31.140423, 37.297985, 39.173592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357971, 37.331810, 39.078053>,  <31.720552, 37.388187, 38.918819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357971, 37.331810, 39.078053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295534, -0.461646, -0.836387,
		0.301659, -0.875796, 0.376807,
		-0.906456, -0.140944, 0.398087,
		31.086035, 37.289528, 39.197479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582386, 36.643970, 38.763256>,  <31.720552, 37.388187, 38.918819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582386, 36.643970, 38.763256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217480, 36.786755, 38.843605>,  <30.998537, 36.872425, 38.891815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217480, 36.786755, 38.843605>,  <31.582386, 36.643970, 38.763256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217480, 36.786755, 38.843605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370007, -0.507813, -0.777959,
		-0.175694, -0.784030, 0.595339,
		-0.912264, 0.356962, 0.200877,
		30.943800, 36.893845, 38.903870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196835, 36.749172, 38.465237>,  <31.582386, 36.643970, 38.763256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196835, 36.749172, 38.465237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254581, 36.364223, 38.557327>,  <32.289230, 36.133255, 38.612583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254581, 36.364223, 38.557327>,  <32.196835, 36.749172, 38.465237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254581, 36.364223, 38.557327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989524, 0.140347, -0.033838,
		0.000253, 0.232702, 0.972548,
		0.144368, -0.962368, 0.230229,
		32.297894, 36.075512, 38.626396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764118, 36.688969, 38.839916>,  <32.196835, 36.749172, 38.465237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764118, 36.688969, 38.839916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717476, 36.333462, 38.662601>,  <32.689491, 36.120159, 38.556213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717476, 36.333462, 38.662601>,  <32.764118, 36.688969, 38.839916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717476, 36.333462, 38.662601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969226, -0.004398, -0.246135,
		0.216806, -0.458344, 0.861926,
		-0.116605, -0.888764, -0.443285,
		32.682495, 36.066833, 38.529617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284252, 36.273891, 39.018459>,  <32.764118, 36.688969, 38.839916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284252, 36.273891, 39.018459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154026, 36.094261, 38.685631>,  <33.075890, 35.986485, 38.485935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154026, 36.094261, 38.685631>,  <33.284252, 36.273891, 39.018459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154026, 36.094261, 38.685631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928735, 0.013201, -0.370509,
		0.177370, -0.893397, 0.412773,
		-0.325562, -0.449074, -0.832071,
		33.056358, 35.959538, 38.436008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585636, 36.026817, 39.256943>,  <33.284252, 36.273891, 39.018459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585636, 36.026817, 39.256943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642258, 35.640518, 39.169960>,  <32.676231, 35.408737, 39.117771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642258, 35.640518, 39.169960>,  <32.585636, 36.026817, 39.256943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642258, 35.640518, 39.169960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154365, -0.238511, 0.958793,
		-0.977821, -0.102154, -0.182840,
		0.141554, -0.965752, -0.217452,
		32.684723, 35.350792, 39.104725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926043, 35.615295, 39.336662>,  <32.585636, 36.026817, 39.256943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926043, 35.615295, 39.336662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281921, 35.453274, 39.420921>,  <32.495449, 35.356060, 39.471478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281921, 35.453274, 39.420921>,  <31.926043, 35.615295, 39.336662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281921, 35.453274, 39.420921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303614, -0.180339, 0.935573,
		-0.340967, -0.896332, -0.283426,
		0.889697, -0.405051, 0.210650,
		32.548832, 35.331760, 39.484116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809525, 34.934113, 39.618687>,  <31.926043, 35.615295, 39.336662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809525, 34.934113, 39.618687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156319, 35.085598, 39.748245>,  <32.364395, 35.176491, 39.825981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156319, 35.085598, 39.748245>,  <31.809525, 34.934113, 39.618687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156319, 35.085598, 39.748245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228943, -0.274604, 0.933904,
		0.442630, -0.883835, -0.151373,
		0.866985, 0.378719, 0.323896,
		32.416416, 35.199215, 39.845413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190647, 34.286896, 39.897812>,  <31.809525, 34.934113, 39.618687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190647, 34.286896, 39.897812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339344, 34.616756, 40.068344>,  <32.428562, 34.814671, 40.170662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339344, 34.616756, 40.068344>,  <32.190647, 34.286896, 39.897812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339344, 34.616756, 40.068344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008876, -0.456065, 0.889902,
		0.928292, -0.334601, -0.162221,
		0.371746, 0.824649, 0.426331,
		32.450867, 34.864151, 40.196243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665440, 34.035351, 40.313030>,  <32.190647, 34.286896, 39.897812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665440, 34.035351, 40.313030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589851, 34.396290, 40.467979>,  <32.544498, 34.612854, 40.560951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589851, 34.396290, 40.467979>,  <32.665440, 34.035351, 40.313030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589851, 34.396290, 40.467979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023914, -0.398595, 0.916815,
		0.981691, 0.163987, 0.096902,
		-0.188971, 0.902347, 0.387375,
		32.533161, 34.666992, 40.584190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100971, 34.074146, 40.871464>,  <32.665440, 34.035351, 40.313030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100971, 34.074146, 40.871464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836807, 34.367664, 40.935211>,  <32.678307, 34.543777, 40.973457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836807, 34.367664, 40.935211>,  <33.100971, 34.074146, 40.871464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836807, 34.367664, 40.935211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091223, -0.132256, 0.987009,
		0.745341, 0.666371, 0.020405,
		-0.660413, 0.733797, 0.159364,
		32.638683, 34.587803, 40.983021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398190, 34.547466, 41.284611>,  <33.100971, 34.074146, 40.871464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398190, 34.547466, 41.284611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002705, 34.581642, 41.333832>,  <32.765411, 34.602146, 41.363365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002705, 34.581642, 41.333832>,  <33.398190, 34.547466, 41.284611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002705, 34.581642, 41.333832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110997, -0.133791, 0.984774,
		0.100598, 0.987320, 0.122798,
		-0.988716, 0.085436, 0.123049,
		32.706089, 34.607273, 41.370747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268543, 35.053165, 41.805634>,  <33.398190, 34.547466, 41.284611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268543, 35.053165, 41.805634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914532, 34.868027, 41.785614>,  <32.702126, 34.756943, 41.773602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914532, 34.868027, 41.785614>,  <33.268543, 35.053165, 41.805634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914532, 34.868027, 41.785614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033082, -0.044713, 0.998452,
		-0.464366, 0.885311, 0.024260,
		-0.885025, -0.462844, -0.050051,
		32.649025, 34.729172, 41.770599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799614, 35.497799, 42.227104>,  <33.268543, 35.053165, 41.805634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799614, 35.497799, 42.227104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652512, 35.126610, 42.203003>,  <32.564251, 34.903896, 42.188541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652512, 35.126610, 42.203003>,  <32.799614, 35.497799, 42.227104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652512, 35.126610, 42.203003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178528, 0.006866, 0.983911,
		-0.912625, 0.372595, -0.168194,
		-0.367755, -0.927969, -0.060253,
		32.542187, 34.848221, 42.184929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096375, 35.514660, 42.434998>,  <32.799614, 35.497799, 42.227104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096375, 35.514660, 42.434998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204037, 35.133110, 42.488194>,  <32.268635, 34.904182, 42.520111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204037, 35.133110, 42.488194>,  <32.096375, 35.514660, 42.434998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204037, 35.133110, 42.488194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340080, 0.035059, 0.939743,
		-0.901056, -0.298163, -0.314956,
		0.269154, -0.953871, 0.132989,
		32.284782, 34.846951, 42.528091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592224, 35.376720, 42.918892>,  <32.096375, 35.514660, 42.434998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592224, 35.376720, 42.918892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886990, 35.108063, 42.949505>,  <32.063850, 34.946869, 42.967873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886990, 35.108063, 42.949505>,  <31.592224, 35.376720, 42.918892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886990, 35.108063, 42.949505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130041, -0.029756, 0.991062,
		-0.663360, -0.740279, -0.109268,
		0.736914, -0.671641, 0.076528,
		32.108063, 34.906570, 42.972462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455191, 35.001072, 43.582531>,  <31.592224, 35.376720, 42.918892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455191, 35.001072, 43.582531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813982, 34.877522, 43.456024>,  <32.029259, 34.803391, 43.380119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813982, 34.877522, 43.456024>,  <31.455191, 35.001072, 43.582531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813982, 34.877522, 43.456024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278641, -0.160399, 0.946906,
		-0.343205, -0.937480, -0.057809,
		0.896978, -0.308875, -0.316270,
		32.083076, 34.784859, 43.361145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543131, 34.402168, 43.841713>,  <31.455191, 35.001072, 43.582531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543131, 34.402168, 43.841713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905943, 34.551075, 43.763008>,  <32.123631, 34.640419, 43.715786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905943, 34.551075, 43.763008>,  <31.543131, 34.402168, 43.841713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905943, 34.551075, 43.763008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278754, -0.180651, 0.943219,
		0.315581, -0.910376, -0.267626,
		0.907031, 0.372264, -0.196761,
		32.178051, 34.662754, 43.703979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041874, 33.896793, 44.126472>,  <31.543131, 34.402168, 43.841713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041874, 33.896793, 44.126472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238167, 34.242741, 44.084190>,  <32.355942, 34.450310, 44.058823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238167, 34.242741, 44.084190>,  <32.041874, 33.896793, 44.126472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238167, 34.242741, 44.084190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590562, -0.240961, 0.770178,
		0.640636, -0.440378, -0.629010,
		0.490736, 0.864873, -0.105703,
		32.385387, 34.502201, 44.052479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750896, 33.733986, 44.342529>,  <32.041874, 33.896793, 44.126472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750896, 33.733986, 44.342529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703995, 34.130714, 44.362717>,  <32.675854, 34.368752, 44.374828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703995, 34.130714, 44.362717>,  <32.750896, 33.733986, 44.342529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703995, 34.130714, 44.362717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522211, 0.018354, 0.852619,
		0.844717, 0.126329, -0.520091,
		-0.117256, 0.991819, 0.050466,
		32.668819, 34.428261, 44.377857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486572, 34.073833, 44.472862>,  <32.750896, 33.733986, 44.342529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486572, 34.073833, 44.472862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215790, 34.334518, 44.609688>,  <33.053322, 34.490929, 44.691784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215790, 34.334518, 44.609688>,  <33.486572, 34.073833, 44.472862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215790, 34.334518, 44.609688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490201, 0.052537, 0.870025,
		0.549032, 0.756647, -0.355034,
		-0.676954, 0.651709, 0.342065,
		33.012703, 34.530029, 44.712307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880600, 34.539600, 44.833595>,  <33.486572, 34.073833, 44.472862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880600, 34.539600, 44.833595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514202, 34.623936, 44.970123>,  <33.294365, 34.674538, 45.052040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514202, 34.623936, 44.970123>,  <33.880600, 34.539600, 44.833595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514202, 34.623936, 44.970123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357233, 0.041457, 0.933095,
		0.182581, 0.976642, -0.113293,
		-0.915996, 0.210837, 0.341319,
		33.239403, 34.687187, 45.072517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837944, 35.202732, 45.249344>,  <33.880600, 34.539600, 44.833595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837944, 35.202732, 45.249344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559559, 34.937660, 45.359970>,  <33.392529, 34.778618, 45.426346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559559, 34.937660, 45.359970>,  <33.837944, 35.202732, 45.249344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559559, 34.937660, 45.359970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294931, 0.087370, 0.951516,
		-0.654714, 0.743789, 0.134639,
		-0.695963, -0.662680, 0.276569,
		33.350769, 34.738857, 45.442940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659611, 35.470428, 45.861225>,  <33.837944, 35.202732, 45.249344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659611, 35.470428, 45.861225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522022, 35.096645, 45.898026>,  <33.439468, 34.872375, 45.920105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522022, 35.096645, 45.898026>,  <33.659611, 35.470428, 45.861225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522022, 35.096645, 45.898026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260207, -0.000716, 0.965552,
		-0.902205, 0.356066, 0.243400,
		-0.343975, -0.934461, 0.092005,
		33.418831, 34.816307, 45.925629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216103, 35.571655, 46.418644>,  <33.659611, 35.470428, 45.861225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216103, 35.571655, 46.418644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284443, 35.178543, 46.390503>,  <33.325447, 34.942677, 46.373619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284443, 35.178543, 46.390503>,  <33.216103, 35.571655, 46.418644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284443, 35.178543, 46.390503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203574, -0.034650, 0.978446,
		-0.964037, -0.181489, 0.194149,
		0.170850, -0.982782, -0.070350,
		33.335697, 34.883709, 46.369396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762669, 35.305996, 46.950848>,  <33.216103, 35.571655, 46.418644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762669, 35.305996, 46.950848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014091, 35.001953, 46.884930>,  <33.164944, 34.819527, 46.845379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014091, 35.001953, 46.884930>,  <32.762669, 35.305996, 46.950848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014091, 35.001953, 46.884930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013569, -0.201134, 0.979470,
		-0.777648, -0.617885, -0.116110,
		0.628553, -0.760107, -0.164795,
		33.202656, 34.773922, 46.835491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468731, 34.719860, 47.314640>,  <32.762669, 35.305996, 46.950848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468731, 34.719860, 47.314640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843739, 34.593697, 47.255886>,  <33.068745, 34.517998, 47.220634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843739, 34.593697, 47.255886>,  <32.468731, 34.719860, 47.314640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843739, 34.593697, 47.255886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083458, -0.205970, 0.974993,
		-0.337772, -0.926334, -0.166778,
		0.937521, -0.315407, -0.146881,
		33.124996, 34.499077, 47.211823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529266, 34.175117, 47.872265>,  <32.468731, 34.719860, 47.314640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529266, 34.175117, 47.872265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906422, 34.205570, 47.742542>,  <33.132713, 34.223843, 47.664707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906422, 34.205570, 47.742542>,  <32.529266, 34.175117, 47.872265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906422, 34.205570, 47.742542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333120, -0.212248, 0.918685,
		0.001107, -0.974246, -0.225486,
		0.942884, 0.076131, -0.324306,
		33.189285, 34.228409, 47.645252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922096, 33.592335, 48.208176>,  <32.529266, 34.175117, 47.872265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922096, 33.592335, 48.208176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157906, 33.897938, 48.103294>,  <33.299393, 34.081299, 48.040363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157906, 33.897938, 48.103294>,  <32.922096, 33.592335, 48.208176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157906, 33.897938, 48.103294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408716, -0.002148, 0.912659,
		0.696716, -0.645202, -0.313529,
		0.589523, 0.764009, -0.262208,
		33.334763, 34.127140, 48.024632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485722, 33.477089, 48.541847>,  <32.922096, 33.592335, 48.208176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485722, 33.477089, 48.541847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481365, 33.869667, 48.465279>,  <33.478752, 34.105213, 48.419338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481365, 33.869667, 48.465279>,  <33.485722, 33.477089, 48.541847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481365, 33.869667, 48.465279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321970, 0.184677, 0.928563,
		0.946687, -0.051522, -0.318007,
		-0.010888, 0.981448, -0.191420,
		33.478100, 34.164101, 48.407852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174995, 33.753265, 48.772129>,  <33.485722, 33.477089, 48.541847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174995, 33.753265, 48.772129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945667, 34.080906, 48.764271>,  <33.808071, 34.277489, 48.759556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945667, 34.080906, 48.764271>,  <34.174995, 33.753265, 48.772129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945667, 34.080906, 48.764271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491213, 0.362811, 0.791882,
		0.655756, 0.444352, -0.610357,
		-0.573319, 0.819097, -0.019644,
		33.773670, 34.326633, 48.758377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684151, 34.315468, 49.008682>,  <34.174995, 33.753265, 48.772129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684151, 34.315468, 49.008682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301388, 34.429977, 49.028191>,  <34.071732, 34.498684, 49.039894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301388, 34.429977, 49.028191>,  <34.684151, 34.315468, 49.008682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301388, 34.429977, 49.028191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164259, 0.395078, 0.903843,
		0.239479, 0.872904, -0.425076,
		-0.956906, 0.286274, 0.048770,
		34.014317, 34.515858, 49.042820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262039, 34.749237, 48.746254>,  <34.684151, 34.315468, 49.008682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262039, 34.749237, 48.746254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651592, 34.658638, 48.752533>,  <35.885326, 34.604279, 48.756302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651592, 34.658638, 48.752533>,  <35.262039, 34.749237, 48.746254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651592, 34.658638, 48.752533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021086, -0.159091, -0.987039,
		0.226056, 0.960932, -0.159713,
		0.973886, -0.226493, 0.015701,
		35.943760, 34.590691, 48.757244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480579, 35.135574, 48.221352>,  <35.262039, 34.749237, 48.746254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480579, 35.135574, 48.221352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736671, 34.839897, 48.304966>,  <35.890327, 34.662491, 48.355137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736671, 34.839897, 48.304966>,  <35.480579, 35.135574, 48.221352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736671, 34.839897, 48.304966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173131, -0.126274, -0.976770,
		0.748418, 0.661550, 0.047133,
		0.640231, -0.739193, 0.209041,
		35.928741, 34.618137, 48.367680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987793, 35.199673, 47.707180>,  <35.480579, 35.135574, 48.221352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987793, 35.199673, 47.707180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050026, 34.833000, 47.854416>,  <36.087368, 34.612999, 47.942757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050026, 34.833000, 47.854416>,  <35.987793, 35.199673, 47.707180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050026, 34.833000, 47.854416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088431, -0.358210, -0.929444,
		0.983856, 0.177160, 0.025330,
		0.155587, -0.916679, 0.368094,
		36.096703, 34.557995, 47.964844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698704, 34.901783, 47.467392>,  <35.987793, 35.199673, 47.707180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698704, 34.901783, 47.467392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447437, 34.600559, 47.545681>,  <36.296677, 34.419823, 47.592655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447437, 34.600559, 47.545681>,  <36.698704, 34.901783, 47.467392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447437, 34.600559, 47.545681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143883, -0.359632, -0.921934,
		0.764662, -0.550965, 0.334260,
		-0.628164, -0.753062, 0.195722,
		36.258987, 34.374641, 47.604397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968452, 34.406898, 47.173317>,  <36.698704, 34.901783, 47.467392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968452, 34.406898, 47.173317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586239, 34.292267, 47.201122>,  <36.356911, 34.223488, 47.217804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586239, 34.292267, 47.201122>,  <36.968452, 34.406898, 47.173317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586239, 34.292267, 47.201122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036155, -0.347791, -0.936875,
		0.292667, -0.892699, 0.342686,
		-0.955531, -0.286582, 0.069512,
		36.299580, 34.206291, 47.221977>
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
