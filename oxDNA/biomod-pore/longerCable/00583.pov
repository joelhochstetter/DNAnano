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
	<24.321774, 35.318165, 35.009998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353334, 34.919613, 35.022682>,  <24.372271, 34.680481, 35.030293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353334, 34.919613, 35.022682>,  <24.321774, 35.318165, 35.009998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353334, 34.919613, 35.022682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600815, 0.022148, -0.799081,
		0.795484, 0.082104, 0.600386,
		0.078905, -0.996378, 0.031711,
		24.377007, 34.620701, 35.032196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.959698, 35.118149, 35.086086>,  <24.321774, 35.318165, 35.009998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.959698, 35.118149, 35.086086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751699, 34.853912, 34.869484>,  <24.626900, 34.695370, 34.739525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751699, 34.853912, 34.869484>,  <24.959698, 35.118149, 35.086086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.751699, 34.853912, 34.869484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483531, 0.294948, -0.824138,
		0.704133, -0.690381, 0.166045,
		-0.519995, -0.660591, -0.541503,
		24.595701, 34.655735, 34.707031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386456, 34.682652, 34.805454>,  <24.959698, 35.118149, 35.086086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386456, 34.682652, 34.805454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046101, 34.748810, 34.606003>,  <24.841887, 34.788506, 34.486332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046101, 34.748810, 34.606003>,  <25.386456, 34.682652, 34.805454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046101, 34.748810, 34.606003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524408, 0.324124, -0.787363,
		0.031388, -0.931443, -0.362530,
		-0.850889, 0.165400, -0.498629,
		24.790834, 34.798431, 34.456413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292883, 34.229641, 34.088940>,  <25.386456, 34.682652, 34.805454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292883, 34.229641, 34.088940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118490, 34.588776, 34.113640>,  <25.013855, 34.804256, 34.128460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118490, 34.588776, 34.113640>,  <25.292883, 34.229641, 34.088940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118490, 34.588776, 34.113640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425266, 0.266000, -0.865097,
		-0.793139, -0.350907, -0.497790,
		-0.435980, 0.897836, 0.061746,
		24.987696, 34.858128, 34.132164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739382, 34.327904, 33.641106>,  <25.292883, 34.229641, 34.088940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.739382, 34.327904, 33.641106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944145, 34.667389, 33.694221>,  <25.067003, 34.871082, 33.726089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944145, 34.667389, 33.694221>,  <24.739382, 34.327904, 33.641106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944145, 34.667389, 33.694221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398237, -0.097495, -0.912086,
		-0.761155, 0.519786, -0.387898,
		0.511908, 0.848715, 0.132790,
		25.097717, 34.922005, 33.734058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.778412, 34.542023, 32.983006>,  <24.739382, 34.327904, 33.641106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.778412, 34.542023, 32.983006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085175, 34.738113, 33.148670>,  <25.269232, 34.855766, 33.248070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085175, 34.738113, 33.148670>,  <24.778412, 34.542023, 32.983006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085175, 34.738113, 33.148670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389319, 0.157653, -0.907511,
		-0.510180, 0.857218, -0.069949,
		0.766907, 0.490227, 0.414163,
		25.315247, 34.885181, 33.272919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830112, 35.184174, 32.626583>,  <24.778412, 34.542023, 32.983006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830112, 35.184174, 32.626583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152145, 34.970657, 32.730049>,  <25.345366, 34.842548, 32.792130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152145, 34.970657, 32.730049>,  <24.830112, 35.184174, 32.626583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152145, 34.970657, 32.730049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262649, -0.070200, -0.962334,
		0.531843, 0.842698, 0.083682,
		0.805083, -0.533790, 0.258669,
		25.393671, 34.810520, 32.807652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341320, 35.498806, 32.242237>,  <24.830112, 35.184174, 32.626583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341320, 35.498806, 32.242237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475718, 35.133877, 32.335857>,  <25.556356, 34.914921, 32.392029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475718, 35.133877, 32.335857>,  <25.341320, 35.498806, 32.242237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475718, 35.133877, 32.335857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340761, -0.113918, -0.933223,
		0.878060, 0.393313, 0.272608,
		0.335993, -0.912320, 0.234053,
		25.576515, 34.860180, 32.406075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073864, 35.536034, 32.189621>,  <25.341320, 35.498806, 32.242237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073864, 35.536034, 32.189621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955862, 35.156689, 32.142990>,  <25.885061, 34.929081, 32.115013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955862, 35.156689, 32.142990>,  <26.073864, 35.536034, 32.189621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955862, 35.156689, 32.142990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295781, 0.025371, -0.954919,
		0.908563, -0.316184, 0.273022,
		-0.295003, -0.948359, -0.116572,
		25.867361, 34.872181, 32.108017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461998, 34.824539, 32.550255>,  <26.073864, 35.536034, 32.189621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461998, 34.824539, 32.550255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708204, 34.924274, 32.849312>,  <26.855928, 34.984116, 33.028748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708204, 34.924274, 32.849312>,  <26.461998, 34.824539, 32.550255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708204, 34.924274, 32.849312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425882, 0.903433, 0.049329,
		-0.663146, -0.348770, 0.662266,
		0.615518, 0.249335, 0.747643,
		26.892860, 34.999073, 33.073605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150665, 34.916122, 33.157230>,  <26.461998, 34.824539, 32.550255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150665, 34.916122, 33.157230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454556, 35.172745, 33.114838>,  <26.636889, 35.326717, 33.089401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454556, 35.172745, 33.114838>,  <26.150665, 34.916122, 33.157230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454556, 35.172745, 33.114838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642486, 0.715513, -0.274324,
		-0.100161, 0.276503, 0.955779,
		0.759723, 0.641551, -0.105983,
		26.682472, 35.365211, 33.083042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083023, 35.556416, 33.682514>,  <26.150665, 34.916122, 33.157230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083023, 35.556416, 33.682514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234299, 35.588768, 33.313641>,  <26.325064, 35.608177, 33.092316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234299, 35.588768, 33.313641>,  <26.083023, 35.556416, 33.682514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234299, 35.588768, 33.313641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737743, 0.628091, -0.247463,
		0.559203, 0.773925, 0.297206,
		0.378190, 0.080880, -0.922188,
		26.347755, 35.613033, 33.036983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456491, 36.174297, 33.967686>,  <26.083023, 35.556416, 33.682514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456491, 36.174297, 33.967686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706341, 35.949924, 33.750355>,  <26.856251, 35.815300, 33.619957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706341, 35.949924, 33.750355>,  <26.456491, 36.174297, 33.967686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706341, 35.949924, 33.750355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755469, 0.610233, 0.238500,
		0.197775, -0.559440, 0.804930,
		0.624621, -0.560931, -0.543328,
		26.893726, 35.781647, 33.587357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052517, 35.809101, 34.465439>,  <26.456491, 36.174297, 33.967686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052517, 35.809101, 34.465439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159777, 35.922504, 34.097153>,  <27.224133, 35.990547, 33.876183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159777, 35.922504, 34.097153>,  <27.052517, 35.809101, 34.465439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159777, 35.922504, 34.097153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857076, 0.366200, 0.362377,
		0.439904, -0.886296, -0.144791,
		0.268151, 0.283508, -0.920716,
		27.240221, 36.007557, 33.820938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697853, 35.483265, 34.146011>,  <27.052517, 35.809101, 34.465439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697853, 35.483265, 34.146011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630041, 35.857513, 34.022156>,  <27.589354, 36.082062, 33.947842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630041, 35.857513, 34.022156>,  <27.697853, 35.483265, 34.146011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630041, 35.857513, 34.022156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866365, 0.291243, 0.405697,
		0.469758, -0.199484, -0.859961,
		-0.169528, 0.935619, -0.309640,
		27.579184, 36.138199, 33.929264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226713, 35.692841, 33.653393>,  <27.697853, 35.483265, 34.146011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226713, 35.692841, 33.653393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092903, 36.028362, 33.825203>,  <28.012617, 36.229675, 33.928291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092903, 36.028362, 33.825203>,  <28.226713, 35.692841, 33.653393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092903, 36.028362, 33.825203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912035, 0.173423, 0.371640,
		0.237244, 0.516068, -0.823036,
		-0.334525, 0.838808, 0.429528,
		27.992546, 36.280006, 33.954060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497463, 36.493134, 33.478405>,  <28.226713, 35.692841, 33.653393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497463, 36.493134, 33.478405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409523, 36.479465, 33.868378>,  <28.356760, 36.471264, 34.102364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409523, 36.479465, 33.868378>,  <28.497463, 36.493134, 33.478405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409523, 36.479465, 33.868378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960238, 0.168699, 0.222447,
		-0.172071, 0.985075, -0.004280,
		-0.219849, -0.034167, 0.974935,
		28.343569, 36.469215, 34.160858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854830, 37.059536, 33.786873>,  <28.497463, 36.493134, 33.478405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854830, 37.059536, 33.786873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798279, 36.774876, 34.062138>,  <28.764349, 36.604080, 34.227295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798279, 36.774876, 34.062138>,  <28.854830, 37.059536, 33.786873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798279, 36.774876, 34.062138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910592, 0.179232, 0.372421,
		-0.388374, 0.679288, 0.622682,
		-0.141377, -0.711649, 0.688163,
		28.755865, 36.561382, 34.268585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053352, 37.349159, 34.412849>,  <28.854830, 37.059536, 33.786873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053352, 37.349159, 34.412849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066673, 36.950260, 34.439327>,  <29.074665, 36.710918, 34.455212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066673, 36.950260, 34.439327>,  <29.053352, 37.349159, 34.412849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066673, 36.950260, 34.439327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891473, 0.059582, 0.449140,
		-0.451849, 0.044051, 0.891006,
		0.033303, -0.997251, 0.066193,
		29.076664, 36.651085, 34.459187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050095, 37.306274, 35.086052>,  <29.053352, 37.349159, 34.412849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050095, 37.306274, 35.086052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896351, 37.635796, 35.252720>,  <28.804104, 37.833508, 35.352722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896351, 37.635796, 35.252720>,  <29.050095, 37.306274, 35.086052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896351, 37.635796, 35.252720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300650, -0.315037, 0.900201,
		0.872855, 0.471273, -0.126589,
		-0.384361, 0.823804, 0.416670,
		28.781042, 37.882938, 35.377720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298637, 37.975910, 35.282635>,  <29.050095, 37.306274, 35.086052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298637, 37.975910, 35.282635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481262, 37.872505, 34.942112>,  <29.590837, 37.810463, 34.737801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481262, 37.872505, 34.942112>,  <29.298637, 37.975910, 35.282635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481262, 37.872505, 34.942112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429641, 0.901952, -0.043475,
		0.779076, -0.345907, 0.522866,
		0.456562, -0.258516, -0.851305,
		29.618231, 37.794952, 34.686722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039108, 37.946423, 35.461216>,  <29.298637, 37.975910, 35.282635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039108, 37.946423, 35.461216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014996, 38.054134, 35.076748>,  <30.000528, 38.118759, 34.846066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014996, 38.054134, 35.076748>,  <30.039108, 37.946423, 35.461216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014996, 38.054134, 35.076748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532091, 0.823378, 0.197302,
		0.844539, -0.499539, -0.192912,
		-0.060280, 0.269276, -0.961175,
		29.996912, 38.134918, 34.788395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712992, 38.178295, 35.380867>,  <30.039108, 37.946423, 35.461216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712992, 38.178295, 35.380867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487726, 38.310398, 35.077873>,  <30.352568, 38.389660, 34.896076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487726, 38.310398, 35.077873>,  <30.712992, 38.178295, 35.380867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487726, 38.310398, 35.077873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607357, 0.786994, -0.108430,
		0.560325, -0.521126, -0.643789,
		-0.563164, 0.330254, -0.757482,
		30.318777, 38.409473, 34.850628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136801, 38.342602, 34.736374>,  <30.712992, 38.178295, 35.380867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136801, 38.342602, 34.736374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811440, 38.573326, 34.766491>,  <30.616222, 38.711761, 34.784561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811440, 38.573326, 34.766491>,  <31.136801, 38.342602, 34.736374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811440, 38.573326, 34.766491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576418, 0.816639, -0.029031,
		-0.078230, 0.019785, -0.996739,
		-0.813401, 0.576810, 0.075290,
		30.567419, 38.746368, 34.789078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177301, 38.943237, 34.295498>,  <31.136801, 38.342602, 34.736374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177301, 38.943237, 34.295498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937122, 39.034977, 34.601925>,  <30.793015, 39.090019, 34.785782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937122, 39.034977, 34.601925>,  <31.177301, 38.943237, 34.295498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937122, 39.034977, 34.601925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556747, 0.807565, 0.194607,
		-0.574018, 0.543358, -0.612589,
		-0.600446, 0.229349, 0.766070,
		30.756989, 39.103783, 34.831745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794598, 39.634460, 34.299263>,  <31.177301, 38.943237, 34.295498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794598, 39.634460, 34.299263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902920, 39.499001, 34.659702>,  <30.967913, 39.417725, 34.875965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902920, 39.499001, 34.659702>,  <30.794598, 39.634460, 34.299263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902920, 39.499001, 34.659702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584442, 0.801651, 0.125630,
		-0.764912, 0.492620, 0.415012,
		0.270807, -0.338646, 0.901100,
		30.984161, 39.397408, 34.930031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625023, 40.065716, 34.954880>,  <30.794598, 39.634460, 34.299263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625023, 40.065716, 34.954880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947351, 39.836372, 35.014084>,  <31.140749, 39.698765, 35.049606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947351, 39.836372, 35.014084>,  <30.625023, 40.065716, 34.954880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947351, 39.836372, 35.014084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568247, 0.819048, 0.079090,
		-0.166574, 0.020373, 0.985818,
		0.805822, -0.573362, 0.148009,
		31.189098, 39.664364, 35.058487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091389, 40.418804, 35.436142>,  <30.625023, 40.065716, 34.954880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091389, 40.418804, 35.436142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316561, 40.159527, 35.231026>,  <31.451664, 40.003960, 35.107956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316561, 40.159527, 35.231026>,  <31.091389, 40.418804, 35.436142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316561, 40.159527, 35.231026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711520, 0.695745, -0.098375,
		0.420537, -0.309481, 0.852860,
		0.562928, -0.648197, -0.512789,
		31.485439, 39.965069, 35.077190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872658, 40.407619, 35.491615>,  <31.091389, 40.418804, 35.436142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872658, 40.407619, 35.491615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812088, 40.240685, 35.133198>,  <31.775745, 40.140526, 34.918148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812088, 40.240685, 35.133198>,  <31.872658, 40.407619, 35.491615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812088, 40.240685, 35.133198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599932, 0.681643, -0.418859,
		0.785590, -0.600994, 0.147155,
		-0.151425, -0.417335, -0.896048,
		31.766661, 40.115482, 34.864384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526466, 40.266373, 35.331059>,  <31.872658, 40.407619, 35.491615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526466, 40.266373, 35.331059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245586, 40.331371, 35.053783>,  <32.077061, 40.370369, 34.887417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245586, 40.331371, 35.053783>,  <32.526466, 40.266373, 35.331059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245586, 40.331371, 35.053783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479913, 0.827214, -0.292233,
		0.525930, -0.537877, -0.658852,
		-0.702197, 0.162497, -0.693191,
		32.034927, 40.380119, 34.845825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199924, 39.844345, 35.477303>,  <32.526466, 40.266373, 35.331059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199924, 39.844345, 35.477303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484138, 40.123119, 35.438477>,  <33.654667, 40.290382, 35.415180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484138, 40.123119, 35.438477>,  <33.199924, 39.844345, 35.477303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484138, 40.123119, 35.438477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246515, 0.375746, 0.893334,
		0.659068, -0.610816, 0.438786,
		0.710535, 0.696935, -0.097067,
		33.697300, 40.332199, 35.409355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526222, 39.935806, 36.104748>,  <33.199924, 39.844345, 35.477303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526222, 39.935806, 36.104748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602657, 40.280499, 35.916748>,  <33.648518, 40.487316, 35.803947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602657, 40.280499, 35.916748>,  <33.526222, 39.935806, 36.104748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602657, 40.280499, 35.916748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442597, 0.503026, 0.742343,
		0.876125, 0.066168, 0.477523,
		0.191087, 0.861735, -0.470000,
		33.659985, 40.539021, 35.775749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753574, 40.464703, 36.653961>,  <33.526222, 39.935806, 36.104748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753574, 40.464703, 36.653961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612053, 40.652111, 36.330158>,  <33.527138, 40.764557, 36.135876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612053, 40.652111, 36.330158>,  <33.753574, 40.464703, 36.653961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612053, 40.652111, 36.330158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566064, 0.581727, 0.584094,
		0.744574, 0.664892, 0.059394,
		-0.353808, 0.468522, -0.809510,
		33.505909, 40.792667, 36.087307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003586, 41.270172, 36.591602>,  <33.753574, 40.464703, 36.653961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003586, 41.270172, 36.591602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651211, 41.150711, 36.444763>,  <33.439785, 41.079033, 36.356659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651211, 41.150711, 36.444763>,  <34.003586, 41.270172, 36.591602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651211, 41.150711, 36.444763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461065, 0.716462, 0.523546,
		0.106656, 0.630467, -0.768854,
		-0.880933, -0.298652, -0.367101,
		33.386932, 41.061115, 36.334633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549755, 41.572815, 36.487007>,  <34.003586, 41.270172, 36.591602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549755, 41.572815, 36.487007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397354, 41.594250, 36.117802>,  <34.305912, 41.607113, 35.896278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397354, 41.594250, 36.117802>,  <34.549755, 41.572815, 36.487007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397354, 41.594250, 36.117802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702638, 0.632094, 0.326736,
		0.600945, 0.773036, -0.203177,
		-0.381005, 0.053591, -0.923018,
		34.283054, 41.610329, 35.840897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494797, 42.322071, 36.378017>,  <34.549755, 41.572815, 36.487007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494797, 42.322071, 36.378017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234093, 42.111481, 36.159645>,  <34.077671, 41.985126, 36.028622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234093, 42.111481, 36.159645>,  <34.494797, 42.322071, 36.378017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234093, 42.111481, 36.159645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744385, 0.581932, 0.327486,
		0.145279, 0.619820, -0.771179,
		-0.651756, -0.526477, -0.545927,
		34.038567, 41.953537, 35.995869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113201, 42.767494, 35.829342>,  <34.494797, 42.322071, 36.378017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113201, 42.767494, 35.829342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903049, 42.460365, 35.975998>,  <33.776958, 42.276089, 36.063992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903049, 42.460365, 35.975998>,  <34.113201, 42.767494, 35.829342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903049, 42.460365, 35.975998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747687, 0.622283, 0.231793,
		-0.406127, -0.152350, -0.901027,
		-0.525380, -0.767824, 0.366636,
		33.745434, 42.230019, 36.085987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449238, 42.892460, 35.566391>,  <34.113201, 42.767494, 35.829342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449238, 42.892460, 35.566391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445919, 42.679607, 35.905041>,  <33.443928, 42.551895, 36.108231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445919, 42.679607, 35.905041>,  <33.449238, 42.892460, 35.566391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445919, 42.679607, 35.905041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536064, 0.717081, 0.445454,
		-0.844136, -0.450148, -0.291205,
		-0.008297, -0.532128, 0.846623,
		33.443428, 42.519970, 36.159027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806168, 42.513809, 35.728298>,  <33.449238, 42.892460, 35.566391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806168, 42.513809, 35.728298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028042, 42.655483, 36.029465>,  <33.161167, 42.740486, 36.210163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028042, 42.655483, 36.029465>,  <32.806168, 42.513809, 35.728298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028042, 42.655483, 36.029465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732963, 0.636270, 0.240677,
		-0.393812, -0.685357, 0.612534,
		0.554687, 0.354183, 0.752912,
		33.194447, 42.761738, 36.255337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401413, 42.633114, 36.365726>,  <32.806168, 42.513809, 35.728298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401413, 42.633114, 36.365726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727074, 42.865292, 36.359535>,  <32.922470, 43.004597, 36.355820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727074, 42.865292, 36.359535>,  <32.401413, 42.633114, 36.365726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727074, 42.865292, 36.359535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579354, 0.810262, -0.088458,
		-0.038800, 0.080988, 0.995960,
		0.814152, 0.580445, -0.015482,
		32.971321, 43.039425, 36.354889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805838, 42.642956, 36.805420>,  <32.401413, 42.633114, 36.365726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805838, 42.642956, 36.805420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666079, 42.690670, 37.177158>,  <31.582222, 42.719299, 37.400204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666079, 42.690670, 37.177158>,  <31.805838, 42.642956, 36.805420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666079, 42.690670, 37.177158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131431, -0.975817, 0.174664,
		0.927710, 0.183173, 0.325273,
		-0.349400, 0.119287, 0.929349,
		31.561258, 42.726456, 37.455963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212959, 42.528969, 37.512218>,  <31.805838, 42.642956, 36.805420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212959, 42.528969, 37.512218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822325, 42.449429, 37.545044>,  <31.587944, 42.401703, 37.564739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822325, 42.449429, 37.545044>,  <32.212959, 42.528969, 37.512218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822325, 42.449429, 37.545044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207285, -0.971880, 0.111728,
		0.057540, 0.126123, 0.990344,
		-0.976587, -0.198854, 0.082065,
		31.529348, 42.389771, 37.569664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893768, 42.487713, 37.280716>,  <32.212959, 42.528969, 37.512218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893768, 42.487713, 37.280716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088890, 42.241550, 37.528370>,  <33.205963, 42.093853, 37.676960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088890, 42.241550, 37.528370>,  <32.893768, 42.487713, 37.280716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088890, 42.241550, 37.528370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224569, 0.773835, 0.592240,
		-0.843574, -0.149859, 0.515680,
		0.487803, -0.615404, 0.619133,
		33.235229, 42.056931, 37.714111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362434, 41.883209, 37.243561>,  <32.893768, 42.487713, 37.280716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362434, 41.883209, 37.243561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378288, 42.076740, 36.893852>,  <33.387798, 42.192860, 36.684029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378288, 42.076740, 36.893852>,  <33.362434, 41.883209, 37.243561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378288, 42.076740, 36.893852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303856, -0.839354, -0.450729,
		-0.951894, -0.247788, -0.180277,
		0.039631, 0.483825, -0.874267,
		33.390179, 42.221889, 36.631573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053738, 41.379025, 36.808872>,  <33.362434, 41.883209, 37.243561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053738, 41.379025, 36.808872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270649, 41.632481, 36.588173>,  <33.400795, 41.784554, 36.455753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270649, 41.632481, 36.588173>,  <33.053738, 41.379025, 36.808872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270649, 41.632481, 36.588173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350106, -0.767378, -0.537175,
		-0.763778, 0.098127, -0.637976,
		0.542280, 0.633642, -0.551752,
		33.433334, 41.822575, 36.422646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869408, 41.335186, 36.090473>,  <33.053738, 41.379025, 36.808872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869408, 41.335186, 36.090473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252174, 41.447006, 36.121876>,  <33.481834, 41.514099, 36.140717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252174, 41.447006, 36.121876>,  <32.869408, 41.335186, 36.090473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252174, 41.447006, 36.121876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251726, -0.663928, -0.704154,
		-0.144725, 0.693578, -0.705694,
		0.956916, 0.279550, 0.078505,
		33.539249, 41.530872, 36.145428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155396, 41.665741, 35.385414>,  <32.869408, 41.335186, 36.090473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155396, 41.665741, 35.385414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410942, 41.470993, 35.623676>,  <33.564270, 41.354145, 35.766632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410942, 41.470993, 35.623676>,  <33.155396, 41.665741, 35.385414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410942, 41.470993, 35.623676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287726, -0.566862, -0.771934,
		0.713488, 0.664547, -0.222062,
		0.638865, -0.486872, 0.595657,
		33.602600, 41.324932, 35.802372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968124, 41.686649, 35.215668>,  <33.155396, 41.665741, 35.385414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968124, 41.686649, 35.215668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889420, 41.341576, 35.402031>,  <33.842197, 41.134533, 35.513847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889420, 41.341576, 35.402031>,  <33.968124, 41.686649, 35.215668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889420, 41.341576, 35.402031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532699, -0.492998, -0.687884,
		0.823115, 0.112840, 0.556551,
		-0.196758, -0.862682, 0.465904,
		33.830391, 41.082771, 35.541801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608139, 41.244438, 35.404964>,  <33.968124, 41.686649, 35.215668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608139, 41.244438, 35.404964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304199, 40.985363, 35.382595>,  <34.121838, 40.829918, 35.369175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304199, 40.985363, 35.382595>,  <34.608139, 41.244438, 35.404964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304199, 40.985363, 35.382595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555646, -0.602382, -0.573057,
		0.337477, -0.466509, 0.817606,
		-0.759847, -0.647692, -0.055924,
		34.076244, 40.791054, 35.365818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734066, 40.474365, 35.686283>,  <34.608139, 41.244438, 35.404964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734066, 40.474365, 35.686283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491440, 40.522202, 35.371887>,  <34.345863, 40.550903, 35.183250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491440, 40.522202, 35.371887>,  <34.734066, 40.474365, 35.686283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491440, 40.522202, 35.371887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672479, -0.450172, -0.587466,
		-0.424083, -0.884897, 0.192639,
		-0.606568, 0.119589, -0.785985,
		34.309471, 40.558079, 35.136093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449932, 39.884499, 35.376511>,  <34.734066, 40.474365, 35.686283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449932, 39.884499, 35.376511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456848, 40.153851, 35.080872>,  <34.460999, 40.315460, 34.903488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456848, 40.153851, 35.080872>,  <34.449932, 39.884499, 35.376511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456848, 40.153851, 35.080872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458846, -0.662115, -0.592506,
		-0.888347, -0.328886, -0.320426,
		0.017292, 0.673377, -0.739096,
		34.462036, 40.355865, 34.859142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000950, 39.613518, 34.814793>,  <34.449932, 39.884499, 35.376511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000950, 39.613518, 34.814793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329739, 39.830807, 34.746361>,  <34.527012, 39.961182, 34.705299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329739, 39.830807, 34.746361>,  <34.000950, 39.613518, 34.814793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329739, 39.830807, 34.746361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411140, -0.773845, -0.481796,
		-0.394116, 0.325683, -0.859420,
		0.821971, 0.543226, -0.171084,
		34.576328, 39.993774, 34.695034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186562, 39.635559, 34.058392>,  <34.000950, 39.613518, 34.814793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186562, 39.635559, 34.058392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519363, 39.671265, 34.277409>,  <34.719044, 39.692688, 34.408817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519363, 39.671265, 34.277409>,  <34.186562, 39.635559, 34.058392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519363, 39.671265, 34.277409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403582, -0.774581, -0.486975,
		0.380644, 0.626143, -0.680481,
		0.832004, 0.089266, 0.547540,
		34.768967, 39.698044, 34.441669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751354, 39.772274, 33.680843>,  <34.186562, 39.635559, 34.058392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751354, 39.772274, 33.680843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866203, 39.563362, 34.002037>,  <34.935112, 39.438015, 34.194752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866203, 39.563362, 34.002037>,  <34.751354, 39.772274, 33.680843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866203, 39.563362, 34.002037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338060, -0.729092, -0.595097,
		0.896256, 0.442323, -0.032778,
		0.287123, -0.522278, 0.802985,
		34.952339, 39.406677, 34.242931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284256, 39.334900, 33.442501>,  <34.751354, 39.772274, 33.680843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284256, 39.334900, 33.442501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240025, 39.133911, 33.785500>,  <35.213486, 39.013317, 33.991299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240025, 39.133911, 33.785500>,  <35.284256, 39.334900, 33.442501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240025, 39.133911, 33.785500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381912, -0.818024, -0.430093,
		0.917559, 0.279926, 0.282358,
		-0.110581, -0.502472, 0.857493,
		35.206852, 38.983170, 34.042747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805779, 38.783550, 33.545372>,  <35.284256, 39.334900, 33.442501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805779, 38.783550, 33.545372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553886, 38.657772, 33.829502>,  <35.402752, 38.582306, 33.999981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553886, 38.657772, 33.829502>,  <35.805779, 38.783550, 33.545372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553886, 38.657772, 33.829502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446747, -0.894660, 0.000019,
		0.635494, 0.317348, 0.703874,
		-0.629734, -0.314441, 0.710325,
		35.364967, 38.563438, 34.042599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253998, 38.433720, 34.126663>,  <35.805779, 38.783550, 33.545372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253998, 38.433720, 34.126663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876026, 38.303276, 34.137733>,  <35.649242, 38.225010, 34.144375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876026, 38.303276, 34.137733>,  <36.253998, 38.433720, 34.126663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876026, 38.303276, 34.137733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325848, -0.929488, 0.172843,
		-0.030643, 0.172341, 0.984560,
		-0.944925, -0.326113, 0.027675,
		35.592548, 38.205441, 34.146034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264755, 37.879509, 34.586254>,  <36.253998, 38.433720, 34.126663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264755, 37.879509, 34.586254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935989, 37.788933, 34.377186>,  <35.738731, 37.734585, 34.251747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935989, 37.788933, 34.377186>,  <36.264755, 37.879509, 34.586254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935989, 37.788933, 34.377186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138703, -0.969529, 0.201927,
		-0.552467, 0.093471, 0.828277,
		-0.821913, -0.226443, -0.522668,
		35.689415, 37.721001, 34.220387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986500, 37.296127, 34.874523>,  <36.264755, 37.879509, 34.586254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986500, 37.296127, 34.874523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830147, 37.311680, 34.506676>,  <35.736336, 37.321011, 34.285969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830147, 37.311680, 34.506676>,  <35.986500, 37.296127, 34.874523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830147, 37.311680, 34.506676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120358, -0.988370, -0.092946,
		-0.912537, -0.147015, 0.381659,
		-0.390885, 0.038881, -0.919618,
		35.712883, 37.323345, 34.230789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536133, 36.749958, 34.846363>,  <35.986500, 37.296127, 34.874523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536133, 36.749958, 34.846363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633976, 36.829163, 34.466686>,  <35.692680, 36.876686, 34.238880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633976, 36.829163, 34.466686>,  <35.536133, 36.749958, 34.846363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633976, 36.829163, 34.466686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233257, -0.962194, -0.140619,
		-0.941148, -0.187009, -0.281545,
		0.244604, 0.198015, -0.949188,
		35.707355, 36.888569, 34.181931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304710, 36.202248, 34.490089>,  <35.536133, 36.749958, 34.846363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304710, 36.202248, 34.490089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540905, 36.347870, 34.201984>,  <35.682621, 36.435246, 34.029121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540905, 36.347870, 34.201984>,  <35.304710, 36.202248, 34.490089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540905, 36.347870, 34.201984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048025, -0.906742, -0.418942,
		-0.805615, 0.212790, -0.552905,
		0.590489, 0.364059, -0.720266,
		35.718052, 36.457088, 33.985905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057636, 36.108696, 33.688808>,  <35.304710, 36.202248, 34.490089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057636, 36.108696, 33.688808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442059, 36.073128, 33.793468>,  <35.672714, 36.051785, 33.856262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442059, 36.073128, 33.793468>,  <35.057636, 36.108696, 33.688808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442059, 36.073128, 33.793468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000918, -0.945780, -0.324806,
		0.276344, 0.312398, -0.908868,
		0.961058, -0.088924, 0.261648,
		35.730377, 36.046452, 33.871964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668167, 35.987171, 33.147106>,  <35.057636, 36.108696, 33.688808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668167, 35.987171, 33.147106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728458, 35.789585, 33.489632>,  <35.764633, 35.671032, 33.695148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728458, 35.789585, 33.489632>,  <35.668167, 35.987171, 33.147106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728458, 35.789585, 33.489632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061100, -0.859902, -0.506789,
		0.986685, 0.128708, -0.099431,
		0.150729, -0.493966, 0.856317,
		35.773678, 35.641396, 33.746529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057159, 35.486916, 32.877590>,  <35.668167, 35.987171, 33.147106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057159, 35.486916, 32.877590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989815, 35.376179, 33.256012>,  <35.949409, 35.309738, 33.483063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989815, 35.376179, 33.256012>,  <36.057159, 35.486916, 32.877590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989815, 35.376179, 33.256012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058050, -0.955301, -0.289880,
		0.984014, -0.103724, 0.144766,
		-0.168362, -0.276843, 0.946051,
		35.939304, 35.293125, 33.539825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418808, 34.930622, 33.203499>,  <36.057159, 35.486916, 32.877590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418808, 34.930622, 33.203499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059395, 34.907364, 33.377518>,  <35.843746, 34.893410, 33.481930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059395, 34.907364, 33.377518>,  <36.418808, 34.930622, 33.203499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059395, 34.907364, 33.377518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131646, -0.909845, -0.393511,
		0.418704, -0.410853, 0.809868,
		-0.898530, -0.058149, 0.435043,
		35.789837, 34.889919, 33.508030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338223, 34.260643, 33.175869>,  <36.418808, 34.930622, 33.203499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338223, 34.260643, 33.175869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976429, 34.422211, 33.230640>,  <35.759354, 34.519154, 33.263504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976429, 34.422211, 33.230640>,  <36.338223, 34.260643, 33.175869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976429, 34.422211, 33.230640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420201, -0.788975, -0.448274,
		-0.073032, -0.462997, 0.883346,
		-0.904487, 0.403921, 0.136932,
		35.705082, 34.543388, 33.271721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934765, 33.763905, 33.482304>,  <36.338223, 34.260643, 33.175869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934765, 33.763905, 33.482304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673042, 34.016689, 33.316170>,  <35.516006, 34.168362, 33.216488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673042, 34.016689, 33.316170>,  <35.934765, 33.763905, 33.482304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673042, 34.016689, 33.316170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346436, -0.738690, -0.578203,
		-0.672205, -0.234438, 0.702267,
		-0.654311, 0.631962, -0.415333,
		35.476749, 34.206280, 33.191570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300152, 33.399326, 33.491024>,  <35.934765, 33.763905, 33.482304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300152, 33.399326, 33.491024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337704, 33.660221, 33.190151>,  <35.360233, 33.816757, 33.009628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337704, 33.660221, 33.190151>,  <35.300152, 33.399326, 33.491024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337704, 33.660221, 33.190151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276477, -0.708723, -0.649055,
		-0.956424, 0.268891, 0.113796,
		0.093875, 0.652234, -0.752182,
		35.365868, 33.855892, 32.964497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759380, 33.216694, 33.007076>,  <35.300152, 33.399326, 33.491024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759380, 33.216694, 33.007076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019482, 33.423042, 32.783989>,  <35.175541, 33.546852, 32.650135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019482, 33.423042, 32.783989>,  <34.759380, 33.216694, 33.007076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019482, 33.423042, 32.783989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124007, -0.652196, -0.747839,
		-0.749528, 0.555446, -0.360122,
		0.650254, 0.515868, -0.557718,
		35.214558, 33.577805, 32.616673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503719, 33.218407, 32.314758>,  <34.759380, 33.216694, 33.007076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503719, 33.218407, 32.314758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882568, 33.321121, 32.237797>,  <35.109879, 33.382751, 32.191620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882568, 33.321121, 32.237797>,  <34.503719, 33.218407, 32.314758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882568, 33.321121, 32.237797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019732, -0.645101, -0.763842,
		-0.320267, 0.719655, -0.616057,
		0.947122, 0.256789, -0.192404,
		35.166706, 33.398159, 32.180077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562008, 33.283913, 31.612995>,  <34.503719, 33.218407, 32.314758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562008, 33.283913, 31.612995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941467, 33.225513, 31.725245>,  <35.169144, 33.190475, 31.792595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941467, 33.225513, 31.725245>,  <34.562008, 33.283913, 31.612995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941467, 33.225513, 31.725245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112937, -0.672339, -0.731577,
		0.295482, 0.725703, -0.621326,
		0.948649, -0.145997, 0.280623,
		35.226063, 33.181713, 31.809431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927666, 33.275146, 30.909975>,  <34.562008, 33.283913, 31.612995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927666, 33.275146, 30.909975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156765, 33.109558, 31.192984>,  <35.294224, 33.010204, 31.362789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156765, 33.109558, 31.192984>,  <34.927666, 33.275146, 30.909975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156765, 33.109558, 31.192984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316191, -0.684751, -0.656612,
		0.756293, 0.599787, -0.261298,
		0.572751, -0.413971, 0.707520,
		35.328590, 32.985367, 31.405239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573574, 33.244534, 30.646044>,  <34.927666, 33.275146, 30.909975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573574, 33.244534, 30.646044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600925, 32.975815, 30.941074>,  <35.617336, 32.814583, 31.118092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600925, 32.975815, 30.941074>,  <35.573574, 33.244534, 30.646044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600925, 32.975815, 30.941074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336758, -0.680372, -0.650913,
		0.939105, 0.292893, 0.179709,
		0.068379, -0.671794, 0.737575,
		35.621441, 32.774277, 31.162348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188637, 32.954533, 30.435160>,  <35.573574, 33.244534, 30.646044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188637, 32.954533, 30.435160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026608, 32.701767, 30.699463>,  <35.929390, 32.550110, 30.858046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026608, 32.701767, 30.699463>,  <36.188637, 32.954533, 30.435160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026608, 32.701767, 30.699463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419947, -0.770555, -0.479468,
		0.812132, 0.083263, 0.577502,
		-0.405075, -0.631912, 0.660758,
		35.905087, 32.512192, 30.897690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629543, 32.498486, 30.568495>,  <36.188637, 32.954533, 30.435160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629543, 32.498486, 30.568495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323864, 32.285629, 30.714277>,  <36.140457, 32.157917, 30.801746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323864, 32.285629, 30.714277>,  <36.629543, 32.498486, 30.568495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323864, 32.285629, 30.714277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277234, -0.781209, -0.559333,
		0.582362, -0.326400, 0.744525,
		-0.764197, -0.532141, 0.364457,
		36.094604, 32.125988, 30.823614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984482, 31.819492, 30.897306>,  <36.629543, 32.498486, 30.568495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984482, 31.819492, 30.897306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602474, 31.751228, 30.800306>,  <36.373268, 31.710270, 30.742105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602474, 31.751228, 30.800306>,  <36.984482, 31.819492, 30.897306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602474, 31.751228, 30.800306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269816, -0.839354, -0.471894,
		-0.123011, -0.516101, 0.847649,
		-0.955022, -0.170662, -0.242502,
		36.315968, 31.700029, 30.727556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828266, 31.177179, 31.033054>,  <36.984482, 31.819492, 30.897306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828266, 31.177179, 31.033054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549385, 31.275507, 30.763693>,  <36.382057, 31.334503, 30.602076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549385, 31.275507, 30.763693>,  <36.828266, 31.177179, 31.033054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549385, 31.275507, 30.763693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290361, -0.762029, -0.578794,
		-0.655433, -0.599070, 0.459916,
		-0.697207, 0.245819, -0.673405,
		36.340221, 31.349253, 30.561670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422886, 30.564224, 30.937817>,  <36.828266, 31.177179, 31.033054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422886, 30.564224, 30.937817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342194, 30.806774, 30.630150>,  <36.293777, 30.952303, 30.445551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342194, 30.806774, 30.630150>,  <36.422886, 30.564224, 30.937817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342194, 30.806774, 30.630150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203585, -0.742198, -0.638510,
		-0.958048, -0.285400, 0.026279,
		-0.201735, 0.606374, -0.769165,
		36.281673, 30.988686, 30.399401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246029, 30.057756, 30.395971>,  <36.422886, 30.564224, 30.937817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246029, 30.057756, 30.395971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348759, 30.385412, 30.190819>,  <36.410397, 30.582006, 30.067728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348759, 30.385412, 30.190819>,  <36.246029, 30.057756, 30.395971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348759, 30.385412, 30.190819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315208, -0.572659, -0.756773,
		-0.913610, 0.032697, -0.405275,
		0.256828, 0.819142, -0.512880,
		36.425808, 30.631155, 30.036955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904770, 30.007017, 29.664238>,  <36.246029, 30.057756, 30.395971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904770, 30.007017, 29.664238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192745, 30.281485, 29.622540>,  <36.365528, 30.446165, 29.597521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192745, 30.281485, 29.622540>,  <35.904770, 30.007017, 29.664238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192745, 30.281485, 29.622540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255860, -0.402018, -0.879157,
		-0.645159, 0.606263, -0.464989,
		0.719935, 0.686168, -0.104247,
		36.408726, 30.487335, 29.591265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750069, 30.422184, 29.068144>,  <35.904770, 30.007017, 29.664238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750069, 30.422184, 29.068144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145397, 30.461723, 29.114532>,  <36.382595, 30.485447, 29.142366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145397, 30.461723, 29.114532>,  <35.750069, 30.422184, 29.068144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145397, 30.461723, 29.114532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147150, -0.421375, -0.894869,
		-0.039587, 0.901484, -0.430999,
		0.988322, 0.098847, 0.115973,
		36.441895, 30.491377, 29.149324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916512, 30.628042, 28.352869>,  <35.750069, 30.422184, 29.068144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916512, 30.628042, 28.352869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226837, 30.520311, 28.581106>,  <36.413033, 30.455673, 28.718048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226837, 30.520311, 28.581106>,  <35.916512, 30.628042, 28.352869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226837, 30.520311, 28.581106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324362, -0.605439, -0.726797,
		0.541205, 0.748937, -0.382349,
		0.775814, -0.269327, 0.570593,
		36.459579, 30.439514, 28.752283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345467, 30.636456, 27.903553>,  <35.916512, 30.628042, 28.352869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345467, 30.636456, 27.903553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526161, 30.436319, 28.199009>,  <36.634579, 30.316236, 28.376284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526161, 30.436319, 28.199009>,  <36.345467, 30.636456, 27.903553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526161, 30.436319, 28.199009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479815, -0.561743, -0.673960,
		0.752137, 0.658865, -0.013690,
		0.451739, -0.500341, 0.738641,
		36.661682, 30.286217, 28.420601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132179, 30.787682, 27.954628>,  <36.345467, 30.636456, 27.903553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132179, 30.787682, 27.954628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029823, 30.429518, 28.100374>,  <36.968410, 30.214621, 28.187822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029823, 30.429518, 28.100374>,  <37.132179, 30.787682, 27.954628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029823, 30.429518, 28.100374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611591, -0.441849, -0.656296,
		0.748648, 0.054901, 0.660690,
		-0.255894, -0.895408, 0.364367,
		36.953056, 30.160896, 28.209684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680565, 30.412155, 27.863478>,  <37.132179, 30.787682, 27.954628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680565, 30.412155, 27.863478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401768, 30.130938, 27.919950>,  <37.234489, 29.962206, 27.953835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401768, 30.130938, 27.919950>,  <37.680565, 30.412155, 27.863478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401768, 30.130938, 27.919950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397738, -0.542851, -0.739674,
		0.596666, -0.459392, 0.657989,
		-0.696990, -0.703045, 0.141183,
		37.192669, 29.920025, 27.962305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025921, 29.755844, 27.900972>,  <37.680565, 30.412155, 27.863478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025921, 29.755844, 27.900972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649361, 29.644308, 27.825071>,  <37.423424, 29.577387, 27.779531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649361, 29.644308, 27.825071>,  <38.025921, 29.755844, 27.900972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649361, 29.644308, 27.825071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334902, -0.706100, -0.623909,
		0.039989, -0.650899, 0.758111,
		-0.941404, -0.278842, -0.189751,
		37.366940, 29.560656, 27.768147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128986, 29.103456, 27.668364>,  <38.025921, 29.755844, 27.900972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128986, 29.103456, 27.668364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746990, 29.142761, 27.556406>,  <37.517792, 29.166344, 27.489231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746990, 29.142761, 27.556406>,  <38.128986, 29.103456, 27.668364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746990, 29.142761, 27.556406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144013, -0.671312, -0.727049,
		-0.259339, -0.734632, 0.626945,
		-0.954989, 0.098263, -0.279894,
		37.460495, 29.172241, 27.472437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940624, 28.448238, 27.470699>,  <38.128986, 29.103456, 27.668364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940624, 28.448238, 27.470699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717125, 28.713737, 27.271807>,  <37.583023, 28.873037, 27.152472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717125, 28.713737, 27.271807>,  <37.940624, 28.448238, 27.470699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717125, 28.713737, 27.271807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285752, -0.408758, -0.866754,
		-0.778552, -0.626384, 0.038727,
		-0.558751, 0.663747, -0.497230,
		37.549500, 28.912861, 27.122637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692699, 28.098383, 26.958529>,  <37.940624, 28.448238, 27.470699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692699, 28.098383, 26.958529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594929, 28.448570, 26.791767>,  <37.536266, 28.658682, 26.691710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594929, 28.448570, 26.791767>,  <37.692699, 28.098383, 26.958529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594929, 28.448570, 26.791767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332684, -0.328133, -0.884109,
		-0.910810, -0.354801, -0.211049,
		-0.244431, 0.875469, -0.416903,
		37.521599, 28.711210, 26.666697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264175, 27.951523, 26.425039>,  <37.692699, 28.098383, 26.958529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264175, 27.951523, 26.425039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441811, 28.301607, 26.348316>,  <37.548393, 28.511658, 26.302282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441811, 28.301607, 26.348316>,  <37.264175, 27.951523, 26.425039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441811, 28.301607, 26.348316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217592, -0.313016, -0.924486,
		-0.869159, 0.368820, -0.329447,
		0.444091, 0.875210, -0.191808,
		37.575039, 28.564171, 26.290773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083237, 28.145815, 25.771692>,  <37.264175, 27.951523, 26.425039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083237, 28.145815, 25.771692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416962, 28.357956, 25.831898>,  <37.617195, 28.485241, 25.868021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416962, 28.357956, 25.831898>,  <37.083237, 28.145815, 25.771692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416962, 28.357956, 25.831898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254552, -0.128422, -0.958494,
		-0.489009, 0.837995, -0.242145,
		0.834310, 0.530351, 0.150514,
		37.667255, 28.517061, 25.877052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139114, 28.513535, 25.249105>,  <37.083237, 28.145815, 25.771692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139114, 28.513535, 25.249105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508583, 28.514349, 25.402378>,  <37.730263, 28.514837, 25.494341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508583, 28.514349, 25.402378>,  <37.139114, 28.513535, 25.249105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508583, 28.514349, 25.402378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372623, -0.237947, -0.896958,
		0.089350, 0.971276, -0.220543,
		0.923671, 0.002036, 0.383180,
		37.785683, 28.514959, 25.517332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566681, 28.934671, 24.765532>,  <37.139114, 28.513535, 25.249105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566681, 28.934671, 24.765532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816776, 28.690573, 24.960129>,  <37.966835, 28.544113, 25.076887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816776, 28.690573, 24.960129>,  <37.566681, 28.934671, 24.765532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816776, 28.690573, 24.960129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516862, -0.143278, -0.843994,
		0.584747, 0.779148, 0.225830,
		0.625240, -0.610245, 0.486493,
		38.004349, 28.507500, 25.106077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208080, 29.056932, 24.475912>,  <37.566681, 28.934671, 24.765532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208080, 29.056932, 24.475912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238667, 28.701534, 24.656898>,  <38.257019, 28.488295, 24.765490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238667, 28.701534, 24.656898>,  <38.208080, 29.056932, 24.475912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238667, 28.701534, 24.656898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600635, -0.321171, -0.732179,
		0.795858, 0.327754, 0.509104,
		0.076465, -0.888497, 0.452467,
		38.261604, 28.434986, 24.792639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934521, 29.016022, 24.379999>,  <38.208080, 29.056932, 24.475912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934521, 29.016022, 24.379999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783878, 28.654631, 24.461876>,  <38.693493, 28.437796, 24.511002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783878, 28.654631, 24.461876>,  <38.934521, 29.016022, 24.379999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783878, 28.654631, 24.461876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447136, -0.370803, -0.813987,
		0.811318, -0.215028, 0.543623,
		-0.376607, -0.903476, 0.204693,
		38.670895, 28.383589, 24.523283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471867, 28.567156, 24.403976>,  <38.934521, 29.016022, 24.379999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471867, 28.567156, 24.403976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172806, 28.308643, 24.342867>,  <38.993370, 28.153536, 24.306200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172806, 28.308643, 24.342867>,  <39.471867, 28.567156, 24.403976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172806, 28.308643, 24.342867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536180, -0.451714, -0.713067,
		0.391833, -0.615038, 0.684248,
		-0.747648, -0.646283, -0.152775,
		38.948513, 28.114758, 24.297035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724350, 27.866339, 24.373442>,  <39.471867, 28.567156, 24.403976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724350, 27.866339, 24.373442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364979, 27.809486, 24.207249>,  <39.149357, 27.775375, 24.107533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364979, 27.809486, 24.207249>,  <39.724350, 27.866339, 24.373442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364979, 27.809486, 24.207249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425987, -0.511771, -0.746073,
		-0.106591, -0.847283, 0.520336,
		-0.898428, -0.142132, -0.415481,
		39.095451, 27.766848, 24.082603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721741, 27.124664, 24.202316>,  <39.724350, 27.866339, 24.373442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721741, 27.124664, 24.202316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430874, 27.296816, 23.988401>,  <39.256351, 27.400106, 23.860052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430874, 27.296816, 23.988401>,  <39.721741, 27.124664, 24.202316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430874, 27.296816, 23.988401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293194, -0.509696, -0.808855,
		-0.620693, -0.744972, 0.244452,
		-0.727171, 0.430379, -0.534786,
		39.212723, 27.425930, 23.827965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237125, 26.617380, 23.913885>,  <39.721741, 27.124664, 24.202316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237125, 26.617380, 23.913885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216774, 26.933859, 23.670107>,  <39.204563, 27.123745, 23.523840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216774, 26.933859, 23.670107>,  <39.237125, 26.617380, 23.913885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216774, 26.933859, 23.670107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170706, -0.594364, -0.785870,
		-0.984008, -0.144020, -0.104821,
		-0.050879, 0.791195, -0.609444,
		39.201511, 27.171217, 23.487274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922386, 26.411489, 23.348194>,  <39.237125, 26.617380, 23.913885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922386, 26.411489, 23.348194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089157, 26.748938, 23.212856>,  <39.189220, 26.951406, 23.131655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089157, 26.748938, 23.212856>,  <38.922386, 26.411489, 23.348194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089157, 26.748938, 23.212856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242844, -0.462095, -0.852933,
		-0.875898, 0.273448, -0.397529,
		0.416929, 0.843620, -0.338343,
		39.214237, 27.002024, 23.111353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724823, 26.469593, 22.676508>,  <38.922386, 26.411489, 23.348194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724823, 26.469593, 22.676508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047607, 26.705034, 22.657055>,  <39.241276, 26.846300, 22.645384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047607, 26.705034, 22.657055>,  <38.724823, 26.469593, 22.676508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047607, 26.705034, 22.657055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220369, -0.376466, -0.899839,
		-0.547958, 0.715414, -0.433502,
		0.806957, 0.588605, -0.048632,
		39.289696, 26.881617, 22.642466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719711, 26.792198, 21.877686>,  <38.724823, 26.469593, 22.676508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719711, 26.792198, 21.877686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077084, 26.891779, 22.027246>,  <39.291508, 26.951527, 22.116983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077084, 26.891779, 22.027246>,  <38.719711, 26.792198, 21.877686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077084, 26.891779, 22.027246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387834, -0.007554, -0.921698,
		-0.226633, 0.968487, -0.103301,
		0.893433, 0.248951, 0.373900,
		39.345112, 26.966465, 22.139416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980125, 27.399187, 21.495445>,  <38.719711, 26.792198, 21.877686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980125, 27.399187, 21.495445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282349, 27.183630, 21.644426>,  <39.463684, 27.054295, 21.733814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282349, 27.183630, 21.644426>,  <38.980125, 27.399187, 21.495445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282349, 27.183630, 21.644426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449227, 0.012422, -0.893331,
		0.476785, 0.842281, 0.251471,
		0.755560, -0.538895, 0.372453,
		39.509018, 27.021961, 21.756163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675026, 27.596926, 21.113853>,  <38.980125, 27.399187, 21.495445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675026, 27.596926, 21.113853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760246, 27.232555, 21.255173>,  <39.811378, 27.013933, 21.339964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760246, 27.232555, 21.255173>,  <39.675026, 27.596926, 21.113853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760246, 27.232555, 21.255173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566996, -0.179212, -0.803989,
		0.795691, 0.371613, 0.478309,
		0.213055, -0.910926, 0.353300,
		39.824162, 26.959278, 21.361162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351349, 27.580349, 20.864687>,  <39.675026, 27.596926, 21.113853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351349, 27.580349, 20.864687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243881, 27.201036, 20.932306>,  <40.179401, 26.973448, 20.972878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243881, 27.201036, 20.932306>,  <40.351349, 27.580349, 20.864687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243881, 27.201036, 20.932306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417371, -0.272779, -0.866830,
		0.868113, -0.162333, 0.469072,
		-0.268667, -0.948283, 0.169050,
		40.163280, 26.916552, 20.983021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912376, 27.231432, 20.586407>,  <40.351349, 27.580349, 20.864687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912376, 27.231432, 20.586407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623634, 26.954973, 20.600479>,  <40.450390, 26.789099, 20.608923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623634, 26.954973, 20.600479>,  <40.912376, 27.231432, 20.586407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623634, 26.954973, 20.600479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386338, -0.444640, -0.808108,
		0.574163, -0.569748, 0.587983,
		-0.721859, -0.691146, 0.035180,
		40.407078, 26.747629, 20.611032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250519, 26.608631, 20.335119>,  <40.912376, 27.231432, 20.586407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250519, 26.608631, 20.335119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854660, 26.566681, 20.295933>,  <40.617146, 26.541512, 20.272421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854660, 26.566681, 20.295933>,  <41.250519, 26.608631, 20.335119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854660, 26.566681, 20.295933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124757, -0.291266, -0.948472,
		0.070937, -0.950876, 0.301335,
		-0.989649, -0.104875, -0.097967,
		40.557766, 26.535219, 20.266542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133205, 25.988945, 20.024109>,  <41.250519, 26.608631, 20.335119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133205, 25.988945, 20.024109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780327, 26.153738, 19.932894>,  <40.568600, 26.252615, 19.878164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780327, 26.153738, 19.932894>,  <41.133205, 25.988945, 20.024109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780327, 26.153738, 19.932894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078894, -0.348109, -0.934128,
		-0.464228, -0.842074, 0.274597,
		-0.882195, 0.411985, -0.228037,
		40.515667, 26.277332, 19.864483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750118, 25.436548, 19.754816>,  <41.133205, 25.988945, 20.024109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750118, 25.436548, 19.754816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585365, 25.771614, 19.611330>,  <40.486515, 25.972652, 19.525238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585365, 25.771614, 19.611330>,  <40.750118, 25.436548, 19.754816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585365, 25.771614, 19.611330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037552, -0.408924, -0.911796,
		-0.910464, -0.362079, 0.199883,
		-0.411879, 0.837663, -0.358714,
		40.461800, 26.022913, 19.503716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087841, 25.316229, 19.345577>,  <40.750118, 25.436548, 19.754816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087841, 25.316229, 19.345577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213474, 25.673733, 19.217487>,  <40.288853, 25.888235, 19.140633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213474, 25.673733, 19.217487>,  <40.087841, 25.316229, 19.345577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213474, 25.673733, 19.217487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248067, -0.248320, -0.936376,
		-0.916414, 0.373537, 0.143719,
		0.314083, 0.893760, -0.320226,
		40.307701, 25.941860, 19.121420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575687, 25.641651, 19.016739>,  <40.087841, 25.316229, 19.345577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575687, 25.641651, 19.016739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901596, 25.817640, 18.865704>,  <40.097141, 25.923233, 18.775082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901596, 25.817640, 18.865704>,  <39.575687, 25.641651, 19.016739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901596, 25.817640, 18.865704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362746, -0.121205, -0.923972,
		-0.452288, 0.889794, 0.060845,
		0.814770, 0.439973, -0.377589,
		40.146027, 25.949633, 18.752426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962521, 25.310640, 18.473104>,  <39.575687, 25.641651, 19.016739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962521, 25.310640, 18.473104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005566, 25.632687, 18.239796>,  <40.031391, 25.825914, 18.099810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005566, 25.632687, 18.239796>,  <39.962521, 25.310640, 18.473104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005566, 25.632687, 18.239796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705641, -0.475133, -0.525661,
		-0.700351, -0.355015, -0.619252,
		0.107610, 0.805117, -0.583273,
		40.037849, 25.874222, 18.064814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797436, 25.080593, 17.787275>,  <39.962521, 25.310640, 18.473104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797436, 25.080593, 17.787275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069328, 25.371542, 17.824999>,  <40.232464, 25.546112, 17.847633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069328, 25.371542, 17.824999>,  <39.797436, 25.080593, 17.787275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069328, 25.371542, 17.824999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638960, -0.524108, -0.563063,
		-0.360129, 0.442991, -0.821015,
		0.679733, 0.727371, 0.094307,
		40.273247, 25.589754, 17.853291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051662, 25.432318, 17.089680>,  <39.797436, 25.080593, 17.787275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051662, 25.432318, 17.089680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330559, 25.425365, 17.376329>,  <40.497898, 25.421194, 17.548319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330559, 25.425365, 17.376329>,  <40.051662, 25.432318, 17.089680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330559, 25.425365, 17.376329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620590, -0.485723, -0.615582,
		0.358780, 0.873940, -0.327880,
		0.697241, -0.017380, 0.716626,
		40.539730, 25.420151, 17.591318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481380, 26.048937, 17.021238>,  <40.051662, 25.432318, 17.089680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481380, 26.048937, 17.021238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859974, 26.143436, 17.109198>,  <41.087132, 26.200136, 17.161972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859974, 26.143436, 17.109198>,  <40.481380, 26.048937, 17.021238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859974, 26.143436, 17.109198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282929, 0.935176, 0.213065,
		-0.155306, -0.263878, 0.951971,
		0.946484, 0.236250, 0.219897,
		41.143921, 26.214312, 17.175167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716061, 26.279915, 17.727423>,  <40.481380, 26.048937, 17.021238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716061, 26.279915, 17.727423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973644, 26.455580, 17.476839>,  <41.128193, 26.560980, 17.326488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973644, 26.455580, 17.476839>,  <40.716061, 26.279915, 17.727423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973644, 26.455580, 17.476839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382533, 0.893958, 0.233468,
		0.662560, 0.089298, 0.743666,
		0.643958, 0.439164, -0.626461,
		41.166832, 26.587330, 17.288900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096149, 26.788952, 18.147442>,  <40.716061, 26.279915, 17.727423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096149, 26.788952, 18.147442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125141, 26.877506, 17.758446>,  <41.142536, 26.930639, 17.525049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125141, 26.877506, 17.758446>,  <41.096149, 26.788952, 18.147442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125141, 26.877506, 17.758446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460884, 0.872139, 0.164192,
		0.884495, 0.436303, 0.165250,
		0.072483, 0.221388, -0.972488,
		41.146885, 26.943922, 17.466700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345844, 27.558054, 18.005548>,  <41.096149, 26.788952, 18.147442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345844, 27.558054, 18.005548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119907, 27.455912, 17.691671>,  <40.984344, 27.394627, 17.503345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119907, 27.455912, 17.691671>,  <41.345844, 27.558054, 18.005548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119907, 27.455912, 17.691671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472347, 0.879774, 0.053713,
		0.676639, 0.400988, -0.617550,
		-0.564843, -0.255354, -0.784695,
		40.950455, 27.379305, 17.456263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354694, 28.091686, 17.549686>,  <41.345844, 27.558054, 18.005548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354694, 28.091686, 17.549686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013931, 27.886360, 17.508181>,  <40.809475, 27.763165, 17.483276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013931, 27.886360, 17.508181>,  <41.354694, 28.091686, 17.549686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013931, 27.886360, 17.508181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511434, 0.772838, 0.375707,
		-0.112663, 0.373136, -0.920911,
		-0.851905, -0.513313, -0.103764,
		40.758358, 27.732367, 17.477051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798016, 28.514046, 17.129017>,  <41.354694, 28.091686, 17.549686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798016, 28.514046, 17.129017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651615, 28.251003, 17.392410>,  <40.563774, 28.093178, 17.550446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651615, 28.251003, 17.392410>,  <40.798016, 28.514046, 17.129017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651615, 28.251003, 17.392410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471602, 0.741055, 0.477943,
		-0.802271, -0.135617, -0.581352,
		-0.365997, -0.657606, 0.658484,
		40.541817, 28.053722, 17.589956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101578, 28.657709, 17.259218>,  <40.798016, 28.514046, 17.129017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101578, 28.657709, 17.259218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194736, 28.452009, 17.589384>,  <40.250629, 28.328588, 17.787483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194736, 28.452009, 17.589384>,  <40.101578, 28.657709, 17.259218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194736, 28.452009, 17.589384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408983, 0.718257, 0.562886,
		-0.882323, -0.468673, -0.043042,
		0.232893, -0.514250, 0.825413,
		40.264603, 28.297733, 17.837008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520138, 28.675726, 17.676653>,  <40.101578, 28.657709, 17.259218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520138, 28.675726, 17.676653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833679, 28.604164, 17.914499>,  <40.021805, 28.561228, 18.057207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833679, 28.604164, 17.914499>,  <39.520138, 28.675726, 17.676653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833679, 28.604164, 17.914499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383870, 0.613079, 0.690491,
		-0.488079, -0.769499, 0.411887,
		0.783851, -0.178903, 0.594618,
		40.068836, 28.550493, 18.092884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199486, 28.788883, 18.316526>,  <39.520138, 28.675726, 17.676653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199486, 28.788883, 18.316526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589012, 28.765800, 18.404480>,  <39.822727, 28.751951, 18.457253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589012, 28.765800, 18.404480>,  <39.199486, 28.788883, 18.316526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589012, 28.765800, 18.404480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120930, 0.687536, 0.716010,
		-0.192495, -0.723854, 0.662556,
		0.973818, -0.057706, 0.219883,
		39.881157, 28.748489, 18.470446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217785, 28.674761, 19.043839>,  <39.199486, 28.788883, 18.316526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217785, 28.674761, 19.043839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568459, 28.835371, 18.937853>,  <39.778862, 28.931736, 18.874262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568459, 28.835371, 18.937853>,  <39.217785, 28.674761, 19.043839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568459, 28.835371, 18.937853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061362, 0.452949, 0.889422,
		0.477146, -0.795997, 0.372452,
		0.876679, 0.401530, -0.264966,
		39.831463, 28.955828, 18.858364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646957, 28.501051, 19.647846>,  <39.217785, 28.674761, 19.043839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646957, 28.501051, 19.647846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838646, 28.790398, 19.449017>,  <39.953659, 28.964006, 19.329718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838646, 28.790398, 19.449017>,  <39.646957, 28.501051, 19.647846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838646, 28.790398, 19.449017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255932, 0.426561, 0.867493,
		0.839549, -0.542942, 0.019287,
		0.479225, 0.723366, -0.497075,
		39.982414, 29.007408, 19.299894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204193, 28.678925, 20.091845>,  <39.646957, 28.501051, 19.647846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204193, 28.678925, 20.091845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166500, 28.991390, 19.844976>,  <40.143883, 29.178869, 19.696856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166500, 28.991390, 19.844976>,  <40.204193, 28.678925, 20.091845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166500, 28.991390, 19.844976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148532, 0.624024, 0.767159,
		0.984407, -0.019377, -0.174833,
		-0.094235, 0.781165, -0.617172,
		40.138229, 29.225740, 19.659824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741589, 29.094711, 20.211119>,  <40.204193, 28.678925, 20.091845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741589, 29.094711, 20.211119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451252, 29.317146, 20.049168>,  <40.277050, 29.450607, 19.951998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451252, 29.317146, 20.049168>,  <40.741589, 29.094711, 20.211119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451252, 29.317146, 20.049168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027866, 0.564345, 0.825069,
		0.687301, 0.610149, -0.394127,
		-0.725838, 0.556088, -0.404877,
		40.233501, 29.483973, 19.927704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816525, 29.774359, 20.428915>,  <40.741589, 29.094711, 20.211119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816525, 29.774359, 20.428915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450722, 29.815840, 20.272495>,  <40.231239, 29.840729, 20.178644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450722, 29.815840, 20.272495>,  <40.816525, 29.774359, 20.428915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450722, 29.815840, 20.272495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233527, 0.653990, 0.719557,
		0.330360, 0.749362, -0.573863,
		-0.914509, 0.103700, -0.391048,
		40.176369, 29.846951, 20.155180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610649, 30.528177, 20.542198>,  <40.816525, 29.774359, 20.428915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610649, 30.528177, 20.542198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280487, 30.308283, 20.490810>,  <40.082390, 30.176346, 20.459978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280487, 30.308283, 20.490810>,  <40.610649, 30.528177, 20.542198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280487, 30.308283, 20.490810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380007, 0.372723, 0.846565,
		-0.417502, 0.747575, -0.516549,
		-0.825400, -0.549735, -0.128471,
		40.032867, 30.143362, 20.452269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094681, 30.977285, 20.575462>,  <40.610649, 30.528177, 20.542198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094681, 30.977285, 20.575462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907475, 30.638668, 20.676910>,  <39.795151, 30.435497, 20.737780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907475, 30.638668, 20.676910>,  <40.094681, 30.977285, 20.575462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907475, 30.638668, 20.676910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355488, 0.443098, 0.822978,
		-0.809065, 0.295010, -0.508314,
		-0.468020, -0.846542, 0.253622,
		39.767067, 30.384705, 20.752996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381557, 31.242350, 20.778906>,  <40.094681, 30.977285, 20.575462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381557, 31.242350, 20.778906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420540, 30.872129, 20.925251>,  <39.443932, 30.649998, 21.013058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420540, 30.872129, 20.925251>,  <39.381557, 31.242350, 20.778906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420540, 30.872129, 20.925251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571349, 0.248968, 0.782033,
		-0.814900, -0.285252, -0.504549,
		0.097460, -0.925552, 0.365862,
		39.449780, 30.594463, 21.035009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753559, 31.098955, 20.963247>,  <39.381557, 31.242350, 20.778906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753559, 31.098955, 20.963247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975224, 30.830181, 21.159784>,  <39.108223, 30.668917, 21.277706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975224, 30.830181, 21.159784>,  <38.753559, 31.098955, 20.963247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975224, 30.830181, 21.159784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555181, 0.141459, 0.819612,
		-0.620229, -0.726976, -0.294654,
		0.554157, -0.671933, 0.491340,
		39.141472, 30.628601, 21.307186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306351, 30.732309, 21.255348>,  <38.753559, 31.098955, 20.963247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306351, 30.732309, 21.255348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624016, 30.654482, 21.485634>,  <38.814613, 30.607786, 21.623806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624016, 30.654482, 21.485634>,  <38.306351, 30.732309, 21.255348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624016, 30.654482, 21.485634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530663, 0.239634, 0.813002,
		-0.296145, -0.951167, 0.087059,
		0.794163, -0.194568, 0.575716,
		38.862267, 30.596111, 21.658348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018070, 30.352165, 21.782644>,  <38.306351, 30.732309, 21.255348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018070, 30.352165, 21.782644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363792, 30.491850, 21.927437>,  <38.571224, 30.575661, 22.014313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363792, 30.491850, 21.927437>,  <38.018070, 30.352165, 21.782644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363792, 30.491850, 21.927437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480056, 0.358001, 0.800863,
		0.150079, -0.865961, 0.477062,
		0.864305, 0.349209, 0.361982,
		38.623085, 30.596613, 22.036032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946423, 30.168850, 22.489962>,  <38.018070, 30.352165, 21.782644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946423, 30.168850, 22.489962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201485, 30.474997, 22.455051>,  <38.354523, 30.658684, 22.434105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201485, 30.474997, 22.455051>,  <37.946423, 30.168850, 22.489962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201485, 30.474997, 22.455051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393688, 0.421167, 0.817085,
		0.662126, -0.486657, 0.569873,
		0.637651, 0.765365, -0.087274,
		38.392780, 30.704607, 22.428869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026222, 30.334803, 23.215862>,  <37.946423, 30.168850, 22.489962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026222, 30.334803, 23.215862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186436, 30.643499, 23.018284>,  <38.282566, 30.828718, 22.899736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186436, 30.643499, 23.018284>,  <38.026222, 30.334803, 23.215862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186436, 30.643499, 23.018284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474205, 0.635861, 0.608942,
		0.784028, -0.009671, 0.620650,
		0.400536, 0.771743, -0.493947,
		38.306595, 30.875023, 22.870100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557819, 30.578409, 23.674038>,  <38.026222, 30.334803, 23.215862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557819, 30.578409, 23.674038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371586, 30.830914, 23.425928>,  <38.259846, 30.982416, 23.277061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371586, 30.830914, 23.425928>,  <38.557819, 30.578409, 23.674038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371586, 30.830914, 23.425928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245714, 0.581116, 0.775841,
		0.850211, 0.513627, -0.115447,
		-0.465581, 0.631261, -0.620277,
		38.231911, 31.020292, 23.239845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746426, 31.191925, 23.935427>,  <38.557819, 30.578409, 23.674038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746426, 31.191925, 23.935427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436325, 31.270092, 23.695158>,  <38.250267, 31.316992, 23.550997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436325, 31.270092, 23.695158>,  <38.746426, 31.191925, 23.935427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436325, 31.270092, 23.695158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330144, 0.685363, 0.649063,
		0.538514, 0.701492, -0.466810,
		-0.775247, 0.195415, -0.600671,
		38.203751, 31.328716, 23.514957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638203, 31.881582, 23.992504>,  <38.746426, 31.191925, 23.935427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638203, 31.881582, 23.992504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287495, 31.782047, 23.827896>,  <38.077068, 31.722326, 23.729132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287495, 31.782047, 23.827896>,  <38.638203, 31.881582, 23.992504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287495, 31.782047, 23.827896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468387, 0.635833, 0.613458,
		0.109007, 0.730614, -0.674033,
		-0.876773, -0.248837, -0.411520,
		38.024464, 31.707396, 23.704439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242737, 32.454559, 23.856913>,  <38.638203, 31.881582, 23.992504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242737, 32.454559, 23.856913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948952, 32.183197, 23.864229>,  <37.772682, 32.020378, 23.868620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948952, 32.183197, 23.864229>,  <38.242737, 32.454559, 23.856913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948952, 32.183197, 23.864229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442882, 0.499550, 0.744517,
		-0.514224, 0.538715, -0.667353,
		-0.734458, -0.678407, 0.018293,
		37.728615, 31.979675, 23.869717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691589, 32.917088, 23.888212>,  <38.242737, 32.454559, 23.856913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691589, 32.917088, 23.888212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547710, 32.562122, 24.003532>,  <37.461384, 32.349144, 24.072725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547710, 32.562122, 24.003532>,  <37.691589, 32.917088, 23.888212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547710, 32.562122, 24.003532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468709, 0.439012, 0.766538,
		-0.806803, 0.140591, -0.573849,
		-0.359695, -0.887413, 0.288300,
		37.439800, 32.295898, 24.090023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974220, 32.983700, 24.047180>,  <37.691589, 32.917088, 23.888212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974220, 32.983700, 24.047180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085480, 32.654053, 24.244549>,  <37.152237, 32.456264, 24.362970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085480, 32.654053, 24.244549>,  <36.974220, 32.983700, 24.047180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085480, 32.654053, 24.244549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370562, 0.381860, 0.846680,
		-0.886180, -0.418348, -0.199171,
		0.278151, -0.824117, 0.493421,
		37.168926, 32.406818, 24.392574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322224, 32.854084, 24.394840>,  <36.974220, 32.983700, 24.047180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322224, 32.854084, 24.394840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621571, 32.677429, 24.592791>,  <36.801178, 32.571434, 24.711561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621571, 32.677429, 24.592791>,  <36.322224, 32.854084, 24.394840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621571, 32.677429, 24.592791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383101, 0.321263, 0.866039,
		-0.541465, -0.837701, 0.071229,
		0.748365, -0.441642, 0.494877,
		36.846081, 32.544937, 24.741253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101246, 32.468784, 24.878275>,  <36.322224, 32.854084, 24.394840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101246, 32.468784, 24.878275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471443, 32.488995, 25.028423>,  <36.693562, 32.501122, 25.118513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471443, 32.488995, 25.028423>,  <36.101246, 32.468784, 24.878275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471443, 32.488995, 25.028423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378696, 0.141279, 0.914674,
		-0.006816, -0.988679, 0.149888,
		0.925496, 0.050527, 0.375372,
		36.749092, 32.504154, 25.141035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127289, 32.025917, 25.453506>,  <36.101246, 32.468784, 24.878275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127289, 32.025917, 25.453506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436874, 32.274780, 25.500662>,  <36.622627, 32.424099, 25.528955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436874, 32.274780, 25.500662>,  <36.127289, 32.025917, 25.453506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436874, 32.274780, 25.500662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249275, 0.128215, 0.959908,
		0.582101, -0.772320, 0.254323,
		0.773964, 0.622159, 0.117886,
		36.669064, 32.461430, 25.536028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378273, 31.879946, 26.153126>,  <36.127289, 32.025917, 25.453506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378273, 31.879946, 26.153126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543739, 32.224327, 26.034708>,  <36.643017, 32.430958, 25.963657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543739, 32.224327, 26.034708>,  <36.378273, 31.879946, 26.153126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543739, 32.224327, 26.034708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078418, 0.357654, 0.930556,
		0.907048, -0.361720, 0.215461,
		0.413661, 0.860955, -0.296043,
		36.667839, 32.482613, 25.945894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981621, 32.037338, 26.632729>,  <36.378273, 31.879946, 26.153126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981621, 32.037338, 26.632729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894268, 32.399250, 26.486479>,  <36.841858, 32.616398, 26.398729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894268, 32.399250, 26.486479>,  <36.981621, 32.037338, 26.632729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894268, 32.399250, 26.486479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174810, 0.332337, 0.926819,
		0.960079, 0.266312, 0.085590,
		-0.218378, 0.904782, -0.365624,
		36.828754, 32.670685, 26.376791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231815, 32.423508, 27.158417>,  <36.981621, 32.037338, 26.632729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231815, 32.423508, 27.158417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998047, 32.685623, 26.966980>,  <36.857788, 32.842892, 26.852118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998047, 32.685623, 26.966980>,  <37.231815, 32.423508, 27.158417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998047, 32.685623, 26.966980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032580, 0.570373, 0.820740,
		0.810799, 0.495247, -0.311986,
		-0.584417, 0.655290, -0.478593,
		36.822723, 32.882210, 26.823402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472549, 33.113182, 27.321598>,  <37.231815, 32.423508, 27.158417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472549, 33.113182, 27.321598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100769, 33.198624, 27.201273>,  <36.877701, 33.249889, 27.129078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100769, 33.198624, 27.201273>,  <37.472549, 33.113182, 27.321598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100769, 33.198624, 27.201273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145921, 0.536031, 0.831492,
		0.338854, 0.816728, -0.467047,
		-0.929454, 0.213602, -0.300814,
		36.821934, 33.262703, 27.111029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323608, 33.852665, 27.357922>,  <37.472549, 33.113182, 27.321598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323608, 33.852665, 27.357922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953743, 33.700363, 27.359797>,  <36.731823, 33.608982, 27.360922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953743, 33.700363, 27.359797>,  <37.323608, 33.852665, 27.357922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953743, 33.700363, 27.359797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268749, 0.661279, 0.700346,
		-0.269763, 0.646324, -0.713788,
		-0.924663, -0.380757, 0.004690,
		36.676346, 33.586136, 27.361204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832237, 34.493458, 27.195152>,  <37.323608, 33.852665, 27.357922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832237, 34.493458, 27.195152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625141, 34.209999, 27.386887>,  <36.500885, 34.039925, 27.501926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625141, 34.209999, 27.386887>,  <36.832237, 34.493458, 27.195152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625141, 34.209999, 27.386887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389695, 0.694114, 0.605264,
		-0.761634, 0.126572, -0.635525,
		-0.517736, -0.708651, 0.479336,
		36.469822, 33.997402, 27.530687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187107, 34.759903, 27.331738>,  <36.832237, 34.493458, 27.195152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187107, 34.759903, 27.331738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221642, 34.463367, 27.597961>,  <36.242363, 34.285446, 27.757696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221642, 34.463367, 27.597961>,  <36.187107, 34.759903, 27.331738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221642, 34.463367, 27.597961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370732, 0.596171, 0.712137,
		-0.924718, -0.308227, -0.223365,
		0.086336, -0.741334, 0.665559,
		36.247543, 34.240967, 27.797628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562248, 34.854031, 27.804474>,  <36.187107, 34.759903, 27.331738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562248, 34.854031, 27.804474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827641, 34.627361, 27.999889>,  <35.986877, 34.491360, 28.117140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827641, 34.627361, 27.999889>,  <35.562248, 34.854031, 27.804474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827641, 34.627361, 27.999889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315664, 0.379990, 0.869462,
		-0.678339, -0.731090, 0.073240,
		0.663485, -0.566670, 0.488541,
		36.026688, 34.457359, 28.146452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235420, 34.602089, 28.313360>,  <35.562248, 34.854031, 27.804474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235420, 34.602089, 28.313360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605610, 34.542580, 28.452709>,  <35.827724, 34.506874, 28.536318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605610, 34.542580, 28.452709>,  <35.235420, 34.602089, 28.313360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605610, 34.542580, 28.452709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315996, 0.203969, 0.926576,
		-0.208909, -0.967607, 0.141755,
		0.925475, -0.148776, 0.348371,
		35.883251, 34.497948, 28.557220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234562, 34.154831, 28.940218>,  <35.235420, 34.602089, 28.313360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234562, 34.154831, 28.940218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579308, 34.348152, 29.001682>,  <35.786156, 34.464146, 29.038561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579308, 34.348152, 29.001682>,  <35.234562, 34.154831, 28.940218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579308, 34.348152, 29.001682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298131, 0.237730, 0.924447,
		0.410258, -0.842557, 0.348978,
		0.861862, 0.483303, 0.153662,
		35.837868, 34.493141, 29.047781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640942, 33.880829, 29.592012>,  <35.234562, 34.154831, 28.940218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640942, 33.880829, 29.592012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769039, 34.253048, 29.520994>,  <35.845898, 34.476379, 29.478384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769039, 34.253048, 29.520994>,  <35.640942, 33.880829, 29.592012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769039, 34.253048, 29.520994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236258, 0.259946, 0.936275,
		0.917401, -0.257891, 0.303096,
		0.320246, 0.930548, -0.177546,
		35.865112, 34.532211, 29.467730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010632, 33.969246, 30.192596>,  <35.640942, 33.880829, 29.592012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010632, 33.969246, 30.192596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977840, 34.343655, 30.055687>,  <35.958164, 34.568298, 29.973541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977840, 34.343655, 30.055687>,  <36.010632, 33.969246, 30.192596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977840, 34.343655, 30.055687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138127, 0.329444, 0.934017,
		0.987016, 0.123845, 0.102283,
		-0.081976, 0.936018, -0.342273,
		35.953247, 34.624458, 29.953005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500397, 34.332333, 30.582949>,  <36.010632, 33.969246, 30.192596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500397, 34.332333, 30.582949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254444, 34.610821, 30.434784>,  <36.106873, 34.777912, 30.345884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254444, 34.610821, 30.434784>,  <36.500397, 34.332333, 30.582949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254444, 34.610821, 30.434784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204325, 0.313014, 0.927509,
		0.761692, 0.645991, -0.050211,
		-0.614879, 0.696217, -0.370412,
		36.069981, 34.819687, 30.323660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664028, 35.045303, 30.834503>,  <36.500397, 34.332333, 30.582949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664028, 35.045303, 30.834503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280037, 35.003567, 30.730536>,  <36.049644, 34.978523, 30.668154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280037, 35.003567, 30.730536>,  <36.664028, 35.045303, 30.834503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280037, 35.003567, 30.730536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277431, 0.226857, 0.933578,
		-0.038449, 0.968323, -0.246725,
		-0.959976, -0.104344, -0.259920,
		35.992043, 34.972263, 30.652559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271317, 35.333355, 30.528614>,  <36.664028, 35.045303, 30.834503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271317, 35.333355, 30.528614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487438, 35.666557, 30.576246>,  <37.617111, 35.866478, 30.604826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487438, 35.666557, 30.576246>,  <37.271317, 35.333355, 30.528614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487438, 35.666557, 30.576246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402989, -0.131920, -0.905648,
		-0.738698, 0.537311, -0.406968,
		0.540301, 0.833003, 0.119081,
		37.649529, 35.916458, 30.611971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268253, 35.627762, 29.814213>,  <37.271317, 35.333355, 30.528614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268253, 35.627762, 29.814213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591377, 35.731102, 30.026134>,  <37.785252, 35.793106, 30.153288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591377, 35.731102, 30.026134>,  <37.268253, 35.627762, 29.814213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591377, 35.731102, 30.026134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569462, -0.110041, -0.814619,
		-0.152160, 0.959763, -0.236015,
		0.807812, 0.258354, 0.529804,
		37.833721, 35.808609, 30.185076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547459, 36.255859, 29.552259>,  <37.268253, 35.627762, 29.814213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547459, 36.255859, 29.552259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835110, 36.037086, 29.723709>,  <38.007702, 35.905823, 29.826578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835110, 36.037086, 29.723709>,  <37.547459, 36.255859, 29.552259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835110, 36.037086, 29.723709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496818, -0.026566, -0.867448,
		0.485820, 0.836757, 0.252620,
		0.719132, -0.546929, 0.428623,
		38.050850, 35.873009, 29.852297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132172, 36.554115, 29.287682>,  <37.547459, 36.255859, 29.552259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132172, 36.554115, 29.287682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239399, 36.195038, 29.427555>,  <38.303734, 35.979591, 29.511480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239399, 36.195038, 29.427555>,  <38.132172, 36.554115, 29.287682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239399, 36.195038, 29.427555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630132, -0.111187, -0.768486,
		0.728748, 0.426354, 0.535862,
		0.268066, -0.897697, 0.349686,
		38.319820, 35.925728, 29.532461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863426, 36.530849, 29.255598>,  <38.132172, 36.554115, 29.287682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863426, 36.530849, 29.255598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754147, 36.146507, 29.273977>,  <38.688580, 35.915901, 29.285006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754147, 36.146507, 29.273977>,  <38.863426, 36.530849, 29.255598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754147, 36.146507, 29.273977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561537, -0.198081, -0.803392,
		0.781048, -0.193687, 0.593674,
		-0.273203, -0.960858, 0.045948,
		38.672184, 35.858250, 29.287762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553394, 36.184872, 29.201138>,  <38.863426, 36.530849, 29.255598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553394, 36.184872, 29.201138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250534, 35.943108, 29.102013>,  <39.068817, 35.798050, 29.042538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250534, 35.943108, 29.102013>,  <39.553394, 36.184872, 29.201138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250534, 35.943108, 29.102013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556451, -0.398036, -0.729335,
		0.342181, -0.690111, 0.637698,
		-0.757149, -0.604413, -0.247813,
		39.023388, 35.761784, 29.027668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857010, 35.584064, 28.947533>,  <39.553394, 36.184872, 29.201138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857010, 35.584064, 28.947533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481827, 35.532658, 28.818708>,  <39.256718, 35.501812, 28.741413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481827, 35.532658, 28.818708>,  <39.857010, 35.584064, 28.947533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481827, 35.532658, 28.818708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342540, -0.487864, -0.802904,
		-0.053932, -0.863407, 0.501618,
		-0.937954, -0.128521, -0.322063,
		39.200439, 35.494102, 28.722090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800915, 34.825237, 28.873941>,  <39.857010, 35.584064, 28.947533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800915, 34.825237, 28.873941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537060, 35.037056, 28.660603>,  <39.378746, 35.164146, 28.532600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537060, 35.037056, 28.660603>,  <39.800915, 34.825237, 28.873941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537060, 35.037056, 28.660603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308018, -0.456825, -0.834527,
		-0.685571, -0.714763, 0.138226,
		-0.659634, 0.529551, -0.533346,
		39.339169, 35.195923, 28.500599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660988, 34.352619, 28.435652>,  <39.800915, 34.825237, 28.873941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660988, 34.352619, 28.435652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519726, 34.687042, 28.267702>,  <39.434967, 34.887695, 28.166933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519726, 34.687042, 28.267702>,  <39.660988, 34.352619, 28.435652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519726, 34.687042, 28.267702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246970, -0.349562, -0.903777,
		-0.902379, -0.422870, -0.083031,
		-0.353155, 0.836055, -0.419873,
		39.413780, 34.937859, 28.141741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127979, 34.073528, 27.926010>,  <39.660988, 34.352619, 28.435652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127979, 34.073528, 27.926010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225182, 34.452488, 27.842699>,  <39.283504, 34.679863, 27.792713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225182, 34.452488, 27.842699>,  <39.127979, 34.073528, 27.926010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225182, 34.452488, 27.842699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117938, -0.241978, -0.963087,
		-0.962828, 0.209475, -0.170537,
		0.243009, 0.947400, -0.208278,
		39.298084, 34.736710, 27.780216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711563, 34.302689, 27.320766>,  <39.127979, 34.073528, 27.926010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711563, 34.302689, 27.320766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023384, 34.553162, 27.315182>,  <39.210476, 34.703445, 27.311831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023384, 34.553162, 27.315182>,  <38.711563, 34.302689, 27.320766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023384, 34.553162, 27.315182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069025, -0.108044, -0.991747,
		-0.622526, 0.772152, -0.127448,
		0.779549, 0.626185, -0.013963,
		39.257248, 34.741016, 27.310993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623047, 34.731373, 26.788456>,  <38.711563, 34.302689, 27.320766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623047, 34.731373, 26.788456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016766, 34.731838, 26.859060>,  <39.252998, 34.732117, 26.901423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016766, 34.731838, 26.859060>,  <38.623047, 34.731373, 26.788456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016766, 34.731838, 26.859060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173673, -0.185044, -0.967262,
		0.031532, 0.982729, -0.182341,
		0.984298, 0.001168, 0.176509,
		39.312054, 34.732189, 26.912012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915623, 34.912682, 26.160252>,  <38.623047, 34.731373, 26.788456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915623, 34.912682, 26.160252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246727, 34.791489, 26.349152>,  <39.445389, 34.718773, 26.462492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246727, 34.791489, 26.349152>,  <38.915623, 34.912682, 26.160252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246727, 34.791489, 26.349152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407190, -0.254685, -0.877116,
		0.386023, 0.918335, -0.087448,
		0.827758, -0.302979, 0.472251,
		39.495056, 34.700596, 26.490828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547188, 35.261940, 25.879242>,  <38.915623, 34.912682, 26.160252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547188, 35.261940, 25.879242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668179, 34.920464, 26.048813>,  <39.740772, 34.715576, 26.150555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668179, 34.920464, 26.048813>,  <39.547188, 35.261940, 25.879242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668179, 34.920464, 26.048813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313672, -0.330832, -0.890034,
		0.900066, 0.402186, 0.167712,
		0.302475, -0.853695, 0.423925,
		39.758923, 34.664356, 26.175991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260971, 35.139408, 25.638926>,  <39.547188, 35.261940, 25.879242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260971, 35.139408, 25.638926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151310, 34.774078, 25.759380>,  <40.085514, 34.554882, 25.831654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151310, 34.774078, 25.759380>,  <40.260971, 35.139408, 25.638926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151310, 34.774078, 25.759380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461509, -0.399669, -0.792006,
		0.843711, -0.078156, 0.531077,
		-0.274155, -0.913321, 0.301136,
		40.069065, 34.500080, 25.849722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755367, 34.655991, 25.514984>,  <40.260971, 35.139408, 25.638926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755367, 34.655991, 25.514984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449917, 34.402111, 25.562378>,  <40.266647, 34.249783, 25.590815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449917, 34.402111, 25.562378>,  <40.755367, 34.655991, 25.514984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449917, 34.402111, 25.562378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378971, -0.589169, -0.713626,
		0.522744, -0.500039, 0.690435,
		-0.763623, -0.634698, 0.118484,
		40.220829, 34.211700, 25.597923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074665, 34.041500, 25.406107>,  <40.755367, 34.655991, 25.514984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074665, 34.041500, 25.406107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685268, 33.960243, 25.364071>,  <40.451630, 33.911488, 25.338848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685268, 33.960243, 25.364071>,  <41.074665, 34.041500, 25.406107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685268, 33.960243, 25.364071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205753, -0.577156, -0.790289,
		0.099888, -0.790964, 0.603655,
		-0.973493, -0.203145, -0.105092,
		40.393219, 33.899300, 25.332542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971428, 33.334850, 25.384474>,  <41.074665, 34.041500, 25.406107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971428, 33.334850, 25.384474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614418, 33.431976, 25.232452>,  <40.400211, 33.490253, 25.141239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614418, 33.431976, 25.232452>,  <40.971428, 33.334850, 25.384474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614418, 33.431976, 25.232452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122326, -0.680766, -0.722215,
		-0.434089, -0.691086, 0.577899,
		-0.892526, 0.242813, -0.380051,
		40.346661, 33.504822, 25.118437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581917, 32.672668, 25.284719>,  <40.971428, 33.334850, 25.384474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581917, 32.672668, 25.284719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407051, 32.942268, 25.046522>,  <40.302132, 33.104031, 24.903605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407051, 32.942268, 25.046522>,  <40.581917, 32.672668, 25.284719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407051, 32.942268, 25.046522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069393, -0.685414, -0.724839,
		-0.896703, -0.275548, 0.346407,
		-0.437160, 0.674004, -0.595491,
		40.275902, 33.144470, 24.867874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113876, 32.314083, 24.960575>,  <40.581917, 32.672668, 25.284719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113876, 32.314083, 24.960575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159172, 32.642651, 24.736990>,  <40.186352, 32.839790, 24.602839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159172, 32.642651, 24.736990>,  <40.113876, 32.314083, 24.960575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159172, 32.642651, 24.736990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004761, -0.563025, -0.826426,
		-0.993556, 0.090924, -0.067669,
		0.113241, 0.821423, -0.558964,
		40.193146, 32.889076, 24.569302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655518, 32.211689, 24.464714>,  <40.113876, 32.314083, 24.960575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655518, 32.211689, 24.464714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906273, 32.485046, 24.315060>,  <40.056728, 32.649063, 24.225267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906273, 32.485046, 24.315060>,  <39.655518, 32.211689, 24.464714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906273, 32.485046, 24.315060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061165, -0.521897, -0.850813,
		-0.776702, 0.510484, -0.368973,
		0.626892, 0.683396, -0.374135,
		40.094341, 32.690063, 24.202820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498852, 32.269672, 23.773565>,  <39.655518, 32.211689, 24.464714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498852, 32.269672, 23.773565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874458, 32.405403, 23.795887>,  <40.099823, 32.486839, 23.809280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874458, 32.405403, 23.795887>,  <39.498852, 32.269672, 23.773565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874458, 32.405403, 23.795887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234628, -0.513545, -0.825361,
		-0.251407, 0.788118, -0.561841,
		0.939012, 0.339325, 0.055806,
		40.156162, 32.507202, 23.812630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690666, 32.481678, 23.030067>,  <39.498852, 32.269672, 23.773565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690666, 32.481678, 23.030067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026524, 32.419521, 23.238241>,  <40.228039, 32.382229, 23.363146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026524, 32.419521, 23.238241>,  <39.690666, 32.481678, 23.030067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026524, 32.419521, 23.238241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331474, -0.612455, -0.717651,
		0.430258, 0.775082, -0.462737,
		0.839645, -0.155389, 0.520433,
		40.278416, 32.372906, 23.394371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130329, 32.572186, 22.548292>,  <39.690666, 32.481678, 23.030067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130329, 32.572186, 22.548292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338165, 32.382088, 22.832310>,  <40.462868, 32.268028, 23.002720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338165, 32.382088, 22.832310>,  <40.130329, 32.572186, 22.548292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338165, 32.382088, 22.832310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527521, -0.475288, -0.704147,
		0.672119, 0.740434, 0.003745,
		0.519594, -0.475246, 0.710044,
		40.494045, 32.239513, 23.045322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858795, 32.687809, 22.403841>,  <40.130329, 32.572186, 22.548292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858795, 32.687809, 22.403841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802761, 32.354755, 22.618170>,  <40.769138, 32.154922, 22.746767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802761, 32.354755, 22.618170>,  <40.858795, 32.687809, 22.403841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802761, 32.354755, 22.618170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407613, -0.541670, -0.735150,
		0.902345, 0.115421, 0.415272,
		-0.140088, -0.832629, 0.535821,
		40.760735, 32.104965, 22.778915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595592, 32.475910, 22.343517>,  <40.858795, 32.687809, 22.403841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595592, 32.475910, 22.343517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338737, 32.185307, 22.441360>,  <41.184624, 32.010944, 22.500067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338737, 32.185307, 22.441360>,  <41.595592, 32.475910, 22.343517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338737, 32.185307, 22.441360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507552, -0.642063, -0.574584,
		0.574496, -0.244813, 0.781039,
		-0.642141, -0.726514, 0.244607,
		41.146095, 31.967352, 22.514742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981354, 31.933069, 22.539011>,  <41.595592, 32.475910, 22.343517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981354, 31.933069, 22.539011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631744, 31.753973, 22.463533>,  <41.421978, 31.646515, 22.418247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631744, 31.753973, 22.463533>,  <41.981354, 31.933069, 22.539011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631744, 31.753973, 22.463533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473381, -0.697206, -0.538344,
		0.109479, -0.559852, 0.821328,
		-0.874028, -0.447739, -0.188694,
		41.369537, 31.619652, 22.406925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936146, 31.277178, 22.904631>,  <41.981354, 31.933069, 22.539011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936146, 31.277178, 22.904631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667908, 31.242579, 22.609926>,  <41.506966, 31.221819, 22.433104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667908, 31.242579, 22.609926>,  <41.936146, 31.277178, 22.904631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667908, 31.242579, 22.609926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511370, -0.773396, -0.374646,
		-0.537404, -0.627994, 0.562869,
		-0.670596, -0.086498, -0.736763,
		41.466728, 31.216629, 22.388897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842884, 30.600475, 22.829357>,  <41.936146, 31.277178, 22.904631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842884, 30.600475, 22.829357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713085, 30.763248, 22.487806>,  <41.635204, 30.860912, 22.282875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713085, 30.763248, 22.487806>,  <41.842884, 30.600475, 22.829357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713085, 30.763248, 22.487806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383541, -0.768578, -0.512039,
		-0.864636, -0.493654, 0.093329,
		-0.324500, 0.406932, -0.853877,
		41.615734, 30.885328, 22.231644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868294, 30.086855, 22.385536>,  <41.842884, 30.600475, 22.829357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868294, 30.086855, 22.385536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809330, 30.377537, 22.117157>,  <41.773952, 30.551945, 21.956129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809330, 30.377537, 22.117157>,  <41.868294, 30.086855, 22.385536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809330, 30.377537, 22.117157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451445, -0.554143, -0.699373,
		-0.880039, -0.405989, -0.246382,
		-0.147407, 0.726704, -0.670949,
		41.765106, 30.595549, 21.915873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416206, 29.858690, 21.799456>,  <41.868294, 30.086855, 22.385536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416206, 29.858690, 21.799456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659279, 30.153687, 21.681583>,  <41.805122, 30.330685, 21.610861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659279, 30.153687, 21.681583>,  <41.416206, 29.858690, 21.799456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659279, 30.153687, 21.681583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413436, -0.610567, -0.675484,
		-0.678084, 0.288645, -0.675933,
		0.607677, 0.737490, -0.294680,
		41.841583, 30.374933, 21.593180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259537, 29.935740, 21.058868>,  <41.416206, 29.858690, 21.799456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259537, 29.935740, 21.058868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606548, 30.119722, 21.134579>,  <41.814754, 30.230112, 21.180004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606548, 30.119722, 21.134579>,  <41.259537, 29.935740, 21.058868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606548, 30.119722, 21.134579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448956, -0.560370, -0.696006,
		-0.214070, 0.688784, -0.692641,
		0.867533, 0.459959, 0.189275,
		41.866810, 30.257710, 21.191360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510551, 29.943007, 20.394804>,  <41.259537, 29.935740, 21.058868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510551, 29.943007, 20.394804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832222, 30.021122, 20.619360>,  <42.025223, 30.067991, 20.754093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832222, 30.021122, 20.619360>,  <41.510551, 29.943007, 20.394804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832222, 30.021122, 20.619360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589380, -0.384347, -0.710569,
		0.077003, 0.902297, -0.424183,
		0.804178, 0.195289, 0.561392,
		42.073475, 30.079708, 20.787777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941372, 30.334084, 19.993740>,  <41.510551, 29.943007, 20.394804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941372, 30.334084, 19.993740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170349, 30.137499, 20.256273>,  <42.307735, 30.019548, 20.413794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170349, 30.137499, 20.256273>,  <41.941372, 30.334084, 19.993740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170349, 30.137499, 20.256273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618755, -0.266294, -0.739074,
		0.538004, 0.829188, 0.151656,
		0.572446, -0.491462, 0.656331,
		42.342083, 29.990061, 20.453173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672546, 30.365873, 19.634706>,  <41.941372, 30.334084, 19.993740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672546, 30.365873, 19.634706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729530, 30.085680, 19.914429>,  <42.763721, 29.917564, 20.082262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729530, 30.085680, 19.914429>,  <42.672546, 30.365873, 19.634706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729530, 30.085680, 19.914429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394991, -0.607585, -0.689074,
		0.907573, 0.374383, 0.190130,
		0.142457, -0.700484, 0.699305,
		42.772266, 29.875534, 20.124220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399673, 30.019444, 19.618004>,  <42.672546, 30.365873, 19.634706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399673, 30.019444, 19.618004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155159, 29.760658, 19.800329>,  <43.008450, 29.605387, 19.909725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155159, 29.760658, 19.800329>,  <43.399673, 30.019444, 19.618004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155159, 29.760658, 19.800329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398490, -0.749230, -0.529018,
		0.683766, -0.141743, 0.715802,
		-0.611285, -0.646965, 0.455815,
		42.971775, 29.566568, 19.937075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838268, 29.382746, 19.782663>,  <43.399673, 30.019444, 19.618004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838268, 29.382746, 19.782663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453842, 29.274570, 19.805359>,  <43.223186, 29.209665, 19.818975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453842, 29.274570, 19.805359>,  <43.838268, 29.382746, 19.782663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453842, 29.274570, 19.805359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200829, -0.824641, -0.528805,
		0.189798, -0.496821, 0.846845,
		-0.961064, -0.270437, 0.056739,
		43.165524, 29.193439, 19.822380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943401, 28.679590, 19.997583>,  <43.838268, 29.382746, 19.782663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943401, 28.679590, 19.997583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577801, 28.715298, 19.839277>,  <43.358440, 28.736723, 19.744293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577801, 28.715298, 19.839277>,  <43.943401, 28.679590, 19.997583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577801, 28.715298, 19.839277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126912, -0.863625, -0.487898,
		-0.385348, -0.496168, 0.778026,
		-0.914002, 0.089270, -0.395766,
		43.303600, 28.742079, 19.720547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513569, 28.144375, 19.730743>,  <43.943401, 28.679590, 19.997583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513569, 28.144375, 19.730743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878559, 28.275745, 19.828339>,  <45.097553, 28.354568, 19.886896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878559, 28.275745, 19.828339>,  <44.513569, 28.144375, 19.730743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878559, 28.275745, 19.828339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400939, 0.599020, 0.693126,
		0.081487, -0.730282, 0.678268,
		0.912473, 0.328425, 0.243986,
		45.152302, 28.374273, 19.901535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630699, 28.271978, 20.490152>,  <44.513569, 28.144375, 19.730743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630699, 28.271978, 20.490152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896328, 28.525549, 20.331589>,  <45.055706, 28.677692, 20.236450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896328, 28.525549, 20.331589>,  <44.630699, 28.271978, 20.490152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896328, 28.525549, 20.331589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122596, 0.615345, 0.778666,
		0.737548, -0.468492, 0.486351,
		0.664073, 0.633928, -0.396412,
		45.095551, 28.715727, 20.212666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978054, 28.652597, 21.041475>,  <44.630699, 28.271978, 20.490152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978054, 28.652597, 21.041475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082573, 28.886051, 20.733944>,  <45.145283, 29.026123, 20.549425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082573, 28.886051, 20.733944>,  <44.978054, 28.652597, 21.041475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082573, 28.886051, 20.733944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160983, 0.758994, 0.630883,
		0.951740, -0.288616, 0.104367,
		0.261296, 0.583635, -0.768827,
		45.160961, 29.061142, 20.503296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601051, 29.058826, 21.240955>,  <44.978054, 28.652597, 21.041475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601051, 29.058826, 21.240955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412998, 29.252348, 20.945684>,  <45.300167, 29.368460, 20.768522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412998, 29.252348, 20.945684>,  <45.601051, 29.058826, 21.240955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412998, 29.252348, 20.945684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047057, 0.821443, 0.568346,
		0.881338, 0.301937, -0.363424,
		-0.470137, 0.483803, -0.738177,
		45.271957, 29.397490, 20.724232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.001469, 29.696007, 21.243378>,  <45.601051, 29.058826, 21.240955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.001469, 29.696007, 21.243378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660908, 29.765154, 21.045294>,  <45.456573, 29.806643, 20.926443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660908, 29.765154, 21.045294>,  <46.001469, 29.696007, 21.243378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660908, 29.765154, 21.045294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083677, 0.887272, 0.453593,
		0.517799, 0.427627, -0.740959,
		-0.851401, 0.172868, -0.495211,
		45.405487, 29.817015, 20.896730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053459, 30.365803, 21.043547>,  <46.001469, 29.696007, 21.243378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053459, 30.365803, 21.043547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662907, 30.279396, 21.045238>,  <45.428574, 30.227552, 21.046253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662907, 30.279396, 21.045238>,  <46.053459, 30.365803, 21.043547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662907, 30.279396, 21.045238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194791, 0.888569, 0.415333,
		-0.093475, 0.404699, -0.909660,
		-0.976380, -0.216017, 0.004227,
		45.369991, 30.214590, 21.046507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731068, 31.028967, 20.975433>,  <46.053459, 30.365803, 21.043547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731068, 31.028967, 20.975433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442604, 30.787222, 21.110891>,  <45.269527, 30.642176, 21.192165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442604, 30.787222, 21.110891>,  <45.731068, 31.028967, 20.975433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442604, 30.787222, 21.110891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281330, 0.702188, 0.654054,
		-0.633075, 0.376406, -0.676413,
		-0.721159, -0.604360, 0.338643,
		45.226257, 30.605913, 21.212484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159332, 31.559011, 21.137804>,  <45.731068, 31.028967, 20.975433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159332, 31.559011, 21.137804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011078, 31.243942, 21.334658>,  <44.922123, 31.054901, 21.452770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.011078, 31.243942, 21.334658>,  <45.159332, 31.559011, 21.137804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011078, 31.243942, 21.334658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543422, 0.613622, 0.572853,
		-0.753205, -0.055113, -0.655473,
		-0.370641, -0.787674, 0.492133,
		44.899887, 31.007641, 21.482298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461784, 31.651773, 21.137295>,  <45.159332, 31.559011, 21.137804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461784, 31.651773, 21.137295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565605, 31.429440, 21.453188>,  <44.627899, 31.296040, 21.642723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565605, 31.429440, 21.453188>,  <44.461784, 31.651773, 21.137295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565605, 31.429440, 21.453188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342535, 0.711605, 0.613424,
		-0.902941, -0.429727, -0.005695,
		0.259552, -0.555836, 0.789734,
		44.643471, 31.262690, 21.690107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994652, 31.748835, 21.657011>,  <44.461784, 31.651773, 21.137295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994652, 31.748835, 21.657011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279202, 31.565393, 21.870041>,  <44.449932, 31.455330, 21.997858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279202, 31.565393, 21.870041>,  <43.994652, 31.748835, 21.657011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279202, 31.565393, 21.870041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384648, 0.380163, 0.841144,
		-0.588214, -0.803220, 0.094038,
		0.711373, -0.458601, 0.532573,
		44.492615, 31.427813, 22.029814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684341, 31.388817, 22.232174>,  <43.994652, 31.748835, 21.657011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684341, 31.388817, 22.232174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052696, 31.500896, 22.340588>,  <44.273708, 31.568144, 22.405636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052696, 31.500896, 22.340588>,  <43.684341, 31.388817, 22.232174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052696, 31.500896, 22.340588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367114, 0.389440, 0.844727,
		0.131138, -0.877398, 0.461493,
		0.920886, 0.280197, 0.271034,
		44.328960, 31.584955, 22.421898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709980, 31.285875, 22.919138>,  <43.684341, 31.388817, 22.232174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709980, 31.285875, 22.919138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023109, 31.532030, 22.882298>,  <44.210987, 31.679722, 22.860193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023109, 31.532030, 22.882298>,  <43.709980, 31.285875, 22.919138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023109, 31.532030, 22.882298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236216, 0.430844, 0.870962,
		0.575661, -0.660056, 0.482640,
		0.782826, 0.615386, -0.092104,
		44.257957, 31.716646, 22.854666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986954, 31.415766, 23.598703>,  <43.709980, 31.285875, 22.919138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986954, 31.415766, 23.598703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106636, 31.732710, 23.386047>,  <44.178444, 31.922876, 23.258453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106636, 31.732710, 23.386047>,  <43.986954, 31.415766, 23.598703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106636, 31.732710, 23.386047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270076, 0.604705, 0.749261,
		0.915170, -0.080598, 0.394927,
		0.299203, 0.792361, -0.531640,
		44.196396, 31.970419, 23.226555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189190, 31.800722, 24.084614>,  <43.986954, 31.415766, 23.598703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189190, 31.800722, 24.084614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171482, 32.055447, 23.776714>,  <44.160858, 32.208282, 23.591974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171482, 32.055447, 23.776714>,  <44.189190, 31.800722, 24.084614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171482, 32.055447, 23.776714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308922, 0.724013, 0.616744,
		0.950057, 0.265095, 0.164672,
		-0.044271, 0.636812, -0.769747,
		44.158199, 32.246490, 23.545790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605999, 32.372231, 24.262650>,  <44.189190, 31.800722, 24.084614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605999, 32.372231, 24.262650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328083, 32.496521, 24.003201>,  <44.161331, 32.571095, 23.847532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328083, 32.496521, 24.003201>,  <44.605999, 32.372231, 24.262650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328083, 32.496521, 24.003201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255446, 0.736434, 0.626427,
		0.672317, 0.600925, -0.432295,
		-0.694793, 0.310730, -0.648621,
		44.119644, 32.589741, 23.808615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647396, 33.129070, 24.267437>,  <44.605999, 32.372231, 24.262650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647396, 33.129070, 24.267437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293774, 33.081020, 24.086767>,  <44.081600, 33.052193, 23.978365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293774, 33.081020, 24.086767>,  <44.647396, 33.129070, 24.267437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293774, 33.081020, 24.086767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390217, 0.721604, 0.571855,
		0.257239, 0.681805, -0.684814,
		-0.884058, -0.120123, -0.451677,
		44.028557, 33.044983, 23.951263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430603, 33.831768, 24.132696>,  <44.647396, 33.129070, 24.267437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430603, 33.831768, 24.132696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110497, 33.591953, 24.128132>,  <43.918434, 33.448067, 24.125393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110497, 33.591953, 24.128132>,  <44.430603, 33.831768, 24.132696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110497, 33.591953, 24.128132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501186, 0.658299, 0.561654,
		-0.329218, 0.455193, -0.827293,
		-0.800267, -0.599535, -0.011412,
		43.870415, 33.412094, 24.124708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881359, 34.302303, 24.084257>,  <44.430603, 33.831768, 24.132696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881359, 34.302303, 24.084257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687557, 33.968506, 24.189232>,  <43.571278, 33.768227, 24.252216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687557, 33.968506, 24.189232>,  <43.881359, 34.302303, 24.084257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687557, 33.968506, 24.189232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627156, 0.540498, 0.560836,
		-0.609861, 0.107139, -0.785233,
		-0.484504, -0.834496, 0.262436,
		43.542206, 33.718159, 24.267963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172508, 34.487598, 24.220188>,  <43.881359, 34.302303, 24.084257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172508, 34.487598, 24.220188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211887, 34.129654, 24.394325>,  <43.235516, 33.914886, 24.498808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211887, 34.129654, 24.394325>,  <43.172508, 34.487598, 24.220188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211887, 34.129654, 24.394325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469332, 0.344009, 0.813256,
		-0.877517, -0.284382, -0.386123,
		0.098445, -0.894866, 0.435343,
		43.241421, 33.861195, 24.524929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476532, 34.236542, 24.392759>,  <43.172508, 34.487598, 24.220188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476532, 34.236542, 24.392759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759514, 34.085812, 24.631927>,  <42.929302, 33.995373, 24.775429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759514, 34.085812, 24.631927>,  <42.476532, 34.236542, 24.392759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759514, 34.085812, 24.631927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583428, 0.166112, 0.794996,
		-0.398900, -0.911266, -0.102337,
		0.707454, -0.376830, 0.597921,
		42.971748, 33.972763, 24.811304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156376, 33.702709, 24.819708>,  <42.476532, 34.236542, 24.392759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156376, 33.702709, 24.819708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499084, 33.794903, 25.004240>,  <42.704708, 33.850220, 25.114960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499084, 33.794903, 25.004240>,  <42.156376, 33.702709, 24.819708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499084, 33.794903, 25.004240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490882, 0.090310, 0.866533,
		0.158066, -0.968875, 0.190519,
		0.856767, 0.230492, 0.461328,
		42.756115, 33.864048, 25.142639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130684, 33.380619, 25.438240>,  <42.156376, 33.702709, 24.819708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130684, 33.380619, 25.438240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374557, 33.692322, 25.496265>,  <42.520882, 33.879341, 25.531080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374557, 33.692322, 25.496265>,  <42.130684, 33.380619, 25.438240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374557, 33.692322, 25.496265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460387, 0.199166, 0.865088,
		0.645232, -0.594218, 0.480188,
		0.609688, 0.779255, 0.145061,
		42.557465, 33.926098, 25.539783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360298, 33.357231, 26.217199>,  <42.130684, 33.380619, 25.438240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360298, 33.357231, 26.217199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434406, 33.734661, 26.107407>,  <42.478870, 33.961121, 26.041531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434406, 33.734661, 26.107407>,  <42.360298, 33.357231, 26.217199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434406, 33.734661, 26.107407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286295, 0.319026, 0.903469,
		0.940059, -0.088800, 0.329246,
		0.185266, 0.943577, -0.274481,
		42.489986, 34.017735, 26.025063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634369, 33.676136, 26.869371>,  <42.360298, 33.357231, 26.217199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634369, 33.676136, 26.869371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589413, 34.010082, 26.653826>,  <42.562439, 34.210449, 26.524498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589413, 34.010082, 26.653826>,  <42.634369, 33.676136, 26.869371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589413, 34.010082, 26.653826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161219, 0.519792, 0.838943,
		0.980499, 0.181161, 0.076178,
		-0.112387, 0.834863, -0.538862,
		42.555698, 34.260540, 26.492167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147102, 34.186630, 27.087898>,  <42.634369, 33.676136, 26.869371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147102, 34.186630, 27.087898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840702, 34.381641, 26.920301>,  <42.656860, 34.498650, 26.819744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840702, 34.381641, 26.920301>,  <43.147102, 34.186630, 27.087898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840702, 34.381641, 26.920301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067911, 0.586763, 0.806906,
		0.639240, 0.646546, -0.416353,
		-0.766003, 0.487532, -0.418990,
		42.610901, 34.527901, 26.794605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234394, 34.812794, 27.147739>,  <43.147102, 34.186630, 27.087898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234394, 34.812794, 27.147739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840107, 34.833080, 27.083504>,  <42.603535, 34.845253, 27.044962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840107, 34.833080, 27.083504>,  <43.234394, 34.812794, 27.147739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840107, 34.833080, 27.083504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108995, 0.534798, 0.837920,
		0.128380, 0.843456, -0.521632,
		-0.985717, 0.050717, -0.160590,
		42.544392, 34.848297, 27.035326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051003, 35.461388, 27.205868>,  <43.234394, 34.812794, 27.147739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051003, 35.461388, 27.205868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693207, 35.287468, 27.247515>,  <42.478531, 35.183117, 27.272503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693207, 35.287468, 27.247515>,  <43.051003, 35.461388, 27.205868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693207, 35.287468, 27.247515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193619, 0.586629, 0.786370,
		-0.402992, 0.683240, -0.608918,
		-0.894488, -0.434799, 0.104119,
		42.424862, 35.157028, 27.278751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595612, 36.049450, 27.116476>,  <43.051003, 35.461388, 27.205868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595612, 36.049450, 27.116476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397713, 35.753460, 27.298754>,  <42.278973, 35.575867, 27.408121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397713, 35.753460, 27.298754>,  <42.595612, 36.049450, 27.116476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397713, 35.753460, 27.298754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257699, 0.625708, 0.736261,
		-0.829948, 0.246833, -0.500260,
		-0.494751, -0.739975, 0.455697,
		42.249287, 35.531467, 27.435463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005508, 36.354332, 27.305346>,  <42.595612, 36.049450, 27.116476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005508, 36.354332, 27.305346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983295, 36.037113, 27.547995>,  <41.969967, 35.846783, 27.693584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983295, 36.037113, 27.547995>,  <42.005508, 36.354332, 27.305346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983295, 36.037113, 27.547995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485319, 0.552399, 0.677732,
		-0.872571, -0.256767, -0.415559,
		-0.055536, -0.793048, 0.606622,
		41.966637, 35.799198, 27.729980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302990, 36.321541, 27.545481>,  <42.005508, 36.354332, 27.305346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302990, 36.321541, 27.545481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515865, 36.112896, 27.812223>,  <41.643589, 35.987709, 27.972269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515865, 36.112896, 27.812223>,  <41.302990, 36.321541, 27.545481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515865, 36.112896, 27.812223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459836, 0.483272, 0.744983,
		-0.710864, -0.703116, 0.017337,
		0.532188, -0.521609, 0.666859,
		41.675522, 35.956413, 28.012281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857185, 36.093372, 28.031475>,  <41.302990, 36.321541, 27.545481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857185, 36.093372, 28.031475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206829, 36.081528, 28.225403>,  <41.416615, 36.074421, 28.341759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206829, 36.081528, 28.225403>,  <40.857185, 36.093372, 28.031475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206829, 36.081528, 28.225403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429478, 0.419116, 0.799932,
		-0.226881, -0.907450, 0.353638,
		0.874113, -0.029610, 0.484819,
		41.469063, 36.072643, 28.370848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712566, 35.660347, 28.461018>,  <40.857185, 36.093372, 28.031475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712566, 35.660347, 28.461018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005650, 35.889988, 28.607193>,  <41.181499, 36.027771, 28.694899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005650, 35.889988, 28.607193>,  <40.712566, 35.660347, 28.461018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005650, 35.889988, 28.607193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536326, 0.156579, 0.829360,
		0.418914, -0.803676, 0.422630,
		0.732711, 0.574098, 0.365439,
		41.225464, 36.062218, 28.716825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679913, 35.569572, 29.168673>,  <40.712566, 35.660347, 28.461018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679913, 35.569572, 29.168673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917206, 35.891537, 29.162952>,  <41.059582, 36.084713, 29.159519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917206, 35.891537, 29.162952>,  <40.679913, 35.569572, 29.168673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917206, 35.891537, 29.162952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531100, 0.404657, 0.744436,
		0.604989, -0.434026, 0.667540,
		0.593229, 0.804907, -0.014302,
		41.095173, 36.133007, 29.158663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851788, 35.722637, 29.839975>,  <40.679913, 35.569572, 29.168673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851788, 35.722637, 29.839975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934551, 36.065300, 29.650946>,  <40.984207, 36.270897, 29.537527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934551, 36.065300, 29.650946>,  <40.851788, 35.722637, 29.839975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934551, 36.065300, 29.650946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360461, 0.515796, 0.777189,
		0.909537, 0.009540, 0.415513,
		0.206905, 0.856658, -0.472574,
		40.996624, 36.322296, 29.509172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276924, 36.133389, 30.285454>,  <40.851788, 35.722637, 29.839975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276924, 36.133389, 30.285454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071552, 36.375965, 30.042599>,  <40.948330, 36.521511, 29.896885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071552, 36.375965, 30.042599>,  <41.276924, 36.133389, 30.285454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071552, 36.375965, 30.042599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279881, 0.550485, 0.786533,
		0.811205, 0.573759, -0.112907,
		-0.513434, 0.606438, -0.607140,
		40.917522, 36.557896, 29.860456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435787, 36.762424, 30.599867>,  <41.276924, 36.133389, 30.285454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435787, 36.762424, 30.599867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116837, 36.811440, 30.363501>,  <40.925468, 36.840851, 30.221682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116837, 36.811440, 30.363501>,  <41.435787, 36.762424, 30.599867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116837, 36.811440, 30.363501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475945, 0.474332, 0.740598,
		0.371045, 0.871776, -0.319896,
		-0.797372, 0.122542, -0.590916,
		40.877625, 36.848202, 30.186226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336231, 37.431339, 30.458666>,  <41.435787, 36.762424, 30.599867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336231, 37.431339, 30.458666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968773, 37.284210, 30.400976>,  <40.748299, 37.195934, 30.366362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968773, 37.284210, 30.400976>,  <41.336231, 37.431339, 30.458666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968773, 37.284210, 30.400976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352188, 0.596954, 0.720840,
		-0.179045, 0.712989, -0.677930,
		-0.918644, -0.367822, -0.144225,
		40.693180, 37.173862, 30.357708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896549, 38.019341, 30.481258>,  <41.336231, 37.431339, 30.458666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896549, 38.019341, 30.481258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665455, 37.698269, 30.540489>,  <40.526798, 37.505627, 30.576027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665455, 37.698269, 30.540489>,  <40.896549, 38.019341, 30.481258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665455, 37.698269, 30.540489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398011, 0.435433, 0.807456,
		-0.712604, 0.407563, -0.571041,
		-0.577739, -0.802677, 0.148077,
		40.492134, 37.457466, 30.584911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263836, 38.268494, 30.571774>,  <40.896549, 38.019341, 30.481258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263836, 38.268494, 30.571774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274567, 37.915524, 30.759645>,  <40.281006, 37.703739, 30.872368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274567, 37.915524, 30.759645>,  <40.263836, 38.268494, 30.571774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274567, 37.915524, 30.759645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496521, 0.396030, 0.772416,
		-0.867610, -0.253926, -0.427521,
		0.026825, -0.882430, 0.469679,
		40.282616, 37.650795, 30.900549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633945, 38.118931, 30.719259>,  <40.263836, 38.268494, 30.571774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633945, 38.118931, 30.719259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879841, 37.933723, 30.974670>,  <40.027378, 37.822601, 31.127916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879841, 37.933723, 30.974670>,  <39.633945, 38.118931, 30.719259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879841, 37.933723, 30.974670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556082, 0.319694, 0.767182,
		-0.559350, -0.826688, -0.060947,
		0.614736, -0.463014, 0.638527,
		40.064262, 37.794819, 31.166229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402584, 37.505772, 31.152842>,  <39.633945, 38.118931, 30.719259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402584, 37.505772, 31.152842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682331, 37.673775, 31.384174>,  <39.850182, 37.774578, 31.522974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682331, 37.673775, 31.384174>,  <39.402584, 37.505772, 31.152842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682331, 37.673775, 31.384174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680722, 0.144687, 0.718111,
		0.217936, -0.895912, 0.387100,
		0.699373, 0.420009, 0.578334,
		39.892143, 37.799778, 31.557674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494953, 37.123646, 31.809065>,  <39.402584, 37.505772, 31.152842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494953, 37.123646, 31.809065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538429, 37.521194, 31.817152>,  <39.564514, 37.759724, 31.822004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538429, 37.521194, 31.817152>,  <39.494953, 37.123646, 31.809065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538429, 37.521194, 31.817152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780092, 0.072671, 0.621430,
		0.616151, -0.083316, 0.783209,
		0.108691, 0.993870, 0.020218,
		39.571037, 37.819355, 31.823217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722912, 37.373363, 32.464386>,  <39.494953, 37.123646, 31.809065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722912, 37.373363, 32.464386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472557, 37.617683, 32.270401>,  <39.322346, 37.764275, 32.154011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472557, 37.617683, 32.270401>,  <39.722912, 37.373363, 32.464386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472557, 37.617683, 32.270401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591326, 0.033799, 0.805724,
		0.508528, 0.791063, 0.340028,
		-0.625886, 0.610801, -0.484963,
		39.284790, 37.800922, 32.124912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706512, 37.981308, 32.980484>,  <39.722912, 37.373363, 32.464386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706512, 37.981308, 32.980484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396915, 37.970016, 32.727459>,  <39.211159, 37.963242, 32.575642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396915, 37.970016, 32.727459>,  <39.706512, 37.981308, 32.980484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396915, 37.970016, 32.727459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631032, 0.116922, 0.766895,
		0.052316, 0.992740, -0.108307,
		-0.773991, -0.028224, -0.632567,
		39.164719, 37.961548, 32.537689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718136, 38.085140, 33.793289>,  <39.706512, 37.981308, 32.980484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718136, 38.085140, 33.793289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825722, 38.186234, 34.165051>,  <39.890274, 38.246891, 34.388107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825722, 38.186234, 34.165051>,  <39.718136, 38.085140, 33.793289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825722, 38.186234, 34.165051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881190, -0.324955, 0.343378,
		0.388797, -0.911333, 0.135309,
		0.268963, 0.252737, 0.929399,
		39.906410, 38.262054, 34.443871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441151, 37.534088, 34.161701>,  <39.718136, 38.085140, 33.793289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441151, 37.534088, 34.161701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499313, 37.790497, 34.463150>,  <39.534210, 37.944344, 34.644020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499313, 37.790497, 34.463150>,  <39.441151, 37.534088, 34.161701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499313, 37.790497, 34.463150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929000, -0.173554, 0.326861,
		0.340320, -0.747643, 0.570274,
		0.145402, 0.641022, 0.753624,
		39.542934, 37.982803, 34.689236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310139, 37.207989, 34.762985>,  <39.441151, 37.534088, 34.161701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310139, 37.207989, 34.762985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250546, 37.597172, 34.833595>,  <39.214790, 37.830681, 34.875961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250546, 37.597172, 34.833595>,  <39.310139, 37.207989, 34.762985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250546, 37.597172, 34.833595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887869, -0.210209, 0.409269,
		0.435307, -0.095752, 0.895176,
		-0.148986, 0.972956, 0.176521,
		39.205849, 37.889057, 34.886551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883301, 36.848282, 34.472538>,  <39.310139, 37.207989, 34.762985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883301, 36.848282, 34.472538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225075, 36.641716, 34.495335>,  <40.430141, 36.517776, 34.509014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225075, 36.641716, 34.495335>,  <39.883301, 36.848282, 34.472538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225075, 36.641716, 34.495335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246632, -0.499705, -0.830342,
		0.457282, 0.695420, -0.554332,
		0.854439, -0.516417, 0.056993,
		40.481407, 36.486790, 34.512432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308205, 36.964203, 33.914608>,  <39.883301, 36.848282, 34.472538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308205, 36.964203, 33.914608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382580, 36.597710, 34.056564>,  <40.427204, 36.377815, 34.141739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382580, 36.597710, 34.056564>,  <40.308205, 36.964203, 33.914608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382580, 36.597710, 34.056564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403490, -0.400532, -0.822660,
		0.895893, 0.009764, -0.444162,
		0.185934, -0.916231, 0.354894,
		40.438358, 36.322842, 34.163033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707241, 36.402214, 33.435646>,  <40.308205, 36.964203, 33.914608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707241, 36.402214, 33.435646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431450, 36.264973, 33.690800>,  <40.265976, 36.182629, 33.843891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431450, 36.264973, 33.690800>,  <40.707241, 36.402214, 33.435646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431450, 36.264973, 33.690800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438105, -0.503759, -0.744507,
		0.576784, -0.792783, 0.197015,
		-0.689480, -0.343107, 0.637883,
		40.224606, 36.162041, 33.882164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694214, 35.638599, 33.500507>,  <40.707241, 36.402214, 33.435646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694214, 35.638599, 33.500507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323750, 35.782848, 33.544643>,  <40.101471, 35.869396, 33.571125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323750, 35.782848, 33.544643>,  <40.694214, 35.638599, 33.500507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323750, 35.782848, 33.544643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308273, -0.555424, -0.772315,
		-0.217226, -0.749305, 0.625583,
		-0.926164, 0.360618, 0.110338,
		40.045898, 35.891033, 33.577744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225555, 35.069736, 33.711132>,  <40.694214, 35.638599, 33.500507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225555, 35.069736, 33.711132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022896, 35.366631, 33.535683>,  <39.901299, 35.544769, 33.430412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022896, 35.366631, 33.535683>,  <40.225555, 35.069736, 33.711132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022896, 35.366631, 33.535683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268789, -0.619382, -0.737644,
		-0.819182, -0.255830, 0.513315,
		-0.506649, 0.742238, -0.438623,
		39.870899, 35.589302, 33.404095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505871, 34.905128, 33.527683>,  <40.225555, 35.069736, 33.711132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505871, 34.905128, 33.527683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684254, 35.175720, 33.293247>,  <39.791283, 35.338074, 33.152588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684254, 35.175720, 33.293247>,  <39.505871, 34.905128, 33.527683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684254, 35.175720, 33.293247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102152, -0.612061, -0.784185,
		-0.889206, 0.409583, -0.203850,
		0.445958, 0.676478, -0.586088,
		39.818043, 35.378662, 33.117420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851902, 34.589012, 33.739712>,  <39.505871, 34.905128, 33.527683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851902, 34.589012, 33.739712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492546, 34.596851, 33.915218>,  <38.276932, 34.601555, 34.020523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492546, 34.596851, 33.915218>,  <38.851902, 34.589012, 33.739712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492546, 34.596851, 33.915218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162007, 0.943346, 0.289572,
		-0.408230, 0.331231, -0.850667,
		-0.898388, 0.019602, 0.438764,
		38.223030, 34.602734, 34.046848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487019, 35.155193, 33.434521>,  <38.851902, 34.589012, 33.739712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487019, 35.155193, 33.434521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409096, 35.072449, 33.818031>,  <38.362343, 35.022800, 34.048138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409096, 35.072449, 33.818031>,  <38.487019, 35.155193, 33.434521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409096, 35.072449, 33.818031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250037, 0.934737, 0.252483,
		-0.948436, 0.288916, -0.130372,
		-0.194810, -0.206866, 0.958778,
		38.350655, 35.010387, 34.105663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778835, 35.497845, 33.666348>,  <38.487019, 35.155193, 33.434521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778835, 35.497845, 33.666348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066364, 35.437931, 33.937897>,  <38.238880, 35.401985, 34.100826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066364, 35.437931, 33.937897>,  <37.778835, 35.497845, 33.666348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066364, 35.437931, 33.937897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017502, 0.972306, 0.233055,
		-0.694976, -0.179406, 0.696292,
		0.718820, -0.149781, 0.678869,
		38.282009, 35.392998, 34.141556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819736, 36.141544, 34.123238>,  <37.778835, 35.497845, 33.666348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819736, 36.141544, 34.123238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446705, 35.997410, 34.131809>,  <37.222885, 35.910931, 34.136951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446705, 35.997410, 34.131809>,  <37.819736, 36.141544, 34.123238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446705, 35.997410, 34.131809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006636, 0.042242, 0.999085,
		-0.360912, 0.931865, -0.037002,
		-0.932576, -0.360336, 0.021429,
		37.166931, 35.889309, 34.138237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239265, 36.613770, 34.481239>,  <37.819736, 36.141544, 34.123238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239265, 36.613770, 34.481239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133011, 36.228523, 34.498459>,  <37.069260, 35.997375, 34.508793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133011, 36.228523, 34.498459>,  <37.239265, 36.613770, 34.481239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133011, 36.228523, 34.498459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065938, 0.062701, 0.995852,
		-0.961816, 0.261694, -0.080161,
		-0.265635, -0.963112, 0.043051,
		37.053322, 35.939590, 34.511375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499752, 36.558537, 34.608601>,  <37.239265, 36.613770, 34.481239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499752, 36.558537, 34.608601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701767, 36.257862, 34.778259>,  <36.822975, 36.077457, 34.880054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701767, 36.257862, 34.778259>,  <36.499752, 36.558537, 34.608601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701767, 36.257862, 34.778259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033962, 0.508354, 0.860478,
		-0.862427, -0.420171, 0.282268,
		0.505041, -0.751686, 0.424149,
		36.853279, 36.032356, 34.905502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798443, 36.380726, 33.905487>,  <36.499752, 36.558537, 34.608601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798443, 36.380726, 33.905487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489243, 36.325962, 33.657703>,  <36.303722, 36.293102, 33.509033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489243, 36.325962, 33.657703>,  <36.798443, 36.380726, 33.905487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489243, 36.325962, 33.657703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253997, 0.961551, 0.104431,
		0.581341, 0.238065, -0.778054,
		-0.772999, -0.136914, -0.619457,
		36.257343, 36.284889, 33.471867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651703, 36.815441, 33.208599>,  <36.798443, 36.380726, 33.905487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651703, 36.815441, 33.208599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341194, 36.715946, 33.440300>,  <36.154888, 36.656250, 33.579323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341194, 36.715946, 33.440300>,  <36.651703, 36.815441, 33.208599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341194, 36.715946, 33.440300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282452, 0.958708, 0.033151,
		-0.563584, -0.137878, -0.814471,
		-0.776269, -0.248733, 0.579257,
		36.108315, 36.641327, 33.614079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026833, 37.176567, 32.955750>,  <36.651703, 36.815441, 33.208599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026833, 37.176567, 32.955750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915081, 37.086704, 33.329163>,  <35.848030, 37.032787, 33.553211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915081, 37.086704, 33.329163>,  <36.026833, 37.176567, 32.955750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915081, 37.086704, 33.329163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387508, 0.915930, 0.104449,
		-0.878513, -0.332570, -0.342947,
		-0.279379, -0.224654, 0.933530,
		35.831268, 37.019306, 33.609222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280556, 37.294167, 32.998341>,  <36.026833, 37.176567, 32.955750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280556, 37.294167, 32.998341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425694, 37.324131, 33.369873>,  <35.512775, 37.342110, 33.592793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425694, 37.324131, 33.369873>,  <35.280556, 37.294167, 32.998341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425694, 37.324131, 33.369873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390463, 0.917261, 0.078554,
		-0.846101, -0.391178, 0.362068,
		0.362840, 0.074909, 0.928836,
		35.534546, 37.346603, 33.648525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680733, 37.639744, 33.454006>,  <35.280556, 37.294167, 32.998341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680733, 37.639744, 33.454006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978844, 37.643028, 33.720688>,  <35.157711, 37.645000, 33.880695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978844, 37.643028, 33.720688>,  <34.680733, 37.639744, 33.454006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978844, 37.643028, 33.720688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362786, 0.843949, 0.395141,
		-0.559419, -0.536361, 0.631955,
		0.745276, 0.008215, 0.666706,
		35.202427, 37.645493, 33.920700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393101, 37.761570, 33.995403>,  <34.680733, 37.639744, 33.454006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393101, 37.761570, 33.995403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770390, 37.886745, 34.039936>,  <34.996765, 37.961849, 34.066654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770390, 37.886745, 34.039936>,  <34.393101, 37.761570, 33.995403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770390, 37.886745, 34.039936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332109, 0.893894, 0.301094,
		-0.005293, -0.320974, 0.947073,
		0.943226, 0.312938, 0.111330,
		35.053356, 37.980625, 34.073334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438251, 37.982155, 34.677353>,  <34.393101, 37.761570, 33.995403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438251, 37.982155, 34.677353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715622, 38.145966, 34.440224>,  <34.882046, 38.244251, 34.297947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715622, 38.145966, 34.440224>,  <34.438251, 37.982155, 34.677353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715622, 38.145966, 34.440224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192523, 0.898168, 0.395259,
		0.694326, -0.159951, 0.701660,
		0.693430, 0.409525, -0.592827,
		34.923653, 38.268822, 34.262375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175320, 38.319378, 35.061237>,  <34.438251, 37.982155, 34.677353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175320, 38.319378, 35.061237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014748, 38.485603, 34.734760>,  <34.918404, 38.585339, 34.538876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014748, 38.485603, 34.734760>,  <35.175320, 38.319378, 35.061237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014748, 38.485603, 34.734760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123232, 0.858533, 0.497731,
		0.907561, 0.300385, -0.293430,
		-0.401430, 0.415561, -0.816188,
		34.894318, 38.610271, 34.489902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515690, 37.818913, 35.420425>,  <35.175320, 38.319378, 35.061237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515690, 37.818913, 35.420425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590614, 37.836353, 35.812958>,  <35.635571, 37.846817, 36.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590614, 37.836353, 35.812958>,  <35.515690, 37.818913, 35.420425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590614, 37.836353, 35.812958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945403, 0.263231, -0.192155,
		-0.266696, 0.963747, 0.008082,
		0.187316, 0.043606, 0.981331,
		35.646809, 37.849434, 36.107357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680855, 38.518444, 35.639935>,  <35.515690, 37.818913, 35.420425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680855, 38.518444, 35.639935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842922, 38.195599, 35.811703>,  <35.940163, 38.001892, 35.914764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842922, 38.195599, 35.811703>,  <35.680855, 38.518444, 35.639935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842922, 38.195599, 35.811703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899746, 0.268711, -0.343878,
		0.162160, 0.525697, 0.835073,
		0.405169, -0.807117, 0.429419,
		35.964474, 37.953465, 35.940529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304543, 38.737324, 35.909019>,  <35.680855, 38.518444, 35.639935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304543, 38.737324, 35.909019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359856, 38.341568, 35.891216>,  <36.393044, 38.104115, 35.880535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359856, 38.341568, 35.891216>,  <36.304543, 38.737324, 35.909019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359856, 38.341568, 35.891216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926236, 0.145108, -0.347894,
		0.350663, 0.006882, 0.936477,
		0.138284, -0.989392, -0.044510,
		36.401340, 38.044750, 35.877865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006874, 38.714909, 36.156006>,  <36.304543, 38.737324, 35.909019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006874, 38.714909, 36.156006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936268, 38.377361, 35.953335>,  <36.893906, 38.174831, 35.831734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936268, 38.377361, 35.953335>,  <37.006874, 38.714909, 36.156006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936268, 38.377361, 35.953335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950449, -0.012291, -0.310637,
		0.255911, -0.536403, 0.804228,
		-0.176511, -0.843873, -0.506678,
		36.883316, 38.124199, 35.801331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483810, 38.148819, 36.236870>,  <37.006874, 38.714909, 36.156006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483810, 38.148819, 36.236870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351570, 38.146679, 35.859367>,  <37.272224, 38.145397, 35.632866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351570, 38.146679, 35.859367>,  <37.483810, 38.148819, 36.236870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351570, 38.146679, 35.859367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939758, 0.090231, -0.329716,
		0.086916, -0.995907, -0.024814,
		-0.330606, -0.005338, -0.943754,
		37.252388, 38.145073, 35.576241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915016, 37.647682, 35.875195>,  <37.483810, 38.148819, 36.236870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915016, 37.647682, 35.875195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796284, 37.953144, 35.645855>,  <37.725044, 38.136421, 35.508251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796284, 37.953144, 35.645855>,  <37.915016, 37.647682, 35.875195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796284, 37.953144, 35.645855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954927, 0.238807, -0.176311,
		0.002278, -0.599837, -0.800119,
		-0.296831, 0.763654, -0.573344,
		37.707233, 38.182240, 35.473850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288261, 37.567947, 35.202122>,  <37.915016, 37.647682, 35.875195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288261, 37.567947, 35.202122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234238, 37.952881, 35.296494>,  <38.201824, 38.183842, 35.353115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234238, 37.952881, 35.296494>,  <38.288261, 37.567947, 35.202122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234238, 37.952881, 35.296494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978299, 0.167279, -0.122267,
		-0.157128, 0.214297, -0.964047,
		-0.135063, 0.962338, 0.235930,
		38.193718, 38.241581, 35.367271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444771, 38.019291, 34.724159>,  <38.288261, 37.567947, 35.202122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444771, 38.019291, 34.724159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497692, 38.185715, 35.084023>,  <38.529446, 38.285568, 35.299942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497692, 38.185715, 35.084023>,  <38.444771, 38.019291, 34.724159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497692, 38.185715, 35.084023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983731, 0.056161, -0.170641,
		-0.121523, 0.907600, -0.401863,
		0.132305, 0.416063, 0.899660,
		38.537384, 38.310532, 35.353920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691978, 38.703381, 34.678070>,  <38.444771, 38.019291, 34.724159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691978, 38.703381, 34.678070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823128, 38.535969, 35.016850>,  <38.901817, 38.435520, 35.220119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823128, 38.535969, 35.016850>,  <38.691978, 38.703381, 34.678070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823128, 38.535969, 35.016850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943386, 0.097408, -0.317071,
		0.050205, 0.902963, 0.426775,
		0.327875, -0.418533, 0.846953,
		38.921490, 38.410408, 35.270935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248573, 39.029938, 35.078148>,  <38.691978, 38.703381, 34.678070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248573, 39.029938, 35.078148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288074, 38.638744, 35.151676>,  <39.311775, 38.404026, 35.195793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288074, 38.638744, 35.151676>,  <39.248573, 39.029938, 35.078148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288074, 38.638744, 35.151676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940586, 0.031430, -0.338097,
		0.324877, 0.206285, 0.922985,
		0.098754, -0.977987, 0.183818,
		39.317699, 38.345348, 35.206821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758850, 38.908241, 35.589752>,  <39.248573, 39.029938, 35.078148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758850, 38.908241, 35.589752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695980, 38.627167, 35.312183>,  <39.658260, 38.458523, 35.145641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695980, 38.627167, 35.312183>,  <39.758850, 38.908241, 35.589752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695980, 38.627167, 35.312183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943899, 0.099756, -0.314808,
		0.290435, -0.704471, 0.647586,
		-0.157172, -0.702687, -0.693922,
		39.648827, 38.416359, 35.104008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219566, 38.449780, 35.677094>,  <39.758850, 38.908241, 35.589752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219566, 38.449780, 35.677094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128487, 38.390907, 35.292076>,  <40.073837, 38.355583, 35.061066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128487, 38.390907, 35.292076>,  <40.219566, 38.449780, 35.677094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128487, 38.390907, 35.292076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972764, -0.078436, -0.218124,
		-0.043395, -0.985995, 0.161032,
		-0.227700, -0.147181, -0.962544,
		40.060177, 38.346752, 35.003311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389370, 37.782024, 35.354534>,  <40.219566, 38.449780, 35.677094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389370, 37.782024, 35.354534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422371, 38.085171, 35.095669>,  <40.442173, 38.267059, 34.940350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422371, 38.085171, 35.095669>,  <40.389370, 37.782024, 35.354534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422371, 38.085171, 35.095669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983030, -0.168651, -0.072174,
		-0.163845, -0.630230, -0.758923,
		0.082507, 0.757870, -0.647168,
		40.447124, 38.312531, 34.901520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686924, 37.544163, 34.724297>,  <40.389370, 37.782024, 35.354534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686924, 37.544163, 34.724297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777184, 37.918312, 34.833225>,  <40.831337, 38.142803, 34.898582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777184, 37.918312, 34.833225>,  <40.686924, 37.544163, 34.724297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777184, 37.918312, 34.833225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971410, -0.194854, -0.135622,
		-0.073795, 0.295138, -0.952600,
		0.225646, 0.935374, 0.272321,
		40.844879, 38.198925, 34.914921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210972, 37.202320, 35.216885>,  <40.686924, 37.544163, 34.724297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210972, 37.202320, 35.216885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128815, 36.877945, 35.436047>,  <41.079521, 36.683319, 35.567543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128815, 36.877945, 35.436047>,  <41.210972, 37.202320, 35.216885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128815, 36.877945, 35.436047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338936, 0.584137, 0.737500,
		-0.918116, -0.034231, -0.394830,
		-0.205389, -0.810933, 0.547908,
		41.067200, 36.634666, 35.600418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965034, 37.645531, 35.352329>,  <41.210972, 37.202320, 35.216885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965034, 37.645531, 35.352329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965942, 37.609840, 35.750732>,  <41.966488, 37.588428, 35.989773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965942, 37.609840, 35.750732>,  <41.965034, 37.645531, 35.352329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965942, 37.609840, 35.750732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003260, 0.996007, 0.089215,
		-0.999992, 0.003044, 0.002556,
		0.002274, -0.089222, 0.996009,
		41.966625, 37.583073, 36.049534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314869, 37.898144, 35.562000>,  <41.965034, 37.645531, 35.352329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314869, 37.898144, 35.562000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585594, 37.935875, 35.854034>,  <41.748028, 37.958511, 36.029255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585594, 37.935875, 35.854034>,  <41.314869, 37.898144, 35.562000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585594, 37.935875, 35.854034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136781, 0.990601, -0.001183,
		-0.723338, -0.099062, 0.683351,
		0.676811, 0.094326, 0.730089,
		41.788639, 37.964172, 36.073063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177837, 38.508572, 35.976723>,  <41.314869, 37.898144, 35.562000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177837, 38.508572, 35.976723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546299, 38.422245, 36.106274>,  <41.767376, 38.370449, 36.184006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546299, 38.422245, 36.106274>,  <41.177837, 38.508572, 35.976723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546299, 38.422245, 36.106274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220056, 0.975193, 0.023960,
		-0.321013, 0.049200, 0.945796,
		0.921154, -0.215820, 0.323876,
		41.822647, 38.357498, 36.203438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489716, 38.718662, 36.678173>,  <41.177837, 38.508572, 35.976723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489716, 38.718662, 36.678173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795441, 38.712173, 36.420315>,  <41.978874, 38.708282, 36.265602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795441, 38.712173, 36.420315>,  <41.489716, 38.718662, 36.678173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795441, 38.712173, 36.420315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154511, 0.975169, 0.158659,
		0.626063, -0.220869, 0.747838,
		0.764311, -0.016219, -0.644644,
		42.024734, 38.707306, 36.226921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171978, 38.726604, 36.963875>,  <41.489716, 38.718662, 36.678173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171978, 38.726604, 36.963875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131485, 38.915108, 36.613407>,  <42.107189, 39.028210, 36.403126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131485, 38.915108, 36.613407>,  <42.171978, 38.726604, 36.963875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131485, 38.915108, 36.613407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372281, 0.834650, 0.405914,
		0.922583, -0.285089, -0.259933,
		-0.101231, 0.471257, -0.876167,
		42.101116, 39.056484, 36.350555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561211, 38.104992, 37.038330>,  <42.171978, 38.726604, 36.963875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561211, 38.104992, 37.038330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324219, 38.050961, 36.720657>,  <42.182022, 38.018539, 36.530056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324219, 38.050961, 36.720657>,  <42.561211, 38.104992, 37.038330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324219, 38.050961, 36.720657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064236, -0.974780, 0.213724,
		-0.803020, 0.177642, 0.568861,
		-0.592480, -0.135083, -0.794179,
		42.146473, 38.010437, 36.482403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018692, 37.629005, 37.285667>,  <42.561211, 38.104992, 37.038330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018692, 37.629005, 37.285667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037052, 37.597542, 36.887329>,  <42.048069, 37.578663, 36.648327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037052, 37.597542, 36.887329>,  <42.018692, 37.629005, 37.285667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037052, 37.597542, 36.887329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136669, -0.988015, 0.071746,
		-0.989553, 0.132808, -0.056098,
		0.045897, -0.078664, -0.995844,
		42.050823, 37.573944, 36.588577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450226, 37.427883, 37.063988>,  <42.018692, 37.629005, 37.285667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450226, 37.427883, 37.063988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745487, 37.302864, 36.824844>,  <41.922646, 37.227852, 36.681358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745487, 37.302864, 36.824844>,  <41.450226, 37.427883, 37.063988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745487, 37.302864, 36.824844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287437, -0.947451, 0.140418,
		-0.610331, 0.068197, -0.789205,
		0.738157, -0.312548, -0.597861,
		41.966934, 37.209099, 36.645485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371967, 36.716412, 36.871017>,  <41.450226, 37.427883, 37.063988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371967, 36.716412, 36.871017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760780, 36.799355, 36.826912>,  <41.994068, 36.849121, 36.800449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760780, 36.799355, 36.826912>,  <41.371967, 36.716412, 36.871017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760780, 36.799355, 36.826912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234272, -0.823101, 0.517320,
		0.016510, -0.528684, -0.848658,
		0.972031, 0.207358, -0.110267,
		42.052391, 36.861561, 36.793831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699150, 36.102440, 36.668343>,  <41.371967, 36.716412, 36.871017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699150, 36.102440, 36.668343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998646, 36.319695, 36.820335>,  <42.178345, 36.450047, 36.911530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998646, 36.319695, 36.820335>,  <41.699150, 36.102440, 36.668343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998646, 36.319695, 36.820335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372390, -0.818897, 0.436729,
		0.548370, -0.185496, -0.815403,
		0.748743, 0.543137, 0.379982,
		42.223270, 36.482635, 36.934330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265324, 35.667686, 36.535542>,  <41.699150, 36.102440, 36.668343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265324, 35.667686, 36.535542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312489, 35.888672, 36.865604>,  <42.340786, 36.021263, 37.063641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312489, 35.888672, 36.865604>,  <42.265324, 35.667686, 36.535542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312489, 35.888672, 36.865604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354440, -0.799634, 0.484724,
		0.927615, 0.235314, -0.290101,
		0.117912, 0.552461, 0.825157,
		42.347862, 36.054409, 37.113152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451427, 36.226547, 35.920658>,  <42.265324, 35.667686, 36.535542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451427, 36.226547, 35.920658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666420, 36.366192, 35.613613>,  <42.795418, 36.449978, 35.429386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666420, 36.366192, 35.613613>,  <42.451427, 36.226547, 35.920658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666420, 36.366192, 35.613613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843245, -0.215038, 0.492643,
		0.006919, -0.912076, -0.409962,
		0.537485, 0.349107, -0.767616,
		42.827667, 36.470924, 35.383327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086319, 35.968201, 36.018501>,  <42.451427, 36.226547, 35.920658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086319, 35.968201, 36.018501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174774, 36.198429, 35.703587>,  <43.227848, 36.336567, 35.514637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174774, 36.198429, 35.703587>,  <43.086319, 35.968201, 36.018501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174774, 36.198429, 35.703587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972330, -0.067763, 0.223569,
		0.075332, -0.814938, -0.574632,
		0.221134, 0.575573, -0.787283,
		43.241116, 36.371101, 35.467400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562733, 35.589725, 35.492371>,  <43.086319, 35.968201, 36.018501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562733, 35.589725, 35.492371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598537, 35.986046, 35.451786>,  <43.620018, 36.223839, 35.427433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598537, 35.986046, 35.451786>,  <43.562733, 35.589725, 35.492371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598537, 35.986046, 35.451786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995029, -0.084494, 0.052704,
		0.043646, -0.105678, -0.993442,
		0.089509, 0.990804, -0.101465,
		43.625389, 36.283287, 35.421345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087002, 35.735737, 35.078568>,  <43.562733, 35.589725, 35.492371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087002, 35.735737, 35.078568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059059, 36.061703, 35.308712>,  <44.042294, 36.257282, 35.446796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059059, 36.061703, 35.308712>,  <44.087002, 35.735737, 35.078568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059059, 36.061703, 35.308712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989622, -0.015987, 0.142801,
		0.125569, 0.579363, -0.805339,
		-0.069859, 0.814913, 0.575358,
		44.038101, 36.306175, 35.481319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342655, 36.325443, 34.867821>,  <44.087002, 35.735737, 35.078568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342655, 36.325443, 34.867821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366764, 36.342144, 35.266743>,  <44.381229, 36.352165, 35.506096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366764, 36.342144, 35.266743>,  <44.342655, 36.325443, 34.867821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366764, 36.342144, 35.266743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992185, 0.106848, -0.064433,
		-0.109250, 0.993398, -0.034983,
		0.060270, 0.041749, 0.997309,
		44.384846, 36.354668, 35.565937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921555, 36.847408, 34.997532>,  <44.342655, 36.325443, 34.867821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921555, 36.847408, 34.997532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865192, 36.576752, 35.286613>,  <44.831375, 36.414360, 35.460064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865192, 36.576752, 35.286613>,  <44.921555, 36.847408, 34.997532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865192, 36.576752, 35.286613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989379, -0.069917, 0.127436,
		-0.035699, 0.732988, 0.679304,
		-0.140904, -0.676639, 0.722707,
		44.822922, 36.373760, 35.503426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341930, 36.964668, 35.524059>,  <44.921555, 36.847408, 34.997532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341930, 36.964668, 35.524059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266796, 36.572021, 35.537579>,  <45.221718, 36.336433, 35.545692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266796, 36.572021, 35.537579>,  <45.341930, 36.964668, 35.524059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266796, 36.572021, 35.537579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980575, -0.185430, 0.063937,
		-0.056494, 0.045155, 0.997381,
		-0.187832, -0.981619, 0.033802,
		45.210445, 36.277534, 35.547718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010227, 36.756409, 35.617722>,  <45.341930, 36.964668, 35.524059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010227, 36.756409, 35.617722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806782, 36.412354, 35.602352>,  <45.684715, 36.205921, 35.593132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806782, 36.412354, 35.602352>,  <46.010227, 36.756409, 35.617722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806782, 36.412354, 35.602352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859075, -0.509955, 0.044006,
		-0.057446, -0.010627, 0.998292,
		-0.508616, -0.860135, -0.038424,
		45.654198, 36.154312, 35.590824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136307, 36.150192, 36.125130>,  <46.010227, 36.756409, 35.617722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136307, 36.150192, 36.125130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062489, 36.006348, 35.759262>,  <46.018196, 35.920040, 35.539742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062489, 36.006348, 35.759262>,  <46.136307, 36.150192, 36.125130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062489, 36.006348, 35.759262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877457, -0.479518, 0.011485,
		-0.442732, -0.800465, 0.404035,
		-0.184549, -0.359608, -0.914671,
		46.007122, 35.898464, 35.484859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106136, 35.340614, 36.117687>,  <46.136307, 36.150192, 36.125130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106136, 35.340614, 36.117687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214451, 35.493786, 35.764408>,  <46.279442, 35.585690, 35.552441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214451, 35.493786, 35.764408>,  <46.106136, 35.340614, 36.117687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214451, 35.493786, 35.764408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834805, -0.550271, 0.017373,
		-0.479347, -0.742003, -0.468677,
		0.270790, 0.382926, -0.883199,
		46.295689, 35.608665, 35.499447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273598, 34.831783, 35.725761>,  <46.106136, 35.340614, 36.117687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273598, 34.831783, 35.725761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492702, 35.130093, 35.574093>,  <46.624165, 35.309078, 35.483089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492702, 35.130093, 35.574093>,  <46.273598, 34.831783, 35.725761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.492702, 35.130093, 35.574093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721853, -0.650405, -0.236437,
		-0.422945, -0.144196, -0.894609,
		0.547765, 0.745776, -0.379174,
		46.657032, 35.353825, 35.460342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.503712, 34.766888, 35.018463>,  <46.273598, 34.831783, 35.725761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.503712, 34.766888, 35.018463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793755, 34.975571, 35.198261>,  <46.967781, 35.100780, 35.306141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793755, 34.975571, 35.198261>,  <46.503712, 34.766888, 35.018463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.793755, 34.975571, 35.198261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671671, -0.679795, -0.294511,
		0.151917, 0.515465, -0.843337,
		0.725106, 0.521704, 0.449496,
		47.011288, 35.132080, 35.333111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075527, 35.177078, 34.671604>,  <46.503712, 34.766888, 35.018463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075527, 35.177078, 34.671604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231876, 35.031002, 35.009563>,  <47.325687, 34.943356, 35.212341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231876, 35.031002, 35.009563>,  <47.075527, 35.177078, 34.671604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231876, 35.031002, 35.009563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501693, -0.685063, -0.528198,
		0.771701, 0.630338, -0.084560,
		0.390873, -0.365188, 0.844900,
		47.349136, 34.921444, 35.263035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.845680, 35.238976, 34.854740>,  <47.075527, 35.177078, 34.671604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.845680, 35.238976, 34.854740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.723747, 34.894543, 35.017521>,  <47.650589, 34.687881, 35.115189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.723747, 34.894543, 35.017521>,  <47.845680, 35.238976, 34.854740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.723747, 34.894543, 35.017521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679815, -0.495978, -0.540238,
		0.667029, 0.111968, 0.736570,
		-0.304834, -0.861086, 0.406949,
		47.632298, 34.636215, 35.139606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.262501, 29.180929, 26.733742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.042110, 28.848953, 26.768681>,  <40.909878, 28.649767, 26.789644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.042110, 28.848953, 26.768681>,  <41.262501, 29.180929, 26.733742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042110, 28.848953, 26.768681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509556, 0.417462, 0.752382,
		-0.660895, 0.370035, -0.652910,
		-0.550973, -0.829940, 0.087345,
		40.876820, 28.599972, 26.794884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611008, 29.418436, 26.808437>,  <41.262501, 29.180929, 26.733742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611008, 29.418436, 26.808437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.560970, 29.050753, 26.957787>,  <40.530949, 28.830143, 27.047396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.560970, 29.050753, 26.957787>,  <40.611008, 29.418436, 26.808437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560970, 29.050753, 26.957787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598584, 0.370045, 0.710467,
		-0.791233, -0.134623, -0.596513,
		-0.125091, -0.919208, 0.373375,
		40.523441, 28.774990, 27.069799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865391, 29.496805, 26.922291>,  <40.611008, 29.418436, 26.808437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865391, 29.496805, 26.922291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998413, 29.175467, 27.119892>,  <40.078228, 28.982664, 27.238453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998413, 29.175467, 27.119892>,  <39.865391, 29.496805, 26.922291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998413, 29.175467, 27.119892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442625, 0.329585, 0.833941,
		-0.832758, -0.495994, -0.245974,
		0.332560, -0.803345, 0.494004,
		40.098183, 28.934464, 27.268093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285976, 29.146383, 27.310928>,  <39.865391, 29.496805, 26.922291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285976, 29.146383, 27.310928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623581, 29.049608, 27.502390>,  <39.826145, 28.991543, 27.617268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623581, 29.049608, 27.502390>,  <39.285976, 29.146383, 27.310928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623581, 29.049608, 27.502390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369421, 0.384746, 0.845872,
		-0.388809, -0.890750, 0.235353,
		0.844012, -0.241938, 0.478654,
		39.876785, 28.977026, 27.645987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926689, 29.094919, 27.921715>,  <39.285976, 29.146383, 27.310928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926689, 29.094919, 27.921715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316143, 29.074879, 28.010736>,  <39.549816, 29.062855, 28.064150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316143, 29.074879, 28.010736>,  <38.926689, 29.094919, 27.921715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316143, 29.074879, 28.010736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189424, 0.366070, 0.911104,
		-0.127119, -0.929237, 0.346927,
		0.973632, -0.050102, 0.222554,
		39.608234, 29.059849, 28.077503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027348, 28.708475, 28.539968>,  <38.926689, 29.094919, 27.921715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027348, 28.708475, 28.539968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341236, 28.954601, 28.510036>,  <39.529568, 29.102276, 28.492077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341236, 28.954601, 28.510036>,  <39.027348, 28.708475, 28.539968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341236, 28.954601, 28.510036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265374, 0.442603, 0.856551,
		0.560168, -0.652296, 0.510609,
		0.784721, 0.615314, -0.074829,
		39.576653, 29.139196, 28.487587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354706, 28.712147, 29.227009>,  <39.027348, 28.708475, 28.539968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354706, 28.712147, 29.227009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.447392, 29.062899, 29.058538>,  <39.503002, 29.273350, 28.957457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.447392, 29.062899, 29.058538>,  <39.354706, 28.712147, 29.227009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447392, 29.062899, 29.058538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047396, 0.442621, 0.895455,
		0.971629, -0.187525, 0.144121,
		0.231711, 0.876881, -0.421175,
		39.516907, 29.325964, 28.932186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600632, 29.200769, 29.841845>,  <39.354706, 28.712147, 29.227009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600632, 29.200769, 29.841845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556576, 29.446854, 29.529593>,  <39.530144, 29.594505, 29.342241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556576, 29.446854, 29.529593>,  <39.600632, 29.200769, 29.841845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556576, 29.446854, 29.529593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162664, 0.763662, 0.624789,
		0.980515, 0.195793, 0.015965,
		-0.110138, 0.615212, -0.780631,
		39.523533, 29.631416, 29.295403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855515, 29.797779, 30.085487>,  <39.600632, 29.200769, 29.841845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855515, 29.797779, 30.085487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640072, 29.937511, 29.778797>,  <39.510807, 30.021351, 29.594782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640072, 29.937511, 29.778797>,  <39.855515, 29.797779, 30.085487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640072, 29.937511, 29.778797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237418, 0.810201, 0.535917,
		0.808416, 0.470683, -0.353441,
		-0.538606, 0.349331, -0.766728,
		39.478489, 30.042311, 29.548779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074131, 30.404551, 30.041304>,  <39.855515, 29.797779, 30.085487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074131, 30.404551, 30.041304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730316, 30.433710, 29.838966>,  <39.524025, 30.451206, 29.717564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730316, 30.433710, 29.838966>,  <40.074131, 30.404551, 30.041304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730316, 30.433710, 29.838966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202077, 0.860638, 0.467406,
		0.469422, 0.503973, -0.725020,
		-0.859539, 0.072901, -0.505843,
		39.472454, 30.455580, 29.687214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060333, 31.085461, 29.933712>,  <40.074131, 30.404551, 30.041304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060333, 31.085461, 29.933712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682842, 30.954781, 29.913168>,  <39.456348, 30.876373, 29.900841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682842, 30.954781, 29.913168>,  <40.060333, 31.085461, 29.933712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682842, 30.954781, 29.913168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303084, 0.792257, 0.529593,
		-0.132326, 0.515361, -0.846695,
		-0.943732, -0.326699, -0.051362,
		39.399723, 30.856771, 29.897758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597198, 31.653730, 29.830099>,  <40.060333, 31.085461, 29.933712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597198, 31.653730, 29.830099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374271, 31.372742, 30.007156>,  <39.240517, 31.204149, 30.113390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374271, 31.372742, 30.007156>,  <39.597198, 31.653730, 29.830099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374271, 31.372742, 30.007156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331294, 0.676974, 0.657230,
		-0.761342, 0.219640, -0.610014,
		-0.557317, -0.702470, 0.442643,
		39.207077, 31.162001, 30.139950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903709, 31.897205, 29.769657>,  <39.597198, 31.653730, 29.830099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903709, 31.897205, 29.769657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900246, 31.618235, 30.056297>,  <38.898167, 31.450851, 30.228281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900246, 31.618235, 30.056297>,  <38.903709, 31.897205, 29.769657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900246, 31.618235, 30.056297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544044, 0.604569, 0.581819,
		-0.839012, -0.384825, -0.384666,
		-0.008658, -0.697428, 0.716602,
		38.897648, 31.409006, 30.271278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240826, 31.921890, 30.115274>,  <38.903709, 31.897205, 29.769657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240826, 31.921890, 30.115274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448757, 31.745300, 30.407814>,  <38.573517, 31.639345, 30.583338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.448757, 31.745300, 30.407814>,  <38.240826, 31.921890, 30.115274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448757, 31.745300, 30.407814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424711, 0.609253, 0.669650,
		-0.741213, -0.658718, 0.129208,
		0.519831, -0.441477, 0.731350,
		38.604706, 31.612858, 30.627218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797596, 31.804228, 30.712763>,  <38.240826, 31.921890, 30.115274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797596, 31.804228, 30.712763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165100, 31.806726, 30.870667>,  <38.385605, 31.808226, 30.965408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165100, 31.806726, 30.870667>,  <37.797596, 31.804228, 30.712763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165100, 31.806726, 30.870667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339541, 0.522705, 0.781980,
		-0.201456, -0.852491, 0.482363,
		0.918764, 0.006248, 0.394758,
		38.440731, 31.808601, 30.989094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609295, 31.618275, 31.415707>,  <37.797596, 31.804228, 30.712763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609295, 31.618275, 31.415707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969208, 31.792629, 31.407780>,  <38.185154, 31.897242, 31.403023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969208, 31.792629, 31.407780>,  <37.609295, 31.618275, 31.415707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969208, 31.792629, 31.407780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281210, 0.614020, 0.737496,
		0.333635, -0.658013, 0.675060,
		0.899782, 0.435888, -0.019819,
		38.239143, 31.923395, 31.401834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760365, 31.643862, 32.081726>,  <37.609295, 31.618275, 31.415707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760365, 31.643862, 32.081726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003105, 31.914038, 31.914150>,  <38.148750, 32.076145, 31.813604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003105, 31.914038, 31.914150>,  <37.760365, 31.643862, 32.081726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003105, 31.914038, 31.914150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136092, 0.607610, 0.782489,
		0.783079, -0.417839, 0.460650,
		0.606850, 0.675441, -0.418942,
		38.185162, 32.116669, 31.788467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085899, 31.926674, 32.692142>,  <37.760365, 31.643862, 32.081726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085899, 31.926674, 32.692142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170040, 32.180286, 32.394482>,  <38.220524, 32.332455, 32.215885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170040, 32.180286, 32.394482>,  <38.085899, 31.926674, 32.692142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170040, 32.180286, 32.394482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210368, 0.772704, 0.598894,
		0.954724, 0.030565, 0.295920,
		0.210353, 0.634030, -0.744149,
		38.233147, 32.370495, 32.171238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504917, 32.441071, 32.995701>,  <38.085899, 31.926674, 32.692142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504917, 32.441071, 32.995701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347851, 32.617260, 32.672764>,  <38.253609, 32.722973, 32.479004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347851, 32.617260, 32.672764>,  <38.504917, 32.441071, 32.995701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347851, 32.617260, 32.672764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251651, 0.792887, 0.554980,
		0.884581, 0.421091, -0.200498,
		-0.392669, 0.440469, -0.807340,
		38.230049, 32.749401, 32.430561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848106, 33.159218, 33.029484>,  <38.504917, 32.441071, 32.995701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848106, 33.159218, 33.029484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.511311, 33.189888, 32.815876>,  <38.309235, 33.208290, 32.687714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.511311, 33.189888, 32.815876>,  <38.848106, 33.159218, 33.029484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511311, 33.189888, 32.815876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290460, 0.769710, 0.568489,
		0.454627, 0.633772, -0.625817,
		-0.841990, 0.076675, -0.534016,
		38.258713, 33.212891, 32.655670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761463, 33.850292, 32.785046>,  <38.848106, 33.159218, 33.029484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761463, 33.850292, 32.785046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389069, 33.706444, 32.759960>,  <38.165630, 33.620136, 32.744907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389069, 33.706444, 32.759960>,  <38.761463, 33.850292, 32.785046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389069, 33.706444, 32.759960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347540, 0.820586, 0.453712,
		-0.111702, 0.444196, -0.888939,
		-0.930988, -0.359622, -0.062715,
		38.109772, 33.598557, 32.741146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306400, 34.394043, 32.848000>,  <38.761463, 33.850292, 32.785046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306400, 34.394043, 32.848000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066299, 34.088406, 32.942539>,  <37.922237, 33.905025, 32.999264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066299, 34.088406, 32.942539>,  <38.306400, 34.394043, 32.848000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066299, 34.088406, 32.942539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551214, 0.609329, 0.569983,
		-0.579533, 0.211856, -0.786930,
		-0.600253, -0.764091, 0.236349,
		37.886223, 33.859177, 33.013443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882568, 34.989586, 32.777763>,  <38.306400, 34.394043, 32.848000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882568, 34.989586, 32.777763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270786, 35.085720, 32.771137>,  <39.503719, 35.143402, 32.767162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270786, 35.085720, 32.771137>,  <38.882568, 34.989586, 32.777763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270786, 35.085720, 32.771137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067098, -0.335741, -0.939561,
		-0.231373, 0.910778, -0.341979,
		0.970549, 0.240336, -0.016570,
		39.561951, 35.157822, 32.766167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956879, 35.181030, 32.076401>,  <38.882568, 34.989586, 32.777763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956879, 35.181030, 32.076401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338844, 35.132195, 32.184650>,  <39.568024, 35.102894, 32.249599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338844, 35.132195, 32.184650>,  <38.956879, 35.181030, 32.076401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338844, 35.132195, 32.184650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219111, -0.325280, -0.919882,
		0.200337, 0.937703, -0.283863,
		0.954911, -0.122089, 0.270627,
		39.625317, 35.095570, 32.265839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333508, 35.308727, 31.548117>,  <38.956879, 35.181030, 32.076401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333508, 35.308727, 31.548117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605785, 35.093700, 31.747187>,  <39.769150, 34.964684, 31.866629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605785, 35.093700, 31.747187>,  <39.333508, 35.308727, 31.548117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605785, 35.093700, 31.747187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373774, -0.329421, -0.867050,
		0.630042, 0.776211, -0.023305,
		0.680691, -0.537567, 0.497677,
		39.809994, 34.932430, 31.896490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980801, 35.392406, 31.198095>,  <39.333508, 35.308727, 31.548117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980801, 35.392406, 31.198095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.032509, 35.059662, 31.413984>,  <40.063534, 34.860016, 31.543518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.032509, 35.059662, 31.413984>,  <39.980801, 35.392406, 31.198095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032509, 35.059662, 31.413984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330309, -0.477083, -0.814425,
		0.934978, 0.283558, 0.213097,
		0.129272, -0.831858, 0.539724,
		40.071289, 34.810104, 31.575901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692921, 35.059925, 30.875393>,  <39.980801, 35.392406, 31.198095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692921, 35.059925, 30.875393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.517227, 34.756081, 31.067251>,  <40.411812, 34.573772, 31.182367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.517227, 34.756081, 31.067251>,  <40.692921, 35.059925, 30.875393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517227, 34.756081, 31.067251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082563, -0.565780, -0.820412,
		0.894570, -0.320753, 0.311227,
		-0.439236, -0.759612, 0.479647,
		40.385456, 34.528198, 31.211145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028202, 34.592609, 30.579220>,  <40.692921, 35.059925, 30.875393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028202, 34.592609, 30.579220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.708626, 34.412037, 30.738169>,  <40.516880, 34.303696, 30.833538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.708626, 34.412037, 30.738169>,  <41.028202, 34.592609, 30.579220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708626, 34.412037, 30.738169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038315, -0.621189, -0.782724,
		0.600187, -0.640576, 0.478997,
		-0.798942, -0.451428, 0.397373,
		40.468945, 34.276608, 30.857380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139500, 33.874107, 30.588346>,  <41.028202, 34.592609, 30.579220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139500, 33.874107, 30.588346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740131, 33.875851, 30.610750>,  <40.500511, 33.876896, 30.624191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740131, 33.875851, 30.610750>,  <41.139500, 33.874107, 30.588346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740131, 33.875851, 30.610750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045610, -0.644915, -0.762892,
		0.032796, -0.764242, 0.644096,
		-0.998421, 0.004357, 0.056008,
		40.440605, 33.877159, 30.627552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917549, 33.131580, 30.562597>,  <41.139500, 33.874107, 30.588346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917549, 33.131580, 30.562597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.595425, 33.348701, 30.467237>,  <40.402149, 33.478973, 30.410021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.595425, 33.348701, 30.467237>,  <40.917549, 33.131580, 30.562597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595425, 33.348701, 30.467237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236179, -0.662578, -0.710781,
		-0.543771, -0.516098, 0.661782,
		-0.805315, 0.542801, -0.238399,
		40.353828, 33.511543, 30.395718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407650, 32.646774, 30.495249>,  <40.917549, 33.131580, 30.562597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407650, 32.646774, 30.495249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.277039, 32.974354, 30.306488>,  <40.198669, 33.170902, 30.193232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.277039, 32.974354, 30.306488>,  <40.407650, 32.646774, 30.495249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277039, 32.974354, 30.306488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235527, -0.554020, -0.798491,
		-0.915370, -0.149588, 0.373792,
		-0.326533, 0.818953, -0.471902,
		40.179077, 33.220039, 30.164917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847725, 32.458961, 30.125578>,  <40.407650, 32.646774, 30.495249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847725, 32.458961, 30.125578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.956558, 32.792236, 29.933012>,  <40.021858, 32.992203, 29.817472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.956558, 32.792236, 29.933012>,  <39.847725, 32.458961, 30.125578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956558, 32.792236, 29.933012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018208, -0.504659, -0.863127,
		-0.962100, 0.226081, -0.152482,
		0.272088, 0.833191, -0.481416,
		40.038185, 33.042194, 29.788588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587990, 32.392406, 29.428596>,  <39.847725, 32.458961, 30.125578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587990, 32.392406, 29.428596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.881447, 32.661015, 29.386969>,  <40.057522, 32.822182, 29.361992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.881447, 32.661015, 29.386969>,  <39.587990, 32.392406, 29.428596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881447, 32.661015, 29.386969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244118, -0.403368, -0.881874,
		-0.634177, 0.621571, -0.459857,
		0.733639, 0.671523, -0.104070,
		40.101540, 32.862473, 29.355747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559193, 32.620663, 28.786423>,  <39.587990, 32.392406, 29.428596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559193, 32.620663, 28.786423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.938690, 32.702816, 28.882511>,  <40.166389, 32.752110, 28.940165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.938690, 32.702816, 28.882511>,  <39.559193, 32.620663, 28.786423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938690, 32.702816, 28.882511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288945, -0.255689, -0.922569,
		-0.128058, 0.944691, -0.301928,
		0.948742, 0.205383, 0.240220,
		40.223312, 32.764431, 28.954576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863697, 33.012619, 28.237280>,  <39.559193, 32.620663, 28.786423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863697, 33.012619, 28.237280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189651, 32.859322, 28.411221>,  <40.385223, 32.767345, 28.515585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189651, 32.859322, 28.411221>,  <39.863697, 33.012619, 28.237280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189651, 32.859322, 28.411221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434606, -0.092410, -0.895867,
		0.383517, 0.919014, 0.091256,
		0.814882, -0.383241, 0.434850,
		40.434116, 32.744350, 28.541676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425903, 33.349079, 27.986609>,  <39.863697, 33.012619, 28.237280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425903, 33.349079, 27.986609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.560593, 32.997890, 28.122719>,  <40.641407, 32.787178, 28.204386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.560593, 32.997890, 28.122719>,  <40.425903, 33.349079, 27.986609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560593, 32.997890, 28.122719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259067, -0.261051, -0.929912,
		0.905265, 0.401274, 0.139552,
		0.336719, -0.877970, 0.340277,
		40.661610, 32.734501, 28.224802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875599, 33.137943, 27.453901>,  <40.425903, 33.349079, 27.986609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875599, 33.137943, 27.453901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872639, 32.815929, 27.691175>,  <40.870861, 32.622723, 27.833540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872639, 32.815929, 27.691175>,  <40.875599, 33.137943, 27.453901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872639, 32.815929, 27.691175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262453, -0.573971, -0.775678,
		0.964916, 0.149942, 0.215531,
		-0.007402, -0.805031, 0.593187,
		40.870419, 32.574421, 27.869131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551025, 32.682194, 27.425371>,  <40.875599, 33.137943, 27.453901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551025, 32.682194, 27.425371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248402, 32.450405, 27.546587>,  <41.066830, 32.311333, 27.619316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248402, 32.450405, 27.546587>,  <41.551025, 32.682194, 27.425371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248402, 32.450405, 27.546587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241888, -0.678529, -0.693605,
		0.607547, -0.451449, 0.653513,
		-0.756556, -0.579475, 0.303039,
		41.021435, 32.276562, 27.637499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839737, 32.015514, 27.539793>,  <41.551025, 32.682194, 27.425371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839737, 32.015514, 27.539793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.452755, 31.942068, 27.470139>,  <41.220566, 31.897999, 27.428345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.452755, 31.942068, 27.470139>,  <41.839737, 32.015514, 27.539793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452755, 31.942068, 27.470139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246994, -0.834918, -0.491839,
		-0.055079, -0.518841, 0.853094,
		-0.967450, -0.183619, -0.174137,
		41.162521, 31.886982, 27.417898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720352, 31.390081, 27.822546>,  <41.839737, 32.015514, 27.539793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720352, 31.390081, 27.822546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.452312, 31.449963, 27.531740>,  <41.291489, 31.485891, 27.357256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.452312, 31.449963, 27.531740>,  <41.720352, 31.390081, 27.822546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452312, 31.449963, 27.531740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338460, -0.810077, -0.478769,
		-0.660612, -0.566890, 0.492166,
		-0.670102, 0.149702, -0.727016,
		41.251282, 31.494873, 27.313635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.427719, 30.721260, 27.659107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325321, 30.937178, 27.338337>,  <41.263882, 31.066729, 27.145874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325321, 30.937178, 27.338337>,  <41.427719, 30.721260, 27.659107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325321, 30.937178, 27.338337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226508, -0.772980, -0.592618,
		-0.939766, -0.333352, 0.075613,
		-0.255997, 0.539795, -0.801927,
		41.248524, 31.099115, 27.097759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997677, 30.299030, 27.225260>,  <41.427719, 30.721260, 27.659107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997677, 30.299030, 27.225260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.134842, 30.578880, 26.974522>,  <41.217140, 30.746790, 26.824080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.134842, 30.578880, 26.974522>,  <40.997677, 30.299030, 27.225260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134842, 30.578880, 26.974522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305911, -0.714100, -0.629666,
		-0.888161, 0.024162, -0.458897,
		0.342913, 0.699627, -0.626844,
		41.237717, 30.788769, 26.786469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788513, 30.074451, 26.475348>,  <40.997677, 30.299030, 27.225260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788513, 30.074451, 26.475348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061203, 30.364035, 26.433128>,  <41.224815, 30.537785, 26.407797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061203, 30.364035, 26.433128>,  <40.788513, 30.074451, 26.475348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061203, 30.364035, 26.433128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453785, -0.531585, -0.715190,
		-0.573874, 0.439665, -0.690914,
		0.681724, 0.723956, -0.105549,
		41.265720, 30.581221, 26.401464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824963, 30.073641, 25.777588>,  <40.788513, 30.074451, 26.475348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824963, 30.073641, 25.777588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.159882, 30.262497, 25.887877>,  <41.360832, 30.375811, 25.954050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.159882, 30.262497, 25.887877>,  <40.824963, 30.073641, 25.777588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159882, 30.262497, 25.887877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450460, -0.309880, -0.837293,
		-0.309880, 0.825261, -0.472142,
		0.837293, 0.472142, 0.275722,
		41.411068, 30.404140, 25.970592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102219, 30.341600, 25.188372>,  <40.824963, 30.073641, 25.777588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102219, 30.341600, 25.188372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.400433, 30.317610, 25.453876>,  <41.579361, 30.303215, 25.613180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.400433, 30.317610, 25.453876>,  <41.102219, 30.341600, 25.188372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400433, 30.317610, 25.453876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624636, -0.284403, -0.727286,
		0.232395, 0.956827, -0.174570,
		0.745535, -0.059975, 0.663762,
		41.624092, 30.299618, 25.653006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715420, 30.551851, 24.784216>,  <41.102219, 30.341600, 25.188372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715420, 30.551851, 24.784216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.859882, 30.360802, 25.104576>,  <41.946560, 30.246172, 25.296793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.859882, 30.360802, 25.104576>,  <41.715420, 30.551851, 24.784216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859882, 30.360802, 25.104576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715886, -0.408362, -0.566346,
		0.597558, 0.777893, 0.194441,
		0.361154, -0.477623, 0.800902,
		41.968227, 30.217514, 25.344847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473099, 30.661404, 24.779284>,  <41.715420, 30.551851, 24.784216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473099, 30.661404, 24.779284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.435528, 30.338156, 25.011877>,  <42.412987, 30.144207, 25.151434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.435528, 30.338156, 25.011877>,  <42.473099, 30.661404, 24.779284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435528, 30.338156, 25.011877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784156, -0.419915, -0.456915,
		0.613415, 0.413058, 0.673131,
		-0.093926, -0.808118, 0.581484,
		42.407349, 30.095720, 25.186321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081081, 30.310148, 24.849518>,  <42.473099, 30.661404, 24.779284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081081, 30.310148, 24.849518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.866924, 29.999458, 24.982216>,  <42.738430, 29.813046, 25.061834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.866924, 29.999458, 24.982216>,  <43.081081, 30.310148, 24.849518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866924, 29.999458, 24.982216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620637, -0.628210, -0.469214,
		0.572854, -0.045324, 0.818404,
		-0.535396, -0.776723, 0.331743,
		42.706306, 29.766441, 25.081739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628773, 29.878885, 25.107756>,  <43.081081, 30.310148, 24.849518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628773, 29.878885, 25.107756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.305244, 29.665255, 25.009306>,  <43.111130, 29.537077, 24.950237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.305244, 29.665255, 25.009306>,  <43.628773, 29.878885, 25.107756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305244, 29.665255, 25.009306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551115, -0.542418, -0.634078,
		0.205144, -0.648496, 0.733055,
		-0.808819, -0.534075, -0.246122,
		43.062599, 29.505032, 24.935469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740837, 29.071260, 25.218039>,  <43.628773, 29.878885, 25.107756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740837, 29.071260, 25.218039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.458523, 29.115608, 24.938158>,  <43.289135, 29.142218, 24.770229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.458523, 29.115608, 24.938158>,  <43.740837, 29.071260, 25.218039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458523, 29.115608, 24.938158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551339, -0.534249, -0.640784,
		-0.444859, -0.838025, 0.315935,
		-0.705781, 0.110871, -0.699701,
		43.246788, 29.148869, 24.728249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750065, 28.435665, 24.951422>,  <43.740837, 29.071260, 25.218039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750065, 28.435665, 24.951422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.563583, 28.657059, 24.675362>,  <43.451694, 28.789896, 24.509726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.563583, 28.657059, 24.675362>,  <43.750065, 28.435665, 24.951422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563583, 28.657059, 24.675362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618103, -0.354335, -0.701709,
		-0.632930, -0.753724, -0.176917,
		-0.466207, 0.553486, -0.690148,
		43.423721, 28.823105, 24.468317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403049, 27.994473, 24.504696>,  <43.750065, 28.435665, 24.951422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403049, 27.994473, 24.504696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.505802, 28.322037, 24.299404>,  <43.567451, 28.518576, 24.176229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.505802, 28.322037, 24.299404>,  <43.403049, 27.994473, 24.504696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505802, 28.322037, 24.299404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542717, -0.561638, -0.624517,
		-0.799670, -0.118113, -0.588708,
		0.256877, 0.818909, -0.513227,
		43.582867, 28.567709, 24.145435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364594, 27.725092, 23.774446>,  <43.403049, 27.994473, 24.504696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364594, 27.725092, 23.774446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.530933, 28.084854, 23.720579>,  <43.630737, 28.300713, 23.688259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.530933, 28.084854, 23.720579>,  <43.364594, 27.725092, 23.774446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530933, 28.084854, 23.720579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463498, -0.337009, -0.819509,
		-0.782456, 0.278375, -0.557018,
		0.415851, 0.899406, -0.134669,
		43.655689, 28.354675, 23.680178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190651, 27.845648, 23.064617>,  <43.364594, 27.725092, 23.774446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190651, 27.845648, 23.064617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.503994, 28.068233, 23.175392>,  <43.692001, 28.201784, 23.241858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.503994, 28.068233, 23.175392>,  <43.190651, 27.845648, 23.064617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503994, 28.068233, 23.175392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471798, -0.242265, -0.847770,
		-0.404661, 0.794768, -0.452319,
		0.783362, 0.556463, 0.276935,
		43.739002, 28.235172, 23.258472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299660, 28.141815, 22.474709>,  <43.190651, 27.845648, 23.064617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299660, 28.141815, 22.474709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.635307, 28.190601, 22.686747>,  <43.836697, 28.219873, 22.813969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.635307, 28.190601, 22.686747>,  <43.299660, 28.141815, 22.474709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635307, 28.190601, 22.686747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537340, -0.337275, -0.772989,
		0.084510, 0.933472, -0.348551,
		0.839121, 0.121965, 0.530095,
		43.887043, 28.227190, 22.845776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785435, 28.415018, 22.006813>,  <43.299660, 28.141815, 22.474709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785435, 28.415018, 22.006813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.993935, 28.242699, 22.301489>,  <44.119034, 28.139307, 22.478294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.993935, 28.242699, 22.301489>,  <43.785435, 28.415018, 22.006813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993935, 28.242699, 22.301489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585930, -0.446965, -0.675950,
		0.620473, 0.783987, 0.019437,
		0.521248, -0.430797, 0.736691,
		44.150311, 28.113459, 22.522497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510506, 28.515150, 21.786291>,  <43.785435, 28.415018, 22.006813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510506, 28.515150, 21.786291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.515755, 28.244593, 22.080860>,  <44.518902, 28.082258, 22.257601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.515755, 28.244593, 22.080860>,  <44.510506, 28.515150, 21.786291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515755, 28.244593, 22.080860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686102, -0.529669, -0.498714,
		0.727388, 0.511803, 0.457127,
		0.013118, -0.676394, 0.736423,
		44.519691, 28.041674, 22.301786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238754, 28.431984, 21.917749>,  <44.510506, 28.515150, 21.786291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238754, 28.431984, 21.917749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.026054, 28.116529, 22.041229>,  <44.898434, 27.927258, 22.115316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.026054, 28.116529, 22.041229>,  <45.238754, 28.431984, 21.917749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026054, 28.116529, 22.041229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617958, -0.610556, -0.495327,
		0.579112, -0.072626, 0.812007,
		-0.531750, -0.788636, 0.308700,
		44.866531, 27.879938, 22.133839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692734, 27.887209, 22.122526>,  <45.238754, 28.431984, 21.917749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692734, 27.887209, 22.122526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.363609, 27.694960, 22.001207>,  <45.166134, 27.579611, 21.928417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.363609, 27.694960, 22.001207>,  <45.692734, 27.887209, 22.122526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363609, 27.694960, 22.001207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564807, -0.632300, -0.530274,
		0.063088, -0.607617, 0.791721,
		-0.822808, -0.480624, -0.303295,
		45.116768, 27.550772, 21.910219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976425, 27.245632, 22.219263>,  <45.692734, 27.887209, 22.122526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976425, 27.245632, 22.219263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.638805, 27.216520, 22.006744>,  <45.436234, 27.199053, 21.879232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.638805, 27.216520, 22.006744>,  <45.976425, 27.245632, 22.219263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638805, 27.216520, 22.006744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467862, -0.584112, -0.663263,
		-0.262065, -0.808404, 0.527073,
		-0.844054, -0.072779, -0.531297,
		45.385590, 27.194687, 21.847355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881058, 26.535738, 22.060020>,  <45.976425, 27.245632, 22.219263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881058, 26.535738, 22.060020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.674366, 26.752581, 21.794956>,  <45.550350, 26.882687, 21.635918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.674366, 26.752581, 21.794956>,  <45.881058, 26.535738, 22.060020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674366, 26.752581, 21.794956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446977, -0.489326, -0.748847,
		-0.730210, -0.683141, 0.010539,
		-0.516725, 0.542105, -0.662660,
		45.519348, 26.915213, 21.596159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911118, 26.110952, 21.498468>,  <45.881058, 26.535738, 22.060020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911118, 26.110952, 21.498468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.765095, 26.454147, 21.353918>,  <45.677483, 26.660065, 21.267189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.765095, 26.454147, 21.353918>,  <45.911118, 26.110952, 21.498468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765095, 26.454147, 21.353918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489668, -0.153181, -0.858348,
		-0.791807, -0.490299, -0.364209,
		-0.365058, 0.857987, -0.361374,
		45.655579, 26.711544, 21.245506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637959, 25.921633, 20.907694>,  <45.911118, 26.110952, 21.498468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637959, 25.921633, 20.907694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.773884, 26.297731, 20.916325>,  <45.855438, 26.523390, 20.921503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.773884, 26.297731, 20.916325>,  <45.637959, 25.921633, 20.907694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773884, 26.297731, 20.916325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589276, -0.194976, -0.784052,
		-0.732994, 0.279147, -0.620319,
		0.339813, 0.940245, 0.021578,
		45.875828, 26.579805, 20.922798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924065, 26.142202, 20.483282>,  <45.637959, 25.921633, 20.907694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924065, 26.142202, 20.483282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.629948, 25.960634, 20.281965>,  <44.453476, 25.851694, 20.161175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.629948, 25.960634, 20.281965>,  <44.924065, 26.142202, 20.483282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629948, 25.960634, 20.281965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658587, 0.303197, 0.688719,
		-0.160026, 0.837872, -0.521883,
		-0.735292, -0.453919, -0.503293,
		44.409359, 25.824459, 20.130978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317345, 26.551746, 20.519911>,  <44.924065, 26.142202, 20.483282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317345, 26.551746, 20.519911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.191456, 26.176676, 20.460964>,  <44.115921, 25.951633, 20.425596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.191456, 26.176676, 20.460964>,  <44.317345, 26.551746, 20.519911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191456, 26.176676, 20.460964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705846, 0.127399, 0.696815,
		-0.634611, 0.323320, -0.701949,
		-0.314722, -0.937674, -0.147365,
		44.097038, 25.895374, 20.416754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558746, 26.624550, 20.484600>,  <44.317345, 26.551746, 20.519911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558746, 26.624550, 20.484600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.654068, 26.254360, 20.602386>,  <43.711262, 26.032248, 20.673058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.654068, 26.254360, 20.602386>,  <43.558746, 26.624550, 20.484600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654068, 26.254360, 20.602386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801365, -0.016093, 0.597959,
		-0.548656, -0.378472, -0.745477,
		0.238308, -0.925473, 0.294465,
		43.725559, 25.976719, 20.690725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953350, 26.194321, 20.300499>,  <43.558746, 26.624550, 20.484600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953350, 26.194321, 20.300499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.158825, 25.991817, 20.577578>,  <43.282112, 25.870316, 20.743824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.158825, 25.991817, 20.577578>,  <42.953350, 26.194321, 20.300499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158825, 25.991817, 20.577578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852075, -0.206492, 0.480968,
		-0.100456, -0.837298, -0.537439,
		0.513690, -0.506254, 0.692697,
		43.312931, 25.839941, 20.785387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540333, 25.643120, 20.439110>,  <42.953350, 26.194321, 20.300499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540333, 25.643120, 20.439110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.784073, 25.706930, 20.749784>,  <42.930317, 25.745216, 20.936190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.784073, 25.706930, 20.749784>,  <42.540333, 25.643120, 20.439110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784073, 25.706930, 20.749784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786393, -0.003630, 0.617716,
		0.101361, -0.987187, 0.123238,
		0.609354, 0.159526, 0.776685,
		42.966881, 25.754789, 20.982790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257149, 25.273558, 21.008652>,  <42.540333, 25.643120, 20.439110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257149, 25.273558, 21.008652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.493179, 25.543337, 21.186159>,  <42.634796, 25.705204, 21.292664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.493179, 25.543337, 21.186159>,  <42.257149, 25.273558, 21.008652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493179, 25.543337, 21.186159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643078, 0.060318, 0.763422,
		0.488122, -0.735853, 0.469316,
		0.590074, 0.674450, 0.443768,
		42.670200, 25.745672, 21.319290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136112, 25.153208, 21.740343>,  <42.257149, 25.273558, 21.008652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136112, 25.153208, 21.740343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.312977, 25.511833, 21.750673>,  <42.419094, 25.727009, 21.756870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.312977, 25.511833, 21.750673>,  <42.136112, 25.153208, 21.740343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312977, 25.511833, 21.750673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554488, 0.250600, 0.793563,
		0.705009, -0.365201, 0.607940,
		0.442160, 0.896564, 0.025824,
		42.445625, 25.780802, 21.758421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918217, 25.369993, 22.480350>,  <42.136112, 25.153208, 21.740343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918217, 25.369993, 22.480350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.118069, 25.680429, 22.326439>,  <42.237980, 25.866692, 22.234091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.118069, 25.680429, 22.326439>,  <41.918217, 25.369993, 22.480350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118069, 25.680429, 22.326439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452043, 0.612511, 0.648450,
		0.738938, -0.150046, 0.656853,
		0.499627, 0.776091, -0.384780,
		42.267956, 25.913258, 22.211004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256618, 25.736465, 23.084673>,  <41.918217, 25.369993, 22.480350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256618, 25.736465, 23.084673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.194283, 25.958876, 22.758102>,  <42.156879, 26.092321, 22.562160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.194283, 25.958876, 22.758102>,  <42.256618, 25.736465, 23.084673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194283, 25.958876, 22.758102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547178, 0.639530, 0.539998,
		0.822380, 0.530885, 0.204578,
		-0.155843, 0.556024, -0.816425,
		42.147530, 26.125683, 22.513174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645550, 26.265265, 23.159931>,  <42.256618, 25.736465, 23.084673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645550, 26.265265, 23.159931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338749, 26.353571, 22.918945>,  <42.154667, 26.406555, 22.774353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338749, 26.353571, 22.918945>,  <42.645550, 26.265265, 23.159931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338749, 26.353571, 22.918945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384407, 0.593685, 0.706943,
		0.513743, 0.773822, -0.370496,
		-0.767007, 0.220766, -0.602464,
		42.108646, 26.419802, 22.738207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660809, 26.975367, 22.913235>,  <42.645550, 26.265265, 23.159931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660809, 26.975367, 22.913235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.273808, 26.876484, 22.891956>,  <42.041607, 26.817154, 22.879189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.273808, 26.876484, 22.891956>,  <42.660809, 26.975367, 22.913235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273808, 26.876484, 22.891956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218041, 0.709052, 0.670600,
		-0.128058, 0.660405, -0.739910,
		-0.967502, -0.247207, -0.053195,
		41.983559, 26.802322, 22.875998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146870, 27.501312, 22.791294>,  <42.660809, 26.975367, 22.913235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146870, 27.501312, 22.791294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.924820, 27.221085, 22.970642>,  <41.791588, 27.052948, 23.078251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.924820, 27.221085, 22.970642>,  <42.146870, 27.501312, 22.791294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924820, 27.221085, 22.970642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126613, 0.603952, 0.786899,
		-0.822073, 0.380059, -0.423971,
		-0.555127, -0.700569, 0.448372,
		41.758282, 27.010914, 23.105154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566975, 27.859074, 23.123596>,  <42.146870, 27.501312, 22.791294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566975, 27.859074, 23.123596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.588028, 27.494835, 23.287567>,  <41.600662, 27.276291, 23.385950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.588028, 27.494835, 23.287567>,  <41.566975, 27.859074, 23.123596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588028, 27.494835, 23.287567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322162, 0.373062, 0.870078,
		-0.945220, -0.177862, -0.273723,
		0.052638, -0.910599, 0.409925,
		41.603821, 27.221655, 23.410545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854523, 27.653749, 23.525930>,  <41.566975, 27.859074, 23.123596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854523, 27.653749, 23.525930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.144192, 27.469471, 23.731194>,  <41.317993, 27.358904, 23.854351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.144192, 27.469471, 23.731194>,  <40.854523, 27.653749, 23.525930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144192, 27.469471, 23.731194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332922, 0.418110, 0.845191,
		-0.603934, -0.782906, 0.149408,
		0.724173, -0.460698, 0.513157,
		41.361443, 27.331263, 23.885141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629890, 27.776535, 24.203217>,  <40.854523, 27.653749, 23.525930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629890, 27.776535, 24.203217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.957615, 27.571533, 24.306034>,  <41.154247, 27.448532, 24.367725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.957615, 27.571533, 24.306034>,  <40.629890, 27.776535, 24.203217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957615, 27.571533, 24.306034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181051, 0.194120, 0.964126,
		-0.544017, -0.836455, 0.066255,
		0.819309, -0.512505, 0.257046,
		41.203407, 27.417782, 24.383148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458462, 27.273554, 24.757502>,  <40.629890, 27.776535, 24.203217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458462, 27.273554, 24.757502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.851295, 27.344643, 24.782566>,  <41.086994, 27.387295, 24.797606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.851295, 27.344643, 24.782566>,  <40.458462, 27.273554, 24.757502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851295, 27.344643, 24.782566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106771, 0.250782, 0.962137,
		0.155276, -0.951590, 0.265264,
		0.982084, 0.177720, 0.062662,
		41.145920, 27.397959, 24.801365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644764, 26.871088, 25.325846>,  <40.458462, 27.273554, 24.757502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644764, 26.871088, 25.325846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.907650, 27.162458, 25.248419>,  <41.065380, 27.337280, 25.201962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.907650, 27.162458, 25.248419>,  <40.644764, 26.871088, 25.325846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907650, 27.162458, 25.248419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024112, 0.277010, 0.960564,
		0.753320, -0.626627, 0.199618,
		0.657212, 0.728426, -0.193568,
		41.104813, 27.380985, 25.190348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205879, 26.797117, 25.864433>,  <40.644764, 26.871088, 25.325846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205879, 26.797117, 25.864433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232399, 27.170015, 25.722151>,  <41.248310, 27.393753, 25.636782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232399, 27.170015, 25.722151>,  <41.205879, 26.797117, 25.864433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232399, 27.170015, 25.722151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192575, 0.337831, 0.921295,
		0.979040, -0.129579, -0.157129,
		0.066297, 0.932244, -0.355704,
		41.252289, 27.449688, 25.615440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653336, 27.085371, 26.315611>,  <41.205879, 26.797117, 25.864433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653336, 27.085371, 26.315611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.443100, 27.382347, 26.149460>,  <41.316959, 27.560534, 26.049768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.443100, 27.382347, 26.149460>,  <41.653336, 27.085371, 26.315611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443100, 27.382347, 26.149460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205692, 0.362870, 0.908854,
		0.825498, 0.563123, -0.038006,
		-0.525589, 0.742440, -0.415378,
		41.285423, 27.605080, 26.024847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732578, 27.540878, 26.742573>,  <41.653336, 27.085371, 26.315611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732578, 27.540878, 26.742573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.431297, 27.711123, 26.541958>,  <41.250526, 27.813269, 26.421589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.431297, 27.711123, 26.541958>,  <41.732578, 27.540878, 26.742573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431297, 27.711123, 26.541958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266854, 0.499191, 0.824377,
		0.601224, 0.754762, -0.262418,
		-0.753205, 0.425608, -0.501537,
		41.205338, 27.838804, 26.391497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796219, 28.314541, 26.754879>,  <41.732578, 27.540878, 26.742573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796219, 28.314541, 26.754879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.412983, 28.230185, 26.677334>,  <41.183041, 28.179571, 26.630806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.412983, 28.230185, 26.677334>,  <41.796219, 28.314541, 26.754879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412983, 28.230185, 26.677334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282154, 0.577896, 0.765784,
		-0.049464, 0.788392, -0.613182,
		-0.958093, -0.210890, -0.193863,
		41.125553, 28.166918, 26.619175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.430618, 33.090054, 29.241760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.054752, 32.980080, 29.160341>,  <40.829231, 32.914097, 29.111490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.054752, 32.980080, 29.160341>,  <41.430618, 33.090054, 29.241760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054752, 32.980080, 29.160341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337953, 0.653906, 0.676900,
		-0.053002, 0.704853, -0.707371,
		-0.939669, -0.274935, -0.203549,
		40.772850, 32.897598, 29.099276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007179, 33.770699, 29.153439>,  <41.430618, 33.090054, 29.241760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007179, 33.770699, 29.153439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.714249, 33.503895, 29.208277>,  <40.538490, 33.343811, 29.241179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.714249, 33.503895, 29.208277>,  <41.007179, 33.770699, 29.153439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714249, 33.503895, 29.208277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357308, 0.547782, 0.756482,
		-0.579679, 0.505008, -0.639484,
		-0.732327, -0.667010, 0.137094,
		40.494549, 33.303791, 29.249405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363468, 34.206429, 29.241528>,  <41.007179, 33.770699, 29.153439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363468, 34.206429, 29.241528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315247, 33.844055, 29.403883>,  <40.286312, 33.626629, 29.501297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315247, 33.844055, 29.403883>,  <40.363468, 34.206429, 29.241528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315247, 33.844055, 29.403883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273187, 0.423361, 0.863791,
		-0.954377, -0.006748, -0.298529,
		-0.120557, -0.905936, 0.405890,
		40.279079, 33.572273, 29.525650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774563, 34.282658, 29.611723>,  <40.363468, 34.206429, 29.241528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774563, 34.282658, 29.611723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931160, 33.947399, 29.763641>,  <40.025120, 33.746243, 29.854792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931160, 33.947399, 29.763641>,  <39.774563, 34.282658, 29.611723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931160, 33.947399, 29.763641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079347, 0.380452, 0.921390,
		-0.916753, -0.390855, 0.082440,
		0.391495, -0.838146, 0.379794,
		40.048607, 33.695957, 29.877579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305775, 34.142643, 30.036205>,  <39.774563, 34.282658, 29.611723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305775, 34.142643, 30.036205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.644806, 33.959747, 30.143944>,  <39.848225, 33.850010, 30.208588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.644806, 33.959747, 30.143944>,  <39.305775, 34.142643, 30.036205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644806, 33.959747, 30.143944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050739, 0.435409, 0.898802,
		-0.528240, -0.775470, 0.345843,
		0.847577, -0.457236, 0.269347,
		39.899078, 33.822578, 30.224749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148861, 33.809849, 30.574699>,  <39.305775, 34.142643, 30.036205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148861, 33.809849, 30.574699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545456, 33.857204, 30.596375>,  <39.783413, 33.885616, 30.609381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545456, 33.857204, 30.596375>,  <39.148861, 33.809849, 30.574699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545456, 33.857204, 30.596375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089049, 0.312961, 0.945582,
		0.094983, -0.942359, 0.320839,
		0.991488, 0.118385, 0.054190,
		39.842903, 33.892719, 30.612631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359669, 33.744511, 31.240690>,  <39.148861, 33.809849, 30.574699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359669, 33.744511, 31.240690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716713, 33.893936, 31.139742>,  <39.930939, 33.983593, 31.079172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716713, 33.893936, 31.139742>,  <39.359669, 33.744511, 31.240690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716713, 33.893936, 31.139742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071041, 0.436254, 0.897015,
		0.445215, -0.818606, 0.362861,
		0.892601, 0.373587, -0.252381,
		39.984497, 34.006004, 31.064030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723412, 33.604351, 31.812931>,  <39.359669, 33.744511, 31.240690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723412, 33.604351, 31.812931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.928661, 33.894596, 31.629545>,  <40.051811, 34.068741, 31.519514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.928661, 33.894596, 31.629545>,  <39.723412, 33.604351, 31.812931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928661, 33.894596, 31.629545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094584, 0.483092, 0.870445,
		0.853086, -0.490012, 0.179256,
		0.513126, 0.725610, -0.458466,
		40.082600, 34.112278, 31.492004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214535, 33.681622, 32.207684>,  <39.723412, 33.604351, 31.812931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214535, 33.681622, 32.207684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.170185, 34.029671, 32.015602>,  <40.143574, 34.238499, 31.900352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.170185, 34.029671, 32.015602>,  <40.214535, 33.681622, 32.207684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170185, 34.029671, 32.015602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026896, 0.485633, 0.873749,
		0.993470, 0.083963, -0.077248,
		-0.110876, 0.870121, -0.480203,
		40.136921, 34.290707, 31.871542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668461, 34.170334, 32.520481>,  <40.214535, 33.681622, 32.207684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668461, 34.170334, 32.520481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.389702, 34.390678, 32.336792>,  <40.222446, 34.522884, 32.226578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.389702, 34.390678, 32.336792>,  <40.668461, 34.170334, 32.520481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389702, 34.390678, 32.336792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008969, 0.646974, 0.762459,
		0.717117, 0.527235, -0.455814,
		-0.696895, 0.550861, -0.459227,
		40.180634, 34.555935, 32.199024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843803, 34.855953, 32.784527>,  <40.668461, 34.170334, 32.520481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843803, 34.855953, 32.784527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484200, 34.892170, 32.613136>,  <40.268436, 34.913898, 32.510303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484200, 34.892170, 32.613136>,  <40.843803, 34.855953, 32.784527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484200, 34.892170, 32.613136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229468, 0.735945, 0.636968,
		0.373005, 0.670960, -0.640843,
		-0.899006, 0.090539, -0.428475,
		40.214497, 34.919331, 32.484592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798695, 35.495201, 32.531033>,  <40.843803, 34.855953, 32.784527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798695, 35.495201, 32.531033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415535, 35.400452, 32.595921>,  <40.185638, 35.343601, 32.634853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415535, 35.400452, 32.595921>,  <40.798695, 35.495201, 32.531033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415535, 35.400452, 32.595921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083821, 0.771167, 0.631091,
		-0.274587, 0.590926, -0.758557,
		-0.957902, -0.236872, 0.162220,
		40.128166, 35.329391, 32.644588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470806, 36.163155, 32.359726>,  <40.798695, 35.495201, 32.531033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470806, 36.163155, 32.359726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248955, 35.917648, 32.584469>,  <40.115845, 35.770344, 32.719315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248955, 35.917648, 32.584469>,  <40.470806, 36.163155, 32.359726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248955, 35.917648, 32.584469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143800, 0.735768, 0.661790,
		-0.819576, 0.286255, -0.496339,
		-0.554632, -0.613761, 0.561854,
		40.082565, 35.733521, 32.753025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978096, 36.635532, 32.661198>,  <40.470806, 36.163155, 32.359726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978096, 36.635532, 32.661198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019341, 36.305470, 32.883362>,  <40.044086, 36.107430, 33.016659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019341, 36.305470, 32.883362>,  <39.978096, 36.635532, 32.661198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019341, 36.305470, 32.883362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037488, 0.554764, 0.831163,
		-0.993963, -0.106521, 0.026267,
		0.103109, -0.825161, 0.555408,
		40.050274, 36.057922, 33.049984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311619, 36.925911, 31.981537>,  <39.978096, 36.635532, 32.661198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311619, 36.925911, 31.981537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.116077, 37.117207, 31.689697>,  <39.998753, 37.231983, 31.514593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.116077, 37.117207, 31.689697>,  <40.311619, 36.925911, 31.981537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116077, 37.117207, 31.689697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305690, -0.689409, -0.656711,
		-0.817055, -0.544065, 0.190827,
		-0.488851, 0.478235, -0.729599,
		39.969421, 37.260677, 31.470818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999355, 36.514423, 31.454453>,  <40.311619, 36.925911, 31.981537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999355, 36.514423, 31.454453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056187, 36.867985, 31.276228>,  <40.090286, 37.080124, 31.169294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056187, 36.867985, 31.276228>,  <39.999355, 36.514423, 31.454453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056187, 36.867985, 31.276228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296982, -0.467452, -0.832641,
		-0.944255, -0.014025, -0.328918,
		0.142076, 0.883907, -0.445559,
		40.098808, 37.133156, 31.142561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655262, 36.405216, 30.815632>,  <39.999355, 36.514423, 31.454453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655262, 36.405216, 30.815632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900768, 36.714119, 30.750023>,  <40.048073, 36.899460, 30.710657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900768, 36.714119, 30.750023>,  <39.655262, 36.405216, 30.815632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900768, 36.714119, 30.750023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274607, -0.403612, -0.872747,
		-0.740190, 0.490621, -0.459792,
		0.613766, 0.772261, -0.164022,
		40.084900, 36.945797, 30.700817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482960, 36.669800, 30.089350>,  <39.655262, 36.405216, 30.815632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482960, 36.669800, 30.089350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.847309, 36.806671, 30.181635>,  <40.065918, 36.888794, 30.237005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.847309, 36.806671, 30.181635>,  <39.482960, 36.669800, 30.089350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847309, 36.806671, 30.181635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333099, -0.279538, -0.900502,
		-0.243642, 0.897090, -0.368603,
		0.910870, 0.342181, 0.230713,
		40.120571, 36.909325, 30.250849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781338, 37.106655, 29.517332>,  <39.482960, 36.669800, 30.089350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781338, 37.106655, 29.517332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.114651, 37.006081, 29.714275>,  <40.314640, 36.945736, 29.832441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.114651, 37.006081, 29.714275>,  <39.781338, 37.106655, 29.517332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114651, 37.006081, 29.714275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479753, -0.113683, -0.870008,
		0.274724, 0.961174, 0.025897,
		0.833285, -0.251436, 0.492358,
		40.364635, 36.930649, 29.861982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384571, 37.391087, 29.044628>,  <39.781338, 37.106655, 29.517332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384571, 37.391087, 29.044628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.557243, 37.144806, 29.308313>,  <40.660847, 36.997036, 29.466524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.557243, 37.144806, 29.308313>,  <40.384571, 37.391087, 29.044628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557243, 37.144806, 29.308313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625657, -0.322063, -0.710513,
		0.649774, 0.719155, 0.246192,
		0.431679, -0.615705, 0.659212,
		40.686749, 36.960094, 29.506077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143150, 37.473633, 28.920906>,  <40.384571, 37.391087, 29.044628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143150, 37.473633, 28.920906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111565, 37.129925, 29.123064>,  <41.092613, 36.923702, 29.244358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111565, 37.129925, 29.123064>,  <41.143150, 37.473633, 28.920906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111565, 37.129925, 29.123064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692061, -0.412152, -0.592606,
		0.717506, 0.302968, 0.627212,
		-0.078967, -0.859268, 0.505394,
		41.087875, 36.872143, 29.274683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771584, 37.189240, 28.953218>,  <41.143150, 37.473633, 28.920906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771584, 37.189240, 28.953218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570843, 36.854111, 29.039194>,  <41.450397, 36.653034, 29.090778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570843, 36.854111, 29.039194>,  <41.771584, 37.189240, 28.953218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570843, 36.854111, 29.039194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666992, -0.533064, -0.520542,
		0.550698, -0.117872, 0.826340,
		-0.501850, -0.837824, 0.214938,
		41.420288, 36.602764, 29.103676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312584, 36.725376, 29.111347>,  <41.771584, 37.189240, 28.953218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312584, 36.725376, 29.111347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.987839, 36.514774, 29.010408>,  <41.792992, 36.388412, 28.949844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.987839, 36.514774, 29.010408>,  <42.312584, 36.725376, 29.111347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987839, 36.514774, 29.010408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545152, -0.528854, -0.650478,
		0.209023, -0.665665, 0.716379,
		-0.811861, -0.526501, -0.252347,
		41.744282, 36.356823, 28.934704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480362, 36.036045, 29.093466>,  <42.312584, 36.725376, 29.111347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480362, 36.036045, 29.093466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162224, 36.043407, 28.851116>,  <41.971340, 36.047825, 28.705706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162224, 36.043407, 28.851116>,  <42.480362, 36.036045, 29.093466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162224, 36.043407, 28.851116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490972, -0.566627, -0.661725,
		-0.355485, -0.823769, 0.441628,
		-0.795347, 0.018407, -0.605875,
		41.923618, 36.048931, 28.669353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483036, 35.348248, 28.809406>,  <42.480362, 36.036045, 29.093466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483036, 35.348248, 28.809406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205914, 35.517719, 28.575991>,  <42.039639, 35.619400, 28.435942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205914, 35.517719, 28.575991>,  <42.483036, 35.348248, 28.809406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205914, 35.517719, 28.575991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204219, -0.660808, -0.722238,
		-0.691600, -0.619542, 0.371291,
		-0.692808, 0.423675, -0.583537,
		41.998070, 35.644821, 28.400930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953278, 34.798370, 28.529085>,  <42.483036, 35.348248, 28.809406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953278, 34.798370, 28.529085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968266, 35.102867, 28.270130>,  <41.977261, 35.285564, 28.114758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968266, 35.102867, 28.270130>,  <41.953278, 34.798370, 28.529085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968266, 35.102867, 28.270130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067144, -0.648296, -0.758422,
		-0.997039, -0.015048, -0.075406,
		0.037472, 0.761240, -0.647387,
		41.979507, 35.331238, 28.075914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483898, 34.598076, 28.033642>,  <41.953278, 34.798370, 28.529085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483898, 34.598076, 28.033642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.717480, 34.876060, 27.865818>,  <41.857628, 35.042850, 27.765123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.717480, 34.876060, 27.865818>,  <41.483898, 34.598076, 28.033642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717480, 34.876060, 27.865818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048361, -0.545696, -0.836587,
		-0.810348, 0.468234, -0.352268,
		0.583950, 0.694962, -0.419560,
		41.892666, 35.084549, 27.739950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199982, 34.747585, 27.483595>,  <41.483898, 34.598076, 28.033642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199982, 34.747585, 27.483595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583458, 34.844337, 27.423733>,  <41.813545, 34.902390, 27.387815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583458, 34.844337, 27.423733>,  <41.199982, 34.747585, 27.483595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583458, 34.844337, 27.423733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016437, -0.572383, -0.819821,
		-0.283962, 0.783498, -0.552717,
		0.958695, 0.241883, -0.149657,
		41.871067, 34.916901, 27.378836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570866, 34.805744, 27.354462>,  <41.199982, 34.747585, 27.483595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570866, 34.805744, 27.354462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204647, 34.780617, 27.195547>,  <39.984917, 34.765541, 27.100199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204647, 34.780617, 27.195547>,  <40.570866, 34.805744, 27.354462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204647, 34.780617, 27.195547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358005, 0.577493, 0.733713,
		0.183343, 0.813976, -0.551207,
		-0.915542, -0.062814, -0.397287,
		39.929985, 34.761772, 27.076361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273567, 35.499283, 27.492605>,  <40.570866, 34.805744, 27.354462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273567, 35.499283, 27.492605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.949783, 35.275135, 27.422443>,  <39.755512, 35.140648, 27.380346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.949783, 35.275135, 27.422443>,  <40.273567, 35.499283, 27.492605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949783, 35.275135, 27.422443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481712, 0.462925, 0.744079,
		-0.335758, 0.686795, -0.644654,
		-0.809456, -0.560368, -0.175406,
		39.706947, 35.107025, 27.369822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657288, 35.955696, 27.485250>,  <40.273567, 35.499283, 27.492605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657288, 35.955696, 27.485250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.542072, 35.581718, 27.568106>,  <39.472942, 35.357330, 27.617819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.542072, 35.581718, 27.568106>,  <39.657288, 35.955696, 27.485250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542072, 35.581718, 27.568106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478779, 0.327931, 0.814390,
		-0.829339, 0.135405, -0.542091,
		-0.288041, -0.934948, 0.207137,
		39.455662, 35.301235, 27.630247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945652, 36.073872, 27.696154>,  <39.657288, 35.955696, 27.485250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945652, 36.073872, 27.696154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076340, 35.717312, 27.821793>,  <39.154755, 35.503376, 27.897175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076340, 35.717312, 27.821793>,  <38.945652, 36.073872, 27.696154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076340, 35.717312, 27.821793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557291, 0.086709, 0.825777,
		-0.763334, -0.444844, -0.468440,
		0.326724, -0.891401, 0.314095,
		39.174358, 35.449890, 27.916021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352383, 35.641304, 27.622187>,  <38.945652, 36.073872, 27.696154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352383, 35.641304, 27.622187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628372, 35.531097, 27.889925>,  <38.793968, 35.464973, 28.050568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628372, 35.531097, 27.889925>,  <38.352383, 35.641304, 27.622187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628372, 35.531097, 27.889925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638994, 0.202549, 0.742065,
		-0.340027, -0.939715, -0.036300,
		0.689977, -0.275518, 0.669344,
		38.835365, 35.448441, 28.090729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986591, 35.428005, 28.230595>,  <38.352383, 35.641304, 27.622187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986591, 35.428005, 28.230595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.360405, 35.437233, 28.372644>,  <38.584694, 35.442772, 28.457874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.360405, 35.437233, 28.372644>,  <37.986591, 35.428005, 28.230595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360405, 35.437233, 28.372644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355591, 0.020914, 0.934407,
		0.014126, -0.999515, 0.027747,
		0.934535, 0.023066, 0.355124,
		38.640766, 35.444157, 28.479181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972973, 35.010113, 28.822544>,  <37.986591, 35.428005, 28.230595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972973, 35.010113, 28.822544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316109, 35.207626, 28.879517>,  <38.521992, 35.326134, 28.913700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316109, 35.207626, 28.879517>,  <37.972973, 35.010113, 28.822544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316109, 35.207626, 28.879517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181003, 0.030910, 0.982997,
		0.480988, -0.869034, 0.115893,
		0.857840, 0.493786, 0.142431,
		38.573460, 35.355762, 28.922245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393856, 34.625584, 29.391237>,  <37.972973, 35.010113, 28.822544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393856, 34.625584, 29.391237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504463, 35.009384, 29.369688>,  <38.570827, 35.239662, 29.356758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504463, 35.009384, 29.369688>,  <38.393856, 34.625584, 29.391237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504463, 35.009384, 29.369688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213937, 0.116114, 0.969922,
		0.936893, -0.256675, 0.237379,
		0.276518, 0.959497, -0.053874,
		38.587418, 35.297234, 29.353525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794559, 34.695702, 30.000870>,  <38.393856, 34.625584, 29.391237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794559, 34.695702, 30.000870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.668816, 35.052906, 29.872055>,  <38.593369, 35.267227, 29.794765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.668816, 35.052906, 29.872055>,  <38.794559, 34.695702, 30.000870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668816, 35.052906, 29.872055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292405, 0.231655, 0.927812,
		0.903149, 0.385832, 0.188299,
		-0.314359, 0.893011, -0.322038,
		38.574509, 35.320808, 29.775444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037521, 35.312572, 30.458015>,  <38.794559, 34.695702, 30.000870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037521, 35.312572, 30.458015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.725288, 35.467239, 30.261576>,  <38.537949, 35.560040, 30.143713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.725288, 35.467239, 30.261576>,  <39.037521, 35.312572, 30.458015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725288, 35.467239, 30.261576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309748, 0.443136, 0.841241,
		0.542904, 0.808775, -0.226135,
		-0.780584, 0.386669, -0.491097,
		38.491112, 35.583241, 30.114246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963734, 36.060684, 30.720396>,  <39.037521, 35.312572, 30.458015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963734, 36.060684, 30.720396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.616695, 35.933338, 30.567600>,  <38.408470, 35.856930, 30.475922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.616695, 35.933338, 30.567600>,  <38.963734, 36.060684, 30.720396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616695, 35.933338, 30.567600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477255, 0.317387, 0.819447,
		-0.139643, 0.893258, -0.427305,
		-0.867599, -0.318363, -0.381991,
		38.356415, 35.837830, 30.453003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432568, 36.547295, 30.752831>,  <38.963734, 36.060684, 30.720396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432568, 36.547295, 30.752831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.255856, 36.188480, 30.757866>,  <38.149830, 35.973190, 30.760887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.255856, 36.188480, 30.757866>,  <38.432568, 36.547295, 30.752831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255856, 36.188480, 30.757866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569269, 0.291145, 0.768874,
		-0.693373, 0.332505, -0.639277,
		-0.441777, -0.897037, 0.012587,
		38.123322, 35.919369, 30.761642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.998478, 33.497341, 23.937433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683060, 33.253998, 23.973425>,  <40.493809, 33.107990, 23.995020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683060, 33.253998, 23.973425>,  <40.998478, 33.497341, 23.937433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683060, 33.253998, 23.973425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396412, 0.614683, 0.681925,
		-0.470164, 0.502060, -0.725866,
		-0.788545, -0.608359, 0.089979,
		40.446495, 33.071491, 24.000418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427696, 34.017269, 23.897032>,  <40.998478, 33.497341, 23.937433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427696, 34.017269, 23.897032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321548, 33.676716, 24.078018>,  <40.257862, 33.472385, 24.186611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321548, 33.676716, 24.078018>,  <40.427696, 34.017269, 23.897032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321548, 33.676716, 24.078018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392209, 0.524032, 0.756017,
		-0.880768, 0.023159, -0.472980,
		-0.265365, -0.851384, 0.452468,
		40.241940, 33.421299, 24.213758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695877, 34.039524, 24.100544>,  <40.427696, 34.017269, 23.897032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695877, 34.039524, 24.100544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872906, 33.769333, 24.336464>,  <39.979122, 33.607220, 24.478016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872906, 33.769333, 24.336464>,  <39.695877, 34.039524, 24.100544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872906, 33.769333, 24.336464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403478, 0.437382, 0.803680,
		-0.800834, -0.593657, -0.078967,
		0.442572, -0.675476, 0.589798,
		40.005676, 33.566689, 24.513403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202141, 33.891510, 24.636660>,  <39.695877, 34.039524, 24.100544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202141, 33.891510, 24.636660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564812, 33.790829, 24.772062>,  <39.782413, 33.730419, 24.853304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564812, 33.790829, 24.772062>,  <39.202141, 33.891510, 24.636660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564812, 33.790829, 24.772062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212891, 0.419746, 0.882321,
		-0.364168, -0.872044, 0.326989,
		0.906675, -0.251700, 0.338508,
		39.836815, 33.715321, 24.873615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138813, 33.523628, 25.223177>,  <39.202141, 33.891510, 24.636660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138813, 33.523628, 25.223177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508621, 33.674416, 25.245653>,  <39.730507, 33.764889, 25.259138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508621, 33.674416, 25.245653>,  <39.138813, 33.523628, 25.223177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508621, 33.674416, 25.245653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194521, 0.339915, 0.920119,
		0.327730, -0.861609, 0.387585,
		0.924529, 0.376944, 0.056201,
		39.785976, 33.787506, 25.262510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346909, 33.319443, 25.826281>,  <39.138813, 33.523628, 25.223177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346909, 33.319443, 25.826281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592426, 33.624454, 25.744501>,  <39.739738, 33.807461, 25.695433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592426, 33.624454, 25.744501>,  <39.346909, 33.319443, 25.826281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592426, 33.624454, 25.744501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048498, 0.294905, 0.954295,
		0.787973, -0.575828, 0.217992,
		0.613797, 0.762531, -0.204450,
		39.776566, 33.853214, 25.683167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605652, 33.359787, 26.443039>,  <39.346909, 33.319443, 25.826281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605652, 33.359787, 26.443039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749577, 33.682014, 26.254742>,  <39.835930, 33.875351, 26.141764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749577, 33.682014, 26.254742>,  <39.605652, 33.359787, 26.443039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749577, 33.682014, 26.254742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079571, 0.476205, 0.875727,
		0.929626, -0.352553, 0.107244,
		0.359810, 0.805565, -0.470745,
		39.857521, 33.923683, 26.113518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249592, 33.634789, 26.796801>,  <39.605652, 33.359787, 26.443039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249592, 33.634789, 26.796801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057434, 33.929897, 26.607103>,  <39.942139, 34.106964, 26.493284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057434, 33.929897, 26.607103>,  <40.249592, 33.634789, 26.796801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057434, 33.929897, 26.607103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017905, 0.532362, 0.846327,
		0.876868, 0.415065, -0.242535,
		-0.480397, 0.737775, -0.474243,
		39.913315, 34.151230, 26.464830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619019, 34.236748, 26.927620>,  <40.249592, 33.634789, 26.796801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619019, 34.236748, 26.927620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258121, 34.377117, 26.827372>,  <40.041584, 34.461338, 26.767223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258121, 34.377117, 26.827372>,  <40.619019, 34.236748, 26.927620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258121, 34.377117, 26.827372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018030, 0.611370, 0.791140,
		0.430849, 0.709283, -0.557932,
		-0.902244, 0.350921, -0.250619,
		39.987450, 34.482395, 26.752186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227978, 34.642807, 26.756556>,  <40.619019, 34.236748, 26.927620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227978, 34.642807, 26.756556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611614, 34.704784, 26.851322>,  <41.841797, 34.741970, 26.908182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611614, 34.704784, 26.851322>,  <41.227978, 34.642807, 26.756556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611614, 34.704784, 26.851322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279589, -0.387319, -0.878529,
		-0.044363, 0.908832, -0.414797,
		0.959094, 0.154947, 0.236917,
		41.899342, 34.751266, 26.922398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578159, 35.049103, 26.171997>,  <41.227978, 34.642807, 26.756556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578159, 35.049103, 26.171997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897305, 34.911949, 26.370329>,  <42.088791, 34.829659, 26.489328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897305, 34.911949, 26.370329>,  <41.578159, 35.049103, 26.171997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897305, 34.911949, 26.370329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388772, -0.335937, -0.857906,
		0.460729, 0.877256, -0.134729,
		0.797863, -0.342883, 0.495828,
		42.136665, 34.809086, 26.519077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196430, 35.399422, 25.916548>,  <41.578159, 35.049103, 26.171997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196430, 35.399422, 25.916548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292595, 35.049114, 26.083992>,  <42.350292, 34.838932, 26.184460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292595, 35.049114, 26.083992>,  <42.196430, 35.399422, 25.916548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292595, 35.049114, 26.083992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539317, -0.238053, -0.807755,
		0.807057, 0.419956, 0.415085,
		0.240409, -0.875767, 0.418612,
		42.364719, 34.786385, 26.209576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936035, 35.225529, 25.717625>,  <42.196430, 35.399422, 25.916548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936035, 35.225529, 25.717625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800827, 34.860603, 25.810081>,  <42.719704, 34.641647, 25.865557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800827, 34.860603, 25.810081>,  <42.936035, 35.225529, 25.717625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800827, 34.860603, 25.810081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567129, -0.393452, -0.723574,
		0.751070, -0.113495, 0.650394,
		-0.338021, -0.912313, 0.231144,
		42.699421, 34.586910, 25.879425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469345, 34.867630, 25.689409>,  <42.936035, 35.225529, 25.717625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469345, 34.867630, 25.689409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188129, 34.593143, 25.614731>,  <43.019402, 34.428452, 25.569923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188129, 34.593143, 25.614731>,  <43.469345, 34.867630, 25.689409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188129, 34.593143, 25.614731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541794, -0.346770, -0.765643,
		0.460653, -0.639424, 0.615578,
		-0.703035, -0.686212, -0.186696,
		42.977219, 34.387280, 25.558722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801094, 34.206467, 25.748413>,  <43.469345, 34.867630, 25.689409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801094, 34.206467, 25.748413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464516, 34.124485, 25.548429>,  <43.262569, 34.075298, 25.428440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464516, 34.124485, 25.548429>,  <43.801094, 34.206467, 25.748413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464516, 34.124485, 25.548429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514842, -0.584965, -0.626701,
		-0.164013, -0.784736, 0.597737,
		-0.841450, -0.204953, -0.499957,
		43.212082, 34.063000, 25.398443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897499, 33.544949, 25.583204>,  <43.801094, 34.206467, 25.748413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897499, 33.544949, 25.583204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590630, 33.645950, 25.347343>,  <43.406509, 33.706551, 25.205826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590630, 33.645950, 25.347343>,  <43.897499, 33.544949, 25.583204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590630, 33.645950, 25.347343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365964, -0.582670, -0.725649,
		-0.526802, -0.772488, 0.354601,
		-0.767170, 0.252502, -0.589654,
		43.360477, 33.721703, 25.170446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481472, 32.949738, 25.379463>,  <43.897499, 33.544949, 25.583204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481472, 32.949738, 25.379463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364166, 33.211231, 25.100428>,  <43.293785, 33.368126, 24.933006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364166, 33.211231, 25.100428>,  <43.481472, 32.949738, 25.379463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364166, 33.211231, 25.100428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173887, -0.681027, -0.711313,
		-0.940085, -0.329903, 0.086043,
		-0.293262, 0.653733, -0.697589,
		43.276188, 33.407352, 24.891151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100574, 32.620308, 24.857805>,  <43.481472, 32.949738, 25.379463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100574, 32.620308, 24.857805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213581, 32.950657, 24.662617>,  <43.281384, 33.148869, 24.545504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213581, 32.950657, 24.662617>,  <43.100574, 32.620308, 24.857805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213581, 32.950657, 24.662617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226231, -0.551708, -0.802769,
		-0.932204, 0.116400, -0.342704,
		0.282515, 0.825875, -0.487971,
		43.298336, 33.198418, 24.516226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836174, 32.511425, 24.217520>,  <43.100574, 32.620308, 24.857805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836174, 32.511425, 24.217520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124359, 32.787930, 24.195250>,  <43.297268, 32.953831, 24.181887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124359, 32.787930, 24.195250>,  <42.836174, 32.511425, 24.217520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124359, 32.787930, 24.195250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384330, -0.464810, -0.797648,
		-0.577260, 0.553275, -0.600548,
		0.720459, 0.691259, -0.055676,
		43.340496, 32.995308, 24.178547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867619, 32.703671, 23.571674>,  <42.836174, 32.511425, 24.217520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867619, 32.703671, 23.571674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235882, 32.813953, 23.682219>,  <43.456841, 32.880123, 23.748545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235882, 32.813953, 23.682219>,  <42.867619, 32.703671, 23.571674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235882, 32.813953, 23.682219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377536, -0.448798, -0.809967,
		-0.099283, 0.850039, -0.517278,
		0.920657, 0.275707, 0.276362,
		43.512077, 32.896667, 23.765127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245506, 33.084896, 22.938112>,  <42.867619, 32.703671, 23.571674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245506, 33.084896, 22.938112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511852, 32.942730, 23.200500>,  <43.671661, 32.857430, 23.357933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511852, 32.942730, 23.200500>,  <43.245506, 33.084896, 22.938112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511852, 32.942730, 23.200500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541363, -0.374823, -0.752618,
		0.513366, 0.856263, -0.057174,
		0.665869, -0.355416, 0.655971,
		43.711613, 32.836105, 23.397291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884235, 33.124722, 22.640287>,  <43.245506, 33.084896, 22.938112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884235, 33.124722, 22.640287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005196, 32.858074, 22.912809>,  <44.077770, 32.698086, 23.076323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005196, 32.858074, 22.912809>,  <43.884235, 33.124722, 22.640287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005196, 32.858074, 22.912809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505325, -0.493940, -0.707581,
		0.808210, 0.558250, 0.187494,
		0.302396, -0.666619, 0.681305,
		44.095913, 32.658089, 23.117201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592133, 33.046612, 22.604319>,  <43.884235, 33.124722, 22.640287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592133, 33.046612, 22.604319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452415, 32.711601, 22.772390>,  <44.368587, 32.510597, 22.873234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452415, 32.711601, 22.772390>,  <44.592133, 33.046612, 22.604319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452415, 32.711601, 22.772390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530346, -0.546390, -0.648222,
		0.772483, -0.003577, 0.635026,
		-0.349291, -0.837523, 0.420180,
		44.347630, 32.460346, 22.898445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.151443, 27.138540, 24.826864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.316345, 27.492846, 24.741571>,  <38.415287, 27.705429, 24.690395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.316345, 27.492846, 24.741571>,  <38.151443, 27.138540, 24.826864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316345, 27.492846, 24.741571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418514, 0.392007, 0.819254,
		0.809254, -0.248500, 0.532311,
		0.412255, 0.885764, -0.213232,
		38.440022, 27.758575, 24.677603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123348, 27.411709, 25.501923>,  <38.151443, 27.138540, 24.826864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123348, 27.411709, 25.501923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.215462, 27.736128, 25.286825>,  <38.270729, 27.930780, 25.157766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.215462, 27.736128, 25.286825>,  <38.123348, 27.411709, 25.501923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215462, 27.736128, 25.286825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152563, 0.575852, 0.803193,
		0.961089, -0.102927, 0.256348,
		0.230289, 0.811049, -0.537742,
		38.284550, 27.979443, 25.125504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740875, 27.739431, 25.881212>,  <38.123348, 27.411709, 25.501923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740875, 27.739431, 25.881212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520050, 27.983582, 25.653997>,  <38.387554, 28.130072, 25.517668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520050, 27.983582, 25.653997>,  <38.740875, 27.739431, 25.881212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520050, 27.983582, 25.653997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201440, 0.563447, 0.801217,
		0.809105, 0.556746, -0.188102,
		-0.552061, 0.610378, -0.568039,
		38.354431, 28.166695, 25.483585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959427, 28.449684, 26.079018>,  <38.740875, 27.739431, 25.881212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959427, 28.449684, 26.079018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600319, 28.476933, 25.904949>,  <38.384853, 28.493282, 25.800508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600319, 28.476933, 25.904949>,  <38.959427, 28.449684, 26.079018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600319, 28.476933, 25.904949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277422, 0.679941, 0.678761,
		0.342129, 0.730096, -0.591530,
		-0.897766, 0.068121, -0.435172,
		38.330990, 28.497368, 25.774397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704987, 29.171448, 26.186108>,  <38.959427, 28.449684, 26.079018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704987, 29.171448, 26.186108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370396, 28.991261, 26.061281>,  <38.169643, 28.883148, 25.986385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370396, 28.991261, 26.061281>,  <38.704987, 29.171448, 26.186108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370396, 28.991261, 26.061281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538466, 0.569840, 0.620755,
		-0.101804, 0.687283, -0.719220,
		-0.836475, -0.450471, -0.312067,
		38.119453, 28.856119, 25.967661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178215, 29.683664, 26.104948>,  <38.704987, 29.171448, 26.186108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178215, 29.683664, 26.104948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990200, 29.333368, 26.149017>,  <37.877392, 29.123190, 26.175459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990200, 29.333368, 26.149017>,  <38.178215, 29.683664, 26.104948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990200, 29.333368, 26.149017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557565, 0.391368, 0.732087,
		-0.684238, 0.282682, -0.672242,
		-0.470042, -0.875741, 0.110175,
		37.849186, 29.070646, 26.182070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393013, 29.810595, 26.045424>,  <38.178215, 29.683664, 26.104948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393013, 29.810595, 26.045424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451962, 29.490849, 26.278419>,  <37.487331, 29.299000, 26.418217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451962, 29.490849, 26.278419>,  <37.393013, 29.810595, 26.045424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451962, 29.490849, 26.278419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518257, 0.439193, 0.733838,
		-0.842431, -0.410028, -0.349552,
		0.147373, -0.799366, 0.582490,
		37.496174, 29.251040, 26.453167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693569, 29.550898, 26.369680>,  <37.393013, 29.810595, 26.045424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693569, 29.550898, 26.369680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.952686, 29.363356, 26.609859>,  <37.108158, 29.250830, 26.753967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.952686, 29.363356, 26.609859>,  <36.693569, 29.550898, 26.369680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952686, 29.363356, 26.609859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470681, 0.373423, 0.799384,
		-0.599016, -0.800456, 0.021220,
		0.647795, -0.468856, 0.600446,
		37.147026, 29.222698, 26.789993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328335, 29.493805, 26.990551>,  <36.693569, 29.550898, 26.369680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328335, 29.493805, 26.990551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.683033, 29.382816, 27.138435>,  <36.895851, 29.316223, 27.227165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.683033, 29.382816, 27.138435>,  <36.328335, 29.493805, 26.990551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683033, 29.382816, 27.138435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235501, 0.417046, 0.877845,
		-0.397763, -0.865496, 0.304470,
		0.886749, -0.277471, 0.369710,
		36.949059, 29.299576, 27.249348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159996, 29.127943, 27.560463>,  <36.328335, 29.493805, 26.990551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159996, 29.127943, 27.560463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527031, 29.280781, 27.604347>,  <36.747253, 29.372484, 27.630678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527031, 29.280781, 27.604347>,  <36.159996, 29.127943, 27.560463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527031, 29.280781, 27.604347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284469, 0.438333, 0.852609,
		0.277685, -0.813553, 0.510903,
		0.917588, 0.382093, 0.109712,
		36.802307, 29.395409, 27.637260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304085, 29.002888, 28.181581>,  <36.159996, 29.127943, 27.560463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304085, 29.002888, 28.181581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.575161, 29.290506, 28.119982>,  <36.737804, 29.463078, 28.083021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.575161, 29.290506, 28.119982>,  <36.304085, 29.002888, 28.181581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575161, 29.290506, 28.119982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134758, 0.327315, 0.935257,
		0.722899, -0.613057, 0.318714,
		0.677685, 0.719045, -0.154001,
		36.778465, 29.506220, 28.073782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651428, 29.003275, 28.806461>,  <36.304085, 29.002888, 28.181581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651428, 29.003275, 28.806461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743538, 29.346228, 28.622341>,  <36.798805, 29.551998, 28.511869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743538, 29.346228, 28.622341>,  <36.651428, 29.003275, 28.806461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743538, 29.346228, 28.622341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130011, 0.495875, 0.858606,
		0.964402, -0.137870, 0.225655,
		0.230273, 0.857380, -0.460298,
		36.812618, 29.603441, 28.484251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127422, 29.397108, 29.181223>,  <36.651428, 29.003275, 28.806461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127422, 29.397108, 29.181223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983589, 29.691763, 28.952114>,  <36.897289, 29.868555, 28.814650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983589, 29.691763, 28.952114>,  <37.127422, 29.397108, 29.181223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983589, 29.691763, 28.952114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002919, 0.612937, 0.790127,
		0.933107, 0.285791, -0.218253,
		-0.359586, 0.736636, -0.572770,
		36.875713, 29.912754, 28.780283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559650, 30.015356, 29.259958>,  <37.127422, 29.397108, 29.181223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559650, 30.015356, 29.259958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205654, 30.143656, 29.124960>,  <36.993256, 30.220636, 29.043961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205654, 30.143656, 29.124960>,  <37.559650, 30.015356, 29.259958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205654, 30.143656, 29.124960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001957, 0.722291, 0.691586,
		0.465596, 0.612711, -0.638597,
		-0.884995, 0.320751, -0.337495,
		36.940155, 30.239882, 29.023712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310806, 30.070574, 29.289618>,  <37.559650, 30.015356, 29.259958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310806, 30.070574, 29.289618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.664574, 30.216612, 29.405895>,  <38.876835, 30.304235, 29.475662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.664574, 30.216612, 29.405895>,  <38.310806, 30.070574, 29.289618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664574, 30.216612, 29.405895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451458, -0.511475, -0.731149,
		-0.118255, 0.777881, -0.617184,
		0.884422, 0.365095, 0.290696,
		38.929901, 30.326139, 29.493105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641396, 30.218828, 28.607109>,  <38.310806, 30.070574, 29.289618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641396, 30.218828, 28.607109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933292, 30.199419, 28.879910>,  <39.108429, 30.187775, 29.043589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933292, 30.199419, 28.879910>,  <38.641396, 30.218828, 28.607109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933292, 30.199419, 28.879910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530480, -0.589124, -0.609528,
		0.431357, 0.806585, -0.404168,
		0.729741, -0.048521, 0.682000,
		39.152214, 30.184862, 29.084509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395012, 30.448965, 28.360516>,  <38.641396, 30.218828, 28.607109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395012, 30.448965, 28.360516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.407013, 30.171900, 28.648771>,  <39.414211, 30.005661, 28.821724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.407013, 30.171900, 28.648771>,  <39.395012, 30.448965, 28.360516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407013, 30.171900, 28.648771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455360, -0.632331, -0.626741,
		0.889802, 0.346951, 0.296442,
		0.029999, -0.692663, 0.720637,
		39.416012, 29.964100, 28.864962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064194, 30.386271, 28.423740>,  <39.395012, 30.448965, 28.360516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064194, 30.386271, 28.423740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905685, 30.053568, 28.579254>,  <39.810581, 29.853947, 28.672562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905685, 30.053568, 28.579254>,  <40.064194, 30.386271, 28.423740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905685, 30.053568, 28.579254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530983, -0.553066, -0.642009,
		0.749019, -0.047970, 0.660810,
		-0.396268, -0.831755, 0.388785,
		39.786804, 29.804041, 28.695890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655563, 29.818249, 28.469072>,  <40.064194, 30.386271, 28.423740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655563, 29.818249, 28.469072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.313347, 29.611258, 28.475496>,  <40.108017, 29.487062, 28.479351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.313347, 29.611258, 28.475496>,  <40.655563, 29.818249, 28.469072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313347, 29.611258, 28.475496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401427, -0.682626, -0.610638,
		0.326955, -0.515982, 0.791747,
		-0.855545, -0.517479, 0.016059,
		40.056683, 29.456015, 28.480314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851212, 29.144756, 28.513876>,  <40.655563, 29.818249, 28.469072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851212, 29.144756, 28.513876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.500572, 29.117731, 28.323292>,  <40.290188, 29.101515, 28.208941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.500572, 29.117731, 28.323292>,  <40.851212, 29.144756, 28.513876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500572, 29.117731, 28.323292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369881, -0.727965, -0.577282,
		-0.307842, -0.682277, 0.663122,
		-0.876596, -0.067565, -0.476460,
		40.237595, 29.097462, 28.180353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838425, 28.508463, 28.329733>,  <40.851212, 29.144756, 28.513876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838425, 28.508463, 28.329733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.540409, 28.653959, 28.106087>,  <40.361599, 28.741257, 27.971899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.540409, 28.653959, 28.106087>,  <40.838425, 28.508463, 28.329733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540409, 28.653959, 28.106087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272271, -0.599375, -0.752740,
		-0.608948, -0.713039, 0.347502,
		-0.745018, 0.363765, -0.559128,
		40.316898, 28.763083, 27.938353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538998, 27.945644, 28.116898>,  <40.838425, 28.508463, 28.329733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538998, 27.945644, 28.116898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.450562, 28.236046, 27.856424>,  <40.397499, 28.410286, 27.700140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.450562, 28.236046, 27.856424>,  <40.538998, 27.945644, 28.116898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450562, 28.236046, 27.856424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228402, -0.610594, -0.758293,
		-0.948131, -0.316381, -0.030826,
		-0.221087, 0.726002, -0.651185,
		40.384235, 28.453846, 27.661068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488934, 27.554058, 27.487226>,  <40.538998, 27.945644, 28.116898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488934, 27.554058, 27.487226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.450443, 27.934235, 27.368973>,  <40.427349, 28.162340, 27.298021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.450443, 27.934235, 27.368973>,  <40.488934, 27.554058, 27.487226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450443, 27.934235, 27.368973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134968, -0.281808, -0.949931,
		-0.986166, -0.131309, -0.101162,
		-0.096226, 0.950443, -0.295632,
		40.421574, 28.219368, 27.280283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960644, 27.657232, 26.926516>,  <40.488934, 27.554058, 27.487226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960644, 27.657232, 26.926516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.236279, 27.942883, 26.877218>,  <40.401657, 28.114273, 26.847639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.236279, 27.942883, 26.877218>,  <39.960644, 27.657232, 26.926516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236279, 27.942883, 26.877218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265866, -0.407331, -0.873726,
		-0.674150, 0.569304, -0.470547,
		0.689084, 0.714125, -0.123244,
		40.443005, 28.157120, 26.840244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877346, 28.027391, 26.258965>,  <39.960644, 27.657232, 26.926516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877346, 28.027391, 26.258965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.263336, 28.051222, 26.361158>,  <40.494930, 28.065521, 26.422476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.263336, 28.051222, 26.361158>,  <39.877346, 28.027391, 26.258965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263336, 28.051222, 26.361158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262012, -0.170135, -0.949950,
		-0.013129, 0.983618, -0.179786,
		0.964975, 0.059578, 0.255486,
		40.552830, 28.069096, 26.437803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155930, 28.265909, 25.711132>,  <39.877346, 28.027391, 26.258965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155930, 28.265909, 25.711132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.478329, 28.160336, 25.923059>,  <40.671768, 28.096992, 26.050215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.478329, 28.160336, 25.923059>,  <40.155930, 28.265909, 25.711132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478329, 28.160336, 25.923059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508824, -0.148391, -0.847985,
		0.302431, 0.953058, 0.014692,
		0.805998, -0.263933, 0.529817,
		40.720127, 28.081156, 26.082005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715809, 28.646370, 25.571768>,  <40.155930, 28.265909, 25.711132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715809, 28.646370, 25.571768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875156, 28.303831, 25.703207>,  <40.970764, 28.098309, 25.782070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875156, 28.303831, 25.703207>,  <40.715809, 28.646370, 25.571768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875156, 28.303831, 25.703207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553173, -0.061457, -0.830796,
		0.731643, 0.512734, 0.449225,
		0.398370, -0.856345, 0.328596,
		40.994667, 28.046928, 25.801786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334656, 28.701237, 25.199400>,  <40.715809, 28.646370, 25.571768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334656, 28.701237, 25.199400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.289074, 28.322330, 25.319202>,  <41.261726, 28.094988, 25.391085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.289074, 28.322330, 25.319202>,  <41.334656, 28.701237, 25.199400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289074, 28.322330, 25.319202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373167, -0.320207, -0.870755,
		0.920740, 0.012544, 0.389975,
		-0.113950, -0.947265, 0.299508,
		41.254890, 28.038151, 25.409056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922947, 28.832689, 25.444950>,  <41.334656, 28.701237, 25.199400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922947, 28.832689, 25.444950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.200813, 29.099918, 25.338280>,  <42.367535, 29.260256, 25.274279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.200813, 29.099918, 25.338280>,  <41.922947, 28.832689, 25.444950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200813, 29.099918, 25.338280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338099, 0.630461, 0.698719,
		0.634912, -0.395225, 0.663840,
		0.694677, 0.668069, -0.266663,
		42.409214, 29.300341, 25.258278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104389, 29.116116, 25.958815>,  <41.922947, 28.832689, 25.444950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104389, 29.116116, 25.958815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.238781, 29.419834, 25.735893>,  <42.319416, 29.602066, 25.602140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.238781, 29.419834, 25.735893>,  <42.104389, 29.116116, 25.958815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238781, 29.419834, 25.735893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366318, 0.650455, 0.665372,
		0.867716, -0.019399, 0.496682,
		0.335977, 0.759297, -0.557304,
		42.339573, 29.647623, 25.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552483, 29.651913, 26.339417>,  <42.104389, 29.116116, 25.958815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552483, 29.651913, 26.339417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.369568, 29.825083, 26.028685>,  <42.259819, 29.928986, 25.842245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.369568, 29.825083, 26.028685>,  <42.552483, 29.651913, 26.339417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369568, 29.825083, 26.028685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434482, 0.653407, 0.619907,
		0.775958, 0.620996, -0.110700,
		-0.457292, 0.432924, -0.776827,
		42.232380, 29.954960, 25.795637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665474, 30.305866, 26.467991>,  <42.552483, 29.651913, 26.339417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665474, 30.305866, 26.467991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.349747, 30.291121, 26.222837>,  <42.160313, 30.282274, 26.075747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.349747, 30.291121, 26.222837>,  <42.665474, 30.305866, 26.467991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349747, 30.291121, 26.222837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438520, 0.732511, 0.520700,
		0.429747, 0.679757, -0.594347,
		-0.789315, -0.036863, -0.612881,
		42.112953, 30.280062, 26.038973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500019, 30.919769, 26.408064>,  <42.665474, 30.305866, 26.467991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500019, 30.919769, 26.408064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.167713, 30.757092, 26.256048>,  <41.968330, 30.659485, 26.164839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.167713, 30.757092, 26.256048>,  <42.500019, 30.919769, 26.408064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167713, 30.757092, 26.256048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549900, 0.705455, 0.447151,
		0.086247, 0.580461, -0.809708,
		-0.830766, -0.406693, -0.380039,
		41.918484, 30.635084, 26.142036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164902, 31.491631, 26.240005>,  <42.500019, 30.919769, 26.408064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164902, 31.491631, 26.240005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884892, 31.207516, 26.269535>,  <41.716885, 31.037046, 26.287252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884892, 31.207516, 26.269535>,  <42.164902, 31.491631, 26.240005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884892, 31.207516, 26.269535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579629, 0.625537, 0.522239,
		-0.417119, 0.322792, -0.849598,
		-0.700030, -0.710288, 0.073824,
		41.674881, 30.994429, 26.291683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600353, 31.821516, 26.104372>,  <42.164902, 31.491631, 26.240005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600353, 31.821516, 26.104372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.482315, 31.488455, 26.291821>,  <41.411491, 31.288618, 26.404289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.482315, 31.488455, 26.291821>,  <41.600353, 31.821516, 26.104372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482315, 31.488455, 26.291821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496449, 0.552682, 0.669389,
		-0.816367, -0.035110, -0.576465,
		-0.295099, -0.832652, 0.468621,
		41.393784, 31.238659, 26.432407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865612, 31.832329, 26.136667>,  <41.600353, 31.821516, 26.104372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865612, 31.832329, 26.136667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.979519, 31.594524, 26.437456>,  <41.047863, 31.451841, 26.617929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.979519, 31.594524, 26.437456>,  <40.865612, 31.832329, 26.136667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979519, 31.594524, 26.437456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494790, 0.580719, 0.646489,
		-0.821032, -0.556165, -0.128792,
		0.284763, -0.594513, 0.751974,
		41.064949, 31.416170, 26.663048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221325, 31.773708, 26.549921>,  <40.865612, 31.832329, 26.136667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221325, 31.773708, 26.549921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535652, 31.685377, 26.780994>,  <40.724251, 31.632378, 26.919638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535652, 31.685377, 26.780994>,  <40.221325, 31.773708, 26.549921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535652, 31.685377, 26.780994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322131, 0.651216, 0.687131,
		-0.527934, -0.726053, 0.440605,
		0.785823, -0.220827, 0.577683,
		40.771400, 31.619129, 26.954300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883480, 31.652330, 27.328041>,  <40.221325, 31.773708, 26.549921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883480, 31.652330, 27.328041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279198, 31.696379, 27.366348>,  <40.516628, 31.722809, 27.389332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279198, 31.696379, 27.366348>,  <39.883480, 31.652330, 27.328041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279198, 31.696379, 27.366348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143431, 0.612559, 0.777302,
		0.026935, -0.782716, 0.621796,
		0.989294, 0.110122, 0.095766,
		40.575985, 31.729416, 27.395079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024406, 31.511534, 27.967487>,  <39.883480, 31.652330, 27.328041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024406, 31.511534, 27.967487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325794, 31.752857, 27.862942>,  <40.506626, 31.897652, 27.800215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325794, 31.752857, 27.862942>,  <40.024406, 31.511534, 27.967487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325794, 31.752857, 27.862942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146712, 0.541767, 0.827626,
		0.640911, -0.585242, 0.496715,
		0.753465, 0.603308, -0.261362,
		40.551834, 31.933849, 27.784533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421135, 31.423489, 28.562593>,  <40.024406, 31.511534, 27.967487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421135, 31.423489, 28.562593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.545513, 31.749947, 28.367773>,  <40.620140, 31.945822, 28.250881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.545513, 31.749947, 28.367773>,  <40.421135, 31.423489, 28.562593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545513, 31.749947, 28.367773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074466, 0.531801, 0.843589,
		0.947507, -0.226039, 0.226135,
		0.310943, 0.816146, -0.487053,
		40.638798, 31.994791, 28.221657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010441, 31.711979, 28.936359>,  <40.421135, 31.423489, 28.562593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010441, 31.711979, 28.936359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.888042, 32.008224, 28.697077>,  <40.814602, 32.185970, 28.553507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.888042, 32.008224, 28.697077>,  <41.010441, 31.711979, 28.936359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888042, 32.008224, 28.697077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045186, 0.638940, 0.767929,
		0.950958, 0.207956, -0.228981,
		-0.306000, 0.740615, -0.598208,
		40.796242, 32.230408, 28.517614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511425, 32.250362, 29.092093>,  <41.010441, 31.711979, 28.936359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511425, 32.250362, 29.092093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.164783, 32.392296, 28.951757>,  <40.956799, 32.477455, 28.867558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.164783, 32.392296, 28.951757>,  <41.511425, 32.250362, 29.092093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164783, 32.392296, 28.951757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105444, 0.556987, 0.823801,
		0.487727, 0.750903, -0.445272,
		-0.866605, 0.354838, -0.350836,
		40.904800, 32.498749, 28.846506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.225822, 32.410454, 22.472168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.931587, 32.190971, 22.631079>,  <44.755047, 32.059280, 22.726425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.931587, 32.190971, 22.631079>,  <45.225822, 32.410454, 22.472168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931587, 32.190971, 22.631079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286443, -0.783376, -0.551609,
		0.613892, -0.291958, 0.733415,
		-0.735586, -0.548710, 0.397279,
		44.710911, 32.026360, 22.750261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555134, 31.782310, 22.573526>,  <45.225822, 32.410454, 22.472168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555134, 31.782310, 22.573526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.160442, 31.717695, 22.566843>,  <44.923630, 31.678926, 22.562834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.160442, 31.717695, 22.566843>,  <45.555134, 31.782310, 22.573526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160442, 31.717695, 22.566843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138977, -0.786690, -0.601501,
		0.084023, -0.595838, 0.798697,
		-0.986724, -0.161540, -0.016707,
		44.864426, 31.669233, 22.561831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430790, 31.078152, 22.805628>,  <45.555134, 31.782310, 22.573526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430790, 31.078152, 22.805628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.142765, 31.192297, 22.552622>,  <44.969948, 31.260784, 22.400818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.142765, 31.192297, 22.552622>,  <45.430790, 31.078152, 22.805628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142765, 31.192297, 22.552622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205428, -0.783003, -0.587116,
		-0.662802, -0.552698, 0.505192,
		-0.720065, 0.285361, -0.632516,
		44.926746, 31.277905, 22.362867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060413, 30.458748, 22.612259>,  <45.430790, 31.078152, 22.805628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060413, 30.458748, 22.612259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.956131, 30.715155, 22.323502>,  <44.893562, 30.868999, 22.150248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.956131, 30.715155, 22.323502>,  <45.060413, 30.458748, 22.612259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956131, 30.715155, 22.323502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110896, -0.722918, -0.681976,
		-0.959027, -0.257853, 0.117385,
		-0.260710, 0.641016, -0.721893,
		44.877918, 30.907459, 22.106934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775429, 29.948267, 22.169973>,  <45.060413, 30.458748, 22.612259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775429, 29.948267, 22.169973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.769474, 30.279362, 21.945606>,  <44.765900, 30.478020, 21.810986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.769474, 30.279362, 21.945606>,  <44.775429, 29.948267, 22.169973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769474, 30.279362, 21.945606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152345, -0.552552, -0.819437,
		-0.988215, -0.097655, -0.117874,
		-0.014891, 0.827738, -0.560917,
		44.765007, 30.527683, 21.777330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263863, 29.914705, 21.647984>,  <44.775429, 29.948267, 22.169973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263863, 29.914705, 21.647984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.556519, 30.151672, 21.513077>,  <44.732113, 30.293852, 21.432133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.556519, 30.151672, 21.513077>,  <44.263863, 29.914705, 21.647984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556519, 30.151672, 21.513077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100327, -0.582935, -0.806301,
		-0.674270, 0.556084, -0.485933,
		0.731638, 0.592416, -0.337265,
		44.776009, 30.329397, 21.411898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121326, 29.967537, 20.977610>,  <44.263863, 29.914705, 21.647984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121326, 29.967537, 20.977610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.514217, 30.042591, 20.979740>,  <44.749950, 30.087624, 20.981018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.514217, 30.042591, 20.979740>,  <44.121326, 29.967537, 20.977610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514217, 30.042591, 20.979740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116097, -0.584957, -0.802712,
		-0.147504, 0.789061, -0.596343,
		0.982224, 0.187637, 0.005324,
		44.808884, 30.098883, 20.981337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255287, 30.042654, 20.282911>,  <44.121326, 29.967537, 20.977610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255287, 30.042654, 20.282911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.603291, 29.983372, 20.471006>,  <44.812092, 29.947802, 20.583862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.603291, 29.983372, 20.471006>,  <44.255287, 30.042654, 20.282911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603291, 29.983372, 20.471006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281628, -0.633461, -0.720703,
		0.404689, 0.759448, -0.509377,
		0.870007, -0.148205, 0.470237,
		44.864292, 29.938910, 20.612078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787437, 30.152260, 19.777409>,  <44.255287, 30.042654, 20.282911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787437, 30.152260, 19.777409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.935173, 29.933130, 20.077669>,  <45.023815, 29.801653, 20.257826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.935173, 29.933130, 20.077669>,  <44.787437, 30.152260, 19.777409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935173, 29.933130, 20.077669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331569, -0.676917, -0.657149,
		0.868132, 0.491601, -0.068368,
		0.369335, -0.547824, 0.750654,
		45.045975, 29.768784, 20.302866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428551, 29.831352, 19.527077>,  <44.787437, 30.152260, 19.777409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428551, 29.831352, 19.527077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.338280, 29.595701, 19.837431>,  <45.284119, 29.454309, 20.023643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.338280, 29.595701, 19.837431>,  <45.428551, 29.831352, 19.527077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338280, 29.595701, 19.837431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435375, -0.773463, -0.460657,
		0.871505, 0.233843, 0.431041,
		-0.225673, -0.589129, 0.775886,
		45.270576, 29.418962, 20.070196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105553, 29.474358, 19.846720>,  <45.428551, 29.831352, 19.527077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105553, 29.474358, 19.846720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.775864, 29.265617, 19.934652>,  <45.578049, 29.140373, 19.987411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.775864, 29.265617, 19.934652>,  <46.105553, 29.474358, 19.846720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775864, 29.265617, 19.934652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391637, -0.805731, -0.444316,
		0.408992, -0.280122, 0.868480,
		-0.824224, -0.521851, 0.219832,
		45.528595, 29.109062, 20.000603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254105, 28.833990, 20.352377>,  <46.105553, 29.474358, 19.846720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254105, 28.833990, 20.352377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.925697, 28.766033, 20.134359>,  <45.728653, 28.725260, 20.003550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.925697, 28.766033, 20.134359>,  <46.254105, 28.833990, 20.352377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925697, 28.766033, 20.134359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436676, -0.801861, -0.407839,
		-0.367760, -0.572849, 0.732527,
		-0.821015, -0.169890, -0.545042,
		45.679394, 28.715067, 19.970846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025551, 28.226004, 20.441963>,  <46.254105, 28.833990, 20.352377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025551, 28.226004, 20.441963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.845325, 28.281683, 20.089233>,  <45.737190, 28.315090, 19.877596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.845325, 28.281683, 20.089233>,  <46.025551, 28.226004, 20.441963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845325, 28.281683, 20.089233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541862, -0.742370, -0.394046,
		-0.709491, -0.655370, 0.259059,
		-0.450564, 0.139198, -0.881825,
		45.710155, 28.323442, 19.824686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139900, 27.799513, 20.986332>,  <46.025551, 28.226004, 20.441963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139900, 27.799513, 20.986332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.961746, 27.469133, 20.848093>,  <45.854855, 27.270905, 20.765150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.961746, 27.469133, 20.848093>,  <46.139900, 27.799513, 20.986332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961746, 27.469133, 20.848093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761603, 0.146559, 0.631253,
		-0.470734, 0.544358, -0.694322,
		-0.445387, -0.825950, -0.345595,
		45.828129, 27.221348, 20.744415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356911, 27.881651, 20.736256>,  <46.139900, 27.799513, 20.986332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356911, 27.881651, 20.736256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.431759, 27.514271, 20.875647>,  <45.476665, 27.293842, 20.959280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.431759, 27.514271, 20.875647>,  <45.356911, 27.881651, 20.736256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431759, 27.514271, 20.875647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696853, 0.125926, 0.706073,
		-0.692375, -0.374954, -0.616462,
		0.187116, -0.918451, 0.348476,
		45.487892, 27.238735, 20.980190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708084, 27.562754, 20.800144>,  <45.356911, 27.881651, 20.736256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708084, 27.562754, 20.800144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.982723, 27.385656, 21.030819>,  <45.147507, 27.279398, 21.169224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.982723, 27.385656, 21.030819>,  <44.708084, 27.562754, 20.800144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982723, 27.385656, 21.030819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584756, 0.135056, 0.799888,
		-0.432031, -0.886418, -0.166169,
		0.686593, -0.442744, 0.576686,
		45.188702, 27.252832, 21.203825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350159, 26.977152, 21.092659>,  <44.708084, 27.562754, 20.800144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350159, 26.977152, 21.092659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.663521, 27.058075, 21.327726>,  <44.851536, 27.106628, 21.468767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.663521, 27.058075, 21.327726>,  <44.350159, 26.977152, 21.092659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663521, 27.058075, 21.327726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621512, 0.258849, 0.739405,
		-0.002530, -0.944494, 0.328519,
		0.783401, 0.202308, 0.587669,
		44.898540, 27.118767, 21.504026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012856, 26.859865, 21.706152>,  <44.350159, 26.977152, 21.092659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012856, 26.859865, 21.706152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.349869, 27.056099, 21.795120>,  <44.552074, 27.173840, 21.848501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.349869, 27.056099, 21.795120>,  <44.012856, 26.859865, 21.706152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349869, 27.056099, 21.795120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426259, 0.354795, 0.832120,
		0.329299, -0.795902, 0.508037,
		0.842535, 0.490571, 0.222427,
		44.602627, 27.203274, 21.861847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188881, 26.790485, 22.375925>,  <44.012856, 26.859865, 21.706152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188881, 26.790485, 22.375925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.393528, 27.127018, 22.306175>,  <44.516315, 27.328938, 22.264324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.393528, 27.127018, 22.306175>,  <44.188881, 26.790485, 22.375925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393528, 27.127018, 22.306175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309353, 0.369709, 0.876137,
		0.801591, -0.394304, 0.449418,
		0.511618, 0.841332, -0.174376,
		44.547012, 27.379417, 22.253862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396877, 27.050116, 23.111414>,  <44.188881, 26.790485, 22.375925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396877, 27.050116, 23.111414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.449333, 27.353361, 22.855894>,  <44.480808, 27.535309, 22.702581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.449333, 27.353361, 22.855894>,  <44.396877, 27.050116, 23.111414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449333, 27.353361, 22.855894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302942, 0.644188, 0.702316,
		0.943943, 0.101417, 0.314144,
		0.131140, 0.758114, -0.638800,
		44.488674, 27.580795, 22.664253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764278, 27.549770, 23.507488>,  <44.396877, 27.050116, 23.111414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764278, 27.549770, 23.507488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.562222, 27.723961, 23.209444>,  <44.440987, 27.828476, 23.030617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.562222, 27.723961, 23.209444>,  <44.764278, 27.549770, 23.507488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562222, 27.723961, 23.209444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394098, 0.651698, 0.648056,
		0.767800, 0.621008, -0.157580,
		-0.505143, 0.435475, -0.745112,
		44.410679, 27.854603, 22.985910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945808, 28.296375, 23.574619>,  <44.764278, 27.549770, 23.507488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945808, 28.296375, 23.574619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.618832, 28.277386, 23.344999>,  <44.422646, 28.265993, 23.207228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.618832, 28.277386, 23.344999>,  <44.945808, 28.296375, 23.574619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618832, 28.277386, 23.344999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428492, 0.716135, 0.550949,
		0.384941, 0.696345, -0.605743,
		-0.817444, -0.047473, -0.574048,
		44.373600, 28.263144, 23.172785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741779, 29.021439, 23.565536>,  <44.945808, 28.296375, 23.574619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741779, 29.021439, 23.565536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.431313, 28.794800, 23.454880>,  <44.245033, 28.658815, 23.388485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.431313, 28.794800, 23.454880>,  <44.741779, 29.021439, 23.565536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431313, 28.794800, 23.454880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621370, 0.612834, 0.488195,
		-0.107074, 0.550818, -0.827728,
		-0.776167, -0.566598, -0.276643,
		44.198463, 28.624821, 23.371887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215282, 29.443518, 23.348764>,  <44.741779, 29.021439, 23.565536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215282, 29.443518, 23.348764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.033436, 29.105799, 23.462244>,  <43.924328, 28.903168, 23.530333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.033436, 29.105799, 23.462244>,  <44.215282, 29.443518, 23.348764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033436, 29.105799, 23.462244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544955, 0.515607, 0.661190,
		-0.704519, 0.145984, -0.694508,
		-0.454616, -0.844297, 0.283701,
		43.897053, 28.852510, 23.547354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535995, 29.686775, 23.481291>,  <44.215282, 29.443518, 23.348764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535995, 29.686775, 23.481291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.554253, 29.327940, 23.657087>,  <43.565208, 29.112638, 23.762566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.554253, 29.327940, 23.657087>,  <43.535995, 29.686775, 23.481291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554253, 29.327940, 23.657087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508706, 0.357760, 0.783088,
		-0.859730, -0.259315, -0.440023,
		0.045644, -0.897086, 0.439492,
		43.567947, 29.058815, 23.788935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804043, 29.493948, 23.603430>,  <43.535995, 29.686775, 23.481291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804043, 29.493948, 23.603430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.020977, 29.297987, 23.876448>,  <43.151138, 29.180410, 24.040258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.020977, 29.297987, 23.876448>,  <42.804043, 29.493948, 23.603430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020977, 29.297987, 23.876448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613793, 0.323707, 0.720050,
		-0.573698, -0.809451, -0.125139,
		0.542336, -0.489901, 0.682545,
		43.183678, 29.151016, 24.081211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329597, 29.174816, 23.869339>,  <42.804043, 29.493948, 23.603430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329597, 29.174816, 23.869339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.626690, 29.201115, 24.135880>,  <42.804947, 29.216894, 24.295803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.626690, 29.201115, 24.135880>,  <42.329597, 29.174816, 23.869339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626690, 29.201115, 24.135880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659908, 0.240462, 0.711828,
		-0.113434, -0.968429, 0.221984,
		0.742734, 0.065744, 0.666351,
		42.849510, 29.220839, 24.335785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979031, 28.905485, 24.556154>,  <42.329597, 29.174816, 23.869339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979031, 28.905485, 24.556154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.306496, 29.112818, 24.655041>,  <42.502975, 29.237217, 24.714373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.306496, 29.112818, 24.655041>,  <41.979031, 28.905485, 24.556154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306496, 29.112818, 24.655041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494789, 0.418144, 0.761800,
		0.291493, -0.745981, 0.598785,
		0.818667, 0.518332, 0.247217,
		42.552097, 29.268318, 24.729206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135788, 28.270193, 25.039608>,  <41.979031, 28.905485, 24.556154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135788, 28.270193, 25.039608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.847126, 27.996273, 25.080139>,  <41.673931, 27.831921, 25.104458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.847126, 27.996273, 25.080139>,  <42.135788, 28.270193, 25.039608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847126, 27.996273, 25.080139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205576, -0.351768, -0.913235,
		0.661027, -0.638207, 0.394633,
		-0.721652, -0.684800, 0.101328,
		41.630630, 27.790833, 25.110538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424541, 27.628151, 24.897707>,  <42.135788, 28.270193, 25.039608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424541, 27.628151, 24.897707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.035049, 27.544657, 24.861294>,  <41.801353, 27.494560, 24.839445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.035049, 27.544657, 24.861294>,  <42.424541, 27.628151, 24.897707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035049, 27.544657, 24.861294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159964, -0.342436, -0.925823,
		0.162081, -0.916060, 0.366829,
		-0.973726, -0.208738, -0.091035,
		41.742931, 27.482035, 24.833982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463631, 27.087042, 24.457006>,  <42.424541, 27.628151, 24.897707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463631, 27.087042, 24.457006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.082993, 27.209042, 24.441813>,  <41.854610, 27.282242, 24.432697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.082993, 27.209042, 24.441813>,  <42.463631, 27.087042, 24.457006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082993, 27.209042, 24.441813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078780, -0.361487, -0.929043,
		-0.297087, -0.881081, 0.368017,
		-0.951595, 0.304999, -0.037982,
		41.797516, 27.300541, 24.430418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128536, 26.458609, 24.400887>,  <42.463631, 27.087042, 24.457006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128536, 26.458609, 24.400887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904675, 26.746168, 24.235973>,  <41.770359, 26.918703, 24.137026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904675, 26.746168, 24.235973>,  <42.128536, 26.458609, 24.400887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904675, 26.746168, 24.235973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121550, -0.563313, -0.817254,
		-0.819765, -0.407265, 0.402641,
		-0.559652, 0.718898, -0.412281,
		41.736778, 26.961838, 24.112289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550774, 26.152239, 24.131617>,  <42.128536, 26.458609, 24.400887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550774, 26.152239, 24.131617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557934, 26.480213, 23.902746>,  <41.562229, 26.676998, 23.765423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557934, 26.480213, 23.902746>,  <41.550774, 26.152239, 24.131617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557934, 26.480213, 23.902746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160122, -0.562531, -0.811123,
		-0.986935, 0.106141, 0.121218,
		0.017904, 0.819935, -0.572177,
		41.563305, 26.726194, 23.731092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947693, 26.208332, 23.763397>,  <41.550774, 26.152239, 24.131617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947693, 26.208332, 23.763397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195293, 26.442881, 23.554396>,  <41.343853, 26.583609, 23.428995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195293, 26.442881, 23.554396>,  <40.947693, 26.208332, 23.763397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195293, 26.442881, 23.554396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304761, -0.433824, -0.847890,
		-0.723852, 0.684081, -0.089833,
		0.618998, 0.586370, -0.522506,
		41.380993, 26.618792, 23.397644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670937, 26.442455, 23.116337>,  <40.947693, 26.208332, 23.763397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670937, 26.442455, 23.116337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.058956, 26.431541, 23.019781>,  <41.291767, 26.424994, 22.961847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.058956, 26.431541, 23.019781>,  <40.670937, 26.442455, 23.116337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058956, 26.431541, 23.019781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233553, -0.378125, -0.895809,
		-0.066832, 0.925352, -0.373171,
		0.970045, -0.027286, -0.241389,
		41.349968, 26.423355, 22.947365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537231, 26.972961, 22.604900>,  <40.670937, 26.442455, 23.116337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537231, 26.972961, 22.604900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.179035, 26.986959, 22.427420>,  <39.964119, 26.995358, 22.320930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.179035, 26.986959, 22.427420>,  <40.537231, 26.972961, 22.604900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179035, 26.986959, 22.427420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352207, 0.553778, 0.754506,
		0.272115, 0.831928, -0.483578,
		-0.895491, 0.034993, -0.443702,
		39.910389, 26.997458, 22.294310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284576, 27.704802, 22.545002>,  <40.537231, 26.972961, 22.604900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284576, 27.704802, 22.545002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.966690, 27.462849, 22.565187>,  <39.775959, 27.317677, 22.577299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.966690, 27.462849, 22.565187>,  <40.284576, 27.704802, 22.545002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966690, 27.462849, 22.565187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364567, 0.542142, 0.757082,
		-0.485306, 0.583264, -0.651368,
		-0.794713, -0.604884, 0.050466,
		39.728275, 27.281384, 22.580328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743202, 28.129780, 22.806347>,  <40.284576, 27.704802, 22.545002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743202, 28.129780, 22.806347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.579823, 27.770962, 22.873848>,  <39.481796, 27.555670, 22.914349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.579823, 27.770962, 22.873848>,  <39.743202, 28.129780, 22.806347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579823, 27.770962, 22.873848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475600, 0.366951, 0.799469,
		-0.779086, 0.246282, -0.576516,
		-0.408448, -0.897046, 0.168754,
		39.457287, 27.501848, 22.924475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051937, 28.270351, 22.805212>,  <39.743202, 28.129780, 22.806347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051937, 28.270351, 22.805212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.099537, 27.920910, 22.993956>,  <39.128098, 27.711245, 23.107203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.099537, 27.920910, 22.993956>,  <39.051937, 28.270351, 22.805212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099537, 27.920910, 22.993956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632793, 0.299485, 0.714060,
		-0.765121, -0.383566, -0.517171,
		0.119004, -0.873605, 0.471861,
		39.135239, 27.658829, 23.135513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375843, 28.130621, 23.135725>,  <39.051937, 28.270351, 22.805212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375843, 28.130621, 23.135725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.643181, 27.908146, 23.333300>,  <38.803585, 27.774662, 23.451843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.643181, 27.908146, 23.333300>,  <38.375843, 28.130621, 23.135725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643181, 27.908146, 23.333300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441928, 0.237238, 0.865111,
		-0.598344, -0.796476, -0.087238,
		0.668344, -0.556187, 0.493935,
		38.843685, 27.741289, 23.481480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980270, 27.709843, 23.431187>,  <38.375843, 28.130621, 23.135725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980270, 27.709843, 23.431187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317043, 27.726885, 23.646345>,  <38.519108, 27.737110, 23.775440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317043, 27.726885, 23.646345>,  <37.980270, 27.709843, 23.431187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317043, 27.726885, 23.646345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537524, 0.153216, 0.829212,
		-0.047087, -0.987274, 0.151898,
		0.841933, 0.042604, 0.537898,
		38.569622, 27.739666, 23.807714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931988, 27.290642, 24.006229>,  <37.980270, 27.709843, 23.431187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931988, 27.290642, 24.006229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219090, 27.548513, 24.111460>,  <38.391350, 27.703238, 24.174599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219090, 27.548513, 24.111460>,  <37.931988, 27.290642, 24.006229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219090, 27.548513, 24.111460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445163, 0.134352, 0.885313,
		0.535400, -0.752553, 0.383420,
		0.717758, 0.644681, 0.263077,
		38.434418, 27.741919, 24.190382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.111958, 28.827482, 19.227739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.480049, 28.803495, 19.382446>,  <42.700905, 28.789103, 19.475271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.480049, 28.803495, 19.382446>,  <42.111958, 28.827482, 19.227739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480049, 28.803495, 19.382446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285638, 0.572682, 0.768405,
		-0.267575, -0.817581, 0.509867,
		0.920225, -0.059968, 0.386768,
		42.756115, 28.785505, 19.498476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020630, 28.592405, 20.029968>,  <42.111958, 28.827482, 19.227739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020630, 28.592405, 20.029968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.360649, 28.788452, 19.952808>,  <42.564659, 28.906080, 19.906513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.360649, 28.788452, 19.952808>,  <42.020630, 28.592405, 20.029968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360649, 28.788452, 19.952808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185226, 0.621000, 0.761611,
		0.493069, -0.611673, 0.618660,
		0.850044, 0.490118, -0.192898,
		42.615662, 28.935488, 19.894939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372261, 28.670876, 20.664251>,  <42.020630, 28.592405, 20.029968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372261, 28.670876, 20.664251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.520428, 28.956257, 20.426336>,  <42.609329, 29.127485, 20.283588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.520428, 28.956257, 20.426336>,  <42.372261, 28.670876, 20.664251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520428, 28.956257, 20.426336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035326, 0.650694, 0.758518,
		0.928192, -0.259959, 0.266234,
		0.370420, 0.713455, -0.594786,
		42.631554, 29.170294, 20.247900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772911, 28.994303, 21.093615>,  <42.372261, 28.670876, 20.664251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772911, 28.994303, 21.093615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.760242, 29.254826, 20.790354>,  <42.752644, 29.411139, 20.608397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.760242, 29.254826, 20.790354>,  <42.772911, 28.994303, 21.093615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760242, 29.254826, 20.790354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026988, 0.758814, 0.650748,
		0.999134, 0.000148, -0.041608,
		-0.031669, 0.651307, -0.758153,
		42.750740, 29.450218, 20.562908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276505, 29.515373, 21.269270>,  <42.772911, 28.994303, 21.093615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276505, 29.515373, 21.269270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.987000, 29.655128, 21.031248>,  <42.813297, 29.738981, 20.888435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.987000, 29.655128, 21.031248>,  <43.276505, 29.515373, 21.269270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987000, 29.655128, 21.031248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279519, 0.639983, 0.715745,
		0.630897, 0.684362, -0.365538,
		-0.723767, 0.349386, -0.595056,
		42.769871, 29.759945, 20.852732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111763, 30.164007, 21.559347>,  <43.276505, 29.515373, 21.269270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111763, 30.164007, 21.559347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.807419, 30.164518, 21.299782>,  <42.624813, 30.164825, 21.144043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.807419, 30.164518, 21.299782>,  <43.111763, 30.164007, 21.559347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807419, 30.164518, 21.299782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458458, 0.706657, 0.538937,
		0.459249, 0.707555, -0.537081,
		-0.760860, 0.001277, -0.648915,
		42.579163, 30.164902, 21.105106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992325, 30.852896, 21.397633>,  <43.111763, 30.164007, 21.559347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992325, 30.852896, 21.397633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.655087, 30.649326, 21.328131>,  <42.452744, 30.527185, 21.286430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.655087, 30.649326, 21.328131>,  <42.992325, 30.852896, 21.397633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655087, 30.649326, 21.328131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520105, 0.689550, 0.503995,
		-0.136683, 0.515286, -0.846049,
		-0.843095, -0.508922, -0.173753,
		42.402157, 30.496651, 21.276005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520664, 31.404181, 21.202299>,  <42.992325, 30.852896, 21.397633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520664, 31.404181, 21.202299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.305737, 31.085257, 21.312269>,  <42.176781, 30.893902, 21.378252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.305737, 31.085257, 21.312269>,  <42.520664, 31.404181, 21.202299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305737, 31.085257, 21.312269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663598, 0.600869, 0.445640,
		-0.520509, 0.057009, -0.851951,
		-0.537316, -0.797312, 0.274926,
		42.144543, 30.846064, 21.394747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800827, 31.496271, 20.933681>,  <42.520664, 31.404181, 21.202299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800827, 31.496271, 20.933681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.785892, 31.230339, 21.232105>,  <41.776932, 31.070780, 21.411160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.785892, 31.230339, 21.232105>,  <41.800827, 31.496271, 20.933681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785892, 31.230339, 21.232105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739989, 0.520137, 0.426466,
		-0.671581, -0.536153, -0.511389,
		-0.037341, -0.664829, 0.746062,
		41.774689, 31.030890, 21.455923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115593, 31.343056, 21.063915>,  <41.800827, 31.496271, 20.933681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115593, 31.343056, 21.063915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.272518, 31.230196, 21.414110>,  <41.366673, 31.162479, 21.624228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.272518, 31.230196, 21.414110>,  <41.115593, 31.343056, 21.063915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272518, 31.230196, 21.414110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766135, 0.426502, 0.480764,
		-0.509046, -0.859352, -0.048844,
		0.392313, -0.282152, 0.875489,
		41.390213, 31.145550, 21.676756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590523, 30.951763, 21.478453>,  <41.115593, 31.343056, 21.063915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590523, 30.951763, 21.478453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.857193, 31.074421, 21.750193>,  <41.017197, 31.148016, 21.913237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.857193, 31.074421, 21.750193>,  <40.590523, 30.951763, 21.478453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857193, 31.074421, 21.750193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744286, 0.322553, 0.584806,
		-0.039799, -0.895505, 0.443269,
		0.666675, 0.306644, 0.679349,
		41.057194, 31.166414, 21.953997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336365, 30.872471, 22.170519>,  <40.590523, 30.951763, 21.478453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336365, 30.872471, 22.170519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.645313, 31.115986, 22.242992>,  <40.830681, 31.262094, 22.286476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.645313, 31.115986, 22.242992>,  <40.336365, 30.872471, 22.170519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645313, 31.115986, 22.242992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487957, 0.386088, 0.782837,
		0.406637, -0.693040, 0.595266,
		0.772362, 0.608795, 0.181176,
		40.877022, 31.298622, 22.297348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913929, 30.327234, 22.351116>,  <40.336365, 30.872471, 22.170519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913929, 30.327234, 22.351116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.589344, 30.407913, 22.131716>,  <39.394592, 30.456320, 22.000074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.589344, 30.407913, 22.131716>,  <39.913929, 30.327234, 22.351116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589344, 30.407913, 22.131716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440042, -0.406749, -0.800573,
		-0.384576, -0.890996, 0.241305,
		-0.811458, 0.201697, -0.548502,
		39.345905, 30.468422, 21.967165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751377, 29.758249, 22.024525>,  <39.913929, 30.327234, 22.351116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751377, 29.758249, 22.024525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594318, 30.052843, 21.804190>,  <39.500084, 30.229599, 21.671988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594318, 30.052843, 21.804190>,  <39.751377, 29.758249, 22.024525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594318, 30.052843, 21.804190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452353, -0.366831, -0.812904,
		-0.800755, -0.568355, -0.189116,
		-0.392644, 0.736483, -0.550839,
		39.476524, 30.273788, 21.638939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686752, 29.316265, 21.481455>,  <39.751377, 29.758249, 22.024525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686752, 29.316265, 21.481455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592339, 29.691460, 21.379892>,  <39.535690, 29.916576, 21.318954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592339, 29.691460, 21.379892>,  <39.686752, 29.316265, 21.481455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592339, 29.691460, 21.379892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270090, -0.187671, -0.944368,
		-0.933456, -0.291478, -0.209045,
		-0.236030, 0.937987, -0.253908,
		39.521530, 29.972857, 21.303720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232651, 29.232906, 20.934040>,  <39.686752, 29.316265, 21.481455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232651, 29.232906, 20.934040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.408298, 29.589464, 20.889156>,  <39.513687, 29.803400, 20.862226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.408298, 29.589464, 20.889156>,  <39.232651, 29.232906, 20.934040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408298, 29.589464, 20.889156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121025, -0.182448, -0.975739,
		-0.890242, 0.414881, -0.187997,
		0.439115, 0.891396, -0.112212,
		39.540031, 29.856882, 20.855494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937305, 29.436310, 20.325628>,  <39.232651, 29.232906, 20.934040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937305, 29.436310, 20.325628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.264198, 29.663797, 20.362896>,  <39.460335, 29.800291, 20.385258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.264198, 29.663797, 20.362896>,  <38.937305, 29.436310, 20.325628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264198, 29.663797, 20.362896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198591, -0.126142, -0.971931,
		-0.541004, 0.812801, -0.216031,
		0.817237, 0.568721, 0.093171,
		39.509369, 29.834414, 20.390848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909344, 29.913040, 19.857117>,  <38.937305, 29.436310, 20.325628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909344, 29.913040, 19.857117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300266, 29.884026, 19.936735>,  <39.534821, 29.866617, 19.984507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300266, 29.884026, 19.936735>,  <38.909344, 29.913040, 19.857117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300266, 29.884026, 19.936735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184737, -0.168083, -0.968308,
		0.103696, 0.983100, -0.150868,
		0.977302, -0.072538, 0.199044,
		39.593456, 29.862265, 19.996449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247677, 30.136797, 19.341894>,  <38.909344, 29.913040, 19.857117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247677, 30.136797, 19.341894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.547302, 29.940544, 19.519962>,  <39.727077, 29.822792, 19.626804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.547302, 29.940544, 19.519962>,  <39.247677, 30.136797, 19.341894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547302, 29.940544, 19.519962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276483, -0.379132, -0.883072,
		0.602044, 0.784562, -0.148342,
		0.749066, -0.490634, 0.445172,
		39.772022, 29.793354, 19.653515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817791, 30.197624, 18.903282>,  <39.247677, 30.136797, 19.341894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817791, 30.197624, 18.903282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.915958, 29.884514, 19.132029>,  <39.974861, 29.696648, 19.269276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.915958, 29.884514, 19.132029>,  <39.817791, 30.197624, 18.903282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915958, 29.884514, 19.132029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275123, -0.509410, -0.815358,
		0.929557, 0.357439, 0.090339,
		0.245421, -0.782776, 0.571865,
		39.989586, 29.649681, 19.303589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488037, 30.055653, 18.625681>,  <39.817791, 30.197624, 18.903282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488037, 30.055653, 18.625681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.335590, 29.734903, 18.809744>,  <40.244122, 29.542454, 18.920181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.335590, 29.734903, 18.809744>,  <40.488037, 30.055653, 18.625681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335590, 29.734903, 18.809744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326742, -0.582427, -0.744325,
		0.864862, -0.133325, 0.483981,
		-0.381121, -0.801875, 0.460156,
		40.221252, 29.494341, 18.947790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955276, 29.497046, 18.572456>,  <40.488037, 30.055653, 18.625681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955276, 29.497046, 18.572456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.591854, 29.344522, 18.640724>,  <40.373798, 29.253010, 18.681684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.591854, 29.344522, 18.640724>,  <40.955276, 29.497046, 18.572456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591854, 29.344522, 18.640724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163163, -0.699980, -0.695274,
		0.384579, -0.603849, 0.698187,
		-0.908558, -0.381306, 0.170671,
		40.319286, 29.230131, 18.691925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148376, 28.873682, 18.681549>,  <40.955276, 29.497046, 18.572456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148376, 28.873682, 18.681549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.755684, 28.833963, 18.616621>,  <40.520069, 28.810131, 18.577663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.755684, 28.833963, 18.616621>,  <41.148376, 28.873682, 18.681549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755684, 28.833963, 18.616621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146711, -0.938233, -0.313360,
		-0.121179, -0.331449, 0.935659,
		-0.981729, -0.099299, -0.162322,
		40.461166, 28.804174, 18.567924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001671, 28.210411, 18.899651>,  <41.148376, 28.873682, 18.681549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001671, 28.210411, 18.899651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.699657, 28.311201, 18.657516>,  <40.518448, 28.371675, 18.512236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.699657, 28.311201, 18.657516>,  <41.001671, 28.210411, 18.899651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699657, 28.311201, 18.657516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148964, -0.833152, -0.532604,
		-0.638540, -0.492308, 0.591524,
		-0.755035, 0.251973, -0.605337,
		40.473148, 28.386793, 18.475916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670540, 27.602243, 18.829216>,  <41.001671, 28.210411, 18.899651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670540, 27.602243, 18.829216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534653, 27.820671, 18.522907>,  <40.453121, 27.951727, 18.339123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534653, 27.820671, 18.522907>,  <40.670540, 27.602243, 18.829216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534653, 27.820671, 18.522907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031859, -0.820406, -0.570894,
		-0.939989, -0.169544, 0.296099,
		-0.339713, 0.546067, -0.765771,
		40.432739, 27.984491, 18.293177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153950, 27.185715, 18.495708>,  <40.670540, 27.602243, 18.829216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153950, 27.185715, 18.495708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.264378, 27.442320, 18.209421>,  <40.330635, 27.596283, 18.037649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.264378, 27.442320, 18.209421>,  <40.153950, 27.185715, 18.495708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264378, 27.442320, 18.209421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218961, -0.767051, -0.603066,
		-0.935865, 0.009772, -0.352223,
		0.276066, 0.641512, -0.715716,
		40.347198, 27.634773, 17.994707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985924, 27.209299, 19.217167>,  <40.153950, 27.185715, 18.495708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985924, 27.209299, 19.217167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.110413, 26.833527, 19.274584>,  <40.185108, 26.608063, 19.309034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.110413, 26.833527, 19.274584>,  <39.985924, 27.209299, 19.217167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110413, 26.833527, 19.274584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430008, -0.004510, 0.902814,
		-0.847486, -0.342704, -0.405367,
		0.311226, -0.939433, 0.143543,
		40.203781, 26.551697, 19.317646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420681, 26.963900, 19.697290>,  <39.985924, 27.209299, 19.217167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420681, 26.963900, 19.697290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.731678, 26.717218, 19.746576>,  <39.918278, 26.569210, 19.776148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.731678, 26.717218, 19.746576>,  <39.420681, 26.963900, 19.697290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731678, 26.717218, 19.746576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131467, 0.032214, 0.990797,
		-0.614998, -0.786535, -0.056030,
		0.777492, -0.616705, 0.123215,
		39.964924, 26.532207, 19.783541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299530, 26.394819, 20.154144>,  <39.420681, 26.963900, 19.697290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299530, 26.394819, 20.154144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.694580, 26.447004, 20.188974>,  <39.931610, 26.478315, 20.209873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.694580, 26.447004, 20.188974>,  <39.299530, 26.394819, 20.154144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694580, 26.447004, 20.188974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093956, 0.047530, 0.994441,
		0.125601, -0.990313, 0.059199,
		0.987621, 0.130465, 0.087076,
		39.990868, 26.486143, 20.215097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471859, 25.862343, 20.552269>,  <39.299530, 26.394819, 20.154144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471859, 25.862343, 20.552269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.734657, 26.163116, 20.573988>,  <39.892338, 26.343580, 20.587019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.734657, 26.163116, 20.573988>,  <39.471859, 25.862343, 20.552269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734657, 26.163116, 20.573988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244397, 0.144301, 0.958878,
		0.713179, -0.643250, 0.278576,
		0.656997, 0.751935, 0.054296,
		39.931755, 26.388697, 20.590277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873238, 25.658003, 21.157753>,  <39.471859, 25.862343, 20.552269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873238, 25.658003, 21.157753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.941399, 26.050098, 21.117567>,  <39.982296, 26.285357, 21.093456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.941399, 26.050098, 21.117567>,  <39.873238, 25.658003, 21.157753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941399, 26.050098, 21.117567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156319, 0.127555, 0.979435,
		0.972896, -0.151197, 0.174966,
		0.170406, 0.980239, -0.100463,
		39.992519, 26.344170, 21.087429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181702, 25.835121, 21.831345>,  <39.873238, 25.658003, 21.157753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181702, 25.835121, 21.831345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073975, 26.193117, 21.689098>,  <40.009338, 26.407915, 21.603750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073975, 26.193117, 21.689098>,  <40.181702, 25.835121, 21.831345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073975, 26.193117, 21.689098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132176, 0.331416, 0.934180,
		0.953938, 0.298596, 0.029039,
		-0.269319, 0.894988, -0.355618,
		39.993179, 26.461613, 21.582413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656811, 26.395071, 22.102564>,  <40.181702, 25.835121, 21.831345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656811, 26.395071, 22.102564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.310532, 26.577240, 22.019464>,  <40.102764, 26.686543, 21.969604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.310532, 26.577240, 22.019464>,  <40.656811, 26.395071, 22.102564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310532, 26.577240, 22.019464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037362, 0.355077, 0.934090,
		0.499174, 0.816400, -0.290373,
		-0.865696, 0.455424, -0.207748,
		40.050823, 26.713867, 21.957140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232536, 26.757652, 21.842783>,  <40.656811, 26.395071, 22.102564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232536, 26.757652, 21.842783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.493725, 26.647871, 22.125145>,  <41.650436, 26.582003, 22.294563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.493725, 26.647871, 22.125145>,  <41.232536, 26.757652, 21.842783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493725, 26.647871, 22.125145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651005, -0.272939, -0.708306,
		0.387065, 0.922052, 0.000447,
		0.652973, -0.274451, 0.705906,
		41.689617, 26.565536, 22.336916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861984, 26.995253, 21.574448>,  <41.232536, 26.757652, 21.842783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861984, 26.995253, 21.574448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.952641, 26.730303, 21.860075>,  <42.007034, 26.571333, 22.031452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.952641, 26.730303, 21.860075>,  <41.861984, 26.995253, 21.574448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952641, 26.730303, 21.860075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730194, -0.369626, -0.574625,
		0.644554, 0.651644, 0.399888,
		0.226642, -0.662372, 0.714070,
		42.020634, 26.531591, 22.074297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497997, 27.044155, 21.740265>,  <41.861984, 26.995253, 21.574448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497997, 27.044155, 21.740265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.432755, 26.673515, 21.875797>,  <42.393608, 26.451132, 21.957117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.432755, 26.673515, 21.875797>,  <42.497997, 27.044155, 21.740265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432755, 26.673515, 21.875797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806553, -0.323023, -0.495104,
		0.568214, 0.192527, 0.800041,
		-0.163111, -0.926601, 0.338830,
		42.383820, 26.395535, 21.977446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119553, 26.840227, 21.903824>,  <42.497997, 27.044155, 21.740265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119553, 26.840227, 21.903824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.901066, 26.508644, 21.855701>,  <42.769974, 26.309694, 21.826828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.901066, 26.508644, 21.855701>,  <43.119553, 26.840227, 21.903824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901066, 26.508644, 21.855701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720916, -0.392096, -0.571437,
		0.426524, -0.398862, 0.811779,
		-0.546220, -0.828957, -0.120308,
		42.737198, 26.259956, 21.819609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586735, 26.371452, 22.016361>,  <43.119553, 26.840227, 21.903824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586735, 26.371452, 22.016361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.317371, 26.176764, 21.793787>,  <43.155754, 26.059950, 21.660242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.317371, 26.176764, 21.793787>,  <43.586735, 26.371452, 22.016361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317371, 26.176764, 21.793787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710717, -0.219067, -0.668498,
		0.203477, -0.845641, 0.493445,
		-0.673407, -0.486724, -0.556436,
		43.115349, 26.030746, 21.626856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965439, 25.881731, 21.794085>,  <43.586735, 26.371452, 22.016361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965439, 25.881731, 21.794085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.643776, 25.833570, 21.561245>,  <43.450779, 25.804674, 21.421541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.643776, 25.833570, 21.561245>,  <43.965439, 25.881731, 21.794085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643776, 25.833570, 21.561245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582641, -0.353633, -0.731760,
		-0.117743, -0.927603, 0.354528,
		-0.804156, -0.120403, -0.582097,
		43.402531, 25.797449, 21.386616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035748, 25.233606, 21.677202>,  <43.965439, 25.881731, 21.794085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035748, 25.233606, 21.677202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.808998, 25.413179, 21.400908>,  <43.672951, 25.520924, 21.235130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.808998, 25.413179, 21.400908>,  <44.035748, 25.233606, 21.677202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808998, 25.413179, 21.400908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558117, -0.407439, -0.722841,
		-0.605939, -0.795270, -0.019591,
		-0.566871, 0.448932, -0.690737,
		43.638935, 25.547859, 21.193686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818314, 24.796288, 21.133535>,  <44.035748, 25.233606, 21.677202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818314, 24.796288, 21.133535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.800049, 25.164057, 20.977289>,  <43.789089, 25.384718, 20.883541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.800049, 25.164057, 20.977289>,  <43.818314, 24.796288, 21.133535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800049, 25.164057, 20.977289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451431, -0.329825, -0.829111,
		-0.891137, -0.214198, -0.399993,
		-0.045666, 0.919421, -0.390614,
		43.786350, 25.439882, 20.860106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424644, 24.785515, 20.438375>,  <43.818314, 24.796288, 21.133535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424644, 24.785515, 20.438375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.660648, 25.108452, 20.442005>,  <43.802250, 25.302214, 20.444183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.660648, 25.108452, 20.442005>,  <43.424644, 24.785515, 20.438375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660648, 25.108452, 20.442005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275129, -0.190477, -0.942350,
		-0.759070, 0.558496, -0.334507,
		0.590014, 0.807342, 0.009073,
		43.837654, 25.350655, 20.444727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.451172, 33.049919, 33.258198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435581, 33.391102, 33.049984>,  <37.426228, 33.595810, 32.925056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435581, 33.391102, 33.049984>,  <37.451172, 33.049919, 33.258198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435581, 33.391102, 33.049984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544149, -0.418797, -0.726988,
		-0.838083, -0.311579, -0.447812,
		-0.038972, 0.852953, -0.520531,
		37.423889, 33.646988, 32.893826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002613, 33.050930, 32.557934>,  <37.451172, 33.049919, 33.258198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002613, 33.050930, 32.557934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342510, 33.260082, 32.584873>,  <37.546448, 33.385574, 32.601036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342510, 33.260082, 32.584873>,  <37.002613, 33.050930, 32.557934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342510, 33.260082, 32.584873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453008, -0.658831, -0.600605,
		-0.269671, 0.540869, -0.796705,
		0.849742, 0.522879, 0.067351,
		37.597431, 33.416946, 32.605080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193531, 33.283943, 31.953138>,  <37.002613, 33.050930, 32.557934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193531, 33.283943, 31.953138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534721, 33.274826, 32.161720>,  <37.739437, 33.269356, 32.286869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534721, 33.274826, 32.161720>,  <37.193531, 33.283943, 31.953138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534721, 33.274826, 32.161720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414472, -0.577659, -0.703224,
		0.317248, 0.815960, -0.483283,
		0.852975, -0.022789, 0.521454,
		37.790615, 33.267990, 32.318157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758102, 33.345924, 31.438944>,  <37.193531, 33.283943, 31.953138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758102, 33.345924, 31.438944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911987, 33.154449, 31.754627>,  <38.004318, 33.039566, 31.944036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911987, 33.154449, 31.754627>,  <37.758102, 33.345924, 31.438944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911987, 33.154449, 31.754627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435984, -0.659387, -0.612476,
		0.813579, 0.579712, -0.044977,
		0.384717, -0.478688, 0.789209,
		38.027401, 33.010841, 31.991390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404526, 33.230713, 31.229965>,  <37.758102, 33.345924, 31.438944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404526, 33.230713, 31.229965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382416, 32.980381, 31.541164>,  <38.369148, 32.830181, 31.727884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382416, 32.980381, 31.541164>,  <38.404526, 33.230713, 31.229965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382416, 32.980381, 31.541164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451537, -0.710630, -0.539555,
		0.890539, 0.321472, 0.321864,
		-0.055274, -0.625828, 0.778000,
		38.365833, 32.792633, 31.774565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063557, 32.992493, 31.362888>,  <38.404526, 33.230713, 31.229965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063557, 32.992493, 31.362888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799583, 32.722828, 31.495554>,  <38.641201, 32.561028, 31.575153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799583, 32.722828, 31.495554>,  <39.063557, 32.992493, 31.362888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799583, 32.722828, 31.495554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480097, -0.717938, -0.504056,
		0.577928, -0.173411, 0.797451,
		-0.659929, -0.674161, 0.331662,
		38.601604, 32.520580, 31.595053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473114, 32.390511, 31.449919>,  <39.063557, 32.992493, 31.362888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473114, 32.390511, 31.449919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.106537, 32.230606, 31.457018>,  <38.886589, 32.134663, 31.461277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.106537, 32.230606, 31.457018>,  <39.473114, 32.390511, 31.449919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106537, 32.230606, 31.457018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302893, -0.721989, -0.622083,
		0.261502, -0.564729, 0.782750,
		-0.916445, -0.399766, 0.017749,
		38.831604, 32.110676, 31.462343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578163, 31.632433, 31.546738>,  <39.473114, 32.390511, 31.449919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578163, 31.632433, 31.546738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.220715, 31.695219, 31.378546>,  <39.006245, 31.732891, 31.277632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.220715, 31.695219, 31.378546>,  <39.578163, 31.632433, 31.546738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220715, 31.695219, 31.378546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144841, -0.785869, -0.601192,
		-0.424806, -0.598141, 0.679535,
		-0.893622, 0.156965, -0.420477,
		38.952629, 31.742310, 31.252403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303837, 30.971478, 31.462162>,  <39.578163, 31.632433, 31.546738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303837, 30.971478, 31.462162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.119835, 31.194702, 31.185913>,  <39.009434, 31.328638, 31.020164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.119835, 31.194702, 31.185913>,  <39.303837, 30.971478, 31.462162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119835, 31.194702, 31.185913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042326, -0.790700, -0.610740,
		-0.886907, -0.251712, 0.387346,
		-0.460004, 0.558064, -0.690623,
		38.981834, 31.362122, 30.978725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841095, 30.447836, 31.148060>,  <39.303837, 30.971478, 31.462162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841095, 30.447836, 31.148060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861118, 30.751204, 30.888124>,  <38.873131, 30.933224, 30.732162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.861118, 30.751204, 30.888124>,  <38.841095, 30.447836, 31.148060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861118, 30.751204, 30.888124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031668, -0.649124, -0.760024,
		-0.998244, 0.058625, -0.008478,
		0.050060, 0.758421, -0.649840,
		38.876137, 30.978729, 30.693172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379848, 30.273317, 30.601763>,  <38.841095, 30.447836, 31.148060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379848, 30.273317, 30.601763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645996, 30.533430, 30.455112>,  <38.805687, 30.689497, 30.367123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645996, 30.533430, 30.455112>,  <38.379848, 30.273317, 30.601763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645996, 30.533430, 30.455112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097991, -0.562949, -0.820662,
		-0.740052, 0.510120, -0.438292,
		0.665372, 0.650282, -0.366624,
		38.845608, 30.728514, 30.345125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227119, 30.425100, 29.898933>,  <38.379848, 30.273317, 30.601763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227119, 30.425100, 29.898933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607765, 30.546820, 29.916084>,  <38.836151, 30.619852, 29.926374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607765, 30.546820, 29.916084>,  <38.227119, 30.425100, 29.898933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607765, 30.546820, 29.916084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190064, -0.473160, -0.860230,
		-0.241481, 0.826753, -0.508100,
		0.951611, 0.304301, 0.042877,
		38.893250, 30.638109, 29.928947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735889, 30.698826, 29.325258>,  <38.227119, 30.425100, 29.898933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735889, 30.698826, 29.325258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345058, 30.624128, 29.284380>,  <37.110561, 30.579309, 29.259853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345058, 30.624128, 29.284380>,  <37.735889, 30.698826, 29.325258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345058, 30.624128, 29.284380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195950, 0.601354, 0.774582,
		-0.083194, 0.776852, -0.624163,
		-0.977078, -0.186746, -0.102195,
		37.051933, 30.568104, 29.253721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385475, 31.373508, 29.556555>,  <37.735889, 30.698826, 29.325258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385475, 31.373508, 29.556555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098976, 31.094408, 29.561131>,  <36.927078, 30.926949, 29.563877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098976, 31.094408, 29.561131>,  <37.385475, 31.373508, 29.556555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098976, 31.094408, 29.561131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491465, 0.515997, 0.701576,
		-0.495429, 0.496880, -0.712503,
		-0.716248, -0.697752, 0.011441,
		36.884102, 30.885082, 29.564562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762108, 31.711920, 29.479446>,  <37.385475, 31.373508, 29.556555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762108, 31.711920, 29.479446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627529, 31.369312, 29.636000>,  <36.546783, 31.163748, 29.729931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627529, 31.369312, 29.636000>,  <36.762108, 31.711920, 29.479446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627529, 31.369312, 29.636000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545077, 0.516038, 0.660754,
		-0.767917, 0.008972, -0.640487,
		-0.336444, -0.856519, 0.391384,
		36.526596, 31.112356, 29.753414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047916, 31.841526, 29.467762>,  <36.762108, 31.711920, 29.479446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047916, 31.841526, 29.467762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133228, 31.562838, 29.741722>,  <36.184418, 31.395624, 29.906097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133228, 31.562838, 29.741722>,  <36.047916, 31.841526, 29.467762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133228, 31.562838, 29.741722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601362, 0.458874, 0.654063,
		-0.769983, -0.551373, -0.321113,
		0.213283, -0.696723, 0.684900,
		36.197212, 31.353821, 29.947191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379887, 31.551004, 29.707747>,  <36.047916, 31.841526, 29.467762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379887, 31.551004, 29.707747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.663418, 31.502371, 29.985678>,  <35.833534, 31.473190, 30.152435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.663418, 31.502371, 29.985678>,  <35.379887, 31.551004, 29.707747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663418, 31.502371, 29.985678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528341, 0.561128, 0.637174,
		-0.467357, -0.818751, 0.333504,
		0.708825, -0.121584, 0.694827,
		35.876064, 31.465897, 30.194126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076138, 31.639950, 30.386377>,  <35.379887, 31.551004, 29.707747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076138, 31.639950, 30.386377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462673, 31.659781, 30.487350>,  <35.694595, 31.671679, 30.547934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462673, 31.659781, 30.487350>,  <35.076138, 31.639950, 30.386377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462673, 31.659781, 30.487350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235394, 0.566238, 0.789914,
		-0.103776, -0.822750, 0.558850,
		0.966344, 0.049576, 0.252433,
		35.752575, 31.674654, 30.563080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023575, 31.461502, 31.066881>,  <35.076138, 31.639950, 30.386377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023575, 31.461502, 31.066881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343716, 31.684475, 30.978601>,  <35.535801, 31.818258, 30.925634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343716, 31.684475, 30.978601>,  <35.023575, 31.461502, 31.066881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343716, 31.684475, 30.978601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189507, 0.584462, 0.788981,
		0.568787, -0.589642, 0.573414,
		0.800355, 0.557428, -0.220694,
		35.583820, 31.851704, 30.912392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269299, 31.673515, 31.735439>,  <35.023575, 31.461502, 31.066881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269299, 31.673515, 31.735439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467709, 31.914383, 31.485207>,  <35.586754, 32.058903, 31.335066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467709, 31.914383, 31.485207>,  <35.269299, 31.673515, 31.735439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467709, 31.914383, 31.485207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024680, 0.729947, 0.683058,
		0.867958, -0.323373, 0.376932,
		0.496023, 0.602168, -0.625583,
		35.616516, 32.095032, 31.297531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696022, 31.933630, 32.149693>,  <35.269299, 31.673515, 31.735439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696022, 31.933630, 32.149693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681622, 32.198536, 31.850332>,  <35.672981, 32.357479, 31.670715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681622, 32.198536, 31.850332>,  <35.696022, 31.933630, 32.149693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681622, 32.198536, 31.850332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238072, 0.721645, 0.650038,
		0.970580, 0.201575, 0.131688,
		-0.036000, 0.662265, -0.748404,
		35.670822, 32.397217, 31.625811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086090, 32.468433, 32.323975>,  <35.696022, 31.933630, 32.149693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086090, 32.468433, 32.323975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862133, 32.637737, 32.039055>,  <35.727760, 32.739319, 31.868103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862133, 32.637737, 32.039055>,  <36.086090, 32.468433, 32.323975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862133, 32.637737, 32.039055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032183, 0.870138, 0.491757,
		0.827940, 0.252407, -0.500805,
		-0.559892, 0.423263, -0.712299,
		35.694164, 32.764717, 31.825365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438877, 33.084808, 32.096054>,  <36.086090, 32.468433, 32.323975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438877, 33.084808, 32.096054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056595, 33.130756, 31.987656>,  <35.827225, 33.158325, 31.922617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056595, 33.130756, 31.987656>,  <36.438877, 33.084808, 32.096054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056595, 33.130756, 31.987656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030163, 0.877629, 0.478391,
		0.292786, 0.465373, -0.835287,
		-0.955702, 0.114871, -0.270994,
		35.769886, 33.165218, 31.906357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349842, 33.769733, 31.874828>,  <36.438877, 33.084808, 32.096054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349842, 33.769733, 31.874828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989273, 33.642731, 31.992559>,  <35.772930, 33.566528, 32.063198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989273, 33.642731, 31.992559>,  <36.349842, 33.769733, 31.874828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989273, 33.642731, 31.992559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155265, 0.871691, 0.464809,
		-0.404140, 0.373291, -0.835060,
		-0.901423, -0.317503, 0.294326,
		35.718845, 33.547482, 32.080856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990791, 34.322708, 31.910963>,  <36.349842, 33.769733, 31.874828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990791, 34.322708, 31.910963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750729, 34.086048, 32.126282>,  <35.606689, 33.944054, 32.255474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750729, 34.086048, 32.126282>,  <35.990791, 34.322708, 31.910963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750729, 34.086048, 32.126282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250866, 0.778242, 0.575678,
		-0.759524, 0.210456, -0.615492,
		-0.600157, -0.591647, 0.538297,
		35.570683, 33.908554, 32.287769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405418, 34.695503, 31.957830>,  <35.990791, 34.322708, 31.910963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405418, 34.695503, 31.957830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385311, 34.440163, 32.265072>,  <35.373249, 34.286957, 32.449417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385311, 34.440163, 32.265072>,  <35.405418, 34.695503, 31.957830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385311, 34.440163, 32.265072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046814, 0.766723, 0.640268,
		-0.997638, 0.068141, -0.008655,
		-0.050264, -0.638351, 0.768103,
		35.370232, 34.248657, 32.495502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674301, 35.116447, 31.459755>,  <35.405418, 34.695503, 31.957830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674301, 35.116447, 31.459755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545975, 35.455444, 31.290600>,  <35.468979, 35.658844, 31.189108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545975, 35.455444, 31.290600>,  <35.674301, 35.116447, 31.459755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545975, 35.455444, 31.290600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362117, -0.302815, -0.881575,
		-0.875186, -0.435954, -0.209746,
		-0.320812, 0.847495, -0.422886,
		35.449730, 35.709694, 31.163734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173599, 35.034584, 30.954962>,  <35.674301, 35.116447, 31.459755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173599, 35.034584, 30.954962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.379009, 35.362301, 30.852943>,  <35.502254, 35.558933, 30.791733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.379009, 35.362301, 30.852943>,  <35.173599, 35.034584, 30.954962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379009, 35.362301, 30.852943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161767, -0.384333, -0.908911,
		-0.842689, 0.425489, -0.329900,
		0.513523, 0.819296, -0.255043,
		35.533066, 35.608089, 30.776430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993145, 35.069965, 30.219337>,  <35.173599, 35.034584, 30.954962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993145, 35.069965, 30.219337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.340240, 35.240982, 30.320721>,  <35.548496, 35.343590, 30.381552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.340240, 35.240982, 30.320721>,  <34.993145, 35.069965, 30.219337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340240, 35.240982, 30.320721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383263, -0.250900, -0.888909,
		-0.316450, 0.868481, -0.381575,
		0.867738, 0.427539, 0.253459,
		35.600563, 35.369244, 30.396759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312897, 35.726284, 29.809769>,  <34.993145, 35.069965, 30.219337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312897, 35.726284, 29.809769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575989, 35.462952, 29.956194>,  <35.733845, 35.304955, 30.044048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575989, 35.462952, 29.956194>,  <35.312897, 35.726284, 29.809769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575989, 35.462952, 29.956194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314188, -0.201911, -0.927641,
		0.684602, 0.725147, 0.074036,
		0.657728, -0.658326, 0.366061,
		35.773308, 35.265453, 30.066011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869923, 35.867191, 29.465773>,  <35.312897, 35.726284, 29.809769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869923, 35.867191, 29.465773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898975, 35.495316, 29.610218>,  <35.916405, 35.272190, 29.696886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898975, 35.495316, 29.610218>,  <35.869923, 35.867191, 29.465773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898975, 35.495316, 29.610218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308691, -0.323337, -0.894518,
		0.948385, 0.176442, 0.263503,
		0.072630, -0.929689, 0.361114,
		35.920765, 35.216408, 29.718552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547127, 35.619881, 29.252804>,  <35.869923, 35.867191, 29.465773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547127, 35.619881, 29.252804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329380, 35.294701, 29.335541>,  <36.198734, 35.099594, 29.385183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329380, 35.294701, 29.335541>,  <36.547127, 35.619881, 29.252804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329380, 35.294701, 29.335541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370593, -0.454277, -0.810119,
		0.752548, -0.364346, 0.548565,
		-0.544365, -0.812948, 0.206841,
		36.166069, 35.050816, 29.397593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988743, 35.047817, 29.200493>,  <36.547127, 35.619881, 29.252804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988743, 35.047817, 29.200493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622147, 34.906563, 29.125292>,  <36.402191, 34.821808, 29.080172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622147, 34.906563, 29.125292>,  <36.988743, 35.047817, 29.200493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622147, 34.906563, 29.125292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338023, -0.432166, -0.836046,
		0.213993, -0.829774, 0.515443,
		-0.916486, -0.353140, -0.188002,
		36.347202, 34.800621, 29.068892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118984, 34.481438, 28.854891>,  <36.988743, 35.047817, 29.200493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118984, 34.481438, 28.854891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724960, 34.492920, 28.786974>,  <36.488544, 34.499809, 28.746223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724960, 34.492920, 28.786974>,  <37.118984, 34.481438, 28.854891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724960, 34.492920, 28.786974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123042, -0.572518, -0.810607,
		-0.120475, -0.819389, 0.560435,
		-0.985061, 0.028701, -0.169793,
		36.429443, 34.501530, 28.736036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919830, 33.778000, 28.826014>,  <37.118984, 34.481438, 28.854891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919830, 33.778000, 28.826014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638336, 33.966515, 28.613354>,  <36.469440, 34.079624, 28.485758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638336, 33.966515, 28.613354>,  <36.919830, 33.778000, 28.826014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638336, 33.966515, 28.613354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229049, -0.557860, -0.797702,
		-0.672531, -0.683143, 0.284637,
		-0.703732, 0.471283, -0.531651,
		36.427216, 34.107899, 28.453857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422436, 33.260536, 28.580181>,  <36.919830, 33.778000, 28.826014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422436, 33.260536, 28.580181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370567, 33.571568, 28.334072>,  <36.339447, 33.758186, 28.186407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370567, 33.571568, 28.334072>,  <36.422436, 33.260536, 28.580181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370567, 33.571568, 28.334072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043600, -0.624381, -0.779902,
		-0.990598, -0.074307, 0.114869,
		-0.129674, 0.777578, -0.615270,
		36.331665, 33.804840, 28.149490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898434, 32.986347, 28.103506>,  <36.422436, 33.260536, 28.580181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898434, 32.986347, 28.103506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.075928, 33.308052, 27.945387>,  <36.182426, 33.501076, 27.850515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.075928, 33.308052, 27.945387>,  <35.898434, 32.986347, 28.103506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075928, 33.308052, 27.945387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020152, -0.449946, -0.892828,
		-0.895930, 0.388216, -0.215867,
		0.443739, 0.804261, -0.395297,
		36.209049, 33.549332, 27.826797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497437, 33.171185, 27.541546>,  <35.898434, 32.986347, 28.103506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497437, 33.171185, 27.541546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879639, 33.273129, 27.482141>,  <36.108959, 33.334297, 27.446499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879639, 33.273129, 27.482141>,  <35.497437, 33.171185, 27.541546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879639, 33.273129, 27.482141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007682, -0.481791, -0.876253,
		-0.294876, 0.838404, -0.458396,
		0.955505, 0.254864, -0.148509,
		36.166290, 33.349586, 27.437588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548397, 33.134716, 26.776371>,  <35.497437, 33.171185, 27.541546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548397, 33.134716, 26.776371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929264, 33.211300, 26.871641>,  <36.157784, 33.257248, 26.928804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929264, 33.211300, 26.871641>,  <35.548397, 33.134716, 26.776371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929264, 33.211300, 26.871641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297633, -0.404343, -0.864825,
		-0.069271, 0.894344, -0.441984,
		0.952164, 0.191456, 0.238177,
		36.214912, 33.268738, 26.943094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915081, 33.596851, 26.238684>,  <35.548397, 33.134716, 26.776371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915081, 33.596851, 26.238684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198963, 33.383747, 26.423069>,  <36.369293, 33.255882, 26.533699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198963, 33.383747, 26.423069>,  <35.915081, 33.596851, 26.238684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198963, 33.383747, 26.423069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272671, -0.395590, -0.877017,
		0.649595, 0.748112, -0.135482,
		0.709702, -0.532764, 0.460961,
		36.411873, 33.223919, 26.561357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534279, 33.802670, 25.899809>,  <35.915081, 33.596851, 26.238684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534279, 33.802670, 25.899809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593224, 33.436935, 26.050688>,  <36.628590, 33.217495, 26.141216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593224, 33.436935, 26.050688>,  <36.534279, 33.802670, 25.899809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593224, 33.436935, 26.050688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407623, -0.291328, -0.865431,
		0.901181, 0.281285, 0.329774,
		0.147360, -0.914334, 0.377198,
		36.637432, 33.162636, 26.163847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109398, 33.680000, 25.677128>,  <36.534279, 33.802670, 25.899809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109398, 33.680000, 25.677128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970779, 33.312462, 25.752619>,  <36.887608, 33.091938, 25.797915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970779, 33.312462, 25.752619>,  <37.109398, 33.680000, 25.677128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970779, 33.312462, 25.752619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601020, -0.371976, -0.707396,
		0.720193, -0.131718, 0.681155,
		-0.346550, -0.918849, 0.188729,
		36.866814, 33.036808, 25.809238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726250, 33.245148, 25.667084>,  <37.109398, 33.680000, 25.677128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726250, 33.245148, 25.667084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402279, 33.015041, 25.621334>,  <37.207897, 32.876976, 25.593884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402279, 33.015041, 25.621334>,  <37.726250, 33.245148, 25.667084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402279, 33.015041, 25.621334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485375, -0.547913, -0.681324,
		0.329275, -0.607340, 0.722991,
		-0.809931, -0.575265, -0.114374,
		37.159298, 32.842461, 25.587023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970970, 32.649940, 25.464252>,  <37.726250, 33.245148, 25.667084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970970, 32.649940, 25.464252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582451, 32.596272, 25.385695>,  <37.349339, 32.564072, 25.338560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582451, 32.596272, 25.385695>,  <37.970970, 32.649940, 25.464252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582451, 32.596272, 25.385695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237654, -0.581129, -0.778337,
		-0.009701, -0.802675, 0.596338,
		-0.971301, -0.134171, -0.196396,
		37.291061, 32.556019, 25.326775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947056, 31.983215, 25.244194>,  <37.970970, 32.649940, 25.464252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947056, 31.983215, 25.244194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596901, 32.130867, 25.119329>,  <37.386806, 32.219460, 25.044411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596901, 32.130867, 25.119329>,  <37.947056, 31.983215, 25.244194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596901, 32.130867, 25.119329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052854, -0.568775, -0.820793,
		-0.480525, -0.735011, 0.478388,
		-0.875387, 0.369127, -0.312159,
		37.334286, 32.241604, 25.025682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508648, 31.344261, 25.033308>,  <37.947056, 31.983215, 25.244194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508648, 31.344261, 25.033308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399773, 31.675295, 24.836933>,  <37.334446, 31.873915, 24.719109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399773, 31.675295, 24.836933>,  <37.508648, 31.344261, 25.033308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399773, 31.675295, 24.836933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141705, -0.470161, -0.871130,
		-0.951753, -0.306679, 0.010699,
		-0.272187, 0.827585, -0.490935,
		37.318115, 31.923571, 24.689653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065506, 31.130581, 24.551077>,  <37.508648, 31.344261, 25.033308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065506, 31.130581, 24.551077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187428, 31.478901, 24.396778>,  <37.260582, 31.687893, 24.304199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187428, 31.478901, 24.396778>,  <37.065506, 31.130581, 24.551077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187428, 31.478901, 24.396778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265057, -0.466577, -0.843831,
		-0.914788, 0.154962, -0.373028,
		0.304809, 0.870800, -0.385745,
		37.278870, 31.740141, 24.281055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902748, 31.040485, 23.771749>,  <37.065506, 31.130581, 24.551077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902748, 31.040485, 23.771749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.151012, 31.353106, 23.796925>,  <37.299973, 31.540678, 23.812031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.151012, 31.353106, 23.796925>,  <36.902748, 31.040485, 23.771749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151012, 31.353106, 23.796925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522410, -0.352335, -0.776497,
		-0.584696, 0.514821, -0.626970,
		0.620660, 0.781550, 0.062939,
		37.337212, 31.587570, 23.815805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985878, 31.247120, 23.099161>,  <36.902748, 31.040485, 23.771749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985878, 31.247120, 23.099161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305607, 31.397976, 23.286287>,  <37.497444, 31.488489, 23.398563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305607, 31.397976, 23.286287>,  <36.985878, 31.247120, 23.099161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305607, 31.397976, 23.286287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567248, -0.216681, -0.794531,
		-0.198283, 0.900453, -0.387129,
		0.799321, 0.377140, 0.467816,
		37.545403, 31.511118, 23.426632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279079, 31.778948, 22.693089>,  <36.985878, 31.247120, 23.099161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279079, 31.778948, 22.693089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564831, 31.630590, 22.930441>,  <37.736282, 31.541576, 23.072851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564831, 31.630590, 22.930441>,  <37.279079, 31.778948, 22.693089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564831, 31.630590, 22.930441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525020, -0.276514, -0.804919,
		0.462617, 0.886554, -0.002809,
		0.714380, -0.370894, 0.593379,
		37.779144, 31.519321, 23.108454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925205, 31.941013, 22.391262>,  <37.279079, 31.778948, 22.693089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925205, 31.941013, 22.391262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026318, 31.663069, 22.660563>,  <38.086987, 31.496302, 22.822144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026318, 31.663069, 22.660563>,  <37.925205, 31.941013, 22.391262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026318, 31.663069, 22.660563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784941, -0.259542, -0.562588,
		0.565659, 0.670674, 0.479820,
		0.252780, -0.694863, 0.673251,
		38.102150, 31.454609, 22.862537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638329, 32.001102, 22.245102>,  <37.925205, 31.941013, 22.391262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638329, 32.001102, 22.245102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.554310, 31.666515, 22.447567>,  <38.503899, 31.465763, 22.569046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.554310, 31.666515, 22.447567>,  <38.638329, 32.001102, 22.245102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554310, 31.666515, 22.447567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700885, -0.489777, -0.518536,
		0.681646, 0.245846, 0.689143,
		-0.210046, -0.836468, 0.506164,
		38.491295, 31.415575, 22.599417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338589, 31.620691, 22.349520>,  <38.638329, 32.001102, 22.245102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338589, 31.620691, 22.349520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.055149, 31.339577, 22.374737>,  <38.885086, 31.170908, 22.389868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.055149, 31.339577, 22.374737>,  <39.338589, 31.620691, 22.349520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055149, 31.339577, 22.374737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611247, -0.656021, -0.442733,
		0.352504, -0.275188, 0.894435,
		-0.708603, -0.702786, 0.063042,
		38.842567, 31.128740, 22.393650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747513, 31.086922, 22.502666>,  <39.338589, 31.620691, 22.349520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747513, 31.086922, 22.502666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.416039, 30.915373, 22.358810>,  <39.217152, 30.812443, 22.272497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.416039, 30.915373, 22.358810>,  <39.747513, 31.086922, 22.502666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416039, 30.915373, 22.358810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559567, -0.649327, -0.515033,
		-0.012641, -0.628046, 0.778074,
		-0.828689, -0.428874, -0.359641,
		39.167431, 30.786711, 22.250917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455029, 30.958393, 22.896830>,  <39.747513, 31.086922, 22.502666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455029, 30.958393, 22.896830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.626663, 31.292128, 22.758396>,  <40.729645, 31.492369, 22.675337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.626663, 31.292128, 22.758396>,  <40.455029, 30.958393, 22.896830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626663, 31.292128, 22.758396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284695, 0.488539, 0.824790,
		0.857227, -0.255374, 0.447154,
		0.429082, 0.834334, -0.346085,
		40.755386, 31.542427, 22.654572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771946, 31.068178, 23.490553>,  <40.455029, 30.958393, 22.896830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771946, 31.068178, 23.490553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.787868, 31.396379, 23.262453>,  <40.797424, 31.593300, 23.125593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.787868, 31.396379, 23.262453>,  <40.771946, 31.068178, 23.490553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787868, 31.396379, 23.262453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232981, 0.562595, 0.793225,
		0.971666, 0.101281, 0.213558,
		0.039808, 0.820505, -0.570251,
		40.799812, 31.642530, 23.091377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109463, 31.478916, 23.948046>,  <40.771946, 31.068178, 23.490553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109463, 31.478916, 23.948046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.950260, 31.721073, 23.672338>,  <40.854736, 31.866367, 23.506914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.950260, 31.721073, 23.672338>,  <41.109463, 31.478916, 23.948046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950260, 31.721073, 23.672338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204672, 0.673804, 0.709998,
		0.894258, 0.423660, -0.144273,
		-0.398010, 0.605393, -0.689266,
		40.830856, 31.902691, 23.465559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330524, 32.067474, 24.059597>,  <41.109463, 31.478916, 23.948046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330524, 32.067474, 24.059597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.007851, 32.179356, 23.851357>,  <40.814247, 32.246483, 23.726412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.007851, 32.179356, 23.851357>,  <41.330524, 32.067474, 24.059597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007851, 32.179356, 23.851357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155889, 0.749002, 0.643968,
		0.570047, 0.600637, -0.560608,
		-0.806687, 0.279700, -0.520599,
		40.765846, 32.263264, 23.695177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372120, 32.859867, 24.095352>,  <41.330524, 32.067474, 24.059597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372120, 32.859867, 24.095352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.000374, 32.753227, 23.993206>,  <40.777328, 32.689243, 23.931919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.000374, 32.753227, 23.993206>,  <41.372120, 32.859867, 24.095352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000374, 32.753227, 23.993206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368742, 0.703503, 0.607546,
		0.017680, 0.658795, -0.752115,
		-0.929363, -0.266595, -0.255363,
		40.721565, 32.673248, 23.916597>
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
