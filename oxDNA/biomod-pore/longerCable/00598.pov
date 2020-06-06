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
	<24.834208, 34.743080, 34.773132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542282, 34.838230, 35.029503>,  <24.367126, 34.895321, 35.183327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542282, 34.838230, 35.029503>,  <24.834208, 34.743080, 34.773132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542282, 34.838230, 35.029503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525191, 0.795263, 0.302872,
		-0.437660, 0.557649, -0.705323,
		-0.729813, 0.237875, 0.640928,
		24.323338, 34.909592, 35.221783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787270, 35.486343, 34.817810>,  <24.834208, 34.743080, 34.773132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787270, 35.486343, 34.817810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.613125, 35.343723, 35.148464>,  <24.508638, 35.258152, 35.346859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.613125, 35.343723, 35.148464>,  <24.787270, 35.486343, 34.817810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.613125, 35.343723, 35.148464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359667, 0.772874, 0.522786,
		-0.825287, 0.524917, -0.208242,
		-0.435364, -0.356550, 0.826638,
		24.482515, 35.236759, 35.396454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108616, 35.981377, 35.213142>,  <24.787270, 35.486343, 34.817810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108616, 35.981377, 35.213142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877079, 35.780643, 35.470234>,  <24.738157, 35.660202, 35.624489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877079, 35.780643, 35.470234>,  <25.108616, 35.981377, 35.213142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877079, 35.780643, 35.470234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078405, 0.750300, 0.656431,
		-0.811662, 0.430363, -0.394958,
		-0.578841, -0.501834, 0.642733,
		24.703426, 35.630093, 35.663055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308134, 36.692127, 35.432690>,  <25.108616, 35.981377, 35.213142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308134, 36.692127, 35.432690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244680, 36.342621, 35.616589>,  <25.206608, 36.132915, 35.726929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244680, 36.342621, 35.616589>,  <25.308134, 36.692127, 35.432690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244680, 36.342621, 35.616589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389609, -0.483251, -0.784011,
		0.907216, 0.054750, 0.417088,
		-0.158634, -0.873768, 0.459744,
		25.197090, 36.080490, 35.754513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918892, 36.410042, 35.811596>,  <25.308134, 36.692127, 35.432690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918892, 36.410042, 35.811596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671537, 36.112637, 35.709782>,  <25.523125, 35.934193, 35.648693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671537, 36.112637, 35.709782>,  <25.918892, 36.410042, 35.811596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671537, 36.112637, 35.709782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638752, -0.286847, -0.713943,
		0.457812, -0.604078, 0.652302,
		-0.618388, -0.743511, -0.254535,
		25.486021, 35.889584, 35.633423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308035, 36.884117, 36.230400>,  <25.918892, 36.410042, 35.811596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308035, 36.884117, 36.230400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557959, 37.083229, 35.989792>,  <26.707912, 37.202698, 35.845425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557959, 37.083229, 35.989792>,  <26.308035, 36.884117, 36.230400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557959, 37.083229, 35.989792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262782, 0.591403, 0.762357,
		0.735229, -0.634396, 0.238705,
		0.624807, 0.497780, -0.601524,
		26.745401, 37.232563, 35.809334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612667, 37.261257, 36.679268>,  <26.308035, 36.884117, 36.230400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612667, 37.261257, 36.679268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775028, 37.407112, 36.344059>,  <26.872446, 37.494625, 36.142933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775028, 37.407112, 36.344059>,  <26.612667, 37.261257, 36.679268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775028, 37.407112, 36.344059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434676, 0.729577, 0.527990,
		0.803927, -0.578581, 0.137640,
		0.405905, 0.364637, -0.838022,
		26.896799, 37.516502, 36.092651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369347, 37.500153, 36.811844>,  <26.612667, 37.261257, 36.679268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369347, 37.500153, 36.811844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225998, 37.700161, 36.496490>,  <27.139990, 37.820168, 36.307278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225998, 37.700161, 36.496490>,  <27.369347, 37.500153, 36.811844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225998, 37.700161, 36.496490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324201, 0.858575, 0.397169,
		0.875479, -0.113261, -0.469795,
		-0.358371, 0.500022, -0.788384,
		27.118486, 37.850166, 36.259975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824829, 37.306110, 37.266445>,  <27.369347, 37.500153, 36.811844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824829, 37.306110, 37.266445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176937, 37.305538, 37.076656>,  <28.388203, 37.305195, 36.962784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176937, 37.305538, 37.076656>,  <27.824829, 37.306110, 37.266445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176937, 37.305538, 37.076656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390803, 0.569267, 0.723331,
		0.269066, -0.822151, 0.501668,
		0.880271, -0.001429, -0.474470,
		28.441019, 37.305111, 36.934315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334505, 37.566841, 37.733112>,  <27.824829, 37.306110, 37.266445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334505, 37.566841, 37.733112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538897, 37.563648, 37.389290>,  <28.661531, 37.561733, 37.182995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538897, 37.563648, 37.389290>,  <28.334505, 37.566841, 37.733112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538897, 37.563648, 37.389290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671386, 0.628148, 0.393282,
		0.536788, -0.778053, 0.326331,
		0.510978, -0.007985, -0.859556,
		28.692190, 37.561253, 37.131424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014505, 37.503139, 37.886486>,  <28.334505, 37.566841, 37.733112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014505, 37.503139, 37.886486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988314, 37.671158, 37.524429>,  <28.972599, 37.771969, 37.307198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988314, 37.671158, 37.524429>,  <29.014505, 37.503139, 37.886486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988314, 37.671158, 37.524429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607601, 0.736320, 0.297746,
		0.791538, -0.530467, -0.303434,
		-0.065480, 0.420044, -0.905138,
		28.968670, 37.797173, 37.252888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371052, 36.837337, 37.707500>,  <29.014505, 37.503139, 37.886486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371052, 36.837337, 37.707500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441549, 36.568905, 37.419449>,  <29.483849, 36.407845, 37.246616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441549, 36.568905, 37.419449>,  <29.371052, 36.837337, 37.707500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441549, 36.568905, 37.419449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614019, -0.646754, 0.452427,
		-0.769362, 0.362435, -0.526044,
		0.176246, -0.671081, -0.720130,
		29.494423, 36.367580, 37.203411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825296, 36.494061, 37.448593>,  <29.371052, 36.837337, 37.707500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825296, 36.494061, 37.448593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131126, 36.246021, 37.378265>,  <29.314625, 36.097198, 37.336071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131126, 36.246021, 37.378265>,  <28.825296, 36.494061, 37.448593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131126, 36.246021, 37.378265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384721, -0.657920, 0.647403,
		-0.517122, -0.427348, -0.741592,
		0.764574, -0.620093, -0.175815,
		29.360498, 36.059994, 37.325520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486166, 35.959362, 37.440376>,  <28.825296, 36.494061, 37.448593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486166, 35.959362, 37.440376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855221, 35.814167, 37.492512>,  <29.076653, 35.727051, 37.523792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855221, 35.814167, 37.492512>,  <28.486166, 35.959362, 37.440376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855221, 35.814167, 37.492512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378779, -0.789222, 0.483379,
		-0.072596, -0.495351, -0.865654,
		0.922636, -0.362983, 0.130334,
		29.132011, 35.705273, 37.531612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595308, 35.239956, 37.219028>,  <28.486166, 35.959362, 37.440376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595308, 35.239956, 37.219028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835098, 35.316803, 37.529827>,  <28.978971, 35.362911, 37.716305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835098, 35.316803, 37.529827>,  <28.595308, 35.239956, 37.219028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835098, 35.316803, 37.529827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315819, -0.835224, 0.450176,
		0.735452, -0.515259, -0.440020,
		0.599473, 0.192116, 0.776996,
		29.014940, 35.374439, 37.762924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487978, 34.618847, 37.564404>,  <28.595308, 35.239956, 37.219028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487978, 34.618847, 37.564404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395212, 34.274422, 37.383392>,  <28.339552, 34.067768, 37.274784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.395212, 34.274422, 37.383392>,  <28.487978, 34.618847, 37.564404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395212, 34.274422, 37.383392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961182, -0.131364, -0.242637,
		0.149479, -0.491236, 0.858104,
		-0.231916, -0.861063, -0.452531,
		28.325638, 34.016102, 37.247631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818436, 34.133400, 37.895451>,  <28.487978, 34.618847, 37.564404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818436, 34.133400, 37.895451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763515, 34.004562, 37.520771>,  <28.730564, 33.927261, 37.295963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763515, 34.004562, 37.520771>,  <28.818436, 34.133400, 37.895451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763515, 34.004562, 37.520771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984558, -0.148055, -0.093404,
		-0.108598, -0.935058, 0.337449,
		-0.137299, -0.322095, -0.936698,
		28.722326, 33.907932, 37.239761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078266, 33.397995, 37.580555>,  <28.818436, 34.133400, 37.895451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078266, 33.397995, 37.580555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059719, 33.633430, 37.257713>,  <29.048590, 33.774693, 37.064007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059719, 33.633430, 37.257713>,  <29.078266, 33.397995, 37.580555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059719, 33.633430, 37.257713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990019, -0.080565, -0.115630,
		-0.133082, -0.804411, -0.578974,
		-0.046369, 0.588585, -0.807105,
		29.045809, 33.810005, 37.015583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240883, 33.063992, 36.924156>,  <29.078266, 33.397995, 37.580555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240883, 33.063992, 36.924156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348871, 33.447048, 36.964237>,  <29.413664, 33.676884, 36.988285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348871, 33.447048, 36.964237>,  <29.240883, 33.063992, 36.924156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348871, 33.447048, 36.964237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962385, -0.265071, -0.059595,
		-0.030509, 0.112526, -0.993180,
		0.269969, 0.957641, 0.100206,
		29.429861, 33.734341, 36.994301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699581, 33.276657, 36.309711>,  <29.240883, 33.063992, 36.924156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699581, 33.276657, 36.309711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762959, 33.490940, 36.641472>,  <29.800985, 33.619511, 36.840527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762959, 33.490940, 36.641472>,  <29.699581, 33.276657, 36.309711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762959, 33.490940, 36.641472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969058, -0.245391, -0.026626,
		0.189264, 0.807958, -0.558017,
		0.158445, 0.535712, 0.829402,
		29.810492, 33.651653, 36.890293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343569, 33.865192, 36.395111>,  <29.699581, 33.276657, 36.309711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343569, 33.865192, 36.395111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243286, 33.772549, 36.771091>,  <30.183117, 33.716961, 36.996677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243286, 33.772549, 36.771091>,  <30.343569, 33.865192, 36.395111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243286, 33.772549, 36.771091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966853, -0.011377, 0.255081,
		-0.048385, 0.972743, 0.226783,
		-0.250708, -0.231608, 0.939948,
		30.168074, 33.703068, 37.053078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842863, 34.271461, 36.954788>,  <30.343569, 33.865192, 36.395111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842863, 34.271461, 36.954788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757433, 33.901569, 37.080807>,  <30.706175, 33.679634, 37.156418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757433, 33.901569, 37.080807>,  <30.842863, 34.271461, 36.954788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757433, 33.901569, 37.080807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976001, -0.187939, 0.110002,
		-0.042514, 0.330976, 0.942681,
		-0.213575, -0.924734, 0.315043,
		30.693361, 33.624149, 37.175320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046495, 33.798290, 37.564358>,  <30.842863, 34.271461, 36.954788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046495, 33.798290, 37.564358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049126, 34.041435, 37.881962>,  <31.050703, 34.187325, 38.072525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049126, 34.041435, 37.881962>,  <31.046495, 33.798290, 37.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049126, 34.041435, 37.881962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990562, -0.112668, 0.078053,
		0.136906, 0.786005, -0.602870,
		0.006574, 0.607866, 0.794012,
		31.051098, 34.223797, 38.120167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609287, 34.156857, 37.410664>,  <31.046495, 33.798290, 37.564358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609287, 34.156857, 37.410664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529411, 34.198376, 37.800404>,  <31.481485, 34.223286, 38.034248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529411, 34.198376, 37.800404>,  <31.609287, 34.156857, 37.410664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529411, 34.198376, 37.800404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895046, -0.385353, 0.224488,
		0.398769, 0.916913, -0.015952,
		-0.199688, 0.103797, 0.974346,
		31.469505, 34.229515, 38.092709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142513, 34.538471, 37.833839>,  <31.609287, 34.156857, 37.410664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142513, 34.538471, 37.833839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948355, 34.276340, 38.065334>,  <31.831860, 34.119061, 38.204231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948355, 34.276340, 38.065334>,  <32.142513, 34.538471, 37.833839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948355, 34.276340, 38.065334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868640, -0.436635, 0.234124,
		0.099270, 0.616359, 0.781183,
		-0.485397, -0.655325, 0.578739,
		31.802736, 34.079742, 38.238956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265987, 34.813522, 38.436623>,  <32.142513, 34.538471, 37.833839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265987, 34.813522, 38.436623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194054, 34.420422, 38.419392>,  <32.150894, 34.184563, 38.409054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194054, 34.420422, 38.419392>,  <32.265987, 34.813522, 38.436623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194054, 34.420422, 38.419392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975942, -0.183737, 0.117380,
		-0.123270, -0.020930, 0.992152,
		-0.179838, -0.982753, -0.043075,
		32.140102, 34.125595, 38.406467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755814, 34.838001, 38.929810>,  <32.265987, 34.813522, 38.436623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755814, 34.838001, 38.929810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927151, 35.110260, 39.167545>,  <33.029953, 35.273617, 39.310188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927151, 35.110260, 39.167545>,  <32.755814, 34.838001, 38.929810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927151, 35.110260, 39.167545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898531, -0.390520, -0.200340,
		0.095742, 0.619850, -0.778858,
		0.428340, 0.680647, 0.594344,
		33.055653, 35.314453, 39.345848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295902, 35.106571, 38.602249>,  <32.755814, 34.838001, 38.929810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295902, 35.106571, 38.602249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366451, 35.145939, 38.994007>,  <33.408779, 35.169559, 39.229061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366451, 35.145939, 38.994007>,  <33.295902, 35.106571, 38.602249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366451, 35.145939, 38.994007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805248, -0.586659, -0.086056,
		0.566099, 0.803831, -0.182722,
		0.176370, 0.098420, 0.979391,
		33.419361, 35.175465, 39.287823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998196, 35.340591, 38.789185>,  <33.295902, 35.106571, 38.602249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998196, 35.340591, 38.789185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848278, 35.112347, 39.081467>,  <33.758327, 34.975399, 39.256836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848278, 35.112347, 39.081467>,  <33.998196, 35.340591, 38.789185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848278, 35.112347, 39.081467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780867, -0.619162, -0.082977,
		0.499772, 0.539484, 0.677631,
		-0.374799, -0.570610, 0.730706,
		33.735840, 34.941162, 39.300678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472618, 35.383415, 39.313042>,  <33.998196, 35.340591, 38.789185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472618, 35.383415, 39.313042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260017, 35.044743, 39.303036>,  <34.132458, 34.841537, 39.297031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260017, 35.044743, 39.303036>,  <34.472618, 35.383415, 39.313042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260017, 35.044743, 39.303036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833644, -0.517627, -0.192614,
		0.150135, -0.123231, 0.980955,
		-0.531505, -0.846686, -0.025017,
		34.100567, 34.790737, 39.295532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964329, 34.838005, 39.436626>,  <34.472618, 35.383415, 39.313042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964329, 34.838005, 39.436626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643440, 34.682499, 39.255386>,  <34.450909, 34.589195, 39.146641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643440, 34.682499, 39.255386>,  <34.964329, 34.838005, 39.436626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643440, 34.682499, 39.255386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524092, -0.822066, -0.222564,
		-0.285956, -0.416014, 0.863227,
		-0.802220, -0.388767, -0.453105,
		34.402775, 34.565868, 39.119453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802483, 34.230282, 39.680000>,  <34.964329, 34.838005, 39.436626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802483, 34.230282, 39.680000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776173, 34.232315, 39.280872>,  <34.760387, 34.233536, 39.041393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776173, 34.232315, 39.280872>,  <34.802483, 34.230282, 39.680000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776173, 34.232315, 39.280872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369219, -0.928887, -0.029072,
		-0.927012, -0.370327, 0.059220,
		-0.065775, 0.005085, -0.997821,
		34.756439, 34.233841, 38.981525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400150, 34.434410, 39.890945>,  <34.802483, 34.230282, 39.680000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400150, 34.434410, 39.890945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520016, 34.805832, 39.803326>,  <35.591934, 35.028687, 39.750755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520016, 34.805832, 39.803326>,  <35.400150, 34.434410, 39.890945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520016, 34.805832, 39.803326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069541, 0.250247, 0.965681,
		0.951507, -0.274148, 0.139563,
		0.299665, 0.928558, -0.219047,
		35.609917, 35.084400, 39.737610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980347, 34.608959, 40.298519>,  <35.400150, 34.434410, 39.890945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980347, 34.608959, 40.298519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773907, 34.937740, 40.202156>,  <35.650043, 35.135010, 40.144337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773907, 34.937740, 40.202156>,  <35.980347, 34.608959, 40.298519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773907, 34.937740, 40.202156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098644, 0.222355, 0.969963,
		0.850830, 0.524360, -0.033676,
		-0.516098, 0.821952, -0.240911,
		35.619076, 35.184326, 40.129883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187920, 35.347382, 40.066097>,  <35.980347, 34.608959, 40.298519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187920, 35.347382, 40.066097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556114, 35.485714, 40.138885>,  <36.777031, 35.568714, 40.182560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556114, 35.485714, 40.138885>,  <36.187920, 35.347382, 40.066097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556114, 35.485714, 40.138885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033313, 0.533408, -0.845202,
		-0.389362, 0.771931, 0.502513,
		0.920482, 0.345830, 0.181974,
		36.832260, 35.589462, 40.193478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240215, 36.151466, 40.070538>,  <36.187920, 35.347382, 40.066097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240215, 36.151466, 40.070538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572475, 35.963432, 39.951180>,  <36.771832, 35.850613, 39.879566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572475, 35.963432, 39.951180>,  <36.240215, 36.151466, 40.070538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572475, 35.963432, 39.951180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086198, 0.420887, -0.903008,
		0.550080, 0.775806, 0.309090,
		0.830651, -0.470084, -0.298395,
		36.821671, 35.822407, 39.861660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746723, 36.690239, 39.823181>,  <36.240215, 36.151466, 40.070538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746723, 36.690239, 39.823181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759602, 36.348370, 39.615913>,  <36.767330, 36.143250, 39.491554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759602, 36.348370, 39.615913>,  <36.746723, 36.690239, 39.823181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759602, 36.348370, 39.615913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171164, 0.506062, -0.845343,
		0.984716, 0.115911, -0.129994,
		0.032200, -0.854673, -0.518167,
		36.769260, 36.091969, 39.460464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264282, 36.737228, 39.278023>,  <36.746723, 36.690239, 39.823181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264282, 36.737228, 39.278023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985012, 36.470505, 39.173775>,  <36.817451, 36.310471, 39.111225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985012, 36.470505, 39.173775>,  <37.264282, 36.737228, 39.278023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985012, 36.470505, 39.173775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076885, 0.431755, -0.898708,
		0.711786, -0.607419, -0.352708,
		-0.698176, -0.666806, -0.260616,
		36.775558, 36.270462, 39.095589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293705, 36.534592, 38.634281>,  <37.264282, 36.737228, 39.278023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293705, 36.534592, 38.634281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902718, 36.476341, 38.695400>,  <36.668125, 36.441391, 38.732071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902718, 36.476341, 38.695400>,  <37.293705, 36.534592, 38.634281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902718, 36.476341, 38.695400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200287, 0.411340, -0.889205,
		0.066642, -0.899773, -0.431239,
		-0.977468, -0.145630, 0.152800,
		36.609478, 36.432652, 38.741241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868237, 36.031506, 38.809242>,  <37.293705, 36.534592, 38.634281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868237, 36.031506, 38.809242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696285, 35.687340, 38.918705>,  <37.593113, 35.480839, 38.984383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696285, 35.687340, 38.918705>,  <37.868237, 36.031506, 38.809242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696285, 35.687340, 38.918705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901716, -0.424561, 0.081590,
		0.045983, 0.281836, 0.958360,
		-0.429877, -0.860417, 0.273658,
		37.567322, 35.429214, 39.000801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965363, 35.744392, 39.479610>,  <37.868237, 36.031506, 38.809242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965363, 35.744392, 39.479610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922092, 35.423595, 39.244629>,  <37.896130, 35.231117, 39.103642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922092, 35.423595, 39.244629>,  <37.965363, 35.744392, 39.479610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922092, 35.423595, 39.244629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927760, -0.293737, 0.230174,
		-0.357155, -0.520115, 0.775835,
		-0.108174, -0.801997, -0.587452,
		37.889641, 35.182995, 39.068394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587879, 35.511223, 39.606895>,  <37.965363, 35.744392, 39.479610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587879, 35.511223, 39.606895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449497, 35.265175, 39.323505>,  <38.366467, 35.117546, 39.153469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449497, 35.265175, 39.323505>,  <38.587879, 35.511223, 39.606895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449497, 35.265175, 39.323505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910823, -0.401422, -0.096235,
		-0.225201, -0.678590, 0.699142,
		-0.345955, -0.615122, -0.708477,
		38.345711, 35.080639, 39.110962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765018, 34.795071, 39.809654>,  <38.587879, 35.511223, 39.606895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765018, 34.795071, 39.809654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755592, 34.844578, 39.412842>,  <38.749939, 34.874283, 39.174755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755592, 34.844578, 39.412842>,  <38.765018, 34.795071, 39.809654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755592, 34.844578, 39.412842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854587, -0.512432, -0.084230,
		-0.518774, -0.849762, -0.093697,
		-0.023562, 0.123768, -0.992031,
		38.748524, 34.881710, 39.115231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845745, 34.146168, 39.504860>,  <38.765018, 34.795071, 39.809654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845745, 34.146168, 39.504860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981529, 34.422062, 39.249039>,  <39.063000, 34.587597, 39.095547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981529, 34.422062, 39.249039>,  <38.845745, 34.146168, 39.504860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981529, 34.422062, 39.249039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888949, -0.457498, -0.021562,
		-0.307468, -0.561214, -0.768441,
		0.339459, 0.689735, -0.639557,
		39.083366, 34.628983, 39.057171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147762, 33.861958, 38.825214>,  <38.845745, 34.146168, 39.504860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147762, 33.861958, 38.825214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324623, 34.180977, 38.989372>,  <39.430740, 34.372387, 39.087868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324623, 34.180977, 38.989372>,  <39.147762, 33.861958, 38.825214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324623, 34.180977, 38.989372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894759, -0.424092, -0.139828,
		0.062527, 0.429032, -0.901123,
		0.442150, 0.797544, 0.410398,
		39.457268, 34.420238, 39.112492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651211, 33.869781, 38.435757>,  <39.147762, 33.861958, 38.825214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651211, 33.869781, 38.435757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728065, 34.058105, 38.780178>,  <39.774178, 34.171101, 38.986832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728065, 34.058105, 38.780178>,  <39.651211, 33.869781, 38.435757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728065, 34.058105, 38.780178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914248, -0.404784, 0.017326,
		0.356700, 0.783892, -0.508211,
		0.192134, 0.470812, 0.861058,
		39.785706, 34.199348, 39.038494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355461, 34.259781, 38.457493>,  <39.651211, 33.869781, 38.435757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355461, 34.259781, 38.457493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261650, 34.114532, 38.818192>,  <40.205364, 34.027386, 39.034611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261650, 34.114532, 38.818192>,  <40.355461, 34.259781, 38.457493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261650, 34.114532, 38.818192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926627, -0.363926, 0.094449,
		0.293873, 0.857732, 0.421824,
		-0.234524, -0.363117, 0.901745,
		40.191292, 34.005596, 39.088715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584518, 33.685574, 38.092873>,  <40.355461, 34.259781, 38.457493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584518, 33.685574, 38.092873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342533, 33.786858, 37.790901>,  <40.197342, 33.847626, 37.609718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342533, 33.786858, 37.790901>,  <40.584518, 33.685574, 38.092873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342533, 33.786858, 37.790901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265203, -0.829887, -0.490871,
		-0.750794, -0.497165, 0.434897,
		-0.604960, 0.253207, -0.754924,
		40.161045, 33.862820, 37.564423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054295, 33.256626, 37.952782>,  <40.584518, 33.685574, 38.092873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054295, 33.256626, 37.952782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133038, 33.425270, 37.598721>,  <40.180283, 33.526455, 37.386284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133038, 33.425270, 37.598721>,  <40.054295, 33.256626, 37.952782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133038, 33.425270, 37.598721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109731, -0.906620, -0.407430,
		-0.974273, -0.016924, -0.224735,
		0.196854, 0.421608, -0.885153,
		40.192093, 33.551754, 37.333176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595943, 32.926220, 37.448780>,  <40.054295, 33.256626, 37.952782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595943, 32.926220, 37.448780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927753, 33.064461, 37.273304>,  <40.126839, 33.147404, 37.168018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927753, 33.064461, 37.273304>,  <39.595943, 32.926220, 37.448780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927753, 33.064461, 37.273304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104223, -0.867523, -0.486355,
		-0.548656, 0.357722, -0.755653,
		0.829526, 0.345598, -0.438689,
		40.176613, 33.168140, 37.141697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443470, 32.951160, 36.742317>,  <39.595943, 32.926220, 37.448780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443470, 32.951160, 36.742317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840004, 32.916416, 36.781719>,  <40.077927, 32.895569, 36.805363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840004, 32.916416, 36.781719>,  <39.443470, 32.951160, 36.742317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840004, 32.916416, 36.781719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042928, -0.923163, -0.382003,
		0.124121, 0.374466, -0.918896,
		0.991338, -0.086861, 0.098509,
		40.137405, 32.890358, 36.811272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621044, 32.708862, 36.138821>,  <39.443470, 32.951160, 36.742317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621044, 32.708862, 36.138821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908775, 32.634842, 36.406647>,  <40.081413, 32.590431, 36.567345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908775, 32.634842, 36.406647>,  <39.621044, 32.708862, 36.138821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908775, 32.634842, 36.406647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013804, -0.967484, -0.252556,
		0.694531, 0.172428, -0.698495,
		0.719330, -0.185050, 0.669568,
		40.124573, 32.579327, 36.607517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801949, 32.313515, 35.490582>,  <39.621044, 32.708862, 36.138821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801949, 32.313515, 35.490582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626701, 32.090462, 35.772602>,  <39.521553, 31.956629, 35.941814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626701, 32.090462, 35.772602>,  <39.801949, 32.313515, 35.490582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626701, 32.090462, 35.772602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897706, -0.312152, 0.310943,
		0.046690, 0.769157, 0.637352,
		-0.438115, -0.557636, 0.705051,
		39.495266, 31.923170, 35.984116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402100, 31.927818, 35.238182>,  <39.801949, 32.313515, 35.490582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402100, 31.927818, 35.238182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368496, 31.713123, 35.574005>,  <40.348335, 31.584307, 35.775497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368496, 31.713123, 35.574005>,  <40.402100, 31.927818, 35.238182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368496, 31.713123, 35.574005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032740, -0.840593, -0.540678,
		0.995927, -0.072909, 0.053044,
		-0.084009, -0.536739, 0.839556,
		40.343292, 31.552101, 35.825871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822189, 31.334673, 35.052158>,  <40.402100, 31.927818, 35.238182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822189, 31.334673, 35.052158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565384, 31.233324, 35.341606>,  <40.411301, 31.172514, 35.515274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565384, 31.233324, 35.341606>,  <40.822189, 31.334673, 35.052158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565384, 31.233324, 35.341606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145254, -0.886524, -0.439290,
		0.752806, -0.387139, 0.532359,
		-0.642015, -0.253373, 0.723615,
		40.372780, 31.157312, 35.558689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450233, 30.656960, 34.890182>,  <40.822189, 31.334673, 35.052158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450233, 30.656960, 34.890182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316265, 30.695448, 35.265110>,  <40.235886, 30.718540, 35.490067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316265, 30.695448, 35.265110>,  <40.450233, 30.656960, 34.890182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316265, 30.695448, 35.265110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407118, -0.911902, -0.051859,
		0.849756, -0.398969, 0.344585,
		-0.334918, 0.096219, 0.937322,
		40.215790, 30.724314, 35.546307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670971, 30.061142, 35.303501>,  <40.450233, 30.656960, 34.890182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670971, 30.061142, 35.303501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328499, 30.222481, 35.432659>,  <40.123016, 30.319284, 35.510155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328499, 30.222481, 35.432659>,  <40.670971, 30.061142, 35.303501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328499, 30.222481, 35.432659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437496, -0.898426, -0.037780,
		0.274863, -0.173613, 0.945679,
		-0.856182, 0.403347, 0.322899,
		40.071644, 30.343485, 35.529530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345631, 29.536934, 35.607021>,  <40.670971, 30.061142, 35.303501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345631, 29.536934, 35.607021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038822, 29.775085, 35.511356>,  <39.854736, 29.917976, 35.453957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038822, 29.775085, 35.511356>,  <40.345631, 29.536934, 35.607021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038822, 29.775085, 35.511356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560816, -0.803199, -0.200890,
		-0.311701, -0.019961, 0.949971,
		-0.767025, 0.595377, -0.239163,
		39.808716, 29.953699, 35.439606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650494, 29.232220, 35.889645>,  <40.345631, 29.536934, 35.607021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650494, 29.232220, 35.889645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582848, 29.460829, 35.568455>,  <39.542259, 29.597994, 35.375740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582848, 29.460829, 35.568455>,  <39.650494, 29.232220, 35.889645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582848, 29.460829, 35.568455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554416, -0.728749, -0.401929,
		-0.814876, 0.377210, 0.440101,
		-0.169111, 0.571522, -0.802972,
		39.532116, 29.632286, 35.327564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880016, 29.265303, 35.883518>,  <39.650494, 29.232220, 35.889645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880016, 29.265303, 35.883518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086620, 29.296080, 35.542393>,  <39.210583, 29.314547, 35.337715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086620, 29.296080, 35.542393>,  <38.880016, 29.265303, 35.883518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086620, 29.296080, 35.542393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530418, -0.753114, -0.389199,
		-0.672214, 0.653375, -0.348180,
		0.516512, 0.076944, -0.852816,
		39.241573, 29.319162, 35.286549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579739, 28.813931, 35.473713>,  <38.880016, 29.265303, 35.883518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579739, 28.813931, 35.473713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893688, 28.891947, 35.238449>,  <39.082058, 28.938757, 35.097290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893688, 28.891947, 35.238449>,  <38.579739, 28.813931, 35.473713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893688, 28.891947, 35.238449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157003, -0.855605, -0.493245,
		-0.599435, 0.479478, -0.640920,
		0.784874, 0.195042, -0.588159,
		39.129150, 28.950459, 35.062000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454586, 28.983812, 34.707775>,  <38.579739, 28.813931, 35.473713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454586, 28.983812, 34.707775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797760, 28.789053, 34.773350>,  <39.003666, 28.672197, 34.812695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797760, 28.789053, 34.773350>,  <38.454586, 28.983812, 34.707775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797760, 28.789053, 34.773350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341817, -0.779186, -0.525386,
		0.383544, 0.394713, -0.834922,
		0.857936, -0.486899, 0.163933,
		39.055141, 28.642982, 34.822529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830772, 29.104292, 34.178692>,  <38.454586, 28.983812, 34.707775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830772, 29.104292, 34.178692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531086, 29.362024, 34.240036>,  <37.351276, 29.516663, 34.276840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531086, 29.362024, 34.240036>,  <37.830772, 29.104292, 34.178692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531086, 29.362024, 34.240036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657217, -0.694518, -0.292763,
		-0.082126, -0.320132, 0.943807,
		-0.749213, 0.644329, 0.153358,
		37.306320, 29.555323, 34.286045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218315, 28.864580, 34.592331>,  <37.830772, 29.104292, 34.178692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218315, 28.864580, 34.592331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090729, 29.122585, 34.314564>,  <37.014175, 29.277388, 34.147903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090729, 29.122585, 34.314564>,  <37.218315, 28.864580, 34.592331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090729, 29.122585, 34.314564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563865, -0.718061, -0.407975,
		-0.761785, 0.261430, 0.592737,
		-0.318965, 0.645013, -0.694420,
		36.995037, 29.316090, 34.106239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687271, 28.395679, 34.719788>,  <37.218315, 28.864580, 34.592331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687271, 28.395679, 34.719788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418964, 28.382135, 35.016144>,  <36.257980, 28.374008, 35.193958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418964, 28.382135, 35.016144>,  <36.687271, 28.395679, 34.719788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418964, 28.382135, 35.016144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394523, 0.862188, -0.317780,
		-0.628029, -0.505456, -0.591687,
		-0.670769, -0.033860, 0.740893,
		36.217735, 28.371977, 35.238411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939350, 28.271828, 34.503719>,  <36.687271, 28.395679, 34.719788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939350, 28.271828, 34.503719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978783, 28.506081, 34.825542>,  <36.002441, 28.646633, 35.018635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978783, 28.506081, 34.825542>,  <35.939350, 28.271828, 34.503719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978783, 28.506081, 34.825542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583408, 0.688992, -0.430029,
		-0.806174, -0.426993, 0.409585,
		0.098581, 0.585634, 0.804559,
		36.008358, 28.681770, 35.066910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319653, 28.463448, 34.830318>,  <35.939350, 28.271828, 34.503719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319653, 28.463448, 34.830318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524506, 28.769476, 34.986465>,  <35.647419, 28.953093, 35.080154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524506, 28.769476, 34.986465>,  <35.319653, 28.463448, 34.830318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524506, 28.769476, 34.986465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680316, 0.638765, -0.359373,
		-0.524296, -0.081522, 0.847625,
		0.512137, 0.765071, 0.390363,
		35.678146, 28.998997, 35.103573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869759, 28.920147, 35.277107>,  <35.319653, 28.463448, 34.830318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869759, 28.920147, 35.277107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184357, 29.128815, 35.144871>,  <35.373116, 29.254015, 35.065529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184357, 29.128815, 35.144871>,  <34.869759, 28.920147, 35.277107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184357, 29.128815, 35.144871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613008, 0.594236, -0.520677,
		-0.075172, 0.612164, 0.787149,
		0.786492, 0.521670, -0.330592,
		35.420303, 29.285316, 35.045692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664162, 29.660852, 35.386326>,  <34.869759, 28.920147, 35.277107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664162, 29.660852, 35.386326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949924, 29.661207, 35.106434>,  <35.121380, 29.661421, 34.938499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949924, 29.661207, 35.106434>,  <34.664162, 29.660852, 35.386326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949924, 29.661207, 35.106434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519923, 0.669933, -0.529972,
		0.468304, 0.742422, 0.479064,
		0.714403, 0.000889, -0.699734,
		35.164246, 29.661474, 34.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867767, 30.357151, 35.229446>,  <34.664162, 29.660852, 35.386326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867767, 30.357151, 35.229446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942749, 30.137125, 34.903923>,  <34.987740, 30.005110, 34.708607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942749, 30.137125, 34.903923>,  <34.867767, 30.357151, 35.229446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942749, 30.137125, 34.903923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495203, 0.662588, -0.561917,
		0.848313, 0.508337, -0.148189,
		0.187455, -0.550065, -0.813812,
		34.998985, 29.972105, 34.659779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972107, 30.865786, 34.759613>,  <34.867767, 30.357151, 35.229446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972107, 30.865786, 34.759613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889729, 30.538651, 34.544678>,  <34.840302, 30.342369, 34.415718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889729, 30.538651, 34.544678>,  <34.972107, 30.865786, 34.759613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889729, 30.538651, 34.544678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522547, 0.556171, -0.646234,
		0.827365, 0.147696, -0.541898,
		-0.205942, -0.817838, -0.537335,
		34.827946, 30.293299, 34.383476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186245, 31.041067, 34.155891>,  <34.972107, 30.865786, 34.759613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186245, 31.041067, 34.155891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942852, 30.731424, 34.086021>,  <34.796818, 30.545639, 34.044102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942852, 30.731424, 34.086021>,  <35.186245, 31.041067, 34.155891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942852, 30.731424, 34.086021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479191, 0.533864, -0.696682,
		0.632557, -0.340217, -0.695791,
		-0.608480, -0.774107, -0.174670,
		34.760307, 30.499191, 34.033619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111954, 31.000698, 33.448627>,  <35.186245, 31.041067, 34.155891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111954, 31.000698, 33.448627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797207, 30.768337, 33.531948>,  <34.608356, 30.628920, 33.581940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797207, 30.768337, 33.531948>,  <35.111954, 31.000698, 33.448627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797207, 30.768337, 33.531948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521346, 0.445131, -0.728050,
		0.330204, -0.681477, -0.653111,
		-0.786870, -0.580902, 0.208301,
		34.561146, 30.594067, 33.594437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814739, 30.869259, 32.876076>,  <35.111954, 31.000698, 33.448627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814739, 30.869259, 32.876076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526833, 30.792574, 33.142963>,  <34.354088, 30.746563, 33.303097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526833, 30.792574, 33.142963>,  <34.814739, 30.869259, 32.876076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526833, 30.792574, 33.142963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574060, 0.704818, -0.416757,
		-0.390368, -0.682992, -0.617361,
		-0.719769, -0.191714, 0.667217,
		34.310902, 30.735060, 33.343128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261501, 30.785730, 32.391434>,  <34.814739, 30.869259, 32.876076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261501, 30.785730, 32.391434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114357, 30.854134, 32.757042>,  <34.026070, 30.895176, 32.976406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114357, 30.854134, 32.757042>,  <34.261501, 30.785730, 32.391434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114357, 30.854134, 32.757042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699588, 0.596641, -0.393187,
		-0.612580, -0.784077, -0.099845,
		-0.367860, 0.171008, 0.914021,
		34.003998, 30.905436, 33.031250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597073, 30.750828, 32.240520>,  <34.261501, 30.785730, 32.391434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597073, 30.750828, 32.240520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617474, 30.933125, 32.595982>,  <33.629715, 31.042501, 32.809258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617474, 30.933125, 32.595982>,  <33.597073, 30.750828, 32.240520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617474, 30.933125, 32.595982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761945, 0.592993, -0.260383,
		-0.645630, -0.663823, 0.377493,
		0.051003, 0.455740, 0.888651,
		33.632774, 31.069847, 32.862576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898228, 30.715872, 32.498455>,  <33.597073, 30.750828, 32.240520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898228, 30.715872, 32.498455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056667, 31.019459, 32.705173>,  <33.151730, 31.201611, 32.829205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056667, 31.019459, 32.705173>,  <32.898228, 30.715872, 32.498455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056667, 31.019459, 32.705173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750987, 0.591621, -0.293263,
		-0.528324, -0.271946, 0.804313,
		0.396097, 0.758966, 0.516795,
		33.175495, 31.247149, 32.860210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335339, 31.012705, 32.895676>,  <32.898228, 30.715872, 32.498455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335339, 31.012705, 32.895676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619659, 31.290459, 32.850792>,  <32.790253, 31.457111, 32.823864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619659, 31.290459, 32.850792>,  <32.335339, 31.012705, 32.895676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619659, 31.290459, 32.850792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686312, 0.649723, -0.326857,
		-0.154062, 0.309338, 0.938390,
		0.710802, 0.694385, -0.112205,
		32.832901, 31.498774, 32.817131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988379, 31.675621, 33.106922>,  <32.335339, 31.012705, 32.895676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988379, 31.675621, 33.106922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312386, 31.765615, 32.890308>,  <32.506790, 31.819613, 32.760342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312386, 31.765615, 32.890308>,  <31.988379, 31.675621, 33.106922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312386, 31.765615, 32.890308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475444, 0.792534, -0.381894,
		0.343260, 0.566808, 0.748934,
		0.810016, 0.224987, -0.541530,
		32.555389, 31.833111, 32.727848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970560, 32.482311, 33.099072>,  <31.988379, 31.675621, 33.106922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970560, 32.482311, 33.099072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216209, 32.337048, 32.818798>,  <32.363598, 32.249889, 32.650635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216209, 32.337048, 32.818798>,  <31.970560, 32.482311, 33.099072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216209, 32.337048, 32.818798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386333, 0.635850, -0.668163,
		0.688184, 0.681034, 0.250190,
		0.614125, -0.363162, -0.700688,
		32.400448, 32.228100, 32.608593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347263, 33.035118, 32.717255>,  <31.970560, 32.482311, 33.099072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347263, 33.035118, 32.717255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319187, 32.727810, 32.462749>,  <32.302341, 32.543427, 32.310047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319187, 32.727810, 32.462749>,  <32.347263, 33.035118, 32.717255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319187, 32.727810, 32.462749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147360, 0.638826, -0.755107,
		0.986589, 0.040757, -0.158054,
		-0.070193, -0.768271, -0.636265,
		32.298130, 32.497330, 32.271870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630909, 33.257504, 32.141342>,  <32.347263, 33.035118, 32.717255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630909, 33.257504, 32.141342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422890, 32.941746, 32.010857>,  <32.298080, 32.752293, 31.932566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422890, 32.941746, 32.010857>,  <32.630909, 33.257504, 32.141342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422890, 32.941746, 32.010857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211134, 0.488871, -0.846421,
		0.827632, -0.371303, -0.420903,
		-0.520046, -0.789392, -0.326210,
		32.266876, 32.704929, 31.912994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655903, 33.309914, 31.461460>,  <32.630909, 33.257504, 32.141342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655903, 33.309914, 31.461460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342098, 33.065262, 31.502369>,  <32.153816, 32.918472, 31.526915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342098, 33.065262, 31.502369>,  <32.655903, 33.309914, 31.461460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342098, 33.065262, 31.502369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463526, 0.468823, -0.751897,
		0.411928, -0.637278, -0.651300,
		-0.784512, -0.611622, 0.102274,
		32.106747, 32.881775, 31.533051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614578, 32.991428, 30.798037>,  <32.655903, 33.309914, 31.461460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614578, 32.991428, 30.798037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252369, 32.956528, 30.964130>,  <32.035046, 32.935589, 31.063787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252369, 32.956528, 30.964130>,  <32.614578, 32.991428, 30.798037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252369, 32.956528, 30.964130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377318, 0.613204, -0.693983,
		-0.194072, -0.785091, -0.588191,
		-0.905520, -0.087252, 0.415234,
		31.980713, 32.930351, 31.088701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135109, 32.934319, 30.258764>,  <32.614578, 32.991428, 30.798037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135109, 32.934319, 30.258764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901913, 33.048019, 30.563219>,  <31.761995, 33.116238, 30.745892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901913, 33.048019, 30.563219>,  <32.135109, 32.934319, 30.258764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901913, 33.048019, 30.563219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391873, 0.722267, -0.569883,
		-0.711732, -0.630503, -0.309683,
		-0.582986, 0.284248, 0.761137,
		31.727016, 33.133293, 30.791561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499508, 32.977333, 29.882578>,  <32.135109, 32.934319, 30.258764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499508, 32.977333, 29.882578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479015, 33.177811, 30.228106>,  <31.466719, 33.298096, 30.435423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479015, 33.177811, 30.228106>,  <31.499508, 32.977333, 29.882578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479015, 33.177811, 30.228106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520820, 0.724613, -0.451312,
		-0.852128, -0.473017, 0.223906,
		-0.051233, 0.501190, 0.863819,
		31.463646, 33.328167, 30.487251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859957, 33.208920, 29.993784>,  <31.499508, 32.977333, 29.882578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859957, 33.208920, 29.993784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094376, 33.451939, 30.208235>,  <31.235027, 33.597752, 30.336906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094376, 33.451939, 30.208235>,  <30.859957, 33.208920, 29.993784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094376, 33.451939, 30.208235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311629, 0.779770, -0.542998,
		-0.747954, 0.151150, 0.646312,
		0.586048, 0.607547, 0.536129,
		31.270189, 33.634201, 30.369074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456869, 33.862461, 29.949097>,  <30.859957, 33.208920, 29.993784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456869, 33.862461, 29.949097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785349, 33.978859, 30.145445>,  <30.982437, 34.048698, 30.263254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785349, 33.978859, 30.145445>,  <30.456869, 33.862461, 29.949097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785349, 33.978859, 30.145445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151737, 0.940593, -0.303743,
		-0.550097, 0.174950, 0.816570,
		0.821200, 0.290992, 0.490871,
		31.031710, 34.066158, 30.292706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256517, 34.383678, 30.489943>,  <30.456869, 33.862461, 29.949097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256517, 34.383678, 30.489943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634756, 34.441681, 30.373449>,  <30.861700, 34.476482, 30.303555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634756, 34.441681, 30.373449>,  <30.256517, 34.383678, 30.489943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634756, 34.441681, 30.373449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217398, 0.947609, -0.234040,
		0.242035, 0.284621, 0.927583,
		0.945599, 0.145009, -0.291231,
		30.918436, 34.485184, 30.286079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369278, 35.051010, 30.611254>,  <30.256517, 34.383678, 30.489943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369278, 35.051010, 30.611254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654463, 34.965897, 30.343998>,  <30.825573, 34.914829, 30.183643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654463, 34.965897, 30.343998>,  <30.369278, 35.051010, 30.611254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654463, 34.965897, 30.343998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156171, 0.880731, -0.447129,
		0.683592, 0.423129, 0.594696,
		0.712960, -0.212780, -0.668141,
		30.868351, 34.902061, 30.143557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799353, 35.692623, 30.558146>,  <30.369278, 35.051010, 30.611254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799353, 35.692623, 30.558146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900406, 35.495129, 30.225304>,  <30.961039, 35.376633, 30.025599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900406, 35.495129, 30.225304>,  <30.799353, 35.692623, 30.558146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900406, 35.495129, 30.225304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196524, 0.868261, -0.455523,
		0.947393, -0.048449, 0.316383,
		0.252634, -0.493737, -0.832106,
		30.976196, 35.347008, 29.975672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475647, 35.969204, 30.404959>,  <30.799353, 35.692623, 30.558146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475647, 35.969204, 30.404959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326248, 35.795334, 30.077164>,  <31.236609, 35.691013, 29.880487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326248, 35.795334, 30.077164>,  <31.475647, 35.969204, 30.404959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326248, 35.795334, 30.077164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192085, 0.828032, -0.526751,
		0.907526, -0.354152, -0.225774,
		-0.373498, -0.434672, -0.819487,
		31.214199, 35.664932, 29.831318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791998, 36.377235, 29.953354>,  <31.475647, 35.969204, 30.404959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791998, 36.377235, 29.953354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506771, 36.179478, 29.754511>,  <31.335636, 36.060825, 29.635204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506771, 36.179478, 29.754511>,  <31.791998, 36.377235, 29.953354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506771, 36.179478, 29.754511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138221, 0.794259, -0.591648,
		0.687336, -0.353173, -0.634695,
		-0.713066, -0.494390, -0.497107,
		31.292850, 36.031162, 29.605379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878984, 36.395489, 29.254225>,  <31.791998, 36.377235, 29.953354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878984, 36.395489, 29.254225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489958, 36.302670, 29.260742>,  <31.256542, 36.246979, 29.264652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489958, 36.302670, 29.260742>,  <31.878984, 36.395489, 29.254225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489958, 36.302670, 29.260742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157211, 0.604046, -0.781289,
		0.171457, -0.762418, -0.623956,
		-0.972567, -0.232050, 0.016293,
		31.198187, 36.233055, 29.265631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742472, 36.387440, 28.587276>,  <31.878984, 36.395489, 29.254225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742472, 36.387440, 28.587276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395102, 36.411572, 28.784132>,  <31.186680, 36.426052, 28.902245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395102, 36.411572, 28.784132>,  <31.742472, 36.387440, 28.587276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395102, 36.411572, 28.784132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433522, 0.389305, -0.812712,
		-0.240623, -0.919131, -0.311927,
		-0.868423, 0.060330, 0.492140,
		31.134575, 36.429672, 28.931774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176840, 35.939987, 28.226526>,  <31.742472, 36.387440, 28.587276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176840, 35.939987, 28.226526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028273, 36.245693, 28.437408>,  <30.939133, 36.429115, 28.563938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028273, 36.245693, 28.437408>,  <31.176840, 35.939987, 28.226526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028273, 36.245693, 28.437408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473338, 0.332630, -0.815665,
		-0.798748, -0.552500, 0.238210,
		-0.371419, 0.764265, 0.527207,
		30.916847, 36.474972, 28.595570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479025, 36.016628, 27.954615>,  <31.176840, 35.939987, 28.226526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479025, 36.016628, 27.954615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554958, 36.362453, 28.140728>,  <30.600519, 36.569950, 28.252396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554958, 36.362453, 28.140728>,  <30.479025, 36.016628, 27.954615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554958, 36.362453, 28.140728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284229, 0.502003, -0.816827,
		-0.939775, 0.022815, 0.341032,
		0.189835, 0.864565, 0.465285,
		30.611908, 36.621822, 28.280313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877478, 36.383018, 27.844446>,  <30.479025, 36.016628, 27.954615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877478, 36.383018, 27.844446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165928, 36.640965, 27.945736>,  <30.338999, 36.795734, 28.006510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165928, 36.640965, 27.945736>,  <29.877478, 36.383018, 27.844446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165928, 36.640965, 27.945736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382220, 0.675166, -0.630919,
		-0.577827, 0.358185, 0.733362,
		0.721127, 0.644867, 0.253224,
		30.382265, 36.834423, 28.021704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476387, 36.963348, 27.965641>,  <29.877478, 36.383018, 27.844446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476387, 36.963348, 27.965641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860752, 37.037918, 27.883770>,  <30.091372, 37.082661, 27.834648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860752, 37.037918, 27.883770>,  <29.476387, 36.963348, 27.965641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860752, 37.037918, 27.883770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276162, 0.593301, -0.756127,
		-0.019524, 0.783096, 0.621594,
		0.960913, 0.186423, -0.204678,
		30.149025, 37.093845, 27.822367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401878, 37.659653, 27.760077>,  <29.476387, 36.963348, 27.965641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401878, 37.659653, 27.760077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769228, 37.560352, 27.636814>,  <29.989637, 37.500774, 27.562857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769228, 37.560352, 27.636814>,  <29.401878, 37.659653, 27.760077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769228, 37.560352, 27.636814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038674, 0.718704, -0.694240,
		0.393814, 0.649491, 0.650440,
		0.918376, -0.248247, -0.308154,
		30.044741, 37.485878, 27.544369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677887, 38.290207, 27.627342>,  <29.401878, 37.659653, 27.760077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677887, 38.290207, 27.627342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928787, 38.026768, 27.461060>,  <30.079327, 37.868706, 27.361290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928787, 38.026768, 27.461060>,  <29.677887, 38.290207, 27.627342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928787, 38.026768, 27.461060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084251, 0.588015, -0.804450,
		0.774249, 0.469566, 0.424319,
		0.627248, -0.658594, -0.415709,
		30.116962, 37.829189, 27.336348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192234, 38.623089, 27.358225>,  <29.677887, 38.290207, 27.627342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192234, 38.623089, 27.358225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194017, 38.302826, 27.118582>,  <30.195087, 38.110668, 26.974796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194017, 38.302826, 27.118582>,  <30.192234, 38.623089, 27.358225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194017, 38.302826, 27.118582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024545, 0.599020, -0.800358,
		0.999689, -0.011135, 0.022324,
		0.004460, -0.800657, -0.599107,
		30.195354, 38.062630, 26.938850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723337, 38.634293, 26.862629>,  <30.192234, 38.623089, 27.358225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723337, 38.634293, 26.862629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431419, 38.412964, 26.702013>,  <30.256268, 38.280167, 26.605644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431419, 38.412964, 26.702013>,  <30.723337, 38.634293, 26.862629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431419, 38.412964, 26.702013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014939, 0.574285, -0.818519,
		0.683503, -0.603349, -0.410845,
		-0.729795, -0.553323, -0.401539,
		30.212481, 38.246967, 26.581551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904909, 38.468147, 26.134411>,  <30.723337, 38.634293, 26.862629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904909, 38.468147, 26.134411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512451, 38.398609, 26.168190>,  <30.276976, 38.356884, 26.188457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512451, 38.398609, 26.168190>,  <30.904909, 38.468147, 26.134411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512451, 38.398609, 26.168190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169041, 0.560057, -0.811025,
		0.093699, -0.810008, -0.578885,
		-0.981145, -0.173847, 0.084448,
		30.218107, 38.346455, 26.193523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797829, 38.140297, 25.479660>,  <30.904909, 38.468147, 26.134411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797829, 38.140297, 25.479660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469622, 38.308075, 25.635002>,  <30.272697, 38.408741, 25.728207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469622, 38.308075, 25.635002>,  <30.797829, 38.140297, 25.479660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469622, 38.308075, 25.635002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184137, 0.449227, -0.874236,
		-0.541154, -0.788835, -0.291362,
		-0.820515, 0.419446, 0.388355,
		30.223467, 38.433910, 25.751509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313774, 38.103680, 25.013432>,  <30.797829, 38.140297, 25.479660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313774, 38.103680, 25.013432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174751, 38.413387, 25.224985>,  <30.091337, 38.599213, 25.351917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174751, 38.413387, 25.224985>,  <30.313774, 38.103680, 25.013432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174751, 38.413387, 25.224985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312606, 0.436099, -0.843857,
		-0.884015, -0.458619, 0.090472,
		-0.347554, 0.774265, 0.528885,
		30.070484, 38.645668, 25.383650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851606, 38.345978, 24.525385>,  <30.313774, 38.103680, 25.013432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851606, 38.345978, 24.525385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856516, 38.638725, 24.797920>,  <29.859461, 38.814373, 24.961441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856516, 38.638725, 24.797920>,  <29.851606, 38.345978, 24.525385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856516, 38.638725, 24.797920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351075, 0.641163, -0.682390,
		-0.936267, -0.230826, 0.264809,
		0.012272, 0.731867, 0.681337,
		29.860197, 38.858284, 25.002321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202278, 38.755642, 24.603994>,  <29.851606, 38.345978, 24.525385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202278, 38.755642, 24.603994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495756, 38.999413, 24.724190>,  <29.671843, 39.145676, 24.796307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495756, 38.999413, 24.724190>,  <29.202278, 38.755642, 24.603994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495756, 38.999413, 24.724190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208534, 0.622851, -0.754035,
		-0.646686, 0.490571, 0.584069,
		0.733696, 0.609423, 0.300489,
		29.715864, 39.182240, 24.814337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907072, 39.314674, 24.634598>,  <29.202278, 38.755642, 24.603994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907072, 39.314674, 24.634598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289673, 39.424534, 24.595268>,  <29.519234, 39.490452, 24.571671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289673, 39.424534, 24.595268>,  <28.907072, 39.314674, 24.634598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289673, 39.424534, 24.595268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246871, 0.582510, -0.774427,
		-0.155422, 0.765015, 0.624976,
		0.956504, 0.274651, -0.098325,
		29.576624, 39.506927, 24.565771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840054, 40.027721, 24.589502>,  <28.907072, 39.314674, 24.634598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840054, 40.027721, 24.589502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185019, 39.919216, 24.418545>,  <29.391996, 39.854115, 24.315969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185019, 39.919216, 24.418545>,  <28.840054, 40.027721, 24.589502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185019, 39.919216, 24.418545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193915, 0.602866, -0.773919,
		0.467595, 0.750314, 0.467317,
		0.862411, -0.271261, -0.427394,
		29.443741, 39.837837, 24.290327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413563, 40.574596, 24.525238>,  <28.840054, 40.027721, 24.589502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413563, 40.574596, 24.525238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394476, 40.304543, 24.230780>,  <29.383024, 40.142509, 24.054104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394476, 40.304543, 24.230780>,  <29.413563, 40.574596, 24.525238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394476, 40.304543, 24.230780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598921, 0.609146, -0.519841,
		0.799385, 0.416090, -0.433420,
		-0.047715, -0.675138, -0.736147,
		29.380161, 40.102001, 24.009935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660259, 40.807693, 23.887260>,  <29.413563, 40.574596, 24.525238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660259, 40.807693, 23.887260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414484, 40.515610, 23.767756>,  <29.267019, 40.340359, 23.696053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414484, 40.515610, 23.767756>,  <29.660259, 40.807693, 23.887260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414484, 40.515610, 23.767756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273684, 0.552434, -0.787346,
		0.739976, -0.402008, -0.539282,
		-0.614437, -0.730210, -0.298764,
		29.230152, 40.296547, 23.678125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017796, 40.442883, 23.237322>,  <29.660259, 40.807693, 23.887260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017796, 40.442883, 23.237322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191143, 40.142895, 23.037428>,  <30.295153, 39.962902, 22.917492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191143, 40.142895, 23.037428>,  <30.017796, 40.442883, 23.237322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191143, 40.142895, 23.037428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900893, -0.375360, -0.217939,
		-0.024133, 0.544658, -0.838311,
		0.433370, -0.749969, -0.499737,
		30.321154, 39.917904, 22.887506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551819, 40.301273, 22.758745>,  <30.017796, 40.442883, 23.237322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551819, 40.301273, 22.758745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739464, 39.949543, 22.725967>,  <29.852051, 39.738503, 22.706301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739464, 39.949543, 22.725967>,  <29.551819, 40.301273, 22.758745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739464, 39.949543, 22.725967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882940, -0.468950, -0.022446,
		-0.018690, 0.082881, -0.996384,
		0.469114, -0.879328, -0.081943,
		29.880198, 39.685745, 22.701384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093044, 40.201950, 22.178215>,  <29.551819, 40.301273, 22.758745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093044, 40.201950, 22.178215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399443, 40.143799, 21.927738>,  <30.583281, 40.108910, 21.777452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399443, 40.143799, 21.927738>,  <30.093044, 40.201950, 22.178215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399443, 40.143799, 21.927738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635024, 0.019617, 0.772243,
		-0.099983, -0.989182, 0.107345,
		0.765995, -0.145378, -0.626193,
		30.629242, 40.100185, 21.739880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505632, 39.594467, 22.306913>,  <30.093044, 40.201950, 22.178215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505632, 39.594467, 22.306913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736715, 39.867451, 22.127800>,  <30.875366, 40.031239, 22.020332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736715, 39.867451, 22.127800>,  <30.505632, 39.594467, 22.306913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736715, 39.867451, 22.127800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630660, -0.024928, 0.775659,
		0.518190, -0.730503, -0.444798,
		0.577708, 0.682455, -0.447782,
		30.910028, 40.072186, 21.993465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241390, 39.427341, 22.218735>,  <30.505632, 39.594467, 22.306913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241390, 39.427341, 22.218735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250206, 39.825542, 22.255604>,  <31.255495, 40.064461, 22.277725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250206, 39.825542, 22.255604>,  <31.241390, 39.427341, 22.218735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250206, 39.825542, 22.255604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554354, -0.088893, 0.827520,
		0.831989, 0.032860, -0.553818,
		0.022038, 0.995499, 0.092174,
		31.256817, 40.124191, 22.283257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918407, 39.753864, 22.340212>,  <31.241390, 39.427341, 22.218735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918407, 39.753864, 22.340212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619722, 39.937241, 22.532980>,  <31.440512, 40.047268, 22.648640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619722, 39.937241, 22.532980>,  <31.918407, 39.753864, 22.340212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619722, 39.937241, 22.532980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449843, -0.185631, 0.873603,
		0.489957, 0.869120, -0.067615,
		-0.746715, 0.458444, 0.481919,
		31.395708, 40.074776, 22.677555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112328, 40.116638, 22.965128>,  <31.918407, 39.753864, 22.340212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112328, 40.116638, 22.965128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720257, 40.095940, 23.041620>,  <31.485014, 40.083519, 23.087515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720257, 40.095940, 23.041620>,  <32.112328, 40.116638, 22.965128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720257, 40.095940, 23.041620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197366, -0.171691, 0.965178,
		-0.017111, 0.983791, 0.178501,
		-0.980180, -0.051746, 0.191229,
		31.426203, 40.080418, 23.098989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398315, 39.412037, 22.864811>,  <32.112328, 40.116638, 22.965128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398315, 39.412037, 22.864811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100533, 39.542942, 23.097595>,  <31.921864, 39.621487, 23.237267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100533, 39.542942, 23.097595>,  <32.398315, 39.412037, 22.864811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100533, 39.542942, 23.097595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317126, -0.593715, 0.739549,
		0.587549, 0.735118, 0.338211,
		-0.744457, 0.327266, 0.581962,
		31.877195, 39.641121, 23.272184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629116, 39.531738, 23.674000>,  <32.398315, 39.412037, 22.864811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629116, 39.531738, 23.674000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238361, 39.448284, 23.655392>,  <32.003910, 39.398212, 23.644226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238361, 39.448284, 23.655392>,  <32.629116, 39.531738, 23.674000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238361, 39.448284, 23.655392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076919, -0.546137, 0.834157,
		-0.199445, 0.811298, 0.549562,
		-0.976886, -0.208640, -0.046520,
		31.945295, 39.385693, 23.641436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372715, 39.625553, 24.354202>,  <32.629116, 39.531738, 23.674000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372715, 39.625553, 24.354202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144150, 39.366486, 24.152605>,  <32.007011, 39.211044, 24.031647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144150, 39.366486, 24.152605>,  <32.372715, 39.625553, 24.354202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144150, 39.366486, 24.152605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151468, -0.686813, 0.710876,
		-0.806562, 0.329867, 0.490557,
		-0.571415, -0.647669, -0.503993,
		31.972725, 39.172184, 24.001408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945154, 39.290058, 24.827646>,  <32.372715, 39.625553, 24.354202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945154, 39.290058, 24.827646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957560, 39.058643, 24.501619>,  <31.965002, 38.919796, 24.306004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957560, 39.058643, 24.501619>,  <31.945154, 39.290058, 24.827646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957560, 39.058643, 24.501619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037798, -0.814199, 0.579354,
		-0.998804, -0.048775, -0.003384,
		0.031013, -0.578534, -0.815069,
		31.966864, 38.885082, 24.257099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600170, 38.714241, 25.054253>,  <31.945154, 39.290058, 24.827646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600170, 38.714241, 25.054253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786564, 38.588554, 24.723406>,  <31.898399, 38.513142, 24.524897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786564, 38.588554, 24.723406>,  <31.600170, 38.714241, 25.054253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786564, 38.588554, 24.723406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268273, -0.840633, 0.470494,
		-0.843132, -0.441143, -0.307443,
		0.466002, -0.314210, -0.827112,
		31.926359, 38.494289, 24.475269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281481, 38.005260, 24.766001>,  <31.600170, 38.714241, 25.054253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281481, 38.005260, 24.766001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649590, 38.038914, 24.613150>,  <31.870455, 38.059105, 24.521439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649590, 38.038914, 24.613150>,  <31.281481, 38.005260, 24.766001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649590, 38.038914, 24.613150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174330, -0.962486, 0.207916,
		-0.350297, -0.257955, -0.900417,
		0.920272, 0.084137, -0.382126,
		31.925671, 38.064156, 24.498512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341614, 37.433365, 24.286741>,  <31.281481, 38.005260, 24.766001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341614, 37.433365, 24.286741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724705, 37.536869, 24.337029>,  <31.954559, 37.598972, 24.367201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724705, 37.536869, 24.337029>,  <31.341614, 37.433365, 24.286741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724705, 37.536869, 24.337029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235237, -0.955955, 0.175539,
		0.165605, -0.138545, -0.976412,
		0.957726, 0.258758, 0.125720,
		32.012024, 37.614498, 24.374744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777134, 36.901653, 23.934254>,  <31.341614, 37.433365, 24.286741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777134, 36.901653, 23.934254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010632, 37.087944, 24.200289>,  <32.150730, 37.199718, 24.359909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010632, 37.087944, 24.200289>,  <31.777134, 36.901653, 23.934254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010632, 37.087944, 24.200289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272988, -0.884025, 0.379443,
		0.764671, -0.039936, -0.643182,
		0.583743, 0.465730, 0.665086,
		32.185753, 37.227665, 24.399815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241837, 36.490658, 24.033947>,  <31.777134, 36.901653, 23.934254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241837, 36.490658, 24.033947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280300, 36.699112, 24.373161>,  <32.303379, 36.824184, 24.576691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280300, 36.699112, 24.373161>,  <32.241837, 36.490658, 24.033947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280300, 36.699112, 24.373161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363809, -0.811438, 0.457397,
		0.926497, 0.264542, -0.267619,
		0.096155, 0.521139, 0.848038,
		32.309147, 36.855453, 24.627573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896790, 36.297802, 24.269630>,  <32.241837, 36.490658, 24.033947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896790, 36.297802, 24.269630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753746, 36.480431, 24.595491>,  <32.667919, 36.590008, 24.791008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753746, 36.480431, 24.595491>,  <32.896790, 36.297802, 24.269630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753746, 36.480431, 24.595491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410794, -0.706500, 0.576286,
		0.838667, 0.540740, 0.065095,
		-0.357611, 0.456571, 0.814652,
		32.646461, 36.617401, 24.839888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497044, 36.305389, 24.826546>,  <32.896790, 36.297802, 24.269630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497044, 36.305389, 24.826546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134361, 36.336281, 24.992399>,  <32.916752, 36.354816, 25.091911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134361, 36.336281, 24.992399>,  <33.497044, 36.305389, 24.826546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134361, 36.336281, 24.992399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208292, -0.772847, 0.599435,
		0.366745, 0.629875, 0.684657,
		-0.906704, 0.077231, 0.414636,
		32.862350, 36.359451, 25.116791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659473, 36.278885, 25.550245>,  <33.497044, 36.305389, 24.826546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659473, 36.278885, 25.550245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271862, 36.199356, 25.491663>,  <33.039295, 36.151638, 25.456514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271862, 36.199356, 25.491663>,  <33.659473, 36.278885, 25.550245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271862, 36.199356, 25.491663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083679, -0.822370, 0.562765,
		-0.232333, 0.533081, 0.813539,
		-0.969030, -0.198825, -0.146456,
		32.981152, 36.139709, 25.447725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367577, 36.168087, 26.255627>,  <33.659473, 36.278885, 25.550245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367577, 36.168087, 26.255627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128841, 36.003212, 25.980268>,  <32.985600, 35.904285, 25.815054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128841, 36.003212, 25.980268>,  <33.367577, 36.168087, 26.255627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128841, 36.003212, 25.980268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031909, -0.845087, 0.533675,
		-0.801726, 0.340484, 0.491229,
		-0.596839, -0.412186, -0.688393,
		32.949791, 35.879555, 25.773750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877731, 35.893902, 26.637161>,  <33.367577, 36.168087, 26.255627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877731, 35.893902, 26.637161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840080, 35.697342, 26.290827>,  <32.817490, 35.579407, 26.083027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840080, 35.697342, 26.290827>,  <32.877731, 35.893902, 26.637161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840080, 35.697342, 26.290827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083853, -0.862691, 0.498730,
		-0.992023, 0.119546, 0.039996,
		-0.094125, -0.491398, -0.865834,
		32.811844, 35.549923, 26.031076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265575, 35.489029, 26.675537>,  <32.877731, 35.893902, 26.637161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265575, 35.489029, 26.675537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485874, 35.294044, 26.404522>,  <32.618053, 35.177055, 26.241913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485874, 35.294044, 26.404522>,  <32.265575, 35.489029, 26.675537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485874, 35.294044, 26.404522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117315, -0.848893, 0.515382,
		-0.826380, -0.204366, -0.524720,
		0.550758, -0.487458, -0.677533,
		32.651100, 35.147808, 26.201262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979326, 34.814404, 26.646624>,  <32.265575, 35.489029, 26.675537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979326, 34.814404, 26.646624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349064, 34.750820, 26.507877>,  <32.570908, 34.712669, 26.424629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349064, 34.750820, 26.507877>,  <31.979326, 34.814404, 26.646624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349064, 34.750820, 26.507877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045238, -0.857019, 0.513296,
		-0.378864, -0.490155, -0.784991,
		0.924346, -0.158958, -0.346868,
		32.626369, 34.703133, 26.403816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006748, 34.062614, 26.520950>,  <31.979326, 34.814404, 26.646624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006748, 34.062614, 26.520950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395676, 34.149498, 26.486507>,  <32.629032, 34.201630, 26.465841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395676, 34.149498, 26.486507>,  <32.006748, 34.062614, 26.520950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395676, 34.149498, 26.486507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232394, -0.860788, 0.452810,
		0.024233, -0.460287, -0.887440,
		0.972320, 0.217208, -0.086109,
		32.687370, 34.214661, 26.460674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400772, 33.404110, 26.437437>,  <32.006748, 34.062614, 26.520950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400772, 33.404110, 26.437437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677917, 33.662926, 26.564737>,  <32.844204, 33.818214, 26.641117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677917, 33.662926, 26.564737>,  <32.400772, 33.404110, 26.437437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677917, 33.662926, 26.564737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499576, -0.749012, 0.435207,
		0.519971, -0.142546, -0.842206,
		0.692860, 0.647040, 0.318252,
		32.885777, 33.857037, 26.660213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149109, 33.049953, 26.356251>,  <32.400772, 33.404110, 26.437437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149109, 33.049953, 26.356251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169567, 33.346733, 26.623652>,  <33.181843, 33.524799, 26.784092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169567, 33.346733, 26.623652>,  <33.149109, 33.049953, 26.356251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169567, 33.346733, 26.623652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763919, -0.460228, 0.452347,
		0.643282, 0.487546, -0.590328,
		0.051145, 0.741950, 0.668502,
		33.184910, 33.569317, 26.824202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815506, 33.136147, 26.537186>,  <33.149109, 33.049953, 26.356251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815506, 33.136147, 26.537186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641850, 33.328835, 26.841677>,  <33.537655, 33.444447, 27.024372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641850, 33.328835, 26.841677>,  <33.815506, 33.136147, 26.537186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641850, 33.328835, 26.841677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761670, -0.254922, 0.595714,
		0.481021, 0.838427, -0.256240,
		-0.434141, 0.481721, 0.761227,
		33.511608, 33.473351, 27.070045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310844, 33.594608, 26.901363>,  <33.815506, 33.136147, 26.537186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310844, 33.594608, 26.901363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022655, 33.449265, 27.137632>,  <33.849743, 33.362057, 27.279394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022655, 33.449265, 27.137632>,  <34.310844, 33.594608, 26.901363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022655, 33.449265, 27.137632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693487, -0.377484, 0.613662,
		-0.000009, 0.851749, 0.523949,
		-0.720469, -0.363358, 0.590674,
		33.806515, 33.340256, 27.314835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655025, 33.454601, 27.481209>,  <34.310844, 33.594608, 26.901363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655025, 33.454601, 27.481209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307739, 33.294758, 27.598867>,  <34.099369, 33.198853, 27.669462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307739, 33.294758, 27.598867>,  <34.655025, 33.454601, 27.481209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307739, 33.294758, 27.598867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460508, -0.428178, 0.777558,
		-0.184772, 0.810541, 0.555772,
		-0.868212, -0.399608, 0.294145,
		34.047276, 33.174877, 27.687111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512032, 33.728371, 28.142849>,  <34.655025, 33.454601, 27.481209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512032, 33.728371, 28.142849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303307, 33.387527, 28.126682>,  <34.178074, 33.183022, 28.116983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303307, 33.387527, 28.126682>,  <34.512032, 33.728371, 28.142849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303307, 33.387527, 28.126682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449305, -0.314799, 0.836078,
		-0.725148, 0.418115, 0.547120,
		-0.521809, -0.852104, -0.040414,
		34.146763, 33.131897, 28.114557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292252, 33.603981, 28.835447>,  <34.512032, 33.728371, 28.142849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292252, 33.603981, 28.835447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205830, 33.254833, 28.660444>,  <34.153976, 33.045345, 28.555443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205830, 33.254833, 28.660444>,  <34.292252, 33.603981, 28.835447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205830, 33.254833, 28.660444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120544, -0.468508, 0.875197,
		-0.968912, 0.136350, 0.206442,
		-0.216053, -0.872874, -0.437507,
		34.141014, 32.992970, 28.529192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822506, 33.191647, 29.275000>,  <34.292252, 33.603981, 28.835447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822506, 33.191647, 29.275000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052269, 32.953674, 29.050106>,  <34.190128, 32.810890, 28.915171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052269, 32.953674, 29.050106>,  <33.822506, 33.191647, 29.275000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052269, 32.953674, 29.050106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340671, -0.450794, 0.825062,
		-0.744310, -0.665460, -0.056263,
		0.574409, -0.594935, -0.562233,
		34.224590, 32.775192, 28.881435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647247, 32.524399, 29.596680>,  <33.822506, 33.191647, 29.275000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647247, 32.524399, 29.596680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971325, 32.451283, 29.373909>,  <34.165771, 32.407413, 29.240246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971325, 32.451283, 29.373909>,  <33.647247, 32.524399, 29.596680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971325, 32.451283, 29.373909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349524, -0.612076, 0.709363,
		-0.470544, -0.769384, -0.432015,
		0.810198, -0.182787, -0.556927,
		34.214386, 32.396446, 29.206831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796997, 31.952669, 29.819025>,  <33.647247, 32.524399, 29.596680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796997, 31.952669, 29.819025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142860, 32.072445, 29.657677>,  <34.350376, 32.144310, 29.560867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142860, 32.072445, 29.657677>,  <33.796997, 31.952669, 29.819025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142860, 32.072445, 29.657677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499817, -0.432021, 0.750694,
		0.050522, -0.850703, -0.523214,
		0.864657, 0.299438, -0.403369,
		34.402256, 32.162277, 29.536667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216637, 31.470762, 30.086519>,  <33.796997, 31.952669, 29.819025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216637, 31.470762, 30.086519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465977, 31.765162, 29.980879>,  <34.615582, 31.941801, 29.917496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465977, 31.765162, 29.980879>,  <34.216637, 31.470762, 30.086519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465977, 31.765162, 29.980879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591326, -0.222696, 0.775074,
		0.511638, -0.639309, -0.574031,
		0.623347, 0.735996, -0.264100,
		34.652981, 31.985960, 29.901649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913773, 31.168177, 30.036285>,  <34.216637, 31.470762, 30.086519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913773, 31.168177, 30.036285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955875, 31.560995, 30.098902>,  <34.981136, 31.796686, 30.136473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955875, 31.560995, 30.098902>,  <34.913773, 31.168177, 30.036285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955875, 31.560995, 30.098902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650793, -0.187054, 0.735853,
		0.751923, 0.024420, -0.658798,
		0.105261, 0.982046, 0.156543,
		34.987453, 31.855610, 30.145864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616127, 31.229492, 30.129581>,  <34.913773, 31.168177, 30.036285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616127, 31.229492, 30.129581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492569, 31.596285, 30.230562>,  <35.418434, 31.816360, 30.291151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492569, 31.596285, 30.230562>,  <35.616127, 31.229492, 30.129581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492569, 31.596285, 30.230562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649604, 0.009533, 0.760213,
		0.694694, 0.398819, -0.598618,
		-0.308894, 0.916980, 0.252452,
		35.399902, 31.871380, 30.306297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230194, 31.876919, 30.067616>,  <35.616127, 31.229492, 30.129581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230194, 31.876919, 30.067616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941441, 31.911398, 30.342266>,  <35.768188, 31.932085, 30.507055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941441, 31.911398, 30.342266>,  <36.230194, 31.876919, 30.067616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941441, 31.911398, 30.342266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677972, -0.110772, 0.726694,
		0.138699, 0.990101, 0.021524,
		-0.721884, 0.086199, 0.686624,
		35.724876, 31.937258, 30.548254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646954, 32.171413, 30.632172>,  <36.230194, 31.876919, 30.067616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646954, 32.171413, 30.632172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290916, 32.108887, 30.803427>,  <36.077293, 32.071369, 30.906179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290916, 32.108887, 30.803427>,  <36.646954, 32.171413, 30.632172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290916, 32.108887, 30.803427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455339, -0.346368, 0.820180,
		0.020082, 0.924983, 0.379478,
		-0.890091, -0.156320, 0.428137,
		36.023888, 32.061989, 30.931868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625916, 32.503437, 31.240139>,  <36.646954, 32.171413, 30.632172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625916, 32.503437, 31.240139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342491, 32.222130, 31.263311>,  <36.172436, 32.053345, 31.277216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342491, 32.222130, 31.263311>,  <36.625916, 32.503437, 31.240139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342491, 32.222130, 31.263311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491081, -0.432492, 0.756168,
		-0.506730, 0.564244, 0.651808,
		-0.708565, -0.703264, 0.057933,
		36.129921, 32.011150, 31.280691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589565, 32.441536, 31.931616>,  <36.625916, 32.503437, 31.240139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589565, 32.441536, 31.931616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424591, 32.119324, 31.761431>,  <36.325607, 31.925997, 31.659321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424591, 32.119324, 31.761431>,  <36.589565, 32.441536, 31.931616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424591, 32.119324, 31.761431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309044, -0.563058, 0.766457,
		-0.856964, 0.184630, 0.481171,
		-0.412438, -0.805529, -0.425462,
		36.300861, 31.877665, 31.633793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379513, 32.136707, 32.518478>,  <36.589565, 32.441536, 31.931616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379513, 32.136707, 32.518478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383785, 31.838549, 32.251865>,  <36.386349, 31.659653, 32.091896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383785, 31.838549, 32.251865>,  <36.379513, 32.136707, 32.518478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383785, 31.838549, 32.251865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276888, -0.638306, 0.718261,
		-0.960843, -0.192224, 0.199576,
		0.010676, -0.745396, -0.666536,
		36.386990, 31.614929, 32.051903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997066, 31.571684, 32.796982>,  <36.379513, 32.136707, 32.518478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997066, 31.571684, 32.796982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230579, 31.383053, 32.532612>,  <36.370686, 31.269875, 32.373989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230579, 31.383053, 32.532612>,  <35.997066, 31.571684, 32.796982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230579, 31.383053, 32.532612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199648, -0.705657, 0.679844,
		-0.786985, -0.528829, -0.317797,
		0.583777, -0.471580, -0.660921,
		36.405712, 31.241579, 32.334335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822033, 30.891306, 32.821518>,  <35.997066, 31.571684, 32.796982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822033, 30.891306, 32.821518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193497, 30.902439, 32.673565>,  <36.416374, 30.909119, 32.584793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193497, 30.902439, 32.673565>,  <35.822033, 30.891306, 32.821518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193497, 30.902439, 32.673565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278035, -0.712300, 0.644457,
		-0.245534, -0.701323, -0.669223,
		0.928660, 0.027832, -0.369886,
		36.472095, 30.910789, 32.562599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088017, 30.173969, 32.897427>,  <35.822033, 30.891306, 32.821518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088017, 30.173969, 32.897427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434299, 30.365173, 32.838028>,  <36.642071, 30.479897, 32.802387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434299, 30.365173, 32.838028>,  <36.088017, 30.173969, 32.897427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434299, 30.365173, 32.838028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474727, -0.690032, 0.546342,
		0.158687, -0.543471, -0.824292,
		0.865709, 0.478011, -0.148501,
		36.694012, 30.508577, 32.793476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616817, 29.650549, 32.654549>,  <36.088017, 30.173969, 32.897427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616817, 29.650549, 32.654549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824554, 29.966251, 32.785614>,  <36.949196, 30.155672, 32.864254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824554, 29.966251, 32.785614>,  <36.616817, 29.650549, 32.654549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824554, 29.966251, 32.785614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685877, -0.613685, 0.391106,
		0.509763, 0.021619, -0.860043,
		0.519340, 0.789255, 0.327662,
		36.980358, 30.203028, 32.883911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361019, 29.652813, 32.460033>,  <36.616817, 29.650549, 32.654549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361019, 29.652813, 32.460033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343369, 29.868172, 32.796646>,  <37.332779, 29.997387, 32.998615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343369, 29.868172, 32.796646>,  <37.361019, 29.652813, 32.460033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343369, 29.868172, 32.796646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619470, -0.646117, 0.445859,
		0.783779, 0.540980, -0.305009,
		-0.044129, 0.538399, 0.841534,
		37.330132, 30.029692, 33.049107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378326, 29.228533, 31.808407>,  <37.361019, 29.652813, 32.460033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378326, 29.228533, 31.808407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474857, 28.850071, 31.722103>,  <37.532776, 28.622993, 31.670321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474857, 28.850071, 31.722103>,  <37.378326, 29.228533, 31.808407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474857, 28.850071, 31.722103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283551, 0.143881, -0.948102,
		0.928094, 0.289983, -0.233560,
		0.241329, -0.946154, -0.215761,
		37.547256, 28.566225, 31.657375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937180, 28.996887, 31.251011>,  <37.378326, 29.228533, 31.808407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937180, 28.996887, 31.251011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595955, 28.808819, 31.341549>,  <37.391220, 28.695978, 31.395872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595955, 28.808819, 31.341549>,  <37.937180, 28.996887, 31.251011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595955, 28.808819, 31.341549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425318, 0.375181, -0.823617,
		0.302314, -0.798864, -0.520021,
		-0.853060, -0.470165, 0.226349,
		37.340038, 28.667768, 31.409452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723507, 28.651297, 30.664301>,  <37.937180, 28.996887, 31.251011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723507, 28.651297, 30.664301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379635, 28.676945, 30.867020>,  <37.173313, 28.692333, 30.988651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379635, 28.676945, 30.867020>,  <37.723507, 28.651297, 30.664301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379635, 28.676945, 30.867020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477821, 0.249948, -0.842148,
		-0.180670, -0.966134, -0.184237,
		-0.859677, 0.064118, 0.506797,
		37.121731, 28.696180, 31.019058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372307, 28.337627, 30.219360>,  <37.723507, 28.651297, 30.664301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372307, 28.337627, 30.219360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107674, 28.525124, 30.453485>,  <36.948895, 28.637621, 30.593962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107674, 28.525124, 30.453485>,  <37.372307, 28.337627, 30.219360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107674, 28.525124, 30.453485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612885, 0.111741, -0.782231,
		-0.432067, -0.876240, 0.213358,
		-0.661582, 0.468740, 0.585314,
		36.909199, 28.665745, 30.629080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754913, 28.068684, 30.114094>,  <37.372307, 28.337627, 30.219360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754913, 28.068684, 30.114094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690395, 28.447716, 30.224422>,  <36.651684, 28.675135, 30.290621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690395, 28.447716, 30.224422>,  <36.754913, 28.068684, 30.114094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690395, 28.447716, 30.224422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527188, 0.153537, -0.835762,
		-0.834300, -0.280216, 0.474787,
		-0.161296, 0.947579, 0.275823,
		36.642006, 28.731989, 30.307169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066566, 28.232641, 29.909882>,  <36.754913, 28.068684, 30.114094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066566, 28.232641, 29.909882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205589, 28.602768, 29.970535>,  <36.289001, 28.824844, 30.006927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205589, 28.602768, 29.970535>,  <36.066566, 28.232641, 29.909882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205589, 28.602768, 29.970535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528447, 0.326882, -0.783512,
		-0.774564, 0.192183, 0.602591,
		0.347554, 0.925318, 0.151633,
		36.309856, 28.880363, 30.016026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582970, 28.656786, 29.878813>,  <36.066566, 28.232641, 29.909882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582970, 28.656786, 29.878813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884796, 28.906738, 29.798664>,  <36.065891, 29.056709, 29.750574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884796, 28.906738, 29.798664>,  <35.582970, 28.656786, 29.878813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884796, 28.906738, 29.798664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495289, 0.342013, -0.798571,
		-0.430483, 0.701819, 0.567569,
		0.754569, 0.624882, -0.200372,
		36.111168, 29.094202, 29.738552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259197, 29.318258, 29.731516>,  <35.582970, 28.656786, 29.878813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259197, 29.318258, 29.731516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620079, 29.341984, 29.560633>,  <35.836609, 29.356218, 29.458103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620079, 29.341984, 29.560633>,  <35.259197, 29.318258, 29.731516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620079, 29.341984, 29.560633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386783, 0.549553, -0.740534,
		0.190849, 0.833351, 0.518752,
		0.902206, 0.059314, -0.427207,
		35.890739, 29.359777, 29.432470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237148, 29.988997, 29.420233>,  <35.259197, 29.318258, 29.731516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237148, 29.988997, 29.420233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527740, 29.789036, 29.231630>,  <35.702095, 29.669060, 29.118469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527740, 29.789036, 29.231630>,  <35.237148, 29.988997, 29.420233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527740, 29.789036, 29.231630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423858, 0.214096, -0.880061,
		0.540894, 0.839201, -0.056351,
		0.726483, -0.499904, -0.471506,
		35.745686, 29.639065, 29.090179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311749, 30.379486, 28.919516>,  <35.237148, 29.988997, 29.420233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311749, 30.379486, 28.919516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458431, 30.028517, 28.795805>,  <35.546440, 29.817934, 28.721579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458431, 30.028517, 28.795805>,  <35.311749, 30.379486, 28.919516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458431, 30.028517, 28.795805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286026, 0.210006, -0.934926,
		0.885278, 0.431303, -0.173957,
		0.366704, -0.877426, -0.309278,
		35.568443, 29.765289, 28.703022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774208, 30.603048, 28.387926>,  <35.311749, 30.379486, 28.919516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774208, 30.603048, 28.387926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700100, 30.219784, 28.300655>,  <35.655636, 29.989824, 28.248293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700100, 30.219784, 28.300655>,  <35.774208, 30.603048, 28.387926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700100, 30.219784, 28.300655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084662, 0.236758, -0.967873,
		0.979034, -0.160845, -0.124984,
		-0.185268, -0.958162, -0.218176,
		35.644520, 29.932335, 28.235203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185596, 30.433485, 27.826984>,  <35.774208, 30.603048, 28.387926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185596, 30.433485, 27.826984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886681, 30.171818, 27.780313>,  <35.707329, 30.014816, 27.752312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886681, 30.171818, 27.780313>,  <36.185596, 30.433485, 27.826984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886681, 30.171818, 27.780313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106674, 0.291410, -0.950632,
		0.655876, -0.697955, -0.287552,
		-0.747294, -0.654170, -0.116675,
		35.662491, 29.975567, 27.745312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219002, 30.404976, 27.179455>,  <36.185596, 30.433485, 27.826984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219002, 30.404976, 27.179455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857498, 30.247066, 27.245626>,  <35.640594, 30.152321, 27.285330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857498, 30.247066, 27.245626>,  <36.219002, 30.404976, 27.179455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857498, 30.247066, 27.245626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327667, 0.389410, -0.860810,
		0.275405, -0.832174, -0.481289,
		-0.903762, -0.394774, 0.165431,
		35.586369, 30.128633, 27.295256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967220, 30.221428, 26.518295>,  <36.219002, 30.404976, 27.179455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967220, 30.221428, 26.518295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629559, 30.228474, 26.732622>,  <35.426964, 30.232700, 26.861217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629559, 30.228474, 26.732622>,  <35.967220, 30.221428, 26.518295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629559, 30.228474, 26.732622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458367, 0.494642, -0.738396,
		-0.278043, -0.868918, -0.409479,
		-0.844151, 0.017614, 0.535815,
		35.376312, 30.233757, 26.893366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527439, 30.085777, 26.032923>,  <35.967220, 30.221428, 26.518295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527439, 30.085777, 26.032923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312561, 30.259279, 26.322275>,  <35.183636, 30.363380, 26.495886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312561, 30.259279, 26.322275>,  <35.527439, 30.085777, 26.032923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312561, 30.259279, 26.322275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369219, 0.650170, -0.664046,
		-0.758353, -0.623807, -0.189117,
		-0.537195, 0.433755, 0.723379,
		35.151402, 30.389406, 26.539289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852825, 30.142719, 25.732033>,  <35.527439, 30.085777, 26.032923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852825, 30.142719, 25.732033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858856, 30.386566, 26.049053>,  <34.862476, 30.532875, 26.239265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858856, 30.386566, 26.049053>,  <34.852825, 30.142719, 25.732033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858856, 30.386566, 26.049053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502622, 0.689837, -0.521052,
		-0.864375, -0.390498, 0.316808,
		0.015076, 0.609619, 0.792551,
		34.863380, 30.569452, 26.286818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160286, 30.456137, 25.982927>,  <34.852825, 30.142719, 25.732033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160286, 30.456137, 25.982927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418015, 30.739569, 26.097998>,  <34.572651, 30.909628, 26.167040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418015, 30.739569, 26.097998>,  <34.160286, 30.456137, 25.982927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418015, 30.739569, 26.097998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570199, 0.695799, -0.436734,
		-0.509625, 0.117367, 0.852354,
		0.644325, 0.708582, 0.287674,
		34.611313, 30.952143, 26.184299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729160, 31.060581, 26.222538>,  <34.160286, 30.456137, 25.982927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729160, 31.060581, 26.222538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086575, 31.230654, 26.164825>,  <34.301022, 31.332697, 26.130198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086575, 31.230654, 26.164825>,  <33.729160, 31.060581, 26.222538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086575, 31.230654, 26.164825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442246, 0.777907, -0.446408,
		-0.077567, 0.462689, 0.883121,
		0.893533, 0.425183, -0.144283,
		34.354633, 31.358208, 26.121540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646248, 31.784771, 26.329809>,  <33.729160, 31.060581, 26.222538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646248, 31.784771, 26.329809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968182, 31.782873, 26.092419>,  <34.161343, 31.781734, 25.949984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968182, 31.782873, 26.092419>,  <33.646248, 31.784771, 26.329809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968182, 31.782873, 26.092419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347241, 0.807186, -0.477361,
		0.481312, 0.590277, 0.648006,
		0.804837, -0.004745, -0.593477,
		34.209633, 31.781450, 25.914375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863358, 32.481094, 26.204769>,  <33.646248, 31.784771, 26.329809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863358, 32.481094, 26.204769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036366, 32.269146, 25.912970>,  <34.140171, 32.141979, 25.737890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036366, 32.269146, 25.912970>,  <33.863358, 32.481094, 26.204769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036366, 32.269146, 25.912970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224731, 0.720202, -0.656357,
		0.873170, 0.447827, 0.192422,
		0.432517, -0.529868, -0.729499,
		34.166122, 32.110184, 25.694120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254707, 32.991173, 25.880907>,  <33.863358, 32.481094, 26.204769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254707, 32.991173, 25.880907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200138, 32.687309, 25.626564>,  <34.167397, 32.504993, 25.473959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200138, 32.687309, 25.626564>,  <34.254707, 32.991173, 25.880907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200138, 32.687309, 25.626564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117840, 0.649744, -0.750964,
		0.983617, -0.027518, -0.178156,
		-0.136421, -0.759655, -0.635857,
		34.159210, 32.459412, 25.435806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587044, 33.256683, 25.314484>,  <34.254707, 32.991173, 25.880907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587044, 33.256683, 25.314484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350082, 32.962040, 25.183969>,  <34.207905, 32.785252, 25.105661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350082, 32.962040, 25.183969>,  <34.587044, 33.256683, 25.314484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350082, 32.962040, 25.183969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200703, 0.527168, -0.825719,
		0.780243, -0.423671, -0.460136,
		-0.592402, -0.736612, -0.326287,
		34.172363, 32.741055, 25.086082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625000, 33.312824, 24.567913>,  <34.587044, 33.256683, 25.314484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625000, 33.312824, 24.567913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300159, 33.090340, 24.638479>,  <34.105255, 32.956848, 24.680819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300159, 33.090340, 24.638479>,  <34.625000, 33.312824, 24.567913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300159, 33.090340, 24.638479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479779, 0.464394, -0.744413,
		0.332123, -0.689179, -0.643993,
		-0.812100, -0.556211, 0.176418,
		34.056530, 32.923477, 24.691404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377491, 33.153255, 23.887468>,  <34.625000, 33.312824, 24.567913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377491, 33.153255, 23.887468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063019, 33.102108, 24.129316>,  <33.874336, 33.071419, 24.274426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063019, 33.102108, 24.129316>,  <34.377491, 33.153255, 23.887468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063019, 33.102108, 24.129316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579167, 0.493771, -0.648657,
		-0.215598, -0.860139, -0.462254,
		-0.786182, -0.127873, 0.604620,
		33.827164, 33.063747, 24.310703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840347, 33.088749, 23.448013>,  <34.377491, 33.153255, 23.887468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840347, 33.088749, 23.448013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626816, 33.159561, 23.778755>,  <33.498695, 33.202049, 23.977200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626816, 33.159561, 23.778755>,  <33.840347, 33.088749, 23.448013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626816, 33.159561, 23.778755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650215, 0.539212, -0.535231,
		-0.540601, -0.823354, -0.172740,
		-0.533827, 0.177028, 0.826855,
		33.466667, 33.212669, 24.026812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173004, 32.833965, 23.247034>,  <33.840347, 33.088749, 23.448013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173004, 32.833965, 23.247034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116657, 33.085625, 23.552799>,  <33.082851, 33.236622, 23.736258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116657, 33.085625, 23.552799>,  <33.173004, 32.833965, 23.247034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116657, 33.085625, 23.552799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796200, 0.386899, -0.465161,
		-0.588407, -0.674149, 0.446431,
		-0.140864, 0.629153, 0.764411,
		33.074398, 33.274372, 23.782122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406467, 32.834068, 23.346445>,  <33.173004, 32.833965, 23.247034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406467, 32.834068, 23.346445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570213, 33.160133, 23.510359>,  <32.668461, 33.355774, 23.608707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570213, 33.160133, 23.510359>,  <32.406467, 32.834068, 23.346445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570213, 33.160133, 23.510359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754559, 0.554978, -0.350200,
		-0.512894, -0.165848, 0.842280,
		0.409367, 0.815165, 0.409787,
		32.693024, 33.404682, 23.633295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848185, 33.178814, 23.665047>,  <32.406467, 32.834068, 23.346445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848185, 33.178814, 23.665047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123619, 33.463924, 23.611671>,  <32.288879, 33.634991, 23.579647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123619, 33.463924, 23.611671>,  <31.848185, 33.178814, 23.665047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123619, 33.463924, 23.611671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707788, 0.620589, -0.337498,
		-0.157750, 0.326841, 0.931820,
		0.688586, 0.712772, -0.133437,
		32.330196, 33.677757, 23.571640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626589, 33.774319, 24.015656>,  <31.848185, 33.178814, 23.665047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626589, 33.774319, 24.015656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899790, 33.929371, 23.768028>,  <32.063709, 34.022404, 23.619452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899790, 33.929371, 23.768028>,  <31.626589, 33.774319, 24.015656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899790, 33.929371, 23.768028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656814, 0.696728, -0.288384,
		0.319535, 0.603580, 0.730472,
		0.683003, 0.387635, -0.619069,
		32.104691, 34.045662, 23.582308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599419, 34.458309, 24.203087>,  <31.626589, 33.774319, 24.015656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599419, 34.458309, 24.203087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754498, 34.424267, 23.835947>,  <31.847546, 34.403843, 23.615664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754498, 34.424267, 23.835947>,  <31.599419, 34.458309, 24.203087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754498, 34.424267, 23.835947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696682, 0.624958, -0.352225,
		0.603592, 0.776006, 0.183006,
		0.387699, -0.085103, -0.917849,
		31.870808, 34.398735, 23.560593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552624, 35.210258, 23.959747>,  <31.599419, 34.458309, 24.203087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552624, 35.210258, 23.959747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620478, 34.989281, 23.633305>,  <31.661190, 34.856693, 23.437439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620478, 34.989281, 23.633305>,  <31.552624, 35.210258, 23.959747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620478, 34.989281, 23.633305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643983, 0.564711, -0.516126,
		0.745996, 0.613111, -0.259971,
		0.169634, -0.552445, -0.816106,
		31.671368, 34.823547, 23.388474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799780, 35.680733, 23.386904>,  <31.552624, 35.210258, 23.959747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799780, 35.680733, 23.386904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622490, 35.369480, 23.208887>,  <31.516115, 35.182728, 23.102077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622490, 35.369480, 23.208887>,  <31.799780, 35.680733, 23.386904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622490, 35.369480, 23.208887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477022, 0.625078, -0.617840,
		0.758948, -0.061547, -0.648236,
		-0.443225, -0.778131, -0.445042,
		31.489523, 35.136040, 23.075375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863506, 35.877243, 22.728407>,  <31.799780, 35.680733, 23.386904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863506, 35.877243, 22.728407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582199, 35.595188, 22.764635>,  <31.413414, 35.425957, 22.786371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582199, 35.595188, 22.764635>,  <31.863506, 35.877243, 22.728407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582199, 35.595188, 22.764635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562276, 0.473730, -0.677809,
		0.435035, -0.527611, -0.729637,
		-0.703271, -0.705128, 0.090574,
		31.371220, 35.383648, 22.791805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718758, 35.743961, 22.053865>,  <31.863506, 35.877243, 22.728407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718758, 35.743961, 22.053865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407459, 35.588726, 22.251337>,  <31.220680, 35.495583, 22.369820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407459, 35.588726, 22.251337>,  <31.718758, 35.743961, 22.053865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407459, 35.588726, 22.251337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620779, 0.594013, -0.511646,
		-0.094687, -0.704652, -0.703207,
		-0.778247, -0.388090, 0.493678,
		31.173985, 35.472298, 22.399441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318846, 35.514278, 21.523260>,  <31.718758, 35.743961, 22.053865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318846, 35.514278, 21.523260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057646, 35.535915, 21.825430>,  <30.900925, 35.548897, 22.006731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057646, 35.535915, 21.825430>,  <31.318846, 35.514278, 21.523260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057646, 35.535915, 21.825430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641494, 0.490705, -0.589656,
		-0.402586, -0.869645, -0.285732,
		-0.653001, 0.054092, 0.755423,
		30.861746, 35.552143, 22.052057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719173, 35.242584, 21.247684>,  <31.318846, 35.514278, 21.523260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719173, 35.242584, 21.247684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601030, 35.463829, 21.559282>,  <30.530144, 35.596577, 21.746241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601030, 35.463829, 21.559282>,  <30.719173, 35.242584, 21.247684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601030, 35.463829, 21.559282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645796, 0.485299, -0.589434,
		-0.704067, -0.677165, 0.213861,
		-0.295357, 0.553112, 0.778994,
		30.512423, 35.629761, 21.792980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024094, 35.213421, 21.257273>,  <30.719173, 35.242584, 21.247684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024094, 35.213421, 21.257273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027399, 35.505249, 21.530813>,  <30.029383, 35.680347, 21.694939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027399, 35.505249, 21.530813>,  <30.024094, 35.213421, 21.257273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027399, 35.505249, 21.530813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719114, 0.479539, -0.502908,
		-0.694843, -0.487612, 0.528610,
		0.008266, 0.729573, 0.683853,
		30.029879, 35.724121, 21.735970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320810, 35.197529, 21.620632>,  <30.024094, 35.213421, 21.257273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320810, 35.197529, 21.620632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477709, 35.563095, 21.662405>,  <29.571848, 35.782433, 21.687469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477709, 35.563095, 21.662405>,  <29.320810, 35.197529, 21.620632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477709, 35.563095, 21.662405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672783, 0.362454, -0.644973,
		-0.627301, 0.182728, 0.757036,
		0.392246, 0.913913, 0.104431,
		29.595383, 35.837269, 21.693735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610041, 35.126343, 21.822010>,  <29.320810, 35.197529, 21.620632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610041, 35.126343, 21.822010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349764, 34.889194, 21.632227>,  <28.193598, 34.746906, 21.518356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349764, 34.889194, 21.632227>,  <28.610041, 35.126343, 21.822010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349764, 34.889194, 21.632227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314491, -0.779128, 0.542268,
		-0.691156, 0.203636, 0.693423,
		-0.650691, -0.592867, -0.474458,
		28.154556, 34.711334, 21.489889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100090, 34.818108, 22.274364>,  <28.610041, 35.126343, 21.822010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100090, 34.818108, 22.274364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108746, 34.568649, 21.961802>,  <28.113939, 34.418972, 21.774263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108746, 34.568649, 21.961802>,  <28.100090, 34.818108, 22.274364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108746, 34.568649, 21.961802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367912, -0.721774, 0.586246,
		-0.929609, -0.300175, 0.213828,
		0.021641, -0.623649, -0.781405,
		28.115238, 34.381554, 21.727381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939484, 34.247929, 22.613407>,  <28.100090, 34.818108, 22.274364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939484, 34.247929, 22.613407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076712, 34.120705, 22.259878>,  <28.159048, 34.044369, 22.047762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076712, 34.120705, 22.259878>,  <27.939484, 34.247929, 22.613407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076712, 34.120705, 22.259878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323064, -0.843567, 0.428981,
		-0.882005, -0.432700, -0.186647,
		0.343069, -0.318064, -0.883820,
		28.179632, 34.025284, 21.994732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711390, 33.605728, 22.501104>,  <27.939484, 34.247929, 22.613407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711390, 33.605728, 22.501104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045834, 33.634785, 22.283613>,  <28.246500, 33.652218, 22.153118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045834, 33.634785, 22.283613>,  <27.711390, 33.605728, 22.501104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045834, 33.634785, 22.283613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363259, -0.816046, 0.449568,
		-0.411049, -0.573403, -0.708694,
		0.836111, 0.072645, -0.543729,
		28.296667, 33.656578, 22.120495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789001, 32.994812, 22.239614>,  <27.711390, 33.605728, 22.501104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789001, 32.994812, 22.239614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151369, 33.155598, 22.186340>,  <28.368790, 33.252068, 22.154377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151369, 33.155598, 22.186340>,  <27.789001, 32.994812, 22.239614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151369, 33.155598, 22.186340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418390, -0.801187, 0.427843,
		0.065271, -0.443314, -0.893987,
		0.905919, 0.401961, -0.133184,
		28.423145, 33.276184, 22.146385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344809, 32.373405, 22.153355>,  <27.789001, 32.994812, 22.239614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344809, 32.373405, 22.153355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559227, 32.697788, 22.247158>,  <28.687878, 32.892418, 22.303440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559227, 32.697788, 22.247158>,  <28.344809, 32.373405, 22.153355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559227, 32.697788, 22.247158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613361, -0.565015, 0.551857,
		0.580036, -0.151983, -0.800287,
		0.536048, 0.810962, 0.234509,
		28.720041, 32.941078, 22.317511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080866, 32.070923, 22.061113>,  <28.344809, 32.373405, 22.153355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080866, 32.070923, 22.061113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084841, 32.407459, 22.277279>,  <29.087225, 32.609383, 22.406979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084841, 32.407459, 22.277279>,  <29.080866, 32.070923, 22.061113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084841, 32.407459, 22.277279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766977, -0.353174, 0.535738,
		0.641598, 0.409160, -0.648799,
		0.009937, 0.841342, 0.540412,
		29.087822, 32.659863, 22.439402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819944, 32.295109, 22.080175>,  <29.080866, 32.070923, 22.061113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819944, 32.295109, 22.080175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646122, 32.477478, 22.390863>,  <29.541828, 32.586899, 22.577276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646122, 32.477478, 22.390863>,  <29.819944, 32.295109, 22.080175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646122, 32.477478, 22.390863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703221, -0.367059, 0.608891,
		0.562710, 0.810803, -0.161107,
		-0.434555, 0.455923, 0.776721,
		29.515755, 32.614254, 22.623880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413223, 32.545822, 22.416409>,  <29.819944, 32.295109, 22.080175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413223, 32.545822, 22.416409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112545, 32.552048, 22.680140>,  <29.932138, 32.555782, 22.838379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112545, 32.552048, 22.680140>,  <30.413223, 32.545822, 22.416409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112545, 32.552048, 22.680140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627039, -0.292974, 0.721796,
		0.204399, 0.955994, 0.210468,
		-0.751694, 0.015563, 0.659329,
		29.887037, 32.556717, 22.877937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687244, 32.957947, 22.986309>,  <30.413223, 32.545822, 22.416409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687244, 32.957947, 22.986309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388351, 32.733643, 23.128965>,  <30.209015, 32.599060, 23.214560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388351, 32.733643, 23.128965>,  <30.687244, 32.957947, 22.986309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388351, 32.733643, 23.128965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629806, -0.426253, 0.649348,
		-0.212108, 0.709830, 0.671679,
		-0.747232, -0.560759, 0.356643,
		30.164183, 32.565414, 23.235958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762012, 32.898590, 23.762486>,  <30.687244, 32.957947, 22.986309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762012, 32.898590, 23.762486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527885, 32.586304, 23.674952>,  <30.387409, 32.398933, 23.622431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527885, 32.586304, 23.674952>,  <30.762012, 32.898590, 23.762486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527885, 32.586304, 23.674952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483843, -0.552899, 0.678379,
		-0.650614, 0.291185, 0.701365,
		-0.585318, -0.780713, -0.218836,
		30.352289, 32.352089, 23.609301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769838, 32.625118, 24.405460>,  <30.762012, 32.898590, 23.762486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769838, 32.625118, 24.405460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656576, 32.336338, 24.152918>,  <30.588619, 32.163071, 24.001392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656576, 32.336338, 24.152918>,  <30.769838, 32.625118, 24.405460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656576, 32.336338, 24.152918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510504, -0.670747, 0.538038,
		-0.811916, -0.169960, 0.558485,
		-0.283157, -0.721951, -0.631355,
		30.571629, 32.119755, 23.963511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597305, 32.174088, 24.814316>,  <30.769838, 32.625118, 24.405460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597305, 32.174088, 24.814316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662510, 31.967737, 24.477911>,  <30.701633, 31.843927, 24.276068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662510, 31.967737, 24.477911>,  <30.597305, 32.174088, 24.814316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662510, 31.967737, 24.477911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474170, -0.706553, 0.525305,
		-0.865210, -0.484415, 0.129434,
		0.163013, -0.515873, -0.841013,
		30.711414, 31.812975, 24.225607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468689, 31.437511, 25.081268>,  <30.597305, 32.174088, 24.814316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468689, 31.437511, 25.081268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701097, 31.412941, 24.756641>,  <30.840542, 31.398199, 24.561865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701097, 31.412941, 24.756641>,  <30.468689, 31.437511, 25.081268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701097, 31.412941, 24.756641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587995, -0.657769, 0.470747,
		-0.562739, -0.750711, -0.346060,
		0.581022, -0.061426, -0.811567,
		30.875404, 31.394512, 24.513172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601469, 30.695322, 24.940022>,  <30.468689, 31.437511, 25.081268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601469, 30.695322, 24.940022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896290, 30.892540, 24.755127>,  <31.073181, 31.010872, 24.644190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896290, 30.892540, 24.755127>,  <30.601469, 30.695322, 24.940022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896290, 30.892540, 24.755127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635438, -0.738483, 0.225522,
		-0.230160, -0.459943, -0.857601,
		0.737051, 0.493046, -0.462235,
		31.117405, 31.040453, 24.616457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843443, 30.160009, 24.564949>,  <30.601469, 30.695322, 24.940022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843443, 30.160009, 24.564949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108442, 30.456841, 24.605778>,  <31.267443, 30.634939, 24.630274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108442, 30.456841, 24.605778>,  <30.843443, 30.160009, 24.564949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108442, 30.456841, 24.605778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693028, -0.658934, 0.292436,
		0.284268, -0.123001, -0.950822,
		0.662499, 0.742076, 0.102070,
		31.307192, 30.679462, 24.636398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525845, 29.870314, 24.413778>,  <30.843443, 30.160009, 24.564949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525845, 29.870314, 24.413778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615326, 30.207869, 24.608843>,  <31.669014, 30.410400, 24.725882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615326, 30.207869, 24.608843>,  <31.525845, 29.870314, 24.413778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615326, 30.207869, 24.608843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678909, -0.493909, 0.543265,
		0.699313, 0.209546, -0.683411,
		0.223704, 0.843886, 0.487660,
		31.682438, 30.461035, 24.755140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207981, 29.804379, 24.367025>,  <31.525845, 29.870314, 24.413778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207981, 29.804379, 24.367025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130531, 30.064161, 24.661160>,  <32.084061, 30.220030, 24.837641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130531, 30.064161, 24.661160>,  <32.207981, 29.804379, 24.367025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130531, 30.064161, 24.661160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728774, -0.406574, 0.550987,
		0.656810, 0.642577, -0.394584,
		-0.193623, 0.649456, 0.735335,
		32.072445, 30.258999, 24.881760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836578, 30.067287, 24.638067>,  <32.207981, 29.804379, 24.367025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836578, 30.067287, 24.638067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566216, 30.138350, 24.924170>,  <32.403999, 30.180986, 25.095831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566216, 30.138350, 24.924170>,  <32.836578, 30.067287, 24.638067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566216, 30.138350, 24.924170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597363, -0.436338, 0.672880,
		0.431632, 0.882070, 0.188800,
		-0.675908, 0.177654, 0.715254,
		32.363441, 30.191647, 25.138746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254192, 30.254463, 25.229147>,  <32.836578, 30.067287, 24.638067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254192, 30.254463, 25.229147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899040, 30.140154, 25.373375>,  <32.685951, 30.071568, 25.459911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899040, 30.140154, 25.373375>,  <33.254192, 30.254463, 25.229147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899040, 30.140154, 25.373375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456146, -0.444467, 0.770961,
		-0.060061, 0.848989, 0.524986,
		-0.887876, -0.285775, 0.360568,
		32.632679, 30.054420, 25.481544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290070, 30.261724, 25.937395>,  <33.254192, 30.254463, 25.229147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290070, 30.261724, 25.937395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963829, 30.032000, 25.909237>,  <32.768085, 29.894165, 25.892342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963829, 30.032000, 25.909237>,  <33.290070, 30.261724, 25.937395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963829, 30.032000, 25.909237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399816, -0.647339, 0.648921,
		-0.418253, 0.501118, 0.757592,
		-0.815605, -0.574311, -0.070397,
		32.719147, 29.859707, 25.888119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057480, 30.166851, 26.565916>,  <33.290070, 30.261724, 25.937395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057480, 30.166851, 26.565916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902412, 29.844095, 26.387640>,  <32.809372, 29.650442, 26.280674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902412, 29.844095, 26.387640>,  <33.057480, 30.166851, 26.565916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902412, 29.844095, 26.387640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409977, -0.583974, 0.700638,
		-0.825611, 0.088891, 0.557194,
		-0.387667, -0.806891, -0.445692,
		32.786114, 29.602028, 26.253933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801365, 29.801003, 27.150311>,  <33.057480, 30.166851, 26.565916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801365, 29.801003, 27.150311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839706, 29.552607, 26.839136>,  <32.862709, 29.403570, 26.652431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839706, 29.552607, 26.839136>,  <32.801365, 29.801003, 27.150311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839706, 29.552607, 26.839136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388996, -0.696018, 0.603524,
		-0.916240, -0.360463, 0.174848,
		0.095851, -0.620988, -0.777937,
		32.868462, 29.366310, 26.605755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440708, 29.203655, 27.421097>,  <32.801365, 29.801003, 27.150311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440708, 29.203655, 27.421097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678905, 29.098949, 27.117290>,  <32.821823, 29.036127, 26.935007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678905, 29.098949, 27.117290>,  <32.440708, 29.203655, 27.421097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678905, 29.098949, 27.117290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258256, -0.832867, 0.489526,
		-0.760716, -0.487660, -0.428367,
		0.595495, -0.261762, -0.759517,
		32.857555, 29.020420, 26.889435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343857, 28.506365, 27.337484>,  <32.440708, 29.203655, 27.421097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343857, 28.506365, 27.337484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702511, 28.605728, 27.190876>,  <32.917702, 28.665346, 27.102911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702511, 28.605728, 27.190876>,  <32.343857, 28.506365, 27.337484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702511, 28.605728, 27.190876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381387, -0.853807, 0.354341,
		-0.224918, -0.457501, -0.860294,
		0.896636, 0.248407, -0.366521,
		32.971500, 28.680250, 27.080919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674984, 27.905910, 27.261875>,  <32.343857, 28.506365, 27.337484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674984, 27.905910, 27.261875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976143, 28.168324, 27.240803>,  <33.156837, 28.325771, 27.228159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976143, 28.168324, 27.240803>,  <32.674984, 27.905910, 27.261875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976143, 28.168324, 27.240803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588903, -0.635785, 0.498969,
		0.293846, -0.406694, -0.865017,
		0.752893, 0.656031, -0.052680,
		33.202011, 28.365133, 27.224998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214821, 27.588337, 26.936852>,  <32.674984, 27.905910, 27.261875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214821, 27.588337, 26.936852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376183, 27.880682, 27.157070>,  <33.473000, 28.056089, 27.289202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376183, 27.880682, 27.157070>,  <33.214821, 27.588337, 26.936852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376183, 27.880682, 27.157070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617856, -0.661370, 0.425256,
		0.674919, 0.168606, -0.718370,
		0.403408, 0.730863, 0.550546,
		33.497204, 28.099941, 27.322233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978870, 27.467791, 26.902769>,  <33.214821, 27.588337, 26.936852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978870, 27.467791, 26.902769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933281, 27.687292, 27.234041>,  <33.905926, 27.818993, 27.432804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933281, 27.687292, 27.234041>,  <33.978870, 27.467791, 26.902769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933281, 27.687292, 27.234041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479755, -0.699570, 0.529563,
		0.869968, 0.457680, -0.183532,
		-0.113977, 0.548753, 0.828178,
		33.899090, 27.851917, 27.482494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675686, 27.523039, 27.213638>,  <33.978870, 27.467791, 26.902769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675686, 27.523039, 27.213638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402313, 27.599840, 27.495363>,  <34.238289, 27.645922, 27.664398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402313, 27.599840, 27.495363>,  <34.675686, 27.523039, 27.213638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402313, 27.599840, 27.495363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515160, -0.556734, 0.651657,
		0.517236, 0.808197, 0.281577,
		-0.683431, 0.192003, 0.704313,
		34.197285, 27.657442, 27.706657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022732, 27.662701, 27.904749>,  <34.675686, 27.523039, 27.213638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022732, 27.662701, 27.904749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659180, 27.576218, 28.047405>,  <34.441048, 27.524328, 28.132999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659180, 27.576218, 28.047405>,  <35.022732, 27.662701, 27.904749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659180, 27.576218, 28.047405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416753, -0.503590, 0.756779,
		0.015979, 0.836452, 0.547807,
		-0.908879, -0.216207, 0.356640,
		34.386517, 27.511356, 28.154398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047817, 27.743088, 28.636311>,  <35.022732, 27.662701, 27.904749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047817, 27.743088, 28.636311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707039, 27.539806, 28.585852>,  <34.502571, 27.417837, 28.555576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707039, 27.539806, 28.585852>,  <35.047817, 27.743088, 28.636311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707039, 27.539806, 28.585852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264147, -0.625121, 0.734472,
		-0.452119, 0.592411, 0.666812,
		-0.851948, -0.508205, -0.126146,
		34.451454, 27.387344, 28.548008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756733, 27.553797, 29.293575>,  <35.047817, 27.743088, 28.636311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756733, 27.553797, 29.293575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566971, 27.297432, 29.052189>,  <34.453114, 27.143614, 28.907356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566971, 27.297432, 29.052189>,  <34.756733, 27.553797, 29.293575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566971, 27.297432, 29.052189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243919, -0.754381, 0.609436,
		-0.845838, 0.141923, 0.514214,
		-0.474406, -0.640911, -0.603466,
		34.424648, 27.105158, 28.871149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262985, 27.185923, 29.744137>,  <34.756733, 27.553797, 29.293575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262985, 27.185923, 29.744137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331890, 26.955608, 29.424437>,  <34.373234, 26.817421, 29.232616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331890, 26.955608, 29.424437>,  <34.262985, 27.185923, 29.744137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331890, 26.955608, 29.424437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270954, -0.752383, 0.600420,
		-0.947053, -0.319988, 0.026406,
		0.172260, -0.575785, -0.799249,
		34.383568, 26.782873, 29.184662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985744, 26.499712, 29.973942>,  <34.262985, 27.185923, 29.744137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985744, 26.499712, 29.973942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229694, 26.394209, 29.675014>,  <34.376064, 26.330908, 29.495657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229694, 26.394209, 29.675014>,  <33.985744, 26.499712, 29.973942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229694, 26.394209, 29.675014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295721, -0.799140, 0.523378,
		-0.735257, -0.540193, -0.409376,
		0.609874, -0.263756, -0.747320,
		34.412655, 26.315083, 29.450819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934299, 25.734701, 29.787481>,  <33.985744, 26.499712, 29.973942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934299, 25.734701, 29.787481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302708, 25.860178, 29.695126>,  <34.523754, 25.935465, 29.639713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302708, 25.860178, 29.695126>,  <33.934299, 25.734701, 29.787481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302708, 25.860178, 29.695126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389466, -0.733516, 0.557020,
		0.005374, -0.602952, -0.797759,
		0.921025, 0.313694, -0.230887,
		34.579014, 25.954287, 29.625860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221088, 25.148102, 29.886126>,  <33.934299, 25.734701, 29.787481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221088, 25.148102, 29.886126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528393, 25.397312, 29.827326>,  <34.712776, 25.546839, 29.792046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528393, 25.397312, 29.827326>,  <34.221088, 25.148102, 29.886126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528393, 25.397312, 29.827326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527462, -0.486008, 0.696835,
		0.362702, -0.612892, -0.702005,
		0.768265, 0.623025, -0.147001,
		34.758873, 25.584219, 29.783226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737942, 24.711401, 29.933914>,  <34.221088, 25.148102, 29.886126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737942, 24.711401, 29.933914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894772, 25.073429, 29.999788>,  <34.988869, 25.290646, 30.039312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894772, 25.073429, 29.999788>,  <34.737942, 24.711401, 29.933914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894772, 25.073429, 29.999788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419781, -0.335317, 0.843414,
		0.818571, -0.261552, -0.511402,
		0.392078, 0.905071, 0.164686,
		35.012394, 25.344950, 30.049194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396393, 24.615269, 29.827541>,  <34.737942, 24.711401, 29.933914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396393, 24.615269, 29.827541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356182, 24.944288, 30.051437>,  <35.332054, 25.141701, 30.185776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356182, 24.944288, 30.051437>,  <35.396393, 24.615269, 29.827541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356182, 24.944288, 30.051437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578813, -0.409236, 0.705338,
		0.809240, 0.394893, -0.434960,
		-0.100531, 0.822548, 0.559739,
		35.326023, 25.191053, 30.219358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109386, 24.683990, 30.214218>,  <35.396393, 24.615269, 29.827541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109386, 24.683990, 30.214218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856789, 24.924730, 30.409767>,  <35.705231, 25.069174, 30.527096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856789, 24.924730, 30.409767>,  <36.109386, 24.683990, 30.214218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856789, 24.924730, 30.409767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399201, -0.288153, 0.870406,
		0.664725, 0.744810, -0.058294,
		-0.631490, 0.601851, 0.488872,
		35.667343, 25.105286, 30.556429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467964, 25.121307, 30.654335>,  <36.109386, 24.683990, 30.214218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467964, 25.121307, 30.654335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105991, 25.131523, 30.824251>,  <35.888809, 25.137653, 30.926201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105991, 25.131523, 30.824251>,  <36.467964, 25.121307, 30.654335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105991, 25.131523, 30.824251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422532, -0.064934, 0.904019,
		0.050672, 0.997563, 0.047970,
		-0.904930, 0.025540, 0.424792,
		35.834511, 25.139185, 30.951689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395885, 25.578840, 31.238646>,  <36.467964, 25.121307, 30.654335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395885, 25.578840, 31.238646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122849, 25.299711, 31.325470>,  <35.959026, 25.132235, 31.377565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122849, 25.299711, 31.325470>,  <36.395885, 25.578840, 31.238646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122849, 25.299711, 31.325470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503010, -0.233159, 0.832237,
		-0.530142, 0.677261, 0.510163,
		-0.682591, -0.697821, 0.217062,
		35.918072, 25.090364, 31.390589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133080, 25.669657, 31.974037>,  <36.395885, 25.578840, 31.238646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133080, 25.669657, 31.974037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092690, 25.297485, 31.833120>,  <36.068455, 25.074183, 31.748571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092690, 25.297485, 31.833120>,  <36.133080, 25.669657, 31.974037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092690, 25.297485, 31.833120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222107, -0.366246, 0.903622,
		-0.969780, 0.012999, 0.243637,
		-0.100977, -0.930427, -0.352291,
		36.062397, 25.018356, 31.727432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535099, 25.203926, 32.070984>,  <36.133080, 25.669657, 31.974037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535099, 25.203926, 32.070984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885448, 25.012053, 32.091938>,  <36.095657, 24.896929, 32.104511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885448, 25.012053, 32.091938>,  <35.535099, 25.203926, 32.070984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885448, 25.012053, 32.091938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031455, 0.051579, 0.998173,
		-0.481511, -0.875923, 0.030088,
		0.875875, -0.479685, 0.052388,
		36.148212, 24.868147, 32.107655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776005, 25.209005, 32.744102>,  <35.535099, 25.203926, 32.070984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776005, 25.209005, 32.744102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063454, 24.962585, 32.615067>,  <36.235924, 24.814734, 32.537643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063454, 24.962585, 32.615067>,  <35.776005, 25.209005, 32.744102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063454, 24.962585, 32.615067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372651, -0.050512, 0.926596,
		-0.587124, -0.786086, 0.193273,
		0.718621, -0.616050, -0.322593,
		36.279041, 24.777771, 32.518288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118046, 24.788956, 32.563457>,  <35.776005, 25.209005, 32.744102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118046, 24.788956, 32.563457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062893, 24.962938, 32.919392>,  <35.029800, 25.067327, 33.132950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062893, 24.962938, 32.919392>,  <35.118046, 24.788956, 32.563457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062893, 24.962938, 32.919392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390732, 0.849437, -0.354663,
		-0.910119, 0.298785, -0.287073,
		-0.137883, 0.434954, 0.889833,
		35.021526, 25.093424, 33.186340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742821, 25.358633, 32.408112>,  <35.118046, 24.788956, 32.563457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742821, 25.358633, 32.408112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963585, 25.399708, 32.739132>,  <35.096043, 25.424353, 32.937744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963585, 25.399708, 32.739132>,  <34.742821, 25.358633, 32.408112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963585, 25.399708, 32.739132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372665, 0.857406, -0.354931,
		-0.745997, 0.504292, 0.434945,
		0.551914, 0.102689, 0.827554,
		35.129158, 25.430515, 32.987400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581245, 25.928268, 32.933720>,  <34.742821, 25.358633, 32.408112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581245, 25.928268, 32.933720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971783, 25.842499, 32.922558>,  <35.206104, 25.791037, 32.915859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971783, 25.842499, 32.922558>,  <34.581245, 25.928268, 32.933720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971783, 25.842499, 32.922558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187331, 0.903233, -0.386105,
		0.107996, 0.371743, 0.922033,
		0.976342, -0.214423, -0.027907,
		35.264687, 25.778172, 32.914185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450787, 25.416512, 33.493900>,  <34.581245, 25.928268, 32.933720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450787, 25.416512, 33.493900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826332, 25.402708, 33.630924>,  <35.051659, 25.394426, 33.713139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826332, 25.402708, 33.630924>,  <34.450787, 25.416512, 33.493900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826332, 25.402708, 33.630924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090520, 0.935220, 0.342300,
		-0.332185, -0.352381, 0.874918,
		0.938861, -0.034509, 0.342564,
		35.107990, 25.392355, 33.733692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644875, 24.802437, 33.847225>,  <34.450787, 25.416512, 33.493900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644875, 24.802437, 33.847225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007767, 24.755632, 34.008839>,  <35.225502, 24.727551, 34.105808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007767, 24.755632, 34.008839>,  <34.644875, 24.802437, 33.847225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007767, 24.755632, 34.008839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015968, 0.969419, 0.244891,
		-0.420337, -0.215721, 0.881352,
		0.907228, -0.117010, 0.404038,
		35.279934, 24.720530, 34.130051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745632, 24.974247, 34.641689>,  <34.644875, 24.802437, 33.847225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745632, 24.974247, 34.641689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056019, 25.067955, 34.407429>,  <35.242252, 25.124180, 34.266872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056019, 25.067955, 34.407429>,  <34.745632, 24.974247, 34.641689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056019, 25.067955, 34.407429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019882, 0.918925, 0.393931,
		0.630456, -0.317323, 0.708400,
		0.775970, 0.234272, -0.585651,
		35.288811, 25.138237, 34.231735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228165, 25.173038, 35.160835>,  <34.745632, 24.974247, 34.641689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228165, 25.173038, 35.160835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250374, 25.335928, 34.796181>,  <35.263699, 25.433662, 34.577389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250374, 25.335928, 34.796181>,  <35.228165, 25.173038, 35.160835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250374, 25.335928, 34.796181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054632, 0.912919, 0.404468,
		0.996962, 0.027348, 0.072933,
		0.055521, 0.407224, -0.911640,
		35.267029, 25.458096, 34.522690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969059, 25.546940, 34.944984>,  <35.228165, 25.173038, 35.160835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969059, 25.546940, 34.944984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618538, 25.700708, 34.828835>,  <35.408226, 25.792971, 34.759144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618538, 25.700708, 34.828835>,  <35.969059, 25.546940, 34.944984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618538, 25.700708, 34.828835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184186, 0.824272, 0.535398,
		0.445167, 0.415686, -0.793115,
		-0.876300, 0.384422, -0.290375,
		35.355648, 25.816034, 34.741722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155819, 26.153467, 34.968998>,  <35.969059, 25.546940, 34.944984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155819, 26.153467, 34.968998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756649, 26.144070, 34.992950>,  <35.517147, 26.138432, 35.007320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756649, 26.144070, 34.992950>,  <36.155819, 26.153467, 34.968998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756649, 26.144070, 34.992950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020058, 0.770847, 0.636705,
		-0.061114, 0.636588, -0.768779,
		-0.997929, -0.023491, 0.059878,
		35.457272, 26.137022, 35.010914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532848, 26.651669, 35.182705>,  <36.155819, 26.153467, 34.968998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532848, 26.651669, 35.182705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281548, 26.875202, 34.966187>,  <36.130768, 27.009323, 34.836273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281548, 26.875202, 34.966187>,  <36.532848, 26.651669, 35.182705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281548, 26.875202, 34.966187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689564, -0.077773, 0.720037,
		0.360282, 0.825625, 0.434213,
		-0.628250, 0.558834, -0.541300,
		36.093071, 27.042852, 34.803795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246143, 26.509762, 34.955414>,  <36.532848, 26.651669, 35.182705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246143, 26.509762, 34.955414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006359, 26.828897, 34.929806>,  <36.862488, 27.020378, 34.914440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006359, 26.828897, 34.929806>,  <37.246143, 26.509762, 34.955414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006359, 26.828897, 34.929806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429207, 0.387935, 0.815652,
		0.675592, 0.461478, -0.574990,
		-0.599464, 0.797837, -0.064016,
		36.826519, 27.068249, 34.910603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746201, 27.082815, 34.979843>,  <37.246143, 26.509762, 34.955414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746201, 27.082815, 34.979843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382427, 27.156557, 35.128941>,  <37.164162, 27.200802, 35.218399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382427, 27.156557, 35.128941>,  <37.746201, 27.082815, 34.979843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382427, 27.156557, 35.128941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414383, 0.326742, 0.849427,
		0.034807, 0.926958, -0.373546,
		-0.909437, 0.184357, 0.372742,
		37.109596, 27.211864, 35.240765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100254, 27.478806, 34.436329>,  <37.746201, 27.082815, 34.979843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100254, 27.478806, 34.436329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079758, 27.517754, 34.038757>,  <38.067459, 27.541122, 33.800213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079758, 27.517754, 34.038757>,  <38.100254, 27.478806, 34.436329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079758, 27.517754, 34.038757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628336, -0.770428, -0.107868,
		-0.776253, -0.630048, -0.021704,
		-0.051240, 0.097370, -0.993928,
		38.064384, 27.546965, 33.740578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028156, 28.178703, 34.634777>,  <38.100254, 27.478806, 34.436329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028156, 28.178703, 34.634777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299049, 28.169853, 34.340603>,  <38.461586, 28.164543, 34.164097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299049, 28.169853, 34.340603>,  <38.028156, 28.178703, 34.634777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299049, 28.169853, 34.340603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566496, 0.653512, 0.502001,
		0.469510, -0.756593, 0.455112,
		0.677231, -0.022124, -0.735437,
		38.502220, 28.163216, 34.119972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742794, 28.062216, 34.860893>,  <38.028156, 28.178703, 34.634777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742794, 28.062216, 34.860893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768742, 28.291842, 34.534397>,  <38.784309, 28.429617, 34.338501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768742, 28.291842, 34.534397>,  <38.742794, 28.062216, 34.860893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768742, 28.291842, 34.534397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551977, 0.660790, 0.508604,
		0.831332, -0.483535, -0.274008,
		0.064866, 0.574065, -0.816236,
		38.788200, 28.464062, 34.289528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480022, 28.214306, 34.713551>,  <38.742794, 28.062216, 34.860893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480022, 28.214306, 34.713551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255817, 28.516386, 34.577610>,  <39.121296, 28.697634, 34.496044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255817, 28.516386, 34.577610>,  <39.480022, 28.214306, 34.713551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255817, 28.516386, 34.577610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627445, 0.655100, 0.420901,
		0.540502, 0.022681, -0.841037,
		-0.560510, 0.755202, -0.339851,
		39.087666, 28.742947, 34.475655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967178, 28.736526, 34.355995>,  <39.480022, 28.214306, 34.713551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967178, 28.736526, 34.355995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631512, 28.890398, 34.509789>,  <39.430111, 28.982721, 34.602062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631512, 28.890398, 34.509789>,  <39.967178, 28.736526, 34.355995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631512, 28.890398, 34.509789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522812, 0.765382, 0.375310,
		-0.149900, 0.515957, -0.843397,
		-0.839165, 0.384679, 0.384479,
		39.379761, 29.005802, 34.625134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752773, 29.500004, 34.055382>,  <39.967178, 28.736526, 34.355995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752773, 29.500004, 34.055382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589676, 29.451181, 34.417343>,  <39.491817, 29.421888, 34.634521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589676, 29.451181, 34.417343>,  <39.752773, 29.500004, 34.055382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589676, 29.451181, 34.417343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424819, 0.851877, 0.306324,
		-0.808254, 0.509322, -0.295494,
		-0.407742, -0.122056, 0.904903,
		39.467354, 29.414564, 34.688812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381554, 30.166666, 34.179131>,  <39.752773, 29.500004, 34.055382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381554, 30.166666, 34.179131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435291, 30.019003, 34.546974>,  <39.467533, 29.930405, 34.767681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435291, 30.019003, 34.546974>,  <39.381554, 30.166666, 34.179131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435291, 30.019003, 34.546974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447170, 0.850742, 0.276184,
		-0.884302, 0.374115, 0.279370,
		0.134347, -0.369156, 0.919606,
		39.475594, 29.908257, 34.822857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085850, 30.693104, 34.731960>,  <39.381554, 30.166666, 34.179131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085850, 30.693104, 34.731960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355011, 30.466139, 34.921803>,  <39.516506, 30.329960, 35.035706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355011, 30.466139, 34.921803>,  <39.085850, 30.693104, 34.731960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355011, 30.466139, 34.921803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431396, 0.822197, 0.371335,
		-0.600917, -0.045130, 0.798036,
		0.672902, -0.567411, 0.474603,
		39.556881, 30.295916, 35.064182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883297, 30.735214, 35.413555>,  <39.085850, 30.693104, 34.731960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883297, 30.735214, 35.413555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277885, 30.691223, 35.364914>,  <39.514637, 30.664829, 35.335728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277885, 30.691223, 35.364914>,  <38.883297, 30.735214, 35.413555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277885, 30.691223, 35.364914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139723, 0.951952, 0.272514,
		0.085792, -0.285817, 0.954436,
		0.986467, -0.109978, -0.121605,
		39.573826, 30.658230, 35.328434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063641, 31.065275, 36.051609>,  <38.883297, 30.735214, 35.413555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063641, 31.065275, 36.051609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275490, 30.861137, 36.322620>,  <39.402599, 30.738655, 36.485229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275490, 30.861137, 36.322620>,  <39.063641, 31.065275, 36.051609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275490, 30.861137, 36.322620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278539, 0.859098, 0.429379,
		-0.801197, -0.038690, 0.597149,
		0.529622, -0.510346, 0.677530,
		39.434376, 30.708035, 36.525879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999958, 31.332878, 36.715282>,  <39.063641, 31.065275, 36.051609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999958, 31.332878, 36.715282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361897, 31.171505, 36.660873>,  <39.579060, 31.074682, 36.628227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361897, 31.171505, 36.660873>,  <38.999958, 31.332878, 36.715282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361897, 31.171505, 36.660873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425680, 0.851683, 0.305668,
		-0.007467, -0.334484, 0.942372,
		0.904843, -0.403431, -0.136024,
		39.633350, 31.050476, 36.620068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518936, 31.374683, 37.328205>,  <38.999958, 31.332878, 36.715282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518936, 31.374683, 37.328205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746601, 31.346245, 37.000549>,  <39.883202, 31.329182, 36.803955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746601, 31.346245, 37.000549>,  <39.518936, 31.374683, 37.328205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746601, 31.346245, 37.000549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425386, 0.878024, 0.219362,
		0.703632, -0.473306, 0.529985,
		0.569165, -0.071098, -0.819144,
		39.917351, 31.324915, 36.754807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232407, 31.403246, 37.519753>,  <39.518936, 31.374683, 37.328205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232407, 31.403246, 37.519753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157745, 31.542801, 37.152397>,  <40.112949, 31.626534, 36.931984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157745, 31.542801, 37.152397>,  <40.232407, 31.403246, 37.519753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157745, 31.542801, 37.152397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426043, 0.871087, 0.244326,
		0.885238, -0.345669, -0.311233,
		-0.186655, 0.348886, -0.918389,
		40.101749, 31.647467, 36.876881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946621, 31.611071, 37.128712>,  <40.232407, 31.403246, 37.519753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946621, 31.611071, 37.128712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623135, 31.797152, 36.984726>,  <40.429043, 31.908800, 36.898335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623135, 31.797152, 36.984726>,  <40.946621, 31.611071, 37.128712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623135, 31.797152, 36.984726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430441, 0.885125, 0.176847,
		0.400883, -0.011925, -0.916052,
		-0.808711, 0.465201, -0.359964,
		40.380520, 31.936712, 36.876736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240738, 32.335194, 37.285851>,  <40.946621, 31.611071, 37.128712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240738, 32.335194, 37.285851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901936, 32.410961, 37.087177>,  <40.698654, 32.456421, 36.967972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901936, 32.410961, 37.087177>,  <41.240738, 32.335194, 37.285851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901936, 32.410961, 37.087177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191629, 0.980338, 0.047081,
		0.495835, -0.055300, -0.866654,
		-0.847010, 0.189421, -0.496683,
		40.647831, 32.467789, 36.938171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468021, 32.947536, 36.803371>,  <41.240738, 32.335194, 37.285851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468021, 32.947536, 36.803371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070759, 32.952332, 36.849842>,  <40.832401, 32.955208, 36.877724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070759, 32.952332, 36.849842>,  <41.468021, 32.947536, 36.803371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070759, 32.952332, 36.849842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031845, 0.984828, 0.170586,
		-0.112372, 0.173118, -0.978470,
		-0.993156, 0.011990, 0.116180,
		40.772812, 32.955929, 36.884697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196796, 33.528244, 36.434719>,  <41.468021, 32.947536, 36.803371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196796, 33.528244, 36.434719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894394, 33.413715, 36.670170>,  <40.712952, 33.344997, 36.811440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894394, 33.413715, 36.670170>,  <41.196796, 33.528244, 36.434719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894394, 33.413715, 36.670170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137120, 0.948579, 0.285299,
		-0.640046, 0.134975, -0.756389,
		-0.756003, -0.286320, 0.588626,
		40.667595, 33.327820, 36.846756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521595, 33.932446, 36.191143>,  <41.196796, 33.528244, 36.434719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521595, 33.932446, 36.191143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477589, 33.818748, 36.572109>,  <40.451183, 33.750530, 36.800690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477589, 33.818748, 36.572109>,  <40.521595, 33.932446, 36.191143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477589, 33.818748, 36.572109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495744, 0.846228, 0.195283,
		-0.861472, -0.450671, -0.234014,
		-0.110020, -0.284242, 0.952419,
		40.444584, 33.733475, 36.857834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773026, 34.031479, 36.457230>,  <40.521595, 33.932446, 36.191143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773026, 34.031479, 36.457230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053707, 34.047401, 36.741772>,  <40.222115, 34.056957, 36.912498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053707, 34.047401, 36.741772>,  <39.773026, 34.031479, 36.457230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053707, 34.047401, 36.741772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300893, 0.921587, 0.245236,
		-0.645812, -0.386125, 0.658661,
		0.701705, 0.039810, 0.711355,
		40.264217, 34.059345, 36.955177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396233, 34.219021, 37.076691>,  <39.773026, 34.031479, 36.457230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396233, 34.219021, 37.076691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779881, 34.331017, 37.060223>,  <40.010071, 34.398216, 37.050343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779881, 34.331017, 37.060223>,  <39.396233, 34.219021, 37.076691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779881, 34.331017, 37.060223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273290, 0.954132, 0.122246,
		0.073511, -0.105996, 0.991646,
		0.959119, 0.279994, -0.041171,
		40.067616, 34.415016, 37.047871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569683, 34.759151, 37.584320>,  <39.396233, 34.219021, 37.076691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569683, 34.759151, 37.584320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773254, 34.812340, 37.244129>,  <39.895397, 34.844254, 37.040016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773254, 34.812340, 37.244129>,  <39.569683, 34.759151, 37.584320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773254, 34.812340, 37.244129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219798, 0.975320, 0.020958,
		0.832275, 0.176267, 0.525594,
		0.508928, 0.132967, -0.850477,
		39.925934, 34.852230, 36.988987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091702, 35.276539, 37.631569>,  <39.569683, 34.759151, 37.584320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091702, 35.276539, 37.631569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971226, 35.319191, 37.252537>,  <39.898941, 35.344784, 37.025116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971226, 35.319191, 37.252537>,  <40.091702, 35.276539, 37.631569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971226, 35.319191, 37.252537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372259, 0.901729, 0.219792,
		0.877901, 0.418945, -0.231894,
		-0.301186, 0.106631, -0.947585,
		39.880871, 35.351181, 36.968262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338711, 35.802628, 37.386696>,  <40.091702, 35.276539, 37.631569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338711, 35.802628, 37.386696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041840, 35.829815, 37.119995>,  <39.863716, 35.846127, 36.959976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041840, 35.829815, 37.119995>,  <40.338711, 35.802628, 37.386696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041840, 35.829815, 37.119995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229010, 0.909245, 0.347603,
		0.629865, 0.410675, -0.659254,
		-0.742176, 0.067966, -0.666750,
		39.819187, 35.850204, 36.919971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917862, 36.016808, 37.815723>,  <40.338711, 35.802628, 37.386696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917862, 36.016808, 37.815723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741573, 36.372700, 37.863289>,  <40.635799, 36.586235, 37.891827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741573, 36.372700, 37.863289>,  <40.917862, 36.016808, 37.815723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741573, 36.372700, 37.863289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883085, 0.405998, 0.235217,
		0.161002, 0.208674, -0.964642,
		-0.440726, 0.889731, 0.118910,
		40.609356, 36.639618, 37.898960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206650, 36.622990, 37.416336>,  <40.917862, 36.016808, 37.815723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206650, 36.622990, 37.416336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053493, 36.765171, 37.757404>,  <40.961601, 36.850479, 37.962048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053493, 36.765171, 37.757404>,  <41.206650, 36.622990, 37.416336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053493, 36.765171, 37.757404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898573, 0.357513, 0.254465,
		-0.214391, 0.863620, -0.456286,
		-0.382889, 0.355451, 0.852673,
		40.938625, 36.871807, 38.013206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126526, 37.394253, 37.593071>,  <41.206650, 36.622990, 37.416336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126526, 37.394253, 37.593071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221897, 37.150475, 37.895523>,  <41.279121, 37.004208, 38.076992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221897, 37.150475, 37.895523>,  <41.126526, 37.394253, 37.593071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221897, 37.150475, 37.895523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724186, 0.630336, 0.279698,
		-0.647075, 0.480889, 0.591641,
		0.238429, -0.609444, 0.756128,
		41.293427, 36.967640, 38.122360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200726, 37.693459, 38.201225>,  <41.126526, 37.394253, 37.593071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200726, 37.693459, 38.201225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376667, 37.350849, 38.309223>,  <41.482231, 37.145283, 38.374023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376667, 37.350849, 38.309223>,  <41.200726, 37.693459, 38.201225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376667, 37.350849, 38.309223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828232, 0.503122, 0.246781,
		-0.347214, 0.115072, 0.930699,
		0.439858, -0.856520, 0.269998,
		41.508625, 37.093895, 38.390221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376553, 37.573383, 38.857857>,  <41.200726, 37.693459, 38.201225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376553, 37.573383, 38.857857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658188, 37.358639, 38.671940>,  <41.827171, 37.229794, 38.560390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658188, 37.358639, 38.671940>,  <41.376553, 37.573383, 38.857857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658188, 37.358639, 38.671940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698795, 0.640207, 0.319092,
		0.126256, -0.549466, 0.825921,
		0.704091, -0.536863, -0.464795,
		41.869415, 37.197578, 38.532501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754295, 37.308918, 39.346352>,  <41.376553, 37.573383, 38.857857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754295, 37.308918, 39.346352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668053, 36.978016, 39.553879>,  <41.616306, 36.779476, 39.678394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668053, 36.978016, 39.553879>,  <41.754295, 37.308918, 39.346352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668053, 36.978016, 39.553879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645408, -0.519439, -0.560029,
		0.732777, 0.214098, 0.645910,
		-0.215610, -0.827252, 0.518813,
		41.603371, 36.729839, 39.709522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357571, 37.008476, 39.664623>,  <41.754295, 37.308918, 39.346352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357571, 37.008476, 39.664623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064602, 36.761730, 39.549355>,  <41.888821, 36.613682, 39.480194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064602, 36.761730, 39.549355>,  <42.357571, 37.008476, 39.664623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064602, 36.761730, 39.549355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625565, -0.442626, -0.642456,
		0.268756, -0.650817, 0.710076,
		-0.732420, -0.616863, -0.288170,
		41.844875, 36.576672, 39.462902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730885, 36.369804, 39.349239>,  <42.357571, 37.008476, 39.664623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730885, 36.369804, 39.349239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338375, 36.335041, 39.280476>,  <42.102871, 36.314182, 39.239216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338375, 36.335041, 39.280476>,  <42.730885, 36.369804, 39.349239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338375, 36.335041, 39.280476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178867, -0.742365, -0.645678,
		-0.071507, -0.664335, 0.744007,
		-0.981271, -0.086908, -0.171912,
		42.043995, 36.308968, 39.228901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505173, 35.626747, 39.329819>,  <42.730885, 36.369804, 39.349239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505173, 35.626747, 39.329819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243568, 35.845539, 39.120789>,  <42.086605, 35.976814, 38.995373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243568, 35.845539, 39.120789>,  <42.505173, 35.626747, 39.329819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243568, 35.845539, 39.120789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074722, -0.640702, -0.764145,
		-0.752788, -0.538805, 0.378152,
		-0.654008, 0.546983, -0.522573,
		42.047367, 36.009632, 38.964016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361645, 35.077923, 38.865421>,  <42.505173, 35.626747, 39.329819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361645, 35.077923, 38.865421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179890, 34.743893, 38.741375>,  <42.070835, 34.543472, 38.666946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179890, 34.743893, 38.741375>,  <42.361645, 35.077923, 38.865421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179890, 34.743893, 38.741375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882472, 0.374485, 0.284614,
		-0.121541, 0.402995, -0.907096,
		-0.454392, -0.835078, -0.310117,
		42.043571, 34.493370, 38.648338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839691, 35.244770, 38.299686>,  <42.361645, 35.077923, 38.865421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839691, 35.244770, 38.299686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731785, 34.910503, 38.491058>,  <41.667042, 34.709946, 38.605881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731785, 34.910503, 38.491058>,  <41.839691, 35.244770, 38.299686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731785, 34.910503, 38.491058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947014, 0.320195, 0.025288,
		-0.174323, -0.446256, -0.877763,
		-0.269770, -0.835662, 0.478428,
		41.650852, 34.659805, 38.634586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366337, 34.779308, 38.125019>,  <41.839691, 35.244770, 38.299686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366337, 34.779308, 38.125019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242195, 34.491802, 37.876167>,  <42.167709, 34.319298, 37.726856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242195, 34.491802, 37.876167>,  <42.366337, 34.779308, 38.125019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242195, 34.491802, 37.876167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504880, -0.679150, 0.532777,
		-0.805465, -0.148751, 0.573671,
		-0.310358, -0.718769, -0.622133,
		42.149086, 34.276173, 37.689526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047684, 34.732956, 38.324806>,  <42.366337, 34.779308, 38.125019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047684, 34.732956, 38.324806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366463, 34.759853, 38.564922>,  <43.557732, 34.775993, 38.708992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366463, 34.759853, 38.564922>,  <43.047684, 34.732956, 38.324806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366463, 34.759853, 38.564922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106368, -0.962631, 0.249054,
		0.594607, -0.262335, -0.760015,
		0.796950, 0.067248, 0.600291,
		43.605549, 34.780029, 38.745010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767941, 34.769577, 37.520912>,  <43.047684, 34.732956, 38.324806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767941, 34.769577, 37.520912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829025, 34.909668, 37.151260>,  <42.865677, 34.993721, 36.929470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829025, 34.909668, 37.151260>,  <42.767941, 34.769577, 37.520912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829025, 34.909668, 37.151260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978072, -0.187550, 0.090551,
		-0.141608, -0.917696, -0.371189,
		0.152715, 0.350227, -0.924132,
		42.874840, 35.014736, 36.874020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279236, 34.403530, 37.043221>,  <42.767941, 34.769577, 37.520912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279236, 34.403530, 37.043221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259941, 34.781548, 36.913876>,  <43.248363, 35.008358, 36.836269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259941, 34.781548, 36.913876>,  <43.279236, 34.403530, 37.043221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259941, 34.781548, 36.913876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991009, 0.085732, 0.102719,
		0.124796, -0.315497, -0.940685,
		-0.048239, 0.945046, -0.323359,
		43.245468, 35.065060, 36.816868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719219, 34.488373, 36.460190>,  <43.279236, 34.403530, 37.043221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719219, 34.488373, 36.460190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665981, 34.828098, 36.664524>,  <43.634037, 35.031933, 36.787125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665981, 34.828098, 36.664524>,  <43.719219, 34.488373, 36.460190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665981, 34.828098, 36.664524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958208, -0.021422, 0.285271,
		0.253227, 0.527455, -0.810967,
		-0.133095, 0.849313, 0.510836,
		43.626053, 35.082893, 36.817776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218678, 35.003696, 36.135231>,  <43.719219, 34.488373, 36.460190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218678, 35.003696, 36.135231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100521, 35.070877, 36.511429>,  <44.029625, 35.111187, 36.737148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100521, 35.070877, 36.511429>,  <44.218678, 35.003696, 36.135231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100521, 35.070877, 36.511429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954614, 0.091191, 0.283543,
		-0.038144, 0.981568, -0.187267,
		-0.295393, 0.167953, 0.940497,
		44.011902, 35.121262, 36.793579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528069, 35.646294, 36.375809>,  <44.218678, 35.003696, 36.135231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528069, 35.646294, 36.375809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456238, 35.376060, 36.661839>,  <44.413139, 35.213921, 36.833458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456238, 35.376060, 36.661839>,  <44.528069, 35.646294, 36.375809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456238, 35.376060, 36.661839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888912, 0.199946, 0.412136,
		-0.421410, 0.709654, 0.564629,
		-0.179579, -0.675584, 0.715079,
		44.402363, 35.173386, 36.876362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560722, 36.474998, 36.123146>,  <44.528069, 35.646294, 36.375809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560722, 36.474998, 36.123146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475533, 36.207527, 35.838188>,  <44.424419, 36.047043, 35.667213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475533, 36.207527, 35.838188>,  <44.560722, 36.474998, 36.123146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475533, 36.207527, 35.838188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880581, 0.184554, -0.436482,
		0.423342, -0.720284, 0.549520,
		-0.212974, -0.668678, -0.712398,
		44.411640, 36.006924, 35.624470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130997, 35.937439, 36.057507>,  <44.560722, 36.474998, 36.123146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130997, 35.937439, 36.057507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944595, 35.986729, 35.707043>,  <44.832756, 36.016304, 35.496765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944595, 35.986729, 35.707043>,  <45.130997, 35.937439, 36.057507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944595, 35.986729, 35.707043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879707, 0.170477, -0.443907,
		0.094665, -0.977626, -0.187845,
		-0.465999, 0.123226, -0.876162,
		44.804794, 36.023697, 35.444195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433796, 35.645302, 35.498837>,  <45.130997, 35.937439, 36.057507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433796, 35.645302, 35.498837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235443, 35.936195, 35.309002>,  <45.116432, 36.110733, 35.195103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235443, 35.936195, 35.309002>,  <45.433796, 35.645302, 35.498837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235443, 35.936195, 35.309002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720996, 0.040183, -0.691773,
		-0.484010, -0.685213, -0.544258,
		-0.495882, 0.727234, -0.474587,
		45.086678, 36.154366, 35.166626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453705, 35.325001, 34.856533>,  <45.433796, 35.645302, 35.498837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453705, 35.325001, 34.856533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451023, 35.721523, 34.803974>,  <45.449413, 35.959438, 34.772438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451023, 35.721523, 34.803974>,  <45.453705, 35.325001, 34.856533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451023, 35.721523, 34.803974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760520, -0.080264, -0.644334,
		-0.649280, -0.104244, -0.753372,
		-0.006700, 0.991308, -0.131393,
		45.449013, 36.018917, 34.764557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414906, 35.452473, 34.162151>,  <45.453705, 35.325001, 34.856533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414906, 35.452473, 34.162151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634708, 35.709141, 34.376179>,  <45.766590, 35.863140, 34.504597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634708, 35.709141, 34.376179>,  <45.414906, 35.452473, 34.162151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634708, 35.709141, 34.376179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803291, -0.229698, -0.549511,
		-0.229698, 0.731781, -0.641666,
		0.549511, 0.641666, 0.535072,
		45.799561, 35.901642, 34.536701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766155, 36.080818, 33.741787>,  <45.414906, 35.452473, 34.162151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766155, 36.080818, 33.741787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967094, 35.954258, 34.063667>,  <46.087658, 35.878323, 34.256794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967094, 35.954258, 34.063667>,  <45.766155, 36.080818, 33.741787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967094, 35.954258, 34.063667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819394, -0.122991, -0.559880,
		0.276119, 0.940618, 0.197475,
		0.502346, -0.316404, 0.804697,
		46.117798, 35.859337, 34.305077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.347958, 36.452488, 34.160961>,  <45.766155, 36.080818, 33.741787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.347958, 36.452488, 34.160961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402122, 36.058933, 34.114269>,  <46.434620, 35.822800, 34.086254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402122, 36.058933, 34.114269>,  <46.347958, 36.452488, 34.160961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402122, 36.058933, 34.114269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872230, 0.174262, -0.456998,
		0.469976, -0.039928, 0.881775,
		0.135413, -0.983890, -0.116725,
		46.442745, 35.763767, 34.079250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094296, 36.338375, 34.266186>,  <46.347958, 36.452488, 34.160961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094296, 36.338375, 34.266186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946548, 36.048771, 34.033161>,  <46.857903, 35.875008, 33.893349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946548, 36.048771, 34.033161>,  <47.094296, 36.338375, 34.266186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946548, 36.048771, 34.033161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689339, 0.206938, -0.694254,
		0.623202, -0.658014, 0.422654,
		-0.369366, -0.724013, -0.582558,
		46.835739, 35.831566, 33.858395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668575, 35.756092, 34.220669>,  <47.094296, 36.338375, 34.266186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668575, 35.756092, 34.220669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.408916, 35.867733, 33.937626>,  <47.253120, 35.934715, 33.767799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.408916, 35.867733, 33.937626>,  <47.668575, 35.756092, 34.220669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.408916, 35.867733, 33.937626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729596, 0.491590, -0.475425,
		0.215163, -0.824890, -0.522745,
		-0.649149, 0.279099, -0.707608,
		47.214172, 35.951462, 33.725342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.704166, 35.406406, 34.843941>,  <47.668575, 35.756092, 34.220669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.704166, 35.406406, 34.843941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512112, 35.119541, 34.641895>,  <47.396877, 34.947422, 34.520668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512112, 35.119541, 34.641895>,  <47.704166, 35.406406, 34.843941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.512112, 35.119541, 34.641895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766749, -0.063403, -0.638809,
		0.426105, -0.694013, 0.580327,
		-0.480136, -0.717165, -0.505118,
		47.368073, 34.904392, 34.490360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.112232, 32.233715, 28.820488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.262156, 32.591454, 28.918192>,  <29.352110, 32.806095, 28.976814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.262156, 32.591454, 28.918192>,  <29.112232, 32.233715, 28.820488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262156, 32.591454, 28.918192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467861, -0.409918, 0.782990,
		0.800391, -0.179192, -0.572071,
		0.374808, 0.894347, 0.244258,
		29.374598, 32.859756, 28.991468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839170, 32.114876, 28.867153>,  <29.112232, 32.233715, 28.820488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839170, 32.114876, 28.867153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.765501, 32.450928, 29.071218>,  <29.721300, 32.652557, 29.193659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.765501, 32.450928, 29.071218>,  <29.839170, 32.114876, 28.867153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765501, 32.450928, 29.071218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483715, -0.374365, 0.791120,
		0.855629, 0.392477, -0.337434,
		-0.184173, 0.840126, 0.510164,
		29.710249, 32.702965, 29.224268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466908, 32.413464, 28.979471>,  <29.839170, 32.114876, 28.867153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466908, 32.413464, 28.979471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.201084, 32.513775, 29.261030>,  <30.041590, 32.573959, 29.429966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.201084, 32.513775, 29.261030>,  <30.466908, 32.413464, 28.979471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201084, 32.513775, 29.261030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607954, -0.366244, 0.704455,
		0.434460, 0.896089, 0.090930,
		-0.664558, 0.250776, 0.703899,
		30.001717, 32.589008, 29.472200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940731, 32.601494, 29.575289>,  <30.466908, 32.413464, 28.979471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940731, 32.601494, 29.575289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.575073, 32.525867, 29.718731>,  <30.355679, 32.480492, 29.804796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.575073, 32.525867, 29.718731>,  <30.940731, 32.601494, 29.575289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575073, 32.525867, 29.718731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403471, -0.510310, 0.759471,
		0.039411, 0.838951, 0.542778,
		-0.914143, -0.189063, 0.358604,
		30.300831, 32.469147, 29.826313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114561, 32.462322, 30.237999>,  <30.940731, 32.601494, 29.575289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114561, 32.462322, 30.237999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.730272, 32.351322, 30.236553>,  <30.499699, 32.284721, 30.235685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.730272, 32.351322, 30.236553>,  <31.114561, 32.462322, 30.237999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730272, 32.351322, 30.236553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183494, -0.644935, 0.741882,
		-0.208201, 0.712078, 0.670520,
		-0.960720, -0.277497, -0.003614,
		30.442057, 32.268074, 30.235470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893221, 32.363102, 30.969137>,  <31.114561, 32.462322, 30.237999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893221, 32.363102, 30.969137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.622637, 32.185623, 30.734009>,  <30.460287, 32.079136, 30.592932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.622637, 32.185623, 30.734009>,  <30.893221, 32.363102, 30.969137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622637, 32.185623, 30.734009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018602, -0.787600, 0.615907,
		-0.736246, 0.427570, 0.524525,
		-0.676459, -0.443701, -0.587820,
		30.419699, 32.052513, 30.557663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300261, 32.110016, 31.392403>,  <30.893221, 32.363102, 30.969137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300261, 32.110016, 31.392403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.355217, 31.879354, 31.070261>,  <30.388191, 31.740957, 30.876976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.355217, 31.879354, 31.070261>,  <30.300261, 32.110016, 31.392403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355217, 31.879354, 31.070261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030400, -0.815134, 0.578474,
		-0.990050, -0.054995, -0.129523,
		0.137392, -0.576655, -0.805352,
		30.396435, 31.706358, 30.828655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074293, 31.522247, 31.646568>,  <30.300261, 32.110016, 31.392403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074293, 31.522247, 31.646568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.231411, 31.380014, 31.307329>,  <30.325682, 31.294674, 31.103785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.231411, 31.380014, 31.307329>,  <30.074293, 31.522247, 31.646568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231411, 31.380014, 31.307329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170360, -0.878125, 0.447072,
		-0.903709, -0.320089, -0.284345,
		0.392793, -0.355582, -0.848100,
		30.349249, 31.273340, 31.052898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880468, 30.872015, 31.530872>,  <30.074293, 31.522247, 31.646568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880468, 30.872015, 31.530872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.221018, 30.875574, 31.321079>,  <30.425348, 30.877710, 31.195204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.221018, 30.875574, 31.321079>,  <29.880468, 30.872015, 31.530872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221018, 30.875574, 31.321079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292316, -0.838266, 0.460283,
		-0.435560, -0.545189, -0.716280,
		0.851375, 0.008900, -0.524482,
		30.476431, 30.878244, 31.163734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004148, 30.108269, 31.354918>,  <29.880468, 30.872015, 31.530872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004148, 30.108269, 31.354918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.342474, 30.307692, 31.278976>,  <30.545469, 30.427345, 31.233412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.342474, 30.307692, 31.278976>,  <30.004148, 30.108269, 31.354918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342474, 30.307692, 31.278976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530540, -0.823395, 0.201364,
		-0.055934, -0.271041, -0.960941,
		0.845812, 0.498555, -0.189854,
		30.596218, 30.457258, 31.222021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445728, 29.657810, 30.961670>,  <30.004148, 30.108269, 31.354918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445728, 29.657810, 30.961670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.705708, 29.920834, 31.114082>,  <30.861694, 30.078648, 31.205530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.705708, 29.920834, 31.114082>,  <30.445728, 29.657810, 30.961670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705708, 29.920834, 31.114082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574761, -0.753318, 0.319629,
		0.497212, 0.011260, -0.867556,
		0.649946, 0.657560, 0.381031,
		30.900692, 30.118101, 31.228392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062429, 29.525780, 30.660343>,  <30.445728, 29.657810, 30.961670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062429, 29.525780, 30.660343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.157499, 29.725019, 30.993908>,  <31.214540, 29.844563, 31.194046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.157499, 29.725019, 30.993908>,  <31.062429, 29.525780, 30.660343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157499, 29.725019, 30.993908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649578, -0.719805, 0.244806,
		0.722191, 0.483507, -0.494632,
		0.237673, 0.498099, 0.833912,
		31.228802, 29.874449, 31.244081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703764, 29.510899, 30.676662>,  <31.062429, 29.525780, 30.660343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703764, 29.510899, 30.676662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.612331, 29.591139, 31.057716>,  <31.557472, 29.639284, 31.286348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.612331, 29.591139, 31.057716>,  <31.703764, 29.510899, 30.676662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612331, 29.591139, 31.057716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737669, -0.602874, 0.303954,
		0.635291, 0.772206, -0.010171,
		-0.228583, 0.200602, 0.952632,
		31.543756, 29.651320, 31.343506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385509, 29.650686, 31.054756>,  <31.703764, 29.510899, 30.676662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385509, 29.650686, 31.054756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.131172, 29.578663, 31.354965>,  <31.978569, 29.535448, 31.535089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.131172, 29.578663, 31.354965>,  <32.385509, 29.650686, 31.054756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131172, 29.578663, 31.354965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691605, -0.564581, 0.450478,
		0.342617, 0.805498, 0.483515,
		-0.635843, -0.180060, 0.750521,
		31.940420, 29.524645, 31.580122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786366, 29.836477, 31.718737>,  <32.385509, 29.650686, 31.054756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786366, 29.836477, 31.718737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.493343, 29.574747, 31.793810>,  <32.317532, 29.417709, 31.838854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.493343, 29.574747, 31.793810>,  <32.786366, 29.836477, 31.718737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493343, 29.574747, 31.793810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667340, -0.635954, 0.387582,
		-0.134248, 0.409172, 0.902528,
		-0.732554, -0.654325, 0.187681,
		32.273579, 29.378450, 31.850115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952267, 29.645493, 32.424206>,  <32.786366, 29.836477, 31.718737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952267, 29.645493, 32.424206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.715298, 29.348452, 32.299255>,  <32.573116, 29.170227, 32.224285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.715298, 29.348452, 32.299255>,  <32.952267, 29.645493, 32.424206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715298, 29.348452, 32.299255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557266, -0.657746, 0.506779,
		-0.581797, 0.126152, 0.803491,
		-0.592424, -0.742600, -0.312374,
		32.537571, 29.125671, 32.205544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821640, 29.250198, 33.014313>,  <32.952267, 29.645493, 32.424206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821640, 29.250198, 33.014313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.719898, 29.004314, 32.715664>,  <32.658855, 28.856785, 32.536476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.719898, 29.004314, 32.715664>,  <32.821640, 29.250198, 33.014313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719898, 29.004314, 32.715664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483989, -0.749285, 0.452025,
		-0.837294, -0.246381, 0.488094,
		-0.254351, -0.614710, -0.746617,
		32.643593, 28.819902, 32.491680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720596, 28.593967, 33.284153>,  <32.821640, 29.250198, 33.014313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720596, 28.593967, 33.284153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771832, 28.484985, 32.902710>,  <32.802574, 28.419596, 32.673843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771832, 28.484985, 32.902710>,  <32.720596, 28.593967, 33.284153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771832, 28.484985, 32.902710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609630, -0.736789, 0.292394,
		-0.782269, -0.618799, 0.071720,
		0.128090, -0.272454, -0.953604,
		32.810257, 28.403250, 32.616627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507282, 27.906071, 33.166321>,  <32.720596, 28.593967, 33.284153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507282, 27.906071, 33.166321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.793640, 27.997345, 32.902374>,  <32.965454, 28.052109, 32.744007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.793640, 27.997345, 32.902374>,  <32.507282, 27.906071, 33.166321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793640, 27.997345, 32.902374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488836, -0.838615, 0.240341,
		-0.498535, -0.494627, -0.711905,
		0.715893, 0.228186, -0.659870,
		33.008408, 28.065802, 32.704414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576820, 27.408327, 32.641506>,  <32.507282, 27.906071, 33.166321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576820, 27.408327, 32.641506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.939693, 27.576162, 32.653896>,  <33.157417, 27.676863, 32.661331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.939693, 27.576162, 32.653896>,  <32.576820, 27.408327, 32.641506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939693, 27.576162, 32.653896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388726, -0.864068, 0.319809,
		0.160949, -0.278087, -0.946976,
		0.907187, 0.419587, 0.030971,
		33.211849, 27.702038, 32.663189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188469, 27.118166, 32.271507>,  <32.576820, 27.408327, 32.641506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188469, 27.118166, 32.271507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.318810, 27.307150, 32.599068>,  <33.397015, 27.420540, 32.795605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.318810, 27.307150, 32.599068>,  <33.188469, 27.118166, 32.271507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318810, 27.307150, 32.599068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240612, -0.879100, 0.411447,
		0.914289, 0.062966, -0.400139,
		0.325855, 0.472460, 0.818902,
		33.416565, 27.448889, 32.844738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658710, 26.653912, 32.639996>,  <33.188469, 27.118166, 32.271507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658710, 26.653912, 32.639996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.664398, 26.290018, 32.474018>,  <33.667812, 26.071682, 32.374432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.664398, 26.290018, 32.474018>,  <33.658710, 26.653912, 32.639996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664398, 26.290018, 32.474018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674117, 0.297772, -0.675943,
		0.738488, 0.289337, -0.609031,
		0.014223, -0.909734, -0.414948,
		33.668667, 26.017097, 32.349533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797577, 26.750237, 31.912397>,  <33.658710, 26.653912, 32.639996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797577, 26.750237, 31.912397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.633160, 26.385590, 31.912882>,  <33.534512, 26.166801, 31.913172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.633160, 26.385590, 31.912882>,  <33.797577, 26.750237, 31.912397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633160, 26.385590, 31.912882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654446, 0.294157, -0.696543,
		0.634624, -0.287099, -0.717514,
		-0.411039, -0.911617, 0.001211,
		33.509850, 26.112104, 31.913246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651440, 26.508886, 31.139759>,  <33.797577, 26.750237, 31.912397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651440, 26.508886, 31.139759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.410912, 26.284140, 31.366995>,  <33.266594, 26.149292, 31.503336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.410912, 26.284140, 31.366995>,  <33.651440, 26.508886, 31.139759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410912, 26.284140, 31.366995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764267, 0.197081, -0.614048,
		0.233058, -0.803405, -0.547928,
		-0.601315, -0.561872, 0.568084,
		33.230515, 26.115580, 31.537422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363342, 26.063299, 30.637304>,  <33.651440, 26.508886, 31.139759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363342, 26.063299, 30.637304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.127060, 26.085644, 30.959286>,  <32.985291, 26.099051, 31.152473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.127060, 26.085644, 30.959286>,  <33.363342, 26.063299, 30.637304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127060, 26.085644, 30.959286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725580, 0.399646, -0.560194,
		-0.352990, -0.914966, -0.195539,
		-0.590705, 0.055864, 0.804952,
		32.949848, 26.102404, 31.200771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677036, 25.701557, 30.491613>,  <33.363342, 26.063299, 30.637304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677036, 25.701557, 30.491613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.625938, 25.964928, 30.788303>,  <32.595280, 26.122950, 30.966318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.625938, 25.964928, 30.788303>,  <32.677036, 25.701557, 30.491613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625938, 25.964928, 30.788303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755355, 0.420061, -0.502979,
		-0.642744, -0.624520, 0.443683,
		-0.127746, 0.658425, 0.741726,
		32.587616, 26.162455, 31.010820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979588, 25.937647, 30.374638>,  <32.677036, 25.701557, 30.491613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979588, 25.937647, 30.374638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.082687, 26.198484, 30.659830>,  <32.144547, 26.354986, 30.830946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.082687, 26.198484, 30.659830>,  <31.979588, 25.937647, 30.374638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082687, 26.198484, 30.659830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673269, 0.650484, -0.351538,
		-0.693018, -0.389419, 0.606696,
		0.257750, 0.652092, 0.712981,
		32.160011, 26.394112, 30.873724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355515, 26.189680, 30.595079>,  <31.979588, 25.937647, 30.374638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355515, 26.189680, 30.595079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.637957, 26.460648, 30.677567>,  <31.807421, 26.623228, 30.727058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.637957, 26.460648, 30.677567>,  <31.355515, 26.189680, 30.595079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637957, 26.460648, 30.677567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583983, 0.721790, -0.371461,
		-0.400478, 0.141863, 0.905258,
		0.706103, 0.677417, 0.206216,
		31.849787, 26.663872, 30.739431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031246, 26.757038, 30.923990>,  <31.355515, 26.189680, 30.595079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031246, 26.757038, 30.923990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.366827, 26.914337, 30.773514>,  <31.568174, 27.008717, 30.683228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.366827, 26.914337, 30.773514>,  <31.031246, 26.757038, 30.923990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366827, 26.914337, 30.773514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538051, 0.703051, -0.464994,
		0.081623, 0.592517, 0.801412,
		0.838951, 0.393247, -0.376189,
		31.618513, 27.032310, 30.660658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973806, 27.434555, 31.146357>,  <31.031246, 26.757038, 30.923990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973806, 27.434555, 31.146357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.220608, 27.414106, 30.832237>,  <31.368689, 27.401836, 30.643764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.220608, 27.414106, 30.832237>,  <30.973806, 27.434555, 31.146357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220608, 27.414106, 30.832237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620672, 0.581875, -0.525536,
		0.483813, 0.811670, 0.327288,
		0.617002, -0.051123, -0.785299,
		31.405708, 27.398769, 30.596647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959850, 28.100327, 30.895746>,  <30.973806, 27.434555, 31.146357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959850, 28.100327, 30.895746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.102951, 27.899694, 30.580677>,  <31.188812, 27.779316, 30.391636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.102951, 27.899694, 30.580677>,  <30.959850, 28.100327, 30.895746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102951, 27.899694, 30.580677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616002, 0.507185, -0.602748,
		0.701823, 0.700843, -0.127528,
		0.357751, -0.501579, -0.787675,
		31.210276, 27.749220, 30.344374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331577, 28.602680, 30.483280>,  <30.959850, 28.100327, 30.895746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331577, 28.602680, 30.483280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.262302, 28.286190, 30.248684>,  <31.220737, 28.096296, 30.107927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.262302, 28.286190, 30.248684>,  <31.331577, 28.602680, 30.483280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262302, 28.286190, 30.248684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391788, 0.601689, -0.696040,
		0.903609, 0.109235, -0.414197,
		-0.173185, -0.791226, -0.586489,
		31.210346, 28.048822, 30.072737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590052, 28.875746, 29.926090>,  <31.331577, 28.602680, 30.483280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590052, 28.875746, 29.926090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.332645, 28.583529, 29.834705>,  <31.178202, 28.408199, 29.779875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.332645, 28.583529, 29.834705>,  <31.590052, 28.875746, 29.926090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332645, 28.583529, 29.834705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460133, 0.607738, -0.647250,
		0.611710, -0.311369, -0.727228,
		-0.643498, -0.730551, -0.228489,
		31.139589, 28.364367, 29.766167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603981, 28.858885, 29.237055>,  <31.590052, 28.875746, 29.926090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603981, 28.858885, 29.237055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.258141, 28.687647, 29.342279>,  <31.050636, 28.584904, 29.405415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.258141, 28.687647, 29.342279>,  <31.603981, 28.858885, 29.237055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258141, 28.687647, 29.342279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458296, 0.457266, -0.762150,
		0.205982, -0.779516, -0.591545,
		-0.864602, -0.428092, 0.263061,
		30.998760, 28.559219, 29.421198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308798, 28.876627, 28.656441>,  <31.603981, 28.858885, 29.237055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308798, 28.876627, 28.656441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.027529, 28.827288, 28.936537>,  <30.858767, 28.797684, 29.104593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.027529, 28.827288, 28.936537>,  <31.308798, 28.876627, 28.656441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027529, 28.827288, 28.936537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670770, 0.441734, -0.595768,
		-0.235833, -0.888626, -0.393352,
		-0.703172, -0.123347, 0.700239,
		30.816578, 28.790283, 29.146608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745844, 28.572468, 28.434711>,  <31.308798, 28.876627, 28.656441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745844, 28.572468, 28.434711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.593697, 28.770243, 28.747339>,  <30.502409, 28.888906, 28.934916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.593697, 28.770243, 28.747339>,  <30.745844, 28.572468, 28.434711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593697, 28.770243, 28.747339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582024, 0.528780, -0.617770,
		-0.718727, -0.689873, 0.086643,
		-0.380368, 0.494436, 0.781571,
		30.479586, 28.918573, 28.981810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054550, 28.605099, 28.313751>,  <30.745844, 28.572468, 28.434711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054550, 28.605099, 28.313751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.104668, 28.878757, 28.601152>,  <30.134737, 29.042952, 28.773594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.104668, 28.878757, 28.601152>,  <30.054550, 28.605099, 28.313751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104668, 28.878757, 28.601152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732536, 0.552210, -0.398064,
		-0.669099, -0.476455, 0.570348,
		0.125292, 0.684145, 0.718504,
		30.142256, 29.084002, 28.816704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432608, 28.665712, 28.590834>,  <30.054550, 28.605099, 28.313751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432608, 28.665712, 28.590834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.620689, 29.000290, 28.703453>,  <29.733538, 29.201036, 28.771025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.620689, 29.000290, 28.703453>,  <29.432608, 28.665712, 28.590834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620689, 29.000290, 28.703453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820226, 0.531923, -0.210446,
		-0.325789, -0.131981, 0.936185,
		0.470204, 0.836444, 0.281549,
		29.761751, 29.251223, 28.787918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906862, 29.081287, 28.794409>,  <29.432608, 28.665712, 28.590834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906862, 29.081287, 28.794409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.207335, 29.338684, 28.735556>,  <29.387617, 29.493122, 28.700245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.207335, 29.338684, 28.735556>,  <28.906862, 29.081287, 28.794409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207335, 29.338684, 28.735556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648027, 0.676463, -0.349941,
		-0.125655, 0.358214, 0.925145,
		0.751180, 0.643491, -0.147132,
		29.432688, 29.531731, 28.691416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550486, 29.745903, 28.945642>,  <28.906862, 29.081287, 28.794409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550486, 29.745903, 28.945642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.896769, 29.826235, 28.762243>,  <29.104538, 29.874434, 28.652203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.896769, 29.826235, 28.762243>,  <28.550486, 29.745903, 28.945642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896769, 29.826235, 28.762243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455235, 0.696742, -0.554357,
		0.208124, 0.688635, 0.694598,
		0.865705, 0.200830, -0.458499,
		29.156481, 29.886484, 28.624693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.655279, 30.452917, 29.091461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.847624, 30.354935, 28.754707>,  <28.963030, 30.296144, 28.552654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.847624, 30.354935, 28.754707>,  <28.655279, 30.452917, 29.091461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847624, 30.354935, 28.754707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478666, 0.731133, -0.486132,
		0.734611, 0.636743, 0.234320,
		0.480860, -0.244956, -0.841885,
		28.991882, 30.281448, 28.502142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924974, 31.052412, 28.837589>,  <28.655279, 30.452917, 29.091461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924974, 31.052412, 28.837589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908348, 30.819876, 28.512550>,  <28.898373, 30.680353, 28.317528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908348, 30.819876, 28.512550>,  <28.924974, 31.052412, 28.837589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908348, 30.819876, 28.512550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382291, 0.760666, -0.524635,
		0.923107, 0.288841, -0.253860,
		-0.041567, -0.581343, -0.812597,
		28.895878, 30.645473, 28.268772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286976, 31.423851, 28.411150>,  <28.924974, 31.052412, 28.837589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286976, 31.423851, 28.411150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.112505, 31.150862, 28.176552>,  <29.007822, 30.987068, 28.035793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.112505, 31.150862, 28.176552>,  <29.286976, 31.423851, 28.411150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112505, 31.150862, 28.176552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031444, 0.662926, -0.748024,
		0.899312, -0.307828, -0.310613,
		-0.436176, -0.682474, -0.586498,
		28.981651, 30.946119, 28.000603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596115, 31.471731, 27.741238>,  <29.286976, 31.423851, 28.411150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596115, 31.471731, 27.741238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.245226, 31.291807, 27.674128>,  <29.034693, 31.183853, 27.633862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.245226, 31.291807, 27.674128>,  <29.596115, 31.471731, 27.741238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245226, 31.291807, 27.674128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174649, 0.624536, -0.761218,
		0.447185, -0.638457, -0.626417,
		-0.877225, -0.449808, -0.167777,
		28.982059, 31.156864, 27.623795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575066, 31.295103, 26.994112>,  <29.596115, 31.471731, 27.741238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575066, 31.295103, 26.994112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.192471, 31.285305, 27.110409>,  <28.962914, 31.279427, 27.180187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.192471, 31.285305, 27.110409>,  <29.575066, 31.295103, 26.994112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192471, 31.285305, 27.110409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267203, 0.473761, -0.839138,
		-0.117187, -0.880313, -0.459692,
		-0.956488, -0.024495, 0.290740,
		28.905523, 31.277956, 27.197630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214790, 30.950354, 26.472273>,  <29.575066, 31.295103, 26.994112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214790, 30.950354, 26.472273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.963015, 31.181116, 26.680498>,  <28.811949, 31.319572, 26.805433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.963015, 31.181116, 26.680498>,  <29.214790, 30.950354, 26.472273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963015, 31.181116, 26.680498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383603, 0.351899, -0.853824,
		-0.675761, -0.737121, -0.000197,
		-0.629441, 0.576905, 0.520562,
		28.774181, 31.354187, 26.836666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627031, 30.953503, 26.050774>,  <29.214790, 30.950354, 26.472273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627031, 30.953503, 26.050774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587431, 31.268503, 26.294098>,  <28.563671, 31.457502, 26.440092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587431, 31.268503, 26.294098>,  <28.627031, 30.953503, 26.050774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587431, 31.268503, 26.294098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371447, 0.537883, -0.756776,
		-0.923161, -0.300878, 0.239262,
		-0.099002, 0.787499, 0.608312,
		28.557730, 31.504753, 26.476591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057526, 31.265934, 25.793896>,  <28.627031, 30.953503, 26.050774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057526, 31.265934, 25.793896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.161135, 31.575676, 26.024818>,  <28.223301, 31.761520, 26.163372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.161135, 31.575676, 26.024818>,  <28.057526, 31.265934, 25.793896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161135, 31.575676, 26.024818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497324, 0.619310, -0.607555,
		-0.827995, -0.129738, 0.545520,
		0.259024, 0.774353, 0.577308,
		28.238842, 31.807981, 26.198011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527369, 31.626020, 25.826401>,  <28.057526, 31.265934, 25.793896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527369, 31.626020, 25.826401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.824213, 31.880344, 25.911264>,  <28.002319, 32.032940, 25.962183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.824213, 31.880344, 25.911264>,  <27.527369, 31.626020, 25.826401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824213, 31.880344, 25.911264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450838, 0.707719, -0.543948,
		-0.495998, 0.308021, 0.811856,
		0.742113, 0.635812, 0.212159,
		28.046846, 32.071087, 25.974913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184782, 32.237877, 26.244389>,  <27.527369, 31.626020, 25.826401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184782, 32.237877, 26.244389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.519522, 32.368572, 26.068695>,  <27.720366, 32.446987, 25.963278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.519522, 32.368572, 26.068695>,  <27.184782, 32.237877, 26.244389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519522, 32.368572, 26.068695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503103, 0.775319, -0.381796,
		0.215802, 0.540486, 0.813206,
		0.836850, 0.326734, -0.439236,
		27.770576, 32.466591, 25.936924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097427, 32.919312, 26.250175>,  <27.184782, 32.237877, 26.244389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097427, 32.919312, 26.250175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.402308, 32.875172, 25.995029>,  <27.585236, 32.848686, 25.841942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.402308, 32.875172, 25.995029>,  <27.097427, 32.919312, 26.250175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402308, 32.875172, 25.995029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362380, 0.743765, -0.561689,
		0.536403, 0.659270, 0.526911,
		0.762203, -0.110349, -0.637864,
		27.630968, 32.842068, 25.803671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413406, 33.560322, 26.255714>,  <27.097427, 32.919312, 26.250175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413406, 33.560322, 26.255714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.485853, 33.382111, 25.905012>,  <27.529322, 33.275185, 25.694590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.485853, 33.382111, 25.905012>,  <27.413406, 33.560322, 26.255714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485853, 33.382111, 25.905012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215790, 0.851773, -0.477407,
		0.959496, 0.275661, 0.058130,
		0.181117, -0.445526, -0.876757,
		27.540188, 33.248451, 25.641985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714527, 34.024776, 25.835758>,  <27.413406, 33.560322, 26.255714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714527, 34.024776, 25.835758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.596010, 33.756451, 25.563810>,  <27.524900, 33.595455, 25.400642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.596010, 33.756451, 25.563810>,  <27.714527, 34.024776, 25.835758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596010, 33.756451, 25.563810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203382, 0.739818, -0.641331,
		0.933192, -0.051748, -0.355633,
		-0.296291, -0.670814, -0.679868,
		27.507122, 33.555206, 25.359850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938475, 34.319954, 25.197382>,  <27.714527, 34.024776, 25.835758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938475, 34.319954, 25.197382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.665117, 34.046371, 25.095264>,  <27.501102, 33.882221, 25.033995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.665117, 34.046371, 25.095264>,  <27.938475, 34.319954, 25.197382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665117, 34.046371, 25.095264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465095, 0.677431, -0.569890,
		0.562722, -0.270725, -0.781058,
		-0.683396, -0.683956, -0.255293,
		27.460098, 33.841183, 25.018677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956278, 34.362755, 24.598282>,  <27.938475, 34.319954, 25.197382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956278, 34.362755, 24.598282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.602961, 34.185799, 24.660364>,  <27.390970, 34.079624, 24.697615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.602961, 34.185799, 24.660364>,  <27.956278, 34.362755, 24.598282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602961, 34.185799, 24.660364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420738, 0.601947, -0.678704,
		0.206824, -0.664795, -0.717824,
		-0.883291, -0.442388, 0.155207,
		27.337973, 34.053082, 24.706926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655676, 34.318573, 24.026262>,  <27.956278, 34.362755, 24.598282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655676, 34.318573, 24.026262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.338572, 34.258247, 24.262495>,  <27.148310, 34.222054, 24.404234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.338572, 34.258247, 24.262495>,  <27.655676, 34.318573, 24.026262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338572, 34.258247, 24.262495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573740, 0.511759, -0.639472,
		-0.205796, -0.845789, -0.492229,
		-0.792762, -0.150810, 0.590581,
		27.100742, 34.213005, 24.439669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158581, 33.973923, 23.646133>,  <27.655676, 34.318573, 24.026262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158581, 33.973923, 23.646133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.955351, 34.148056, 23.943413>,  <26.833412, 34.252537, 24.121780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.955351, 34.148056, 23.943413>,  <27.158581, 33.973923, 23.646133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955351, 34.148056, 23.943413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619915, 0.414221, -0.666428,
		-0.597966, -0.799316, 0.059414,
		-0.508076, 0.435333, 0.743198,
		26.802927, 34.278656, 24.166372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468052, 34.006245, 23.387329>,  <27.158581, 33.973923, 23.646133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468052, 34.006245, 23.387329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.443560, 34.262108, 23.693815>,  <26.428864, 34.415627, 23.877707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.443560, 34.262108, 23.693815>,  <26.468052, 34.006245, 23.387329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443560, 34.262108, 23.693815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662821, 0.547895, -0.510371,
		-0.746270, -0.539114, 0.390433,
		-0.061232, 0.639662, 0.766214,
		26.425190, 34.454006, 23.923679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762774, 34.105347, 23.524872>,  <26.468052, 34.006245, 23.387329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762774, 34.105347, 23.524872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.977083, 34.423233, 23.638973>,  <26.105669, 34.613964, 23.707434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.977083, 34.423233, 23.638973>,  <25.762774, 34.105347, 23.524872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977083, 34.423233, 23.638973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631365, 0.601382, -0.489610,
		-0.560647, 0.082222, 0.823962,
		0.535772, 0.794720, 0.285251,
		26.137815, 34.661648, 23.724548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310591, 34.708660, 23.512506>,  <25.762774, 34.105347, 23.524872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310591, 34.708660, 23.512506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.675882, 34.865738, 23.555956>,  <25.895058, 34.959984, 23.582026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.675882, 34.865738, 23.555956>,  <25.310591, 34.708660, 23.512506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675882, 34.865738, 23.555956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266267, 0.776996, -0.570420,
		-0.308404, 0.492001, 0.814139,
		0.913230, 0.392698, 0.108625,
		25.949852, 34.983547, 23.588543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.261902, 35.451336, 23.707630>,  <25.310591, 34.708660, 23.512506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.261902, 35.451336, 23.707630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.620453, 35.407009, 23.535942>,  <25.835583, 35.380413, 23.432930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.620453, 35.407009, 23.535942>,  <25.261902, 35.451336, 23.707630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620453, 35.407009, 23.535942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142423, 0.844919, -0.515585,
		0.419793, 0.523289, 0.741582,
		0.896376, -0.110821, -0.429219,
		25.889366, 35.373764, 23.407177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499220, 36.124306, 23.567516>,  <25.261902, 35.451336, 23.707630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499220, 36.124306, 23.567516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.711437, 35.893776, 23.318880>,  <25.838768, 35.755459, 23.169699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.711437, 35.893776, 23.318880>,  <25.499220, 36.124306, 23.567516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711437, 35.893776, 23.318880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094462, 0.688537, -0.719023,
		0.842379, 0.440189, 0.310858,
		0.530543, -0.576325, -0.621590,
		25.870600, 35.720879, 23.132402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874880, 36.620678, 23.292048>,  <25.499220, 36.124306, 23.567516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874880, 36.620678, 23.292048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.912500, 36.309250, 23.043858>,  <25.935074, 36.122395, 22.894943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.912500, 36.309250, 23.043858>,  <25.874880, 36.620678, 23.292048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912500, 36.309250, 23.043858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056509, 0.626407, -0.777445,
		0.993962, 0.038060, 0.102912,
		0.094054, -0.778566, -0.620474,
		25.940716, 36.075680, 22.857716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430687, 36.720982, 22.863640>,  <25.874880, 36.620678, 23.292048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430687, 36.720982, 22.863640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.193830, 36.462471, 22.671103>,  <26.051716, 36.307365, 22.555580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.193830, 36.462471, 22.671103>,  <26.430687, 36.720982, 22.863640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193830, 36.462471, 22.671103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134094, 0.509970, -0.849676,
		0.794598, -0.567674, -0.215312,
		-0.592142, -0.646279, -0.481343,
		26.016188, 36.268589, 22.526699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007746, 37.173664, 23.089260>,  <26.430687, 36.720982, 22.863640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007746, 37.173664, 23.089260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.872881, 37.477531, 23.311691>,  <26.791962, 37.659851, 23.445150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.872881, 37.477531, 23.311691>,  <27.007746, 37.173664, 23.089260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872881, 37.477531, 23.311691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534301, -0.331921, 0.777400,
		0.775142, 0.559222, -0.293982,
		-0.337161, 0.759670, 0.556079,
		26.771732, 37.705433, 23.478516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555204, 37.508297, 23.439133>,  <27.007746, 37.173664, 23.089260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555204, 37.508297, 23.439133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.244747, 37.610668, 23.669647>,  <27.058474, 37.672089, 23.807957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.244747, 37.610668, 23.669647>,  <27.555204, 37.508297, 23.439133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244747, 37.610668, 23.669647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511456, -0.279037, 0.812743,
		0.368806, 0.925549, 0.085678,
		-0.776141, 0.255924, 0.576288,
		27.011906, 37.687447, 23.842533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762562, 38.026775, 23.979834>,  <27.555204, 37.508297, 23.439133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762562, 38.026775, 23.979834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.443626, 37.818779, 24.102381>,  <27.252264, 37.693981, 24.175909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.443626, 37.818779, 24.102381>,  <27.762562, 38.026775, 23.979834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443626, 37.818779, 24.102381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542554, -0.395214, 0.741243,
		-0.264355, 0.757244, 0.597241,
		-0.797340, -0.519987, 0.306369,
		27.204424, 37.662785, 24.194292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736002, 38.159649, 24.663376>,  <27.762562, 38.026775, 23.979834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736002, 38.159649, 24.663376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.522789, 37.826614, 24.603151>,  <27.394861, 37.626793, 24.567017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.522789, 37.826614, 24.603151>,  <27.736002, 38.159649, 24.663376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522789, 37.826614, 24.603151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456869, -0.433007, 0.777030,
		-0.712143, 0.345395, 0.611192,
		-0.533032, -0.832591, -0.150563,
		27.362879, 37.576836, 24.557983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596001, 37.945450, 25.404705>,  <27.736002, 38.159649, 24.663376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596001, 37.945450, 25.404705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.517365, 37.635750, 25.164074>,  <27.470182, 37.449932, 25.019695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.517365, 37.635750, 25.164074>,  <27.596001, 37.945450, 25.404705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517365, 37.635750, 25.164074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402025, -0.623253, 0.670770,
		-0.894275, -0.109983, 0.433792,
		-0.196589, -0.774248, -0.601575,
		27.458387, 37.403477, 24.983601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409676, 37.434433, 25.800060>,  <27.596001, 37.945450, 25.404705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409676, 37.434433, 25.800060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.505859, 37.230381, 25.469740>,  <27.563570, 37.107952, 25.271547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.505859, 37.230381, 25.469740>,  <27.409676, 37.434433, 25.800060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505859, 37.230381, 25.469740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585148, -0.602612, 0.542642,
		-0.774455, -0.613700, 0.153596,
		0.240461, -0.510128, -0.825802,
		27.577997, 37.077343, 25.222000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469067, 36.799923, 26.087502>,  <27.409676, 37.434433, 25.800060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469067, 36.799923, 26.087502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.658417, 36.769012, 25.736515>,  <27.772028, 36.750465, 25.525923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.658417, 36.769012, 25.736515>,  <27.469067, 36.799923, 26.087502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658417, 36.769012, 25.736515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646880, -0.645632, 0.405839,
		-0.597880, -0.759729, -0.255640,
		0.473377, -0.077275, -0.877464,
		27.800430, 36.745831, 25.473276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738283, 36.081833, 26.168453>,  <27.469067, 36.799923, 26.087502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738283, 36.081833, 26.168453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.925953, 36.248997, 25.857267>,  <28.038555, 36.349297, 25.670557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.925953, 36.248997, 25.857267>,  <27.738283, 36.081833, 26.168453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925953, 36.248997, 25.857267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721982, -0.688814, 0.065397,
		-0.508542, -0.592358, -0.624898,
		0.469177, 0.417908, -0.777963,
		28.066706, 36.374371, 25.623878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812611, 35.520374, 25.501549>,  <27.738283, 36.081833, 26.168453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812611, 35.520374, 25.501549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.104452, 35.793297, 25.483089>,  <28.279558, 35.957050, 25.472013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.104452, 35.793297, 25.483089>,  <27.812611, 35.520374, 25.501549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104452, 35.793297, 25.483089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681649, -0.720144, 0.129412,
		0.055064, -0.125877, -0.990517,
		0.729605, 0.682310, -0.046150,
		28.323334, 35.997990, 25.469244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360483, 35.225346, 25.135269>,  <27.812611, 35.520374, 25.501549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360483, 35.225346, 25.135269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.553062, 35.505241, 25.346390>,  <28.668610, 35.673180, 25.473063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.553062, 35.505241, 25.346390>,  <28.360483, 35.225346, 25.135269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553062, 35.505241, 25.346390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636826, -0.693027, 0.337884,
		0.602211, 0.173445, -0.779268,
		0.481450, 0.699736, 0.527803,
		28.697498, 35.715160, 25.504730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993538, 34.977802, 25.039276>,  <28.360483, 35.225346, 25.135269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993538, 34.977802, 25.039276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.976892, 35.226494, 25.352127>,  <28.966906, 35.375710, 25.539837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.976892, 35.226494, 25.352127>,  <28.993538, 34.977802, 25.039276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976892, 35.226494, 25.352127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588435, -0.617390, 0.522086,
		0.807473, 0.481958, -0.340154,
		-0.041616, 0.621729, 0.782126,
		28.964407, 35.413013, 25.586765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601240, 34.841270, 25.410252>,  <28.993538, 34.977802, 25.039276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601240, 34.841270, 25.410252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.347975, 35.020386, 25.662786>,  <29.196016, 35.127857, 25.814308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.347975, 35.020386, 25.662786>,  <29.601240, 34.841270, 25.410252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347975, 35.020386, 25.662786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255832, -0.648749, 0.716711,
		0.730518, 0.615310, 0.296203,
		-0.633161, 0.447792, 0.631339,
		29.158026, 35.154724, 25.852188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976505, 34.998718, 26.019817>,  <29.601240, 34.841270, 25.410252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976505, 34.998718, 26.019817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.596987, 34.988331, 26.145748>,  <29.369276, 34.982098, 26.221306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.596987, 34.988331, 26.145748>,  <29.976505, 34.998718, 26.019817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596987, 34.988331, 26.145748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221970, -0.763910, 0.605946,
		0.224764, 0.644800, 0.730557,
		-0.948794, -0.025967, 0.314826,
		29.312349, 34.980541, 26.240196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028955, 34.849518, 26.657476>,  <29.976505, 34.998718, 26.019817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028955, 34.849518, 26.657476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.629318, 34.856953, 26.672813>,  <29.389536, 34.861416, 26.682016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.629318, 34.856953, 26.672813>,  <30.028955, 34.849518, 26.657476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629318, 34.856953, 26.672813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025183, -0.468243, 0.883241,
		0.034374, 0.883404, 0.467349,
		-0.999092, 0.018592, 0.038342,
		29.329590, 34.862530, 26.684317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830345, 35.078701, 27.356531>,  <30.028955, 34.849518, 26.657476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830345, 35.078701, 27.356531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.526894, 34.843365, 27.244577>,  <29.344822, 34.702164, 27.177404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.526894, 34.843365, 27.244577>,  <29.830345, 35.078701, 27.356531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526894, 34.843365, 27.244577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007664, -0.421498, 0.906797,
		-0.651477, 0.690068, 0.315252,
		-0.758630, -0.588341, -0.279885,
		29.299305, 34.666862, 27.160612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638437, 34.748241, 28.071604>,  <29.830345, 35.078701, 27.356531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638437, 34.748241, 28.071604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427330, 34.556492, 27.791128>,  <29.300667, 34.441441, 27.622843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427330, 34.556492, 27.791128>,  <29.638437, 34.748241, 28.071604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427330, 34.556492, 27.791128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114413, -0.777874, 0.617918,
		-0.841648, 0.406341, 0.355689,
		-0.527767, -0.479374, -0.701187,
		29.268999, 34.412678, 27.580772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953190, 34.641491, 28.303535>,  <29.638437, 34.748241, 28.071604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953190, 34.641491, 28.303535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.061441, 34.342545, 28.060816>,  <29.126392, 34.163177, 27.915184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.061441, 34.342545, 28.060816>,  <28.953190, 34.641491, 28.303535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061441, 34.342545, 28.060816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153771, -0.655789, 0.739118,
		-0.950323, -0.106719, -0.292399,
		0.270630, -0.747364, -0.606801,
		29.142632, 34.118336, 27.878777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459394, 34.087566, 28.343210>,  <28.953190, 34.641491, 28.303535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459394, 34.087566, 28.343210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.777956, 33.889404, 28.204468>,  <28.969093, 33.770508, 28.121222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.777956, 33.889404, 28.204468>,  <28.459394, 34.087566, 28.343210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777956, 33.889404, 28.204468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156829, -0.723100, 0.672704,
		-0.584075, -0.481348, -0.653575,
		0.796405, -0.495409, -0.346856,
		29.016878, 33.740780, 28.100410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244953, 33.375629, 28.438574>,  <28.459394, 34.087566, 28.343210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244953, 33.375629, 28.438574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.639219, 33.373249, 28.371130>,  <28.875778, 33.371819, 28.330664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.639219, 33.373249, 28.371130>,  <28.244953, 33.375629, 28.438574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639219, 33.373249, 28.371130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097859, -0.793915, 0.600102,
		-0.137435, -0.608000, -0.781951,
		0.985665, -0.005954, -0.168610,
		28.934919, 33.371464, 28.320547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585087, 32.666824, 28.557163>,  <28.244953, 33.375629, 28.438574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585087, 32.666824, 28.557163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884001, 32.927433, 28.609451>,  <29.063349, 33.083797, 28.640825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884001, 32.927433, 28.609451>,  <28.585087, 32.666824, 28.557163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884001, 32.927433, 28.609451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376066, -0.576839, 0.725142,
		0.547850, -0.492728, -0.676077,
		0.747285, 0.651519, 0.130723,
		29.108187, 33.122890, 28.648668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<29.950775, 27.881025, 29.862062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.256496, 28.073790, 29.690666>,  <30.439930, 28.189447, 29.587830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.256496, 28.073790, 29.690666>,  <29.950775, 27.881025, 29.862062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256496, 28.073790, 29.690666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568955, -0.816708, 0.096322,
		-0.303532, -0.317410, -0.898398,
		0.764303, 0.481911, -0.428489,
		30.485786, 28.218363, 29.562119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324383, 27.424461, 29.380852>,  <29.950775, 27.881025, 29.862062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324383, 27.424461, 29.380852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.569883, 27.714659, 29.505409>,  <30.717184, 27.888777, 29.580145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.569883, 27.714659, 29.505409>,  <30.324383, 27.424461, 29.380852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569883, 27.714659, 29.505409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669386, -0.687318, 0.281985,
		0.418607, 0.035375, -0.907478,
		0.613751, 0.725494, 0.311396,
		30.754009, 27.932306, 29.598827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877186, 27.091801, 29.238379>,  <30.324383, 27.424461, 29.380852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877186, 27.091801, 29.238379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.985352, 27.383190, 29.490158>,  <31.050251, 27.558023, 29.641226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.985352, 27.383190, 29.490158>,  <30.877186, 27.091801, 29.238379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985352, 27.383190, 29.490158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705693, -0.594717, 0.385109,
		0.654885, 0.340059, -0.674897,
		0.270413, 0.728472, 0.629449,
		31.066475, 27.601732, 29.678993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629021, 27.076782, 29.285776>,  <30.877186, 27.091801, 29.238379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629021, 27.076782, 29.285776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.518929, 27.274776, 29.615440>,  <31.452873, 27.393574, 29.813238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.518929, 27.274776, 29.615440>,  <31.629021, 27.076782, 29.285776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518929, 27.274776, 29.615440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722172, -0.459429, 0.517101,
		0.634600, 0.737506, -0.231016,
		-0.275230, 0.494985, 0.824159,
		31.436359, 27.423271, 29.862688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214630, 27.393440, 29.546623>,  <31.629021, 27.076782, 29.285776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214630, 27.393440, 29.546623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.973570, 27.385002, 29.865713>,  <31.828934, 27.379940, 30.057167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.973570, 27.385002, 29.865713>,  <32.214630, 27.393440, 29.546623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973570, 27.385002, 29.865713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704911, -0.482636, 0.519772,
		0.374047, 0.875567, 0.305730,
		-0.602652, -0.021094, 0.797725,
		31.792774, 27.378674, 30.105030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692894, 27.524031, 30.120459>,  <32.214630, 27.393440, 29.546623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692894, 27.524031, 30.120459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.370831, 27.365623, 30.297045>,  <32.177593, 27.270578, 30.402996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.370831, 27.365623, 30.297045>,  <32.692894, 27.524031, 30.120459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370831, 27.365623, 30.297045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592969, -0.524259, 0.611180,
		-0.010597, 0.753870, 0.656938,
		-0.805156, -0.396020, 0.441466,
		32.129284, 27.246817, 30.429485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858158, 27.484873, 30.780891>,  <32.692894, 27.524031, 30.120459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858158, 27.484873, 30.780891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.550266, 27.229549, 30.784527>,  <32.365532, 27.076355, 30.786709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.550266, 27.229549, 30.784527>,  <32.858158, 27.484873, 30.780891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550266, 27.229549, 30.784527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477591, -0.566354, 0.671677,
		-0.423589, 0.521350, 0.740788,
		-0.769727, -0.638309, 0.009091,
		32.319347, 27.038057, 30.787254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738026, 27.416639, 31.448387>,  <32.858158, 27.484873, 30.780891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738026, 27.416639, 31.448387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.579617, 27.099182, 31.263649>,  <32.484573, 26.908709, 31.152807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.579617, 27.099182, 31.263649>,  <32.738026, 27.416639, 31.448387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579617, 27.099182, 31.263649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278258, -0.583039, 0.763307,
		-0.875066, 0.173772, 0.451732,
		-0.396019, -0.793643, -0.461844,
		32.460812, 26.861090, 31.125095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326801, 26.990892, 31.929457>,  <32.738026, 27.416639, 31.448387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326801, 26.990892, 31.929457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.427074, 26.728443, 31.644737>,  <32.487240, 26.570974, 31.473906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.427074, 26.728443, 31.644737>,  <32.326801, 26.990892, 31.929457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427074, 26.728443, 31.644737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312826, -0.640927, 0.700965,
		-0.916131, -0.398393, 0.044580,
		0.250687, -0.656121, -0.711801,
		32.502281, 26.531607, 31.431196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091106, 26.278784, 32.165409>,  <32.326801, 26.990892, 31.929457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091106, 26.278784, 32.165409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.367443, 26.236204, 31.879360>,  <32.533245, 26.210655, 31.707729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.367443, 26.236204, 31.879360>,  <32.091106, 26.278784, 32.165409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367443, 26.236204, 31.879360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497518, -0.647692, 0.577036,
		-0.524606, -0.754429, -0.394494,
		0.690843, -0.106449, -0.715125,
		32.574696, 26.204269, 31.664822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328243, 25.549267, 32.241077>,  <32.091106, 26.278784, 32.165409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328243, 25.549267, 32.241077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.607693, 25.732964, 32.021618>,  <32.775364, 25.843182, 31.889940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.607693, 25.732964, 32.021618>,  <32.328243, 25.549267, 32.241077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607693, 25.732964, 32.021618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714731, -0.483183, 0.505662,
		-0.032879, -0.745408, -0.665797,
		0.698626, 0.459240, -0.548653,
		32.817280, 25.870735, 31.857021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827251, 25.000553, 32.065239>,  <32.328243, 25.549267, 32.241077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827251, 25.000553, 32.065239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.009342, 25.354832, 32.028782>,  <33.118599, 25.567398, 32.006908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.009342, 25.354832, 32.028782>,  <32.827251, 25.000553, 32.065239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009342, 25.354832, 32.028782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682348, -0.281276, 0.674747,
		0.571985, -0.369357, -0.732399,
		0.455230, 0.885697, -0.091145,
		33.145912, 25.620541, 32.001438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504875, 24.889591, 31.902500>,  <32.827251, 25.000553, 32.065239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504875, 24.889591, 31.902500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.543888, 25.250914, 32.069607>,  <33.567295, 25.467707, 32.169872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.543888, 25.250914, 32.069607>,  <33.504875, 24.889591, 31.902500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543888, 25.250914, 32.069607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747804, -0.343507, 0.568148,
		0.656716, 0.256992, -0.708999,
		0.097536, 0.903304, 0.417766,
		33.573151, 25.521904, 32.194935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206505, 25.115484, 31.900667>,  <33.504875, 24.889591, 31.902500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206505, 25.115484, 31.900667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.015831, 25.281071, 32.210869>,  <33.901428, 25.380423, 32.396992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.015831, 25.281071, 32.210869>,  <34.206505, 25.115484, 31.900667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015831, 25.281071, 32.210869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666999, -0.404317, 0.625811,
		0.572615, 0.815573, -0.083386,
		-0.476680, 0.413967, 0.775505,
		33.872826, 25.405260, 32.443520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642185, 25.219259, 31.418818>,  <34.206505, 25.115484, 31.900667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642185, 25.219259, 31.418818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019997, 25.208931, 31.287848>,  <35.246681, 25.202734, 31.209267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019997, 25.208931, 31.287848>,  <34.642185, 25.219259, 31.418818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019997, 25.208931, 31.287848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277169, 0.472188, -0.836789,
		0.176211, 0.881120, 0.438837,
		0.944525, -0.025819, -0.327424,
		35.303352, 25.201185, 31.189621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748230, 25.810316, 31.183046>,  <34.642185, 25.219259, 31.418818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748230, 25.810316, 31.183046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.040741, 25.614357, 30.993214>,  <35.216248, 25.496780, 30.879314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.040741, 25.614357, 30.993214>,  <34.748230, 25.810316, 31.183046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040741, 25.614357, 30.993214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224034, 0.484668, -0.845521,
		0.644235, 0.724635, 0.244674,
		0.731280, -0.489899, -0.474583,
		35.260124, 25.467388, 30.850838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204559, 26.307461, 30.911846>,  <34.748230, 25.810316, 31.183046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204559, 26.307461, 30.911846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.240562, 25.972269, 30.696552>,  <35.262165, 25.771154, 30.567377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.240562, 25.972269, 30.696552>,  <35.204559, 26.307461, 30.911846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240562, 25.972269, 30.696552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196015, 0.514951, -0.834508,
		0.976462, 0.180610, -0.117909,
		0.090003, -0.837977, -0.538232,
		35.267563, 25.720877, 30.535082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572910, 26.511456, 30.332203>,  <35.204559, 26.307461, 30.911846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572910, 26.511456, 30.332203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.401005, 26.161398, 30.243277>,  <35.297859, 25.951363, 30.189920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.401005, 26.161398, 30.243277>,  <35.572910, 26.511456, 30.332203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401005, 26.161398, 30.243277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178009, 0.323497, -0.929335,
		0.885219, -0.359824, -0.294812,
		-0.429768, -0.875143, -0.222313,
		35.272076, 25.898855, 30.176582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763710, 26.368263, 29.747803>,  <35.572910, 26.511456, 30.332203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763710, 26.368263, 29.747803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.429680, 26.148558, 29.760187>,  <35.229263, 26.016733, 29.767618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.429680, 26.148558, 29.760187>,  <35.763710, 26.368263, 29.747803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429680, 26.148558, 29.760187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262237, 0.347953, -0.900089,
		0.483613, -0.759762, -0.434604,
		-0.835075, -0.549264, 0.030963,
		35.179157, 25.983778, 29.769476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676689, 26.097460, 29.023708>,  <35.763710, 26.368263, 29.747803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676689, 26.097460, 29.023708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328976, 26.042923, 29.213762>,  <35.120346, 26.010201, 29.327795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328976, 26.042923, 29.213762>,  <35.676689, 26.097460, 29.023708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328976, 26.042923, 29.213762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483008, 0.438662, -0.757812,
		-0.105103, -0.888249, -0.447177,
		-0.869285, -0.136342, 0.475136,
		35.068192, 26.002020, 29.356302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205132, 25.858679, 28.508680>,  <35.676689, 26.097460, 29.023708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205132, 25.858679, 28.508680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.956882, 25.999542, 28.788912>,  <34.807934, 26.084061, 28.957050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.956882, 25.999542, 28.788912>,  <35.205132, 25.858679, 28.508680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956882, 25.999542, 28.788912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511674, 0.495128, -0.702167,
		-0.594149, -0.794250, -0.127099,
		-0.620627, 0.352158, 0.700577,
		34.770695, 26.105190, 28.999084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530323, 25.894327, 28.276634>,  <35.205132, 25.858679, 28.508680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530323, 25.894327, 28.276634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.486855, 26.174084, 28.559206>,  <34.460773, 26.341938, 28.728748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.486855, 26.174084, 28.559206>,  <34.530323, 25.894327, 28.276634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486855, 26.174084, 28.559206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492483, 0.579421, -0.649409,
		-0.863511, -0.418475, 0.281473,
		-0.108670, 0.699392, 0.706428,
		34.454254, 26.383902, 28.771135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908760, 26.216263, 28.072477>,  <34.530323, 25.894327, 28.276634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908760, 26.216263, 28.072477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.056206, 26.497791, 28.315380>,  <34.144672, 26.666708, 28.461121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.056206, 26.497791, 28.315380>,  <33.908760, 26.216263, 28.072477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056206, 26.497791, 28.315380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436836, 0.707785, -0.555170,
		-0.820547, -0.060628, 0.568354,
		0.368614, 0.703821, 0.607256,
		34.166790, 26.708937, 28.497557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430756, 26.631651, 28.422646>,  <33.908760, 26.216263, 28.072477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430756, 26.631651, 28.422646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.760887, 26.857130, 28.409557>,  <33.958965, 26.992418, 28.401705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.760887, 26.857130, 28.409557>,  <33.430756, 26.631651, 28.422646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760887, 26.857130, 28.409557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546479, 0.782848, -0.297506,
		-0.142089, 0.263423, 0.954159,
		0.825332, 0.563700, -0.032721,
		34.008488, 27.026239, 28.399740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127182, 27.310863, 28.661411>,  <33.430756, 26.631651, 28.422646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127182, 27.310863, 28.661411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.496479, 27.374319, 28.521441>,  <33.718060, 27.412392, 28.437458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.496479, 27.374319, 28.521441>,  <33.127182, 27.310863, 28.661411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496479, 27.374319, 28.521441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309767, 0.846139, -0.433696,
		0.227286, 0.508805, 0.830336,
		0.923247, 0.158638, -0.349927,
		33.773453, 27.421911, 28.416462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308804, 27.966034, 28.718550>,  <33.127182, 27.310863, 28.661411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308804, 27.966034, 28.718550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.569427, 27.873039, 28.429712>,  <33.725800, 27.817242, 28.256409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.569427, 27.873039, 28.429712>,  <33.308804, 27.966034, 28.718550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569427, 27.873039, 28.429712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290824, 0.802600, -0.520821,
		0.700638, 0.549348, 0.455327,
		0.651558, -0.232487, -0.722096,
		33.764896, 27.803293, 28.213083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753963, 28.566977, 28.496763>,  <33.308804, 27.966034, 28.718550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753963, 28.566977, 28.496763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.776527, 28.329107, 28.175970>,  <33.790066, 28.186386, 27.983494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.776527, 28.329107, 28.175970>,  <33.753963, 28.566977, 28.496763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776527, 28.329107, 28.175970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360636, 0.736896, -0.571775,
		0.931000, 0.321476, -0.172896,
		0.056405, -0.594675, -0.801985,
		33.793449, 28.150705, 27.935375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141140, 28.974707, 27.963528>,  <33.753963, 28.566977, 28.496763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141140, 28.974707, 27.963528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.940079, 28.699919, 27.753607>,  <33.819443, 28.535046, 27.627655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.940079, 28.699919, 27.753607>,  <34.141140, 28.974707, 27.963528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940079, 28.699919, 27.753607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255544, 0.698007, -0.668942,
		0.825859, -0.202132, -0.526403,
		-0.502648, -0.686971, -0.524802,
		33.789284, 28.493828, 27.596167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831497, 29.025400, 27.829073>,  <34.141140, 28.974707, 27.963528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831497, 29.025400, 27.829073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.127026, 29.294134, 27.807947>,  <35.304340, 29.455374, 27.795271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.127026, 29.294134, 27.807947>,  <34.831497, 29.025400, 27.829073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127026, 29.294134, 27.807947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316206, -0.276390, 0.907536,
		0.595116, -0.687203, -0.416640,
		0.738817, 0.671834, -0.052814,
		35.348671, 29.495684, 27.792103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365555, 28.680740, 28.044540>,  <34.831497, 29.025400, 27.829073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365555, 28.680740, 28.044540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443863, 29.070601, 28.087868>,  <35.490849, 29.304516, 28.113863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443863, 29.070601, 28.087868>,  <35.365555, 28.680740, 28.044540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443863, 29.070601, 28.087868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480803, -0.191666, 0.855624,
		0.854694, -0.115429, -0.506137,
		0.195773, 0.974649, 0.108317,
		35.502594, 29.362995, 28.120363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985687, 28.663954, 28.301855>,  <35.365555, 28.680740, 28.044540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985687, 28.663954, 28.301855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.886131, 29.036112, 28.409498>,  <35.826397, 29.259407, 28.474085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.886131, 29.036112, 28.409498>,  <35.985687, 28.663954, 28.301855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886131, 29.036112, 28.409498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597585, -0.071140, 0.798643,
		0.762197, 0.359592, -0.538283,
		-0.248892, 0.930394, 0.269109,
		35.811462, 29.315229, 28.490231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668076, 28.954189, 28.463818>,  <35.985687, 28.663954, 28.301855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668076, 28.954189, 28.463818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.386616, 29.160374, 28.659439>,  <36.217739, 29.284084, 28.776812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.386616, 29.160374, 28.659439>,  <36.668076, 28.954189, 28.463818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386616, 29.160374, 28.659439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540699, -0.058111, 0.839206,
		0.460996, 0.854941, -0.237819,
		-0.703652, 0.515460, 0.489055,
		36.175522, 29.315012, 28.806156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083153, 29.352438, 28.971272>,  <36.668076, 28.954189, 28.463818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083153, 29.352438, 28.971272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.713520, 29.379032, 29.121815>,  <36.491741, 29.394989, 29.212141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.713520, 29.379032, 29.121815>,  <37.083153, 29.352438, 28.971272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713520, 29.379032, 29.121815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362448, -0.159905, 0.918184,
		0.121227, 0.984891, 0.123668,
		-0.924086, 0.066485, 0.376356,
		36.436295, 29.398977, 29.234722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204212, 29.795048, 29.595222>,  <37.083153, 29.352438, 28.971272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204212, 29.795048, 29.595222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861935, 29.592384, 29.637348>,  <36.656570, 29.470787, 29.662622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861935, 29.592384, 29.637348>,  <37.204212, 29.795048, 29.595222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861935, 29.592384, 29.637348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195268, -0.127668, 0.972405,
		-0.479230, 0.852643, 0.208178,
		-0.855692, -0.506656, 0.105312,
		36.605228, 29.440388, 29.668941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916458, 29.957129, 30.175472>,  <37.204212, 29.795048, 29.595222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916458, 29.957129, 30.175472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.732353, 29.605169, 30.128248>,  <36.621891, 29.393993, 30.099915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.732353, 29.605169, 30.128248>,  <36.916458, 29.957129, 30.175472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732353, 29.605169, 30.128248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034119, -0.115352, 0.992739,
		-0.887126, 0.460950, 0.023071,
		-0.460264, -0.879897, -0.118059,
		36.594273, 29.341200, 30.092831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375996, 29.941309, 30.793167>,  <36.916458, 29.957129, 30.175472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375996, 29.941309, 30.793167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470905, 29.585009, 30.638111>,  <36.527851, 29.371229, 30.545078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470905, 29.585009, 30.638111>,  <36.375996, 29.941309, 30.793167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470905, 29.585009, 30.638111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077427, -0.380424, 0.921566,
		-0.968353, -0.248676, -0.021296,
		0.237273, -0.890752, -0.387638,
		36.542088, 29.317783, 30.521820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138939, 29.383055, 31.364107>,  <36.375996, 29.941309, 30.793167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138939, 29.383055, 31.364107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378410, 29.163639, 31.130632>,  <36.522095, 29.031990, 30.990547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378410, 29.163639, 31.130632>,  <36.138939, 29.383055, 31.364107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378410, 29.163639, 31.130632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375048, -0.451919, 0.809387,
		-0.707760, -0.703472, -0.064825,
		0.598677, -0.548540, -0.583686,
		36.558014, 28.999077, 30.955526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988773, 28.626171, 31.551775>,  <36.138939, 29.383055, 31.364107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988773, 28.626171, 31.551775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354221, 28.652346, 31.391266>,  <36.573490, 28.668051, 31.294960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354221, 28.652346, 31.391266>,  <35.988773, 28.626171, 31.551775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354221, 28.652346, 31.391266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391961, -0.403981, 0.826539,
		-0.108019, -0.912424, -0.394734,
		0.913619, 0.065438, -0.401272,
		36.628307, 28.671976, 31.270884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229099, 28.008219, 31.650148>,  <35.988773, 28.626171, 31.551775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229099, 28.008219, 31.650148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.534702, 28.260019, 31.593552>,  <36.718063, 28.411100, 31.559593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.534702, 28.260019, 31.593552>,  <36.229099, 28.008219, 31.650148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534702, 28.260019, 31.593552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290139, -0.139325, 0.946788,
		0.576293, -0.764405, -0.289089,
		0.764006, 0.629503, -0.141492,
		36.763905, 28.448870, 31.551104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986565, 27.905113, 31.366148>,  <36.229099, 28.008219, 31.650148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986565, 27.905113, 31.366148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.997257, 27.793297, 31.750051>,  <37.003674, 27.726206, 31.980394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.997257, 27.793297, 31.750051>,  <36.986565, 27.905113, 31.366148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997257, 27.793297, 31.750051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862171, 0.479455, 0.163658,
		-0.505912, -0.831852, -0.228200,
		0.026728, -0.279544, 0.959761,
		37.005276, 27.709435, 32.037979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.191601, 31.542086, 24.540066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156448, 31.819410, 24.826170>,  <34.135357, 31.985806, 24.997831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156448, 31.819410, 24.826170>,  <34.191601, 31.542086, 24.540066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156448, 31.819410, 24.826170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583873, -0.545907, 0.600897,
		0.807074, 0.470430, -0.356829,
		-0.087884, 0.693312, 0.715259,
		34.130085, 32.027405, 25.040749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901615, 31.539036, 24.838646>,  <34.191601, 31.542086, 24.540066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901615, 31.539036, 24.838646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665829, 31.725260, 25.102701>,  <34.524357, 31.836994, 25.261135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665829, 31.725260, 25.102701>,  <34.901615, 31.539036, 24.838646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665829, 31.725260, 25.102701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476340, -0.459676, 0.749532,
		0.652402, 0.756274, 0.049198,
		-0.589467, 0.465561, 0.660137,
		34.488987, 31.864927, 25.300743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359097, 31.854815, 25.292637>,  <34.901615, 31.539036, 24.838646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359097, 31.854815, 25.292637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010647, 31.824963, 25.486778>,  <34.801575, 31.807051, 25.603264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010647, 31.824963, 25.486778>,  <35.359097, 31.854815, 25.292637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010647, 31.824963, 25.486778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465068, -0.442675, 0.766649,
		0.157637, 0.893571, 0.420335,
		-0.871127, -0.074632, 0.485353,
		34.749310, 31.802572, 25.632383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547455, 31.796268, 25.895008>,  <35.359097, 31.854815, 25.292637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547455, 31.796268, 25.895008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171974, 31.685310, 25.976881>,  <34.946686, 31.618736, 26.026005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171974, 31.685310, 25.976881>,  <35.547455, 31.796268, 25.895008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171974, 31.685310, 25.976881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344117, -0.718417, 0.604533,
		-0.020645, 0.637911, 0.769834,
		-0.938700, -0.277394, 0.204684,
		34.890366, 31.602093, 26.038286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402035, 31.808556, 26.671518>,  <35.547455, 31.796268, 25.895008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402035, 31.808556, 26.671518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149658, 31.536478, 26.522255>,  <34.998234, 31.373232, 26.432697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149658, 31.536478, 26.522255>,  <35.402035, 31.808556, 26.671518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149658, 31.536478, 26.522255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379626, -0.690140, 0.616110,
		-0.676607, 0.247068, 0.693657,
		-0.630941, -0.680194, -0.373160,
		34.960377, 31.332420, 26.410307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211853, 31.392977, 27.253164>,  <35.402035, 31.808556, 26.671518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211853, 31.392977, 27.253164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079876, 31.153107, 26.961540>,  <35.000690, 31.009184, 26.786566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079876, 31.153107, 26.961540>,  <35.211853, 31.392977, 27.253164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079876, 31.153107, 26.961540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001206, -0.772575, 0.634923,
		-0.943999, 0.208610, 0.255631,
		-0.329945, -0.599675, -0.729058,
		34.980892, 30.973204, 26.742823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534111, 31.090004, 27.458506>,  <35.211853, 31.392977, 27.253164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534111, 31.090004, 27.458506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728676, 30.865664, 27.190521>,  <34.845413, 30.731060, 27.029730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728676, 30.865664, 27.190521>,  <34.534111, 31.090004, 27.458506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728676, 30.865664, 27.190521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267410, -0.634430, 0.725252,
		-0.831804, -0.531924, -0.158616,
		0.486409, -0.560852, -0.669963,
		34.874599, 30.697409, 26.989532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345810, 30.442507, 27.579382>,  <34.534111, 31.090004, 27.458506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345810, 30.442507, 27.579382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679058, 30.375677, 27.368479>,  <34.879005, 30.335579, 27.241938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679058, 30.375677, 27.368479>,  <34.345810, 30.442507, 27.579382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679058, 30.375677, 27.368479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268649, -0.711042, 0.649806,
		-0.483468, -0.683012, -0.547497,
		0.833118, -0.167076, -0.527256,
		34.928993, 30.325554, 27.210302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383179, 29.655495, 27.484821>,  <34.345810, 30.442507, 27.579382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383179, 29.655495, 27.484821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754498, 29.799818, 27.448845>,  <34.977287, 29.886412, 27.427259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754498, 29.799818, 27.448845>,  <34.383179, 29.655495, 27.484821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754498, 29.799818, 27.448845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340879, -0.729062, 0.593523,
		0.148574, -0.581622, -0.799775,
		0.928292, 0.360809, -0.089943,
		35.032986, 29.908060, 27.421862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265778, 29.042406, 27.119169>,  <34.383179, 29.655495, 27.484821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265778, 29.042406, 27.119169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934902, 28.818394, 27.137630>,  <33.736378, 28.683987, 27.148708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934902, 28.818394, 27.137630>,  <34.265778, 29.042406, 27.119169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934902, 28.818394, 27.137630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362918, 0.469719, -0.804770,
		0.429010, -0.682449, -0.591789,
		-0.827189, -0.560025, 0.046159,
		33.686745, 28.650385, 27.151478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084164, 28.705458, 26.474453>,  <34.265778, 29.042406, 27.119169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084164, 28.705458, 26.474453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735062, 28.729162, 26.668272>,  <33.525600, 28.743385, 26.784563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735062, 28.729162, 26.668272>,  <34.084164, 28.705458, 26.474453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735062, 28.729162, 26.668272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402212, 0.475193, -0.782571,
		-0.276629, -0.877884, -0.390892,
		-0.872756, 0.059261, 0.484547,
		33.473236, 28.746941, 26.813637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654003, 28.500656, 25.960356>,  <34.084164, 28.705458, 26.474453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654003, 28.500656, 25.960356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427986, 28.681646, 26.236324>,  <33.292377, 28.790239, 26.401905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427986, 28.681646, 26.236324>,  <33.654003, 28.500656, 25.960356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427986, 28.681646, 26.236324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512589, 0.462729, -0.723280,
		-0.646513, -0.762331, -0.029529,
		-0.565043, 0.452473, 0.689923,
		33.258472, 28.817389, 26.443302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090595, 28.548771, 25.637142>,  <33.654003, 28.500656, 25.960356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090595, 28.548771, 25.637142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012379, 28.803328, 25.935608>,  <32.965446, 28.956062, 26.114689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012379, 28.803328, 25.935608>,  <33.090595, 28.548771, 25.637142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012379, 28.803328, 25.935608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583862, 0.535772, -0.609962,
		-0.787951, -0.554934, 0.266798,
		-0.195546, 0.636394, 0.746167,
		32.953716, 28.994246, 26.159458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345657, 28.552395, 25.690662>,  <33.090595, 28.548771, 25.637142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345657, 28.552395, 25.690662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484940, 28.889647, 25.854559>,  <32.568508, 29.091997, 25.952896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484940, 28.889647, 25.854559>,  <32.345657, 28.552395, 25.690662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484940, 28.889647, 25.854559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720037, 0.520439, -0.459011,
		-0.600250, -0.135198, 0.788303,
		0.348206, 0.843128, 0.409741,
		32.589401, 29.142586, 25.977482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730330, 29.080975, 25.625299>,  <32.345657, 28.552395, 25.690662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730330, 29.080975, 25.625299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026478, 29.327841, 25.731852>,  <32.204166, 29.475962, 25.795782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026478, 29.327841, 25.731852>,  <31.730330, 29.080975, 25.625299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026478, 29.327841, 25.731852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369588, 0.704749, -0.605585,
		-0.561478, 0.349905, 0.749873,
		0.740369, 0.617167, 0.266381,
		32.248589, 29.512991, 25.811766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559860, 29.694359, 26.104160>,  <31.730330, 29.080975, 25.625299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559860, 29.694359, 26.104160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874020, 29.804554, 25.882437>,  <32.062515, 29.870670, 25.749403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874020, 29.804554, 25.882437>,  <31.559860, 29.694359, 26.104160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874020, 29.804554, 25.882437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536420, 0.749772, -0.387422,
		0.308875, 0.601622, 0.736646,
		0.785398, 0.275487, -0.554307,
		32.109638, 29.887199, 25.716145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561304, 30.391384, 26.186916>,  <31.559860, 29.694359, 26.104160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561304, 30.391384, 26.186916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782181, 30.325546, 25.859993>,  <31.914707, 30.286043, 25.663839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782181, 30.325546, 25.859993>,  <31.561304, 30.391384, 26.186916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782181, 30.325546, 25.859993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344611, 0.847594, -0.403520,
		0.759162, 0.504474, 0.411314,
		0.552193, -0.164593, -0.817308,
		31.947838, 30.276169, 25.614801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738562, 31.067640, 25.899109>,  <31.561304, 30.391384, 26.186916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738562, 31.067640, 25.899109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814613, 30.833572, 25.583786>,  <31.860245, 30.693132, 25.394592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814613, 30.833572, 25.583786>,  <31.738562, 31.067640, 25.899109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814613, 30.833572, 25.583786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369557, 0.701236, -0.609669,
		0.909548, 0.407240, -0.082928,
		0.190130, -0.585170, -0.788306,
		31.871653, 30.658022, 25.347294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042969, 31.496201, 25.425106>,  <31.738562, 31.067640, 25.899109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042969, 31.496201, 25.425106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932180, 31.174669, 25.214527>,  <31.865707, 30.981750, 25.088179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932180, 31.174669, 25.214527>,  <32.042969, 31.496201, 25.425106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932180, 31.174669, 25.214527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478556, 0.590497, -0.649844,
		0.833228, 0.071946, -0.548228,
		-0.276974, -0.803826, -0.526450,
		31.849089, 30.933521, 25.056593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198795, 31.665106, 24.676428>,  <32.042969, 31.496201, 25.425106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198795, 31.665106, 24.676428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936056, 31.365803, 24.639210>,  <31.778412, 31.186220, 24.616879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936056, 31.365803, 24.639210>,  <32.198795, 31.665106, 24.676428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936056, 31.365803, 24.639210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531477, 0.546982, -0.646794,
		0.534854, -0.375406, -0.756969,
		-0.656859, -0.748251, -0.093036,
		31.739000, 31.141325, 24.611298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078381, 31.570961, 23.929045>,  <32.198795, 31.665106, 24.676428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078381, 31.570961, 23.929045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785082, 31.409569, 24.147970>,  <31.609102, 31.312733, 24.279325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785082, 31.409569, 24.147970>,  <32.078381, 31.570961, 23.929045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785082, 31.409569, 24.147970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678157, 0.492569, -0.545417,
		-0.049523, -0.771089, -0.634799,
		-0.733247, -0.403482, 0.547312,
		31.565107, 31.288525, 24.312164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616137, 31.416348, 23.373642>,  <32.078381, 31.570961, 23.929045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616137, 31.416348, 23.373642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411835, 31.411766, 23.717503>,  <31.289253, 31.409018, 23.923819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411835, 31.411766, 23.717503>,  <31.616137, 31.416348, 23.373642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411835, 31.411766, 23.717503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804348, 0.359431, -0.473110,
		-0.303567, -0.933101, -0.192792,
		-0.510755, -0.011451, 0.859650,
		31.258608, 31.408331, 23.975397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013893, 31.151573, 23.135239>,  <31.616137, 31.416348, 23.373642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013893, 31.151573, 23.135239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944094, 31.358746, 23.470213>,  <30.902214, 31.483049, 23.671198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944094, 31.358746, 23.470213>,  <31.013893, 31.151573, 23.135239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944094, 31.358746, 23.470213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770363, 0.457888, -0.443711,
		-0.613263, -0.722556, 0.319095,
		-0.174496, 0.517931, 0.837436,
		30.891745, 31.514126, 23.721443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.966570, 36.633797, 29.453524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307993, 36.553005, 29.261421>,  <30.512846, 36.504532, 29.146160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307993, 36.553005, 29.261421>,  <29.966570, 36.633797, 29.453524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307993, 36.553005, 29.261421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133009, -0.806777, 0.575691,
		-0.503736, -0.555263, -0.661765,
		0.853556, -0.201975, -0.480257,
		30.564060, 36.492413, 29.117344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986130, 35.926876, 29.302694>,  <29.966570, 36.633797, 29.453524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986130, 35.926876, 29.302694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.370407, 36.037868, 29.299257>,  <30.600973, 36.104465, 29.297195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.370407, 36.037868, 29.299257>,  <29.986130, 35.926876, 29.302694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370407, 36.037868, 29.299257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245998, -0.836531, 0.489592,
		0.128665, -0.472462, -0.871909,
		0.960693, 0.277482, -0.008593,
		30.658615, 36.121113, 29.296679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334688, 35.593887, 28.811586>,  <29.986130, 35.926876, 29.302694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334688, 35.593887, 28.811586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.627949, 35.709576, 29.057785>,  <30.803905, 35.778988, 29.205505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.627949, 35.709576, 29.057785>,  <30.334688, 35.593887, 28.811586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627949, 35.709576, 29.057785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260843, -0.955431, 0.138245,
		0.628050, 0.059194, -0.775919,
		0.733154, 0.289218, 0.615499,
		30.847895, 35.796341, 29.242435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664082, 34.972118, 28.869337>,  <30.334688, 35.593887, 28.811586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664082, 34.972118, 28.869337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.846493, 35.202038, 29.141115>,  <30.955938, 35.339989, 29.304182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.846493, 35.202038, 29.141115>,  <30.664082, 34.972118, 28.869337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846493, 35.202038, 29.141115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339731, -0.818068, 0.464056,
		0.822571, 0.019207, -0.568337,
		0.456026, 0.574801, 0.679444,
		30.983301, 35.374477, 29.344948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293848, 34.530685, 28.916786>,  <30.664082, 34.972118, 28.869337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293848, 34.530685, 28.916786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.236027, 34.788345, 29.217232>,  <31.201334, 34.942940, 29.397499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.236027, 34.788345, 29.217232>,  <31.293848, 34.530685, 28.916786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236027, 34.788345, 29.217232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268029, -0.705220, 0.656373,
		0.952505, 0.296200, -0.070710,
		-0.144552, 0.644151, 0.751115,
		31.192661, 34.981590, 29.442566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864397, 34.555500, 29.379173>,  <31.293848, 34.530685, 28.916786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864397, 34.555500, 29.379173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.551916, 34.648544, 29.610903>,  <31.364428, 34.704372, 29.749941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.551916, 34.648544, 29.610903>,  <31.864397, 34.555500, 29.379173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551916, 34.648544, 29.610903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225083, -0.760624, 0.608924,
		0.582289, 0.606089, 0.541845,
		-0.781203, 0.232610, 0.579323,
		31.317554, 34.718327, 29.784700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113365, 34.649845, 29.962076>,  <31.864397, 34.555500, 29.379173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113365, 34.649845, 29.962076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.734030, 34.568859, 30.059772>,  <31.506428, 34.520267, 30.118391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.734030, 34.568859, 30.059772>,  <32.113365, 34.649845, 29.962076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734030, 34.568859, 30.059772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310385, -0.751390, 0.582301,
		0.065624, 0.628030, 0.775417,
		-0.948343, -0.202465, 0.244241,
		31.449528, 34.508118, 30.133045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161648, 34.542007, 30.621555>,  <32.113365, 34.649845, 29.962076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161648, 34.542007, 30.621555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.812098, 34.375603, 30.520935>,  <31.602367, 34.275761, 30.460564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.812098, 34.375603, 30.520935>,  <32.161648, 34.542007, 30.621555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812098, 34.375603, 30.520935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210400, -0.790103, 0.575733,
		-0.438260, 0.450193, 0.777981,
		-0.873876, -0.416008, -0.251549,
		31.549934, 34.250801, 30.445471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941523, 34.394852, 31.165361>,  <32.161648, 34.542007, 30.621555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941523, 34.394852, 31.165361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.748184, 34.167492, 30.899040>,  <31.632181, 34.031075, 30.739246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.748184, 34.167492, 30.899040>,  <31.941523, 34.394852, 31.165361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748184, 34.167492, 30.899040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167377, -0.806518, 0.567022,
		-0.859280, 0.162627, 0.484965,
		-0.483346, -0.568403, -0.665804,
		31.603180, 33.996971, 30.699299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382696, 34.073807, 31.546808>,  <31.941523, 34.394852, 31.165361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382696, 34.073807, 31.546808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.411959, 33.834686, 31.227488>,  <31.429516, 33.691216, 31.035894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.411959, 33.834686, 31.227488>,  <31.382696, 34.073807, 31.546808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411959, 33.834686, 31.227488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179147, -0.779551, 0.600173,
		-0.981099, -0.186920, 0.050064,
		0.073157, -0.597798, -0.798302,
		31.433907, 33.655346, 30.987997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956526, 33.600807, 31.721678>,  <31.382696, 34.073807, 31.546808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956526, 33.600807, 31.721678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.206171, 33.461525, 31.441896>,  <31.355959, 33.377956, 31.274027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.206171, 33.461525, 31.441896>,  <30.956526, 33.600807, 31.721678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206171, 33.461525, 31.441896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300118, -0.719697, 0.626071,
		-0.721401, -0.600655, -0.344664,
		0.624106, -0.348209, -0.699458,
		31.393404, 33.357063, 31.232059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808640, 32.835762, 31.645493>,  <30.956526, 33.600807, 31.721678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808640, 32.835762, 31.645493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.178591, 32.879906, 31.499933>,  <31.400562, 32.906391, 31.412598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.178591, 32.879906, 31.499933>,  <30.808640, 32.835762, 31.645493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178591, 32.879906, 31.499933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330855, -0.705248, 0.627025,
		-0.187440, -0.700319, -0.688781,
		0.924879, 0.110357, -0.363896,
		31.456055, 32.913013, 31.390764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028807, 32.169003, 31.678738>,  <30.808640, 32.835762, 31.645493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028807, 32.169003, 31.678738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.362673, 32.384659, 31.633722>,  <31.562992, 32.514053, 31.606712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.362673, 32.384659, 31.633722>,  <31.028807, 32.169003, 31.678738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362673, 32.384659, 31.633722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489459, -0.632433, 0.600382,
		0.252515, -0.556201, -0.791756,
		0.834665, 0.539137, -0.112539,
		31.613073, 32.546398, 31.599960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529331, 31.728102, 31.463760>,  <31.028807, 32.169003, 31.678738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529331, 31.728102, 31.463760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.734610, 32.034500, 31.618618>,  <31.857777, 32.218338, 31.711533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.734610, 32.034500, 31.618618>,  <31.529331, 31.728102, 31.463760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734610, 32.034500, 31.618618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556889, -0.640417, 0.528905,
		0.653073, -0.055835, -0.755234,
		0.513196, 0.765995, 0.387146,
		31.888569, 32.264297, 31.734762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694435, 31.075579, 31.017530>,  <31.529331, 31.728102, 31.463760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694435, 31.075579, 31.017530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.350708, 30.878357, 31.071890>,  <31.144472, 30.760023, 31.104506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.350708, 30.878357, 31.071890>,  <31.694435, 31.075579, 31.017530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350708, 30.878357, 31.071890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453489, 0.611699, -0.648207,
		0.236471, -0.618645, -0.749239,
		-0.859319, -0.493054, 0.135899,
		31.092913, 30.730440, 31.112659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467842, 30.926563, 30.339203>,  <31.694435, 31.075579, 31.017530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467842, 30.926563, 30.339203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.166241, 30.905994, 30.601145>,  <30.985279, 30.893652, 30.758310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.166241, 30.905994, 30.601145>,  <31.467842, 30.926563, 30.339203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166241, 30.905994, 30.601145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472972, 0.734305, -0.486922,
		-0.455822, -0.676869, -0.577992,
		-0.754005, -0.051424, 0.654853,
		30.940039, 30.890568, 30.797600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861013, 30.813982, 29.982069>,  <31.467842, 30.926563, 30.339203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861013, 30.813982, 29.982069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.731672, 30.971027, 30.326464>,  <30.654068, 31.065254, 30.533100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.731672, 30.971027, 30.326464>,  <30.861013, 30.813982, 29.982069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731672, 30.971027, 30.326464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540054, 0.670567, -0.508607,
		-0.777035, -0.629439, -0.004797,
		-0.323353, 0.392615, 0.860985,
		30.634666, 31.088812, 30.584759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278131, 31.034945, 29.721523>,  <30.861013, 30.813982, 29.982069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278131, 31.034945, 29.721523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.312582, 31.226618, 30.070915>,  <30.333252, 31.341621, 30.280550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.312582, 31.226618, 30.070915>,  <30.278131, 31.034945, 29.721523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312582, 31.226618, 30.070915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451344, 0.800374, -0.394575,
		-0.888184, -0.360256, 0.285211,
		0.086127, 0.479183, 0.873479,
		30.338421, 31.370373, 30.332958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619535, 31.334946, 29.815813>,  <30.278131, 31.034945, 29.721523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619535, 31.334946, 29.815813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.837574, 31.555492, 30.068436>,  <29.968397, 31.687820, 30.220009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.837574, 31.555492, 30.068436>,  <29.619535, 31.334946, 29.815813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837574, 31.555492, 30.068436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349138, 0.834174, -0.426915,
		-0.762216, 0.012209, 0.647208,
		0.545096, 0.551367, 0.631558,
		30.001102, 31.720901, 30.257902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121576, 31.902653, 30.180828>,  <29.619535, 31.334946, 29.815813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121576, 31.902653, 30.180828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.508360, 32.002422, 30.201929>,  <29.740429, 32.062283, 30.214590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.508360, 32.002422, 30.201929>,  <29.121576, 31.902653, 30.180828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508360, 32.002422, 30.201929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207809, 0.891003, -0.403643,
		-0.147680, 0.379343, 0.913394,
		0.966957, 0.249422, 0.052752,
		29.798447, 32.077248, 30.217754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151657, 32.605923, 30.498344>,  <29.121576, 31.902653, 30.180828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151657, 32.605923, 30.498344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.476202, 32.536518, 30.275064>,  <29.670929, 32.494877, 30.141096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.476202, 32.536518, 30.275064>,  <29.151657, 32.605923, 30.498344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476202, 32.536518, 30.275064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171261, 0.842468, -0.510801,
		0.558892, 0.510042, 0.653832,
		0.811362, -0.173507, -0.558199,
		29.719610, 32.484467, 30.107605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565968, 33.156384, 30.541801>,  <29.151657, 32.605923, 30.498344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565968, 33.156384, 30.541801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.654192, 32.974422, 30.196682>,  <29.707127, 32.865246, 29.989611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.654192, 32.974422, 30.196682>,  <29.565968, 33.156384, 30.541801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654192, 32.974422, 30.196682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089599, 0.871391, -0.482338,
		0.971249, 0.183690, 0.151435,
		0.220560, -0.454902, -0.862796,
		29.720360, 32.837952, 29.937843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525089, 33.703671, 30.037981>,  <29.565968, 33.156384, 30.541801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525089, 33.703671, 30.037981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.571957, 33.400745, 29.780998>,  <29.600077, 33.218990, 29.626808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.571957, 33.400745, 29.780998>,  <29.525089, 33.703671, 30.037981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571957, 33.400745, 29.780998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114836, 0.632240, -0.766215,
		0.986450, 0.163553, -0.012888,
		0.117168, -0.757313, -0.642455,
		29.607107, 33.173550, 29.588263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757620, 34.036922, 29.333742>,  <29.525089, 33.703671, 30.037981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757620, 34.036922, 29.333742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.653210, 33.667549, 29.221218>,  <29.590565, 33.445927, 29.153704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.653210, 33.667549, 29.221218>,  <29.757620, 34.036922, 29.333742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653210, 33.667549, 29.221218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051341, 0.304280, -0.951198,
		0.963966, -0.233842, -0.126834,
		-0.261023, -0.923435, -0.281310,
		29.574903, 33.390518, 29.136826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208942, 33.825649, 28.861166>,  <29.757620, 34.036922, 29.333742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208942, 33.825649, 28.861166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.868465, 33.626320, 28.795271>,  <29.664179, 33.506721, 28.755733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.868465, 33.626320, 28.795271>,  <30.208942, 33.825649, 28.861166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868465, 33.626320, 28.795271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028232, 0.269951, -0.962460,
		0.524092, -0.823891, -0.215712,
		-0.851194, -0.498327, -0.164740,
		29.613108, 33.476822, 28.745850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267466, 33.597561, 28.199919>,  <30.208942, 33.825649, 28.861166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267466, 33.597561, 28.199919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.874140, 33.548721, 28.253862>,  <29.638145, 33.519417, 28.286228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.874140, 33.548721, 28.253862>,  <30.267466, 33.597561, 28.199919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874140, 33.548721, 28.253862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159608, 0.223279, -0.961599,
		0.087300, -0.967077, -0.239041,
		-0.983313, -0.122101, 0.134861,
		29.579145, 33.512089, 28.294321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040848, 33.110264, 27.582537>,  <30.267466, 33.597561, 28.199919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040848, 33.110264, 27.582537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.719662, 33.294201, 27.734217>,  <29.526951, 33.404564, 27.825224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.719662, 33.294201, 27.734217>,  <30.040848, 33.110264, 27.582537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719662, 33.294201, 27.734217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228500, 0.350106, -0.908413,
		-0.550485, -0.816071, -0.176050,
		-0.802965, 0.459840, 0.379200,
		29.478771, 33.432152, 27.847977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458321, 33.116352, 27.098089>,  <30.040848, 33.110264, 27.582537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458321, 33.116352, 27.098089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.373884, 33.428085, 27.334082>,  <29.323223, 33.615128, 27.475677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.373884, 33.428085, 27.334082>,  <29.458321, 33.116352, 27.098089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373884, 33.428085, 27.334082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272983, 0.532562, -0.801160,
		-0.938574, -0.330172, 0.100326,
		-0.211091, 0.779335, 0.589980,
		29.310556, 33.661884, 27.511076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659168, 32.858566, 26.865784>,  <29.458321, 33.116352, 27.098089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659168, 32.858566, 26.865784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.542791, 32.523930, 26.680107>,  <28.472965, 32.323147, 26.568701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.542791, 32.523930, 26.680107>,  <28.659168, 32.858566, 26.865784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542791, 32.523930, 26.680107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169331, -0.522545, 0.835628,
		-0.941637, 0.164518, 0.293691,
		-0.290942, -0.836589, -0.464190,
		28.455509, 32.272953, 26.540850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300467, 32.503208, 27.311214>,  <28.659168, 32.858566, 26.865784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300467, 32.503208, 27.311214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.366364, 32.197994, 27.061211>,  <28.405901, 32.014866, 26.911209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.366364, 32.197994, 27.061211>,  <28.300467, 32.503208, 27.311214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366364, 32.197994, 27.061211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005038, -0.633007, 0.774129,
		-0.986324, -0.130681, -0.100439,
		0.164742, -0.763036, -0.625009,
		28.415787, 31.969084, 26.873709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695005, 31.975048, 27.390577>,  <28.300467, 32.503208, 27.311214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695005, 31.975048, 27.390577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.010675, 31.790155, 27.228813>,  <28.200077, 31.679220, 27.131754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.010675, 31.790155, 27.228813>,  <27.695005, 31.975048, 27.390577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010675, 31.790155, 27.228813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005386, -0.653230, 0.757140,
		-0.614148, -0.599692, -0.513021,
		0.789172, -0.462233, -0.404410,
		28.247427, 31.651485, 27.107491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628084, 31.270287, 27.499617>,  <27.695005, 31.975048, 27.390577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628084, 31.270287, 27.499617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.020069, 31.303930, 27.427391>,  <28.255260, 31.324118, 27.384056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.020069, 31.303930, 27.427391>,  <27.628084, 31.270287, 27.499617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020069, 31.303930, 27.427391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183766, -0.731526, 0.656581,
		-0.076861, -0.676605, -0.732324,
		0.979960, 0.084111, -0.180562,
		28.314056, 31.329163, 27.373222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821814, 30.564085, 27.381838>,  <27.628084, 31.270287, 27.499617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821814, 30.564085, 27.381838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.155729, 30.766848, 27.467793>,  <28.356079, 30.888504, 27.519365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.155729, 30.766848, 27.467793>,  <27.821814, 30.564085, 27.381838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155729, 30.766848, 27.467793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304882, -0.750597, 0.586217,
		0.458449, -0.423852, -0.781136,
		0.834788, 0.506905, 0.214886,
		28.406166, 30.918919, 27.532259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371151, 30.146528, 27.191463>,  <27.821814, 30.564085, 27.381838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371151, 30.146528, 27.191463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.556492, 30.384657, 27.454035>,  <28.667696, 30.527534, 27.611578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.556492, 30.384657, 27.454035>,  <28.371151, 30.146528, 27.191463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556492, 30.384657, 27.454035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395445, -0.801805, 0.448030,
		0.793051, 0.051987, -0.606933,
		0.463350, 0.595320, 0.656430,
		28.695498, 30.563253, 27.650965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063122, 29.892881, 27.246408>,  <28.371151, 30.146528, 27.191463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063122, 29.892881, 27.246408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.047785, 30.159286, 27.544390>,  <29.038582, 30.319130, 27.723179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.047785, 30.159286, 27.544390>,  <29.063122, 29.892881, 27.246408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047785, 30.159286, 27.544390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550968, -0.607852, 0.571796,
		0.833645, 0.432370, -0.343644,
		-0.038343, 0.666012, 0.744955,
		29.036282, 30.359091, 27.767876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713930, 30.215137, 27.431250>,  <29.063122, 29.892881, 27.246408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713930, 30.215137, 27.431250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.512398, 30.225681, 27.776609>,  <29.391478, 30.232008, 27.983826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.512398, 30.225681, 27.776609>,  <29.713930, 30.215137, 27.431250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512398, 30.225681, 27.776609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826611, -0.275418, 0.490775,
		0.250733, 0.960963, 0.116974,
		-0.503833, 0.026361, 0.863399,
		29.361248, 30.233589, 28.035629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175964, 30.170721, 27.900299>,  <29.713930, 30.215137, 27.431250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175964, 30.170721, 27.900299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.868605, 30.094893, 28.144798>,  <29.684189, 30.049395, 28.291498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.868605, 30.094893, 28.144798>,  <30.175964, 30.170721, 27.900299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868605, 30.094893, 28.144798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633082, -0.364925, 0.682669,
		0.093644, 0.911533, 0.400424,
		-0.768400, -0.189573, 0.611248,
		29.638084, 30.038021, 28.328173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276711, 30.497768, 28.533642>,  <30.175964, 30.170721, 27.900299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276711, 30.497768, 28.533642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.041170, 30.177593, 28.578455>,  <29.899845, 29.985487, 28.605343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.041170, 30.177593, 28.578455>,  <30.276711, 30.497768, 28.533642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041170, 30.177593, 28.578455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669797, -0.405697, 0.621918,
		-0.452356, 0.441257, 0.775027,
		-0.588851, -0.800439, 0.112033,
		29.864515, 29.937462, 28.612064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487789, 30.284081, 29.136068>,  <30.276711, 30.497768, 28.533642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487789, 30.284081, 29.136068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.255999, 29.978436, 29.022688>,  <30.116924, 29.795050, 28.954660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.255999, 29.978436, 29.022688>,  <30.487789, 30.284081, 29.136068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255999, 29.978436, 29.022688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517093, -0.613537, 0.596815,
		-0.629939, 0.199270, 0.750646,
		-0.579476, -0.764110, -0.283449,
		30.082155, 29.749203, 28.937653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321733, 29.906487, 29.850616>,  <30.487789, 30.284081, 29.136068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321733, 29.906487, 29.850616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.228956, 29.654833, 29.553862>,  <30.173290, 29.503841, 29.375809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.228956, 29.654833, 29.553862>,  <30.321733, 29.906487, 29.850616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228956, 29.654833, 29.553862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293991, -0.772357, 0.563058,
		-0.927238, -0.087509, 0.364104,
		-0.231945, -0.629132, -0.741885,
		30.159372, 29.466093, 29.331295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961000, 29.311947, 30.059273>,  <30.321733, 29.906487, 29.850616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961000, 29.311947, 30.059273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.132936, 29.181204, 29.722607>,  <30.236099, 29.102758, 29.520607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.132936, 29.181204, 29.722607>,  <29.961000, 29.311947, 30.059273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132936, 29.181204, 29.722607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353172, -0.797042, 0.489892,
		-0.830968, -0.507828, -0.227164,
		0.429840, -0.326856, -0.841666,
		30.261889, 29.083147, 29.470106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836533, 28.631819, 30.048925>,  <29.961000, 29.311947, 30.059273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836533, 28.631819, 30.048925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.120483, 28.648790, 29.767706>,  <30.290854, 28.658974, 29.598974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.120483, 28.648790, 29.767706>,  <29.836533, 28.631819, 30.048925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120483, 28.648790, 29.767706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475801, -0.764873, 0.434261,
		-0.519317, -0.642782, -0.563153,
		0.709876, 0.042430, -0.703048,
		30.333447, 28.661520, 29.556791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.266182, 31.171230, 23.139179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.365063, 31.467398, 23.389194>,  <30.424391, 31.645098, 23.539204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.365063, 31.467398, 23.389194>,  <30.266182, 31.171230, 23.139179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365063, 31.467398, 23.389194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751568, 0.553660, -0.358617,
		-0.611585, -0.381109, 0.693339,
		0.247202, 0.740416, 0.625040,
		30.439224, 31.689522, 23.576706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638544, 31.318871, 23.444412>,  <30.266182, 31.171230, 23.139179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638544, 31.318871, 23.444412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.873064, 31.641869, 23.470346>,  <30.013775, 31.835669, 23.485907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.873064, 31.641869, 23.470346>,  <29.638544, 31.318871, 23.444412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873064, 31.641869, 23.470346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775876, 0.582746, -0.241710,
		-0.232962, 0.091410, 0.968180,
		0.586298, 0.807497, 0.064835,
		30.048954, 31.884117, 23.489798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215755, 31.826910, 23.835096>,  <29.638544, 31.318871, 23.444412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215755, 31.826910, 23.835096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.494177, 32.026512, 23.628601>,  <29.661230, 32.146275, 23.504704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.494177, 32.026512, 23.628601>,  <29.215755, 31.826910, 23.835096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494177, 32.026512, 23.628601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717823, 0.499093, -0.485424,
		0.015422, 0.708450, 0.705593,
		0.696055, 0.499004, -0.516239,
		29.702993, 32.176212, 23.473730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028429, 32.587032, 23.849855>,  <29.215755, 31.826910, 23.835096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028429, 32.587032, 23.849855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.280701, 32.561855, 23.540461>,  <29.432064, 32.546749, 23.354824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.280701, 32.561855, 23.540461>,  <29.028429, 32.587032, 23.849855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280701, 32.561855, 23.540461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614337, 0.568500, -0.547173,
		0.474169, 0.820272, 0.319872,
		0.630677, -0.062944, -0.773488,
		29.469904, 32.542973, 23.308414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753656, 33.107903, 23.529881>,  <29.028429, 32.587032, 23.849855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753656, 33.107903, 23.529881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.017797, 32.968887, 23.263603>,  <29.176283, 32.885479, 23.103836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.017797, 32.968887, 23.263603>,  <28.753656, 33.107903, 23.529881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017797, 32.968887, 23.263603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381054, 0.608787, -0.695827,
		0.647095, 0.713157, 0.269582,
		0.660353, -0.347541, -0.665695,
		29.215902, 32.864624, 23.063894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141932, 33.732872, 23.187027>,  <28.753656, 33.107903, 23.529881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141932, 33.732872, 23.187027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.125216, 33.394135, 22.974945>,  <29.115185, 33.190891, 22.847696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.125216, 33.394135, 22.974945>,  <29.141932, 33.732872, 23.187027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125216, 33.394135, 22.974945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436490, 0.492822, -0.752731,
		0.898738, 0.199971, -0.390233,
		-0.041791, -0.846840, -0.530203,
		29.112679, 33.140083, 22.815884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503042, 33.867783, 22.574766>,  <29.141932, 33.732872, 23.187027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503042, 33.867783, 22.574766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.229788, 33.582443, 22.512203>,  <29.065834, 33.411240, 22.474665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.229788, 33.582443, 22.512203>,  <29.503042, 33.867783, 22.574766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229788, 33.582443, 22.512203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394164, 0.540455, -0.743333,
		0.614785, -0.446146, -0.650379,
		-0.683135, -0.713346, -0.156409,
		29.024847, 33.368439, 22.465281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559528, 33.944675, 21.985361>,  <29.503042, 33.867783, 22.574766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559528, 33.944675, 21.985361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.215921, 33.748356, 22.043612>,  <29.009758, 33.630566, 22.078562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.215921, 33.748356, 22.043612>,  <29.559528, 33.944675, 21.985361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215921, 33.748356, 22.043612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481994, 0.679475, -0.553168,
		0.172542, -0.545373, -0.820242,
		-0.859017, -0.490796, 0.145629,
		28.958216, 33.601116, 22.087299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337749, 33.791237, 21.303654>,  <29.559528, 33.944675, 21.985361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337749, 33.791237, 21.303654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.040371, 33.757908, 21.569088>,  <28.861944, 33.737911, 21.728348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.040371, 33.757908, 21.569088>,  <29.337749, 33.791237, 21.303654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040371, 33.757908, 21.569088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536477, 0.666765, -0.517317,
		-0.399351, -0.740595, -0.540405,
		-0.743446, -0.083324, 0.663585,
		28.817337, 33.732910, 21.768164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771635, 33.662193, 20.912323>,  <29.337749, 33.791237, 21.303654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771635, 33.662193, 20.912323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.593557, 33.794399, 21.245205>,  <28.486712, 33.873722, 21.444933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.593557, 33.794399, 21.245205>,  <28.771635, 33.662193, 20.912323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593557, 33.794399, 21.245205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649509, 0.520569, -0.554208,
		-0.616393, -0.787253, -0.017081,
		-0.445194, 0.330515, 0.832203,
		28.459999, 33.893555, 21.494865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056479, 33.666996, 20.679380>,  <28.771635, 33.662193, 20.912323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056479, 33.666996, 20.679380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.091904, 33.883270, 21.014002>,  <28.113159, 34.013035, 21.214775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.091904, 33.883270, 21.014002>,  <28.056479, 33.666996, 20.679380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091904, 33.883270, 21.014002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597135, 0.701021, -0.389870,
		-0.797236, -0.465007, 0.384945,
		0.088563, 0.540683, 0.836552,
		28.118473, 34.045475, 21.264967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435295, 33.686722, 20.851942>,  <28.056479, 33.666996, 20.679380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435295, 33.686722, 20.851942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.621498, 33.986229, 21.040684>,  <27.733219, 34.165936, 21.153929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.621498, 33.986229, 21.040684>,  <27.435295, 33.686722, 20.851942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621498, 33.986229, 21.040684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732444, 0.625204, -0.269530,
		-0.496821, -0.220138, 0.839469,
		0.465505, 0.748772, 0.471853,
		27.761150, 34.210861, 21.182240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039909, 33.869263, 21.424095>,  <27.435295, 33.686722, 20.851942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039909, 33.869263, 21.424095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.243565, 34.188358, 21.294857>,  <27.365757, 34.379818, 21.217314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.243565, 34.188358, 21.294857>,  <27.039909, 33.869263, 21.424095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243565, 34.188358, 21.294857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782648, 0.585305, 0.211851,
		0.358111, 0.145007, 0.922350,
		0.509136, 0.797742, -0.323094,
		27.396305, 34.427681, 21.197929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976690, 34.474819, 21.965633>,  <27.039909, 33.869263, 21.424095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976690, 34.474819, 21.965633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.073074, 34.634445, 21.611755>,  <27.130905, 34.730221, 21.399429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.073074, 34.634445, 21.611755>,  <26.976690, 34.474819, 21.965633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073074, 34.634445, 21.611755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684457, 0.716140, 0.136615,
		0.688083, 0.572616, 0.445706,
		0.240960, 0.399068, -0.884694,
		27.145363, 34.754166, 21.346348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792646, 35.018440, 22.455593>,  <26.976690, 34.474819, 21.965633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792646, 35.018440, 22.455593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.527191, 35.242813, 22.653557>,  <26.367918, 35.377438, 22.772335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.527191, 35.242813, 22.653557>,  <26.792646, 35.018440, 22.455593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527191, 35.242813, 22.653557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011699, -0.653734, 0.756634,
		0.747963, 0.507921, 0.427280,
		-0.663638, 0.560935, 0.494911,
		26.328100, 35.411095, 22.802031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098619, 35.233433, 22.955338>,  <26.792646, 35.018440, 22.455593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098619, 35.233433, 22.955338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.720743, 35.267879, 23.081919>,  <26.494017, 35.288548, 23.157867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.720743, 35.267879, 23.081919>,  <27.098619, 35.233433, 22.955338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720743, 35.267879, 23.081919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244184, -0.459450, 0.853979,
		0.218934, 0.884019, 0.413011,
		-0.944691, 0.086114, 0.316453,
		26.437336, 35.293713, 23.176855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145126, 35.427593, 23.688557>,  <27.098619, 35.233433, 22.955338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145126, 35.427593, 23.688557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.771244, 35.298374, 23.629271>,  <26.546915, 35.220844, 23.593699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.771244, 35.298374, 23.629271>,  <27.145126, 35.427593, 23.688557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771244, 35.298374, 23.629271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068958, -0.573918, 0.816004,
		-0.348670, 0.752502, 0.558721,
		-0.934705, -0.323044, -0.148217,
		26.490833, 35.201462, 23.584805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901733, 35.553638, 24.273926>,  <27.145126, 35.427593, 23.688557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901733, 35.553638, 24.273926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.632511, 35.314209, 24.100166>,  <26.470978, 35.170551, 23.995911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.632511, 35.314209, 24.100166>,  <26.901733, 35.553638, 24.273926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632511, 35.314209, 24.100166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019282, -0.601351, 0.798752,
		-0.739340, 0.529229, 0.416284,
		-0.673056, -0.598577, -0.434398,
		26.430593, 35.134636, 23.969847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505924, 35.383137, 24.782431>,  <26.901733, 35.553638, 24.273926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505924, 35.383137, 24.782431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.488733, 35.084957, 24.516361>,  <26.478418, 34.906048, 24.356720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.488733, 35.084957, 24.516361>,  <26.505924, 35.383137, 24.782431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488733, 35.084957, 24.516361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331660, -0.638677, 0.694330,
		-0.942420, -0.190772, 0.274684,
		-0.042976, -0.745451, -0.665173,
		26.475842, 34.861320, 24.316809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115559, 34.831394, 25.107101>,  <26.505924, 35.383137, 24.782431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115559, 34.831394, 25.107101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.337662, 34.669498, 24.816481>,  <26.470922, 34.572361, 24.642109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.337662, 34.669498, 24.816481>,  <26.115559, 34.831394, 25.107101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337662, 34.669498, 24.816481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365913, -0.665614, 0.650435,
		-0.746858, -0.627013, -0.221488,
		0.555257, -0.404738, -0.726551,
		26.504238, 34.548077, 24.598515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068422, 34.086823, 25.220367>,  <26.115559, 34.831394, 25.107101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068422, 34.086823, 25.220367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.369965, 34.094440, 24.957663>,  <26.550890, 34.099010, 24.800039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.369965, 34.094440, 24.957663>,  <26.068422, 34.086823, 25.220367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369965, 34.094440, 24.957663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511560, -0.644290, 0.568504,
		-0.412317, -0.764544, -0.495447,
		0.753858, 0.019047, -0.656761,
		26.596123, 34.100155, 24.760633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149035, 33.470291, 24.927240>,  <26.068422, 34.086823, 25.220367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149035, 33.470291, 24.927240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.508829, 33.633774, 24.865429>,  <26.724707, 33.731865, 24.828342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.508829, 33.633774, 24.865429>,  <26.149035, 33.470291, 24.927240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508829, 33.633774, 24.865429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433902, -0.793830, 0.426102,
		0.051481, -0.450325, -0.891380,
		0.899488, 0.408707, -0.154530,
		26.778675, 33.756386, 24.819071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598516, 32.906647, 24.689354>,  <26.149035, 33.470291, 24.927240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598516, 32.906647, 24.689354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.845901, 33.200897, 24.799879>,  <26.994333, 33.377449, 24.866194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.845901, 33.200897, 24.799879>,  <26.598516, 32.906647, 24.689354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845901, 33.200897, 24.799879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660248, -0.677131, 0.324909,
		0.426114, -0.018509, -0.904480,
		0.618465, 0.735630, 0.276315,
		27.031441, 33.421585, 24.882774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349735, 32.721939, 24.364613>,  <26.598516, 32.906647, 24.689354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349735, 32.721939, 24.364613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.378239, 32.955315, 24.688223>,  <27.395340, 33.095341, 24.882389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.378239, 32.955315, 24.688223>,  <27.349735, 32.721939, 24.364613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378239, 32.955315, 24.688223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573672, -0.687489, 0.445263,
		0.815980, 0.432387, -0.383690,
		0.071257, 0.583438, 0.809026,
		27.399616, 33.130344, 24.930931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951637, 32.571911, 24.568325>,  <27.349735, 32.721939, 24.364613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951637, 32.571911, 24.568325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.828617, 32.778893, 24.887739>,  <27.754805, 32.903080, 25.079388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.828617, 32.778893, 24.887739>,  <27.951637, 32.571911, 24.568325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828617, 32.778893, 24.887739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565798, -0.575281, 0.590698,
		0.765040, 0.633477, -0.115847,
		-0.307549, 0.517453, 0.798533,
		27.736353, 32.934128, 25.127298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501274, 32.719196, 24.902952>,  <27.951637, 32.571911, 24.568325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501274, 32.719196, 24.902952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.198147, 32.719303, 25.163939>,  <28.016270, 32.719368, 25.320530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.198147, 32.719303, 25.163939>,  <28.501274, 32.719196, 24.902952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198147, 32.719303, 25.163939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578898, -0.461022, 0.672559,
		0.300978, 0.887388, 0.349219,
		-0.757819, 0.000264, 0.652465,
		27.970800, 32.719383, 25.359678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892738, 32.915318, 25.506271>,  <28.501274, 32.719196, 24.902952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892738, 32.915318, 25.506271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.539589, 32.780048, 25.636612>,  <28.327700, 32.698887, 25.714817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.539589, 32.780048, 25.636612>,  <28.892738, 32.915318, 25.506271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539589, 32.780048, 25.636612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462785, -0.508600, 0.726055,
		-0.079803, 0.791812, 0.605529,
		-0.882871, -0.338171, 0.325851,
		28.274727, 32.678596, 25.734367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993406, 32.945614, 26.212036>,  <28.892738, 32.915318, 25.506271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993406, 32.945614, 26.212036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.705193, 32.677559, 26.140770>,  <28.532265, 32.516724, 26.098011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.705193, 32.677559, 26.140770>,  <28.993406, 32.945614, 26.212036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705193, 32.677559, 26.140770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350138, -0.573388, 0.740695,
		-0.598527, 0.471314, 0.647787,
		-0.720533, -0.670141, -0.178164,
		28.489033, 32.476517, 26.087320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800508, 33.533337, 26.670105>,  <28.993406, 32.945614, 26.212036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800508, 33.533337, 26.670105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.965643, 33.783131, 26.935312>,  <29.064724, 33.933006, 27.094437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.965643, 33.783131, 26.935312>,  <28.800508, 33.533337, 26.670105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965643, 33.783131, 26.935312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304393, 0.780686, -0.545779,
		-0.858436, 0.023498, 0.512382,
		0.412834, 0.624482, 0.663016,
		29.089493, 33.970474, 27.134216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286608, 33.981014, 26.807432>,  <28.800508, 33.533337, 26.670105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286608, 33.981014, 26.807432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.626997, 34.170292, 26.898592>,  <28.831230, 34.283859, 26.953287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.626997, 34.170292, 26.898592>,  <28.286608, 33.981014, 26.807432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626997, 34.170292, 26.898592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216479, 0.711350, -0.668669,
		-0.478524, 0.519683, 0.707774,
		0.850971, 0.473192, 0.227897,
		28.882288, 34.312248, 26.966961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070736, 34.606121, 26.635483>,  <28.286608, 33.981014, 26.807432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070736, 34.606121, 26.635483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.461592, 34.688217, 26.657661>,  <28.696106, 34.737476, 26.670969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.461592, 34.688217, 26.657661>,  <28.070736, 34.606121, 26.635483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461592, 34.688217, 26.657661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136978, 0.807238, -0.574112,
		-0.162593, 0.553392, 0.816897,
		0.977139, 0.205243, 0.055449,
		28.754734, 34.749790, 26.674295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100538, 35.226559, 26.678104>,  <28.070736, 34.606121, 26.635483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100538, 35.226559, 26.678104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.477219, 35.143936, 26.571875>,  <28.703228, 35.094364, 26.508137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.477219, 35.143936, 26.571875>,  <28.100538, 35.226559, 26.678104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477219, 35.143936, 26.571875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031291, 0.732162, -0.680412,
		0.334987, 0.649056, 0.683015,
		0.941703, -0.206557, -0.265575,
		28.759729, 35.081970, 26.492203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561201, 35.775944, 26.851011>,  <28.100538, 35.226559, 26.678104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561201, 35.775944, 26.851011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.708481, 35.591377, 26.528143>,  <28.796848, 35.480637, 26.334421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.708481, 35.591377, 26.528143>,  <28.561201, 35.775944, 26.851011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708481, 35.591377, 26.528143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080640, 0.849042, -0.522135,
		0.926243, 0.257340, 0.275408,
		0.368199, -0.461415, -0.807171,
		28.818941, 35.452953, 26.285992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083839, 36.204708, 26.675423>,  <28.561201, 35.775944, 26.851011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083839, 36.204708, 26.675423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.018532, 35.972061, 26.356659>,  <28.979347, 35.832474, 26.165401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.018532, 35.972061, 26.356659>,  <29.083839, 36.204708, 26.675423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018532, 35.972061, 26.356659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068101, 0.812465, -0.579019,
		0.984229, -0.040265, -0.172258,
		-0.163267, -0.581618, -0.796909,
		28.969551, 35.797577, 26.117586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376278, 36.582012, 26.218187>,  <29.083839, 36.204708, 26.675423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376278, 36.582012, 26.218187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.160419, 36.331528, 25.993107>,  <29.030905, 36.181236, 25.858059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.160419, 36.331528, 25.993107>,  <29.376278, 36.582012, 26.218187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160419, 36.331528, 25.993107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334047, 0.772783, -0.539648,
		0.772783, -0.103252, -0.626216,
		0.539648, 0.626216, 0.562702,
		28.998526, 36.143661, 25.824297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080332, 37.022820, 26.224844>,  <29.376278, 36.582012, 26.218187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080332, 37.022820, 26.224844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.099680, 37.351086, 26.452587>,  <30.111288, 37.548046, 26.589233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.099680, 37.351086, 26.452587>,  <30.080332, 37.022820, 26.224844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099680, 37.351086, 26.452587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350049, -0.547801, 0.759855,
		0.935482, 0.162550, -0.313770,
		0.048369, 0.820665, 0.569358,
		30.114191, 37.597286, 26.623394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787102, 36.965981, 26.554821>,  <30.080332, 37.022820, 26.224844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787102, 36.965981, 26.554821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.574932, 37.207333, 26.793009>,  <30.447630, 37.352142, 26.935921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.574932, 37.207333, 26.793009>,  <30.787102, 36.965981, 26.554821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574932, 37.207333, 26.793009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311946, -0.514215, 0.798919,
		0.788252, 0.609519, 0.084529,
		-0.530423, 0.603381, 0.595468,
		30.415806, 37.388348, 26.971649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258520, 37.013206, 27.089376>,  <30.787102, 36.965981, 26.554821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258520, 37.013206, 27.089376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905674, 37.136341, 27.231985>,  <30.693966, 37.210220, 27.317551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905674, 37.136341, 27.231985>,  <31.258520, 37.013206, 27.089376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905674, 37.136341, 27.231985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245438, -0.345636, 0.905702,
		0.402035, 0.886438, 0.229336,
		-0.882116, 0.307836, 0.356523,
		30.641039, 37.228691, 27.338942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404711, 37.398685, 27.680077>,  <31.258520, 37.013206, 27.089376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404711, 37.398685, 27.680077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.020510, 37.298943, 27.729488>,  <30.789989, 37.239098, 27.759134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.020510, 37.298943, 27.729488>,  <31.404711, 37.398685, 27.680077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020510, 37.298943, 27.729488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183035, -0.231739, 0.955403,
		-0.209611, 0.940275, 0.268226,
		-0.960501, -0.249358, 0.123528,
		30.732359, 37.224136, 27.766546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302423, 37.678589, 28.307758>,  <31.404711, 37.398685, 27.680077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302423, 37.678589, 28.307758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.011803, 37.413403, 28.235535>,  <30.837431, 37.254292, 28.192200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.011803, 37.413403, 28.235535>,  <31.302423, 37.678589, 28.307758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011803, 37.413403, 28.235535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031055, -0.294196, 0.955240,
		-0.686409, 0.688425, 0.234337,
		-0.726552, -0.662963, -0.180559,
		30.793837, 37.214512, 28.181366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896833, 37.714806, 28.912930>,  <31.302423, 37.678589, 28.307758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896833, 37.714806, 28.912930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.808996, 37.380669, 28.711346>,  <30.756294, 37.180187, 28.590395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.808996, 37.380669, 28.711346>,  <30.896833, 37.714806, 28.912930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808996, 37.380669, 28.711346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023906, -0.521021, 0.853209,
		-0.975298, 0.175313, 0.134384,
		-0.219595, -0.835346, -0.503960,
		30.743118, 37.130066, 28.560158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407396, 37.357666, 29.402483>,  <30.896833, 37.714806, 28.912930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407396, 37.357666, 29.402483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.546146, 37.098133, 29.131575>,  <30.629396, 36.942413, 28.969030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.546146, 37.098133, 29.131575>,  <30.407396, 37.357666, 29.402483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546146, 37.098133, 29.131575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127535, -0.682767, 0.719419,
		-0.929199, -0.335925, -0.154087,
		0.346877, -0.648832, -0.677269,
		30.650209, 36.903484, 28.928394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.357496, 36.966099, 21.778278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109493, 36.652359, 21.770452>,  <29.960691, 36.464115, 21.765757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109493, 36.652359, 21.770452>,  <30.357496, 36.966099, 21.778278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109493, 36.652359, 21.770452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424557, -0.356359, 0.832322,
		-0.659807, 0.507738, 0.553947,
		-0.620005, -0.784354, -0.019565,
		29.923492, 36.417053, 21.764584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213913, 36.755894, 22.487377>,  <30.357496, 36.966099, 21.778278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213913, 36.755894, 22.487377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169308, 36.442883, 22.242359>,  <30.142544, 36.255074, 22.095348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169308, 36.442883, 22.242359>,  <30.213913, 36.755894, 22.487377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169308, 36.442883, 22.242359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587895, -0.548907, 0.594206,
		-0.801214, -0.293849, 0.521257,
		-0.111515, -0.782530, -0.612544,
		30.135853, 36.208122, 22.058596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104315, 36.273983, 22.854536>,  <30.213913, 36.755894, 22.487377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104315, 36.273983, 22.854536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210369, 36.074226, 22.524612>,  <30.274002, 35.954372, 22.326658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210369, 36.074226, 22.524612>,  <30.104315, 36.273983, 22.854536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210369, 36.074226, 22.524612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442658, -0.696908, 0.564247,
		-0.856596, -0.514711, 0.036285,
		0.265137, -0.499393, -0.824809,
		30.289909, 35.924408, 22.277170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049267, 35.663769, 23.090063>,  <30.104315, 36.273983, 22.854536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049267, 35.663769, 23.090063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296169, 35.656853, 22.775434>,  <30.444311, 35.652702, 22.586657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296169, 35.656853, 22.775434>,  <30.049267, 35.663769, 23.090063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296169, 35.656853, 22.775434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582741, -0.661645, 0.471847,
		-0.528591, -0.749618, -0.398327,
		0.617256, -0.017293, -0.786573,
		30.481346, 35.651665, 22.539463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182615, 34.943485, 22.995483>,  <30.049267, 35.663769, 23.090063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182615, 34.943485, 22.995483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.494665, 35.124931, 22.823139>,  <30.681894, 35.233799, 22.719732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.494665, 35.124931, 22.823139>,  <30.182615, 34.943485, 22.995483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494665, 35.124931, 22.823139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622623, -0.630324, 0.463716,
		-0.061233, -0.630019, -0.774162,
		0.780123, 0.453616, -0.430861,
		30.728703, 35.261017, 22.693880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552586, 34.398842, 22.759195>,  <30.182615, 34.943485, 22.995483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552586, 34.398842, 22.759195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816683, 34.699196, 22.752924>,  <30.975142, 34.879410, 22.749161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816683, 34.699196, 22.752924>,  <30.552586, 34.398842, 22.759195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816683, 34.699196, 22.752924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719659, -0.626534, 0.299244,
		0.214875, -0.208858, -0.954048,
		0.660242, 0.750889, -0.015680,
		31.014755, 34.924461, 22.748220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065077, 34.019611, 22.485645>,  <30.552586, 34.398842, 22.759195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065077, 34.019611, 22.485645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.193092, 34.360428, 22.651344>,  <31.269901, 34.564919, 22.750765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.193092, 34.360428, 22.651344>,  <31.065077, 34.019611, 22.485645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193092, 34.360428, 22.651344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839955, -0.457435, 0.291940,
		0.438237, 0.254519, -0.862072,
		0.320038, 0.852041, 0.414249,
		31.289104, 34.616039, 22.775620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728380, 34.089882, 22.303047>,  <31.065077, 34.019611, 22.485645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728380, 34.089882, 22.303047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.724918, 34.313869, 22.634434>,  <31.722841, 34.448261, 22.833265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.724918, 34.313869, 22.634434>,  <31.728380, 34.089882, 22.303047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724918, 34.313869, 22.634434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856831, -0.422975, 0.294843,
		0.515524, 0.712408, -0.476140,
		-0.008654, 0.559970, 0.828467,
		31.722322, 34.481861, 22.882975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398136, 34.424694, 22.390486>,  <31.728380, 34.089882, 22.303047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398136, 34.424694, 22.390486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.242138, 34.424999, 22.758812>,  <32.148540, 34.425182, 22.979807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.242138, 34.424999, 22.758812>,  <32.398136, 34.424694, 22.390486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242138, 34.424999, 22.758812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798582, -0.497585, 0.338639,
		0.458443, 0.867415, 0.193447,
		-0.389997, 0.000764, 0.920816,
		32.125137, 34.425228, 23.035057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041073, 34.460346, 22.838139>,  <32.398136, 34.424694, 22.390486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041073, 34.460346, 22.838139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.739925, 34.346573, 23.075554>,  <32.559238, 34.278309, 23.218004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.739925, 34.346573, 23.075554>,  <33.041073, 34.460346, 22.838139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739925, 34.346573, 23.075554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640176, -0.525910, 0.559995,
		0.152867, 0.801571, 0.578028,
		-0.752866, -0.284435, 0.593540,
		32.514065, 34.261242, 23.253616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142429, 34.690140, 23.583666>,  <33.041073, 34.460346, 22.838139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142429, 34.690140, 23.583666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.899181, 34.372612, 23.581247>,  <32.753231, 34.182095, 23.579796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.899181, 34.372612, 23.581247>,  <33.142429, 34.690140, 23.583666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899181, 34.372612, 23.581247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694617, -0.535779, 0.480050,
		-0.384314, 0.287727, 0.877220,
		-0.608120, -0.793822, -0.006048,
		32.716747, 34.134464, 23.579433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147446, 34.483315, 24.231579>,  <33.142429, 34.690140, 23.583666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147446, 34.483315, 24.231579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021446, 34.160423, 24.031918>,  <32.945847, 33.966686, 23.912121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021446, 34.160423, 24.031918>,  <33.147446, 34.483315, 24.231579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021446, 34.160423, 24.031918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699784, -0.552827, 0.452422,
		-0.641155, -0.206788, 0.739026,
		-0.314998, -0.807231, -0.499154,
		32.926949, 33.918255, 23.882172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861900, 34.995544, 24.838116>,  <33.147446, 34.483315, 24.231579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861900, 34.995544, 24.838116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.836723, 35.132935, 25.212934>,  <32.821617, 35.215370, 25.437826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.836723, 35.132935, 25.212934>,  <32.861900, 34.995544, 24.838116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836723, 35.132935, 25.212934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358223, 0.868568, -0.342441,
		-0.931512, -0.357228, 0.068369,
		-0.062947, 0.343479, 0.937048,
		32.817841, 35.235977, 25.494049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120029, 35.294399, 24.952133>,  <32.861900, 34.995544, 24.838116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120029, 35.294399, 24.952133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.388229, 35.465374, 25.194693>,  <32.549149, 35.567959, 25.340229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.388229, 35.465374, 25.194693>,  <32.120029, 35.294399, 24.952133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388229, 35.465374, 25.194693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275404, 0.902352, -0.331533,
		-0.688896, 0.055289, 0.722749,
		0.670503, 0.427440, 0.606399,
		32.589382, 35.593605, 25.376612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769333, 35.781075, 25.354361>,  <32.120029, 35.294399, 24.952133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769333, 35.781075, 25.354361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152431, 35.892670, 25.382324>,  <32.382290, 35.959629, 25.399101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152431, 35.892670, 25.382324>,  <31.769333, 35.781075, 25.354361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152431, 35.892670, 25.382324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236824, 0.902884, -0.358767,
		-0.163212, 0.327052, 0.930805,
		0.957745, 0.278993, 0.069908,
		32.439754, 35.976368, 25.403297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680887, 36.433422, 25.694443>,  <31.769333, 35.781075, 25.354361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680887, 36.433422, 25.694443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043915, 36.399643, 25.529913>,  <32.261730, 36.379375, 25.431194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.043915, 36.399643, 25.529913>,  <31.680887, 36.433422, 25.694443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043915, 36.399643, 25.529913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112746, 0.894593, -0.432425,
		0.404484, 0.438830, 0.802384,
		0.907569, -0.084444, -0.411325,
		32.316185, 36.374310, 25.406515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061295, 37.048248, 25.915295>,  <31.680887, 36.433422, 25.694443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061295, 37.048248, 25.915295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.232750, 36.915775, 25.579060>,  <32.335625, 36.836292, 25.377319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.232750, 36.915775, 25.579060>,  <32.061295, 37.048248, 25.915295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232750, 36.915775, 25.579060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208258, 0.869118, -0.448623,
		0.879145, 0.367357, 0.303568,
		0.428641, -0.331184, -0.840586,
		32.361343, 36.816422, 25.326883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474445, 37.584927, 25.690102>,  <32.061295, 37.048248, 25.915295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474445, 37.584927, 25.690102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.417992, 37.358063, 25.365532>,  <32.384121, 37.221943, 25.170790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.417992, 37.358063, 25.365532>,  <32.474445, 37.584927, 25.690102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417992, 37.358063, 25.365532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019369, 0.821055, -0.570520,
		0.989801, -0.064801, -0.126862,
		-0.141131, -0.567159, -0.811426,
		32.375652, 37.187916, 25.122105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049450, 37.790371, 25.238876>,  <32.474445, 37.584927, 25.690102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049450, 37.790371, 25.238876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.736721, 37.641708, 25.038628>,  <32.549084, 37.552513, 24.918478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.736721, 37.641708, 25.038628>,  <33.049450, 37.790371, 25.238876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736721, 37.641708, 25.038628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093301, 0.863623, -0.495429,
		0.616478, -0.340630, -0.709878,
		-0.781825, -0.371653, -0.500623,
		32.502174, 37.530212, 24.888441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217979, 38.097084, 24.602518>,  <33.049450, 37.790371, 25.238876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217979, 38.097084, 24.602518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.862335, 37.931797, 24.523790>,  <32.648949, 37.832626, 24.476555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.862335, 37.931797, 24.523790>,  <33.217979, 38.097084, 24.602518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862335, 37.931797, 24.523790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172052, 0.700225, -0.692881,
		0.424126, -0.582184, -0.693671,
		-0.889109, -0.413216, -0.196817,
		32.595604, 37.807831, 24.464745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056290, 38.134087, 23.878023>,  <33.217979, 38.097084, 24.602518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056290, 38.134087, 23.878023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.704468, 38.106239, 24.066294>,  <32.493374, 38.089531, 24.179256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.704468, 38.106239, 24.066294>,  <33.056290, 38.134087, 23.878023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704468, 38.106239, 24.066294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378129, 0.702713, -0.602672,
		-0.288794, -0.708059, -0.644399,
		-0.879554, -0.069618, 0.470677,
		32.440601, 38.085354, 24.207497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538746, 38.098434, 23.347361>,  <33.056290, 38.134087, 23.878023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538746, 38.098434, 23.347361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.347435, 38.202305, 23.682938>,  <32.232651, 38.264629, 23.884283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.347435, 38.202305, 23.682938>,  <32.538746, 38.098434, 23.347361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347435, 38.202305, 23.682938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632914, 0.560343, -0.534262,
		-0.608831, -0.786501, -0.103643,
		-0.478273, 0.259678, 0.838941,
		32.203953, 38.280209, 23.934620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794657, 38.063484, 23.253222>,  <32.538746, 38.098434, 23.347361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794657, 38.063484, 23.253222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.857918, 38.319210, 23.554224>,  <31.895874, 38.472645, 23.734825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.857918, 38.319210, 23.554224>,  <31.794657, 38.063484, 23.253222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857918, 38.319210, 23.554224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495790, 0.710479, -0.499412,
		-0.853920, -0.294101, 0.429331,
		0.158153, 0.639316, 0.752505,
		31.905363, 38.511005, 23.779976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132746, 38.364967, 23.485571>,  <31.794657, 38.063484, 23.253222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132746, 38.364967, 23.485571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.399380, 38.615479, 23.647285>,  <31.559361, 38.765785, 23.744314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.399380, 38.615479, 23.647285>,  <31.132746, 38.364967, 23.485571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399380, 38.615479, 23.647285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310114, 0.726174, -0.613596,
		-0.677860, 0.283639, 0.678273,
		0.666584, 0.626274, 0.404284,
		31.599356, 38.803360, 23.768570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735518, 39.008560, 23.536451>,  <31.132746, 38.364967, 23.485571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735518, 39.008560, 23.536451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121590, 39.111919, 23.552715>,  <31.353233, 39.173935, 23.562473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121590, 39.111919, 23.552715>,  <30.735518, 39.008560, 23.536451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121590, 39.111919, 23.552715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211755, 0.863098, -0.458499,
		-0.153570, 0.433925, 0.887764,
		0.965182, 0.258400, 0.040660,
		31.411144, 39.189438, 23.564913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805618, 39.657425, 23.849834>,  <30.735518, 39.008560, 23.536451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805618, 39.657425, 23.849834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.115953, 39.613049, 23.601395>,  <31.302155, 39.586422, 23.452332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.115953, 39.613049, 23.601395>,  <30.805618, 39.657425, 23.849834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115953, 39.613049, 23.601395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242606, 0.856274, -0.456002,
		0.582422, 0.504466, 0.637415,
		0.775839, -0.110945, -0.621099,
		31.348705, 39.579765, 23.415064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764137, 39.844967, 24.504791>,  <30.805618, 39.657425, 23.849834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764137, 39.844967, 24.504791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.374559, 39.777096, 24.564980>,  <30.140812, 39.736374, 24.601093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.374559, 39.777096, 24.564980>,  <30.764137, 39.844967, 24.504791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374559, 39.777096, 24.564980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208884, -0.412801, 0.886545,
		-0.088312, 0.894877, 0.437488,
		-0.973945, -0.169677, 0.150471,
		30.082376, 39.726192, 24.610121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530451, 40.059883, 25.281830>,  <30.764137, 39.844967, 24.504791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530451, 40.059883, 25.281830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.278330, 39.789951, 25.128298>,  <30.127058, 39.627991, 25.036179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.278330, 39.789951, 25.128298>,  <30.530451, 40.059883, 25.281830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278330, 39.789951, 25.128298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241137, -0.640122, 0.729449,
		-0.737953, 0.367216, 0.566196,
		-0.630300, -0.674830, -0.383830,
		30.089239, 39.587502, 25.013149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057549, 39.875027, 25.745623>,  <30.530451, 40.059883, 25.281830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057549, 39.875027, 25.745623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046280, 39.548569, 25.514761>,  <30.039518, 39.352692, 25.376244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046280, 39.548569, 25.514761>,  <30.057549, 39.875027, 25.745623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046280, 39.548569, 25.514761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054559, -0.577778, 0.814369,
		-0.998113, -0.008545, 0.060807,
		-0.028174, -0.816150, -0.577154,
		30.037828, 39.303722, 25.341616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574141, 39.593884, 26.177975>,  <30.057549, 39.875027, 25.745623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574141, 39.593884, 26.177975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744953, 39.324703, 25.936388>,  <29.847441, 39.163193, 25.791435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744953, 39.324703, 25.936388>,  <29.574141, 39.593884, 26.177975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744953, 39.324703, 25.936388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046020, -0.683239, 0.728744,
		-0.903066, -0.283401, -0.322733,
		0.427030, -0.672955, -0.603967,
		29.873062, 39.122818, 25.755198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180201, 39.023251, 26.212585>,  <29.574141, 39.593884, 26.177975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180201, 39.023251, 26.212585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.500778, 38.830864, 26.070398>,  <29.693125, 38.715431, 25.985086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.500778, 38.830864, 26.070398>,  <29.180201, 39.023251, 26.212585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500778, 38.830864, 26.070398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118645, -0.710404, 0.693722,
		-0.586182, -0.513806, -0.626414,
		0.801445, -0.480968, -0.355466,
		29.741211, 38.686573, 25.963758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957382, 38.186451, 26.220629>,  <29.180201, 39.023251, 26.212585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957382, 38.186451, 26.220629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353827, 38.239513, 26.224714>,  <29.591692, 38.271351, 26.227165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353827, 38.239513, 26.224714>,  <28.957382, 38.186451, 26.220629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353827, 38.239513, 26.224714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096778, -0.771484, 0.628846,
		0.091298, -0.622267, -0.777463,
		0.991110, 0.132654, 0.010213,
		29.651159, 38.279308, 26.227777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210329, 37.399353, 26.183739>,  <28.957382, 38.186451, 26.220629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210329, 37.399353, 26.183739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507824, 37.646526, 26.285727>,  <29.686321, 37.794830, 26.346920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507824, 37.646526, 26.285727>,  <29.210329, 37.399353, 26.183739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507824, 37.646526, 26.285727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196477, -0.566650, 0.800191,
		0.638946, -0.545035, -0.542849,
		0.743737, 0.617936, 0.254972,
		29.730946, 37.831905, 26.362219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217346, 36.955883, 25.523989>,  <29.210329, 37.399353, 26.183739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217346, 36.955883, 25.523989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.946163, 36.662418, 25.505596>,  <28.783453, 36.486340, 25.494560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.946163, 36.662418, 25.505596>,  <29.217346, 36.955883, 25.523989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946163, 36.662418, 25.505596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582628, 0.574427, -0.574960,
		0.448237, -0.363011, -0.816889,
		-0.677959, -0.733660, -0.045979,
		28.742775, 36.442322, 25.491802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958641, 36.892147, 24.893652>,  <29.217346, 36.955883, 25.523989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958641, 36.892147, 24.893652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.658159, 36.714108, 25.088621>,  <28.477871, 36.607285, 25.205603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.658159, 36.714108, 25.088621>,  <28.958641, 36.892147, 24.893652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658159, 36.714108, 25.088621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651775, 0.383473, -0.654322,
		0.104321, -0.809221, -0.578168,
		-0.751203, -0.445095, 0.487426,
		28.432798, 36.580578, 25.234848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483421, 36.766705, 24.393688>,  <28.958641, 36.892147, 24.893652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483421, 36.766705, 24.393688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271070, 36.750076, 24.732260>,  <28.143660, 36.740101, 24.935402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271070, 36.750076, 24.732260>,  <28.483421, 36.766705, 24.393688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271070, 36.750076, 24.732260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797109, 0.363605, -0.482088,
		-0.287725, -0.930625, -0.226165,
		-0.530878, -0.041569, 0.846428,
		28.111807, 36.737606, 24.986189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892801, 36.370888, 24.215565>,  <28.483421, 36.766705, 24.393688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892801, 36.370888, 24.215565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801945, 36.583984, 24.541656>,  <27.747431, 36.711842, 24.737312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801945, 36.583984, 24.541656>,  <27.892801, 36.370888, 24.215565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801945, 36.583984, 24.541656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798390, 0.377482, -0.469128,
		-0.557656, -0.757429, 0.339590,
		-0.227141, 0.532737, 0.815229,
		27.733803, 36.743805, 24.786224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154989, 36.316441, 24.274687>,  <27.892801, 36.370888, 24.215565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154989, 36.316441, 24.274687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247297, 36.647892, 24.478691>,  <27.302683, 36.846764, 24.601093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247297, 36.647892, 24.478691>,  <27.154989, 36.316441, 24.274687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247297, 36.647892, 24.478691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760798, 0.480429, -0.436320,
		-0.606573, -0.287326, 0.741291,
		0.230772, 0.828632, 0.510013,
		27.316528, 36.896481, 24.631695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560478, 36.561852, 24.605095>,  <27.154989, 36.316441, 24.274687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560478, 36.561852, 24.605095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.814590, 36.870510, 24.592545>,  <26.967058, 37.055706, 24.585014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.814590, 36.870510, 24.592545>,  <26.560478, 36.561852, 24.605095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814590, 36.870510, 24.592545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666850, 0.527609, -0.526250,
		-0.389521, 0.355242, 0.849751,
		0.635282, 0.771642, -0.031378,
		27.005175, 37.102001, 24.583132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135574, 37.086704, 24.666687>,  <26.560478, 36.561852, 24.605095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135574, 37.086704, 24.666687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.460615, 37.266617, 24.518429>,  <26.655640, 37.374565, 24.429474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.460615, 37.266617, 24.518429>,  <26.135574, 37.086704, 24.666687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460615, 37.266617, 24.518429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582794, 0.633243, -0.509269,
		0.005649, 0.629842, 0.776703,
		0.812600, 0.449781, -0.370646,
		26.704395, 37.401550, 24.407234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957088, 37.863567, 24.603514>,  <26.135574, 37.086704, 24.666687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957088, 37.863567, 24.603514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.276884, 37.795864, 24.372976>,  <26.468761, 37.755241, 24.234653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.276884, 37.795864, 24.372976>,  <25.957088, 37.863567, 24.603514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276884, 37.795864, 24.372976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384957, 0.592171, -0.707913,
		0.461114, 0.787835, 0.408277,
		0.799488, -0.169259, -0.576341,
		26.516731, 37.745087, 24.200073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183235, 38.576088, 24.371670>,  <25.957088, 37.863567, 24.603514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183235, 38.576088, 24.371670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.343828, 38.307037, 24.123030>,  <26.440184, 38.145607, 23.973846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.343828, 38.307037, 24.123030>,  <26.183235, 38.576088, 24.371670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343828, 38.307037, 24.123030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227212, 0.584336, -0.779055,
		0.887236, 0.454011, 0.081772,
		0.401482, -0.672625, -0.621600,
		26.464273, 38.105251, 23.936550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.134052, 28.182978, 33.541943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163509, 27.841425, 33.335850>,  <34.181183, 27.636494, 33.212196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163509, 27.841425, 33.335850>,  <34.134052, 28.182978, 33.541943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163509, 27.841425, 33.335850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584098, 0.381819, -0.716271,
		0.808335, 0.353692, -0.470634,
		0.073642, -0.853883, -0.515228,
		34.185600, 27.585260, 33.181282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460262, 28.302654, 32.860172>,  <34.134052, 28.182978, 33.541943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460262, 28.302654, 32.860172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188457, 28.012451, 32.816540>,  <34.025375, 27.838329, 32.790359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188457, 28.012451, 32.816540>,  <34.460262, 28.302654, 32.860172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188457, 28.012451, 32.816540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470560, 0.545055, -0.693894,
		0.562884, -0.420179, -0.711767,
		-0.679511, -0.725510, -0.109084,
		33.984604, 27.794798, 32.783813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249962, 28.266823, 32.184376>,  <34.460262, 28.302654, 32.860172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249962, 28.266823, 32.184376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927052, 28.115141, 32.365269>,  <33.733307, 28.024132, 32.473804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927052, 28.115141, 32.365269>,  <34.249962, 28.266823, 32.184376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927052, 28.115141, 32.365269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589505, 0.554690, -0.587198,
		-0.028182, -0.740623, -0.671329,
		-0.807272, -0.379203, 0.452234,
		33.684868, 28.001379, 32.500938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687542, 28.569002, 31.692898>,  <34.249962, 28.266823, 32.184376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687542, 28.569002, 31.692898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489170, 28.349327, 31.961954>,  <33.370148, 28.217522, 32.123386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489170, 28.349327, 31.961954>,  <33.687542, 28.569002, 31.692898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489170, 28.349327, 31.961954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857824, 0.430152, -0.281260,
		-0.134872, -0.716491, -0.684434,
		-0.495931, -0.549190, 0.672639,
		33.340389, 28.184570, 32.163746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118938, 28.138296, 31.373920>,  <33.687542, 28.569002, 31.692898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118938, 28.138296, 31.373920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018890, 28.206924, 31.755077>,  <32.958862, 28.248102, 31.983772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018890, 28.206924, 31.755077>,  <33.118938, 28.138296, 31.373920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018890, 28.206924, 31.755077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766412, 0.566320, -0.303141,
		-0.591652, -0.806130, -0.010155,
		-0.250122, 0.171571, 0.952892,
		32.943855, 28.258396, 32.040943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421520, 28.074974, 31.473454>,  <33.118938, 28.138296, 31.373920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421520, 28.074974, 31.473454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486984, 28.298792, 31.798447>,  <32.526264, 28.433083, 31.993443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486984, 28.298792, 31.798447>,  <32.421520, 28.074974, 31.473454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486984, 28.298792, 31.798447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867769, 0.473401, -0.151225,
		-0.469246, -0.680296, 0.563032,
		0.163662, 0.559543, 0.812481,
		32.536083, 28.466656, 32.042191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769468, 28.151842, 31.831699>,  <32.421520, 28.074974, 31.473454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769468, 28.151842, 31.831699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000515, 28.451359, 31.961727>,  <32.139141, 28.631069, 32.039745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000515, 28.451359, 31.961727>,  <31.769468, 28.151842, 31.831699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000515, 28.451359, 31.961727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779182, 0.624473, -0.053936,
		-0.243384, -0.222135, 0.944150,
		0.577615, 0.748792, 0.325071,
		32.173801, 28.675997, 32.059250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405123, 28.528543, 32.260155>,  <31.769468, 28.151842, 31.831699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405123, 28.528543, 32.260155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673170, 28.801023, 32.142235>,  <31.833998, 28.964512, 32.071484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673170, 28.801023, 32.142235>,  <31.405123, 28.528543, 32.260155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673170, 28.801023, 32.142235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726886, 0.682667, -0.074849,
		0.150262, 0.264443, 0.952623,
		0.670118, 0.681201, -0.294799,
		31.874205, 29.005384, 32.053795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201498, 29.191936, 32.673786>,  <31.405123, 28.528543, 32.260155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201498, 29.191936, 32.673786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405083, 29.282660, 32.341637>,  <31.527233, 29.337093, 32.142349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.405083, 29.282660, 32.341637>,  <31.201498, 29.191936, 32.673786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405083, 29.282660, 32.341637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567411, 0.813815, -0.125497,
		0.647305, 0.535035, 0.542895,
		0.508961, 0.226810, -0.830371,
		31.557772, 29.350702, 32.092525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260395, 29.866261, 32.605801>,  <31.201498, 29.191936, 32.673786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260395, 29.866261, 32.605801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370373, 29.828787, 32.223045>,  <31.436359, 29.806303, 31.993393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370373, 29.828787, 32.223045>,  <31.260395, 29.866261, 32.605801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370373, 29.828787, 32.223045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648323, 0.716869, -0.256471,
		0.709988, 0.690885, 0.136360,
		0.274945, -0.093686, -0.956885,
		31.452856, 29.800680, 31.935980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482288, 30.522810, 32.323940>,  <31.260395, 29.866261, 32.605801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482288, 30.522810, 32.323940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.392763, 30.308313, 31.998400>,  <31.339048, 30.179615, 31.803076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.392763, 30.308313, 31.998400>,  <31.482288, 30.522810, 32.323940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392763, 30.308313, 31.998400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522750, 0.770810, -0.364122,
		0.822582, 0.343946, -0.452836,
		-0.223813, -0.536240, -0.813851,
		31.325619, 30.147442, 31.754244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665422, 31.039658, 31.763399>,  <31.482288, 30.522810, 32.323940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665422, 31.039658, 31.763399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449699, 30.760584, 31.574768>,  <31.320265, 30.593140, 31.461590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449699, 30.760584, 31.574768>,  <31.665422, 31.039658, 31.763399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449699, 30.760584, 31.574768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417439, 0.707838, -0.569833,
		0.731362, -0.110463, -0.672985,
		-0.539310, -0.697684, -0.471574,
		31.287907, 30.551279, 31.433296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346951, 31.410992, 31.519669>,  <31.665422, 31.039658, 31.763399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346951, 31.410992, 31.519669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.327568, 31.736670, 31.751095>,  <32.315937, 31.932076, 31.889950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.327568, 31.736670, 31.751095>,  <32.346951, 31.410992, 31.519669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327568, 31.736670, 31.751095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516999, -0.475167, 0.711989,
		0.854613, 0.333620, -0.397912,
		-0.048459, 0.814195, 0.578565,
		32.313030, 31.980928, 31.924664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114883, 31.730171, 31.661814>,  <32.346951, 31.410992, 31.519669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114883, 31.730171, 31.661814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872620, 31.864901, 31.950180>,  <32.727261, 31.945738, 32.123199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872620, 31.864901, 31.950180>,  <33.114883, 31.730171, 31.661814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872620, 31.864901, 31.950180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648905, -0.315289, 0.692471,
		0.460537, 0.887211, -0.027607,
		-0.605664, 0.336823, 0.720917,
		32.690922, 31.965948, 32.166454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613121, 32.146320, 32.075462>,  <33.114883, 31.730171, 31.661814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613121, 32.146320, 32.075462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294624, 32.044231, 32.294865>,  <33.103527, 31.982979, 32.426506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294624, 32.044231, 32.294865>,  <33.613121, 32.146320, 32.075462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294624, 32.044231, 32.294865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598711, -0.462591, 0.653876,
		0.086852, 0.849042, 0.521138,
		-0.796242, -0.255221, 0.548508,
		33.055752, 31.967665, 32.459415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804337, 32.345665, 32.686897>,  <33.613121, 32.146320, 32.075462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804337, 32.345665, 32.686897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509216, 32.078915, 32.728703>,  <33.332142, 31.918865, 32.753784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509216, 32.078915, 32.728703>,  <33.804337, 32.345665, 32.686897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509216, 32.078915, 32.728703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556588, -0.513426, 0.653148,
		-0.381911, 0.540065, 0.749983,
		-0.737803, -0.666876, 0.104511,
		33.287876, 31.878851, 32.760056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638794, 32.261856, 33.467442>,  <33.804337, 32.345665, 32.686897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638794, 32.261856, 33.467442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548843, 31.941204, 33.245876>,  <33.494873, 31.748812, 33.112938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548843, 31.941204, 33.245876>,  <33.638794, 32.261856, 33.467442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548843, 31.941204, 33.245876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563398, -0.570779, 0.597322,
		-0.794994, -0.177751, 0.579991,
		-0.224872, -0.801633, -0.553910,
		33.481380, 31.700714, 33.079704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729603, 31.743208, 33.985420>,  <33.638794, 32.261856, 33.467442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729603, 31.743208, 33.985420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680218, 31.525171, 33.653725>,  <33.650585, 31.394350, 33.454708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680218, 31.525171, 33.653725>,  <33.729603, 31.743208, 33.985420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680218, 31.525171, 33.653725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335624, -0.809323, 0.482030,
		-0.933870, -0.218796, 0.282870,
		-0.123467, -0.545092, -0.829235,
		33.643177, 31.361643, 33.404953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333900, 31.225163, 34.131855>,  <33.729603, 31.743208, 33.985420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333900, 31.225163, 34.131855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542374, 31.122519, 33.806274>,  <33.667458, 31.060932, 33.610928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542374, 31.122519, 33.806274>,  <33.333900, 31.225163, 34.131855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542374, 31.122519, 33.806274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329779, -0.819094, 0.469394,
		-0.787152, -0.513067, -0.342279,
		0.521189, -0.256608, -0.813950,
		33.698730, 31.045536, 33.562088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273331, 30.466644, 34.104553>,  <33.333900, 31.225163, 34.131855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273331, 30.466644, 34.104553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589619, 30.573540, 33.884243>,  <33.779392, 30.637676, 33.752056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589619, 30.573540, 33.884243>,  <33.273331, 30.466644, 34.104553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589619, 30.573540, 33.884243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578993, -0.618669, 0.531052,
		-0.198828, -0.738805, -0.643921,
		0.790718, 0.267238, -0.550771,
		33.826836, 30.653711, 33.719013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552986, 29.880123, 33.959949>,  <33.273331, 30.466644, 34.104553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552986, 29.880123, 33.959949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861599, 30.121908, 33.880589>,  <34.046768, 30.266979, 33.832970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861599, 30.121908, 33.880589>,  <33.552986, 29.880123, 33.959949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861599, 30.121908, 33.880589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609607, -0.613215, 0.502341,
		0.181981, -0.508521, -0.841599,
		0.771533, 0.604461, -0.198404,
		34.093060, 30.303246, 33.821068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105392, 29.463642, 33.607861>,  <33.552986, 29.880123, 33.959949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105392, 29.463642, 33.607861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289551, 29.788263, 33.751759>,  <34.400043, 29.983036, 33.838097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289551, 29.788263, 33.751759>,  <34.105392, 29.463642, 33.607861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289551, 29.788263, 33.751759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654246, -0.584104, 0.480400,
		0.600000, 0.014188, -0.799874,
		0.460394, 0.811555, 0.359745,
		34.427670, 30.031731, 33.859680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764912, 29.256311, 33.572784>,  <34.105392, 29.463642, 33.607861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764912, 29.256311, 33.572784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767414, 29.572912, 33.817238>,  <34.768917, 29.762873, 33.963909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767414, 29.572912, 33.817238>,  <34.764912, 29.256311, 33.572784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767414, 29.572912, 33.817238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719540, -0.427965, 0.546907,
		0.694423, 0.436315, -0.572194,
		0.006255, 0.791502, 0.611135,
		34.769291, 29.810362, 34.000580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451942, 29.280596, 33.727451>,  <34.764912, 29.256311, 33.572784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451942, 29.280596, 33.727451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312534, 29.515068, 34.020008>,  <35.228889, 29.655750, 34.195541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312534, 29.515068, 34.020008>,  <35.451942, 29.280596, 33.727451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312534, 29.515068, 34.020008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616517, -0.444388, 0.649943,
		0.706002, 0.677432, -0.206510,
		-0.348522, 0.586178, 0.731387,
		35.207977, 29.690922, 34.239426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115379, 29.730545, 34.034470>,  <35.451942, 29.280596, 33.727451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115379, 29.730545, 34.034470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811066, 29.690746, 34.291000>,  <35.628475, 29.666866, 34.444920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811066, 29.690746, 34.291000>,  <36.115379, 29.730545, 34.034470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811066, 29.690746, 34.291000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614952, -0.426391, 0.663344,
		0.207455, 0.899050, 0.385579,
		-0.760787, -0.099498, 0.641329,
		35.582829, 29.660896, 34.483398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461006, 30.009079, 34.673233>,  <36.115379, 29.730545, 34.034470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461006, 30.009079, 34.673233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145382, 29.787922, 34.780331>,  <35.956005, 29.655228, 34.844589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145382, 29.787922, 34.780331>,  <36.461006, 30.009079, 34.673233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145382, 29.787922, 34.780331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547460, -0.435162, 0.714788,
		-0.278687, 0.710594, 0.646057,
		-0.789063, -0.552893, 0.267748,
		35.908665, 29.622053, 34.860657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636223, 30.566179, 34.221359>,  <36.461006, 30.009079, 34.673233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636223, 30.566179, 34.221359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.637131, 30.266001, 33.956989>,  <36.637676, 30.085894, 33.798367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.637131, 30.266001, 33.956989>,  <36.636223, 30.566179, 34.221359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637131, 30.266001, 33.956989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615964, 0.521708, -0.590261,
		0.787771, -0.405770, 0.463431,
		0.002265, -0.750448, -0.660926,
		36.637810, 30.040867, 33.758713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287609, 30.236078, 34.336422>,  <36.636223, 30.566179, 34.221359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287609, 30.236078, 34.336422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502445, 30.135195, 34.014446>,  <37.631348, 30.074665, 33.821262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502445, 30.135195, 34.014446>,  <37.287609, 30.236078, 34.336422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502445, 30.135195, 34.014446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381609, 0.778372, -0.498510,
		0.752272, 0.574915, 0.321807,
		0.537086, -0.252210, -0.804940,
		37.663570, 30.059532, 33.772964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670521, 30.849785, 33.959816>,  <37.287609, 30.236078, 34.336422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670521, 30.849785, 33.959816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559597, 30.580803, 33.685326>,  <37.493042, 30.419413, 33.520634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559597, 30.580803, 33.685326>,  <37.670521, 30.849785, 33.959816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559597, 30.580803, 33.685326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259988, 0.740109, -0.620197,
		0.924936, 0.006425, -0.380068,
		-0.277307, -0.672456, -0.686224,
		37.476406, 30.379066, 33.479458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706772, 31.211061, 33.280987>,  <37.670521, 30.849785, 33.959816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706772, 31.211061, 33.280987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484230, 30.902649, 33.157063>,  <37.350704, 30.717602, 33.082706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484230, 30.902649, 33.157063>,  <37.706772, 31.211061, 33.280987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484230, 30.902649, 33.157063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497161, 0.607615, -0.619383,
		0.665810, -0.190569, -0.721374,
		-0.556353, -0.771030, -0.309813,
		37.317326, 30.671339, 33.064117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734390, 31.334108, 32.638435>,  <37.706772, 31.211061, 33.280987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734390, 31.334108, 32.638435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430614, 31.077477, 32.681564>,  <37.248348, 30.923496, 32.707443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430614, 31.077477, 32.681564>,  <37.734390, 31.334108, 32.638435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430614, 31.077477, 32.681564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479387, 0.439818, -0.759439,
		0.439818, -0.628437, -0.641581,
		0.759439, 0.641581, -0.107825,
		37.202782, 30.885002, 32.713913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640060, 30.881508, 31.958277>,  <37.734390, 31.334108, 32.638435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640060, 30.881508, 31.958277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289055, 30.885590, 32.150051>,  <37.078449, 30.888039, 32.265114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289055, 30.885590, 32.150051>,  <37.640060, 30.881508, 31.958277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289055, 30.885590, 32.150051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434748, 0.404991, -0.804349,
		-0.202376, -0.914264, -0.350950,
		-0.877519, 0.010206, 0.479434,
		37.025799, 30.888651, 32.293880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121567, 30.675425, 31.402256>,  <37.640060, 30.881508, 31.958277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121567, 30.675425, 31.402256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872734, 30.834013, 31.672314>,  <36.723434, 30.929167, 31.834349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872734, 30.834013, 31.672314>,  <37.121567, 30.675425, 31.402256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872734, 30.834013, 31.672314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505841, 0.454662, -0.733081,
		-0.597609, -0.797554, -0.082286,
		-0.622083, 0.396472, 0.675146,
		36.686108, 30.952955, 31.874857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419212, 30.709732, 31.077297>,  <37.121567, 30.675425, 31.402256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419212, 30.709732, 31.077297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411648, 30.976980, 31.374823>,  <36.407108, 31.137329, 31.553337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411648, 30.976980, 31.374823>,  <36.419212, 30.709732, 31.077297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411648, 30.976980, 31.374823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503418, 0.636399, -0.584437,
		-0.863836, -0.385500, 0.324310,
		-0.018910, 0.668121, 0.743812,
		36.405975, 31.177416, 31.597967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742172, 30.823904, 31.183037>,  <36.419212, 30.709732, 31.077297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742172, 30.823904, 31.183037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921837, 31.148249, 31.333107>,  <36.029636, 31.342855, 31.423149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921837, 31.148249, 31.333107>,  <35.742172, 30.823904, 31.183037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921837, 31.148249, 31.333107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769334, 0.564528, -0.299055,
		-0.454290, -0.154311, 0.877387,
		0.449162, 0.810861, 0.375176,
		36.056587, 31.391506, 31.445660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165817, 31.133751, 31.310089>,  <35.742172, 30.823904, 31.183037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165817, 31.133751, 31.310089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447598, 31.416777, 31.332371>,  <35.616665, 31.586592, 31.345739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447598, 31.416777, 31.332371>,  <35.165817, 31.133751, 31.310089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447598, 31.416777, 31.332371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584153, 0.622576, -0.520734,
		-0.403132, 0.334293, 0.851900,
		0.704450, 0.707564, 0.055702,
		35.658932, 31.629045, 31.349081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823460, 31.739697, 31.541603>,  <35.165817, 31.133751, 31.310089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823460, 31.739697, 31.541603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163799, 31.847321, 31.361088>,  <35.368004, 31.911896, 31.252779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163799, 31.847321, 31.361088>,  <34.823460, 31.739697, 31.541603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163799, 31.847321, 31.361088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524549, 0.385936, -0.758882,
		-0.030017, 0.882417, 0.469509,
		0.850851, 0.269060, -0.451287,
		35.419056, 31.928038, 31.225702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862354, 32.409332, 31.415071>,  <34.823460, 31.739697, 31.541603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862354, 32.409332, 31.415071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122589, 32.275063, 31.142586>,  <35.278732, 32.194500, 30.979094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122589, 32.275063, 31.142586>,  <34.862354, 32.409332, 31.415071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122589, 32.275063, 31.142586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594243, 0.333524, -0.731872,
		0.472874, 0.880956, 0.017514,
		0.650589, -0.335676, -0.681217,
		35.317764, 32.174358, 30.938221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799820, 32.875248, 30.878548>,  <34.862354, 32.409332, 31.415071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799820, 32.875248, 30.878548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022747, 32.589161, 30.709854>,  <35.156502, 32.417507, 30.608637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022747, 32.589161, 30.709854>,  <34.799820, 32.875248, 30.878548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022747, 32.589161, 30.709854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561914, 0.049049, -0.825740,
		0.611272, 0.697176, -0.374556,
		0.557315, -0.715220, -0.421735,
		35.189941, 32.374596, 30.583334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190876, 33.131573, 30.314154>,  <34.799820, 32.875248, 30.878548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190876, 33.131573, 30.314154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123756, 32.743484, 30.244268>,  <35.083485, 32.510632, 30.202337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123756, 32.743484, 30.244268>,  <35.190876, 33.131573, 30.314154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123756, 32.743484, 30.244268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318393, 0.221063, -0.921823,
		0.932990, -0.099050, -0.346004,
		-0.167796, -0.970217, -0.174713,
		35.073418, 32.452419, 30.191854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416725, 32.983395, 29.613760>,  <35.190876, 33.131573, 30.314154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416725, 32.983395, 29.613760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193062, 32.660866, 29.690893>,  <35.058865, 32.467346, 29.737173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193062, 32.660866, 29.690893>,  <35.416725, 32.983395, 29.613760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193062, 32.660866, 29.690893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378541, 0.041374, -0.924659,
		0.737597, -0.590025, -0.328362,
		-0.559158, -0.806324, 0.192831,
		35.025314, 32.418968, 29.748743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541763, 32.487423, 29.013855>,  <35.416725, 32.983395, 29.613760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541763, 32.487423, 29.013855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185265, 32.398975, 29.172243>,  <34.971367, 32.345905, 29.267277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185265, 32.398975, 29.172243>,  <35.541763, 32.487423, 29.013855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185265, 32.398975, 29.172243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438552, 0.197691, -0.876693,
		0.115568, -0.955001, -0.273161,
		-0.891244, -0.221113, 0.395972,
		34.917892, 32.332638, 29.291035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253304, 32.185898, 28.441696>,  <35.541763, 32.487423, 29.013855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253304, 32.185898, 28.441696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954311, 32.285820, 28.687908>,  <34.774918, 32.345772, 28.835636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954311, 32.285820, 28.687908>,  <35.253304, 32.185898, 28.441696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954311, 32.285820, 28.687908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582089, 0.200166, -0.788103,
		-0.320079, -0.947381, -0.004211,
		-0.747477, 0.249804, 0.615529,
		34.730068, 32.360760, 28.872566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732388, 31.928984, 28.079046>,  <35.253304, 32.185898, 28.441696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732388, 31.928984, 28.079046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593235, 32.211773, 28.325352>,  <34.509743, 32.381447, 28.473135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593235, 32.211773, 28.325352>,  <34.732388, 31.928984, 28.079046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593235, 32.211773, 28.325352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562046, 0.368415, -0.740523,
		-0.750388, -0.603703, 0.269186,
		-0.347884, 0.706975, 0.615763,
		34.488869, 32.423866, 28.510080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084003, 31.767151, 28.041527>,  <34.732388, 31.928984, 28.079046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084003, 31.767151, 28.041527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110027, 32.137970, 28.189228>,  <34.125641, 32.360462, 28.277849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110027, 32.137970, 28.189228>,  <34.084003, 31.767151, 28.041527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110027, 32.137970, 28.189228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625609, 0.326177, -0.708676,
		-0.777419, -0.184901, 0.601192,
		0.065060, 0.927049, 0.369252,
		34.129547, 32.416084, 28.300003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437134, 32.091618, 28.028269>,  <34.084003, 31.767151, 28.041527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437134, 32.091618, 28.028269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664951, 32.417965, 28.068214>,  <33.801643, 32.613773, 28.092182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664951, 32.417965, 28.068214>,  <33.437134, 32.091618, 28.028269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664951, 32.417965, 28.068214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692982, 0.541959, -0.475454,
		-0.442031, 0.201588, 0.874054,
		0.569547, 0.815869, 0.099866,
		33.835815, 32.662727, 28.098175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993168, 32.524563, 27.931629>,  <33.437134, 32.091618, 28.028269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993168, 32.524563, 27.931629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320667, 32.751072, 27.893721>,  <33.517166, 32.886978, 27.870975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320667, 32.751072, 27.893721>,  <32.993168, 32.524563, 27.931629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320667, 32.751072, 27.893721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514862, 0.651082, -0.557682,
		-0.254097, 0.505397, 0.824626,
		0.818750, 0.566274, -0.094771,
		33.566292, 32.920956, 27.865290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842567, 33.219986, 28.144569>,  <32.993168, 32.524563, 27.931629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842567, 33.219986, 28.144569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156101, 33.239677, 27.896963>,  <33.344223, 33.251492, 27.748400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156101, 33.239677, 27.896963>,  <32.842567, 33.219986, 28.144569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156101, 33.239677, 27.896963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476974, 0.686029, -0.549418,
		0.397618, 0.725907, 0.561212,
		0.783834, 0.049225, -0.619017,
		33.391251, 33.254444, 27.711258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905327, 33.943081, 28.030212>,  <32.842567, 33.219986, 28.144569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905327, 33.943081, 28.030212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113098, 33.775146, 27.732506>,  <33.237762, 33.674385, 27.553883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113098, 33.775146, 27.732506>,  <32.905327, 33.943081, 28.030212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113098, 33.775146, 27.732506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418502, 0.634386, -0.649931,
		0.745016, 0.649070, 0.153816,
		0.519429, -0.419837, -0.744265,
		33.268929, 33.649197, 27.509226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351128, 34.534763, 27.704103>,  <32.905327, 33.943081, 28.030212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351128, 34.534763, 27.704103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294437, 34.244053, 27.435266>,  <33.260422, 34.069626, 27.273964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294437, 34.244053, 27.435266>,  <33.351128, 34.534763, 27.704103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294437, 34.244053, 27.435266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301587, 0.678371, -0.669969,
		0.942846, 0.107742, -0.315329,
		-0.141726, -0.726777, -0.672093,
		33.251919, 34.026020, 27.233639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727081, 34.745392, 27.078039>,  <33.351128, 34.534763, 27.704103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727081, 34.745392, 27.078039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467480, 34.469509, 26.949608>,  <33.311718, 34.303978, 26.872549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467480, 34.469509, 26.949608>,  <33.727081, 34.745392, 27.078039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467480, 34.469509, 26.949608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180949, 0.549868, -0.815416,
		0.738951, -0.471111, -0.481670,
		-0.649006, -0.689710, -0.321079,
		33.272778, 34.262596, 26.853285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900059, 34.777889, 26.455065>,  <33.727081, 34.745392, 27.078039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900059, 34.777889, 26.455065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553432, 34.578308, 26.450653>,  <33.345459, 34.458561, 26.448006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553432, 34.578308, 26.450653>,  <33.900059, 34.777889, 26.455065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553432, 34.578308, 26.450653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330910, 0.590979, -0.735692,
		0.373591, -0.633872, -0.677227,
		-0.866561, -0.498948, -0.011029,
		33.293465, 34.428623, 26.447344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750183, 34.513103, 25.792559>,  <33.900059, 34.777889, 26.455065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750183, 34.513103, 25.792559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389599, 34.557827, 25.959824>,  <33.173248, 34.584660, 26.060183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389599, 34.557827, 25.959824>,  <33.750183, 34.513103, 25.792559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389599, 34.557827, 25.959824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241694, 0.671420, -0.700556,
		-0.359088, -0.732594, -0.578240,
		-0.901465, 0.111805, 0.418163,
		33.119160, 34.591370, 26.085272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290916, 34.475933, 25.255047>,  <33.750183, 34.513103, 25.792559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290916, 34.475933, 25.255047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102825, 34.684044, 25.540199>,  <32.989971, 34.808910, 25.711290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102825, 34.684044, 25.540199>,  <33.290916, 34.475933, 25.255047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102825, 34.684044, 25.540199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223268, 0.711352, -0.666431,
		-0.853835, -0.472539, -0.218339,
		-0.470231, 0.520274, 0.712880,
		32.961758, 34.840126, 25.754063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864353, 33.985989, 24.811222>,  <33.290916, 34.475933, 25.255047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864353, 33.985989, 24.811222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920094, 33.753838, 24.490286>,  <32.953537, 33.614548, 24.297724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920094, 33.753838, 24.490286>,  <32.864353, 33.985989, 24.811222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920094, 33.753838, 24.490286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455153, -0.682043, 0.572410,
		-0.879441, -0.444952, 0.169117,
		0.139350, -0.580375, -0.802338,
		32.961899, 33.579723, 24.249584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716663, 33.384350, 25.007660>,  <32.864353, 33.985989, 24.811222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716663, 33.384350, 25.007660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948322, 33.309357, 24.690311>,  <33.087318, 33.264362, 24.499903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948322, 33.309357, 24.690311>,  <32.716663, 33.384350, 25.007660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948322, 33.309357, 24.690311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455180, -0.733002, 0.505489,
		-0.676316, -0.653879, -0.339176,
		0.579145, -0.187484, -0.793373,
		33.122066, 33.253113, 24.452299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629833, 32.699722, 24.915833>,  <32.716663, 33.384350, 25.007660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629833, 32.699722, 24.915833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.980263, 32.793678, 24.747398>,  <33.190521, 32.850052, 24.646338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.980263, 32.793678, 24.747398>,  <32.629833, 32.699722, 24.915833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980263, 32.793678, 24.747398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442730, -0.737808, 0.509538,
		-0.190995, -0.632823, -0.750371,
		0.876077, 0.234892, -0.421087,
		33.243088, 32.864147, 24.621073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945675, 32.210735, 24.885748>,  <32.629833, 32.699722, 24.915833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945675, 32.210735, 24.885748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275894, 32.432301, 24.842577>,  <33.474026, 32.565239, 24.816675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275894, 32.432301, 24.842577>,  <32.945675, 32.210735, 24.885748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275894, 32.432301, 24.842577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544303, -0.731045, 0.411470,
		0.149021, -0.398433, -0.905010,
		0.825547, 0.553918, -0.107927,
		33.523560, 32.598476, 24.810200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469982, 31.776842, 24.672865>,  <32.945675, 32.210735, 24.885748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469982, 31.776842, 24.672865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657177, 32.086613, 24.843161>,  <33.769493, 32.272476, 24.945337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657177, 32.086613, 24.843161>,  <33.469982, 31.776842, 24.672865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657177, 32.086613, 24.843161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562570, -0.632591, 0.532300,
		0.681546, -0.009600, -0.731713,
		0.467985, 0.774427, 0.425739,
		33.797573, 32.318939, 24.970882>
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
