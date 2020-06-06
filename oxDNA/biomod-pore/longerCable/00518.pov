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
	<24.724613, 34.707050, 34.717911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431984, 34.867817, 34.938190>,  <24.256407, 34.964275, 35.070358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431984, 34.867817, 34.938190>,  <24.724613, 34.707050, 34.717911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431984, 34.867817, 34.938190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174762, 0.891316, -0.418346,
		-0.658985, -0.209809, -0.722301,
		-0.731571, 0.401915, 0.550698,
		24.212513, 34.988392, 35.103401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975388, 34.060963, 34.912086>,  <24.724613, 34.707050, 34.717911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975388, 34.060963, 34.912086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370888, 34.097374, 34.959560>,  <25.608189, 34.119221, 34.988045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370888, 34.097374, 34.959560>,  <24.975388, 34.060963, 34.912086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370888, 34.097374, 34.959560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073303, -0.396760, 0.914991,
		0.130381, -0.913398, -0.385624,
		0.988750, 0.091030, 0.118685,
		25.667513, 34.124683, 34.995167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316584, 33.359699, 35.151306>,  <24.975388, 34.060963, 34.912086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316584, 33.359699, 35.151306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525974, 33.680595, 35.266117>,  <25.651608, 33.873135, 35.335003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525974, 33.680595, 35.266117>,  <25.316584, 33.359699, 35.151306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525974, 33.680595, 35.266117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052865, -0.366799, 0.928797,
		0.850400, -0.471028, -0.234420,
		0.523474, 0.802241, 0.287026,
		25.683016, 33.921268, 35.352226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996159, 33.068550, 35.422588>,  <25.316584, 33.359699, 35.151306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996159, 33.068550, 35.422588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930758, 33.431271, 35.578014>,  <25.891516, 33.648903, 35.671268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930758, 33.431271, 35.578014>,  <25.996159, 33.068550, 35.422588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930758, 33.431271, 35.578014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108029, -0.375037, 0.920694,
		0.980610, 0.192514, -0.036640,
		-0.163505, 0.906800, 0.388562,
		25.881706, 33.703312, 35.694584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440475, 33.078159, 35.977062>,  <25.996159, 33.068550, 35.422588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440475, 33.078159, 35.977062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190922, 33.379436, 36.060455>,  <26.041189, 33.560204, 36.110493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190922, 33.379436, 36.060455>,  <26.440475, 33.078159, 35.977062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190922, 33.379436, 36.060455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097663, -0.339815, 0.935408,
		0.775390, 0.563225, 0.285564,
		-0.623885, 0.753195, 0.208483,
		26.003756, 33.605396, 36.123001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828833, 33.477116, 36.525246>,  <26.440475, 33.078159, 35.977062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828833, 33.477116, 36.525246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431805, 33.482346, 36.573627>,  <26.193588, 33.485485, 36.602657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431805, 33.482346, 36.573627>,  <26.828833, 33.477116, 36.525246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431805, 33.482346, 36.573627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108053, -0.362184, 0.925823,
		0.055915, 0.932015, 0.358081,
		-0.992571, 0.013076, 0.120958,
		26.134033, 33.486267, 36.609917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722445, 33.843472, 37.122383>,  <26.828833, 33.477116, 36.525246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722445, 33.843472, 37.122383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379179, 33.639847, 37.095814>,  <26.173220, 33.517673, 37.079872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379179, 33.639847, 37.095814>,  <26.722445, 33.843472, 37.122383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379179, 33.639847, 37.095814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048259, -0.208796, 0.976768,
		-0.511101, 0.835022, 0.203748,
		-0.858164, -0.509060, -0.066419,
		26.121729, 33.487129, 37.075890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399178, 34.044987, 37.711067>,  <26.722445, 33.843472, 37.122383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399178, 34.044987, 37.711067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222599, 33.713604, 37.573200>,  <26.116652, 33.514774, 37.490482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222599, 33.713604, 37.573200>,  <26.399178, 34.044987, 37.711067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222599, 33.713604, 37.573200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225002, -0.269642, 0.936305,
		-0.868620, 0.490877, -0.067371,
		-0.441444, -0.828452, -0.344665,
		26.090166, 33.465069, 37.469799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720594, 33.971943, 38.051769>,  <26.399178, 34.044987, 37.711067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720594, 33.971943, 38.051769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823299, 33.606113, 37.926792>,  <25.884922, 33.386616, 37.851807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823299, 33.606113, 37.926792>,  <25.720594, 33.971943, 38.051769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823299, 33.606113, 37.926792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093977, -0.345376, 0.933747,
		-0.961895, -0.210388, -0.174628,
		0.256762, -0.914578, -0.312444,
		25.900328, 33.331741, 37.833057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203264, 33.406040, 38.262402>,  <25.720594, 33.971943, 38.051769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203264, 33.406040, 38.262402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560070, 33.229198, 38.224766>,  <25.774153, 33.123093, 38.202183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560070, 33.229198, 38.224766>,  <25.203264, 33.406040, 38.262402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560070, 33.229198, 38.224766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060490, -0.323051, 0.944447,
		-0.447943, -0.836767, -0.314909,
		0.892013, -0.442108, -0.094092,
		25.827675, 33.096565, 38.196537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055553, 32.702526, 38.637974>,  <25.203264, 33.406040, 38.262402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055553, 32.702526, 38.637974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437794, 32.819763, 38.650116>,  <25.667139, 32.890106, 38.657402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437794, 32.819763, 38.650116>,  <25.055553, 32.702526, 38.637974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437794, 32.819763, 38.650116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038932, -0.227699, 0.972953,
		0.292078, -0.928574, -0.229000,
		0.955602, 0.293094, 0.030354,
		25.724474, 32.907692, 38.659222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353857, 32.160210, 38.963600>,  <25.055553, 32.702526, 38.637974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353857, 32.160210, 38.963600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526440, 32.517670, 39.012966>,  <25.629990, 32.732147, 39.042587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526440, 32.517670, 39.012966>,  <25.353857, 32.160210, 38.963600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526440, 32.517670, 39.012966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154644, -0.061518, 0.986053,
		0.888780, -0.444526, 0.111656,
		0.431457, 0.893651, 0.123419,
		25.655876, 32.785767, 39.049992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911470, 32.235741, 39.578445>,  <25.353857, 32.160210, 38.963600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911470, 32.235741, 39.578445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801014, 32.610107, 39.490993>,  <25.734739, 32.834728, 39.438522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801014, 32.610107, 39.490993>,  <25.911470, 32.235741, 39.578445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801014, 32.610107, 39.490993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148670, 0.183144, 0.971779,
		0.949549, 0.300853, 0.088570,
		-0.276142, 0.935920, -0.218632,
		25.718172, 32.890884, 39.425404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682131, 32.168648, 39.534691>,  <25.911470, 32.235741, 39.578445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682131, 32.168648, 39.534691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970516, 31.999615, 39.754379>,  <27.143547, 31.898195, 39.886192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970516, 31.999615, 39.754379>,  <26.682131, 32.168648, 39.534691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970516, 31.999615, 39.754379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407371, 0.899595, 0.157411,
		-0.560592, 0.110248, 0.820721,
		0.720962, -0.422581, 0.549217,
		27.186806, 31.872841, 39.919144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060993, 32.847519, 39.479866>,  <26.682131, 32.168648, 39.534691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060993, 32.847519, 39.479866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200386, 32.578648, 39.741165>,  <27.284021, 32.417324, 39.897945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200386, 32.578648, 39.741165>,  <27.060993, 32.847519, 39.479866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200386, 32.578648, 39.741165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646370, 0.677053, 0.351860,
		-0.678799, 0.299626, 0.670415,
		0.348480, -0.672178, 0.653252,
		27.304930, 32.376995, 39.937141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034452, 33.291553, 38.788685>,  <27.060993, 32.847519, 39.479866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034452, 33.291553, 38.788685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654747, 33.168617, 38.762024>,  <26.426924, 33.094856, 38.746029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654747, 33.168617, 38.762024>,  <27.034452, 33.291553, 38.788685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654747, 33.168617, 38.762024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170977, -0.326494, -0.929607,
		0.263947, -0.893836, 0.362477,
		-0.949262, -0.307342, -0.066649,
		26.369968, 33.076416, 38.742031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105677, 32.694157, 38.485912>,  <27.034452, 33.291553, 38.788685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105677, 32.694157, 38.485912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712669, 32.755219, 38.443295>,  <26.476864, 32.791855, 38.417725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712669, 32.755219, 38.443295>,  <27.105677, 32.694157, 38.485912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712669, 32.755219, 38.443295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058725, -0.288955, -0.955540,
		-0.176655, -0.945094, 0.274939,
		-0.982519, 0.152655, -0.106546,
		26.417913, 32.801014, 38.411331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810322, 32.392559, 37.901157>,  <27.105677, 32.694157, 38.485912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810322, 32.392559, 37.901157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482649, 32.599411, 38.000370>,  <26.286045, 32.723522, 38.059898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482649, 32.599411, 38.000370>,  <26.810322, 32.392559, 37.901157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482649, 32.599411, 38.000370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273374, 0.028111, -0.961497,
		-0.504187, -0.855447, 0.118341,
		-0.819184, 0.517126, 0.248030,
		26.236895, 32.754547, 38.074780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304634, 32.122509, 37.492897>,  <26.810322, 32.392559, 37.901157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304634, 32.122509, 37.492897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188013, 32.494213, 37.583649>,  <26.118040, 32.717236, 37.638100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188013, 32.494213, 37.583649>,  <26.304634, 32.122509, 37.492897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188013, 32.494213, 37.583649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252481, 0.154018, -0.955265,
		-0.922632, -0.335795, 0.189716,
		-0.291554, 0.929258, 0.226883,
		26.100548, 32.772991, 37.651714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679064, 32.247711, 37.109596>,  <26.304634, 32.122509, 37.492897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679064, 32.247711, 37.109596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804529, 32.615360, 37.204952>,  <25.879808, 32.835949, 37.262165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804529, 32.615360, 37.204952>,  <25.679064, 32.247711, 37.109596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804529, 32.615360, 37.204952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181587, 0.304491, -0.935046,
		-0.932009, 0.250001, 0.262408,
		0.313663, 0.919122, 0.238391,
		25.898628, 32.891098, 37.276470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404913, 32.205929, 36.389130>,  <25.679064, 32.247711, 37.109596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404913, 32.205929, 36.389130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743629, 31.993399, 36.399231>,  <25.946859, 31.865881, 36.405293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743629, 31.993399, 36.399231>,  <25.404913, 32.205929, 36.389130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743629, 31.993399, 36.399231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089642, -0.189347, -0.977810,
		0.524317, 0.825737, -0.207967,
		0.846792, -0.531325, 0.025257,
		25.997667, 31.834002, 36.406807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146328, 32.689060, 36.850502>,  <25.404913, 32.205929, 36.389130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146328, 32.689060, 36.850502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447655, 32.940025, 36.929367>,  <25.628450, 33.090603, 36.976688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447655, 32.940025, 36.929367>,  <25.146328, 32.689060, 36.850502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447655, 32.940025, 36.929367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261643, 0.560965, -0.785405,
		-0.603373, 0.540071, 0.586741,
		0.753316, 0.627408, 0.197165,
		25.673649, 33.128246, 36.988518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833265, 33.437588, 36.904312>,  <25.146328, 32.689060, 36.850502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833265, 33.437588, 36.904312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224222, 33.434956, 36.819778>,  <25.458796, 33.433376, 36.769058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224222, 33.434956, 36.819778>,  <24.833265, 33.437588, 36.904312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224222, 33.434956, 36.819778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159174, 0.634984, -0.755949,
		0.139170, 0.772497, 0.619580,
		0.977392, -0.006584, -0.211332,
		25.517441, 33.432980, 36.756378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020683, 34.088497, 36.795238>,  <24.833265, 33.437588, 36.904312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020683, 34.088497, 36.795238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332388, 33.913940, 36.615322>,  <25.519411, 33.809208, 36.507370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332388, 33.913940, 36.615322>,  <25.020683, 34.088497, 36.795238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332388, 33.913940, 36.615322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046300, 0.675669, -0.735750,
		0.624986, 0.594167, 0.506318,
		0.779262, -0.436391, -0.449793,
		25.566166, 33.783024, 36.480385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197824, 34.575657, 36.332367>,  <25.020683, 34.088497, 36.795238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197824, 34.575657, 36.332367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456762, 34.280807, 36.254807>,  <25.612125, 34.103897, 36.208271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456762, 34.280807, 36.254807>,  <25.197824, 34.575657, 36.332367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456762, 34.280807, 36.254807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325881, 0.497642, -0.803837,
		0.689017, 0.457173, 0.562360,
		0.647347, -0.737119, -0.193900,
		25.650967, 34.059673, 36.196636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825905, 34.970486, 36.095951>,  <25.197824, 34.575657, 36.332367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825905, 34.970486, 36.095951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863625, 34.586430, 35.990696>,  <25.886255, 34.355995, 35.927544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863625, 34.586430, 35.990696>,  <25.825905, 34.970486, 36.095951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863625, 34.586430, 35.990696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320850, 0.279526, -0.904942,
		0.942424, 0.000904, 0.334419,
		0.094297, -0.960138, -0.263142,
		25.891914, 34.298389, 35.911755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428642, 35.027275, 35.682709>,  <25.825905, 34.970486, 36.095951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428642, 35.027275, 35.682709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217312, 34.704128, 35.578236>,  <26.090513, 34.510239, 35.515553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217312, 34.704128, 35.578236>,  <26.428642, 35.027275, 35.682709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217312, 34.704128, 35.578236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050284, 0.277305, -0.959465,
		0.847551, -0.520045, -0.105884,
		-0.528327, -0.807871, -0.261180,
		26.058813, 34.461765, 35.499882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721115, 34.786125, 34.956337>,  <26.428642, 35.027275, 35.682709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721115, 34.786125, 34.956337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351671, 34.643036, 35.011440>,  <26.130005, 34.557182, 35.044502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351671, 34.643036, 35.011440>,  <26.721115, 34.786125, 34.956337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351671, 34.643036, 35.011440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258999, 0.317423, -0.912229,
		0.282591, -0.878227, -0.385824,
		-0.923613, -0.357715, 0.137759,
		26.074589, 34.535717, 35.052769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421492, 34.183334, 34.466805>,  <26.721115, 34.786125, 34.956337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421492, 34.183334, 34.466805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098917, 34.401348, 34.558537>,  <25.905373, 34.532158, 34.613575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098917, 34.401348, 34.558537>,  <26.421492, 34.183334, 34.466805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098917, 34.401348, 34.558537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204894, 0.106236, -0.973002,
		-0.554686, -0.831653, 0.026003,
		-0.806437, 0.545038, 0.229329,
		25.856985, 34.564861, 34.627335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983753, 34.059231, 33.837933>,  <26.421492, 34.183334, 34.466805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983753, 34.059231, 33.837933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718702, 33.785221, 33.716827>,  <26.559671, 33.620815, 33.644165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718702, 33.785221, 33.716827>,  <26.983753, 34.059231, 33.837933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718702, 33.785221, 33.716827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129390, 0.293461, -0.947174,
		0.737686, -0.666799, -0.105820,
		-0.662629, -0.685025, -0.302760,
		26.519913, 33.579712, 33.625999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214352, 33.762783, 33.132313>,  <26.983753, 34.059231, 33.837933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214352, 33.762783, 33.132313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816175, 33.732552, 33.155594>,  <26.577271, 33.714413, 33.169563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816175, 33.732552, 33.155594>,  <27.214352, 33.762783, 33.132313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816175, 33.732552, 33.155594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086042, 0.448031, -0.889868,
		0.041178, -0.890818, -0.452491,
		-0.995440, -0.075576, 0.058199,
		26.517544, 33.709877, 33.173054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641338, 34.228565, 32.974316>,  <27.214352, 33.762783, 33.132313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641338, 34.228565, 32.974316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882805, 34.077286, 32.693588>,  <28.027685, 33.986519, 32.525150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882805, 34.077286, 32.693588>,  <27.641338, 34.228565, 32.974316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882805, 34.077286, 32.693588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761747, -0.013889, -0.647726,
		0.235220, 0.925622, -0.296473,
		0.603667, -0.378195, -0.701822,
		28.063906, 33.963829, 32.483040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628401, 34.626179, 32.330879>,  <27.641338, 34.228565, 32.974316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628401, 34.626179, 32.330879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720631, 34.249100, 32.234409>,  <27.775969, 34.022854, 32.176529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720631, 34.249100, 32.234409>,  <27.628401, 34.626179, 32.330879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720631, 34.249100, 32.234409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690140, 0.016289, -0.723493,
		0.685960, 0.333263, -0.646834,
		0.230577, -0.942693, -0.241172,
		27.789804, 33.966293, 32.162060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635839, 34.723026, 31.618782>,  <27.628401, 34.626179, 32.330879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635839, 34.723026, 31.618782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584482, 34.334812, 31.700344>,  <27.553669, 34.101883, 31.749281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584482, 34.334812, 31.700344>,  <27.635839, 34.723026, 31.618782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584482, 34.334812, 31.700344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706995, -0.054611, -0.705107,
		0.695466, -0.234689, -0.679152,
		-0.128391, -0.970536, 0.203904,
		27.545965, 34.043652, 31.761515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638990, 34.326550, 30.945103>,  <27.635839, 34.723026, 31.618782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638990, 34.326550, 30.945103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412130, 34.167919, 31.233843>,  <27.276014, 34.072739, 31.407087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412130, 34.167919, 31.233843>,  <27.638990, 34.326550, 30.945103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412130, 34.167919, 31.233843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741659, -0.135224, -0.657006,
		0.358165, -0.907987, -0.217434,
		-0.567151, -0.396578, 0.721849,
		27.241985, 34.048946, 31.450397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973476, 33.716942, 30.808468>,  <27.638990, 34.326550, 30.945103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973476, 33.716942, 30.808468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733553, 33.505295, 31.048555>,  <27.589598, 33.378307, 31.192608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733553, 33.505295, 31.048555>,  <27.973476, 33.716942, 30.808468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733553, 33.505295, 31.048555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769892, 0.177333, -0.613041,
		0.217935, -0.829809, -0.513732,
		-0.599809, -0.529121, 0.600217,
		27.553610, 33.346561, 31.228622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573208, 33.273083, 30.302122>,  <27.973476, 33.716942, 30.808468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573208, 33.273083, 30.302122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354439, 33.329231, 30.632256>,  <27.223177, 33.362919, 30.830336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354439, 33.329231, 30.632256>,  <27.573208, 33.273083, 30.302122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354439, 33.329231, 30.632256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808496, 0.167305, -0.564220,
		-0.217281, -0.975862, 0.021984,
		-0.546922, 0.140368, 0.825332,
		27.190363, 33.371342, 30.879856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936771, 32.897041, 30.151806>,  <27.573208, 33.273083, 30.302122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936771, 32.897041, 30.151806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896957, 33.194687, 30.416046>,  <26.873068, 33.373272, 30.574591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896957, 33.194687, 30.416046>,  <26.936771, 32.897041, 30.151806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896957, 33.194687, 30.416046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699656, 0.419719, -0.578202,
		-0.707513, -0.519744, 0.478844,
		-0.099537, 0.744112, 0.660598,
		26.867096, 33.417919, 30.614225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245111, 32.984653, 30.450937>,  <26.936771, 32.897041, 30.151806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245111, 32.984653, 30.450937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467251, 33.314640, 30.408966>,  <26.600534, 33.512634, 30.383783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467251, 33.314640, 30.408966>,  <26.245111, 32.984653, 30.450937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467251, 33.314640, 30.408966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702528, 0.397876, -0.590042,
		-0.445019, 0.401395, 0.800525,
		0.555349, 0.824971, -0.104929,
		26.633856, 33.562130, 30.377487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977455, 33.683182, 30.710003>,  <26.245111, 32.984653, 30.450937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977455, 33.683182, 30.710003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225811, 33.770073, 30.408724>,  <26.374825, 33.822208, 30.227957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225811, 33.770073, 30.408724>,  <25.977455, 33.683182, 30.710003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225811, 33.770073, 30.408724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768525, 0.358034, -0.530265,
		0.154484, 0.908088, 0.389243,
		0.620890, 0.217226, -0.753199,
		26.412079, 33.835239, 30.182764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019520, 34.117435, 30.044676>,  <25.977455, 33.683182, 30.710003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019520, 34.117435, 30.044676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985203, 34.371094, 30.352053>,  <25.964613, 34.523289, 30.536478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985203, 34.371094, 30.352053>,  <26.019520, 34.117435, 30.044676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985203, 34.371094, 30.352053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391578, -0.687755, 0.611277,
		0.916137, 0.353346, -0.189315,
		-0.085790, 0.634145, 0.768440,
		25.959465, 34.561337, 30.582584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581581, 34.504776, 30.222519>,  <26.019520, 34.117435, 30.044676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581581, 34.504776, 30.222519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338295, 34.380226, 30.514580>,  <26.192324, 34.305496, 30.689816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338295, 34.380226, 30.514580>,  <26.581581, 34.504776, 30.222519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338295, 34.380226, 30.514580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717569, -0.608951, 0.338044,
		0.339368, 0.729537, 0.593805,
		-0.608213, -0.311375, 0.730152,
		26.155830, 34.286812, 30.733625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933207, 34.568485, 30.854481>,  <26.581581, 34.504776, 30.222519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933207, 34.568485, 30.854481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676451, 34.261868, 30.846560>,  <26.522398, 34.077896, 30.841806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676451, 34.261868, 30.846560>,  <26.933207, 34.568485, 30.854481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676451, 34.261868, 30.846560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696346, -0.593532, 0.403511,
		-0.321062, 0.245218, 0.914761,
		-0.641888, -0.766542, -0.019804,
		26.483885, 34.031906, 30.840618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676989, 34.339821, 31.502779>,  <26.933207, 34.568485, 30.854481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676989, 34.339821, 31.502779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731991, 34.047031, 31.235855>,  <26.764992, 33.871357, 31.075701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731991, 34.047031, 31.235855>,  <26.676989, 34.339821, 31.502779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731991, 34.047031, 31.235855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692506, -0.410643, 0.593134,
		-0.708186, -0.543677, 0.450432,
		0.137506, -0.731976, -0.667311,
		26.773243, 33.827438, 31.035662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462383, 33.751175, 31.905043>,  <26.676989, 34.339821, 31.502779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462383, 33.751175, 31.905043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706446, 33.669720, 31.598778>,  <26.852882, 33.620846, 31.415018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706446, 33.669720, 31.598778>,  <26.462383, 33.751175, 31.905043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706446, 33.669720, 31.598778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683482, -0.353476, 0.638676,
		-0.400706, -0.913008, -0.076488,
		0.610154, -0.203643, -0.765665,
		26.889492, 33.608627, 31.369078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724976, 32.998608, 31.943357>,  <26.462383, 33.751175, 31.905043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724976, 32.998608, 31.943357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941399, 33.292141, 31.779043>,  <27.071253, 33.468262, 31.680454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941399, 33.292141, 31.779043>,  <26.724976, 32.998608, 31.943357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941399, 33.292141, 31.779043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707466, -0.133071, 0.694106,
		0.454694, -0.666170, -0.591161,
		0.541059, 0.733832, -0.410786,
		27.103716, 33.512291, 31.655807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351086, 32.755970, 32.007267>,  <26.724976, 32.998608, 31.943357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351086, 32.755970, 32.007267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422821, 33.141254, 31.927208>,  <27.465862, 33.372425, 31.879173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422821, 33.141254, 31.927208>,  <27.351086, 32.755970, 32.007267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422821, 33.141254, 31.927208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805117, -0.026785, 0.592511,
		0.565354, -0.267398, -0.780303,
		0.179337, 0.963214, -0.200144,
		27.476622, 33.430218, 31.867165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048227, 32.796471, 31.742908>,  <27.351086, 32.755970, 32.007267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048227, 32.796471, 31.742908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987658, 33.166164, 31.883116>,  <27.951315, 33.387981, 31.967241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987658, 33.166164, 31.883116>,  <28.048227, 32.796471, 31.742908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987658, 33.166164, 31.883116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853580, -0.056559, 0.517882,
		0.498468, 0.377617, -0.780343,
		-0.151426, 0.924233, 0.350519,
		27.942230, 33.443436, 31.988272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720396, 33.085903, 31.710072>,  <28.048227, 32.796471, 31.742908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720396, 33.085903, 31.710072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533953, 33.348801, 31.946976>,  <28.422087, 33.506538, 32.089119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533953, 33.348801, 31.946976>,  <28.720396, 33.085903, 31.710072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533953, 33.348801, 31.946976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794005, 0.015467, 0.607714,
		0.390257, 0.753518, -0.529066,
		-0.466107, 0.657246, 0.592261,
		28.394121, 33.545975, 32.124653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122103, 33.741310, 31.904375>,  <28.720396, 33.085903, 31.710072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122103, 33.741310, 31.904375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870289, 33.645035, 32.199875>,  <28.719200, 33.587269, 32.377174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870289, 33.645035, 32.199875>,  <29.122103, 33.741310, 31.904375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870289, 33.645035, 32.199875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774129, -0.113062, 0.622849,
		-0.066390, 0.963994, 0.257503,
		-0.629537, -0.240692, 0.738749,
		28.681427, 33.572826, 32.421501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402155, 34.015400, 32.589729>,  <29.122103, 33.741310, 31.904375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402155, 34.015400, 32.589729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156321, 33.707409, 32.658337>,  <29.008820, 33.522614, 32.699501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156321, 33.707409, 32.658337>,  <29.402155, 34.015400, 32.589729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156321, 33.707409, 32.658337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518277, -0.230211, 0.823645,
		-0.594705, 0.595092, 0.540547,
		-0.614585, -0.769979, 0.171515,
		28.971945, 33.476414, 32.709789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410290, 34.023170, 33.317650>,  <29.402155, 34.015400, 32.589729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410290, 34.023170, 33.317650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316828, 33.661667, 33.174194>,  <29.260750, 33.444763, 33.088120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316828, 33.661667, 33.174194>,  <29.410290, 34.023170, 33.317650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316828, 33.661667, 33.174194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472127, -0.427903, 0.770711,
		-0.850001, 0.010757, 0.526672,
		-0.233654, -0.903761, -0.358639,
		29.246731, 33.390537, 33.066601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225285, 33.626904, 33.808887>,  <29.410290, 34.023170, 33.317650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225285, 33.626904, 33.808887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365808, 33.395340, 33.514557>,  <29.450123, 33.256401, 33.337959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365808, 33.395340, 33.514557>,  <29.225285, 33.626904, 33.808887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365808, 33.395340, 33.514557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742032, -0.307101, 0.595884,
		-0.570938, -0.755347, 0.321683,
		0.351310, -0.578912, -0.735827,
		29.471201, 33.221668, 33.293808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341616, 32.989414, 34.134354>,  <29.225285, 33.626904, 33.808887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341616, 32.989414, 34.134354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564463, 33.004292, 33.802513>,  <29.698172, 33.013218, 33.603409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564463, 33.004292, 33.802513>,  <29.341616, 32.989414, 34.134354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564463, 33.004292, 33.802513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804384, -0.272422, 0.527971,
		-0.206365, -0.961459, -0.181689,
		0.557118, 0.037193, -0.829600,
		29.731598, 33.015450, 33.553635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684521, 32.316380, 33.874645>,  <29.341616, 32.989414, 34.134354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684521, 32.316380, 33.874645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897600, 32.649113, 33.812317>,  <30.025448, 32.848755, 33.774918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897600, 32.649113, 33.812317>,  <29.684521, 32.316380, 33.874645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897600, 32.649113, 33.812317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730276, -0.358754, 0.581371,
		0.427703, -0.423490, -0.798578,
		0.532698, 0.831837, -0.155824,
		30.057409, 32.898663, 33.765568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369732, 32.132557, 33.577682>,  <29.684521, 32.316380, 33.874645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369732, 32.132557, 33.577682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361654, 32.465466, 33.799282>,  <30.356808, 32.665211, 33.932240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361654, 32.465466, 33.799282>,  <30.369732, 32.132557, 33.577682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361654, 32.465466, 33.799282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772070, -0.339071, 0.537530,
		0.635216, 0.438579, -0.635727,
		-0.020193, 0.832274, 0.553997,
		30.355597, 32.715149, 33.965481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061930, 32.529316, 33.509502>,  <30.369732, 32.132557, 33.577682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061930, 32.529316, 33.509502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880806, 32.629864, 33.851677>,  <30.772131, 32.690193, 34.056984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880806, 32.629864, 33.851677>,  <31.061930, 32.529316, 33.509502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880806, 32.629864, 33.851677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810514, -0.283734, 0.512407,
		0.371522, 0.925369, -0.075262,
		-0.452811, 0.251372, 0.855438,
		30.744963, 32.705276, 34.108307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537659, 32.785881, 33.904430>,  <31.061930, 32.529316, 33.509502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537659, 32.785881, 33.904430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248493, 32.631706, 34.133808>,  <31.074995, 32.539200, 34.271435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248493, 32.631706, 34.133808>,  <31.537659, 32.785881, 33.904430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248493, 32.631706, 34.133808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689627, -0.453661, 0.564452,
		0.042586, 0.803509, 0.593767,
		-0.722911, -0.385440, 0.573441,
		31.031620, 32.516075, 34.305840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949884, 32.094925, 33.996681>,  <31.537659, 32.785881, 33.904430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949884, 32.094925, 33.996681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781902, 31.845749, 33.732685>,  <31.681114, 31.696243, 33.574287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781902, 31.845749, 33.732685>,  <31.949884, 32.094925, 33.996681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781902, 31.845749, 33.732685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828726, 0.033208, -0.558669,
		0.369935, -0.781562, 0.502303,
		-0.419954, -0.622943, -0.659985,
		31.655916, 31.658867, 33.534691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460884, 31.538336, 33.925278>,  <31.949884, 32.094925, 33.996681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460884, 31.538336, 33.925278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242565, 31.583698, 33.593193>,  <32.111572, 31.610916, 33.393944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242565, 31.583698, 33.593193>,  <32.460884, 31.538336, 33.925278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242565, 31.583698, 33.593193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836976, 0.120750, -0.533751,
		0.039718, -0.986184, -0.160822,
		-0.545796, 0.113405, -0.830208,
		32.078827, 31.617720, 33.344131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840904, 31.204309, 33.425869>,  <32.460884, 31.538336, 33.925278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840904, 31.204309, 33.425869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624851, 31.477648, 33.229382>,  <32.495220, 31.641651, 33.111488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624851, 31.477648, 33.229382>,  <32.840904, 31.204309, 33.425869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624851, 31.477648, 33.229382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755352, 0.136274, -0.640993,
		-0.371078, -0.717266, -0.589771,
		-0.540133, 0.683344, -0.491221,
		32.462811, 31.682652, 33.082016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678528, 31.013863, 32.740421>,  <32.840904, 31.204309, 33.425869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678528, 31.013863, 32.740421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702824, 31.412218, 32.767292>,  <32.717403, 31.651232, 32.783417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702824, 31.412218, 32.767292>,  <32.678528, 31.013863, 32.740421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702824, 31.412218, 32.767292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766484, -0.003427, -0.642254,
		-0.639384, 0.090506, -0.763542,
		0.060744, 0.995890, 0.067181,
		32.721046, 31.710985, 32.787445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332203, 31.363365, 32.061863>,  <32.678528, 31.013863, 32.740421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332203, 31.363365, 32.061863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618217, 31.517620, 32.295105>,  <32.789825, 31.610172, 32.435051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618217, 31.517620, 32.295105>,  <32.332203, 31.363365, 32.061863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618217, 31.517620, 32.295105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677045, -0.174178, -0.715032,
		-0.174178, 0.906061, -0.385637,
		0.715032, 0.385637, 0.583106,
		32.832726, 31.633310, 32.470036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696301, 31.755585, 31.577276>,  <32.332203, 31.363365, 32.061863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696301, 31.755585, 31.577276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933937, 31.592882, 31.854866>,  <33.076519, 31.495260, 32.021420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933937, 31.592882, 31.854866>,  <32.696301, 31.755585, 31.577276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933937, 31.592882, 31.854866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606516, -0.340186, -0.718618,
		0.528383, 0.847834, 0.044601,
		0.594096, -0.406757, 0.693973,
		33.112167, 31.470856, 32.063057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405178, 31.962318, 31.554209>,  <32.696301, 31.755585, 31.577276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405178, 31.962318, 31.554209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389946, 31.591888, 31.704372>,  <33.380806, 31.369631, 31.794470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389946, 31.591888, 31.704372>,  <33.405178, 31.962318, 31.554209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389946, 31.591888, 31.704372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555077, -0.331993, -0.762673,
		0.830927, 0.179340, 0.526685,
		-0.038078, -0.926077, 0.375409,
		33.378521, 31.314066, 31.816996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055485, 31.647415, 31.455275>,  <33.405178, 31.962318, 31.554209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055485, 31.647415, 31.455275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819820, 31.325914, 31.488443>,  <33.678421, 31.133015, 31.508345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819820, 31.325914, 31.488443>,  <34.055485, 31.647415, 31.455275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819820, 31.325914, 31.488443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554326, -0.476714, -0.682251,
		0.587891, -0.355987, 0.726400,
		-0.589157, -0.803752, 0.082923,
		33.643074, 31.084789, 31.513321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514343, 31.140366, 31.723804>,  <34.055485, 31.647415, 31.455275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514343, 31.140366, 31.723804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190079, 31.060884, 31.503496>,  <33.995522, 31.013195, 31.371311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190079, 31.060884, 31.503496>,  <34.514343, 31.140366, 31.723804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190079, 31.060884, 31.503496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576686, -0.433713, -0.692334,
		-0.101307, -0.878868, 0.466183,
		-0.810661, -0.198703, -0.550769,
		33.946880, 31.001274, 31.338264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342117, 30.343887, 31.638052>,  <34.514343, 31.140366, 31.723804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342117, 30.343887, 31.638052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232700, 30.568842, 31.325926>,  <34.167049, 30.703815, 31.138649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232700, 30.568842, 31.325926>,  <34.342117, 30.343887, 31.638052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232700, 30.568842, 31.325926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657120, -0.483159, -0.578576,
		-0.702401, -0.671027, -0.237392,
		-0.273542, 0.562388, -0.780317,
		34.150639, 30.737558, 31.091831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333199, 29.833862, 31.054693>,  <34.342117, 30.343887, 31.638052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333199, 29.833862, 31.054693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416603, 30.204527, 30.929590>,  <34.466648, 30.426926, 30.854528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416603, 30.204527, 30.929590>,  <34.333199, 29.833862, 31.054693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416603, 30.204527, 30.929590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665938, -0.368727, -0.648512,
		-0.716274, -0.073055, -0.693984,
		0.208514, 0.926663, -0.312759,
		34.479156, 30.482525, 30.835762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306980, 29.793116, 30.377876>,  <34.333199, 29.833862, 31.054693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306980, 29.793116, 30.377876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536495, 30.103039, 30.484041>,  <34.674206, 30.288992, 30.547741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536495, 30.103039, 30.484041>,  <34.306980, 29.793116, 30.377876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536495, 30.103039, 30.484041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671854, -0.259961, -0.693565,
		-0.468382, 0.576278, -0.669718,
		0.573787, 0.774806, 0.265414,
		34.708630, 30.335480, 30.563665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485405, 30.202040, 29.766190>,  <34.306980, 29.793116, 30.377876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485405, 30.202040, 29.766190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777225, 30.272051, 30.030647>,  <34.952320, 30.314058, 30.189322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777225, 30.272051, 30.030647>,  <34.485405, 30.202040, 29.766190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777225, 30.272051, 30.030647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667976, -0.389883, -0.633877,
		0.146824, 0.904078, -0.401355,
		0.729555, 0.175027, 0.661146,
		34.996094, 30.324558, 30.228991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943745, 30.564651, 29.323797>,  <34.485405, 30.202040, 29.766190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943745, 30.564651, 29.323797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123882, 30.446997, 29.661003>,  <35.231964, 30.376404, 29.863327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123882, 30.446997, 29.661003>,  <34.943745, 30.564651, 29.323797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123882, 30.446997, 29.661003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766530, -0.356792, -0.533977,
		0.457843, 0.886669, 0.064786,
		0.450346, -0.294138, 0.843013,
		35.258987, 30.358755, 29.913908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635773, 30.753847, 29.265940>,  <34.943745, 30.564651, 29.323797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635773, 30.753847, 29.265940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646954, 30.476494, 29.553949>,  <35.653664, 30.310081, 29.726755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646954, 30.476494, 29.553949>,  <35.635773, 30.753847, 29.265940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646954, 30.476494, 29.553949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823666, -0.392153, -0.409623,
		0.566386, 0.604510, 0.560155,
		0.027955, -0.693385, 0.720024,
		35.655338, 30.268478, 29.769957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353168, 30.766466, 29.544701>,  <35.635773, 30.753847, 29.265940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353168, 30.766466, 29.544701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174183, 30.415144, 29.612049>,  <36.066792, 30.204350, 29.652458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174183, 30.415144, 29.612049>,  <36.353168, 30.766466, 29.544701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174183, 30.415144, 29.612049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813844, -0.477975, -0.330452,
		0.370716, -0.010837, 0.928683,
		-0.447468, -0.878306, 0.168373,
		36.039944, 30.151651, 29.662561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949780, 30.392382, 29.672743>,  <36.353168, 30.766466, 29.544701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949780, 30.392382, 29.672743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635757, 30.151791, 29.613525>,  <36.447346, 30.007435, 29.577995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635757, 30.151791, 29.613525>,  <36.949780, 30.392382, 29.672743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635757, 30.151791, 29.613525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591748, -0.657585, -0.466280,
		0.183106, -0.453659, 0.872162,
		-0.785052, -0.601478, -0.148044,
		36.400242, 29.971348, 29.569113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227032, 29.589897, 29.674307>,  <36.949780, 30.392382, 29.672743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227032, 29.589897, 29.674307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882126, 29.607061, 29.472452>,  <36.675182, 29.617361, 29.351339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882126, 29.607061, 29.472452>,  <37.227032, 29.589897, 29.674307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882126, 29.607061, 29.472452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377012, -0.610934, -0.696147,
		-0.338172, -0.790518, 0.510609,
		-0.862265, 0.042911, -0.504636,
		36.623447, 29.619934, 29.321062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077881, 28.918928, 29.520893>,  <37.227032, 29.589897, 29.674307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077881, 28.918928, 29.520893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880733, 29.144463, 29.255812>,  <36.762447, 29.279783, 29.096764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880733, 29.144463, 29.255812>,  <37.077881, 28.918928, 29.520893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880733, 29.144463, 29.255812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247583, -0.639275, -0.728032,
		-0.834139, -0.522894, 0.175480,
		-0.492864, 0.563834, -0.662704,
		36.732876, 29.313612, 29.057001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645924, 28.455551, 29.089703>,  <37.077881, 28.918928, 29.520893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645924, 28.455551, 29.089703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693901, 28.800243, 28.892508>,  <36.722687, 29.007059, 28.774191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693901, 28.800243, 28.892508>,  <36.645924, 28.455551, 29.089703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693901, 28.800243, 28.892508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332508, -0.502760, -0.797917,
		-0.935443, -0.068221, -0.346833,
		0.119939, 0.861730, -0.492987,
		36.729881, 29.058762, 28.744612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238651, 28.373207, 28.484179>,  <36.645924, 28.455551, 29.089703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238651, 28.373207, 28.484179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521694, 28.650724, 28.430605>,  <36.691521, 28.817236, 28.398460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521694, 28.650724, 28.430605>,  <36.238651, 28.373207, 28.484179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521694, 28.650724, 28.430605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318220, -0.482132, -0.816263,
		-0.630893, 0.534974, -0.561940,
		0.707609, 0.693795, -0.133935,
		36.733978, 28.858864, 28.390425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415520, 28.207375, 27.889257>,  <36.238651, 28.373207, 28.484179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415520, 28.207375, 27.889257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676720, 28.510151, 27.899338>,  <36.833439, 28.691816, 27.905386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676720, 28.510151, 27.899338>,  <36.415520, 28.207375, 27.889257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676720, 28.510151, 27.899338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306361, -0.233568, -0.922816,
		-0.692630, 0.610318, -0.384416,
		0.652998, 0.756940, 0.025201,
		36.872620, 28.737232, 27.906898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455288, 28.572052, 27.193777>,  <36.415520, 28.207375, 27.889257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455288, 28.572052, 27.193777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803638, 28.652966, 27.372953>,  <37.012650, 28.701513, 27.480459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803638, 28.652966, 27.372953>,  <36.455288, 28.572052, 27.193777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803638, 28.652966, 27.372953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469251, -0.071112, -0.880197,
		-0.146196, 0.976742, -0.156852,
		0.870879, 0.202284, 0.447941,
		37.064903, 28.713652, 27.507336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732975, 29.203495, 26.977518>,  <36.455288, 28.572052, 27.193777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732975, 29.203495, 26.977518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021614, 28.947870, 27.084030>,  <37.194798, 28.794497, 27.147938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021614, 28.947870, 27.084030>,  <36.732975, 29.203495, 26.977518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021614, 28.947870, 27.084030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274264, -0.089282, -0.957501,
		0.635674, 0.763958, 0.110846,
		0.721594, -0.639060, 0.266280,
		37.238091, 28.756153, 27.163914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145802, 29.291559, 26.472403>,  <36.732975, 29.203495, 26.977518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145802, 29.291559, 26.472403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280994, 28.952045, 26.635048>,  <37.362110, 28.748337, 26.732635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280994, 28.952045, 26.635048>,  <37.145802, 29.291559, 26.472403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280994, 28.952045, 26.635048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443654, -0.237337, -0.864201,
		0.830023, 0.472481, 0.296350,
		0.337983, -0.848783, 0.406613,
		37.382389, 28.697411, 26.757032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768547, 29.140465, 26.030651>,  <37.145802, 29.291559, 26.472403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768547, 29.140465, 26.030651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679905, 28.792027, 26.205959>,  <37.626720, 28.582964, 26.311144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679905, 28.792027, 26.205959>,  <37.768547, 29.140465, 26.030651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679905, 28.792027, 26.205959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254394, -0.485525, -0.836391,
		0.941368, -0.073857, 0.329198,
		-0.221607, -0.871098, 0.438269,
		37.613422, 28.530697, 26.337440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461597, 28.746618, 25.987303>,  <37.768547, 29.140465, 26.030651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461597, 28.746618, 25.987303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157742, 28.489681, 26.027979>,  <37.975430, 28.335520, 26.052385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157742, 28.489681, 26.027979>,  <38.461597, 28.746618, 25.987303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157742, 28.489681, 26.027979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235822, -0.417791, -0.877404,
		0.606081, -0.642531, 0.468850,
		-0.759641, -0.642343, 0.101692,
		37.929848, 28.296978, 26.058487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776386, 28.062836, 25.913160>,  <38.461597, 28.746618, 25.987303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776386, 28.062836, 25.913160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384911, 28.054247, 25.831465>,  <38.150024, 28.049093, 25.782448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384911, 28.054247, 25.831465>,  <38.776386, 28.062836, 25.913160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384911, 28.054247, 25.831465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194464, -0.416609, -0.888043,
		-0.066020, -0.908832, 0.411905,
		-0.978685, -0.021472, -0.204240,
		38.091305, 28.047806, 25.770193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773617, 27.365965, 25.586313>,  <38.776386, 28.062836, 25.913160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773617, 27.365965, 25.586313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449081, 27.575106, 25.481730>,  <38.254360, 27.700590, 25.418980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449081, 27.575106, 25.481730>,  <38.773617, 27.365965, 25.586313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449081, 27.575106, 25.481730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082877, -0.339864, -0.936816,
		-0.578678, -0.781740, 0.232411,
		-0.811334, 0.522853, -0.261460,
		38.205681, 27.731962, 25.403292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387321, 27.023230, 25.175089>,  <38.773617, 27.365965, 25.586313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387321, 27.023230, 25.175089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233589, 27.376974, 25.069115>,  <38.141350, 27.589220, 25.005529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233589, 27.376974, 25.069115>,  <38.387321, 27.023230, 25.175089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233589, 27.376974, 25.069115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317459, -0.142876, -0.937446,
		-0.866895, -0.444399, -0.225837,
		-0.384334, 0.884362, -0.264937,
		38.118290, 27.642282, 24.989634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095379, 26.945551, 24.508331>,  <38.387321, 27.023230, 25.175089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095379, 26.945551, 24.508331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122360, 27.344082, 24.529440>,  <38.138550, 27.583200, 24.542105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122360, 27.344082, 24.529440>,  <38.095379, 26.945551, 24.508331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122360, 27.344082, 24.529440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152278, 0.041992, -0.987445,
		-0.986033, 0.074646, -0.148886,
		0.067457, 0.996325, 0.052772,
		38.142597, 27.642979, 24.545271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588177, 27.207050, 24.046585>,  <38.095379, 26.945551, 24.508331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588177, 27.207050, 24.046585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845718, 27.509640, 24.092543>,  <38.000244, 27.691193, 24.120117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845718, 27.509640, 24.092543>,  <37.588177, 27.207050, 24.046585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845718, 27.509640, 24.092543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010737, 0.159076, -0.987208,
		-0.765073, 0.634384, 0.110544,
		0.643854, 0.756473, 0.114893,
		38.038876, 27.736582, 24.127010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224316, 27.826658, 23.839531>,  <37.588177, 27.207050, 24.046585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224316, 27.826658, 23.839531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621384, 27.864843, 23.809864>,  <37.859623, 27.887754, 23.792065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621384, 27.864843, 23.809864>,  <37.224316, 27.826658, 23.839531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621384, 27.864843, 23.809864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083290, 0.095411, -0.991947,
		-0.087620, 0.990850, 0.102663,
		0.992666, 0.095465, -0.074168,
		37.919182, 27.893482, 23.787613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269142, 28.019226, 23.234919>,  <37.224316, 27.826658, 23.839531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269142, 28.019226, 23.234919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662952, 28.029184, 23.304304>,  <37.899239, 28.035158, 23.345936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662952, 28.029184, 23.304304>,  <37.269142, 28.019226, 23.234919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662952, 28.029184, 23.304304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171254, 0.073223, -0.982502,
		-0.037160, 0.997005, 0.067827,
		0.984526, 0.024894, 0.173462,
		37.958309, 28.036654, 23.356342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558868, 28.657227, 22.925837>,  <37.269142, 28.019226, 23.234919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558868, 28.657227, 22.925837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806126, 28.343098, 22.939493>,  <37.954479, 28.154621, 22.947687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806126, 28.343098, 22.939493>,  <37.558868, 28.657227, 22.925837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806126, 28.343098, 22.939493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048976, -0.004872, -0.998788,
		0.784537, 0.619068, 0.035450,
		0.618145, -0.785322, 0.034142,
		37.991570, 28.107502, 22.949736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189873, 28.754145, 22.341236>,  <37.558868, 28.657227, 22.925837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189873, 28.754145, 22.341236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190708, 28.366150, 22.438494>,  <38.191208, 28.133352, 22.496849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190708, 28.366150, 22.438494>,  <38.189873, 28.754145, 22.341236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190708, 28.366150, 22.438494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411515, -0.220771, -0.884260,
		0.911401, 0.101901, 0.398704,
		0.002084, -0.969988, 0.243144,
		38.191334, 28.075153, 22.511436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877171, 28.638914, 22.167627>,  <38.189873, 28.754145, 22.341236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877171, 28.638914, 22.167627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663715, 28.301563, 22.192759>,  <38.535645, 28.099152, 22.207838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663715, 28.301563, 22.192759>,  <38.877171, 28.638914, 22.167627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663715, 28.301563, 22.192759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307884, -0.262926, -0.914373,
		0.787682, -0.468596, 0.399969,
		-0.533634, -0.843378, 0.062829,
		38.503624, 28.048550, 22.211607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361122, 28.137091, 22.035347>,  <38.877171, 28.638914, 22.167627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361122, 28.137091, 22.035347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004391, 27.969650, 21.966734>,  <38.790352, 27.869186, 21.925566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004391, 27.969650, 21.966734>,  <39.361122, 28.137091, 22.035347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004391, 27.969650, 21.966734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314685, -0.301635, -0.899994,
		0.324997, -0.856616, 0.400732,
		-0.891824, -0.418600, -0.171533,
		38.736843, 27.844070, 21.915274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561871, 27.490499, 21.921511>,  <39.361122, 28.137091, 22.035347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561871, 27.490499, 21.921511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209919, 27.594419, 21.762350>,  <38.998749, 27.656771, 21.666855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209919, 27.594419, 21.762350>,  <39.561871, 27.490499, 21.921511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209919, 27.594419, 21.762350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319059, -0.297552, -0.899814,
		-0.352169, -0.918676, 0.178916,
		-0.879874, 0.259802, -0.397900,
		38.945957, 27.672359, 21.642981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474125, 26.992374, 21.490673>,  <39.561871, 27.490499, 21.921511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474125, 26.992374, 21.490673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204323, 27.263369, 21.373329>,  <39.042442, 27.425966, 21.302923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204323, 27.263369, 21.373329>,  <39.474125, 26.992374, 21.490673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204323, 27.263369, 21.373329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348101, -0.058570, -0.935626,
		-0.651057, -0.733199, -0.196329,
		-0.674500, 0.677488, -0.293360,
		39.001972, 27.466616, 21.285322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186207, 26.713463, 20.884756>,  <39.474125, 26.992374, 21.490673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186207, 26.713463, 20.884756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098507, 27.101871, 20.846714>,  <39.045887, 27.334917, 20.823889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098507, 27.101871, 20.846714>,  <39.186207, 26.713463, 20.884756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098507, 27.101871, 20.846714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187195, -0.053800, -0.980849,
		-0.957544, -0.232850, -0.169975,
		-0.219246, 0.971024, -0.095104,
		39.032734, 27.393179, 20.818182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084400, 26.738310, 20.219637>,  <39.186207, 26.713463, 20.884756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084400, 26.738310, 20.219637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127201, 27.129833, 20.289478>,  <39.152882, 27.364746, 20.331383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127201, 27.129833, 20.289478>,  <39.084400, 26.738310, 20.219637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127201, 27.129833, 20.289478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229105, 0.146613, -0.962297,
		-0.967503, 0.142972, -0.208561,
		0.107003, 0.978807, 0.174604,
		39.159302, 27.423475, 20.341860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688686, 27.111376, 19.704803>,  <39.084400, 26.738310, 20.219637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688686, 27.111376, 19.704803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976643, 27.356667, 19.834854>,  <39.149418, 27.503841, 19.912886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976643, 27.356667, 19.834854>,  <38.688686, 27.111376, 19.704803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976643, 27.356667, 19.834854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177159, 0.290571, -0.940310,
		-0.671095, 0.734522, 0.100542,
		0.719893, 0.613225, 0.325128,
		39.192612, 27.540634, 19.932392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646561, 27.583027, 19.227146>,  <38.688686, 27.111376, 19.704803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646561, 27.583027, 19.227146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990032, 27.694494, 19.399200>,  <39.196114, 27.761375, 19.502434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990032, 27.694494, 19.399200>,  <38.646561, 27.583027, 19.227146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990032, 27.694494, 19.399200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224386, 0.550147, -0.804357,
		-0.460787, 0.787199, 0.409869,
		0.858677, 0.278669, 0.430137,
		39.247635, 27.778095, 19.528242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841000, 28.325748, 19.030008>,  <38.646561, 27.583027, 19.227146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841000, 28.325748, 19.030008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196938, 28.188671, 19.150501>,  <39.410500, 28.106424, 19.222797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196938, 28.188671, 19.150501>,  <38.841000, 28.325748, 19.030008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196938, 28.188671, 19.150501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441519, 0.480229, -0.757919,
		0.115071, 0.807429, 0.578634,
		0.889843, -0.342692, 0.301235,
		39.463890, 28.085863, 19.240871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214928, 28.830540, 19.189926>,  <38.841000, 28.325748, 19.030008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214928, 28.830540, 19.189926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465843, 28.536264, 19.087730>,  <39.616394, 28.359699, 19.026413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465843, 28.536264, 19.087730>,  <39.214928, 28.830540, 19.189926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465843, 28.536264, 19.087730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269588, 0.512907, -0.815015,
		0.730638, 0.442372, 0.520072,
		0.627288, -0.735686, -0.255491,
		39.654030, 28.315559, 19.011084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807922, 29.116854, 18.873625>,  <39.214928, 28.830540, 19.189926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807922, 29.116854, 18.873625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838688, 28.733974, 18.762012>,  <39.857147, 28.504248, 18.695045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838688, 28.733974, 18.762012>,  <39.807922, 29.116854, 18.873625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838688, 28.733974, 18.762012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358889, 0.287682, -0.887940,
		0.930205, -0.031844, 0.365655,
		0.076917, -0.957196, -0.279032,
		39.861763, 28.446815, 18.678303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489555, 28.965910, 18.512503>,  <39.807922, 29.116854, 18.873625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489555, 28.965910, 18.512503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270424, 28.654001, 18.391281>,  <40.138947, 28.466856, 18.318548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270424, 28.654001, 18.391281>,  <40.489555, 28.965910, 18.512503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270424, 28.654001, 18.391281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347445, 0.117463, -0.930314,
		0.761030, -0.614946, 0.206578,
		-0.547828, -0.779772, -0.303053,
		40.106075, 28.420071, 18.300365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018364, 28.513218, 18.044495>,  <40.489555, 28.965910, 18.512503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018364, 28.513218, 18.044495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642910, 28.408325, 17.954882>,  <40.417637, 28.345390, 17.901114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642910, 28.408325, 17.954882>,  <41.018364, 28.513218, 18.044495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642910, 28.408325, 17.954882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217164, 0.055282, -0.974568,
		0.267948, -0.963420, 0.005057,
		-0.938639, -0.262232, -0.224033,
		40.361317, 28.329657, 17.887672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176380, 27.985607, 17.552935>,  <41.018364, 28.513218, 18.044495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176380, 27.985607, 17.552935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788345, 28.079229, 17.527170>,  <40.555523, 28.135403, 17.511711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788345, 28.079229, 17.527170>,  <41.176380, 27.985607, 17.552935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788345, 28.079229, 17.527170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062566, -0.015319, -0.997923,
		-0.234555, -0.972103, 0.000217,
		-0.970087, 0.234054, -0.064413,
		40.497318, 28.149445, 17.507847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047508, 27.813955, 16.874598>,  <41.176380, 27.985607, 17.552935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047508, 27.813955, 16.874598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724575, 28.034628, 16.958376>,  <40.530815, 28.167032, 17.008644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724575, 28.034628, 16.958376>,  <41.047508, 27.813955, 16.874598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724575, 28.034628, 16.958376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179652, 0.108305, -0.977750,
		-0.562091, -0.826993, 0.011672,
		-0.807328, 0.551682, 0.209448,
		40.482376, 28.200132, 17.021210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411938, 27.416792, 16.662701>,  <41.047508, 27.813955, 16.874598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411938, 27.416792, 16.662701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304333, 27.801531, 16.642776>,  <40.239769, 28.032375, 16.630821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304333, 27.801531, 16.642776>,  <40.411938, 27.416792, 16.662701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304333, 27.801531, 16.642776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215033, -0.110392, -0.970348,
		-0.938826, -0.250321, 0.236526,
		-0.269009, 0.961848, -0.049811,
		40.223629, 28.090086, 16.627832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776417, 27.433170, 16.287943>,  <40.411938, 27.416792, 16.662701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776417, 27.433170, 16.287943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967209, 27.783529, 16.258856>,  <40.081684, 27.993746, 16.241404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967209, 27.783529, 16.258856>,  <39.776417, 27.433170, 16.287943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967209, 27.783529, 16.258856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261635, 0.062516, -0.963140,
		-0.839067, 0.478429, 0.258984,
		0.476985, 0.875898, -0.072718,
		40.110306, 28.046299, 16.237040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255154, 27.897905, 16.018963>,  <39.776417, 27.433170, 16.287943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255154, 27.897905, 16.018963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622818, 27.999735, 15.898745>,  <39.843418, 28.060833, 15.826614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622818, 27.999735, 15.898745>,  <39.255154, 27.897905, 16.018963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622818, 27.999735, 15.898745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351727, 0.187107, -0.917213,
		-0.177265, 0.948780, 0.261523,
		0.919165, 0.254575, -0.300544,
		39.898567, 28.076107, 15.808581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106586, 28.518461, 15.570118>,  <39.255154, 27.897905, 16.018963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106586, 28.518461, 15.570118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396484, 28.280739, 15.430667>,  <39.570423, 28.138105, 15.346996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396484, 28.280739, 15.430667>,  <39.106586, 28.518461, 15.570118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396484, 28.280739, 15.430667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475182, -0.064721, -0.877504,
		0.498943, 0.801630, -0.329311,
		0.724747, -0.594307, -0.348628,
		39.613907, 28.102448, 15.326078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292347, 28.739264, 14.955101>,  <39.106586, 28.518461, 15.570118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292347, 28.739264, 14.955101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354702, 28.344311, 14.966258>,  <39.392113, 28.107340, 14.972953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354702, 28.344311, 14.966258>,  <39.292347, 28.739264, 14.955101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354702, 28.344311, 14.966258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488476, -0.101602, -0.866642,
		0.858540, 0.121472, -0.498150,
		0.155886, -0.987381, 0.027893,
		39.401466, 28.048096, 14.974626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894234, 29.298498, 15.507625>,  <39.292347, 28.739264, 14.955101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894234, 29.298498, 15.507625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889572, 29.697733, 15.483336>,  <38.886776, 29.937273, 15.468763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889572, 29.697733, 15.483336>,  <38.894234, 29.298498, 15.507625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889572, 29.697733, 15.483336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232440, -0.056356, -0.970977,
		-0.972541, -0.025431, -0.231338,
		-0.011655, 0.998087, -0.060720,
		38.886074, 29.997158, 15.465120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413616, 29.635733, 14.932899>,  <38.894234, 29.298498, 15.507625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413616, 29.635733, 14.932899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208683, 29.974016, 14.992623>,  <38.085724, 30.176987, 15.028458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208683, 29.974016, 14.992623>,  <38.413616, 29.635733, 14.932899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208683, 29.974016, 14.992623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582848, 0.214729, 0.783696,
		0.630719, 0.488535, -0.602932,
		-0.512330, 0.845710, 0.149309,
		38.054985, 30.227730, 15.037416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107006, 29.785059, 14.675541>,  <38.413616, 29.635733, 14.932899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107006, 29.785059, 14.675541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248245, 30.122135, 14.512964>,  <39.332989, 30.324381, 14.415419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248245, 30.122135, 14.512964>,  <39.107006, 29.785059, 14.675541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248245, 30.122135, 14.512964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290924, 0.511782, 0.808358,
		0.889205, -0.167185, 0.425868,
		0.353096, 0.842691, -0.406442,
		39.354176, 30.374943, 14.391032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750935, 30.162537, 15.060363>,  <39.107006, 29.785059, 14.675541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750935, 30.162537, 15.060363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454967, 30.376665, 14.897416>,  <39.277386, 30.505142, 14.799648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454967, 30.376665, 14.897416>,  <39.750935, 30.162537, 15.060363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454967, 30.376665, 14.897416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370090, 0.181744, 0.911045,
		0.561738, 0.824863, 0.063642,
		-0.739921, 0.535322, -0.407366,
		39.232990, 30.537262, 14.775207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584610, 30.940210, 15.413549>,  <39.750935, 30.162537, 15.060363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584610, 30.940210, 15.413549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273510, 30.737013, 15.265471>,  <39.086849, 30.615093, 15.176624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273510, 30.737013, 15.265471>,  <39.584610, 30.940210, 15.413549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273510, 30.737013, 15.265471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443287, 0.025724, 0.896010,
		-0.445646, 0.860976, -0.245195,
		-0.777750, -0.507995, -0.370196,
		39.040184, 30.584614, 15.154412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857971, 31.260567, 15.457105>,  <39.584610, 30.940210, 15.413549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857971, 31.260567, 15.457105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866474, 30.860798, 15.467686>,  <38.871574, 30.620935, 15.474034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866474, 30.860798, 15.467686>,  <38.857971, 31.260567, 15.457105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866474, 30.860798, 15.467686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469886, 0.013370, 0.882626,
		-0.882471, -0.031189, -0.469331,
		0.021253, -0.999424, 0.026454,
		38.872849, 30.560970, 15.475622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066204, 31.029873, 15.546233>,  <38.857971, 31.260567, 15.457105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066204, 31.029873, 15.546233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332722, 30.763559, 15.680566>,  <38.492634, 30.603771, 15.761166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332722, 30.763559, 15.680566>,  <38.066204, 31.029873, 15.546233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332722, 30.763559, 15.680566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484734, -0.044485, 0.873529,
		-0.566644, -0.744816, -0.352369,
		0.666294, -0.665786, 0.335831,
		38.532608, 30.563824, 15.781315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694553, 30.669333, 15.962286>,  <38.066204, 31.029873, 15.546233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694553, 30.669333, 15.962286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063263, 30.560549, 16.072826>,  <38.284489, 30.495279, 16.139151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063263, 30.560549, 16.072826>,  <37.694553, 30.669333, 15.962286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063263, 30.560549, 16.072826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323710, -0.147494, 0.934590,
		-0.213410, -0.950938, -0.223992,
		0.921774, -0.271960, 0.276351,
		38.339794, 30.478962, 16.155731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610775, 30.169037, 16.424715>,  <37.694553, 30.669333, 15.962286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610775, 30.169037, 16.424715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980560, 30.304178, 16.495396>,  <38.202431, 30.385263, 16.537804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980560, 30.304178, 16.495396>,  <37.610775, 30.169037, 16.424715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980560, 30.304178, 16.495396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193267, 0.015743, 0.981020,
		0.328660, -0.941067, 0.079850,
		0.924462, 0.337855, 0.176703,
		38.257900, 30.405535, 16.548407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847366, 29.814850, 17.008488>,  <37.610775, 30.169037, 16.424715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847366, 29.814850, 17.008488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096424, 30.127367, 16.991039>,  <38.245857, 30.314877, 16.980570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096424, 30.127367, 16.991039>,  <37.847366, 29.814850, 17.008488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096424, 30.127367, 16.991039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093072, 0.129289, 0.987229,
		0.776953, -0.610629, 0.153217,
		0.622640, 0.781291, -0.043619,
		38.283215, 30.361755, 16.977953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291519, 29.687054, 17.567474>,  <37.847366, 29.814850, 17.008488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291519, 29.687054, 17.567474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317200, 30.076620, 17.480423>,  <38.332607, 30.310360, 17.428192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317200, 30.076620, 17.480423>,  <38.291519, 29.687054, 17.567474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317200, 30.076620, 17.480423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103026, 0.210445, 0.972162,
		0.992604, -0.084838, -0.086828,
		0.064204, 0.973918, -0.217630,
		38.336460, 30.368795, 17.415134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901852, 29.940052, 17.887625>,  <38.291519, 29.687054, 17.567474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901852, 29.940052, 17.887625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644253, 30.243200, 17.845875>,  <38.489693, 30.425089, 17.820824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644253, 30.243200, 17.845875>,  <38.901852, 29.940052, 17.887625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644253, 30.243200, 17.845875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067103, 0.191870, 0.979124,
		0.762076, 0.623553, -0.174420,
		-0.644001, 0.757870, -0.104377,
		38.451054, 30.470562, 17.814562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131992, 30.432276, 18.287729>,  <38.901852, 29.940052, 17.887625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131992, 30.432276, 18.287729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765919, 30.588842, 18.249310>,  <38.546272, 30.682783, 18.226257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765919, 30.588842, 18.249310>,  <39.131992, 30.432276, 18.287729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765919, 30.588842, 18.249310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035665, 0.158729, 0.986678,
		0.401449, 0.906420, -0.131307,
		-0.915187, 0.391418, -0.096049,
		38.491364, 30.706268, 18.220495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104595, 31.018869, 18.642647>,  <39.131992, 30.432276, 18.287729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104595, 31.018869, 18.642647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716831, 30.922667, 18.623068>,  <38.484173, 30.864944, 18.611320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716831, 30.922667, 18.623068>,  <39.104595, 31.018869, 18.642647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716831, 30.922667, 18.623068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080149, 0.121710, 0.989324,
		-0.231981, 0.962987, -0.137264,
		-0.969413, -0.240506, -0.048948,
		38.426006, 30.850515, 18.608383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737667, 31.564541, 19.063253>,  <39.104595, 31.018869, 18.642647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737667, 31.564541, 19.063253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498764, 31.243862, 19.053711>,  <38.355423, 31.051455, 19.047985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498764, 31.243862, 19.053711>,  <38.737667, 31.564541, 19.063253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498764, 31.243862, 19.053711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242114, 0.151856, 0.958290,
		-0.764637, 0.578118, -0.284799,
		-0.597254, -0.801698, -0.023856,
		38.319588, 31.003353, 19.046555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166092, 31.741236, 19.482437>,  <38.737667, 31.564541, 19.063253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166092, 31.741236, 19.482437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142517, 31.342081, 19.471498>,  <38.128372, 31.102589, 19.464935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142517, 31.342081, 19.471498>,  <38.166092, 31.741236, 19.482437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142517, 31.342081, 19.471498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313114, -0.007532, 0.949686,
		-0.947885, 0.064538, -0.312008,
		-0.058941, -0.997887, -0.027348,
		38.124836, 31.042715, 19.463295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508808, 31.642593, 19.875519>,  <38.166092, 31.741236, 19.482437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508808, 31.642593, 19.875519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686180, 31.284836, 19.852072>,  <37.792603, 31.070181, 19.838003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686180, 31.284836, 19.852072>,  <37.508808, 31.642593, 19.875519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686180, 31.284836, 19.852072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324832, -0.221313, 0.919513,
		-0.835378, -0.388695, -0.388664,
		0.443426, -0.894392, -0.058620,
		37.819206, 31.016518, 19.834486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011669, 31.059977, 20.055096>,  <37.508808, 31.642593, 19.875519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011669, 31.059977, 20.055096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378700, 30.923656, 20.136976>,  <37.598919, 30.841866, 20.186106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378700, 30.923656, 20.136976>,  <37.011669, 31.059977, 20.055096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378700, 30.923656, 20.136976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315129, -0.309600, 0.897130,
		-0.242366, -0.887696, -0.391479,
		0.917580, -0.340800, 0.204703,
		37.653973, 30.821417, 20.198387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968433, 30.466286, 20.366201>,  <37.011669, 31.059977, 20.055096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968433, 30.466286, 20.366201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334080, 30.580515, 20.481331>,  <37.553467, 30.649052, 20.550407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334080, 30.580515, 20.481331>,  <36.968433, 30.466286, 20.366201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334080, 30.580515, 20.481331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198041, -0.304958, 0.931548,
		0.353799, -0.908542, -0.222211,
		0.914115, 0.285574, 0.287822,
		37.608315, 30.666187, 20.567677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316711, 29.915308, 20.669399>,  <36.968433, 30.466286, 20.366201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316711, 29.915308, 20.669399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494587, 30.246378, 20.806341>,  <37.601311, 30.445021, 20.888506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494587, 30.246378, 20.806341>,  <37.316711, 29.915308, 20.669399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494587, 30.246378, 20.806341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141429, -0.312547, 0.939315,
		0.884450, -0.466120, -0.021928,
		0.444687, 0.827676, 0.342355,
		37.627995, 30.494680, 20.909048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510792, 29.706163, 21.290951>,  <37.316711, 29.915308, 20.669399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510792, 29.706163, 21.290951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502522, 30.106075, 21.289698>,  <37.497559, 30.346024, 21.288946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502522, 30.106075, 21.289698>,  <37.510792, 29.706163, 21.290951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502522, 30.106075, 21.289698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340056, -0.004086, 0.940397,
		0.940178, 0.020512, 0.340066,
		-0.020679, 0.999781, -0.003134,
		37.496319, 30.406010, 21.288757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678417, 29.913412, 21.966278>,  <37.510792, 29.706163, 21.290951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678417, 29.913412, 21.966278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546848, 30.256187, 21.807549>,  <37.467907, 30.461853, 21.712311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546848, 30.256187, 21.807549>,  <37.678417, 29.913412, 21.966278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546848, 30.256187, 21.807549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511564, 0.191527, 0.837627,
		0.793796, 0.478516, 0.375380,
		-0.328923, 0.856936, -0.396825,
		37.448170, 30.513268, 21.688501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799107, 30.410507, 22.500956>,  <37.678417, 29.913412, 21.966278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799107, 30.410507, 22.500956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543728, 30.579922, 22.243895>,  <37.390499, 30.681570, 22.089659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543728, 30.579922, 22.243895>,  <37.799107, 30.410507, 22.500956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543728, 30.579922, 22.243895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631559, 0.188946, 0.751953,
		0.439904, 0.885956, 0.146854,
		-0.638450, 0.423534, -0.642651,
		37.352192, 30.706982, 22.051100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727055, 31.051395, 22.694567>,  <37.799107, 30.410507, 22.500956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727055, 31.051395, 22.694567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387783, 30.945627, 22.510969>,  <37.184219, 30.882166, 22.400810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387783, 30.945627, 22.510969>,  <37.727055, 31.051395, 22.694567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387783, 30.945627, 22.510969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524039, 0.292372, 0.799939,
		-0.077322, 0.919022, -0.386549,
		-0.848177, -0.264420, -0.458996,
		37.133331, 30.866301, 22.373270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204922, 31.638834, 22.881191>,  <37.727055, 31.051395, 22.694567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204922, 31.638834, 22.881191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977688, 31.350988, 22.721476>,  <36.841347, 31.178282, 22.625647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977688, 31.350988, 22.721476>,  <37.204922, 31.638834, 22.881191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977688, 31.350988, 22.721476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665390, 0.116118, 0.737409,
		-0.484286, 0.684596, -0.544790,
		-0.568087, -0.719615, -0.399289,
		36.807262, 31.135103, 22.601688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484215, 31.904648, 22.887388>,  <37.204922, 31.638834, 22.881191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484215, 31.904648, 22.887388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465816, 31.505083, 22.890579>,  <36.454777, 31.265345, 22.892494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465816, 31.505083, 22.890579>,  <36.484215, 31.904648, 22.887388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465816, 31.505083, 22.890579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726245, 0.038925, 0.686333,
		-0.685895, 0.025778, -0.727243,
		-0.046000, -0.998910, 0.007978,
		36.452015, 31.205410, 22.892973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811272, 31.821030, 22.962082>,  <36.484215, 31.904648, 22.887388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811272, 31.821030, 22.962082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920441, 31.447073, 23.052849>,  <35.985943, 31.222698, 23.107309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920441, 31.447073, 23.052849>,  <35.811272, 31.821030, 22.962082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920441, 31.447073, 23.052849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607802, 0.015274, 0.793942,
		-0.745716, -0.354604, -0.564060,
		0.272920, -0.934892, 0.226919,
		36.002316, 31.166605, 23.120924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209522, 31.483240, 22.938887>,  <35.811272, 31.821030, 22.962082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209522, 31.483240, 22.938887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437023, 31.295088, 23.208778>,  <35.573524, 31.182198, 23.370714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437023, 31.295088, 23.208778>,  <35.209522, 31.483240, 22.938887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437023, 31.295088, 23.208778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717550, 0.117224, 0.686572,
		-0.402044, -0.874644, -0.270849,
		0.568756, -0.470379, 0.674730,
		35.607651, 31.153975, 23.411198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687401, 31.114212, 23.340006>,  <35.209522, 31.483240, 22.938887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687401, 31.114212, 23.340006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029263, 31.124966, 23.547405>,  <35.234379, 31.131418, 23.671844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029263, 31.124966, 23.547405>,  <34.687401, 31.114212, 23.340006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029263, 31.124966, 23.547405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518594, -0.003867, 0.855012,
		0.024991, -0.999631, 0.010637,
		0.854655, 0.026884, 0.518499,
		35.285660, 31.133032, 23.702955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489685, 30.621584, 23.818644>,  <34.687401, 31.114212, 23.340006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489685, 30.621584, 23.818644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798664, 30.810879, 23.988052>,  <34.984051, 30.924456, 24.089697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798664, 30.810879, 23.988052>,  <34.489685, 30.621584, 23.818644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798664, 30.810879, 23.988052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489616, 0.019029, 0.871731,
		0.404474, -0.880731, 0.246403,
		0.772449, 0.473235, 0.423523,
		35.030399, 30.952850, 24.115108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712826, 30.290937, 24.429556>,  <34.489685, 30.621584, 23.818644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712826, 30.290937, 24.429556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849373, 30.664082, 24.475588>,  <34.931301, 30.887968, 24.503206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849373, 30.664082, 24.475588>,  <34.712826, 30.290937, 24.429556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849373, 30.664082, 24.475588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284926, -0.013969, 0.958448,
		0.895704, -0.359972, 0.261027,
		0.341368, 0.932859, 0.115077,
		34.951782, 30.943939, 24.510111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819614, 30.299734, 25.139105>,  <34.712826, 30.290937, 24.429556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819614, 30.299734, 25.139105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845448, 30.692743, 25.069273>,  <34.860947, 30.928549, 25.027374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845448, 30.692743, 25.069273>,  <34.819614, 30.299734, 25.139105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845448, 30.692743, 25.069273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342112, 0.186141, 0.921038,
		0.937437, 0.000246, 0.348154,
		0.064580, 0.982523, -0.174580,
		34.864822, 30.987499, 25.016899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177937, 30.698935, 25.687817>,  <34.819614, 30.299734, 25.139105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177937, 30.698935, 25.687817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954315, 30.977764, 25.508242>,  <34.820141, 31.145061, 25.400496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954315, 30.977764, 25.508242>,  <35.177937, 30.698935, 25.687817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954315, 30.977764, 25.508242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303149, 0.332120, 0.893194,
		0.771725, 0.635438, 0.025645,
		-0.559053, 0.697075, -0.448938,
		34.786598, 31.186886, 25.373560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217278, 31.292469, 26.087105>,  <35.177937, 30.698935, 25.687817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217278, 31.292469, 26.087105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893036, 31.386589, 25.872606>,  <34.698490, 31.443062, 25.743908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893036, 31.386589, 25.872606>,  <35.217278, 31.292469, 26.087105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893036, 31.386589, 25.872606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443046, 0.352379, 0.824342,
		0.382930, 0.905794, -0.181390,
		-0.810602, 0.235301, -0.536244,
		34.649857, 31.457180, 25.711733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991619, 32.056644, 26.234751>,  <35.217278, 31.292469, 26.087105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991619, 32.056644, 26.234751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666183, 31.859056, 26.112068>,  <34.470924, 31.740503, 26.038458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666183, 31.859056, 26.112068>,  <34.991619, 32.056644, 26.234751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666183, 31.859056, 26.112068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487308, 0.291526, 0.823130,
		-0.317191, 0.819148, -0.477899,
		-0.813585, -0.493974, -0.306708,
		34.422108, 31.710865, 26.020056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413567, 32.567959, 26.307497>,  <34.991619, 32.056644, 26.234751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413567, 32.567959, 26.307497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234238, 32.210411, 26.308296>,  <34.126640, 31.995882, 26.308775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234238, 32.210411, 26.308296>,  <34.413567, 32.567959, 26.307497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234238, 32.210411, 26.308296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497213, 0.251230, 0.830459,
		-0.742826, 0.371317, -0.557076,
		-0.448318, -0.893872, 0.001996,
		34.099743, 31.942249, 26.308895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765354, 32.710258, 26.461672>,  <34.413567, 32.567959, 26.307497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765354, 32.710258, 26.461672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787521, 32.317627, 26.534805>,  <33.800823, 32.082047, 26.578686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787521, 32.317627, 26.534805>,  <33.765354, 32.710258, 26.461672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787521, 32.317627, 26.534805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471762, 0.135644, 0.871230,
		-0.879983, -0.134540, -0.455554,
		0.055422, -0.981580, 0.182835,
		33.804150, 32.023151, 26.589657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040913, 32.388340, 26.556456>,  <33.765354, 32.710258, 26.461672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040913, 32.388340, 26.556456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322628, 32.175728, 26.744694>,  <33.491657, 32.048161, 26.857635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322628, 32.175728, 26.744694>,  <33.040913, 32.388340, 26.556456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322628, 32.175728, 26.744694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485322, 0.123306, 0.865597,
		-0.518119, -0.838016, -0.171121,
		0.704284, -0.531531, 0.470594,
		33.533913, 32.016270, 26.885872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630886, 32.112503, 27.021147>,  <33.040913, 32.388340, 26.556456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630886, 32.112503, 27.021147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998764, 32.036797, 27.158743>,  <33.219490, 31.991371, 27.241301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998764, 32.036797, 27.158743>,  <32.630886, 32.112503, 27.021147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998764, 32.036797, 27.158743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328357, 0.109561, 0.938178,
		-0.215257, -0.975794, 0.038615,
		0.919699, -0.189270, 0.343993,
		33.274673, 31.980015, 27.261940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616333, 31.581318, 27.499590>,  <32.630886, 32.112503, 27.021147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616333, 31.581318, 27.499590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959400, 31.762638, 27.596682>,  <33.165241, 31.871429, 27.654936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959400, 31.762638, 27.596682>,  <32.616333, 31.581318, 27.499590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959400, 31.762638, 27.596682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274112, 0.003678, 0.961691,
		0.435042, -0.891350, 0.127409,
		0.857672, 0.453300, 0.242729,
		33.216702, 31.898628, 27.669500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994457, 31.217440, 28.039062>,  <32.616333, 31.581318, 27.499590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994457, 31.217440, 28.039062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123135, 31.595892, 28.053745>,  <33.200340, 31.822964, 28.062555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123135, 31.595892, 28.053745>,  <32.994457, 31.217440, 28.039062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123135, 31.595892, 28.053745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262997, 0.052042, 0.963392,
		0.909586, -0.319570, 0.265572,
		0.321692, 0.946133, 0.036709,
		33.219643, 31.879732, 28.064758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519756, 31.187012, 28.510962>,  <32.994457, 31.217440, 28.039062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519756, 31.187012, 28.510962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426865, 31.574953, 28.481426>,  <33.371132, 31.807718, 28.463705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426865, 31.574953, 28.481426>,  <33.519756, 31.187012, 28.510962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426865, 31.574953, 28.481426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057026, 0.089360, 0.994366,
		0.970989, 0.226706, -0.076059,
		-0.232225, 0.969855, -0.073839,
		33.357197, 31.865910, 28.459274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021355, 31.495623, 28.956112>,  <33.519756, 31.187012, 28.510962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021355, 31.495623, 28.956112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737274, 31.773018, 28.907629>,  <33.566826, 31.939455, 28.878540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737274, 31.773018, 28.907629>,  <34.021355, 31.495623, 28.956112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737274, 31.773018, 28.907629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043828, 0.215390, 0.975544,
		0.702634, 0.687520, -0.183364,
		-0.710201, 0.693486, -0.121208,
		33.524216, 31.981064, 28.871267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247990, 32.039169, 29.264339>,  <34.021355, 31.495623, 28.956112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247990, 32.039169, 29.264339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857563, 32.124527, 29.281097>,  <33.623306, 32.175739, 29.291153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857563, 32.124527, 29.281097>,  <34.247990, 32.039169, 29.264339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857563, 32.124527, 29.281097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071363, 0.132325, 0.988634,
		0.205420, 0.967964, -0.144386,
		-0.976068, 0.213390, 0.041895,
		33.564743, 32.188545, 29.293667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233707, 32.615997, 29.706718>,  <34.247990, 32.039169, 29.264339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233707, 32.615997, 29.706718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869923, 32.449726, 29.702950>,  <33.651653, 32.349964, 29.700687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869923, 32.449726, 29.702950>,  <34.233707, 32.615997, 29.706718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869923, 32.449726, 29.702950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011338, 0.002142, 0.999933,
		-0.415632, 0.909509, -0.006661,
		-0.909462, -0.415680, -0.009422,
		33.597084, 32.325024, 29.700123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380959, 33.361664, 29.514322>,  <34.233707, 32.615997, 29.706718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380959, 33.361664, 29.514322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629196, 33.636318, 29.665792>,  <34.778137, 33.801109, 29.756674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629196, 33.636318, 29.665792>,  <34.380959, 33.361664, 29.514322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629196, 33.636318, 29.665792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441446, 0.093187, -0.892436,
		-0.648067, 0.721004, -0.245282,
		0.620592, 0.686637, 0.378676,
		34.815372, 33.842308, 29.779396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452518, 34.056396, 29.095997>,  <34.380959, 33.361664, 29.514322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452518, 34.056396, 29.095997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778999, 33.992817, 29.318184>,  <34.974888, 33.954670, 29.451496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778999, 33.992817, 29.318184>,  <34.452518, 34.056396, 29.095997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778999, 33.992817, 29.318184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577762, 0.227716, -0.783796,
		-0.001903, 0.960666, 0.277699,
		0.816203, -0.158952, 0.555470,
		35.023861, 33.945129, 29.484825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927258, 34.666786, 29.093023>,  <34.452518, 34.056396, 29.095997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927258, 34.666786, 29.093023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156647, 34.361530, 29.212183>,  <35.294281, 34.178375, 29.283678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156647, 34.361530, 29.212183>,  <34.927258, 34.666786, 29.093023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156647, 34.361530, 29.212183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653454, 0.206800, -0.728170,
		0.494091, 0.612249, 0.617272,
		0.573473, -0.763141, 0.297898,
		35.328690, 34.132587, 29.301552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455303, 34.809414, 28.794325>,  <34.927258, 34.666786, 29.093023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455303, 34.809414, 28.794325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557178, 34.428722, 28.862854>,  <35.618305, 34.200310, 28.903971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557178, 34.428722, 28.862854>,  <35.455303, 34.809414, 28.794325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557178, 34.428722, 28.862854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716017, 0.066519, -0.694907,
		0.649965, 0.299654, 0.698393,
		0.254688, -0.951726, 0.171323,
		35.633583, 34.143204, 28.914251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186417, 34.824265, 28.972898>,  <35.455303, 34.809414, 28.794325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186417, 34.824265, 28.972898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046951, 34.480404, 28.823532>,  <35.963272, 34.274090, 28.733912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046951, 34.480404, 28.823532>,  <36.186417, 34.824265, 28.972898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046951, 34.480404, 28.823532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746169, -0.013503, -0.665619,
		0.567156, -0.510710, 0.646150,
		-0.348663, -0.859647, -0.373418,
		35.942352, 34.222511, 28.711506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844482, 34.521690, 28.798286>,  <36.186417, 34.824265, 28.972898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844482, 34.521690, 28.798286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535374, 34.339909, 28.621067>,  <36.349907, 34.230839, 28.514736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535374, 34.339909, 28.621067>,  <36.844482, 34.521690, 28.798286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535374, 34.339909, 28.621067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560224, -0.160348, -0.812673,
		0.298283, -0.876217, 0.378510,
		-0.772772, -0.454457, -0.443049,
		36.303543, 34.203571, 28.488152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183094, 34.062485, 28.370455>,  <36.844482, 34.521690, 28.798286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183094, 34.062485, 28.370455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809940, 34.064064, 28.226395>,  <36.586048, 34.065010, 28.139959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809940, 34.064064, 28.226395>,  <37.183094, 34.062485, 28.370455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809940, 34.064064, 28.226395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352002, -0.201786, -0.913990,
		-0.076277, -0.979422, 0.186856,
		-0.932886, 0.003942, -0.360150,
		36.530075, 34.065247, 28.118349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166317, 33.535332, 27.942150>,  <37.183094, 34.062485, 28.370455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166317, 33.535332, 27.942150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860676, 33.762161, 27.819139>,  <36.677292, 33.898258, 27.745333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860676, 33.762161, 27.819139>,  <37.166317, 33.535332, 27.942150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860676, 33.762161, 27.819139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264287, -0.159692, -0.951131,
		-0.588468, -0.808041, -0.027848,
		-0.764106, 0.567070, -0.307528,
		36.631443, 33.932281, 27.726881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921753, 33.201595, 27.331463>,  <37.166317, 33.535332, 27.942150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921753, 33.201595, 27.331463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800980, 33.578281, 27.272129>,  <36.728516, 33.804295, 27.236528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800980, 33.578281, 27.272129>,  <36.921753, 33.201595, 27.331463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800980, 33.578281, 27.272129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384397, -0.022127, -0.922903,
		-0.872397, -0.335674, -0.355312,
		-0.301933, 0.941718, -0.148336,
		36.710400, 33.860798, 27.227629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691063, 33.224697, 26.562519>,  <36.921753, 33.201595, 27.331463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691063, 33.224697, 26.562519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755577, 33.594028, 26.701921>,  <36.794285, 33.815628, 26.785563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755577, 33.594028, 26.701921>,  <36.691063, 33.224697, 26.562519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755577, 33.594028, 26.701921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356512, 0.274774, -0.892972,
		-0.920264, 0.268273, -0.284858,
		0.161288, 0.923325, 0.348507,
		36.803963, 33.871025, 26.806473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213600, 33.658497, 26.232294>,  <36.691063, 33.224697, 26.562519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213600, 33.658497, 26.232294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536301, 33.873234, 26.331057>,  <36.729919, 34.002075, 26.390314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536301, 33.873234, 26.331057>,  <36.213600, 33.658497, 26.232294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536301, 33.873234, 26.331057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181292, 0.172825, -0.968124,
		-0.562397, 0.825795, 0.042102,
		0.806748, 0.536838, 0.246907,
		36.778324, 34.034286, 26.405128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167820, 34.303814, 25.915091>,  <36.213600, 33.658497, 26.232294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167820, 34.303814, 25.915091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557320, 34.309082, 26.005995>,  <36.791019, 34.312244, 26.060537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557320, 34.309082, 26.005995>,  <36.167820, 34.303814, 25.915091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557320, 34.309082, 26.005995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217717, 0.237705, -0.946623,
		-0.066492, 0.971248, 0.228596,
		0.973744, 0.013174, 0.227262,
		36.849442, 34.313034, 26.074173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448139, 34.802868, 25.506836>,  <36.167820, 34.303814, 25.915091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448139, 34.802868, 25.506836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771763, 34.587345, 25.600735>,  <36.965939, 34.458031, 25.657074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771763, 34.587345, 25.600735>,  <36.448139, 34.802868, 25.506836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771763, 34.587345, 25.600735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359120, 0.137034, -0.923176,
		0.465247, 0.831208, 0.304365,
		0.809060, -0.538808, 0.234749,
		37.014481, 34.425701, 25.671160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941437, 35.186810, 25.160330>,  <36.448139, 34.802868, 25.506836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941437, 35.186810, 25.160330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119286, 34.834797, 25.227085>,  <37.225994, 34.623589, 25.267138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119286, 34.834797, 25.227085>,  <36.941437, 35.186810, 25.160330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119286, 34.834797, 25.227085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258874, -0.052115, -0.964504,
		0.857495, 0.472039, 0.204647,
		0.444619, -0.880036, 0.166887,
		37.252670, 34.570786, 25.277151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648937, 35.385216, 25.075962>,  <36.941437, 35.186810, 25.160330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648937, 35.385216, 25.075962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603382, 34.989277, 25.041945>,  <37.576050, 34.751713, 25.021534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603382, 34.989277, 25.041945>,  <37.648937, 35.385216, 25.075962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603382, 34.989277, 25.041945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629518, -0.005675, -0.776965,
		0.768595, -0.142020, 0.623773,
		-0.113885, -0.989847, -0.085043,
		37.569218, 34.692322, 25.016432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394356, 35.069496, 24.968805>,  <37.648937, 35.385216, 25.075962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394356, 35.069496, 24.968805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142635, 34.794655, 24.823547>,  <37.991604, 34.629749, 24.736393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142635, 34.794655, 24.823547>,  <38.394356, 35.069496, 24.968805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142635, 34.794655, 24.823547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657118, -0.220953, -0.720677,
		0.414939, -0.692152, 0.590552,
		-0.629302, -0.687099, -0.363144,
		37.953846, 34.588524, 24.714603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790691, 34.555065, 24.710159>,  <38.394356, 35.069496, 24.968805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790691, 34.555065, 24.710159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442966, 34.454834, 24.539740>,  <38.234333, 34.394695, 24.437489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442966, 34.454834, 24.539740>,  <38.790691, 34.555065, 24.710159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442966, 34.454834, 24.539740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494079, -0.416537, -0.763140,
		0.013758, -0.873905, 0.485902,
		-0.869308, -0.250574, -0.426048,
		38.182175, 34.379662, 24.411924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863529, 33.780491, 24.669880>,  <38.790691, 34.555065, 24.710159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863529, 33.780491, 24.669880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570564, 33.890308, 24.420660>,  <38.394783, 33.956200, 24.271128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570564, 33.890308, 24.420660>,  <38.863529, 33.780491, 24.669880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570564, 33.890308, 24.420660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388507, -0.582971, -0.713587,
		-0.559128, -0.764703, 0.320318,
		-0.732420, 0.274541, -0.623048,
		38.350842, 33.972672, 24.233746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668377, 33.193977, 24.389605>,  <38.863529, 33.780491, 24.669880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668377, 33.193977, 24.389605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534527, 33.462025, 24.124586>,  <38.454216, 33.622852, 23.965576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534527, 33.462025, 24.124586>,  <38.668377, 33.193977, 24.389605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534527, 33.462025, 24.124586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346157, -0.566514, -0.747822,
		-0.876472, -0.479582, -0.042399,
		-0.334622, 0.670122, -0.662544,
		38.434139, 33.663063, 23.925823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403309, 32.764118, 23.906233>,  <38.668377, 33.193977, 24.389605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403309, 32.764118, 23.906233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446747, 33.120770, 23.730413>,  <38.472809, 33.334759, 23.624922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446747, 33.120770, 23.730413>,  <38.403309, 32.764118, 23.906233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446747, 33.120770, 23.730413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232786, -0.452680, -0.860751,
		-0.966446, -0.008850, -0.256717,
		0.108593, 0.891629, -0.439551,
		38.479324, 33.388260, 23.598549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056778, 32.733727, 23.298302>,  <38.403309, 32.764118, 23.906233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056778, 32.733727, 23.298302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325127, 33.025986, 23.247570>,  <38.486137, 33.201340, 23.217131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325127, 33.025986, 23.247570>,  <38.056778, 32.733727, 23.298302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325127, 33.025986, 23.247570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266392, -0.397058, -0.878283,
		-0.692071, 0.555431, -0.461013,
		0.670875, 0.730644, -0.126830,
		38.526390, 33.245178, 23.209520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938499, 33.023438, 22.716059>,  <38.056778, 32.733727, 23.298302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938499, 33.023438, 22.716059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326691, 33.092861, 22.783039>,  <38.559605, 33.134518, 22.823227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326691, 33.092861, 22.783039>,  <37.938499, 33.023438, 22.716059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326691, 33.092861, 22.783039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220266, -0.355118, -0.908501,
		-0.098216, 0.918568, -0.382866,
		0.970482, 0.173561, 0.167452,
		38.617836, 33.144928, 22.833275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186245, 33.334740, 22.156467>,  <37.938499, 33.023438, 22.716059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186245, 33.334740, 22.156467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546497, 33.239666, 22.302002>,  <38.762650, 33.182621, 22.389322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546497, 33.239666, 22.302002>,  <38.186245, 33.334740, 22.156467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546497, 33.239666, 22.302002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198293, -0.520224, -0.830691,
		0.386715, 0.820290, -0.421398,
		0.900628, -0.237681, 0.363836,
		38.816685, 33.168362, 22.411152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712906, 33.349445, 21.552694>,  <38.186245, 33.334740, 22.156467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712906, 33.349445, 21.552694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908070, 33.122200, 21.817780>,  <39.025169, 32.985851, 21.976831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908070, 33.122200, 21.817780>,  <38.712906, 33.349445, 21.552694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908070, 33.122200, 21.817780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328926, -0.583588, -0.742450,
		0.808549, 0.580232, -0.097870,
		0.487909, -0.568116, 0.662714,
		39.054443, 32.951767, 22.016594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359600, 33.437836, 21.301455>,  <38.712906, 33.349445, 21.552694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359600, 33.437836, 21.301455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335075, 33.103848, 21.520203>,  <39.320358, 32.903454, 21.651451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335075, 33.103848, 21.520203>,  <39.359600, 33.437836, 21.301455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335075, 33.103848, 21.520203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494195, -0.501425, -0.710172,
		0.867186, 0.226717, 0.443382,
		-0.061314, -0.834969, 0.546871,
		39.316681, 32.853355, 21.684263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044884, 33.150707, 21.410707>,  <39.359600, 33.437836, 21.301455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044884, 33.150707, 21.410707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789581, 32.846607, 21.459124>,  <39.636398, 32.664146, 21.488173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789581, 32.846607, 21.459124>,  <40.044884, 33.150707, 21.410707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789581, 32.846607, 21.459124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610955, -0.595903, -0.521185,
		0.468357, -0.258701, 0.844817,
		-0.638260, -0.760246, 0.121040,
		39.598103, 32.618534, 21.495436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416042, 32.579224, 21.564289>,  <40.044884, 33.150707, 21.410707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416042, 32.579224, 21.564289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075207, 32.430920, 21.416517>,  <39.870705, 32.341938, 21.327854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075207, 32.430920, 21.416517>,  <40.416042, 32.579224, 21.564289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075207, 32.430920, 21.416517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523106, -0.626760, -0.577522,
		-0.017422, -0.685352, 0.728003,
		-0.852090, -0.370761, -0.369432,
		39.819580, 32.319691, 21.305687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553226, 31.848759, 21.528008>,  <40.416042, 32.579224, 21.564289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553226, 31.848759, 21.528008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250648, 31.893074, 21.270166>,  <40.069099, 31.919664, 21.115461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250648, 31.893074, 21.270166>,  <40.553226, 31.848759, 21.528008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250648, 31.893074, 21.270166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469014, -0.595029, -0.652661,
		-0.455865, -0.796032, 0.398146,
		-0.756447, 0.110789, -0.644602,
		40.023716, 31.926311, 21.076786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369267, 31.144758, 21.210083>,  <40.553226, 31.848759, 21.528008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369267, 31.144758, 21.210083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192616, 31.405836, 20.963844>,  <40.086624, 31.562483, 20.816101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192616, 31.405836, 20.963844>,  <40.369267, 31.144758, 21.210083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192616, 31.405836, 20.963844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221817, -0.585402, -0.779809,
		-0.869348, -0.480931, 0.113749,
		-0.441623, 0.652694, -0.615597,
		40.060127, 31.601645, 20.779165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939526, 30.820494, 20.618933>,  <40.369267, 31.144758, 21.210083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939526, 30.820494, 20.618933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050690, 31.183203, 20.492109>,  <40.117390, 31.400827, 20.416016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050690, 31.183203, 20.492109>,  <39.939526, 30.820494, 20.618933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050690, 31.183203, 20.492109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391038, -0.408270, -0.824867,
		-0.877413, 0.105259, -0.468046,
		0.277914, 0.906772, -0.317061,
		40.134064, 31.455235, 20.396992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031418, 30.691412, 19.920765>,  <39.939526, 30.820494, 20.618933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031418, 30.691412, 19.920765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176769, 31.063755, 19.936039>,  <40.263981, 31.287161, 19.945204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176769, 31.063755, 19.936039>,  <40.031418, 30.691412, 19.920765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176769, 31.063755, 19.936039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514576, -0.166374, -0.841148,
		-0.776636, 0.325308, -0.539455,
		0.363383, 0.930857, 0.038184,
		40.285786, 31.343012, 19.947495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875904, 31.034782, 19.318878>,  <40.031418, 30.691412, 19.920765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875904, 31.034782, 19.318878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200226, 31.229336, 19.449125>,  <40.394817, 31.346067, 19.527273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200226, 31.229336, 19.449125>,  <39.875904, 31.034782, 19.318878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200226, 31.229336, 19.449125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425785, -0.108394, -0.898309,
		-0.401627, 0.866996, -0.294981,
		0.810804, 0.486383, 0.325619,
		40.443466, 31.375250, 19.546812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094193, 31.414486, 18.726522>,  <39.875904, 31.034782, 19.318878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094193, 31.414486, 18.726522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412762, 31.407551, 18.968319>,  <40.603905, 31.403389, 19.113396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412762, 31.407551, 18.968319>,  <40.094193, 31.414486, 18.726522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412762, 31.407551, 18.968319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591367, -0.186715, -0.784489,
		0.126468, 0.982261, -0.138452,
		0.796424, -0.017337, 0.604490,
		40.651688, 31.402349, 19.149666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592903, 31.900684, 18.370943>,  <40.094193, 31.414486, 18.726522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592903, 31.900684, 18.370943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773605, 31.630733, 18.604340>,  <40.882027, 31.468763, 18.744377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773605, 31.630733, 18.604340>,  <40.592903, 31.900684, 18.370943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773605, 31.630733, 18.604340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673426, -0.171030, -0.719198,
		0.585164, 0.717838, 0.377215,
		0.451753, -0.674876, 0.583491,
		40.909130, 31.428270, 18.779387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217831, 32.061695, 18.214230>,  <40.592903, 31.900684, 18.370943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217831, 32.061695, 18.214230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233212, 31.701101, 18.386667>,  <41.242439, 31.484745, 18.490129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233212, 31.701101, 18.386667>,  <41.217831, 32.061695, 18.214230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233212, 31.701101, 18.386667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635461, -0.310885, -0.706781,
		0.771175, 0.301120, 0.560907,
		0.038448, -0.901486, 0.431096,
		41.244747, 31.430655, 18.515997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013771, 31.847246, 18.309185>,  <41.217831, 32.061695, 18.214230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013771, 31.847246, 18.309185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799282, 31.509621, 18.307138>,  <41.670589, 31.307045, 18.305910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799282, 31.509621, 18.307138>,  <42.013771, 31.847246, 18.309185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799282, 31.509621, 18.307138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594935, -0.373641, -0.711649,
		0.598764, -0.384646, 0.702517,
		-0.536222, -0.844061, -0.005117,
		41.638416, 31.256403, 18.305603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501083, 31.330711, 18.530079>,  <42.013771, 31.847246, 18.309185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501083, 31.330711, 18.530079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216106, 31.156366, 18.310099>,  <42.045120, 31.051760, 18.178110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216106, 31.156366, 18.310099>,  <42.501083, 31.330711, 18.530079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216106, 31.156366, 18.310099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697938, -0.358789, -0.619801,
		0.072831, -0.825406, 0.559821,
		-0.712445, -0.435861, -0.549952,
		42.002373, 31.025608, 18.145113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723244, 30.712641, 18.427326>,  <42.501083, 31.330711, 18.530079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723244, 30.712641, 18.427326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447224, 30.748980, 18.140110>,  <42.281612, 30.770782, 17.967781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447224, 30.748980, 18.140110>,  <42.723244, 30.712641, 18.427326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447224, 30.748980, 18.140110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656444, -0.339270, -0.673778,
		-0.304819, -0.936292, 0.174477,
		-0.690048, 0.090846, -0.718040,
		42.240208, 30.776234, 17.924698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273399, 30.654388, 19.026718>,  <42.723244, 30.712641, 18.427326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273399, 30.654388, 19.026718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547920, 30.452652, 19.236336>,  <43.712635, 30.331610, 19.362106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547920, 30.452652, 19.236336>,  <43.273399, 30.654388, 19.026718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547920, 30.452652, 19.236336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346237, 0.407085, 0.845223,
		-0.639612, -0.761526, 0.104764,
		0.686307, -0.504342, 0.524045,
		43.753811, 30.301350, 19.393549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023167, 30.234985, 19.620232>,  <43.273399, 30.654388, 19.026718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023167, 30.234985, 19.620232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391300, 30.369465, 19.700180>,  <43.612183, 30.450153, 19.748150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391300, 30.369465, 19.700180>,  <43.023167, 30.234985, 19.620232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391300, 30.369465, 19.700180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357160, 0.514108, 0.779827,
		0.159422, -0.789090, 0.593229,
		0.920338, 0.336199, 0.199871,
		43.667400, 30.470325, 19.760141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107533, 30.236101, 20.377630>,  <43.023167, 30.234985, 19.620232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107533, 30.236101, 20.377630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424015, 30.451513, 20.261719>,  <43.613907, 30.580761, 20.192173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424015, 30.451513, 20.261719>,  <43.107533, 30.236101, 20.377630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424015, 30.451513, 20.261719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198835, 0.674635, 0.710867,
		0.578318, -0.504827, 0.640857,
		0.791210, 0.538532, -0.289777,
		43.661377, 30.613073, 20.174786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443462, 30.426161, 20.989630>,  <43.107533, 30.236101, 20.377630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443462, 30.426161, 20.989630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586338, 30.684855, 20.720068>,  <43.672062, 30.840071, 20.558331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586338, 30.684855, 20.720068>,  <43.443462, 30.426161, 20.989630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586338, 30.684855, 20.720068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117826, 0.746937, 0.654372,
		0.926571, -0.154330, 0.342998,
		0.357187, 0.646736, -0.673906,
		43.693493, 30.878876, 20.517897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042648, 30.783710, 21.270048>,  <43.443462, 30.426161, 20.989630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042648, 30.783710, 21.270048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877251, 31.011906, 20.986198>,  <43.778011, 31.148823, 20.815889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877251, 31.011906, 20.986198>,  <44.042648, 30.783710, 21.270048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877251, 31.011906, 20.986198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167516, 0.718401, 0.675158,
		0.894964, 0.398048, -0.201489,
		-0.413495, 0.570489, -0.709623,
		43.753201, 31.183052, 20.773312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403603, 31.452890, 21.366943>,  <44.042648, 30.783710, 21.270048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403603, 31.452890, 21.366943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074028, 31.499107, 21.145031>,  <43.876286, 31.526838, 21.011883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074028, 31.499107, 21.145031>,  <44.403603, 31.452890, 21.366943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074028, 31.499107, 21.145031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246074, 0.808929, 0.533931,
		0.510471, 0.576441, -0.638072,
		-0.823934, 0.115543, -0.554782,
		43.826847, 31.533770, 20.978596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390625, 32.159546, 21.252560>,  <44.403603, 31.452890, 21.366943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390625, 32.159546, 21.252560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011932, 32.042332, 21.199135>,  <43.784718, 31.972004, 21.167080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011932, 32.042332, 21.199135>,  <44.390625, 32.159546, 21.252560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011932, 32.042332, 21.199135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321808, 0.845231, 0.426643,
		-0.012132, 0.446895, -0.894504,
		-0.946727, -0.293034, -0.133560,
		43.727913, 31.954422, 21.159067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037697, 32.762314, 21.064623>,  <44.390625, 32.159546, 21.252560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037697, 32.762314, 21.064623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768848, 32.497772, 21.197807>,  <43.607540, 32.339046, 21.277718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768848, 32.497772, 21.197807>,  <44.037697, 32.762314, 21.064623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768848, 32.497772, 21.197807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418341, 0.710209, 0.566209,
		-0.610938, 0.241269, -0.754019,
		-0.672120, -0.661356, 0.332961,
		43.567211, 32.299366, 21.297695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360428, 33.094788, 21.014790>,  <44.037697, 32.762314, 21.064623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360428, 33.094788, 21.014790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306068, 32.797012, 21.276276>,  <43.273453, 32.618347, 21.433167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306068, 32.797012, 21.276276>,  <43.360428, 33.094788, 21.014790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306068, 32.797012, 21.276276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588509, 0.591465, 0.551205,
		-0.796987, -0.309808, -0.518489,
		-0.135900, -0.744438, 0.653715,
		43.265297, 32.573681, 21.472389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638439, 33.082863, 21.219864>,  <43.360428, 33.094788, 21.014790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638439, 33.082863, 21.219864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803776, 32.886162, 21.526413>,  <42.902977, 32.768143, 21.710342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803776, 32.886162, 21.526413>,  <42.638439, 33.082863, 21.219864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803776, 32.886162, 21.526413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428270, 0.637748, 0.640205,
		-0.803574, -0.592840, 0.053008,
		0.413344, -0.491750, 0.766373,
		42.927780, 32.738636, 21.756325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069786, 32.920246, 21.650620>,  <42.638439, 33.082863, 21.219864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069786, 32.920246, 21.650620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370876, 32.851456, 21.904812>,  <42.551529, 32.810181, 22.057327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370876, 32.851456, 21.904812>,  <42.069786, 32.920246, 21.650620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370876, 32.851456, 21.904812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402829, 0.643168, 0.651201,
		-0.520711, -0.746163, 0.414850,
		0.752721, -0.171974, 0.635481,
		42.596691, 32.799862, 22.095457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866413, 32.724888, 22.395451>,  <42.069786, 32.920246, 21.650620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866413, 32.724888, 22.395451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228523, 32.894817, 22.394037>,  <42.445789, 32.996773, 22.393190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228523, 32.894817, 22.394037>,  <41.866413, 32.724888, 22.395451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228523, 32.894817, 22.394037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293918, 0.632286, 0.716817,
		0.306750, -0.647876, 0.697252,
		0.905271, 0.424819, -0.003531,
		42.500103, 33.022263, 22.392977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064011, 32.724720, 23.030668>,  <41.866413, 32.724888, 22.395451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064011, 32.724720, 23.030668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275501, 33.028076, 22.878202>,  <42.402397, 33.210091, 22.786722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275501, 33.028076, 22.878202>,  <42.064011, 32.724720, 23.030668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275501, 33.028076, 22.878202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090885, 0.497070, 0.862938,
		0.843913, -0.421615, 0.331740,
		0.528726, 0.758394, -0.381166,
		42.434120, 33.255596, 22.763853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688793, 32.921761, 23.518703>,  <42.064011, 32.724720, 23.030668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688793, 32.921761, 23.518703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578293, 33.231613, 23.291147>,  <42.511993, 33.417522, 23.154613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578293, 33.231613, 23.291147>,  <42.688793, 32.921761, 23.518703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578293, 33.231613, 23.291147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290266, 0.497037, 0.817741,
		0.916203, 0.391035, 0.087539,
		-0.276255, 0.774627, -0.568891,
		42.495415, 33.464001, 23.120480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840057, 33.516174, 23.877464>,  <42.688793, 32.921761, 23.518703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840057, 33.516174, 23.877464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560928, 33.646355, 23.622238>,  <42.393452, 33.724464, 23.469103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560928, 33.646355, 23.622238>,  <42.840057, 33.516174, 23.877464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560928, 33.646355, 23.622238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446262, 0.499248, 0.742699,
		0.560267, 0.803014, -0.203147,
		-0.697819, 0.325453, -0.638067,
		42.351582, 33.743992, 23.430819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842121, 34.264656, 23.925392>,  <42.840057, 33.516174, 23.877464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842121, 34.264656, 23.925392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482857, 34.149460, 23.792501>,  <42.267300, 34.080341, 23.712767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482857, 34.149460, 23.792501>,  <42.842121, 34.264656, 23.925392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482857, 34.149460, 23.792501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438687, 0.637610, 0.633251,
		0.029460, 0.714502, -0.699013,
		-0.898157, -0.287992, -0.332227,
		42.213409, 34.063061, 23.692833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403091, 34.828636, 24.050369>,  <42.842121, 34.264656, 23.925392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403091, 34.828636, 24.050369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122784, 34.554764, 23.970242>,  <41.954597, 34.390438, 23.922165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122784, 34.554764, 23.970242>,  <42.403091, 34.828636, 24.050369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122784, 34.554764, 23.970242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642874, 0.484369, 0.593381,
		-0.309249, 0.544604, -0.779597,
		-0.700770, -0.684685, -0.200321,
		41.912552, 34.349358, 23.910145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794060, 35.170628, 23.776423>,  <42.403091, 34.828636, 24.050369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794060, 35.170628, 23.776423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678753, 34.820194, 23.931025>,  <41.609570, 34.609936, 24.023787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678753, 34.820194, 23.931025>,  <41.794060, 35.170628, 23.776423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678753, 34.820194, 23.931025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683810, 0.470900, 0.557367,
		-0.670303, -0.103626, -0.734816,
		-0.288267, -0.876079, 0.386506,
		41.592274, 34.557369, 24.046976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068104, 35.095127, 23.738594>,  <41.794060, 35.170628, 23.776423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068104, 35.095127, 23.738594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188519, 34.851715, 24.032280>,  <41.260765, 34.705669, 24.208490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188519, 34.851715, 24.032280>,  <41.068104, 35.095127, 23.738594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188519, 34.851715, 24.032280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693797, 0.388456, 0.606422,
		-0.654237, -0.691947, -0.305259,
		0.301032, -0.608532, 0.734213,
		41.278828, 34.669155, 24.252544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440144, 35.082497, 24.070961>,  <41.068104, 35.095127, 23.738594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440144, 35.082497, 24.070961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672588, 34.874638, 24.321486>,  <40.812057, 34.749920, 24.471800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672588, 34.874638, 24.321486>,  <40.440144, 35.082497, 24.070961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672588, 34.874638, 24.321486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718981, 0.032738, 0.694258,
		-0.381277, -0.853751, -0.354595,
		0.581115, -0.519652, 0.626313,
		40.846924, 34.718742, 24.509380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061310, 34.563011, 24.331629>,  <40.440144, 35.082497, 24.070961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061310, 34.563011, 24.331629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354576, 34.582058, 24.602982>,  <40.530537, 34.593487, 24.765793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354576, 34.582058, 24.602982>,  <40.061310, 34.563011, 24.331629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354576, 34.582058, 24.602982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679462, 0.009753, 0.733645,
		0.028329, -0.998817, 0.039515,
		0.733163, 0.047633, 0.678382,
		40.574524, 34.596344, 24.806496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004726, 33.993328, 24.819277>,  <40.061310, 34.563011, 24.331629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004726, 33.993328, 24.819277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209423, 34.283974, 25.002647>,  <40.332241, 34.458363, 25.112671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209423, 34.283974, 25.002647>,  <40.004726, 33.993328, 24.819277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209423, 34.283974, 25.002647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551146, -0.131679, 0.823953,
		0.659061, -0.674309, 0.333085,
		0.511739, 0.726614, 0.458427,
		40.362946, 34.501957, 25.140175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264633, 33.588955, 25.436054>,  <40.004726, 33.993328, 24.819277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264633, 33.588955, 25.436054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244499, 33.982265, 25.506067>,  <40.232418, 34.218250, 25.548075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244499, 33.982265, 25.506067>,  <40.264633, 33.588955, 25.436054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244499, 33.982265, 25.506067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514947, -0.175715, 0.839019,
		0.855743, -0.047900, 0.515180,
		-0.050336, 0.983275, 0.175033,
		40.229397, 34.277248, 25.558577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313641, 33.625599, 26.244158>,  <40.264633, 33.588955, 25.436054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313641, 33.625599, 26.244158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179291, 33.974350, 26.101603>,  <40.098682, 34.183601, 26.016069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179291, 33.974350, 26.101603>,  <40.313641, 33.625599, 26.244158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179291, 33.974350, 26.101603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408509, 0.206093, 0.889183,
		0.848711, 0.444240, 0.286950,
		-0.335872, 0.871881, -0.356390,
		40.078529, 34.235916, 25.994686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363407, 34.164440, 26.871164>,  <40.313641, 33.625599, 26.244158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363407, 34.164440, 26.871164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108601, 34.333252, 26.613140>,  <39.955715, 34.434540, 26.458326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108601, 34.333252, 26.613140>,  <40.363407, 34.164440, 26.871164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108601, 34.333252, 26.613140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546979, 0.342172, 0.764024,
		0.543159, 0.839531, 0.012870,
		-0.637018, 0.422026, -0.645060,
		39.917496, 34.459858, 26.419622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227077, 34.702751, 27.173874>,  <40.363407, 34.164440, 26.871164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227077, 34.702751, 27.173874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917236, 34.689503, 26.921240>,  <39.731331, 34.681553, 26.769659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917236, 34.689503, 26.921240>,  <40.227077, 34.702751, 27.173874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917236, 34.689503, 26.921240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631219, 0.102843, 0.768756,
		0.039492, 0.994146, -0.100568,
		-0.774598, -0.033121, -0.631586,
		39.684856, 34.679565, 26.731764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832783, 35.434414, 27.144573>,  <40.227077, 34.702751, 27.173874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832783, 35.434414, 27.144573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578037, 35.152908, 27.018642>,  <39.425190, 34.984005, 26.943083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578037, 35.152908, 27.018642>,  <39.832783, 35.434414, 27.144573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578037, 35.152908, 27.018642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660367, 0.287196, 0.693854,
		-0.397894, 0.649793, -0.647649,
		-0.636864, -0.703767, -0.314828,
		39.386978, 34.941780, 26.924194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223721, 35.826759, 26.879841>,  <39.832783, 35.434414, 27.144573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223721, 35.826759, 26.879841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096649, 35.454021, 26.949987>,  <39.020405, 35.230381, 26.992075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096649, 35.454021, 26.949987>,  <39.223721, 35.826759, 26.879841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096649, 35.454021, 26.949987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632182, 0.345990, 0.693280,
		-0.706701, 0.109377, -0.699006,
		-0.317678, -0.931841, 0.175365,
		39.001347, 35.174469, 27.002598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474724, 35.845444, 26.961344>,  <39.223721, 35.826759, 26.879841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474724, 35.845444, 26.961344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623211, 35.528751, 27.155397>,  <38.712303, 35.338734, 27.271830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623211, 35.528751, 27.155397>,  <38.474724, 35.845444, 26.961344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623211, 35.528751, 27.155397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557711, 0.227616, 0.798216,
		-0.742400, -0.566875, -0.357065,
		0.371215, -0.791735, 0.485135,
		38.734577, 35.291229, 27.300938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843960, 35.586308, 27.311121>,  <38.474724, 35.845444, 26.961344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843960, 35.586308, 27.311121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147266, 35.403442, 27.497042>,  <38.329250, 35.293724, 27.608593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147266, 35.403442, 27.497042>,  <37.843960, 35.586308, 27.311121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147266, 35.403442, 27.497042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359504, 0.301546, 0.883078,
		-0.543870, -0.836702, 0.064298,
		0.758262, -0.457165, 0.464800,
		38.374744, 35.266293, 27.636482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534042, 35.276299, 27.844339>,  <37.843960, 35.586308, 27.311121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534042, 35.276299, 27.844339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917767, 35.283875, 27.957029>,  <38.147999, 35.288418, 28.024643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917767, 35.283875, 27.957029>,  <37.534042, 35.276299, 27.844339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917767, 35.283875, 27.957029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262798, 0.424808, 0.866300,
		-0.103277, -0.905085, 0.412498,
		0.959307, 0.018935, 0.281727,
		38.205559, 35.289555, 28.041548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647324, 35.048725, 28.503607>,  <37.534042, 35.276299, 27.844339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647324, 35.048725, 28.503607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998055, 35.240105, 28.484589>,  <38.208492, 35.354931, 28.473179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998055, 35.240105, 28.484589>,  <37.647324, 35.048725, 28.503607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998055, 35.240105, 28.484589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014529, 0.125205, 0.992025,
		0.480582, -0.869145, 0.116734,
		0.876829, 0.478446, -0.047544,
		38.261105, 35.383636, 28.470325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032341, 34.651405, 28.920622>,  <37.647324, 35.048725, 28.503607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032341, 34.651405, 28.920622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202797, 35.012398, 28.895525>,  <38.305069, 35.228992, 28.880466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202797, 35.012398, 28.895525>,  <38.032341, 34.651405, 28.920622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202797, 35.012398, 28.895525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324001, -0.087498, 0.942002,
		0.844649, -0.421749, -0.329691,
		0.426135, 0.902481, -0.062742,
		38.330639, 35.283142, 28.876703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600056, 34.508705, 29.217976>,  <38.032341, 34.651405, 28.920622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600056, 34.508705, 29.217976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574814, 34.906605, 29.250216>,  <38.559669, 35.145344, 29.269560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574814, 34.906605, 29.250216>,  <38.600056, 34.508705, 29.217976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574814, 34.906605, 29.250216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388520, -0.049907, 0.920088,
		0.919277, 0.089374, -0.383330,
		-0.063101, 0.994747, 0.080602,
		38.555885, 35.205029, 29.274397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287994, 34.811790, 29.331367>,  <38.600056, 34.508705, 29.217976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287994, 34.811790, 29.331367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013905, 35.072899, 29.460587>,  <38.849449, 35.229565, 29.538118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013905, 35.072899, 29.460587>,  <39.287994, 34.811790, 29.331367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013905, 35.072899, 29.460587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443506, 0.022139, 0.895998,
		0.577727, 0.757234, -0.304677,
		-0.685226, 0.652768, 0.323047,
		38.808338, 35.268730, 29.557501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640400, 35.331001, 29.604025>,  <39.287994, 34.811790, 29.331367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640400, 35.331001, 29.604025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280254, 35.342503, 29.777699>,  <39.064167, 35.349403, 29.881903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280254, 35.342503, 29.777699>,  <39.640400, 35.331001, 29.604025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280254, 35.342503, 29.777699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433460, 0.146755, 0.889143,
		-0.038152, 0.988755, -0.144597,
		-0.900365, 0.028754, 0.434185,
		39.010143, 35.351128, 29.907953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714939, 35.668907, 30.131186>,  <39.640400, 35.331001, 29.604025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714939, 35.668907, 30.131186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368031, 35.516201, 30.258995>,  <39.159885, 35.424576, 30.335682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368031, 35.516201, 30.258995>,  <39.714939, 35.668907, 30.131186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368031, 35.516201, 30.258995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350668, -0.012877, 0.936411,
		-0.353378, 0.924168, 0.145042,
		-0.867269, -0.381768, 0.319526,
		39.107849, 35.401669, 30.354853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551670, 35.916569, 30.808920>,  <39.714939, 35.668907, 30.131186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551670, 35.916569, 30.808920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310593, 35.597420, 30.803976>,  <39.165947, 35.405930, 30.801010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310593, 35.597420, 30.803976>,  <39.551670, 35.916569, 30.808920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310593, 35.597420, 30.803976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078926, -0.075018, 0.994054,
		-0.794059, 0.598136, 0.108186,
		-0.602695, -0.797876, -0.012360,
		39.129784, 35.358055, 30.800268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165901, 35.988605, 31.420294>,  <39.551670, 35.916569, 30.808920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165901, 35.988605, 31.420294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117611, 35.600937, 31.334385>,  <39.088638, 35.368336, 31.282839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117611, 35.600937, 31.334385>,  <39.165901, 35.988605, 31.420294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117611, 35.600937, 31.334385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160553, -0.232569, 0.959236,
		-0.979617, 0.081318, 0.183680,
		-0.120722, -0.969174, -0.214773,
		39.081394, 35.310184, 31.269953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544125, 35.652473, 31.797977>,  <39.165901, 35.988605, 31.420294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544125, 35.652473, 31.797977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851322, 35.416012, 31.699408>,  <39.035641, 35.274136, 31.640265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851322, 35.416012, 31.699408>,  <38.544125, 35.652473, 31.797977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851322, 35.416012, 31.699408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242998, -0.087041, 0.966114,
		-0.592569, -0.801850, 0.076802,
		0.767993, -0.591152, -0.246426,
		39.081718, 35.238667, 31.625481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495827, 35.144543, 32.381378>,  <38.544125, 35.652473, 31.797977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495827, 35.144543, 32.381378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859539, 35.113136, 32.217899>,  <39.077766, 35.094292, 32.119812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859539, 35.113136, 32.217899>,  <38.495827, 35.144543, 32.381378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859539, 35.113136, 32.217899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374821, -0.272281, 0.886213,
		-0.180860, -0.959009, -0.218153,
		0.909285, -0.078512, -0.408701,
		39.132324, 35.089581, 32.095287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908764, 35.008080, 32.948658>,  <38.495827, 35.144543, 32.381378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908764, 35.008080, 32.948658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199211, 35.060921, 32.678753>,  <39.373478, 35.092625, 32.516808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199211, 35.060921, 32.678753>,  <38.908764, 35.008080, 32.948658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199211, 35.060921, 32.678753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687569, -0.143563, 0.711786,
		-0.002840, -0.980784, -0.195075,
		0.726114, 0.132105, -0.674764,
		39.417046, 35.100552, 32.476322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478996, 34.686787, 33.557793>,  <38.908764, 35.008080, 32.948658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478996, 34.686787, 33.557793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697063, 34.645828, 33.890614>,  <38.827904, 34.621254, 34.090305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697063, 34.645828, 33.890614>,  <38.478996, 34.686787, 33.557793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697063, 34.645828, 33.890614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378379, -0.915721, 0.135218,
		0.748080, -0.388547, -0.537966,
		0.545165, -0.102401, 0.832051,
		38.860615, 34.615108, 34.140228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871136, 34.451714, 33.572338>,  <38.478996, 34.686787, 33.557793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871136, 34.451714, 33.572338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843002, 34.632786, 33.927895>,  <37.826122, 34.741428, 34.141228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843002, 34.632786, 33.927895>,  <37.871136, 34.451714, 33.572338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843002, 34.632786, 33.927895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982746, 0.121368, -0.139572,
		-0.171064, -0.883376, 0.436330,
		-0.070338, 0.452677, 0.888896,
		37.821899, 34.768589, 34.194565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085857, 34.176079, 34.204620>,  <37.871136, 34.451714, 33.572338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085857, 34.176079, 34.204620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404781, 33.952381, 34.295425>,  <38.596138, 33.818161, 34.349911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404781, 33.952381, 34.295425>,  <38.085857, 34.176079, 34.204620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404781, 33.952381, 34.295425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029317, 0.339797, 0.940042,
		-0.602856, -0.756161, 0.254528,
		0.797311, -0.559247, 0.227017,
		38.643974, 33.784607, 34.363529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018723, 33.773071, 34.817299>,  <38.085857, 34.176079, 34.204620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018723, 33.773071, 34.817299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412628, 33.837433, 34.790924>,  <38.648972, 33.876049, 34.775101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412628, 33.837433, 34.790924>,  <38.018723, 33.773071, 34.817299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412628, 33.837433, 34.790924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022679, 0.257112, 0.966116,
		0.172402, -0.952893, 0.249546,
		0.984766, 0.160900, -0.065937,
		38.708057, 33.885704, 34.771141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110867, 33.097599, 34.849751>,  <38.018723, 33.773071, 34.817299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110867, 33.097599, 34.849751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260220, 33.256020, 35.185307>,  <38.349831, 33.351074, 35.386639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260220, 33.256020, 35.185307>,  <38.110867, 33.097599, 34.849751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260220, 33.256020, 35.185307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789433, -0.339283, 0.511549,
		0.487222, -0.853245, 0.185978,
		0.373378, 0.396055, 0.838886,
		38.372234, 33.374836, 35.436974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389206, 32.619431, 35.215637>,  <38.110867, 33.097599, 34.849751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389206, 32.619431, 35.215637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276958, 32.879910, 35.497684>,  <38.209610, 33.036198, 35.666912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276958, 32.879910, 35.497684>,  <38.389206, 32.619431, 35.215637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276958, 32.879910, 35.497684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482347, -0.730815, 0.482961,
		0.829815, -0.204583, 0.519185,
		-0.280623, 0.651196, 0.705121,
		38.192772, 33.075268, 35.709221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712692, 32.531139, 35.884453>,  <38.389206, 32.619431, 35.215637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712692, 32.531139, 35.884453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341499, 32.678020, 35.909790>,  <38.118786, 32.766151, 35.924992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341499, 32.678020, 35.909790>,  <38.712692, 32.531139, 35.884453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341499, 32.678020, 35.909790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332462, -0.892673, 0.304310,
		0.168291, 0.261334, 0.950465,
		-0.927980, 0.367206, 0.063345,
		38.063107, 32.788181, 35.928795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536102, 32.378185, 36.599854>,  <38.712692, 32.531139, 35.884453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536102, 32.378185, 36.599854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242317, 32.407169, 36.329948>,  <38.066044, 32.424561, 36.168003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242317, 32.407169, 36.329948>,  <38.536102, 32.378185, 36.599854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242317, 32.407169, 36.329948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362024, -0.882831, 0.299246,
		-0.574020, 0.464068, 0.674642,
		-0.734465, 0.072464, -0.674767,
		38.021976, 32.428909, 36.127518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771648, 32.192917, 36.856857>,  <38.536102, 32.378185, 36.599854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771648, 32.192917, 36.856857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819660, 32.094444, 36.472153>,  <37.848465, 32.035358, 36.241329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819660, 32.094444, 36.472153>,  <37.771648, 32.192917, 36.856857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819660, 32.094444, 36.472153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521368, -0.840051, 0.149965,
		-0.844848, 0.483431, -0.229184,
		0.120028, -0.246187, -0.961762,
		37.855667, 32.020588, 36.183624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192223, 32.153610, 36.568699>,  <37.771648, 32.192917, 36.856857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192223, 32.153610, 36.568699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376808, 31.884575, 36.337296>,  <37.487560, 31.723154, 36.198452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376808, 31.884575, 36.337296>,  <37.192223, 32.153610, 36.568699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376808, 31.884575, 36.337296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727260, -0.660253, 0.187511,
		-0.508082, 0.334200, -0.793828,
		0.461461, -0.672590, -0.578513,
		37.515247, 31.682798, 36.163742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775780, 31.922543, 36.036049>,  <37.192223, 32.153610, 36.568699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775780, 31.922543, 36.036049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053749, 31.658052, 36.149090>,  <37.220531, 31.499359, 36.216915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053749, 31.658052, 36.149090>,  <36.775780, 31.922543, 36.036049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053749, 31.658052, 36.149090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701007, -0.710510, 0.061356,
		0.160220, -0.240742, -0.957274,
		0.694923, -0.661225, 0.282599,
		37.262226, 31.459684, 36.233871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752338, 31.414185, 35.516777>,  <36.775780, 31.922543, 36.036049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752338, 31.414185, 35.516777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809895, 31.240767, 35.872604>,  <36.844429, 31.136715, 36.086102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809895, 31.240767, 35.872604>,  <36.752338, 31.414185, 35.516777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809895, 31.240767, 35.872604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589998, -0.759271, -0.274608,
		0.794479, -0.485329, -0.365047,
		0.143894, -0.433547, 0.889568,
		36.853062, 31.110703, 36.139473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968636, 30.718988, 35.395470>,  <36.752338, 31.414185, 35.516777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968636, 30.718988, 35.395470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816303, 30.693073, 35.764420>,  <36.724903, 30.677525, 35.985790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816303, 30.693073, 35.764420>,  <36.968636, 30.718988, 35.395470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816303, 30.693073, 35.764420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502458, -0.822906, -0.265256,
		0.776212, -0.564471, 0.280832,
		-0.380828, -0.064789, 0.922373,
		36.702053, 30.673637, 36.041130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986584, 30.113308, 35.595516>,  <36.968636, 30.718988, 35.395470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986584, 30.113308, 35.595516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709545, 30.242363, 35.853577>,  <36.543324, 30.319796, 36.008411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709545, 30.242363, 35.853577>,  <36.986584, 30.113308, 35.595516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709545, 30.242363, 35.853577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627464, -0.710654, -0.318215,
		0.355811, -0.625202, 0.694637,
		-0.692595, 0.322635, 0.645150,
		36.501766, 30.339153, 36.047123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622387, 29.536098, 35.695065>,  <36.986584, 30.113308, 35.595516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622387, 29.536098, 35.695065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382381, 29.805750, 35.867355>,  <36.238377, 29.967541, 35.970730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382381, 29.805750, 35.867355>,  <36.622387, 29.536098, 35.695065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382381, 29.805750, 35.867355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782787, -0.605798, -0.142315,
		0.164997, -0.422562, 0.891189,
		-0.600017, 0.674129, 0.430731,
		36.202377, 30.007988, 35.996574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076656, 29.229889, 36.190674>,  <36.622387, 29.536098, 35.695065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076656, 29.229889, 36.190674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930698, 29.578049, 36.058456>,  <35.843124, 29.786943, 35.979126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930698, 29.578049, 36.058456>,  <36.076656, 29.229889, 36.190674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930698, 29.578049, 36.058456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886401, -0.433388, -0.162688,
		-0.284857, 0.233631, 0.929663,
		-0.364896, 0.870397, -0.330545,
		35.821228, 29.839169, 35.959293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378521, 29.415558, 36.435413>,  <36.076656, 29.229889, 36.190674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378521, 29.415558, 36.435413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435375, 29.582308, 36.076302>,  <35.469486, 29.682358, 35.860832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435375, 29.582308, 36.076302>,  <35.378521, 29.415558, 36.435413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435375, 29.582308, 36.076302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875705, -0.369867, -0.310385,
		-0.461451, 0.830310, 0.312487,
		0.142137, 0.416874, -0.897783,
		35.478016, 29.707371, 35.806969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733768, 29.762980, 36.257610>,  <35.378521, 29.415558, 36.435413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733768, 29.762980, 36.257610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967407, 29.620153, 35.966038>,  <35.107590, 29.534458, 35.791096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967407, 29.620153, 35.966038>,  <34.733768, 29.762980, 36.257610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967407, 29.620153, 35.966038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790907, -0.452260, -0.412221,
		-0.182474, 0.817291, -0.546570,
		0.584096, -0.357066, -0.728927,
		35.142635, 29.513033, 35.747360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338253, 29.258013, 35.762871>,  <34.733768, 29.762980, 36.257610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338253, 29.258013, 35.762871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707180, 29.256134, 35.608315>,  <34.928535, 29.255007, 35.515579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707180, 29.256134, 35.608315>,  <34.338253, 29.258013, 35.762871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707180, 29.256134, 35.608315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250490, -0.768656, -0.588577,
		-0.294241, 0.639646, -0.710124,
		0.922321, -0.004695, -0.386395,
		34.983875, 29.254726, 35.492397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303474, 29.542288, 35.094563>,  <34.338253, 29.258013, 35.762871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303474, 29.542288, 35.094563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601368, 29.278696, 35.136730>,  <34.780106, 29.120541, 35.162029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601368, 29.278696, 35.136730>,  <34.303474, 29.542288, 35.094563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601368, 29.278696, 35.136730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410811, -0.577172, -0.705766,
		0.525931, 0.482303, -0.700557,
		0.744735, -0.658981, 0.105417,
		34.824787, 29.081001, 35.168354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147148, 29.949793, 34.440407>,  <34.303474, 29.542288, 35.094563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147148, 29.949793, 34.440407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420818, 30.097694, 34.188953>,  <34.585022, 30.186436, 34.038082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420818, 30.097694, 34.188953>,  <34.147148, 29.949793, 34.440407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420818, 30.097694, 34.188953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629934, 0.134771, 0.764866,
		0.367533, -0.919304, -0.140713,
		0.684180, 0.369754, -0.628633,
		34.626072, 30.208620, 34.000362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685452, 29.469090, 34.438354>,  <34.147148, 29.949793, 34.440407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685452, 29.469090, 34.438354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790478, 29.851444, 34.385681>,  <34.853493, 30.080856, 34.354076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790478, 29.851444, 34.385681>,  <34.685452, 29.469090, 34.438354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790478, 29.851444, 34.385681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479965, -0.010987, 0.877219,
		0.837075, -0.293531, -0.461677,
		0.262563, 0.955887, -0.131687,
		34.869247, 30.138210, 34.346176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455063, 29.605066, 34.609486>,  <34.685452, 29.469090, 34.438354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455063, 29.605066, 34.609486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238167, 29.937616, 34.658142>,  <35.108028, 30.137146, 34.687336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238167, 29.937616, 34.658142>,  <35.455063, 29.605066, 34.609486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238167, 29.937616, 34.658142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400180, 0.128235, 0.907420,
		0.738807, 0.540715, -0.402233,
		-0.542236, 0.831374, 0.121642,
		35.075497, 30.187029, 34.694633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892353, 30.062586, 34.790710>,  <35.455063, 29.605066, 34.609486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892353, 30.062586, 34.790710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539062, 30.131878, 34.965023>,  <35.327087, 30.173454, 35.069611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539062, 30.131878, 34.965023>,  <35.892353, 30.062586, 34.790710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539062, 30.131878, 34.965023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466971, 0.239583, 0.851198,
		0.043048, 0.955296, -0.292500,
		-0.883224, 0.173231, 0.435782,
		35.274094, 30.183847, 35.095757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823273, 30.742247, 35.091309>,  <35.892353, 30.062586, 34.790710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823273, 30.742247, 35.091309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630249, 30.444595, 35.276096>,  <35.514435, 30.266005, 35.386967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630249, 30.444595, 35.276096>,  <35.823273, 30.742247, 35.091309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630249, 30.444595, 35.276096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587840, 0.115843, 0.800640,
		-0.649293, 0.657918, 0.381526,
		-0.482558, -0.744127, 0.461967,
		35.485481, 30.221357, 35.414688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400925, 30.983948, 35.622028>,  <35.823273, 30.742247, 35.091309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400925, 30.983948, 35.622028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537781, 30.620674, 35.718479>,  <35.619892, 30.402710, 35.776352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537781, 30.620674, 35.718479>,  <35.400925, 30.983948, 35.622028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537781, 30.620674, 35.718479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578194, 0.405760, 0.707849,
		-0.740699, -0.102762, 0.663932,
		0.342137, -0.908184, 0.241130,
		35.640423, 30.348219, 35.790817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340317, 30.962400, 36.322277>,  <35.400925, 30.983948, 35.622028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340317, 30.962400, 36.322277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618813, 30.698851, 36.208340>,  <35.785912, 30.540720, 36.139977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618813, 30.698851, 36.208340>,  <35.340317, 30.962400, 36.322277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618813, 30.698851, 36.208340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650866, 0.412135, 0.637588,
		-0.302699, -0.629306, 0.715785,
		0.696238, -0.658877, -0.284841,
		35.827682, 30.501188, 36.122887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619144, 30.608938, 36.957874>,  <35.340317, 30.962400, 36.322277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619144, 30.608938, 36.957874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890396, 30.618055, 36.664040>,  <36.053146, 30.623526, 36.487740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890396, 30.618055, 36.664040>,  <35.619144, 30.608938, 36.957874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890396, 30.618055, 36.664040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635863, 0.483016, 0.601974,
		0.368539, -0.875315, 0.313054,
		0.678127, 0.022791, -0.734591,
		36.093834, 30.624893, 36.443661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270363, 30.693714, 37.287815>,  <35.619144, 30.608938, 36.957874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270363, 30.693714, 37.287815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402435, 30.694096, 36.910248>,  <36.481678, 30.694324, 36.683708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402435, 30.694096, 36.910248>,  <36.270363, 30.693714, 37.287815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402435, 30.694096, 36.910248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819297, 0.496316, 0.287092,
		0.468755, -0.868141, 0.163095,
		0.330183, 0.000953, -0.943916,
		36.501492, 30.694382, 36.627071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997757, 30.653929, 37.328030>,  <36.270363, 30.693714, 37.287815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997757, 30.653929, 37.328030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959602, 30.778690, 36.949905>,  <36.936710, 30.853546, 36.723030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959602, 30.778690, 36.949905>,  <36.997757, 30.653929, 37.328030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959602, 30.778690, 36.949905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871962, 0.484280, 0.071797,
		0.480190, -0.817429, -0.318163,
		-0.095391, 0.311903, -0.945313,
		36.930984, 30.872261, 36.666313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604176, 30.423647, 36.991993>,  <36.997757, 30.653929, 37.328030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604176, 30.423647, 36.991993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442692, 30.713120, 36.768097>,  <37.345802, 30.886803, 36.633759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442692, 30.713120, 36.768097>,  <37.604176, 30.423647, 36.991993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442692, 30.713120, 36.768097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902848, 0.414058, -0.115848,
		0.147927, -0.552127, -0.820532,
		-0.403711, 0.723679, -0.559737,
		37.321579, 30.930223, 36.600174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250713, 30.677290, 36.635715>,  <37.604176, 30.423647, 36.991993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250713, 30.677290, 36.635715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936455, 30.893373, 36.515091>,  <37.747902, 31.023024, 36.442715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936455, 30.893373, 36.515091>,  <38.250713, 30.677290, 36.635715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936455, 30.893373, 36.515091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611432, 0.752347, -0.245205,
		0.094417, -0.377027, -0.921377,
		-0.785644, 0.540208, -0.301561,
		37.700760, 31.055435, 36.424622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300861, 31.003691, 35.958427>,  <38.250713, 30.677290, 36.635715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300861, 31.003691, 35.958427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086548, 31.253099, 36.186165>,  <37.957958, 31.402744, 36.322807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086548, 31.253099, 36.186165>,  <38.300861, 31.003691, 35.958427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086548, 31.253099, 36.186165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632958, 0.742883, -0.217922,
		-0.558834, 0.243610, -0.792691,
		-0.535788, 0.623522, 0.569343,
		37.925812, 31.440157, 36.356968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241871, 31.711601, 35.688152>,  <38.300861, 31.003691, 35.958427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241871, 31.711601, 35.688152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277008, 31.735889, 36.085865>,  <38.298092, 31.750463, 36.324493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277008, 31.735889, 36.085865>,  <38.241871, 31.711601, 35.688152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277008, 31.735889, 36.085865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725906, 0.679633, -0.105639,
		-0.682161, 0.731035, 0.015623,
		0.087843, 0.060722, 0.994282,
		38.303360, 31.754107, 36.384151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987038, 31.588665, 34.951794>,  <38.241871, 31.711601, 35.688152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987038, 31.588665, 34.951794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308788, 31.826206, 34.944660>,  <38.501839, 31.968731, 34.940380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308788, 31.826206, 34.944660>,  <37.987038, 31.588665, 34.951794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308788, 31.826206, 34.944660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093791, 0.097289, -0.990827,
		-0.586672, 0.798669, 0.133955,
		0.804375, 0.593854, -0.017831,
		38.550102, 32.004364, 34.939312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774933, 32.109341, 34.455597>,  <37.987038, 31.588665, 34.951794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774933, 32.109341, 34.455597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172596, 32.111004, 34.498756>,  <38.411194, 32.112003, 34.524651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172596, 32.111004, 34.498756>,  <37.774933, 32.109341, 34.455597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172596, 32.111004, 34.498756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105964, 0.154414, -0.982308,
		-0.020749, 0.987998, 0.153070,
		0.994154, 0.004162, 0.107896,
		38.470840, 32.112251, 34.531124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793163, 32.426857, 33.865944>,  <37.774933, 32.109341, 34.455597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793163, 32.426857, 33.865944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158928, 32.318123, 33.985912>,  <38.378387, 32.252880, 34.057896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158928, 32.318123, 33.985912>,  <37.793163, 32.426857, 33.865944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158928, 32.318123, 33.985912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302295, -0.034157, -0.952602,
		0.269199, 0.961736, 0.050942,
		0.914412, -0.271839, 0.299923,
		38.433250, 32.236572, 34.075890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318012, 32.910828, 33.537083>,  <37.793163, 32.426857, 33.865944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318012, 32.910828, 33.537083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476261, 32.553349, 33.621742>,  <38.571209, 32.338863, 33.672539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476261, 32.553349, 33.621742>,  <38.318012, 32.910828, 33.537083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476261, 32.553349, 33.621742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121403, -0.177536, -0.976597,
		0.910354, 0.412057, 0.038260,
		0.395621, -0.893695, 0.211646,
		38.594948, 32.285240, 33.685238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077419, 32.668591, 33.258823>,  <38.318012, 32.910828, 33.537083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077419, 32.668591, 33.258823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862343, 32.331341, 33.256767>,  <38.733295, 32.128990, 33.255531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862343, 32.331341, 33.256767>,  <39.077419, 32.668591, 33.258823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862343, 32.331341, 33.256767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460071, -0.288283, -0.839778,
		0.706554, -0.453911, 0.542906,
		-0.537695, -0.843123, -0.005144,
		38.701035, 32.078403, 33.255222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501366, 32.135994, 33.041481>,  <39.077419, 32.668591, 33.258823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501366, 32.135994, 33.041481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126202, 32.056889, 32.927494>,  <38.901104, 32.009426, 32.859100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126202, 32.056889, 32.927494>,  <39.501366, 32.135994, 33.041481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126202, 32.056889, 32.927494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330691, -0.261820, -0.906694,
		0.104696, -0.944638, 0.310962,
		-0.937914, -0.197760, -0.284972,
		38.844826, 31.997561, 32.842003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511875, 31.488998, 32.825180>,  <39.501366, 32.135994, 33.041481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511875, 31.488998, 32.825180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198238, 31.661419, 32.646564>,  <39.010056, 31.764872, 32.539394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198238, 31.661419, 32.646564>,  <39.511875, 31.488998, 32.825180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198238, 31.661419, 32.646564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412755, -0.175149, -0.893843,
		-0.463504, -0.885165, -0.040586,
		-0.784090, 0.431052, -0.446538,
		38.963013, 31.790733, 32.512604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836197, 30.885738, 32.949814>,  <39.511875, 31.488998, 32.825180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836197, 30.885738, 32.949814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627075, 31.059856, 32.656639>,  <39.501602, 31.164328, 32.480736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627075, 31.059856, 32.656639>,  <39.836197, 30.885738, 32.949814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627075, 31.059856, 32.656639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838294, 0.418572, -0.349371,
		0.154706, -0.797068, -0.583738,
		-0.522808, 0.435294, -0.732933,
		39.470234, 31.190445, 32.436760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103535, 30.664463, 32.302334>,  <39.836197, 30.885738, 32.949814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103535, 30.664463, 32.302334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983158, 31.044155, 32.265678>,  <39.910931, 31.271971, 32.243683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983158, 31.044155, 32.265678>,  <40.103535, 30.664463, 32.302334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983158, 31.044155, 32.265678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884179, 0.241725, -0.399747,
		-0.357299, -0.201328, -0.912033,
		-0.300941, 0.949229, -0.091642,
		39.892876, 31.328924, 32.238186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636562, 30.781023, 32.902119>,  <40.103535, 30.664463, 32.302334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636562, 30.781023, 32.902119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469810, 30.815550, 33.264061>,  <40.369759, 30.836266, 33.481228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469810, 30.815550, 33.264061>,  <40.636562, 30.781023, 32.902119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469810, 30.815550, 33.264061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859321, 0.287054, -0.423282,
		-0.296279, -0.954018, -0.045491,
		-0.416877, 0.086318, 0.904855,
		40.344746, 30.841446, 33.535519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381664, 30.637278, 33.056992>,  <40.636562, 30.781023, 32.902119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381664, 30.637278, 33.056992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471634, 30.471903, 32.704067>,  <41.525616, 30.372677, 32.492313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471634, 30.471903, 32.704067>,  <41.381664, 30.637278, 33.056992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471634, 30.471903, 32.704067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729661, 0.671591, -0.128688,
		0.645758, -0.614844, 0.452728,
		0.224925, -0.413439, -0.882313,
		41.539112, 30.347872, 32.439373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099449, 30.517130, 32.947441>,  <41.381664, 30.637278, 33.056992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099449, 30.517130, 32.947441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928329, 30.593889, 32.594135>,  <41.825657, 30.639944, 32.382153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928329, 30.593889, 32.594135>,  <42.099449, 30.517130, 32.947441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928329, 30.593889, 32.594135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455590, 0.889770, -0.027346,
		0.780658, -0.414107, -0.468069,
		-0.427798, 0.191899, -0.883269,
		41.799992, 30.651459, 32.329155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507931, 31.047855, 32.555775>,  <42.099449, 30.517130, 32.947441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507931, 31.047855, 32.555775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739594, 31.344988, 32.690102>,  <42.878593, 31.523268, 32.770699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739594, 31.344988, 32.690102>,  <42.507931, 31.047855, 32.555775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739594, 31.344988, 32.690102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639402, -0.669462, 0.378134,
		0.505707, -0.004280, -0.862695,
		0.579160, 0.742834, 0.335815,
		42.913342, 31.567839, 32.790848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213585, 31.040926, 32.381725>,  <42.507931, 31.047855, 32.555775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213585, 31.040926, 32.381725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159473, 31.212296, 32.739082>,  <43.127007, 31.315117, 32.953499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159473, 31.212296, 32.739082>,  <43.213585, 31.040926, 32.381725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159473, 31.212296, 32.739082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702407, -0.594476, 0.391436,
		0.698802, 0.680480, -0.220507,
		-0.135278, 0.428422, 0.893395,
		43.118889, 31.340822, 33.007099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745403, 31.250956, 32.722294>,  <43.213585, 31.040926, 32.381725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745403, 31.250956, 32.722294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517349, 31.128031, 33.027058>,  <43.380516, 31.054276, 33.209915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517349, 31.128031, 33.027058>,  <43.745403, 31.250956, 32.722294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517349, 31.128031, 33.027058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703023, -0.662361, 0.258913,
		0.425092, 0.683255, 0.593683,
		-0.570136, -0.307311, 0.761909,
		43.346310, 31.035837, 33.255630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049973, 31.299824, 33.392181>,  <43.745403, 31.250956, 32.722294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049973, 31.299824, 33.392181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776283, 31.010220, 33.427170>,  <43.612072, 30.836456, 33.448162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776283, 31.010220, 33.427170>,  <44.049973, 31.299824, 33.392181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776283, 31.010220, 33.427170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639949, -0.538561, 0.548103,
		-0.349727, 0.430997, 0.831825,
		-0.684219, -0.724012, 0.087467,
		43.571018, 30.793016, 33.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670429, 31.174719, 34.015171>,  <44.049973, 31.299824, 33.392181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670429, 31.174719, 34.015171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723259, 30.827314, 33.824074>,  <43.754955, 30.618872, 33.709415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723259, 30.827314, 33.824074>,  <43.670429, 31.174719, 34.015171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723259, 30.827314, 33.824074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639789, -0.293440, 0.710326,
		-0.757117, -0.399473, 0.516908,
		0.132075, -0.868512, -0.477747,
		43.762882, 30.566761, 33.680748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866619, 31.466187, 34.831570>,  <43.670429, 31.174719, 34.015171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866619, 31.466187, 34.831570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810047, 31.527805, 35.222725>,  <43.776104, 31.564775, 35.457417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810047, 31.527805, 35.222725>,  <43.866619, 31.466187, 34.831570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810047, 31.527805, 35.222725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229034, 0.966109, -0.119064,
		-0.963089, 0.207130, -0.171922,
		-0.141433, 0.154045, 0.977889,
		43.767616, 31.574018, 35.516090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490566, 31.977654, 35.018753>,  <43.866619, 31.466187, 34.831570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490566, 31.977654, 35.018753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719627, 31.937494, 35.344204>,  <43.857063, 31.913399, 35.539474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719627, 31.937494, 35.344204>,  <43.490566, 31.977654, 35.018753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719627, 31.937494, 35.344204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428556, 0.882726, -0.192703,
		-0.698863, 0.459037, 0.548522,
		0.572653, -0.100399, 0.813627,
		43.891422, 31.907375, 35.588291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601021, 32.641071, 35.507736>,  <43.490566, 31.977654, 35.018753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601021, 32.641071, 35.507736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898018, 32.373241, 35.515476>,  <44.076218, 32.212543, 35.520119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898018, 32.373241, 35.515476>,  <43.601021, 32.641071, 35.507736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898018, 32.373241, 35.515476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638532, 0.698746, -0.322537,
		0.202442, 0.251837, 0.946359,
		0.742492, -0.669576, 0.019351,
		44.120766, 32.172367, 35.521282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053642, 32.965599, 35.949608>,  <43.601021, 32.641071, 35.507736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053642, 32.965599, 35.949608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225132, 32.709507, 35.694641>,  <44.328026, 32.555851, 35.541660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225132, 32.709507, 35.694641>,  <44.053642, 32.965599, 35.949608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225132, 32.709507, 35.694641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651533, 0.707879, -0.272786,
		0.625861, -0.298351, 0.720614,
		0.428721, -0.640230, -0.637420,
		44.353748, 32.517437, 35.503414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802109, 32.621082, 36.149632>,  <44.053642, 32.965599, 35.949608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802109, 32.621082, 36.149632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733757, 32.677063, 35.759510>,  <44.692745, 32.710651, 35.525436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733757, 32.677063, 35.759510>,  <44.802109, 32.621082, 36.149632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733757, 32.677063, 35.759510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768146, 0.638835, -0.042913,
		0.617051, -0.756508, -0.216665,
		-0.170878, 0.139951, -0.975302,
		44.682495, 32.719048, 35.466919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340775, 32.332649, 35.683033>,  <44.802109, 32.621082, 36.149632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340775, 32.332649, 35.683033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154129, 32.654331, 35.535774>,  <45.042141, 32.847340, 35.447418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154129, 32.654331, 35.535774>,  <45.340775, 32.332649, 35.683033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154129, 32.654331, 35.535774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882765, 0.449235, -0.137528,
		0.054784, -0.389160, -0.919540,
		-0.466610, 0.804203, -0.368148,
		45.014145, 32.895592, 35.425331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590771, 32.566387, 34.985279>,  <45.340775, 32.332649, 35.683033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590771, 32.566387, 34.985279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459728, 32.818211, 35.267082>,  <45.381104, 32.969303, 35.436165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459728, 32.818211, 35.267082>,  <45.590771, 32.566387, 34.985279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459728, 32.818211, 35.267082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869367, 0.492843, -0.036142,
		-0.369966, 0.600638, -0.708773,
		-0.327605, 0.629556, 0.704510,
		45.361446, 33.007076, 35.478436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543877, 33.247231, 34.668793>,  <45.590771, 32.566387, 34.985279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543877, 33.247231, 34.668793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602795, 33.256340, 35.064323>,  <45.638145, 33.261806, 35.301643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602795, 33.256340, 35.064323>,  <45.543877, 33.247231, 34.668793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602795, 33.256340, 35.064323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707525, 0.696177, -0.121429,
		-0.691166, 0.717509, 0.086434,
		0.147299, 0.022773, 0.988830,
		45.646984, 33.263172, 35.360973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519398, 33.918468, 34.927509>,  <45.543877, 33.247231, 34.668793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519398, 33.918468, 34.927509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758331, 33.680721, 35.142887>,  <45.901691, 33.538074, 35.272114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758331, 33.680721, 35.142887>,  <45.519398, 33.918468, 34.927509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758331, 33.680721, 35.142887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786715, 0.564685, -0.249420,
		-0.155804, 0.572588, 0.804902,
		0.597332, -0.594368, 0.538444,
		45.937531, 33.502411, 35.304420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630562, 34.296734, 35.465950>,  <45.519398, 33.918468, 34.927509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630562, 34.296734, 35.465950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906620, 34.033112, 35.346386>,  <46.072254, 33.874939, 35.274647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906620, 34.033112, 35.346386>,  <45.630562, 34.296734, 35.465950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906620, 34.033112, 35.346386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707836, 0.700703, 0.089350,
		0.150559, -0.273242, 0.950090,
		0.690145, -0.659056, -0.298908,
		46.113663, 33.835396, 35.256714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191559, 34.236881, 35.974949>,  <45.630562, 34.296734, 35.465950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191559, 34.236881, 35.974949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377079, 34.176533, 35.625748>,  <46.488392, 34.140324, 35.416229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377079, 34.176533, 35.625748>,  <46.191559, 34.236881, 35.974949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377079, 34.176533, 35.625748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656276, 0.720458, 0.224146,
		0.595141, -0.676887, 0.433163,
		0.463797, -0.150876, -0.873000,
		46.516220, 34.131271, 35.363850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.999584, 34.009285, 36.067493>,  <46.191559, 34.236881, 35.974949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.999584, 34.009285, 36.067493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942135, 34.228859, 35.738121>,  <46.907665, 34.360603, 35.540497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942135, 34.228859, 35.738121>,  <46.999584, 34.009285, 36.067493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942135, 34.228859, 35.738121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791276, 0.563414, 0.237586,
		0.594353, -0.617438, -0.515282,
		-0.143622, 0.548940, -0.823431,
		46.899048, 34.393539, 35.491093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659012, 34.198788, 35.722523>,  <46.999584, 34.009285, 36.067493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659012, 34.198788, 35.722523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.388859, 34.464417, 35.594231>,  <47.226765, 34.623795, 35.517254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.388859, 34.464417, 35.594231>,  <47.659012, 34.198788, 35.722523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.388859, 34.464417, 35.594231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637760, 0.744317, 0.198125,
		0.370293, -0.070737, -0.926218,
		-0.675385, 0.664069, -0.320729,
		47.186245, 34.663639, 35.498013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.045738, 34.628838, 35.267796>,  <47.659012, 34.198788, 35.722523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.045738, 34.628838, 35.267796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.749359, 34.888481, 35.336678>,  <47.571533, 35.044266, 35.378006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.749359, 34.888481, 35.336678>,  <48.045738, 34.628838, 35.267796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.749359, 34.888481, 35.336678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670956, 0.704634, 0.230889,
		0.028527, 0.286622, -0.957619,
		-0.740948, 0.649107, 0.172209,
		47.527073, 35.083214, 35.388340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.035290, 28.289682, 25.230749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.685322, 28.174074, 25.075319>,  <41.475342, 28.104710, 24.982061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.685322, 28.174074, 25.075319>,  <42.035290, 28.289682, 25.230749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685322, 28.174074, 25.075319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461632, 0.255270, 0.849549,
		-0.146344, 0.922662, -0.356760,
		-0.874917, -0.289018, -0.388573,
		41.422848, 28.087368, 24.958748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488297, 28.883379, 25.292103>,  <42.035290, 28.289682, 25.230749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488297, 28.883379, 25.292103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.292362, 28.535608, 25.266300>,  <41.174801, 28.326946, 25.250818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.292362, 28.535608, 25.266300>,  <41.488297, 28.883379, 25.292103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292362, 28.535608, 25.266300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427320, 0.174943, 0.887013,
		-0.759908, 0.462053, -0.457216,
		-0.489834, -0.869426, -0.064504,
		41.145412, 28.274780, 25.246948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793415, 28.984306, 25.264160>,  <41.488297, 28.883379, 25.292103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793415, 28.984306, 25.264160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.836102, 28.605951, 25.386736>,  <40.861713, 28.378937, 25.460281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.836102, 28.605951, 25.386736>,  <40.793415, 28.984306, 25.264160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836102, 28.605951, 25.386736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519131, 0.209849, 0.828533,
		-0.848006, -0.247499, -0.468646,
		0.106716, -0.945890, 0.306437,
		40.868114, 28.322184, 25.478666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103073, 28.782957, 25.391762>,  <40.793415, 28.984306, 25.264160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103073, 28.782957, 25.391762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.324371, 28.534372, 25.613647>,  <40.457150, 28.385221, 25.746778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.324371, 28.534372, 25.613647>,  <40.103073, 28.782957, 25.391762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324371, 28.534372, 25.613647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565530, 0.208732, 0.797877,
		-0.611636, -0.755127, -0.235976,
		0.553242, -0.621462, 0.554715,
		40.490345, 28.347935, 25.780062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619007, 28.389263, 25.694483>,  <40.103073, 28.782957, 25.391762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619007, 28.389263, 25.694483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.956314, 28.323938, 25.899315>,  <40.158699, 28.284742, 26.022213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.956314, 28.323938, 25.899315>,  <39.619007, 28.389263, 25.694483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956314, 28.323938, 25.899315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499613, 0.113145, 0.858828,
		-0.198198, -0.980065, 0.013818,
		0.843270, -0.163314, 0.512079,
		40.209293, 28.274944, 26.052938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525265, 27.754051, 26.159033>,  <39.619007, 28.389263, 25.694483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525265, 27.754051, 26.159033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823612, 27.979803, 26.300543>,  <40.002621, 28.115253, 26.385448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823612, 27.979803, 26.300543>,  <39.525265, 27.754051, 26.159033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823612, 27.979803, 26.300543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397940, -0.048363, 0.916136,
		0.534159, -0.824097, 0.188517,
		0.745867, 0.564381, 0.353775,
		40.047371, 28.149117, 26.406675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481853, 27.511122, 26.839262>,  <39.525265, 27.754051, 26.159033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481853, 27.511122, 26.839262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.688473, 27.851223, 26.879757>,  <39.812443, 28.055285, 26.904053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.688473, 27.851223, 26.879757>,  <39.481853, 27.511122, 26.839262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688473, 27.851223, 26.879757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455859, 0.172989, 0.873079,
		0.724827, -0.497133, 0.476953,
		0.516544, 0.850255, 0.101236,
		39.843437, 28.106300, 26.910128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818478, 27.463478, 27.506466>,  <39.481853, 27.511122, 26.839262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818478, 27.463478, 27.506466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782455, 27.839264, 27.374226>,  <39.760841, 28.064735, 27.294882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782455, 27.839264, 27.374226>,  <39.818478, 27.463478, 27.506466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782455, 27.839264, 27.374226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259982, 0.298265, 0.918394,
		0.961405, 0.168660, 0.217382,
		-0.090059, 0.939464, -0.330602,
		39.755440, 28.121103, 27.275045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180695, 27.872728, 28.044245>,  <39.818478, 27.463478, 27.506466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180695, 27.872728, 28.044245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940804, 28.109449, 27.828804>,  <39.796867, 28.251482, 27.699539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940804, 28.109449, 27.828804>,  <40.180695, 27.872728, 28.044245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940804, 28.109449, 27.828804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256508, 0.495386, 0.829937,
		0.757976, 0.635894, -0.145295,
		-0.599730, 0.591803, -0.538603,
		39.760883, 28.286991, 27.667223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397335, 28.516233, 28.164427>,  <40.180695, 27.872728, 28.044245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397335, 28.516233, 28.164427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021725, 28.561619, 28.034594>,  <39.796360, 28.588850, 27.956694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021725, 28.561619, 28.034594>,  <40.397335, 28.516233, 28.164427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021725, 28.561619, 28.034594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197851, 0.593746, 0.779949,
		0.281216, 0.796613, -0.535094,
		-0.939027, 0.113465, -0.324582,
		39.740017, 28.595657, 27.937220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244724, 29.241987, 28.214155>,  <40.397335, 28.516233, 28.164427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244724, 29.241987, 28.214155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.888664, 29.061028, 28.192354>,  <39.675030, 28.952452, 28.179274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.888664, 29.061028, 28.192354>,  <40.244724, 29.241987, 28.214155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888664, 29.061028, 28.192354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348646, 0.599179, 0.720716,
		-0.293396, 0.660545, -0.691085,
		-0.890149, -0.452399, -0.054500,
		39.621620, 28.925308, 28.176004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810078, 29.728611, 28.116783>,  <40.244724, 29.241987, 28.214155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810078, 29.728611, 28.116783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.604046, 29.426622, 28.279121>,  <39.480427, 29.245430, 28.376524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.604046, 29.426622, 28.279121>,  <39.810078, 29.728611, 28.116783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604046, 29.426622, 28.279121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364772, 0.621544, 0.693271,
		-0.775652, 0.209046, -0.595536,
		-0.515077, -0.754972, 0.405848,
		39.449524, 29.200130, 28.400875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012901, 29.943798, 28.159796>,  <39.810078, 29.728611, 28.116783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012901, 29.943798, 28.159796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103897, 29.667219, 28.434065>,  <39.158493, 29.501272, 28.598627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103897, 29.667219, 28.434065>,  <39.012901, 29.943798, 28.159796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103897, 29.667219, 28.434065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269214, 0.632034, 0.726675,
		-0.935828, -0.349902, -0.042368,
		0.227487, -0.691449, 0.685674,
		39.172142, 29.459785, 28.639767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459114, 29.937456, 28.635473>,  <39.012901, 29.943798, 28.159796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459114, 29.937456, 28.635473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.742844, 29.748949, 28.845146>,  <38.913082, 29.635845, 28.970951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.742844, 29.748949, 28.845146>,  <38.459114, 29.937456, 28.635473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742844, 29.748949, 28.845146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250881, 0.526160, 0.812536,
		-0.658727, -0.707857, 0.254984,
		0.709321, -0.471269, 0.524184,
		38.955639, 29.607569, 29.002401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122509, 29.626902, 29.194696>,  <38.459114, 29.937456, 28.635473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122509, 29.626902, 29.194696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505783, 29.636261, 29.308773>,  <38.735748, 29.641876, 29.377218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505783, 29.636261, 29.308773>,  <38.122509, 29.626902, 29.194696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505783, 29.636261, 29.308773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285302, 0.154697, 0.945871,
		-0.021987, -0.987685, 0.154904,
		0.958186, 0.023397, 0.285190,
		38.793240, 29.643280, 29.394329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221737, 29.235229, 29.743484>,  <38.122509, 29.626902, 29.194696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221737, 29.235229, 29.743484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512497, 29.509623, 29.756447>,  <38.686951, 29.674259, 29.764223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512497, 29.509623, 29.756447>,  <38.221737, 29.235229, 29.743484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512497, 29.509623, 29.756447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326242, 0.303409, 0.895270,
		0.604308, -0.661340, 0.444344,
		0.726896, 0.685983, 0.032404,
		38.730564, 29.715418, 29.766169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265846, 29.286531, 30.474884>,  <38.221737, 29.235229, 29.743484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265846, 29.286531, 30.474884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499424, 29.576605, 30.328941>,  <38.639568, 29.750648, 30.241377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499424, 29.576605, 30.328941>,  <38.265846, 29.286531, 30.474884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499424, 29.576605, 30.328941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220497, 0.574231, 0.788442,
		0.781277, -0.379954, 0.495218,
		0.583941, 0.725186, -0.364855,
		38.674606, 29.794161, 30.219484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763592, 29.546747, 31.046116>,  <38.265846, 29.286531, 30.474884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763592, 29.546747, 31.046116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749420, 29.839449, 30.773857>,  <38.740917, 30.015070, 30.610502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749420, 29.839449, 30.773857>,  <38.763592, 29.546747, 31.046116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749420, 29.839449, 30.773857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115785, 0.673481, 0.730080,
		0.992642, 0.104675, 0.060865,
		-0.035430, 0.731755, -0.680646,
		38.738792, 30.058975, 30.569664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200386, 29.981606, 31.272495>,  <38.763592, 29.546747, 31.046116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200386, 29.981606, 31.272495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954025, 30.188105, 31.034452>,  <38.806210, 30.312004, 30.891626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954025, 30.188105, 31.034452>,  <39.200386, 29.981606, 31.272495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954025, 30.188105, 31.034452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195761, 0.631404, 0.750338,
		0.763115, 0.578632, -0.287821,
		-0.615901, 0.516249, -0.595107,
		38.769257, 30.342979, 30.855921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218151, 30.573236, 31.508055>,  <39.200386, 29.981606, 31.272495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218151, 30.573236, 31.508055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.869301, 30.589340, 31.313005>,  <38.659992, 30.599003, 31.195976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.869301, 30.589340, 31.313005>,  <39.218151, 30.573236, 31.508055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869301, 30.589340, 31.313005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359102, 0.624244, 0.693805,
		0.332327, 0.780191, -0.529962,
		-0.872126, 0.040260, -0.487622,
		38.607662, 30.601418, 31.166719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128799, 31.269236, 31.558235>,  <39.218151, 30.573236, 31.508055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128799, 31.269236, 31.558235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787300, 31.075033, 31.482981>,  <38.582401, 30.958511, 31.437828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787300, 31.075033, 31.482981>,  <39.128799, 31.269236, 31.558235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787300, 31.075033, 31.482981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467373, 0.555301, 0.687897,
		-0.229507, 0.675221, -0.701001,
		-0.853750, -0.485507, -0.188134,
		38.531174, 30.929380, 31.426540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318806, 31.987484, 32.023746>,  <39.128799, 31.269236, 31.558235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318806, 31.987484, 32.023746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349663, 32.385639, 32.000935>,  <39.368176, 32.624531, 31.987247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349663, 32.385639, 32.000935>,  <39.318806, 31.987484, 32.023746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349663, 32.385639, 32.000935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435615, -0.085102, -0.896101,
		-0.896822, 0.044282, -0.440170,
		0.077141, 0.995388, -0.057032,
		39.372807, 32.684254, 31.983826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879917, 32.426796, 31.449080>,  <39.318806, 31.987484, 32.023746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879917, 32.426796, 31.449080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221012, 32.621010, 31.526119>,  <39.425671, 32.737537, 31.572342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.221012, 32.621010, 31.526119>,  <38.879917, 32.426796, 31.449080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221012, 32.621010, 31.526119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203454, 0.030859, -0.978598,
		-0.481085, 0.873674, -0.072468,
		0.852739, 0.485533, 0.192598,
		39.476833, 32.766670, 31.583899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951748, 32.983406, 30.884556>,  <38.879917, 32.426796, 31.449080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951748, 32.983406, 30.884556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307030, 32.903461, 31.050039>,  <39.520199, 32.855495, 31.149330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307030, 32.903461, 31.050039>,  <38.951748, 32.983406, 30.884556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307030, 32.903461, 31.050039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424258, 0.011134, -0.905473,
		0.176362, 0.979761, 0.094681,
		0.888201, -0.199860, 0.413708,
		39.573490, 32.843502, 31.174152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465630, 33.389435, 30.521458>,  <38.951748, 32.983406, 30.884556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465630, 33.389435, 30.521458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695248, 33.115250, 30.700613>,  <39.833019, 32.950737, 30.808105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695248, 33.115250, 30.700613>,  <39.465630, 33.389435, 30.521458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695248, 33.115250, 30.700613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546696, -0.086365, -0.832865,
		0.609584, 0.722963, 0.325165,
		0.574048, -0.685467, 0.447888,
		39.867462, 32.909611, 30.834980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213989, 33.594933, 30.381012>,  <39.465630, 33.389435, 30.521458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213989, 33.594933, 30.381012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218689, 33.212936, 30.499575>,  <40.221508, 32.983738, 30.570713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218689, 33.212936, 30.499575>,  <40.213989, 33.594933, 30.381012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218689, 33.212936, 30.499575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639658, -0.220661, -0.736306,
		0.768570, 0.198252, 0.608273,
		0.011752, -0.954989, 0.296407,
		40.222214, 32.926441, 30.588497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948330, 33.376564, 30.518087>,  <40.213989, 33.594933, 30.381012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948330, 33.376564, 30.518087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.745918, 33.042072, 30.433559>,  <40.624470, 32.841377, 30.382843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.745918, 33.042072, 30.433559>,  <40.948330, 33.376564, 30.518087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745918, 33.042072, 30.433559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636319, -0.196547, -0.745968,
		0.582264, -0.511951, 0.631566,
		-0.506031, -0.836227, -0.211322,
		40.594109, 32.791203, 30.370163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524372, 32.926525, 30.322201>,  <40.948330, 33.376564, 30.518087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524372, 32.926525, 30.322201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.194168, 32.733959, 30.204369>,  <40.996048, 32.618420, 30.133669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.194168, 32.733959, 30.204369>,  <41.524372, 32.926525, 30.322201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194168, 32.733959, 30.204369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502231, -0.388459, -0.772569,
		0.257494, -0.785709, 0.562458,
		-0.825506, -0.481416, -0.294582,
		40.946518, 32.589535, 30.115993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665009, 32.233292, 30.227129>,  <41.524372, 32.926525, 30.322201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665009, 32.233292, 30.227129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.331085, 32.263927, 30.009052>,  <41.130733, 32.282310, 29.878206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.331085, 32.263927, 30.009052>,  <41.665009, 32.233292, 30.227129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331085, 32.263927, 30.009052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478710, -0.388114, -0.787531,
		-0.271911, -0.918424, 0.287337,
		-0.834806, 0.076587, -0.545191,
		41.080643, 32.286903, 29.845495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635414, 31.647787, 29.853468>,  <41.665009, 32.233292, 30.227129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635414, 31.647787, 29.853468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.415901, 31.916822, 29.654884>,  <41.284195, 32.078243, 29.535734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.415901, 31.916822, 29.654884>,  <41.635414, 31.647787, 29.853468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415901, 31.916822, 29.654884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309063, -0.388559, -0.868045,
		-0.776739, -0.629800, 0.005360,
		-0.548777, 0.672587, -0.496457,
		41.251266, 32.118599, 29.505947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074821, 31.198717, 29.444323>,  <41.635414, 31.647787, 29.853468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074821, 31.198717, 29.444323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.107391, 31.546471, 29.249371>,  <41.126934, 31.755123, 29.132399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.107391, 31.546471, 29.249371>,  <41.074821, 31.198717, 29.444323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107391, 31.546471, 29.249371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292351, -0.488328, -0.822233,
		-0.952838, -0.075532, -0.293930,
		0.081429, 0.869385, -0.487380,
		41.131821, 31.807285, 29.103157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694386, 31.086380, 28.832048>,  <41.074821, 31.198717, 29.444323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694386, 31.086380, 28.832048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.941254, 31.393898, 28.765053>,  <41.089375, 31.578409, 28.724855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.941254, 31.393898, 28.765053>,  <40.694386, 31.086380, 28.832048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941254, 31.393898, 28.765053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232456, -0.381521, -0.894654,
		-0.751707, 0.513221, -0.414175,
		0.617172, 0.768795, -0.167491,
		41.126404, 31.624537, 28.714806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592873, 31.273382, 28.136442>,  <40.694386, 31.086380, 28.832048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592873, 31.273382, 28.136442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.938938, 31.464052, 28.198769>,  <41.146576, 31.578455, 28.236164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.938938, 31.464052, 28.198769>,  <40.592873, 31.273382, 28.136442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938938, 31.464052, 28.198769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251882, -0.144359, -0.956930,
		-0.433650, 0.867146, -0.244960,
		0.865160, 0.476674, 0.155817,
		41.198486, 31.607054, 28.245514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672215, 31.577967, 27.526876>,  <40.592873, 31.273382, 28.136442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672215, 31.577967, 27.526876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.035828, 31.543858, 27.690041>,  <41.253994, 31.523392, 27.787939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.035828, 31.543858, 27.690041>,  <40.672215, 31.577967, 27.526876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035828, 31.543858, 27.690041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382237, -0.219317, -0.897661,
		0.166009, 0.971920, -0.166771,
		0.909030, -0.085274, 0.407912,
		41.308537, 31.518276, 27.812414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993042, 31.765656, 27.029089>,  <40.672215, 31.577967, 27.526876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993042, 31.765656, 27.029089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.259502, 31.588408, 27.269053>,  <41.419380, 31.482059, 27.413031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.259502, 31.588408, 27.269053>,  <40.993042, 31.765656, 27.029089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259502, 31.588408, 27.269053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447913, -0.405453, -0.796858,
		0.596336, 0.799534, -0.071614,
		0.666151, -0.443118, 0.599908,
		41.459347, 31.455471, 27.449024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703182, 31.950045, 26.784424>,  <40.993042, 31.765656, 27.029089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703182, 31.950045, 26.784424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.722954, 31.605946, 26.987413>,  <41.734818, 31.399487, 27.109207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.722954, 31.605946, 26.987413>,  <41.703182, 31.950045, 26.784424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722954, 31.605946, 26.987413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481924, -0.424494, -0.766521,
		0.874818, 0.282451, 0.393592,
		0.049427, -0.860248, 0.507475,
		41.737782, 31.347872, 27.139656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478085, 31.791229, 26.748236>,  <41.703182, 31.950045, 26.784424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478085, 31.791229, 26.748236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282990, 31.453171, 26.835718>,  <42.165932, 31.250336, 26.888208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282990, 31.453171, 26.835718>,  <42.478085, 31.791229, 26.748236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282990, 31.453171, 26.835718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629715, -0.514117, -0.582359,
		0.604621, -0.146318, 0.782959,
		-0.487742, -0.845148, 0.218707,
		42.136665, 31.199627, 26.901331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977795, 31.332966, 26.863626>,  <42.478085, 31.791229, 26.748236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977795, 31.332966, 26.863626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.657654, 31.098532, 26.813122>,  <42.465569, 30.957872, 26.782820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.657654, 31.098532, 26.813122>,  <42.977795, 31.332966, 26.863626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657654, 31.098532, 26.813122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527953, -0.589203, -0.611641,
		0.284080, -0.556188, 0.780995,
		-0.800352, -0.586084, -0.126260,
		42.417549, 30.922707, 26.775244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267086, 30.700626, 26.785234>,  <42.977795, 31.332966, 26.863626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267086, 30.700626, 26.785234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.905029, 30.630573, 26.630293>,  <42.687794, 30.588541, 26.537329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.905029, 30.630573, 26.630293>,  <43.267086, 30.700626, 26.785234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905029, 30.630573, 26.630293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421109, -0.494043, -0.760651,
		-0.058154, -0.851616, 0.520930,
		-0.905144, -0.175133, -0.387354,
		42.633488, 30.578033, 26.514086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168068, 29.958607, 26.825027>,  <43.267086, 30.700626, 26.785234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168068, 29.958607, 26.825027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.940201, 30.116829, 26.536856>,  <42.803482, 30.211761, 26.363953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.940201, 30.116829, 26.536856>,  <43.168068, 29.958607, 26.825027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940201, 30.116829, 26.536856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483057, -0.548035, -0.682871,
		-0.664932, -0.737017, 0.121122,
		-0.569667, 0.395554, -0.720428,
		42.769302, 30.235495, 26.320726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.810909, 29.293604, 26.513802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.814144, 29.594744, 26.250546>,  <42.816086, 29.775429, 26.092592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.814144, 29.594744, 26.250546>,  <42.810909, 29.293604, 26.513802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814144, 29.594744, 26.250546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163348, -0.650316, -0.741894,
		-0.986535, -0.101505, -0.128238,
		0.008089, 0.752852, -0.658140,
		42.816570, 29.820599, 26.053102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556877, 28.963898, 25.902723>,  <42.810909, 29.293604, 26.513802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556877, 28.963898, 25.902723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.708019, 29.310076, 25.771130>,  <42.798706, 29.517782, 25.692173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.708019, 29.310076, 25.771130>,  <42.556877, 28.963898, 25.902723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708019, 29.310076, 25.771130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113847, -0.396060, -0.911140,
		-0.918837, 0.306829, -0.248183,
		0.377859, 0.865444, -0.328983,
		42.821377, 29.569710, 25.672436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176289, 29.184263, 25.342670>,  <42.556877, 28.963898, 25.902723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176289, 29.184263, 25.342670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.524555, 29.373566, 25.289043>,  <42.733513, 29.487146, 25.256868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.524555, 29.373566, 25.289043>,  <42.176289, 29.184263, 25.342670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524555, 29.373566, 25.289043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004991, -0.281045, -0.959682,
		-0.491854, 0.834890, -0.247057,
		0.870663, 0.473257, -0.134066,
		42.785755, 29.515543, 25.248823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209698, 29.504000, 24.644413>,  <42.176289, 29.184263, 25.342670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209698, 29.504000, 24.644413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.596306, 29.508598, 24.746939>,  <42.828270, 29.511358, 24.808455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.596306, 29.508598, 24.746939>,  <42.209698, 29.504000, 24.644413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596306, 29.508598, 24.746939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256136, -0.101576, -0.961289,
		0.014984, 0.994761, -0.101121,
		0.966525, 0.011497, 0.256316,
		42.886265, 29.512047, 24.823833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506721, 29.825165, 24.095644>,  <42.209698, 29.504000, 24.644413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506721, 29.825165, 24.095644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.827530, 29.683384, 24.287945>,  <43.020016, 29.598314, 24.403324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.827530, 29.683384, 24.287945>,  <42.506721, 29.825165, 24.095644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827530, 29.683384, 24.287945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459454, -0.148189, -0.875752,
		0.381655, 0.923257, 0.044004,
		0.802023, -0.354453, 0.480751,
		43.068138, 29.577047, 24.432171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199688, 30.125269, 23.847147>,  <42.506721, 29.825165, 24.095644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199688, 30.125269, 23.847147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.304665, 29.768459, 23.994341>,  <43.367649, 29.554373, 24.082657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.304665, 29.768459, 23.994341>,  <43.199688, 30.125269, 23.847147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304665, 29.768459, 23.994341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228987, -0.312888, -0.921773,
		0.937385, 0.326175, 0.122148,
		0.262441, -0.892026, 0.367986,
		43.383396, 29.500851, 24.104736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681980, 29.889702, 23.371161>,  <43.199688, 30.125269, 23.847147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681980, 29.889702, 23.371161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.616093, 29.539776, 23.553400>,  <43.576561, 29.329821, 23.662743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.616093, 29.539776, 23.553400>,  <43.681980, 29.889702, 23.371161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616093, 29.539776, 23.553400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357654, -0.483445, -0.798977,
		0.919212, 0.031341, 0.392513,
		-0.164717, -0.874814, 0.455598,
		43.566677, 29.277332, 23.690079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322521, 29.489075, 23.333012>,  <43.681980, 29.889702, 23.371161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322521, 29.489075, 23.333012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032539, 29.216558, 23.373564>,  <43.858551, 29.053049, 23.397896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032539, 29.216558, 23.373564>,  <44.322521, 29.489075, 23.333012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032539, 29.216558, 23.373564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338040, -0.480156, -0.809431,
		0.600138, -0.552532, 0.578397,
		-0.724957, -0.681292, 0.101381,
		43.815052, 29.012171, 23.403978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646736, 28.912895, 23.303856>,  <44.322521, 29.489075, 23.333012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646736, 28.912895, 23.303856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.274910, 28.834923, 23.178699>,  <44.051815, 28.788139, 23.103605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.274910, 28.834923, 23.178699>,  <44.646736, 28.912895, 23.303856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274910, 28.834923, 23.178699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368561, -0.509574, -0.777494,
		-0.007884, -0.838055, 0.545529,
		-0.929570, -0.194931, -0.312892,
		43.996040, 28.776443, 23.084831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765316, 28.270584, 23.151258>,  <44.646736, 28.912895, 23.303856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765316, 28.270584, 23.151258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.407921, 28.319912, 22.978525>,  <44.193485, 28.349508, 22.874886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.407921, 28.319912, 22.978525>,  <44.765316, 28.270584, 23.151258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407921, 28.319912, 22.978525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305618, -0.537597, -0.785867,
		-0.329065, -0.834135, 0.442645,
		-0.893484, 0.123320, -0.431831,
		44.139877, 28.356909, 22.848976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732708, 27.758251, 22.705103>,  <44.765316, 28.270584, 23.151258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732708, 27.758251, 22.705103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.434395, 27.975445, 22.550713>,  <44.255409, 28.105761, 22.458078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.434395, 27.975445, 22.550713>,  <44.732708, 27.758251, 22.705103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434395, 27.975445, 22.550713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254011, -0.303842, -0.918237,
		-0.615865, -0.782845, 0.088675,
		-0.745780, 0.542985, -0.385977,
		44.210659, 28.138340, 22.434919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282085, 27.259600, 22.319057>,  <44.732708, 27.758251, 22.705103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282085, 27.259600, 22.319057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.225780, 27.625519, 22.167620>,  <44.191998, 27.845070, 22.076757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.225780, 27.625519, 22.167620>,  <44.282085, 27.259600, 22.319057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225780, 27.625519, 22.167620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241940, -0.339024, -0.909136,
		-0.960027, -0.219568, -0.173605,
		-0.140761, 0.914797, -0.378594,
		44.183552, 27.899958, 22.054041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079075, 27.107307, 21.568907>,  <44.282085, 27.259600, 22.319057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079075, 27.107307, 21.568907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.191113, 27.491196, 21.577686>,  <44.258335, 27.721529, 21.582954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.191113, 27.491196, 21.577686>,  <44.079075, 27.107307, 21.568907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191113, 27.491196, 21.577686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272079, -0.057435, -0.960559,
		-0.920610, 0.275016, -0.277207,
		0.280091, 0.959722, 0.021951,
		44.275139, 27.779112, 21.584272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710606, 27.470356, 21.085463>,  <44.079075, 27.107307, 21.568907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710606, 27.470356, 21.085463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.048672, 27.680565, 21.124496>,  <44.251511, 27.806690, 21.147917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.048672, 27.680565, 21.124496>,  <43.710606, 27.470356, 21.085463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048672, 27.680565, 21.124496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128948, -0.023294, -0.991378,
		-0.518719, 0.850460, -0.087453,
		0.845164, 0.525523, 0.097582,
		44.302219, 27.838223, 21.153770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762375, 27.999397, 20.495216>,  <43.710606, 27.470356, 21.085463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762375, 27.999397, 20.495216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.119881, 27.944490, 20.666023>,  <44.334385, 27.911547, 20.768507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.119881, 27.944490, 20.666023>,  <43.762375, 27.999397, 20.495216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119881, 27.944490, 20.666023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409419, -0.139173, -0.901669,
		0.183200, 0.980708, -0.068188,
		0.893764, -0.137268, 0.427017,
		44.388008, 27.903311, 20.794128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080223, 28.536051, 20.194853>,  <43.762375, 27.999397, 20.495216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080223, 28.536051, 20.194853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.337029, 28.251444, 20.309084>,  <44.491112, 28.080679, 20.377623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.337029, 28.251444, 20.309084>,  <44.080223, 28.536051, 20.194853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337029, 28.251444, 20.309084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420518, 0.015342, -0.907154,
		0.641076, 0.702499, 0.309057,
		0.642017, -0.711519, 0.285578,
		44.529633, 28.037989, 20.394758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593075, 28.670938, 19.775780>,  <44.080223, 28.536051, 20.194853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593075, 28.670938, 19.775780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.668636, 28.307091, 19.923786>,  <44.713974, 28.088783, 20.012590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.668636, 28.307091, 19.923786>,  <44.593075, 28.670938, 19.775780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668636, 28.307091, 19.923786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449439, -0.254933, -0.856162,
		0.873109, 0.328033, 0.360659,
		0.188905, -0.909617, 0.370015,
		44.725307, 28.034206, 20.034790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344730, 28.569052, 19.656317>,  <44.593075, 28.670938, 19.775780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344730, 28.569052, 19.656317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.171314, 28.208735, 19.666227>,  <45.067265, 27.992544, 19.672173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.171314, 28.208735, 19.666227>,  <45.344730, 28.569052, 19.656317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171314, 28.208735, 19.666227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157453, -0.102792, -0.982162,
		0.887272, -0.421905, 0.186397,
		-0.433539, -0.900794, 0.024774,
		45.041252, 27.938496, 19.673660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863228, 28.158955, 19.330259>,  <45.344730, 28.569052, 19.656317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863228, 28.158955, 19.330259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.498219, 27.995413, 19.325420>,  <45.279213, 27.897287, 19.322517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.498219, 27.995413, 19.325420>,  <45.863228, 28.158955, 19.330259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498219, 27.995413, 19.325420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022956, -0.021665, -0.999502,
		0.408388, -0.912343, 0.029156,
		-0.912520, -0.408854, -0.012096,
		45.224464, 27.872757, 19.321791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943790, 27.526939, 18.998518>,  <45.863228, 28.158955, 19.330259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943790, 27.526939, 18.998518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.554405, 27.614351, 18.971344>,  <45.320774, 27.666800, 18.955040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.554405, 27.614351, 18.971344>,  <45.943790, 27.526939, 18.998518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554405, 27.614351, 18.971344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027081, -0.184768, -0.982409,
		-0.227244, -0.958177, 0.173946,
		-0.973461, 0.218536, -0.067936,
		45.262367, 27.679911, 18.950964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712708, 27.075869, 18.440702>,  <45.943790, 27.526939, 18.998518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712708, 27.075869, 18.440702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.417187, 27.340946, 18.489712>,  <45.239876, 27.499992, 18.519117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.417187, 27.340946, 18.489712>,  <45.712708, 27.075869, 18.440702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417187, 27.340946, 18.489712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293797, -0.153092, -0.943528,
		-0.606512, -0.733077, 0.307802,
		-0.738801, 0.662692, 0.122524,
		45.195545, 27.539753, 18.526468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022305, 26.775589, 18.330780>,  <45.712708, 27.075869, 18.440702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022305, 26.775589, 18.330780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.006710, 27.160486, 18.223024>,  <44.997353, 27.391424, 18.158371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.006710, 27.160486, 18.223024>,  <45.022305, 26.775589, 18.330780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006710, 27.160486, 18.223024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348773, -0.265741, -0.898743,
		-0.936396, 0.058918, 0.345964,
		-0.038985, 0.962242, -0.269387,
		44.995014, 27.449160, 18.142208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355442, 26.939283, 18.005507>,  <45.022305, 26.775589, 18.330780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355442, 26.939283, 18.005507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.640076, 27.174713, 17.852028>,  <44.810856, 27.315971, 17.759941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.640076, 27.174713, 17.852028>,  <44.355442, 26.939283, 18.005507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640076, 27.174713, 17.852028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274708, -0.269567, -0.922968,
		-0.646667, 0.762177, -0.030134,
		0.711588, 0.588574, -0.383696,
		44.853554, 27.351286, 17.736919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067635, 27.389557, 17.486179>,  <44.355442, 26.939283, 18.005507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067635, 27.389557, 17.486179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448162, 27.287134, 17.417570>,  <44.676479, 27.225681, 17.376404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.448162, 27.287134, 17.417570>,  <44.067635, 27.389557, 17.486179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448162, 27.287134, 17.417570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200840, -0.092918, -0.975208,
		0.233771, 0.962186, -0.139821,
		0.951323, -0.256057, -0.171523,
		44.733559, 27.210318, 17.366114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746330, 26.680731, 17.434334>,  <44.067635, 27.389557, 17.486179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746330, 26.680731, 17.434334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.414024, 26.498325, 17.306656>,  <43.214642, 26.388882, 17.230049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.414024, 26.498325, 17.306656>,  <43.746330, 26.680731, 17.434334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414024, 26.498325, 17.306656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510008, 0.393870, 0.764695,
		-0.222989, 0.798073, -0.559782,
		-0.830764, -0.456012, -0.319194,
		43.164795, 26.361523, 17.210897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282570, 27.195118, 17.318130>,  <43.746330, 26.680731, 17.434334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282570, 27.195118, 17.318130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.086464, 26.850452, 17.370550>,  <42.968800, 26.643654, 17.402002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.086464, 26.850452, 17.370550>,  <43.282570, 27.195118, 17.318130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086464, 26.850452, 17.370550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396922, 0.354594, 0.846591,
		-0.775946, 0.363039, -0.515859,
		-0.490266, -0.861664, 0.131048,
		42.939384, 26.591953, 17.409864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639305, 27.384190, 17.494440>,  <43.282570, 27.195118, 17.318130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639305, 27.384190, 17.494440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.674145, 27.006594, 17.621752>,  <42.695049, 26.780037, 17.698139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.674145, 27.006594, 17.621752>,  <42.639305, 27.384190, 17.494440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674145, 27.006594, 17.621752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516694, 0.230351, 0.824601,
		-0.851728, -0.236275, -0.467689,
		0.087099, -0.943987, 0.318278,
		42.700275, 26.723398, 17.717236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939800, 27.239676, 17.746443>,  <42.639305, 27.384190, 17.494440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939800, 27.239676, 17.746443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.180618, 26.969191, 17.916279>,  <42.325111, 26.806900, 18.018181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.180618, 26.969191, 17.916279>,  <41.939800, 27.239676, 17.746443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180618, 26.969191, 17.916279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552956, 0.030508, 0.832651,
		-0.576002, -0.736075, -0.355548,
		0.602047, -0.676212, 0.424590,
		42.361233, 26.766327, 18.043655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493214, 26.838999, 18.030272>,  <41.939800, 27.239676, 17.746443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493214, 26.838999, 18.030272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.831127, 26.793827, 18.239496>,  <42.033875, 26.766724, 18.365030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.831127, 26.793827, 18.239496>,  <41.493214, 26.838999, 18.030272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831127, 26.793827, 18.239496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523078, 0.031878, 0.851689,
		-0.112852, -0.993092, -0.032139,
		0.844780, -0.112926, 0.523062,
		42.084560, 26.759949, 18.396416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315811, 26.304956, 18.552240>,  <41.493214, 26.838999, 18.030272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315811, 26.304956, 18.552240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.632286, 26.528936, 18.650608>,  <41.822170, 26.663324, 18.709629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.632286, 26.528936, 18.650608>,  <41.315811, 26.304956, 18.552240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632286, 26.528936, 18.650608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328605, 0.050098, 0.943138,
		0.515789, -0.827011, 0.223639,
		0.791190, 0.559949, 0.245920,
		41.869644, 26.696920, 18.724384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560802, 26.058279, 19.245993>,  <41.315811, 26.304956, 18.552240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560802, 26.058279, 19.245993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.753620, 26.408710, 19.241600>,  <41.869312, 26.618969, 19.238964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.753620, 26.408710, 19.241600>,  <41.560802, 26.058279, 19.245993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753620, 26.408710, 19.241600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002088, 0.013682, 0.999904,
		0.876145, -0.481974, 0.008424,
		0.482043, 0.876079, -0.010981,
		41.898232, 26.671534, 19.238306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042549, 26.037441, 19.867857>,  <41.560802, 26.058279, 19.245993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042549, 26.037441, 19.867857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.022602, 26.425280, 19.772030>,  <42.010635, 26.657984, 19.714533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.022602, 26.425280, 19.772030>,  <42.042549, 26.037441, 19.867857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022602, 26.425280, 19.772030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096600, 0.243424, 0.965097,
		0.994073, 0.024984, -0.105802,
		-0.049867, 0.969598, -0.239567,
		42.007641, 26.716160, 19.700159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678719, 26.369787, 20.113302>,  <42.042549, 26.037441, 19.867857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678719, 26.369787, 20.113302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.376720, 26.628946, 20.072876>,  <42.195522, 26.784441, 20.048620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.376720, 26.628946, 20.072876>,  <42.678719, 26.369787, 20.113302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376720, 26.628946, 20.072876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170100, 0.342358, 0.924044,
		0.633285, 0.680457, -0.368686,
		-0.754994, 0.647896, -0.101064,
		42.150223, 26.823315, 20.042557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930580, 27.000410, 20.327196>,  <42.678719, 26.369787, 20.113302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930580, 27.000410, 20.327196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.536182, 27.064928, 20.344154>,  <42.299545, 27.103640, 20.354330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.536182, 27.064928, 20.344154>,  <42.930580, 27.000410, 20.327196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536182, 27.064928, 20.344154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099171, 0.362663, 0.926629,
		0.134086, 0.917856, -0.373579,
		-0.985995, 0.161296, 0.042397,
		42.240383, 27.113317, 20.356873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767422, 27.636909, 20.667574>,  <42.930580, 27.000410, 20.327196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767422, 27.636909, 20.667574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.411133, 27.467749, 20.734234>,  <42.197361, 27.366253, 20.774229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.411133, 27.467749, 20.734234>,  <42.767422, 27.636909, 20.667574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411133, 27.467749, 20.734234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078587, 0.504374, 0.859902,
		-0.447708, 0.752835, -0.482490,
		-0.890720, -0.422902, 0.166649,
		42.143917, 27.340878, 20.784229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415092, 28.140182, 21.036890>,  <42.767422, 27.636909, 20.667574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415092, 28.140182, 21.036890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.204124, 27.813114, 21.129187>,  <42.077545, 27.616873, 21.184565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.204124, 27.813114, 21.129187>,  <42.415092, 28.140182, 21.036890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204124, 27.813114, 21.129187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225987, 0.396821, 0.889642,
		-0.818999, 0.417069, -0.394074,
		-0.527419, -0.817672, 0.230744,
		42.045898, 27.567812, 21.198410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901733, 28.444521, 21.521860>,  <42.415092, 28.140182, 21.036890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901733, 28.444521, 21.521860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.831131, 28.052999, 21.563402>,  <41.788769, 27.818087, 21.588327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.831131, 28.052999, 21.563402>,  <41.901733, 28.444521, 21.521860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831131, 28.052999, 21.563402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460656, 0.175389, 0.870077,
		-0.869851, 0.105733, -0.481850,
		-0.176507, -0.978805, 0.103856,
		41.778179, 27.759357, 21.594559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184196, 28.312860, 21.966072>,  <41.901733, 28.444521, 21.521860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184196, 28.312860, 21.966072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392021, 27.972235, 21.994038>,  <41.516716, 27.767859, 22.010817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392021, 27.972235, 21.994038>,  <41.184196, 28.312860, 21.966072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392021, 27.972235, 21.994038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422777, -0.185116, 0.887126,
		-0.742503, -0.490478, -0.456202,
		0.519566, -0.851565, 0.069913,
		41.547890, 27.716764, 22.015011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624214, 27.768610, 22.243385>,  <41.184196, 28.312860, 21.966072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624214, 27.768610, 22.243385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.993008, 27.625717, 22.303150>,  <41.214283, 27.539982, 22.339008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.993008, 27.625717, 22.303150>,  <40.624214, 27.768610, 22.243385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993008, 27.625717, 22.303150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219980, -0.165672, 0.961333,
		-0.318665, -0.919205, -0.231332,
		0.921988, -0.357232, 0.149413,
		41.269604, 27.518547, 22.347975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560844, 27.055223, 22.694059>,  <40.624214, 27.768610, 22.243385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560844, 27.055223, 22.694059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.912476, 27.239790, 22.741922>,  <41.123455, 27.350531, 22.770641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.912476, 27.239790, 22.741922>,  <40.560844, 27.055223, 22.694059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912476, 27.239790, 22.741922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058860, -0.144034, 0.987821,
		0.473034, -0.875413, -0.099458,
		0.879076, 0.461418, 0.119660,
		41.176197, 27.378216, 22.777821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926937, 26.668810, 23.237520>,  <40.560844, 27.055223, 22.694059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926937, 26.668810, 23.237520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.123207, 27.017334, 23.234428>,  <41.240967, 27.226448, 23.232573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.123207, 27.017334, 23.234428>,  <40.926937, 26.668810, 23.237520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123207, 27.017334, 23.234428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137919, -0.068901, 0.988044,
		0.860361, -0.485870, -0.153978,
		0.490670, 0.871311, -0.007731,
		41.270409, 27.278727, 23.232109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134983, 26.540026, 23.912851>,  <40.926937, 26.668810, 23.237520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134983, 26.540026, 23.912851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240841, 26.919415, 23.843147>,  <41.304356, 27.147047, 23.801325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240841, 26.919415, 23.843147>,  <41.134983, 26.540026, 23.912851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240841, 26.919415, 23.843147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164185, 0.133750, 0.977320,
		0.950267, -0.287252, -0.120329,
		0.264643, 0.948471, -0.174261,
		41.320232, 27.203957, 23.790869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658241, 26.667837, 24.430607>,  <41.134983, 26.540026, 23.912851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658241, 26.667837, 24.430607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516720, 27.023243, 24.313740>,  <41.431808, 27.236486, 24.243620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516720, 27.023243, 24.313740>,  <41.658241, 26.667837, 24.430607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516720, 27.023243, 24.313740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132449, 0.261627, 0.956038,
		0.925894, 0.376947, 0.025118,
		-0.353804, 0.888517, -0.292165,
		41.410580, 27.289799, 24.226089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046268, 27.179016, 24.800035>,  <41.658241, 26.667837, 24.430607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046268, 27.179016, 24.800035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695911, 27.338301, 24.691042>,  <41.485699, 27.433872, 24.625647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695911, 27.338301, 24.691042>,  <42.046268, 27.179016, 24.800035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695911, 27.338301, 24.691042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185587, 0.243243, 0.952045,
		0.445396, 0.884454, -0.139150,
		-0.875888, 0.398213, -0.272483,
		41.433144, 27.457764, 24.609297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.464886, 31.430920, 28.348951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099590, 31.431761, 28.185986>,  <41.880413, 31.432266, 28.088207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099590, 31.431761, 28.185986>,  <42.464886, 31.430920, 28.348951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099590, 31.431761, 28.185986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300847, 0.670847, 0.677831,
		0.274738, 0.741593, -0.612013,
		-0.913242, 0.002104, -0.407413,
		41.825619, 31.432392, 28.063761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337437, 32.143658, 28.335798>,  <42.464886, 31.430920, 28.348951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337437, 32.143658, 28.335798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983494, 31.957994, 28.319822>,  <41.771130, 31.846598, 28.310236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983494, 31.957994, 28.319822>,  <42.337437, 32.143658, 28.335798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983494, 31.957994, 28.319822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366235, 0.640061, 0.675421,
		-0.287935, 0.612276, -0.736350,
		-0.884853, -0.464155, -0.039941,
		41.718037, 31.818748, 28.307840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890594, 32.615669, 28.450047>,  <42.337437, 32.143658, 28.335798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890594, 32.615669, 28.450047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.686646, 32.283119, 28.538441>,  <41.564274, 32.083588, 28.591476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.686646, 32.283119, 28.538441>,  <41.890594, 32.615669, 28.450047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686646, 32.283119, 28.538441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510048, 0.499027, 0.700588,
		-0.692731, 0.244501, -0.678486,
		-0.509877, -0.831379, 0.220984,
		41.533684, 32.033707, 28.604736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254356, 33.058811, 28.732010>,  <41.890594, 32.615669, 28.450047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254356, 33.058811, 28.732010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208652, 32.670300, 28.815500>,  <41.181229, 32.437195, 28.865595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208652, 32.670300, 28.815500>,  <41.254356, 33.058811, 28.732010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208652, 32.670300, 28.815500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599751, 0.234935, 0.764921,
		-0.791987, -0.037783, -0.609368,
		-0.114261, -0.971276, 0.208726,
		41.174374, 32.378918, 28.878119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545635, 32.988983, 28.833921>,  <41.254356, 33.058811, 28.732010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545635, 32.988983, 28.833921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727177, 32.687714, 29.024393>,  <40.836102, 32.506950, 29.138676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727177, 32.687714, 29.024393>,  <40.545635, 32.988983, 28.833921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727177, 32.687714, 29.024393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587661, 0.148714, 0.795323,
		-0.669831, -0.640792, -0.375116,
		0.453852, -0.753174, 0.476181,
		40.863331, 32.461761, 29.167248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050266, 32.535851, 29.106726>,  <40.545635, 32.988983, 28.833921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050266, 32.535851, 29.106726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378448, 32.449684, 29.318556>,  <40.575356, 32.397984, 29.445654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378448, 32.449684, 29.318556>,  <40.050266, 32.535851, 29.106726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378448, 32.449684, 29.318556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546038, -0.020784, 0.837503,
		-0.169408, -0.976300, -0.134679,
		0.820453, -0.215420, 0.529576,
		40.624584, 32.385059, 29.477428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962059, 31.999247, 29.518635>,  <40.050266, 32.535851, 29.106726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962059, 31.999247, 29.518635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267189, 32.156116, 29.724274>,  <40.450268, 32.250237, 29.847658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267189, 32.156116, 29.724274>,  <39.962059, 31.999247, 29.518635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267189, 32.156116, 29.724274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578344, 0.058260, 0.813710,
		0.289164, -0.918045, 0.271254,
		0.762825, 0.392174, 0.514099,
		40.496037, 32.273769, 29.878504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934071, 31.699532, 30.262791>,  <39.962059, 31.999247, 29.518635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934071, 31.699532, 30.262791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.164383, 32.025581, 30.288227>,  <40.302570, 32.221210, 30.303490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.164383, 32.025581, 30.288227>,  <39.934071, 31.699532, 30.262791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164383, 32.025581, 30.288227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353213, 0.177846, 0.918483,
		0.737369, -0.551310, 0.390314,
		0.575785, 0.815125, 0.063592,
		40.337120, 32.270119, 30.307304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214890, 31.644335, 30.904364>,  <39.934071, 31.699532, 30.262791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214890, 31.644335, 30.904364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233093, 32.032368, 30.808977>,  <40.244015, 32.265186, 30.751745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233093, 32.032368, 30.808977>,  <40.214890, 31.644335, 30.904364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233093, 32.032368, 30.808977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403411, 0.236229, 0.884000,
		0.913887, 0.055973, 0.402092,
		0.045506, 0.970084, -0.238467,
		40.246746, 32.323395, 30.737436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520000, 31.992113, 31.458073>,  <40.214890, 31.644335, 30.904364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520000, 31.992113, 31.458073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351845, 32.292324, 31.254118>,  <40.250950, 32.472450, 31.131746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351845, 32.292324, 31.254118>,  <40.520000, 31.992113, 31.458073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351845, 32.292324, 31.254118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305368, 0.412142, 0.858423,
		0.854414, 0.516575, 0.055926,
		-0.420390, 0.750526, -0.509885,
		40.225727, 32.517483, 31.101152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719936, 32.632465, 31.725565>,  <40.520000, 31.992113, 31.458073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719936, 32.632465, 31.725565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356819, 32.685883, 31.566526>,  <40.138950, 32.717934, 31.471104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356819, 32.685883, 31.566526>,  <40.719936, 32.632465, 31.725565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356819, 32.685883, 31.566526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360868, 0.234442, 0.902669,
		0.213755, 0.962914, -0.164635,
		-0.907790, 0.133539, -0.397598,
		40.084480, 32.725945, 31.447247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579258, 33.391827, 31.947144>,  <40.719936, 32.632465, 31.725565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579258, 33.391827, 31.947144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.264332, 33.174782, 31.830040>,  <40.075378, 33.044556, 31.759777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.264332, 33.174782, 31.830040>,  <40.579258, 33.391827, 31.947144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264332, 33.174782, 31.830040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361691, 0.021932, 0.932040,
		-0.499320, 0.839694, -0.213527,
		-0.787312, -0.542616, -0.292759,
		40.028137, 33.011997, 31.742212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110130, 33.889107, 32.005642>,  <40.579258, 33.391827, 31.947144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110130, 33.889107, 32.005642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.193069, 34.048634, 31.648329>,  <40.242832, 34.144348, 31.433941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.193069, 34.048634, 31.648329>,  <40.110130, 33.889107, 32.005642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193069, 34.048634, 31.648329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287198, 0.897706, 0.334128,
		0.935160, 0.187268, 0.300677,
		0.207348, 0.398817, -0.893282,
		40.255276, 34.168278, 31.380344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992672, 34.549038, 31.606421>,  <40.110130, 33.889107, 32.005642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992672, 34.549038, 31.606421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632629, 34.612141, 31.768866>,  <39.416603, 34.650002, 31.866333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632629, 34.612141, 31.768866>,  <39.992672, 34.549038, 31.606421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632629, 34.612141, 31.768866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408236, 0.020199, -0.912653,
		-0.152183, -0.987271, 0.046222,
		-0.900102, 0.157760, 0.406113,
		39.362598, 34.659466, 31.890699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505722, 34.223221, 31.222860>,  <39.992672, 34.549038, 31.606421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505722, 34.223221, 31.222860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280415, 34.505154, 31.395340>,  <39.145229, 34.674313, 31.498827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.280415, 34.505154, 31.395340>,  <39.505722, 34.223221, 31.222860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280415, 34.505154, 31.395340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391545, 0.231857, -0.890469,
		-0.727610, -0.670410, 0.145376,
		-0.563272, 0.704835, 0.431197,
		39.111431, 34.716606, 31.524700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885715, 34.056347, 30.975685>,  <39.505722, 34.223221, 31.222860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885715, 34.056347, 30.975685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927040, 34.442947, 31.069666>,  <38.951836, 34.674908, 31.126055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927040, 34.442947, 31.069666>,  <38.885715, 34.056347, 30.975685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927040, 34.442947, 31.069666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413080, 0.256573, -0.873805,
		-0.904816, -0.006781, 0.425749,
		0.103310, 0.966501, 0.234952,
		38.958035, 34.732899, 31.140152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279491, 34.377018, 30.726843>,  <38.885715, 34.056347, 30.975685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279491, 34.377018, 30.726843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525711, 34.689880, 30.765488>,  <38.673443, 34.877598, 30.788673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525711, 34.689880, 30.765488>,  <38.279491, 34.377018, 30.726843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525711, 34.689880, 30.765488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417927, 0.427895, -0.801401,
		-0.668157, 0.452927, 0.590274,
		0.615551, 0.782153, 0.096610,
		38.710377, 34.924526, 30.794470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891785, 34.996017, 30.739479>,  <38.279491, 34.377018, 30.726843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891785, 34.996017, 30.739479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.251194, 35.115654, 30.610975>,  <38.466839, 35.187435, 30.533873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.251194, 35.115654, 30.610975>,  <37.891785, 34.996017, 30.739479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251194, 35.115654, 30.610975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427195, 0.427740, -0.796582,
		-0.100836, 0.852984, 0.512104,
		0.898519, 0.299093, -0.321259,
		38.520748, 35.205383, 30.514597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789963, 35.538597, 30.339283>,  <37.891785, 34.996017, 30.739479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789963, 35.538597, 30.339283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.169224, 35.485142, 30.223936>,  <38.396778, 35.453068, 30.154728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.169224, 35.485142, 30.223936>,  <37.789963, 35.538597, 30.339283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169224, 35.485142, 30.223936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242025, 0.284514, -0.927618,
		0.206008, 0.949312, 0.237419,
		0.948148, -0.133636, -0.288369,
		38.453667, 35.445049, 30.137424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971924, 36.144707, 29.970919>,  <37.789963, 35.538597, 30.339283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971924, 36.144707, 29.970919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.238815, 35.881283, 29.831713>,  <38.398949, 35.723228, 29.748188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.238815, 35.881283, 29.831713>,  <37.971924, 36.144707, 29.970919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238815, 35.881283, 29.831713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313126, 0.175943, -0.933272,
		0.675842, 0.731676, -0.088817,
		0.667225, -0.658555, -0.348016,
		38.438984, 35.683716, 29.727308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279011, 36.503616, 29.369825>,  <37.971924, 36.144707, 29.970919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279011, 36.503616, 29.369825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362331, 36.114063, 29.333687>,  <38.412323, 35.880333, 29.312004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362331, 36.114063, 29.333687>,  <38.279011, 36.503616, 29.369825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362331, 36.114063, 29.333687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152965, 0.058796, -0.986481,
		0.966028, 0.219308, -0.136723,
		0.208304, -0.973882, -0.090345,
		38.424824, 35.821899, 29.306583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885784, 36.482357, 28.819862>,  <38.279011, 36.503616, 29.369825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885784, 36.482357, 28.819862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.730530, 36.114212, 28.838984>,  <38.637379, 35.893326, 28.850456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.730530, 36.114212, 28.838984>,  <38.885784, 36.482357, 28.819862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730530, 36.114212, 28.838984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101894, -0.094409, -0.990305,
		0.915952, -0.379501, 0.130423,
		-0.388135, -0.920362, 0.047805,
		38.614090, 35.838104, 28.853325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354012, 36.080990, 28.405376>,  <38.885784, 36.482357, 28.819862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354012, 36.080990, 28.405376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022015, 35.859074, 28.428419>,  <38.822815, 35.725925, 28.442245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022015, 35.859074, 28.428419>,  <39.354012, 36.080990, 28.405376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022015, 35.859074, 28.428419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179152, -0.362971, -0.914416,
		0.528215, -0.748641, 0.400655,
		-0.829996, -0.554787, 0.057606,
		38.773014, 35.692638, 28.445702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506645, 35.350323, 28.365519>,  <39.354012, 36.080990, 28.405376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506645, 35.350323, 28.365519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.118366, 35.329887, 28.271591>,  <38.885399, 35.317627, 28.215235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.118366, 35.329887, 28.271591>,  <39.506645, 35.350323, 28.365519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118366, 35.329887, 28.271591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234213, -0.419825, -0.876864,
		-0.053788, -0.906166, 0.419488,
		-0.970696, -0.051084, -0.234818,
		38.827156, 35.314564, 28.201145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546280, 34.757278, 28.061676>,  <39.506645, 35.350323, 28.365519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546280, 34.757278, 28.061676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190697, 34.919121, 27.975847>,  <38.977345, 35.016228, 27.924349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190697, 34.919121, 27.975847>,  <39.546280, 34.757278, 28.061676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190697, 34.919121, 27.975847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049943, -0.380082, -0.923603,
		-0.455255, -0.831762, 0.317670,
		-0.888959, 0.404610, -0.214575,
		38.924007, 35.040504, 27.911474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992439, 34.198666, 27.887819>,  <39.546280, 34.757278, 28.061676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992439, 34.198666, 27.887819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.933510, 34.540344, 27.688360>,  <38.898151, 34.745350, 27.568684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.933510, 34.540344, 27.688360>,  <38.992439, 34.198666, 27.887819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933510, 34.540344, 27.688360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003372, -0.504582, -0.863357,
		-0.989082, -0.125513, 0.077218,
		-0.147326, 0.854192, -0.498649,
		38.889313, 34.796600, 27.538765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486961, 34.021511, 27.249374>,  <38.992439, 34.198666, 27.887819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486961, 34.021511, 27.249374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684273, 34.361092, 27.173519>,  <38.802658, 34.564838, 27.128006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684273, 34.361092, 27.173519>,  <38.486961, 34.021511, 27.249374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684273, 34.361092, 27.173519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411460, -0.419792, -0.808997,
		-0.766406, 0.321031, -0.556382,
		0.493277, 0.848949, -0.189640,
		38.832256, 34.615776, 27.116627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593056, 33.980469, 26.557753>,  <38.486961, 34.021511, 27.249374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593056, 33.980469, 26.557753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834229, 34.280735, 26.665806>,  <38.978931, 34.460896, 26.730639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834229, 34.280735, 26.665806>,  <38.593056, 33.980469, 26.557753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834229, 34.280735, 26.665806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648178, -0.263515, -0.714440,
		-0.465123, 0.605853, -0.645448,
		0.602931, 0.750668, 0.270134,
		39.015106, 34.505936, 26.746845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009712, 34.421570, 26.564098>,  <38.593056, 33.980469, 26.557753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009712, 34.421570, 26.564098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646679, 34.384842, 26.400213>,  <37.428860, 34.362804, 26.301882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646679, 34.384842, 26.400213>,  <38.009712, 34.421570, 26.564098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646679, 34.384842, 26.400213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418959, 0.133631, 0.898118,
		-0.027718, 0.986768, -0.159752,
		-0.907582, -0.091824, -0.409712,
		37.374405, 34.357296, 26.277300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661926, 34.867046, 26.899792>,  <38.009712, 34.421570, 26.564098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661926, 34.867046, 26.899792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380135, 34.630058, 26.743490>,  <37.211060, 34.487865, 26.649710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380135, 34.630058, 26.743490>,  <37.661926, 34.867046, 26.899792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380135, 34.630058, 26.743490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572599, 0.149163, 0.806152,
		-0.419335, 0.791662, -0.444330,
		-0.704477, -0.592471, -0.390756,
		37.168793, 34.452316, 26.626263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067993, 35.066456, 27.269331>,  <37.661926, 34.867046, 26.899792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067993, 35.066456, 27.269331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.971992, 34.712929, 27.108696>,  <36.914394, 34.500813, 27.012316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.971992, 34.712929, 27.108696>,  <37.067993, 35.066456, 27.269331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971992, 34.712929, 27.108696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590681, -0.195337, 0.782905,
		-0.770388, 0.425105, -0.475172,
		-0.239998, -0.883815, -0.401586,
		36.899994, 34.447784, 26.988220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319611, 35.049599, 27.170418>,  <37.067993, 35.066456, 27.269331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319611, 35.049599, 27.170418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.458546, 34.674618, 27.179790>,  <36.541904, 34.449631, 27.185413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.458546, 34.674618, 27.179790>,  <36.319611, 35.049599, 27.170418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458546, 34.674618, 27.179790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645932, -0.221060, 0.730688,
		-0.679803, -0.268928, -0.682309,
		0.347334, -0.937449, 0.023432,
		36.562744, 34.393383, 27.186821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685093, 34.649940, 27.283575>,  <36.319611, 35.049599, 27.170418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685093, 34.649940, 27.283575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.994686, 34.431839, 27.412354>,  <36.180443, 34.300976, 27.489620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.994686, 34.431839, 27.412354>,  <35.685093, 34.649940, 27.283575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994686, 34.431839, 27.412354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558254, -0.347634, 0.753328,
		-0.298834, -0.762791, -0.573452,
		0.773984, -0.545252, 0.321946,
		36.226879, 34.268261, 27.508936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497799, 33.927864, 27.424496>,  <35.685093, 34.649940, 27.283575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497799, 33.927864, 27.424496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797691, 34.013187, 27.675064>,  <35.977627, 34.064381, 27.825405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797691, 34.013187, 27.675064>,  <35.497799, 33.927864, 27.424496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797691, 34.013187, 27.675064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485763, -0.465426, 0.739873,
		0.449374, -0.858998, -0.245327,
		0.749731, 0.213309, 0.626420,
		36.022610, 34.077179, 27.862989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435131, 33.453964, 27.917408>,  <35.497799, 33.927864, 27.424496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435131, 33.453964, 27.917408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682266, 33.708336, 28.102396>,  <35.830547, 33.860958, 28.213388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682266, 33.708336, 28.102396>,  <35.435131, 33.453964, 27.917408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682266, 33.708336, 28.102396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434933, -0.213599, 0.874762,
		0.655066, -0.741603, 0.144615,
		0.617836, 0.635925, 0.462469,
		35.867619, 33.899113, 28.241137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601395, 33.023804, 28.392006>,  <35.435131, 33.453964, 27.917408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601395, 33.023804, 28.392006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708828, 33.396969, 28.487955>,  <35.773289, 33.620869, 28.545525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708828, 33.396969, 28.487955>,  <35.601395, 33.023804, 28.392006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708828, 33.396969, 28.487955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309560, -0.152216, 0.938618,
		0.912159, -0.326353, 0.247909,
		0.268585, 0.932912, 0.239871,
		35.789402, 33.676842, 28.559916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845730, 32.886536, 29.077797>,  <35.601395, 33.023804, 28.392006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845730, 32.886536, 29.077797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.778984, 33.278275, 29.032124>,  <35.738937, 33.513317, 29.004721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.778984, 33.278275, 29.032124>,  <35.845730, 32.886536, 29.077797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778984, 33.278275, 29.032124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286307, 0.062687, 0.956086,
		0.943496, 0.192231, 0.269933,
		-0.166868, 0.979346, -0.114182,
		35.728924, 33.572079, 28.997869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088146, 33.112030, 29.592115>,  <35.845730, 32.886536, 29.077797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088146, 33.112030, 29.592115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.866241, 33.430462, 29.495375>,  <35.733097, 33.621521, 29.437330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.866241, 33.430462, 29.495375>,  <36.088146, 33.112030, 29.592115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866241, 33.430462, 29.495375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417691, -0.015082, 0.908464,
		0.719565, 0.604999, 0.340884,
		-0.554761, 0.796083, -0.241850,
		35.699814, 33.669289, 29.422819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164787, 33.680359, 30.087147>,  <36.088146, 33.112030, 29.592115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164787, 33.680359, 30.087147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.802662, 33.728020, 29.924072>,  <35.585388, 33.756615, 29.826227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.802662, 33.728020, 29.924072>,  <36.164787, 33.680359, 30.087147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802662, 33.728020, 29.924072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404652, 0.049755, 0.913116,
		0.129084, 0.991629, 0.003171,
		-0.905314, 0.119152, -0.407688,
		35.531067, 33.763763, 29.801765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814899, 34.241001, 30.359579>,  <36.164787, 33.680359, 30.087147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814899, 34.241001, 30.359579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.515533, 34.022507, 30.209110>,  <35.335915, 33.891411, 30.118830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.515533, 34.022507, 30.209110>,  <35.814899, 34.241001, 30.359579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515533, 34.022507, 30.209110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547901, 0.189595, 0.814775,
		-0.373735, 0.815895, -0.441177,
		-0.748416, -0.546232, -0.376171,
		35.291008, 33.858639, 30.096258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.471832, 34.145367, 22.920946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200924, 33.866901, 23.016155>,  <39.038380, 33.699821, 23.073280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200924, 33.866901, 23.016155>,  <39.471832, 34.145367, 22.920946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200924, 33.866901, 23.016155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277499, 0.541340, 0.793691,
		-0.681390, 0.471496, -0.559821,
		-0.677275, -0.696163, 0.238024,
		38.997742, 33.658054, 23.087563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791054, 34.596043, 23.051125>,  <39.471832, 34.145367, 22.920946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791054, 34.596043, 23.051125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676243, 34.237118, 23.185257>,  <38.607357, 34.021763, 23.265736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676243, 34.237118, 23.185257>,  <38.791054, 34.596043, 23.051125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676243, 34.237118, 23.185257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698372, 0.435622, 0.567900,
		-0.655660, -0.071181, -0.751694,
		-0.287031, -0.897310, 0.335331,
		38.590134, 33.967926, 23.285856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084946, 34.470894, 22.997440>,  <38.791054, 34.596043, 23.051125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084946, 34.470894, 22.997440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169910, 34.201683, 23.280825>,  <38.220890, 34.040157, 23.450855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169910, 34.201683, 23.280825>,  <38.084946, 34.470894, 22.997440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169910, 34.201683, 23.280825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725688, 0.376891, 0.575613,
		-0.654415, -0.636388, -0.408352,
		0.212409, -0.673026, 0.708462,
		38.233635, 33.999775, 23.493362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482601, 34.181187, 23.255602>,  <38.084946, 34.470894, 22.997440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482601, 34.181187, 23.255602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750332, 34.153442, 23.551491>,  <37.910969, 34.136795, 23.729025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750332, 34.153442, 23.551491>,  <37.482601, 34.181187, 23.255602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750332, 34.153442, 23.551491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645650, 0.438324, 0.625306,
		-0.367609, -0.896137, 0.248601,
		0.669327, -0.069359, 0.739723,
		37.951130, 34.132633, 23.773407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016220, 33.977165, 23.808737>,  <37.482601, 34.181187, 23.255602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016220, 33.977165, 23.808737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359940, 34.091866, 23.978151>,  <37.566170, 34.160686, 24.079800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359940, 34.091866, 23.978151>,  <37.016220, 33.977165, 23.808737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359940, 34.091866, 23.978151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504485, 0.338705, 0.794212,
		0.084285, -0.896133, 0.435709,
		0.859297, 0.286749, 0.423538,
		37.617729, 34.177891, 24.105213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046822, 33.698029, 24.420862>,  <37.016220, 33.977165, 23.808737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046822, 33.698029, 24.420862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326660, 33.977528, 24.480616>,  <37.494564, 34.145226, 24.516468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326660, 33.977528, 24.480616>,  <37.046822, 33.698029, 24.420862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326660, 33.977528, 24.480616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293506, 0.090408, 0.951672,
		0.651470, -0.709635, 0.268336,
		0.699600, 0.698745, 0.149384,
		37.536541, 34.187149, 24.525431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481026, 33.380470, 24.890566>,  <37.046822, 33.698029, 24.420862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481026, 33.380470, 24.890566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520058, 33.776821, 24.927748>,  <37.543476, 34.014633, 24.950056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520058, 33.776821, 24.927748>,  <37.481026, 33.380470, 24.890566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520058, 33.776821, 24.927748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166988, -0.075774, 0.983043,
		0.981118, -0.111451, 0.158070,
		0.097583, 0.990877, 0.092954,
		37.549332, 34.074085, 24.955633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977390, 33.477699, 25.435328>,  <37.481026, 33.380470, 24.890566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977390, 33.477699, 25.435328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753342, 33.808620, 25.418215>,  <37.618912, 34.007172, 25.407948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753342, 33.808620, 25.418215>,  <37.977390, 33.477699, 25.435328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753342, 33.808620, 25.418215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104358, -0.019233, 0.994354,
		0.821809, 0.561427, 0.097109,
		-0.560125, 0.827303, -0.042783,
		37.585304, 34.056812, 25.405380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117359, 33.873665, 26.032284>,  <37.977390, 33.477699, 25.435328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117359, 33.873665, 26.032284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765915, 34.026005, 25.917048>,  <37.555050, 34.117409, 25.847906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765915, 34.026005, 25.917048>,  <38.117359, 33.873665, 26.032284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765915, 34.026005, 25.917048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233824, 0.182913, 0.954918,
		0.416381, 0.906362, -0.071656,
		-0.878609, 0.380855, -0.288091,
		37.502331, 34.140263, 25.830620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698483, 34.403389, 25.949816>,  <38.117359, 33.873665, 26.032284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698483, 34.403389, 25.949816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003445, 34.504189, 26.188221>,  <39.186420, 34.564671, 26.331264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003445, 34.504189, 26.188221>,  <38.698483, 34.403389, 25.949816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003445, 34.504189, 26.188221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609573, 0.029409, -0.792184,
		-0.217159, 0.967280, -0.131191,
		0.762406, 0.252000, 0.596015,
		39.232166, 34.579788, 26.367025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011913, 34.919067, 25.586962>,  <38.698483, 34.403389, 25.949816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011913, 34.919067, 25.586962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294117, 34.786255, 25.837404>,  <39.463440, 34.706570, 25.987671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294117, 34.786255, 25.837404>,  <39.011913, 34.919067, 25.586962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294117, 34.786255, 25.837404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704686, 0.234786, -0.669547,
		0.075308, 0.913582, 0.399621,
		0.705511, -0.332029, 0.626108,
		39.505772, 34.686646, 26.025236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604694, 35.389835, 25.616419>,  <39.011913, 34.919067, 25.586962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604694, 35.389835, 25.616419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748779, 35.035316, 25.732841>,  <39.835232, 34.822605, 25.802696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748779, 35.035316, 25.732841>,  <39.604694, 35.389835, 25.616419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748779, 35.035316, 25.732841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685958, 0.040203, -0.726530,
		0.632223, 0.461361, 0.622447,
		0.360217, -0.886301, 0.291057,
		39.856846, 34.769424, 25.820158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307781, 35.545967, 25.841629>,  <39.604694, 35.389835, 25.616419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307781, 35.545967, 25.841629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273266, 35.158428, 25.748779>,  <40.252556, 34.925903, 25.693069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273266, 35.158428, 25.748779>,  <40.307781, 35.545967, 25.841629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273266, 35.158428, 25.748779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805624, 0.069219, -0.588369,
		0.586110, -0.237774, 0.774558,
		-0.086284, -0.968851, -0.232126,
		40.247379, 34.867771, 25.679142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976452, 35.209335, 26.015060>,  <40.307781, 35.545967, 25.841629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976452, 35.209335, 26.015060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771023, 35.018906, 25.729515>,  <40.647766, 34.904648, 25.558187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771023, 35.018906, 25.729515>,  <40.976452, 35.209335, 26.015060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771023, 35.018906, 25.729515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809800, 0.006130, -0.586674,
		0.283674, -0.879386, 0.382373,
		-0.513569, -0.476070, -0.713866,
		40.616951, 34.876083, 25.515356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349785, 34.616116, 25.821638>,  <40.976452, 35.209335, 26.015060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349785, 34.616116, 25.821638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140469, 34.664413, 25.484217>,  <41.014877, 34.693394, 25.281763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140469, 34.664413, 25.484217>,  <41.349785, 34.616116, 25.821638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140469, 34.664413, 25.484217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803726, -0.259019, -0.535661,
		-0.283174, -0.958296, 0.038499,
		-0.523293, 0.120743, -0.843555,
		40.983482, 34.700638, 25.231150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675011, 34.205406, 25.387669>,  <41.349785, 34.616116, 25.821638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675011, 34.205406, 25.387669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426876, 34.356583, 25.112759>,  <41.277996, 34.447289, 24.947813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426876, 34.356583, 25.112759>,  <41.675011, 34.205406, 25.387669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426876, 34.356583, 25.112759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545549, -0.421651, -0.724284,
		-0.563525, -0.824240, 0.055380,
		-0.620335, 0.377940, -0.687274,
		41.240776, 34.469963, 24.906576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413685, 33.674721, 25.031637>,  <41.675011, 34.205406, 25.387669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413685, 33.674721, 25.031637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380959, 33.985241, 24.781626>,  <41.361320, 34.171555, 24.631618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380959, 33.985241, 24.781626>,  <41.413685, 33.674721, 25.031637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380959, 33.985241, 24.781626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410970, -0.545052, -0.730768,
		-0.907970, -0.316657, -0.274442,
		-0.081818, 0.776303, -0.625028,
		41.356415, 34.218132, 24.594118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184887, 33.340149, 24.433256>,  <41.413685, 33.674721, 25.031637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184887, 33.340149, 24.433256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344162, 33.695015, 24.339968>,  <41.439728, 33.907932, 24.283995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344162, 33.695015, 24.339968>,  <41.184887, 33.340149, 24.433256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344162, 33.695015, 24.339968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380274, -0.391017, -0.838151,
		-0.834769, 0.245053, -0.493063,
		0.398187, 0.887161, -0.233221,
		41.463619, 33.961163, 24.270000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077507, 33.387703, 23.758104>,  <41.184887, 33.340149, 24.433256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077507, 33.387703, 23.758104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328014, 33.694729, 23.812706>,  <41.478317, 33.878944, 23.845467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328014, 33.694729, 23.812706>,  <41.077507, 33.387703, 23.758104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328014, 33.694729, 23.812706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225068, -0.010370, -0.974288,
		-0.746412, 0.640890, -0.179249,
		0.626270, 0.767563, 0.136503,
		41.515896, 33.924999, 23.853657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009430, 33.992107, 23.202173>,  <41.077507, 33.387703, 23.758104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009430, 33.992107, 23.202173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384853, 33.989243, 23.340195>,  <41.610107, 33.987522, 23.423008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384853, 33.989243, 23.340195>,  <41.009430, 33.992107, 23.202173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384853, 33.989243, 23.340195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337651, -0.187939, -0.922318,
		0.071456, 0.982154, -0.173973,
		0.938555, -0.007163, 0.345055,
		41.666420, 33.987095, 23.443710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494560, 34.321815, 22.714016>,  <41.009430, 33.992107, 23.202173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494560, 34.321815, 22.714016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763763, 34.131489, 22.940523>,  <41.925285, 34.017292, 23.076427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763763, 34.131489, 22.940523>,  <41.494560, 34.321815, 22.714016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763763, 34.131489, 22.940523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429881, -0.371382, -0.822969,
		0.601887, 0.797290, -0.045396,
		0.673004, -0.475820, 0.566269,
		41.965664, 33.988743, 23.110403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194965, 34.564037, 22.424040>,  <41.494560, 34.321815, 22.714016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194965, 34.564037, 22.424040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247177, 34.219784, 22.620922>,  <42.278503, 34.013233, 22.739052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247177, 34.219784, 22.620922>,  <42.194965, 34.564037, 22.424040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247177, 34.219784, 22.620922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417932, -0.402425, -0.814486,
		0.899052, 0.312027, 0.307157,
		0.130534, -0.860635, 0.492207,
		42.286339, 33.961594, 22.768583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900589, 34.376656, 22.353128>,  <42.194965, 34.564037, 22.424040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900589, 34.376656, 22.353128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742714, 34.027626, 22.468252>,  <42.647987, 33.818207, 22.537327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742714, 34.027626, 22.468252>,  <42.900589, 34.376656, 22.353128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742714, 34.027626, 22.468252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401178, -0.445462, -0.800387,
		0.826606, -0.200440, 0.525876,
		-0.394688, -0.872575, 0.287810,
		42.624306, 33.765854, 22.554596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.739822, 26.979002, 22.287476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970989, 27.303850, 22.255302>,  <38.109692, 27.498758, 22.235998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970989, 27.303850, 22.255302>,  <37.739822, 26.979002, 22.287476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970989, 27.303850, 22.255302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012867, 0.107616, 0.994109,
		0.815992, -0.573480, 0.072643,
		0.577919, 0.812121, -0.080434,
		38.144363, 27.547485, 22.231173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197853, 26.845339, 22.853359>,  <37.739822, 26.979002, 22.287476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197853, 26.845339, 22.853359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196053, 27.230457, 22.745285>,  <38.194973, 27.461529, 22.680441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196053, 27.230457, 22.745285>,  <38.197853, 26.845339, 22.853359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196053, 27.230457, 22.745285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017176, 0.270074, 0.962686,
		0.999842, 0.008974, 0.015322,
		-0.004501, 0.962798, -0.270186,
		38.194702, 27.519297, 22.664228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816933, 27.130953, 23.087725>,  <38.197853, 26.845339, 22.853359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816933, 27.130953, 23.087725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.583019, 27.449905, 23.028111>,  <38.442673, 27.641277, 22.992342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.583019, 27.449905, 23.028111>,  <38.816933, 27.130953, 23.087725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583019, 27.449905, 23.028111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175351, 0.303638, 0.936513,
		0.792009, 0.521525, -0.317384,
		-0.584785, 0.797380, -0.149034,
		38.407585, 27.689119, 22.983400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135113, 27.608631, 23.518528>,  <38.816933, 27.130953, 23.087725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135113, 27.608631, 23.518528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780579, 27.779037, 23.445953>,  <38.567860, 27.881281, 23.402409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780579, 27.779037, 23.445953>,  <39.135113, 27.608631, 23.518528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780579, 27.779037, 23.445953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044394, 0.468210, 0.882501,
		0.460911, 0.774137, -0.433904,
		-0.886335, 0.426017, -0.181436,
		38.514679, 27.906843, 23.391523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146770, 28.244169, 23.784719>,  <39.135113, 27.608631, 23.518528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146770, 28.244169, 23.784719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757179, 28.153969, 23.775618>,  <38.523426, 28.099848, 23.770157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757179, 28.153969, 23.775618>,  <39.146770, 28.244169, 23.784719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757179, 28.153969, 23.775618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073121, 0.217615, 0.973292,
		-0.214529, 0.949627, -0.228441,
		-0.973977, -0.225503, -0.022753,
		38.464985, 28.086317, 23.768791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902710, 28.717079, 24.265024>,  <39.146770, 28.244169, 23.784719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902710, 28.717079, 24.265024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.637047, 28.419662, 24.233932>,  <38.477650, 28.241211, 24.215279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.637047, 28.419662, 24.233932>,  <38.902710, 28.717079, 24.265024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637047, 28.419662, 24.233932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154427, 0.034719, 0.987394,
		-0.731472, 0.667785, -0.137882,
		-0.664154, -0.743544, -0.077728,
		38.437801, 28.196600, 24.210613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293362, 28.910843, 24.559221>,  <38.902710, 28.717079, 24.265024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293362, 28.910843, 24.559221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251640, 28.513092, 24.566593>,  <38.226608, 28.274443, 24.571016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251640, 28.513092, 24.566593>,  <38.293362, 28.910843, 24.559221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251640, 28.513092, 24.566593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418926, 0.060731, 0.905987,
		-0.902010, 0.086774, -0.422904,
		-0.104300, -0.994375, 0.018428,
		38.220352, 28.214779, 24.572121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696621, 28.831442, 24.961515>,  <38.293362, 28.910843, 24.559221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696621, 28.831442, 24.961515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815807, 28.450481, 24.935738>,  <37.887318, 28.221905, 24.920271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815807, 28.450481, 24.935738>,  <37.696621, 28.831442, 24.961515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815807, 28.450481, 24.935738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425362, -0.192909, 0.884224,
		-0.854568, -0.236052, -0.462595,
		0.297961, -0.952400, -0.064446,
		37.905197, 28.164761, 24.916405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107883, 28.362768, 25.056780>,  <37.696621, 28.831442, 24.961515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107883, 28.362768, 25.056780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451488, 28.198895, 25.179583>,  <37.657650, 28.100571, 25.253265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451488, 28.198895, 25.179583>,  <37.107883, 28.362768, 25.056780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451488, 28.198895, 25.179583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387582, -0.128623, 0.912818,
		-0.334481, -0.903113, -0.269276,
		0.859013, -0.409687, 0.307009,
		37.709194, 28.075989, 25.271685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873322, 27.831388, 25.538710>,  <37.107883, 28.362768, 25.056780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873322, 27.831388, 25.538710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.253059, 27.902918, 25.642067>,  <37.480904, 27.945835, 25.704082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.253059, 27.902918, 25.642067>,  <36.873322, 27.831388, 25.538710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253059, 27.902918, 25.642067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273115, 0.062857, 0.959926,
		0.155418, -0.981871, 0.108513,
		0.949344, 0.178826, 0.258394,
		37.537861, 27.956564, 25.719585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915184, 27.479752, 26.207588>,  <36.873322, 27.831388, 25.538710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915184, 27.479752, 26.207588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205532, 27.751537, 26.164808>,  <37.379742, 27.914608, 26.139141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205532, 27.751537, 26.164808>,  <36.915184, 27.479752, 26.207588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205532, 27.751537, 26.164808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053187, 0.210467, 0.976153,
		0.685768, -0.702876, 0.188911,
		0.725874, 0.679463, -0.106948,
		37.423294, 27.955376, 26.132725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278576, 27.419409, 26.818047>,  <36.915184, 27.479752, 26.207588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278576, 27.419409, 26.818047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403545, 27.773457, 26.680086>,  <37.478527, 27.985886, 26.597311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403545, 27.773457, 26.680086>,  <37.278576, 27.419409, 26.818047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403545, 27.773457, 26.680086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012881, 0.366988, 0.930137,
		0.949855, -0.286155, 0.126057,
		0.312425, 0.885119, -0.344899,
		37.497272, 28.038992, 26.576616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812729, 27.519028, 27.101492>,  <37.278576, 27.419409, 26.818047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812729, 27.519028, 27.101492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673061, 27.882854, 27.011360>,  <37.589260, 28.101151, 26.957281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673061, 27.882854, 27.011360>,  <37.812729, 27.519028, 27.101492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673061, 27.882854, 27.011360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050326, 0.221913, 0.973767,
		0.935707, 0.351349, -0.031710,
		-0.349169, 0.909565, -0.225327,
		37.568310, 28.155724, 26.943762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191273, 27.994516, 27.583294>,  <37.812729, 27.519028, 27.101492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191273, 27.994516, 27.583294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903934, 28.234968, 27.443220>,  <37.731533, 28.379240, 27.359177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903934, 28.234968, 27.443220>,  <38.191273, 27.994516, 27.583294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903934, 28.234968, 27.443220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173105, 0.333085, 0.926871,
		0.673810, 0.726428, -0.135211,
		-0.718342, 0.601129, -0.350184,
		37.688431, 28.415306, 27.338165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567780, 28.649988, 27.473339>,  <38.191273, 27.994516, 27.583294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567780, 28.649988, 27.473339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930695, 28.596395, 27.632780>,  <39.148441, 28.564240, 27.728445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930695, 28.596395, 27.632780>,  <38.567780, 28.649988, 27.473339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930695, 28.596395, 27.632780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380639, -0.141254, -0.913872,
		0.178746, 0.980865, -0.077159,
		0.907284, -0.133981, 0.398604,
		39.202881, 28.556202, 27.752361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917255, 29.091257, 27.032963>,  <38.567780, 28.649988, 27.473339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917255, 29.091257, 27.032963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178837, 28.856627, 27.224073>,  <39.335785, 28.715849, 27.338739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178837, 28.856627, 27.224073>,  <38.917255, 29.091257, 27.032963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178837, 28.856627, 27.224073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481209, -0.164799, -0.860976,
		0.583765, 0.792950, 0.174495,
		0.653954, -0.586577, 0.477779,
		39.375023, 28.680653, 27.367407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652363, 29.337919, 26.947878>,  <38.917255, 29.091257, 27.032963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652363, 29.337919, 26.947878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687756, 28.950979, 27.042879>,  <39.708992, 28.718815, 27.099880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687756, 28.950979, 27.042879>,  <39.652363, 29.337919, 26.947878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687756, 28.950979, 27.042879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639208, -0.127723, -0.758353,
		0.763927, 0.218915, 0.607036,
		0.088483, -0.967348, 0.237504,
		39.714302, 28.660774, 27.114130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314713, 29.255648, 26.942858>,  <39.652363, 29.337919, 26.947878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314713, 29.255648, 26.942858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211666, 28.869629, 26.962128>,  <40.149837, 28.638018, 26.973690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211666, 28.869629, 26.962128>,  <40.314713, 29.255648, 26.942858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211666, 28.869629, 26.962128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648043, -0.209543, -0.732211,
		0.716713, -0.157405, 0.679372,
		-0.257612, -0.965047, 0.048177,
		40.134384, 28.580114, 26.976582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000607, 28.712292, 27.025288>,  <40.314713, 29.255648, 26.942858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000607, 28.712292, 27.025288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706375, 28.520134, 26.834230>,  <40.529835, 28.404839, 26.719595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706375, 28.520134, 26.834230>,  <41.000607, 28.712292, 27.025288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706375, 28.520134, 26.834230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652123, -0.311177, -0.691306,
		0.183468, -0.819993, 0.542172,
		-0.735578, -0.480396, -0.477645,
		40.485703, 28.376015, 26.690937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288013, 28.119020, 26.732052>,  <41.000607, 28.712292, 27.025288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288013, 28.119020, 26.732052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.961163, 28.179459, 26.509531>,  <40.765053, 28.215721, 26.376019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.961163, 28.179459, 26.509531>,  <41.288013, 28.119020, 26.732052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961163, 28.179459, 26.509531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500185, -0.293885, -0.814522,
		-0.286530, -0.943829, 0.164586,
		-0.817138, 0.151062, -0.556296,
		40.716022, 28.224787, 26.342640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248783, 27.510160, 26.425665>,  <41.288013, 28.119020, 26.732052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248783, 27.510160, 26.425665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.001301, 27.754345, 26.227858>,  <40.852814, 27.900856, 26.109173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.001301, 27.754345, 26.227858>,  <41.248783, 27.510160, 26.425665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001301, 27.754345, 26.227858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487431, -0.195378, -0.851022,
		-0.616133, -0.767571, -0.176677,
		-0.618701, 0.610461, -0.494516,
		40.815689, 27.937483, 26.079502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003025, 27.075222, 25.899494>,  <41.248783, 27.510160, 26.425665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003025, 27.075222, 25.899494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956409, 27.452356, 25.774611>,  <40.928440, 27.678638, 25.699680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956409, 27.452356, 25.774611>,  <41.003025, 27.075222, 25.899494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956409, 27.452356, 25.774611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287962, -0.268770, -0.919152,
		-0.950524, -0.197025, -0.240178,
		-0.116543, 0.942838, -0.312208,
		40.921448, 27.735209, 25.680948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661522, 27.047676, 25.268118>,  <41.003025, 27.075222, 25.899494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661522, 27.047676, 25.268118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794926, 27.424158, 25.246571>,  <40.874969, 27.650047, 25.233643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794926, 27.424158, 25.246571>,  <40.661522, 27.047676, 25.268118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794926, 27.424158, 25.246571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200803, -0.126749, -0.971398,
		-0.921113, 0.313154, -0.231269,
		0.333510, 0.941207, -0.053868,
		40.894978, 27.706520, 25.230410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303944, 27.451563, 24.632196>,  <40.661522, 27.047676, 25.268118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303944, 27.451563, 24.632196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.645805, 27.638416, 24.722839>,  <40.850922, 27.750528, 24.777225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.645805, 27.638416, 24.722839>,  <40.303944, 27.451563, 24.632196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645805, 27.638416, 24.722839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337851, -0.168970, -0.925908,
		-0.394231, 0.867893, -0.302232,
		0.854657, 0.467131, 0.226605,
		40.902203, 27.778555, 24.790821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375378, 28.010723, 24.163193>,  <40.303944, 27.451563, 24.632196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375378, 28.010723, 24.163193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.717281, 27.862249, 24.308306>,  <40.922424, 27.773165, 24.395372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.717281, 27.862249, 24.308306>,  <40.375378, 28.010723, 24.163193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717281, 27.862249, 24.308306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293458, -0.230898, -0.927669,
		0.428101, 0.899393, -0.088435,
		0.854758, -0.371184, 0.362781,
		40.973709, 27.750895, 24.417141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859951, 28.415646, 23.856829>,  <40.375378, 28.010723, 24.163193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859951, 28.415646, 23.856829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.998363, 28.057720, 23.969662>,  <41.081413, 27.842964, 24.037361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.998363, 28.057720, 23.969662>,  <40.859951, 28.415646, 23.856829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998363, 28.057720, 23.969662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229535, -0.210780, -0.950203,
		0.909711, 0.393550, 0.132454,
		0.346034, -0.894813, 0.282082,
		41.102173, 27.789276, 24.054287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425797, 28.467354, 23.475002>,  <40.859951, 28.415646, 23.856829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425797, 28.467354, 23.475002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.397156, 28.081116, 23.575003>,  <41.379971, 27.849373, 23.635004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.397156, 28.081116, 23.575003>,  <41.425797, 28.467354, 23.475002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397156, 28.081116, 23.575003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228977, -0.259864, -0.938104,
		0.970795, -0.009924, 0.239705,
		-0.071601, -0.965594, 0.250003,
		41.375675, 27.791437, 23.650003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080757, 28.284058, 23.213976>,  <41.425797, 28.467354, 23.475002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080757, 28.284058, 23.213976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.849136, 27.958178, 23.226381>,  <41.710163, 27.762650, 23.233824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.849136, 27.958178, 23.226381>,  <42.080757, 28.284058, 23.213976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849136, 27.958178, 23.226381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130574, -0.130222, -0.982849,
		0.804765, -0.565074, 0.181784,
		-0.579055, -0.814699, 0.031014,
		41.675419, 27.713768, 23.235685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773991, 28.203180, 23.583355>,  <42.080757, 28.284058, 23.213976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773991, 28.203180, 23.583355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.104668, 28.421528, 23.528803>,  <43.303074, 28.552536, 23.496071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.104668, 28.421528, 23.528803>,  <42.773991, 28.203180, 23.583355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104668, 28.421528, 23.528803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115737, 0.402190, 0.908212,
		0.550620, -0.735029, 0.395666,
		0.826694, 0.545872, -0.136383,
		43.352676, 28.585289, 23.487888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185432, 28.180172, 24.216160>,  <42.773991, 28.203180, 23.583355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185432, 28.180172, 24.216160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.308407, 28.526964, 24.059275>,  <43.382191, 28.735039, 23.965143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.308407, 28.526964, 24.059275>,  <43.185432, 28.180172, 24.216160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308407, 28.526964, 24.059275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083510, 0.435168, 0.896468,
		0.947899, -0.242848, 0.206186,
		0.307431, 0.866980, -0.392215,
		43.400635, 28.787058, 23.941610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680481, 28.330559, 24.635952>,  <43.185432, 28.180172, 24.216160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680481, 28.330559, 24.635952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.598274, 28.685249, 24.470310>,  <43.548950, 28.898064, 24.370926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.598274, 28.685249, 24.470310>,  <43.680481, 28.330559, 24.635952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598274, 28.685249, 24.470310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055351, 0.411927, 0.909534,
		0.977087, 0.209846, -0.035577,
		-0.205517, 0.886724, -0.414104,
		43.536617, 28.951267, 24.346079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058292, 28.894182, 25.001478>,  <43.680481, 28.330559, 24.635952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058292, 28.894182, 25.001478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.757946, 29.097490, 24.832783>,  <43.577740, 29.219475, 24.731565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.757946, 29.097490, 24.832783>,  <44.058292, 28.894182, 25.001478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757946, 29.097490, 24.832783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168828, 0.469628, 0.866572,
		0.638511, 0.721880, -0.266818,
		-0.750866, 0.508270, -0.421737,
		43.532684, 29.249971, 24.706263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060261, 29.503002, 25.351328>,  <44.058292, 28.894182, 25.001478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060261, 29.503002, 25.351328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.698746, 29.505669, 25.180153>,  <43.481838, 29.507269, 25.077448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.698746, 29.505669, 25.180153>,  <44.060261, 29.503002, 25.351328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698746, 29.505669, 25.180153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368483, 0.496486, 0.785953,
		0.217703, 0.868019, -0.446260,
		-0.903784, 0.006665, -0.427936,
		43.427612, 29.507668, 25.051771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844231, 30.247595, 25.173361>,  <44.060261, 29.503002, 25.351328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844231, 30.247595, 25.173361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.523373, 30.011250, 25.207874>,  <43.330856, 29.869442, 25.228582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.523373, 30.011250, 25.207874>,  <43.844231, 30.247595, 25.173361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523373, 30.011250, 25.207874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415742, 0.656341, 0.629583,
		-0.428629, 0.469145, -0.772127,
		-0.802144, -0.590863, 0.086283,
		43.282730, 29.833990, 25.233759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266575, 30.671511, 25.189247>,  <43.844231, 30.247595, 25.173361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266575, 30.671511, 25.189247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.117748, 30.331919, 25.339340>,  <43.028454, 30.128164, 25.429396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.117748, 30.331919, 25.339340>,  <43.266575, 30.671511, 25.189247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117748, 30.331919, 25.339340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551183, 0.527345, 0.646610,
		-0.746836, 0.033759, -0.664150,
		-0.372065, -0.848980, 0.375233,
		43.006130, 30.077225, 25.451910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488316, 30.658997, 25.134453>,  <43.266575, 30.671511, 25.189247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488316, 30.658997, 25.134453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.609016, 30.411062, 25.424212>,  <42.681438, 30.262302, 25.598066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.609016, 30.411062, 25.424212>,  <42.488316, 30.658997, 25.134453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609016, 30.411062, 25.424212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577043, 0.486097, 0.656302,
		-0.758925, -0.616048, -0.210991,
		0.301751, -0.619835, 0.724397,
		42.699543, 30.225111, 25.641531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943848, 30.705067, 25.467703>,  <42.488316, 30.658997, 25.134453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943848, 30.705067, 25.467703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.197781, 30.543045, 25.730890>,  <42.350140, 30.445831, 25.888802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.197781, 30.543045, 25.730890>,  <41.943848, 30.705067, 25.467703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197781, 30.543045, 25.730890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475673, 0.466177, 0.745932,
		-0.608872, -0.786518, 0.103270,
		0.634831, -0.405054, 0.657968,
		42.388229, 30.421530, 25.928280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487820, 30.481520, 25.929188>,  <41.943848, 30.705067, 25.467703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487820, 30.481520, 25.929188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.845264, 30.507278, 26.106867>,  <42.059731, 30.522734, 26.213474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.845264, 30.507278, 26.106867>,  <41.487820, 30.481520, 25.929188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845264, 30.507278, 26.106867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438001, 0.341315, 0.831660,
		-0.098056, -0.937740, 0.333208,
		0.893611, 0.064396, 0.444200,
		42.113346, 30.526598, 26.240128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422611, 30.079258, 26.539297>,  <41.487820, 30.481520, 25.929188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422611, 30.079258, 26.539297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.727467, 30.326521, 26.616274>,  <41.910378, 30.474878, 26.662460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.727467, 30.326521, 26.616274>,  <41.422611, 30.079258, 26.539297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727467, 30.326521, 26.616274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488599, 0.354160, 0.797397,
		0.424761, -0.701750, 0.571948,
		0.762135, 0.618156, 0.192441,
		41.956108, 30.511967, 26.674006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471741, 30.041828, 27.256201>,  <41.422611, 30.079258, 26.539297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471741, 30.041828, 27.256201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.676426, 30.369476, 27.152515>,  <41.799236, 30.566065, 27.090303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.676426, 30.369476, 27.152515>,  <41.471741, 30.041828, 27.256201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676426, 30.369476, 27.152515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257466, 0.434042, 0.863318,
		0.819670, -0.375034, 0.433001,
		0.511714, 0.819120, -0.259213,
		41.829941, 30.615211, 27.074751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891449, 30.260195, 27.814137>,  <41.471741, 30.041828, 27.256201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891449, 30.260195, 27.814137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.839298, 30.595039, 27.601627>,  <41.808010, 30.795946, 27.474121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.839298, 30.595039, 27.601627>,  <41.891449, 30.260195, 27.814137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839298, 30.595039, 27.601627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189403, 0.504949, 0.842112,
		0.973206, 0.210415, 0.092719,
		-0.130374, 0.837109, -0.531272,
		41.800186, 30.846172, 27.442245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305798, 30.729393, 28.136526>,  <41.891449, 30.260195, 27.814137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305798, 30.729393, 28.136526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.036388, 30.947371, 27.936766>,  <41.874744, 31.078157, 27.816910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.036388, 30.947371, 27.936766>,  <42.305798, 30.729393, 28.136526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036388, 30.947371, 27.936766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039209, 0.648339, 0.760342,
		0.738126, 0.531688, -0.415304,
		-0.673522, 0.544944, -0.499403,
		41.834332, 31.110853, 27.786945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.683941, 33.438946, 22.356562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.315258, 33.289082, 22.396734>,  <43.094048, 33.199165, 22.420837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.315258, 33.289082, 22.396734>,  <43.683941, 33.438946, 22.356562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315258, 33.289082, 22.396734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238454, -0.751520, -0.615108,
		0.305933, -0.543001, 0.782020,
		-0.921707, -0.374658, 0.100434,
		43.038746, 33.176685, 22.426865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729523, 32.686325, 22.687592>,  <43.683941, 33.438946, 22.356562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729523, 32.686325, 22.687592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.385197, 32.739582, 22.491112>,  <43.178600, 32.771538, 22.373224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.385197, 32.739582, 22.491112>,  <43.729523, 32.686325, 22.687592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385197, 32.739582, 22.491112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165228, -0.839774, -0.517184,
		-0.481355, -0.526358, 0.700889,
		-0.860812, 0.133142, -0.491198,
		43.126953, 32.779526, 22.343752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423409, 31.948799, 22.628115>,  <43.729523, 32.686325, 22.687592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423409, 31.948799, 22.628115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.275028, 32.205158, 22.359299>,  <43.186001, 32.358974, 22.198009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.275028, 32.205158, 22.359299>,  <43.423409, 31.948799, 22.628115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275028, 32.205158, 22.359299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156103, -0.670344, -0.725445,
		-0.915437, -0.374014, 0.148620,
		-0.370954, 0.640900, -0.672042,
		43.163742, 32.397427, 22.157686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951511, 31.601931, 22.236185>,  <43.423409, 31.948799, 22.628115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951511, 31.601931, 22.236185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.069187, 31.900799, 21.997793>,  <43.139793, 32.080120, 21.854759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.069187, 31.900799, 21.997793>,  <42.951511, 31.601931, 22.236185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069187, 31.900799, 21.997793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035064, -0.631591, -0.774508,
		-0.955104, 0.206953, -0.212005,
		0.294187, 0.747170, -0.595979,
		43.157444, 32.124950, 21.819000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725746, 31.356089, 21.615192>,  <42.951511, 31.601931, 22.236185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725746, 31.356089, 21.615192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.967140, 31.657795, 21.511742>,  <43.111977, 31.838820, 21.449671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.967140, 31.657795, 21.511742>,  <42.725746, 31.356089, 21.615192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967140, 31.657795, 21.511742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368245, -0.551322, -0.748625,
		-0.707250, 0.356545, -0.610469,
		0.603483, 0.754268, -0.258627,
		43.148186, 31.884075, 21.434155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561695, 31.516064, 20.880239>,  <42.725746, 31.356089, 21.615192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561695, 31.516064, 20.880239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.926071, 31.643259, 20.985369>,  <43.144695, 31.719576, 21.048447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.926071, 31.643259, 20.985369>,  <42.561695, 31.516064, 20.880239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926071, 31.643259, 20.985369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406836, -0.586815, -0.700095,
		-0.068396, 0.744668, -0.663921,
		0.910937, 0.317991, 0.262822,
		43.199352, 31.738657, 21.064215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829990, 31.846889, 20.287426>,  <42.561695, 31.516064, 20.880239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829990, 31.846889, 20.287426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.139069, 31.735870, 20.515779>,  <43.324516, 31.669260, 20.652792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.139069, 31.735870, 20.515779>,  <42.829990, 31.846889, 20.287426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139069, 31.735870, 20.515779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418884, -0.452788, -0.787096,
		0.476945, 0.847320, -0.233608,
		0.772697, -0.277546, 0.570883,
		43.370876, 31.652607, 20.687044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500034, 32.145630, 19.928963>,  <42.829990, 31.846889, 20.287426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500034, 32.145630, 19.928963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543411, 31.834616, 20.176731>,  <43.569435, 31.648006, 20.325392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543411, 31.834616, 20.176731>,  <43.500034, 32.145630, 19.928963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543411, 31.834616, 20.176731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330035, -0.559595, -0.760218,
		0.937720, 0.286868, 0.195931,
		0.108440, -0.777535, 0.619419,
		43.575943, 31.601355, 20.362556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013634, 31.780041, 19.645046>,  <43.500034, 32.145630, 19.928963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013634, 31.780041, 19.645046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.913464, 31.502968, 19.915594>,  <43.853363, 31.336723, 20.077923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.913464, 31.502968, 19.915594>,  <44.013634, 31.780041, 19.645046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913464, 31.502968, 19.915594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446853, -0.702463, -0.553957,
		0.858842, 0.163512, 0.485443,
		-0.250427, -0.692683, 0.676370,
		43.838337, 31.295162, 20.118505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619205, 31.379391, 19.700558>,  <44.013634, 31.780041, 19.645046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619205, 31.379391, 19.700558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.326706, 31.148491, 19.845917>,  <44.151207, 31.009951, 19.933132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.326706, 31.148491, 19.845917>,  <44.619205, 31.379391, 19.700558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326706, 31.148491, 19.845917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238911, -0.715755, -0.656213,
		0.638903, -0.393035, 0.661306,
		-0.731248, -0.577250, 0.363398,
		44.107330, 30.975315, 19.954937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925922, 30.680143, 19.708433>,  <44.619205, 31.379391, 19.700558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925922, 30.680143, 19.708433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.526752, 30.661720, 19.726456>,  <44.287251, 30.650667, 19.737268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.526752, 30.661720, 19.726456>,  <44.925922, 30.680143, 19.708433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526752, 30.661720, 19.726456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001791, -0.718862, -0.695151,
		0.064407, -0.693626, 0.717450,
		-0.997922, -0.046057, 0.045057,
		44.227375, 30.647903, 19.739973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763592, 30.059429, 19.908066>,  <44.925922, 30.680143, 19.708433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763592, 30.059429, 19.908066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.556248, 30.212330, 19.602076>,  <44.431843, 30.304070, 19.418482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.556248, 30.212330, 19.602076>,  <44.763592, 30.059429, 19.908066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556248, 30.212330, 19.602076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214635, -0.807750, -0.549064,
		-0.827790, -0.448803, 0.336660,
		-0.518359, 0.382251, -0.764976,
		44.400742, 30.327005, 19.372583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.126270, 29.640741, 19.749022>,  <44.763592, 30.059429, 19.908066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.126270, 29.640741, 19.749022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.359093, 29.833084, 19.486729>,  <44.498787, 29.948490, 19.329353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.359093, 29.833084, 19.486729>,  <44.126270, 29.640741, 19.749022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359093, 29.833084, 19.486729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468939, -0.857306, -0.212421,
		-0.664307, -0.183857, -0.724495,
		0.582059, 0.480856, -0.655732,
		44.533710, 29.977341, 19.290009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182178, 29.317766, 19.119143>,  <44.126270, 29.640741, 19.749022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182178, 29.317766, 19.119143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.523891, 29.524696, 19.098852>,  <44.728920, 29.648855, 19.086678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.523891, 29.524696, 19.098852>,  <44.182178, 29.317766, 19.119143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523891, 29.524696, 19.098852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449585, -0.784333, -0.427427,
		-0.260905, 0.342338, -0.902625,
		0.854284, 0.517325, -0.050727,
		44.780178, 29.679893, 19.083633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488026, 29.132908, 18.546566>,  <44.182178, 29.317766, 19.119143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488026, 29.132908, 18.546566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.785118, 29.312014, 18.745708>,  <44.963371, 29.419477, 18.865194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.785118, 29.312014, 18.745708>,  <44.488026, 29.132908, 18.546566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785118, 29.312014, 18.745708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669023, -0.526913, -0.524186,
		0.027614, 0.722405, -0.690919,
		0.742729, 0.447766, 0.497855,
		45.007938, 29.446342, 18.895065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271828, 28.431761, 18.470421>,  <44.488026, 29.132908, 18.546566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271828, 28.431761, 18.470421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.529358, 28.126179, 18.487650>,  <44.683876, 27.942829, 18.497988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.529358, 28.126179, 18.487650>,  <44.271828, 28.431761, 18.470421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529358, 28.126179, 18.487650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088311, -0.018272, 0.995925,
		-0.760057, -0.645009, -0.079230,
		0.643828, -0.763957, 0.043073,
		44.722507, 27.896992, 18.500572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981098, 27.878462, 18.934320>,  <44.271828, 28.431761, 18.470421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981098, 27.878462, 18.934320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.374458, 27.806311, 18.942194>,  <44.610474, 27.763020, 18.946918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.374458, 27.806311, 18.942194>,  <43.981098, 27.878462, 18.934320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374458, 27.806311, 18.942194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037783, -0.097453, 0.994523,
		-0.177473, -0.978758, -0.102651,
		0.983400, -0.180379, 0.019685,
		44.669479, 27.752197, 18.948099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036957, 27.297901, 19.224684>,  <43.981098, 27.878462, 18.934320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036957, 27.297901, 19.224684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.405560, 27.451109, 19.250357>,  <44.626720, 27.543034, 19.265760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.405560, 27.451109, 19.250357>,  <44.036957, 27.297901, 19.224684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405560, 27.451109, 19.250357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000190, -0.165713, 0.986174,
		0.388358, -0.908755, -0.152779,
		0.921508, 0.383018, 0.064183,
		44.682011, 27.566013, 19.269611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459450, 26.820368, 19.725384>,  <44.036957, 27.297901, 19.224684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459450, 26.820368, 19.725384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.634224, 27.180067, 19.716995>,  <44.739086, 27.395887, 19.711962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.634224, 27.180067, 19.716995>,  <44.459450, 26.820368, 19.725384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634224, 27.180067, 19.716995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079527, -0.015399, 0.996714,
		0.895972, -0.437164, -0.078243,
		0.436933, 0.899249, -0.020969,
		44.765305, 27.449842, 19.710705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929092, 26.846136, 20.350407>,  <44.459450, 26.820368, 19.725384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929092, 26.846136, 20.350407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.900738, 27.236868, 20.269634>,  <44.883724, 27.471308, 20.221170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.900738, 27.236868, 20.269634>,  <44.929092, 26.846136, 20.350407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900738, 27.236868, 20.269634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029568, 0.204410, 0.978439,
		0.997046, 0.063388, -0.043373,
		-0.070887, 0.976831, -0.201932,
		44.879471, 27.529917, 20.209055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455746, 27.186893, 20.824360>,  <44.929092, 26.846136, 20.350407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455746, 27.186893, 20.824360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.170467, 27.433296, 20.690561>,  <44.999302, 27.581139, 20.610283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.170467, 27.433296, 20.690561>,  <45.455746, 27.186893, 20.824360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170467, 27.433296, 20.690561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213252, 0.263898, 0.940681,
		0.667738, 0.742223, -0.056846,
		-0.713197, 0.616006, -0.334495,
		44.956509, 27.618097, 20.590212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538273, 27.790710, 21.295204>,  <45.455746, 27.186893, 20.824360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538273, 27.790710, 21.295204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.182484, 27.833937, 21.117592>,  <44.969009, 27.859873, 21.011024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.182484, 27.833937, 21.117592>,  <45.538273, 27.790710, 21.295204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182484, 27.833937, 21.117592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331494, 0.516252, 0.789681,
		0.314567, 0.849592, -0.423369,
		-0.889472, 0.108063, -0.444030,
		44.915642, 27.866356, 20.984383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338131, 28.472881, 21.451679>,  <45.538273, 27.790710, 21.295204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338131, 28.472881, 21.451679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.000679, 28.284340, 21.348835>,  <44.798206, 28.171215, 21.287128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.000679, 28.284340, 21.348835>,  <45.338131, 28.472881, 21.451679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000679, 28.284340, 21.348835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496782, 0.503590, 0.706827,
		-0.203687, 0.724033, -0.659006,
		-0.843634, -0.471354, -0.257112,
		44.747589, 28.142933, 21.271702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765518, 28.997507, 21.628054>,  <45.338131, 28.472881, 21.451679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765518, 28.997507, 21.628054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.593082, 28.637220, 21.606606>,  <44.489620, 28.421049, 21.593737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.593082, 28.637220, 21.606606>,  <44.765518, 28.997507, 21.628054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593082, 28.637220, 21.606606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669868, 0.279655, 0.687801,
		-0.604517, 0.332422, -0.723916,
		-0.431087, -0.900716, -0.053623,
		44.463757, 28.367006, 21.590519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078503, 29.181456, 21.739134>,  <44.765518, 28.997507, 21.628054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078503, 29.181456, 21.739134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.119564, 28.791573, 21.818537>,  <44.144199, 28.557642, 21.866179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.119564, 28.791573, 21.818537>,  <44.078503, 29.181456, 21.739134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119564, 28.791573, 21.818537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530006, 0.115280, 0.840122,
		-0.841758, -0.191448, -0.504768,
		0.102650, -0.974709, 0.198506,
		44.150360, 28.499159, 21.878088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494370, 29.105597, 22.143011>,  <44.078503, 29.181456, 21.739134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494370, 29.105597, 22.143011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.687180, 28.765047, 22.225777>,  <43.802864, 28.560717, 22.275436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.687180, 28.765047, 22.225777>,  <43.494370, 29.105597, 22.143011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687180, 28.765047, 22.225777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270802, 0.079829, 0.959319,
		-0.833257, -0.518449, -0.192074,
		0.482026, -0.851374, 0.206915,
		43.831787, 28.509634, 22.287851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002613, 28.696697, 22.397022>,  <43.494370, 29.105597, 22.143011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002613, 28.696697, 22.397022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.354595, 28.570339, 22.538950>,  <43.565784, 28.494524, 22.624105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.354595, 28.570339, 22.538950>,  <43.002613, 28.696697, 22.397022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354595, 28.570339, 22.538950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354818, 0.059621, 0.933032,
		-0.315894, -0.946919, -0.059622,
		0.879952, -0.315895, 0.354818,
		43.618580, 28.475571, 22.645395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922237, 28.162312, 22.869171>,  <43.002613, 28.696697, 22.397022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922237, 28.162312, 22.869171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.253345, 28.371019, 22.951687>,  <43.452011, 28.496244, 23.001196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.253345, 28.371019, 22.951687>,  <42.922237, 28.162312, 22.869171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253345, 28.371019, 22.951687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303327, 0.106861, 0.946876,
		0.472005, -0.846368, 0.246723,
		0.827770, 0.521768, 0.206287,
		43.501678, 28.527550, 23.013573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511147, 27.674131, 22.973423>,  <42.922237, 28.162312, 22.869171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511147, 27.674131, 22.973423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.126762, 27.570683, 22.934069>,  <41.896133, 27.508614, 22.910456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.126762, 27.570683, 22.934069>,  <42.511147, 27.674131, 22.973423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126762, 27.570683, 22.934069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127553, -0.098504, -0.986928,
		0.245549, -0.960943, 0.127646,
		-0.960956, -0.258621, -0.098383,
		41.838474, 27.493097, 22.904554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508347, 27.097689, 22.600266>,  <42.511147, 27.674131, 22.973423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508347, 27.097689, 22.600266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.142372, 27.248701, 22.543179>,  <41.922787, 27.339308, 22.508926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.142372, 27.248701, 22.543179>,  <42.508347, 27.097689, 22.600266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142372, 27.248701, 22.543179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199884, 0.116652, -0.972851,
		-0.350632, -0.918621, -0.182191,
		-0.914934, 0.377530, -0.142716,
		41.867893, 27.361959, 22.500364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246578, 26.654274, 22.232483>,  <42.508347, 27.097689, 22.600266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246578, 26.654274, 22.232483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.053978, 26.998714, 22.167175>,  <41.938416, 27.205379, 22.127991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.053978, 26.998714, 22.167175>,  <42.246578, 26.654274, 22.232483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053978, 26.998714, 22.167175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150128, -0.102498, -0.983339,
		-0.863491, -0.497991, -0.079923,
		-0.481502, 0.861103, -0.163269,
		41.909527, 27.257046, 22.118195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808567, 26.414164, 21.681690>,  <42.246578, 26.654274, 22.232483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808567, 26.414164, 21.681690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.808777, 26.814098, 21.674458>,  <41.808903, 27.054060, 21.670118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.808777, 26.814098, 21.674458>,  <41.808567, 26.414164, 21.681690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808777, 26.814098, 21.674458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085034, -0.017974, -0.996216,
		-0.996378, 0.002056, 0.085010,
		0.000521, 0.999836, -0.018084,
		41.808933, 27.114050, 21.669033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201900, 26.630596, 21.338579>,  <41.808567, 26.414164, 21.681690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201900, 26.630596, 21.338579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455360, 26.937853, 21.301826>,  <41.607437, 27.122208, 21.279776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455360, 26.937853, 21.301826>,  <41.201900, 26.630596, 21.338579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455360, 26.937853, 21.301826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095606, -0.040105, -0.994611,
		-0.767687, 0.639022, 0.048026,
		0.633653, 0.768142, -0.091882,
		41.645454, 27.168295, 21.274261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946560, 27.216280, 21.052404>,  <41.201900, 26.630596, 21.338579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946560, 27.216280, 21.052404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.335999, 27.247831, 20.966713>,  <41.569660, 27.266762, 20.915298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.335999, 27.247831, 20.966713>,  <40.946560, 27.216280, 21.052404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335999, 27.247831, 20.966713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214341, -0.007165, -0.976733,
		-0.078580, 0.996859, 0.009932,
		0.973593, 0.078880, -0.214231,
		41.628075, 27.271496, 20.902443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943584, 27.524961, 20.347588>,  <40.946560, 27.216280, 21.052404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943584, 27.524961, 20.347588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.323853, 27.401407, 20.359047>,  <41.552013, 27.327274, 20.365923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.323853, 27.401407, 20.359047>,  <40.943584, 27.524961, 20.347588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323853, 27.401407, 20.359047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025385, -0.169507, -0.985202,
		0.309173, 0.935872, -0.168985,
		0.950667, -0.308887, 0.028650,
		41.609055, 27.308741, 20.367641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445045, 28.072268, 20.084494>,  <40.943584, 27.524961, 20.347588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445045, 28.072268, 20.084494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.088097, 28.018736, 19.912092>,  <39.873928, 27.986616, 19.808651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.088097, 28.018736, 19.912092>,  <40.445045, 28.072268, 20.084494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088097, 28.018736, 19.912092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417912, -0.115459, 0.901121,
		-0.170359, 0.984256, 0.047104,
		-0.892372, -0.133828, -0.431002,
		39.820385, 27.978588, 19.782791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077797, 28.359217, 20.476679>,  <40.445045, 28.072268, 20.084494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077797, 28.359217, 20.476679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805138, 28.125862, 20.300034>,  <39.641544, 27.985849, 20.194046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805138, 28.125862, 20.300034>,  <40.077797, 28.359217, 20.476679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805138, 28.125862, 20.300034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503972, -0.063214, 0.861404,
		-0.530447, 0.809731, -0.250921,
		-0.681644, -0.583386, -0.441614,
		39.600643, 27.950846, 20.167549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396957, 28.636395, 20.820316>,  <40.077797, 28.359217, 20.476679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396957, 28.636395, 20.820316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.292332, 28.293491, 20.642916>,  <39.229557, 28.087749, 20.536476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.292332, 28.293491, 20.642916>,  <39.396957, 28.636395, 20.820316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292332, 28.293491, 20.642916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718007, -0.134253, 0.682965,
		-0.645018, 0.497079, -0.580400,
		-0.261568, -0.857256, -0.443502,
		39.213860, 28.036314, 20.509865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698227, 28.637104, 20.732319>,  <39.396957, 28.636395, 20.820316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698227, 28.637104, 20.732319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.803032, 28.251251, 20.743910>,  <38.865913, 28.019739, 20.750864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.803032, 28.251251, 20.743910>,  <38.698227, 28.637104, 20.732319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803032, 28.251251, 20.743910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499495, -0.109856, 0.859323,
		-0.825746, -0.239624, -0.510611,
		0.262008, -0.964631, 0.028978,
		38.881634, 27.961863, 20.752604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102806, 28.378210, 20.822945>,  <38.698227, 28.637104, 20.732319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102806, 28.378210, 20.822945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.386951, 28.129736, 20.955313>,  <38.557438, 27.980652, 21.034735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.386951, 28.129736, 20.955313>,  <38.102806, 28.378210, 20.822945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386951, 28.129736, 20.955313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316791, 0.137667, 0.938451,
		-0.628510, -0.771476, -0.098992,
		0.710365, -0.621186, 0.330922,
		38.600060, 27.943380, 21.054590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757179, 27.796822, 21.082138>,  <38.102806, 28.378210, 20.822945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757179, 27.796822, 21.082138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119507, 27.781176, 21.250881>,  <38.336903, 27.771788, 21.352127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119507, 27.781176, 21.250881>,  <37.757179, 27.796822, 21.082138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119507, 27.781176, 21.250881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423602, -0.066460, 0.903407,
		-0.007294, -0.997023, -0.076767,
		0.905819, -0.039108, 0.421856,
		38.391251, 27.769442, 21.377438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586758, 27.365595, 21.638586>,  <37.757179, 27.796822, 21.082138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586758, 27.365595, 21.638586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.952595, 27.504570, 21.721346>,  <38.172096, 27.587955, 21.771002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.952595, 27.504570, 21.721346>,  <37.586758, 27.365595, 21.638586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952595, 27.504570, 21.721346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222172, 0.004238, 0.974998,
		0.337875, -0.937693, 0.081067,
		0.914593, 0.347438, 0.206897,
		38.226974, 27.608801, 21.783415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.266205, 30.760077, 17.055643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.568230, 30.772303, 17.317617>,  <41.749447, 30.779638, 17.474802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.568230, 30.772303, 17.317617>,  <41.266205, 30.760077, 17.055643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568230, 30.772303, 17.317617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629637, 0.312383, 0.711318,
		-0.182850, -0.949464, 0.255114,
		0.755065, 0.030564, 0.654938,
		41.794750, 30.781471, 17.514099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941273, 30.520969, 17.616953>,  <41.266205, 30.760077, 17.055643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941273, 30.520969, 17.616953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.281849, 30.671534, 17.763033>,  <41.486195, 30.761871, 17.850681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.281849, 30.671534, 17.763033>,  <40.941273, 30.520969, 17.616953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281849, 30.671534, 17.763033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449684, 0.165620, 0.877698,
		0.269891, -0.911529, 0.310281,
		0.851436, 0.376411, 0.365201,
		41.537281, 30.784456, 17.872593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935577, 30.191729, 18.324837>,  <40.941273, 30.520969, 17.616953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935577, 30.191729, 18.324837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148933, 30.529945, 18.315454>,  <41.276947, 30.732876, 18.309826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148933, 30.529945, 18.315454>,  <40.935577, 30.191729, 18.324837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148933, 30.529945, 18.315454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342156, 0.241033, 0.908203,
		0.773579, -0.476401, 0.417872,
		0.533390, 0.845545, -0.023455,
		41.308949, 30.783609, 18.308418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320507, 30.199440, 18.931063>,  <40.935577, 30.191729, 18.324837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320507, 30.199440, 18.931063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312408, 30.583447, 18.819376>,  <41.307549, 30.813850, 18.752363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312408, 30.583447, 18.819376>,  <41.320507, 30.199440, 18.931063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312408, 30.583447, 18.819376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345153, 0.255396, 0.903129,
		0.938328, 0.114654, 0.326182,
		-0.020242, 0.960014, -0.279219,
		41.306335, 30.871450, 18.735611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472782, 30.513592, 19.537521>,  <41.320507, 30.199440, 18.931063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472782, 30.513592, 19.537521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.297352, 30.792892, 19.311214>,  <41.192093, 30.960474, 19.175430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.297352, 30.792892, 19.311214>,  <41.472782, 30.513592, 19.537521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297352, 30.792892, 19.311214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375953, 0.429259, 0.821216,
		0.816277, 0.572870, 0.074247,
		-0.438579, 0.698253, -0.565766,
		41.165779, 31.002369, 19.141485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548302, 31.085958, 19.986933>,  <41.472782, 30.513592, 19.537521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548302, 31.085958, 19.986933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.290752, 31.209810, 19.707062>,  <41.136223, 31.284121, 19.539139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.290752, 31.209810, 19.707062>,  <41.548302, 31.085958, 19.986933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290752, 31.209810, 19.707062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441748, 0.596217, 0.670361,
		0.624724, 0.740712, -0.247113,
		-0.643878, 0.309629, -0.699679,
		41.097588, 31.302698, 19.497158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507595, 31.881392, 20.004274>,  <41.548302, 31.085958, 19.986933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507595, 31.881392, 20.004274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159687, 31.734236, 19.872728>,  <40.950943, 31.645943, 19.793800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159687, 31.734236, 19.872728>,  <41.507595, 31.881392, 20.004274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159687, 31.734236, 19.872728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474314, 0.439483, 0.762811,
		-0.136100, 0.819458, -0.556745,
		-0.869772, -0.367890, -0.328867,
		40.898754, 31.623869, 19.774069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984634, 32.449867, 19.951332>,  <41.507595, 31.881392, 20.004274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984634, 32.449867, 19.951332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.762863, 32.117580, 19.971405>,  <40.629803, 31.918207, 19.983450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.762863, 32.117580, 19.971405>,  <40.984634, 32.449867, 19.951332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762863, 32.117580, 19.971405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599797, 0.440653, 0.667883,
		-0.576937, 0.340191, -0.742572,
		-0.554425, -0.830719, 0.050183,
		40.596535, 31.868364, 19.986460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322651, 32.635788, 19.972082>,  <40.984634, 32.449867, 19.951332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322651, 32.635788, 19.972082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.244595, 32.263382, 20.095455>,  <40.197762, 32.039940, 20.169479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.244595, 32.263382, 20.095455>,  <40.322651, 32.635788, 19.972082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244595, 32.263382, 20.095455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521515, 0.364833, 0.771310,
		-0.830628, -0.010339, -0.556732,
		-0.195139, -0.931016, 0.308432,
		40.186054, 31.984077, 20.187984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642841, 32.556477, 20.020828>,  <40.322651, 32.635788, 19.972082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642841, 32.556477, 20.020828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.771809, 32.255066, 20.249996>,  <39.849190, 32.074219, 20.387497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.771809, 32.255066, 20.249996>,  <39.642841, 32.556477, 20.020828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771809, 32.255066, 20.249996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635487, 0.276270, 0.720993,
		-0.701570, -0.596548, -0.389782,
		0.322422, -0.753529, 0.572921,
		39.868534, 32.029007, 20.421873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027454, 32.176174, 20.271019>,  <39.642841, 32.556477, 20.020828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027454, 32.176174, 20.271019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.332348, 32.084953, 20.513340>,  <39.515282, 32.030220, 20.658733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.332348, 32.084953, 20.513340>,  <39.027454, 32.176174, 20.271019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332348, 32.084953, 20.513340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540260, 0.291370, 0.789444,
		-0.356547, -0.929030, 0.098884,
		0.762229, -0.228051, 0.605805,
		39.561016, 32.016537, 20.695082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768696, 31.784151, 20.781731>,  <39.027454, 32.176174, 20.271019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768696, 31.784151, 20.781731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.083988, 31.965145, 20.948561>,  <39.273163, 32.073742, 21.048658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.083988, 31.965145, 20.948561>,  <38.768696, 31.784151, 20.781731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083988, 31.965145, 20.948561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542230, 0.190200, 0.818419,
		0.290994, -0.871254, 0.395271,
		0.788232, 0.452483, 0.417073,
		39.320457, 32.100891, 21.073683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802952, 30.999779, 20.861317>,  <38.768696, 31.784151, 20.781731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802952, 30.999779, 20.861317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.436363, 30.866049, 20.773399>,  <38.216412, 30.785810, 20.720650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.436363, 30.866049, 20.773399>,  <38.802952, 30.999779, 20.861317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436363, 30.866049, 20.773399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244784, -0.033989, -0.968982,
		0.316484, -0.941845, 0.112987,
		-0.916470, -0.334325, -0.219792,
		38.161423, 30.765751, 20.707462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826397, 30.382271, 20.434036>,  <38.802952, 30.999779, 20.861317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826397, 30.382271, 20.434036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462692, 30.529028, 20.355408>,  <38.244469, 30.617083, 20.308231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462692, 30.529028, 20.355408>,  <38.826397, 30.382271, 20.434036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462692, 30.529028, 20.355408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162635, -0.121557, -0.979170,
		-0.383145, -0.922287, 0.050857,
		-0.909258, 0.366893, -0.196571,
		38.189915, 30.639095, 20.296436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458080, 29.904795, 19.918007>,  <38.826397, 30.382271, 20.434036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458080, 29.904795, 19.918007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.281094, 30.263037, 19.899614>,  <38.174904, 30.477982, 19.888578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.281094, 30.263037, 19.899614>,  <38.458080, 29.904795, 19.918007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281094, 30.263037, 19.899614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041550, -0.030748, -0.998663,
		-0.895823, -0.443783, -0.023607,
		-0.442464, 0.895607, -0.045984,
		38.148354, 30.531719, 19.885818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978947, 29.792627, 19.452631>,  <38.458080, 29.904795, 19.918007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978947, 29.792627, 19.452631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031918, 30.189091, 19.456049>,  <38.063698, 30.426968, 19.458099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031918, 30.189091, 19.456049>,  <37.978947, 29.792627, 19.452631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031918, 30.189091, 19.456049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152966, -0.011919, -0.988160,
		-0.979319, 0.132162, -0.153191,
		0.132424, 0.991156, 0.008543,
		38.071644, 30.486437, 19.458612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487129, 29.982759, 18.993286>,  <37.978947, 29.792627, 19.452631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487129, 29.982759, 18.993286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.747749, 30.285995, 19.004429>,  <37.904121, 30.467937, 19.011114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.747749, 30.285995, 19.004429>,  <37.487129, 29.982759, 18.993286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747749, 30.285995, 19.004429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052399, -0.008342, -0.998591,
		-0.756792, 0.652094, -0.045159,
		0.651552, 0.758092, 0.027855,
		37.943214, 30.513424, 19.012785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256104, 30.459444, 18.428389>,  <37.487129, 29.982759, 18.993286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256104, 30.459444, 18.428389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.620693, 30.598261, 18.516727>,  <37.839447, 30.681551, 18.569731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.620693, 30.598261, 18.516727>,  <37.256104, 30.459444, 18.428389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620693, 30.598261, 18.516727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086804, 0.362524, -0.927923,
		-0.402089, 0.864951, 0.300307,
		0.911476, 0.347040, 0.220848,
		37.894135, 30.702374, 18.582981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300041, 31.186104, 18.236208>,  <37.256104, 30.459444, 18.428389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300041, 31.186104, 18.236208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649582, 30.991640, 18.233755>,  <37.859306, 30.874962, 18.232285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649582, 30.991640, 18.233755>,  <37.300041, 31.186104, 18.236208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649582, 30.991640, 18.233755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119440, 0.226877, -0.966572,
		0.471298, 0.843906, 0.256323,
		0.873849, -0.486159, -0.006131,
		37.911736, 30.845793, 18.231916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761349, 31.566324, 17.690325>,  <37.300041, 31.186104, 18.236208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761349, 31.566324, 17.690325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.962315, 31.220743, 17.703976>,  <38.082893, 31.013395, 17.712166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.962315, 31.220743, 17.703976>,  <37.761349, 31.566324, 17.690325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962315, 31.220743, 17.703976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197467, 0.076230, -0.977341,
		0.841773, 0.497773, 0.208901,
		0.502419, -0.863951, 0.034125,
		38.113041, 30.961557, 17.714212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359688, 31.690529, 17.258228>,  <37.761349, 31.566324, 17.690325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359688, 31.690529, 17.258228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355946, 31.292255, 17.295160>,  <38.353703, 31.053291, 17.317320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355946, 31.292255, 17.295160>,  <38.359688, 31.690529, 17.258228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355946, 31.292255, 17.295160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236248, -0.091921, -0.967335,
		0.971648, 0.012765, 0.236089,
		-0.009353, -0.995684, 0.092330,
		38.353138, 30.993549, 17.322859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960396, 31.474821, 17.073286>,  <38.359688, 31.690529, 17.258228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960396, 31.474821, 17.073286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758022, 31.131264, 17.041447>,  <38.636600, 30.925129, 17.022343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758022, 31.131264, 17.041447>,  <38.960396, 31.474821, 17.073286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758022, 31.131264, 17.041447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551529, -0.251159, -0.795447,
		0.663212, -0.446342, 0.600774,
		-0.505931, -0.858894, -0.079599,
		38.606243, 30.873596, 17.017567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378513, 31.029333, 16.772057>,  <38.960396, 31.474821, 17.073286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378513, 31.029333, 16.772057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.048077, 30.811403, 16.714457>,  <38.849815, 30.680645, 16.679897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.048077, 30.811403, 16.714457>,  <39.378513, 31.029333, 16.772057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048077, 30.811403, 16.714457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320321, -0.243741, -0.915415,
		0.463643, -0.802343, 0.375872,
		-0.826093, -0.544826, -0.143998,
		38.800247, 30.647955, 16.671257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536755, 30.282892, 16.556639>,  <39.378513, 31.029333, 16.772057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536755, 30.282892, 16.556639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.163540, 30.350943, 16.429836>,  <38.939610, 30.391773, 16.353754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.163540, 30.350943, 16.429836>,  <39.536755, 30.282892, 16.556639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163540, 30.350943, 16.429836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286637, -0.180994, -0.940787,
		-0.217437, -0.968657, 0.120107,
		-0.933038, 0.170135, -0.317008,
		38.883629, 30.401981, 16.334734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372009, 29.637506, 16.174627>,  <39.536755, 30.282892, 16.556639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372009, 29.637506, 16.174627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.124203, 29.919500, 16.036530>,  <38.975517, 30.088696, 15.953671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.124203, 29.919500, 16.036530>,  <39.372009, 29.637506, 16.174627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124203, 29.919500, 16.036530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150796, -0.324739, -0.933705,
		-0.770360, -0.630511, 0.094874,
		-0.619521, 0.704983, -0.345244,
		38.938347, 30.130995, 15.932957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869480, 29.338776, 16.632132>,  <39.372009, 29.637506, 16.174627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869480, 29.338776, 16.632132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.964993, 28.950375, 16.636887>,  <40.022301, 28.717335, 16.639740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.964993, 28.950375, 16.636887>,  <39.869480, 29.338776, 16.632132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964993, 28.950375, 16.636887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177163, 0.055594, 0.982610,
		-0.954776, -0.232523, 0.185300,
		0.238781, -0.971001, 0.011886,
		40.036629, 28.659075, 16.640451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528294, 29.089529, 17.152983>,  <39.869480, 29.338776, 16.632132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528294, 29.089529, 17.152983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783878, 28.785141, 17.108000>,  <39.937229, 28.602509, 17.081009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783878, 28.785141, 17.108000>,  <39.528294, 29.089529, 17.152983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783878, 28.785141, 17.108000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035816, -0.116606, 0.992532,
		-0.768402, -0.638221, -0.047251,
		0.638964, -0.760971, -0.112459,
		39.975567, 28.556850, 17.074263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189896, 28.435171, 17.303551>,  <39.528294, 29.089529, 17.152983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189896, 28.435171, 17.303551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578159, 28.364727, 17.369041>,  <39.811119, 28.322460, 17.408337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578159, 28.364727, 17.369041>,  <39.189896, 28.435171, 17.303551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578159, 28.364727, 17.369041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191526, -0.154536, 0.969245,
		-0.145361, -0.972170, -0.183726,
		0.970664, -0.176079, 0.163732,
		39.869358, 28.311893, 17.418159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149502, 27.923023, 17.702099>,  <39.189896, 28.435171, 17.303551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149502, 27.923023, 17.702099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.521259, 28.061749, 17.752619>,  <39.744312, 28.144983, 17.782930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.521259, 28.061749, 17.752619>,  <39.149502, 27.923023, 17.702099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521259, 28.061749, 17.752619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021875, -0.289826, 0.956829,
		0.368445, -0.892033, -0.261775,
		0.929392, 0.346813, 0.126298,
		39.800076, 28.165792, 17.790508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469246, 27.351942, 18.025988>,  <39.149502, 27.923023, 17.702099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469246, 27.351942, 18.025988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.664642, 27.694784, 18.091408>,  <39.781879, 27.900490, 18.130659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.664642, 27.694784, 18.091408>,  <39.469246, 27.351942, 18.025988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664642, 27.694784, 18.091408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091366, -0.136163, 0.986465,
		0.867772, -0.496823, 0.011795,
		0.488492, 0.857104, 0.163551,
		39.811192, 27.951916, 18.140472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037575, 27.188097, 18.423420>,  <39.469246, 27.351942, 18.025988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037575, 27.188097, 18.423420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974663, 27.577301, 18.490967>,  <39.936916, 27.810823, 18.531494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974663, 27.577301, 18.490967>,  <40.037575, 27.188097, 18.423420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974663, 27.577301, 18.490967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039208, -0.164709, 0.985563,
		0.986775, 0.161630, -0.012244,
		-0.157280, 0.973009, 0.168868,
		39.927479, 27.869204, 18.541628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529865, 27.377584, 18.866798>,  <40.037575, 27.188097, 18.423420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529865, 27.377584, 18.866798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257126, 27.668777, 18.895443>,  <40.093483, 27.843493, 18.912630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257126, 27.668777, 18.895443>,  <40.529865, 27.377584, 18.866798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257126, 27.668777, 18.895443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101974, -0.191538, 0.976173,
		0.724354, 0.658297, 0.204835,
		-0.681845, 0.727983, 0.071612,
		40.052574, 27.887173, 18.916927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734161, 27.719378, 19.425825>,  <40.529865, 27.377584, 18.866798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734161, 27.719378, 19.425825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.343075, 27.798470, 19.397629>,  <40.108421, 27.845924, 19.380711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.343075, 27.798470, 19.397629>,  <40.734161, 27.719378, 19.425825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343075, 27.798470, 19.397629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102242, -0.155278, 0.982566,
		0.183338, 0.967880, 0.172034,
		-0.977719, 0.197731, -0.070490,
		40.049759, 27.857788, 19.376482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402699, 27.918282, 19.761072>,  <40.734161, 27.719378, 19.425825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402699, 27.918282, 19.761072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603157, 27.585358, 19.855822>,  <41.723431, 27.385603, 19.912672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.603157, 27.585358, 19.855822>,  <41.402699, 27.918282, 19.761072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603157, 27.585358, 19.855822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292813, -0.094486, -0.951490,
		0.814317, 0.546197, 0.196360,
		0.501147, -0.832311, 0.236875,
		41.753502, 27.335665, 19.926884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793995, 27.874725, 19.169029>,  <41.402699, 27.918282, 19.761072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793995, 27.874725, 19.169029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.920574, 27.556604, 19.375856>,  <41.996521, 27.365732, 19.499952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.920574, 27.556604, 19.375856>,  <41.793995, 27.874725, 19.169029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920574, 27.556604, 19.375856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362640, -0.402253, -0.840646,
		0.876557, 0.453530, 0.161115,
		0.316449, -0.795301, 0.517066,
		42.015511, 27.318014, 19.530975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494263, 27.773483, 19.188143>,  <41.793995, 27.874725, 19.169029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494263, 27.773483, 19.188143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.300594, 27.423515, 19.191925>,  <42.184395, 27.213533, 19.194195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.300594, 27.423515, 19.191925>,  <42.494263, 27.773483, 19.188143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300594, 27.423515, 19.191925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356951, -0.207378, -0.910813,
		0.798852, -0.437613, 0.412711,
		-0.484171, -0.874922, 0.009458,
		42.155342, 27.161039, 19.194763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988708, 27.257225, 19.175888>,  <42.494263, 27.773483, 19.188143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988708, 27.257225, 19.175888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.646137, 27.109278, 19.031815>,  <42.440594, 27.020510, 18.945372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.646137, 27.109278, 19.031815>,  <42.988708, 27.257225, 19.175888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646137, 27.109278, 19.031815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504156, -0.448930, -0.737759,
		0.111177, -0.813425, 0.570946,
		-0.856426, -0.369868, -0.360183,
		42.389210, 26.998318, 18.923759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191807, 26.560959, 19.014702>,  <42.988708, 27.257225, 19.175888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191807, 26.560959, 19.014702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.842445, 26.620499, 18.829224>,  <42.632828, 26.656223, 18.717937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.842445, 26.620499, 18.829224>,  <43.191807, 26.560959, 19.014702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842445, 26.620499, 18.829224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402273, -0.316155, -0.859199,
		-0.274493, -0.936957, 0.216252,
		-0.873402, 0.148852, -0.463695,
		42.580425, 26.665154, 18.690115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118225, 25.933714, 18.657692>,  <43.191807, 26.560959, 19.014702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118225, 25.933714, 18.657692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.892193, 26.208021, 18.474211>,  <42.756573, 26.372606, 18.364122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.892193, 26.208021, 18.474211>,  <43.118225, 25.933714, 18.657692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892193, 26.208021, 18.474211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173680, -0.444645, -0.878707,
		-0.806550, -0.576205, 0.132154,
		-0.565077, 0.685768, -0.458704,
		42.722672, 26.413752, 18.336599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816750, 25.485807, 18.156641>,  <43.118225, 25.933714, 18.657692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816750, 25.485807, 18.156641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.794811, 25.864117, 18.028574>,  <42.781647, 26.091103, 17.951735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.794811, 25.864117, 18.028574>,  <42.816750, 25.485807, 18.156641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794811, 25.864117, 18.028574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226744, -0.300476, -0.926445,
		-0.972409, -0.123409, -0.197968,
		-0.054847, 0.945772, -0.320168,
		42.778358, 26.147848, 17.932524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295357, 25.480938, 17.587322>,  <42.816750, 25.485807, 18.156641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295357, 25.480938, 17.587322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.491951, 25.823149, 17.522188>,  <42.609909, 26.028475, 17.483109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.491951, 25.823149, 17.522188>,  <42.295357, 25.480938, 17.587322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491951, 25.823149, 17.522188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109489, -0.124791, -0.986123,
		-0.863975, 0.502496, 0.032337,
		0.491487, 0.855526, -0.162834,
		42.639397, 26.079807, 17.473337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035244, 25.778717, 16.928122>,  <42.295357, 25.480938, 17.587322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035244, 25.778717, 16.928122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.397305, 25.931110, 17.003538>,  <42.614540, 26.022547, 17.048788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.397305, 25.931110, 17.003538>,  <42.035244, 25.778717, 16.928122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397305, 25.931110, 17.003538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208797, -0.012134, -0.977884,
		-0.370271, 0.924502, -0.090531,
		0.905154, 0.380985, 0.188540,
		42.668850, 26.045406, 17.060101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.868042, 30.060453, 31.665525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842442, 30.458435, 31.634621>,  <37.827080, 30.697224, 31.616077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842442, 30.458435, 31.634621>,  <37.868042, 30.060453, 31.665525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842442, 30.458435, 31.634621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473853, -0.037840, -0.879790,
		-0.878275, -0.092918, -0.469041,
		-0.064000, 0.994954, -0.077264,
		37.823242, 30.756922, 31.611441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439548, 30.317533, 31.103245>,  <37.868042, 30.060453, 31.665525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439548, 30.317533, 31.103245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.761280, 30.530403, 31.208961>,  <37.954319, 30.658125, 31.272392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.761280, 30.530403, 31.208961>,  <37.439548, 30.317533, 31.103245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761280, 30.530403, 31.208961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430619, -0.215585, -0.876408,
		-0.409424, 0.818727, -0.402565,
		0.804326, 0.532174, 0.264293,
		38.002579, 30.690056, 31.288250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544788, 30.656887, 30.468763>,  <37.439548, 30.317533, 31.103245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544788, 30.656887, 30.468763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867619, 30.677814, 30.704012>,  <38.061317, 30.690371, 30.845161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867619, 30.677814, 30.704012>,  <37.544788, 30.656887, 30.468763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867619, 30.677814, 30.704012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588429, -0.153466, -0.793851,
		0.048723, 0.986768, -0.154646,
		0.807079, 0.052320, 0.588120,
		38.109741, 30.693510, 30.880447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998432, 31.154922, 30.214457>,  <37.544788, 30.656887, 30.468763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998432, 31.154922, 30.214457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232517, 30.890223, 30.401905>,  <38.372971, 30.731401, 30.514374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232517, 30.890223, 30.401905>,  <37.998432, 31.154922, 30.214457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232517, 30.890223, 30.401905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397054, -0.270041, -0.877169,
		0.707016, 0.699401, 0.104719,
		0.585215, -0.661752, 0.468623,
		38.408081, 30.691696, 30.542492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629311, 31.073654, 29.695707>,  <37.998432, 31.154922, 30.214457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629311, 31.073654, 29.695707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.671898, 30.784643, 29.968945>,  <38.697453, 30.611237, 30.132887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.671898, 30.784643, 29.968945>,  <38.629311, 31.073654, 29.695707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671898, 30.784643, 29.968945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400894, -0.597490, -0.694471,
		0.909916, 0.347789, 0.226042,
		0.106472, -0.722529, 0.683092,
		38.703838, 30.567884, 30.173872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340614, 30.848162, 29.694300>,  <38.629311, 31.073654, 29.695707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340614, 30.848162, 29.694300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.133095, 30.539211, 29.840879>,  <39.008583, 30.353842, 29.928827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.133095, 30.539211, 29.840879>,  <39.340614, 30.848162, 29.694300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133095, 30.539211, 29.840879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492384, -0.620373, -0.610487,
		0.698861, -0.136285, 0.702153,
		-0.518797, -0.772375, 0.366450,
		38.977455, 30.307499, 29.950815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841053, 30.396290, 29.802044>,  <39.340614, 30.848162, 29.694300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841053, 30.396290, 29.802044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496857, 30.193068, 29.786867>,  <39.290340, 30.071135, 29.777761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496857, 30.193068, 29.786867>,  <39.841053, 30.396290, 29.802044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496857, 30.193068, 29.786867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387826, -0.604922, -0.695457,
		0.330378, -0.613148, 0.717565,
		-0.860489, -0.508054, -0.037942,
		39.238708, 30.040651, 29.775484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066208, 29.684999, 29.715149>,  <39.841053, 30.396290, 29.802044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066208, 29.684999, 29.715149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.676331, 29.657667, 29.630011>,  <39.442406, 29.641268, 29.578928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.676331, 29.657667, 29.630011>,  <40.066208, 29.684999, 29.715149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676331, 29.657667, 29.630011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190274, -0.753371, -0.629467,
		-0.117341, -0.654036, 0.747307,
		-0.974693, -0.068331, -0.212847,
		39.383923, 29.637169, 29.566156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931641, 28.955660, 29.607836>,  <40.066208, 29.684999, 29.715149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931641, 28.955660, 29.607836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626240, 29.156038, 29.444807>,  <39.443001, 29.276266, 29.346989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626240, 29.156038, 29.444807>,  <39.931641, 28.955660, 29.607836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626240, 29.156038, 29.444807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024575, -0.653190, -0.756795,
		-0.645320, -0.567810, 0.511032,
		-0.763517, 0.500934, -0.407563,
		39.397190, 29.306322, 29.322535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395420, 28.441477, 29.449955>,  <39.931641, 28.955660, 29.607836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395420, 28.441477, 29.449955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.321667, 28.744654, 29.199667>,  <39.277416, 28.926559, 29.049494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.321667, 28.744654, 29.199667>,  <39.395420, 28.441477, 29.449955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321667, 28.744654, 29.199667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115269, -0.615566, -0.779610,
		-0.976071, -0.215873, 0.026133,
		-0.184384, 0.757943, -0.625720,
		39.266350, 28.972036, 29.011951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833553, 28.196705, 29.005102>,  <39.395420, 28.441477, 29.449955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833553, 28.196705, 29.005102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041885, 28.491755, 28.833221>,  <39.166885, 28.668785, 28.730093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041885, 28.491755, 28.833221>,  <38.833553, 28.196705, 29.005102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041885, 28.491755, 28.833221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062296, -0.534864, -0.842638,
		-0.851383, 0.412104, -0.324526,
		0.520832, 0.737625, -0.429702,
		39.198135, 28.713041, 28.704311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593170, 28.152908, 28.275213>,  <38.833553, 28.196705, 29.005102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593170, 28.152908, 28.275213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.915943, 28.387350, 28.245970>,  <39.109608, 28.528015, 28.228424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.915943, 28.387350, 28.245970>,  <38.593170, 28.152908, 28.275213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915943, 28.387350, 28.245970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204285, -0.393081, -0.896524,
		-0.554192, 0.708499, -0.436921,
		0.806931, 0.586103, -0.073107,
		39.158024, 28.563181, 28.224037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212013, 28.724493, 28.107725>,  <38.593170, 28.152908, 28.275213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212013, 28.724493, 28.107725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.868301, 28.756590, 27.905659>,  <37.662075, 28.775848, 27.784418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.868301, 28.756590, 27.905659>,  <38.212013, 28.724493, 28.107725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868301, 28.756590, 27.905659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368501, 0.587821, 0.720190,
		0.354738, 0.805002, -0.475535,
		-0.859284, 0.080244, -0.505166,
		37.610516, 28.780663, 27.754108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909527, 29.466436, 28.141186>,  <38.212013, 28.724493, 28.107725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909527, 29.466436, 28.141186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596478, 29.223721, 28.085617>,  <37.408646, 29.078091, 28.052277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596478, 29.223721, 28.085617>,  <37.909527, 29.466436, 28.141186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596478, 29.223721, 28.085617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510812, 0.498477, 0.700422,
		-0.355761, 0.619133, -0.700078,
		-0.782627, -0.606791, -0.138922,
		37.361691, 29.041683, 28.043940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387268, 29.876431, 27.939556>,  <37.909527, 29.466436, 28.141186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387268, 29.876431, 27.939556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211868, 29.550768, 28.091805>,  <37.106628, 29.355371, 28.183153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211868, 29.550768, 28.091805>,  <37.387268, 29.876431, 27.939556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211868, 29.550768, 28.091805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518894, 0.575136, 0.632430,
		-0.733803, 0.079819, -0.674657,
		-0.438499, -0.814155, 0.380619,
		37.080318, 29.306522, 28.205990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700966, 30.097315, 28.015100>,  <37.387268, 29.876431, 27.939556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700966, 30.097315, 28.015100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733799, 29.782036, 28.259069>,  <36.753498, 29.592869, 28.405451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733799, 29.782036, 28.259069>,  <36.700966, 30.097315, 28.015100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733799, 29.782036, 28.259069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496788, 0.498179, 0.710648,
		-0.863982, -0.361330, -0.350678,
		0.082078, -0.788199, 0.609922,
		36.758423, 29.545576, 28.442045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017418, 29.971235, 28.200075>,  <36.700966, 30.097315, 28.015100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017418, 29.971235, 28.200075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247211, 29.783978, 28.468643>,  <36.385090, 29.671623, 28.629784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247211, 29.783978, 28.468643>,  <36.017418, 29.971235, 28.200075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247211, 29.783978, 28.468643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551708, 0.384479, 0.740131,
		-0.604635, -0.795624, -0.037400,
		0.574487, -0.468143, 0.671422,
		36.419556, 29.643534, 28.670069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551075, 29.660383, 28.660704>,  <36.017418, 29.971235, 28.200075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551075, 29.660383, 28.660704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897194, 29.631851, 28.859167>,  <36.104866, 29.614731, 28.978245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897194, 29.631851, 28.859167>,  <35.551075, 29.660383, 28.660704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897194, 29.631851, 28.859167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433214, 0.391525, 0.811809,
		-0.252167, -0.917398, 0.307883,
		0.865296, -0.071332, 0.496160,
		36.156784, 29.610451, 29.008015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326443, 29.270510, 29.286163>,  <35.551075, 29.660383, 28.660704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326443, 29.270510, 29.286163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.662251, 29.468157, 29.376541>,  <35.863735, 29.586744, 29.430769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.662251, 29.468157, 29.376541>,  <35.326443, 29.270510, 29.286163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662251, 29.468157, 29.376541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428271, 0.345918, 0.834821,
		0.334327, -0.797624, 0.502018,
		0.839529, 0.494103, 0.225949,
		35.914108, 29.616392, 29.444324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600300, 29.065165, 30.085375>,  <35.326443, 29.270510, 29.286163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600300, 29.065165, 30.085375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744026, 29.421219, 29.973265>,  <35.830261, 29.634851, 29.905998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744026, 29.421219, 29.973265>,  <35.600300, 29.065165, 30.085375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744026, 29.421219, 29.973265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523876, 0.440939, 0.728784,
		0.772301, -0.115030, 0.624755,
		0.359311, 0.890135, -0.280277,
		35.851818, 29.688259, 29.889181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713242, 29.370197, 30.682966>,  <35.600300, 29.065165, 30.085375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713242, 29.370197, 30.682966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.701641, 29.653898, 30.401222>,  <35.694679, 29.824118, 30.232176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.701641, 29.653898, 30.401222>,  <35.713242, 29.370197, 30.682966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701641, 29.653898, 30.401222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637510, 0.529616, 0.559542,
		0.769896, 0.465263, 0.436795,
		-0.029001, 0.709251, -0.704359,
		35.692940, 29.866674, 30.189915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942047, 29.981001, 30.992458>,  <35.713242, 29.370197, 30.682966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942047, 29.981001, 30.992458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.733589, 30.073442, 30.663826>,  <35.608513, 30.128908, 30.466646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.733589, 30.073442, 30.663826>,  <35.942047, 29.981001, 30.992458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733589, 30.073442, 30.663826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545920, 0.649683, 0.529040,
		0.656031, 0.724225, -0.212416,
		-0.521147, 0.231105, -0.821581,
		35.577244, 30.142775, 30.417351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896267, 30.685251, 31.076368>,  <35.942047, 29.981001, 30.992458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896267, 30.685251, 31.076368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611591, 30.566395, 30.821743>,  <35.440788, 30.495081, 30.668968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611591, 30.566395, 30.821743>,  <35.896267, 30.685251, 31.076368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611591, 30.566395, 30.821743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678423, 0.525899, 0.513004,
		0.182333, 0.796955, -0.575862,
		-0.711686, -0.297140, -0.636561,
		35.398087, 30.477253, 30.630775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513729, 31.274836, 31.000565>,  <35.896267, 30.685251, 31.076368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513729, 31.274836, 31.000565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279007, 30.993326, 30.840384>,  <35.138172, 30.824421, 30.744274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279007, 30.993326, 30.840384>,  <35.513729, 31.274836, 31.000565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279007, 30.993326, 30.840384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808895, 0.531922, 0.250496,
		0.036717, 0.470916, -0.881414,
		-0.586806, -0.703773, -0.400452,
		35.102966, 30.782194, 30.720247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923229, 31.679955, 30.530338>,  <35.513729, 31.274836, 31.000565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923229, 31.679955, 30.530338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790131, 31.316202, 30.630182>,  <34.710270, 31.097950, 30.690088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790131, 31.316202, 30.630182>,  <34.923229, 31.679955, 30.530338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790131, 31.316202, 30.630182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866329, 0.399341, 0.300001,
		-0.372494, -0.116420, -0.920703,
		-0.332748, -0.909381, 0.249610,
		34.690308, 31.043388, 30.705065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265797, 31.504261, 30.089596>,  <34.923229, 31.679955, 30.530338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265797, 31.504261, 30.089596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252762, 31.293001, 30.429007>,  <34.244942, 31.166245, 30.632652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252762, 31.293001, 30.429007>,  <34.265797, 31.504261, 30.089596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252762, 31.293001, 30.429007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765229, 0.559309, 0.318743,
		-0.642932, -0.638930, -0.422382,
		-0.032587, -0.528149, 0.848526,
		34.242985, 31.134556, 30.683565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546387, 31.358282, 30.221405>,  <34.265797, 31.504261, 30.089596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546387, 31.358282, 30.221405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762630, 31.327173, 30.556475>,  <33.892376, 31.308508, 30.757517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762630, 31.327173, 30.556475>,  <33.546387, 31.358282, 30.221405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762630, 31.327173, 30.556475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789061, 0.298452, 0.536944,
		-0.291765, -0.951251, 0.099976,
		0.540607, -0.077774, 0.837672,
		33.924812, 31.303841, 30.807777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803055, 31.336477, 29.877480>,  <33.546387, 31.358282, 30.221405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803055, 31.336477, 29.877480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947948, 31.687284, 30.003733>,  <33.034885, 31.897768, 30.079485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947948, 31.687284, 30.003733>,  <32.803055, 31.336477, 29.877480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947948, 31.687284, 30.003733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174205, 0.396366, -0.901414,
		-0.915663, 0.271539, 0.296359,
		0.362235, 0.877018, 0.315634,
		33.056618, 31.950390, 30.098423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343307, 31.766727, 29.695969>,  <32.803055, 31.336477, 29.877480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343307, 31.766727, 29.695969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718395, 31.905687, 29.696354>,  <32.943447, 31.989063, 29.696585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718395, 31.905687, 29.696354>,  <32.343307, 31.766727, 29.695969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718395, 31.905687, 29.696354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090143, 0.245990, -0.965072,
		-0.335501, 0.904877, 0.261985,
		0.937717, 0.347399, 0.000962,
		32.999710, 32.009907, 29.696642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357246, 32.469402, 29.428001>,  <32.343307, 31.766727, 29.695969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357246, 32.469402, 29.428001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735985, 32.374352, 29.341270>,  <32.963226, 32.317322, 29.289232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735985, 32.374352, 29.341270>,  <32.357246, 32.469402, 29.428001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735985, 32.374352, 29.341270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178864, 0.171333, -0.968841,
		0.267375, 0.956126, 0.119722,
		0.946847, -0.237630, -0.216826,
		33.020039, 32.303062, 29.276222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599419, 32.898026, 28.905281>,  <32.357246, 32.469402, 29.428001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599419, 32.898026, 28.905281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874157, 32.608879, 28.875088>,  <33.039001, 32.435390, 28.856972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874157, 32.608879, 28.875088>,  <32.599419, 32.898026, 28.905281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874157, 32.608879, 28.875088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062497, 0.162213, -0.984774,
		0.724107, 0.671675, 0.156594,
		0.686850, -0.722869, -0.075482,
		33.080212, 32.392017, 28.852444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975681, 33.111660, 28.323380>,  <32.599419, 32.898026, 28.905281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975681, 33.111660, 28.323380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091522, 32.732975, 28.379761>,  <33.161026, 32.505764, 28.413589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091522, 32.732975, 28.379761>,  <32.975681, 33.111660, 28.323380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091522, 32.732975, 28.379761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268867, -0.060871, -0.961252,
		0.918608, 0.316278, 0.236911,
		0.289602, -0.946712, 0.140953,
		33.178402, 32.448963, 28.422047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699211, 33.073879, 27.982466>,  <32.975681, 33.111660, 28.323380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699211, 33.073879, 27.982466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511997, 32.723331, 28.027939>,  <33.399670, 32.513004, 28.055223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511997, 32.723331, 28.027939>,  <33.699211, 33.073879, 27.982466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511997, 32.723331, 28.027939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314138, -0.285234, -0.905516,
		0.825989, -0.388103, 0.408800,
		-0.468037, -0.876366, 0.113682,
		33.371586, 32.460423, 28.062044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307831, 32.598572, 27.915756>,  <33.699211, 33.073879, 27.982466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307831, 32.598572, 27.915756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980503, 32.374889, 27.862617>,  <33.784107, 32.240681, 27.830734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980503, 32.374889, 27.862617>,  <34.307831, 32.598572, 27.915756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980503, 32.374889, 27.862617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418440, -0.421162, -0.804693,
		0.394039, -0.714081, 0.578638,
		-0.818316, -0.559206, -0.132846,
		33.735008, 32.207127, 27.822763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538952, 31.886219, 27.626984>,  <34.307831, 32.598572, 27.915756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538952, 31.886219, 27.626984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152191, 31.886152, 27.524918>,  <33.920135, 31.886112, 27.463678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152191, 31.886152, 27.524918>,  <34.538952, 31.886219, 27.626984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152191, 31.886152, 27.524918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218655, -0.515988, -0.828219,
		-0.131522, -0.856596, 0.498944,
		-0.966898, -0.000168, -0.255163,
		33.862122, 31.886103, 27.448368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341908, 31.160686, 27.424994>,  <34.538952, 31.886219, 27.626984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341908, 31.160686, 27.424994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102501, 31.429775, 27.250996>,  <33.958858, 31.591228, 27.146597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102501, 31.429775, 27.250996>,  <34.341908, 31.160686, 27.424994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102501, 31.429775, 27.250996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216367, -0.387070, -0.896305,
		-0.771338, -0.630573, 0.086113,
		-0.598517, 0.672722, -0.434997,
		33.922947, 31.631592, 27.120497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027748, 30.768751, 26.741411>,  <34.341908, 31.160686, 27.424994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027748, 30.768751, 26.741411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967487, 31.163465, 26.717543>,  <33.931332, 31.400293, 26.703222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967487, 31.163465, 26.717543>,  <34.027748, 30.768751, 26.741411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967487, 31.163465, 26.717543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151851, -0.036544, -0.987728,
		-0.976854, -0.157867, -0.144338,
		-0.150655, 0.986784, -0.059670,
		33.922291, 31.459501, 26.699642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535015, 30.788525, 26.190208>,  <34.027748, 30.768751, 26.741411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535015, 30.788525, 26.190208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721680, 31.140411, 26.226704>,  <33.833679, 31.351543, 26.248600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721680, 31.140411, 26.226704>,  <33.535015, 30.788525, 26.190208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721680, 31.140411, 26.226704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043511, 0.080199, -0.995829,
		-0.883365, 0.468684, -0.000851,
		0.466661, 0.879718, 0.091238,
		33.861679, 31.404327, 26.254074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373016, 31.109709, 25.586134>,  <33.535015, 30.788525, 26.190208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373016, 31.109709, 25.586134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696419, 31.308426, 25.712317>,  <33.890461, 31.427656, 25.788027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696419, 31.308426, 25.712317>,  <33.373016, 31.109709, 25.586134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696419, 31.308426, 25.712317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345867, 0.032558, -0.937719,
		-0.476121, 0.867259, -0.145500,
		0.808508, 0.496791, 0.315458,
		33.938972, 31.457462, 25.806953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494026, 31.525595, 25.064455>,  <33.373016, 31.109709, 25.586134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494026, 31.525595, 25.064455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839962, 31.515352, 25.265015>,  <34.047523, 31.509207, 25.385349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839962, 31.515352, 25.265015>,  <33.494026, 31.525595, 25.064455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839962, 31.515352, 25.265015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495900, -0.112275, -0.861091,
		0.078344, 0.993347, -0.084402,
		0.864838, -0.025606, 0.501397,
		34.099415, 31.507669, 25.415434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930588, 31.950590, 24.723703>,  <33.494026, 31.525595, 25.064455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930588, 31.950590, 24.723703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165279, 31.693356, 24.920553>,  <34.306095, 31.539015, 25.038664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165279, 31.693356, 24.920553>,  <33.930588, 31.950590, 24.723703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165279, 31.693356, 24.920553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520593, -0.165947, -0.837523,
		0.620265, 0.747599, 0.237419,
		0.586732, -0.643084, 0.492126,
		34.341297, 31.500431, 25.068192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608444, 32.132462, 24.559126>,  <33.930588, 31.950590, 24.723703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608444, 32.132462, 24.559126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712208, 31.782713, 24.723169>,  <34.774464, 31.572865, 24.821594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712208, 31.782713, 24.723169>,  <34.608444, 32.132462, 24.559126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712208, 31.782713, 24.723169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612991, -0.179072, -0.769530,
		0.746291, 0.451013, 0.489528,
		0.259407, -0.874369, 0.410106,
		34.790031, 31.520403, 24.846201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368530, 32.174946, 24.516611>,  <34.608444, 32.132462, 24.559126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368530, 32.174946, 24.516611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227543, 31.800653, 24.521826>,  <35.142948, 31.576078, 24.524954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227543, 31.800653, 24.521826>,  <35.368530, 32.174946, 24.516611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227543, 31.800653, 24.521826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594825, -0.234767, -0.768809,
		0.722460, -0.263229, 0.639345,
		-0.352470, -0.935732, 0.013035,
		35.121803, 31.519934, 24.525736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945435, 31.717129, 24.629168>,  <35.368530, 32.174946, 24.516611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945435, 31.717129, 24.629168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669342, 31.477505, 24.466833>,  <35.503685, 31.333731, 24.369432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669342, 31.477505, 24.466833>,  <35.945435, 31.717129, 24.629168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669342, 31.477505, 24.466833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646800, -0.259372, -0.717200,
		0.324384, -0.757531, 0.566500,
		-0.690236, -0.599060, -0.405835,
		35.462273, 31.297787, 24.345083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243305, 31.065540, 24.540131>,  <35.945435, 31.717129, 24.629168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243305, 31.065540, 24.540131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952053, 31.076097, 24.266159>,  <35.777302, 31.082432, 24.101776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952053, 31.076097, 24.266159>,  <36.243305, 31.065540, 24.540131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952053, 31.076097, 24.266159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642103, -0.323392, -0.695069,
		-0.239844, -0.945897, 0.218526,
		-0.728134, 0.026392, -0.684927,
		35.733612, 31.084015, 24.060680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389778, 30.496393, 24.191730>,  <36.243305, 31.065540, 24.540131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389778, 30.496393, 24.191730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136333, 30.691586, 23.951593>,  <35.984268, 30.808701, 23.807512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136333, 30.691586, 23.951593>,  <36.389778, 30.496393, 24.191730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136333, 30.691586, 23.951593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547126, -0.265998, -0.793661,
		-0.546981, -0.831336, -0.098448,
		-0.633612, 0.487981, -0.600342,
		35.946251, 30.837980, 23.771490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468788, 30.121231, 23.616295>,  <36.389778, 30.496393, 24.191730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468788, 30.121231, 23.616295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298386, 30.431711, 23.430378>,  <36.196144, 30.617998, 23.318829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298386, 30.431711, 23.430378>,  <36.468788, 30.121231, 23.616295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298386, 30.431711, 23.430378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640858, -0.103734, -0.760618,
		-0.638606, -0.621896, -0.453241,
		-0.426009, 0.776199, -0.464792,
		36.170582, 30.664570, 23.290939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453445, 29.911854, 22.885029>,  <36.468788, 30.121231, 23.616295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453445, 29.911854, 22.885029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412170, 30.308714, 22.856781>,  <36.387405, 30.546831, 22.839832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412170, 30.308714, 22.856781>,  <36.453445, 29.911854, 22.885029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412170, 30.308714, 22.856781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466354, -0.014455, -0.884480,
		-0.878559, -0.124199, -0.461203,
		-0.103185, 0.992152, -0.070621,
		36.381214, 30.606359, 22.835594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139671, 30.081661, 22.114597>,  <36.453445, 29.911854, 22.885029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139671, 30.081661, 22.114597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325764, 30.400274, 22.269049>,  <36.437420, 30.591442, 22.361719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325764, 30.400274, 22.269049>,  <36.139671, 30.081661, 22.114597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325764, 30.400274, 22.269049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531007, 0.097880, -0.841696,
		-0.708234, 0.596618, -0.377429,
		0.465228, 0.796534, 0.386130,
		36.465332, 30.639235, 22.384888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082550, 30.698259, 21.662468>,  <36.139671, 30.081661, 22.114597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082550, 30.698259, 21.662468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416039, 30.727299, 21.881422>,  <36.616131, 30.744722, 22.012794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416039, 30.727299, 21.881422>,  <36.082550, 30.698259, 21.662468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416039, 30.727299, 21.881422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543082, 0.071393, -0.836639,
		-0.099818, 0.994803, 0.020095,
		0.833726, 0.072599, 0.547385,
		36.666157, 30.749079, 22.045637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327782, 31.309118, 21.459555>,  <36.082550, 30.698259, 21.662468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327782, 31.309118, 21.459555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643673, 31.111231, 21.604652>,  <36.833206, 30.992498, 21.691711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643673, 31.111231, 21.604652>,  <36.327782, 31.309118, 21.459555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643673, 31.111231, 21.604652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519134, 0.223901, -0.824844,
		0.326847, 0.839715, 0.433647,
		0.789728, -0.494719, 0.362743,
		36.880592, 30.962814, 21.713476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939552, 31.635126, 21.188486>,  <36.327782, 31.309118, 21.459555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939552, 31.635126, 21.188486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103157, 31.306955, 21.348291>,  <37.201321, 31.110052, 21.444174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103157, 31.306955, 21.348291>,  <36.939552, 31.635126, 21.188486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103157, 31.306955, 21.348291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749082, 0.051831, -0.660447,
		0.521142, 0.569396, 0.635767,
		0.409008, -0.820428, 0.399513,
		37.225861, 31.060827, 21.468145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658802, 31.743525, 21.202736>,  <36.939552, 31.635126, 21.188486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658802, 31.743525, 21.202736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613697, 31.347143, 21.231859>,  <37.586636, 31.109314, 21.249332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613697, 31.347143, 21.231859>,  <37.658802, 31.743525, 21.202736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613697, 31.347143, 21.231859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597529, -0.126172, -0.791858,
		0.793879, -0.045784, 0.606349,
		-0.112759, -0.990951, 0.072808,
		37.579868, 31.049858, 21.253702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334442, 31.488417, 21.276390>,  <37.658802, 31.743525, 21.202736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334442, 31.488417, 21.276390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.087669, 31.197727, 21.155546>,  <37.939606, 31.023314, 21.083040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.087669, 31.197727, 21.155546>,  <38.334442, 31.488417, 21.276390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087669, 31.197727, 21.155546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482353, -0.045821, -0.874778,
		0.621877, -0.685401, 0.378805,
		-0.616931, -0.726722, -0.302110,
		37.902592, 30.979710, 21.064913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742847, 31.678892, 21.820129>,  <38.334442, 31.488417, 21.276390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742847, 31.678892, 21.820129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.028923, 31.936861, 21.712366>,  <39.200569, 32.091644, 21.647709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.028923, 31.936861, 21.712366>,  <38.742847, 31.678892, 21.820129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028923, 31.936861, 21.712366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196403, 0.555366, 0.808081,
		0.670770, -0.525017, 0.523856,
		0.715188, 0.644923, -0.269407,
		39.243481, 32.130337, 21.631544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148167, 31.729223, 22.394238>,  <38.742847, 31.678892, 21.820129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148167, 31.729223, 22.394238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207550, 32.060795, 22.178520>,  <39.243179, 32.259739, 22.049089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207550, 32.060795, 22.178520>,  <39.148167, 31.729223, 22.394238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207550, 32.060795, 22.178520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075665, 0.553258, 0.829567,
		0.986019, -0.082354, 0.144859,
		0.148463, 0.828929, -0.539291,
		39.252090, 32.309475, 22.016733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677296, 32.192299, 22.779915>,  <39.148167, 31.729223, 22.394238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677296, 32.192299, 22.779915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.482437, 32.440628, 22.534227>,  <39.365520, 32.589626, 22.386814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.482437, 32.440628, 22.534227>,  <39.677296, 32.192299, 22.779915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482437, 32.440628, 22.534227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072373, 0.729593, 0.680041,
		0.870317, 0.286826, -0.400349,
		-0.487145, 0.620826, -0.614218,
		39.336292, 32.626877, 22.349962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994480, 32.864384, 22.782505>,  <39.677296, 32.192299, 22.779915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994480, 32.864384, 22.782505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618481, 32.935371, 22.665947>,  <39.392879, 32.977962, 22.596012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618481, 32.935371, 22.665947>,  <39.994480, 32.864384, 22.782505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618481, 32.935371, 22.665947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134523, 0.592103, 0.794555,
		0.313541, 0.786079, -0.532703,
		-0.939998, 0.177465, -0.291395,
		39.336483, 32.988609, 22.578529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881180, 33.524036, 23.095541>,  <39.994480, 32.864384, 22.782505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881180, 33.524036, 23.095541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.519230, 33.383430, 22.999512>,  <39.302059, 33.299065, 22.941895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.519230, 33.383430, 22.999512>,  <39.881180, 33.524036, 23.095541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519230, 33.383430, 22.999512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391192, 0.464337, 0.794582,
		-0.167836, 0.812912, -0.557678,
		-0.904876, -0.351519, -0.240072,
		39.247768, 33.277973, 22.927490>
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
