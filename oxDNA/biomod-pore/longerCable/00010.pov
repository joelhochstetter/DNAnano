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
	<24.649677, 35.039650, 34.980808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403006, 35.101997, 35.289459>,  <24.255003, 35.139404, 35.474651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403006, 35.101997, 35.289459>,  <24.649677, 35.039650, 34.980808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403006, 35.101997, 35.289459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038503, -0.985002, 0.168193,
		0.786272, 0.074012, 0.613432,
		-0.616680, 0.155865, 0.771629,
		24.218002, 35.148758, 35.520947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311628, 35.120296, 35.230755>,  <24.649677, 35.039650, 34.980808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311628, 35.120296, 35.230755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115490, 35.386730, 35.005939>,  <24.997807, 35.546589, 34.871048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115490, 35.386730, 35.005939>,  <25.311628, 35.120296, 35.230755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115490, 35.386730, 35.005939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749160, 0.651665, 0.118707,
		0.445333, -0.362852, -0.818546,
		-0.490345, 0.666086, -0.562042,
		24.968386, 35.586555, 34.837326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854496, 35.450146, 34.843170>,  <25.311628, 35.120296, 35.230755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854496, 35.450146, 34.843170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540379, 35.696743, 34.820339>,  <25.351908, 35.844700, 34.806641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540379, 35.696743, 34.820339>,  <25.854496, 35.450146, 34.843170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540379, 35.696743, 34.820339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616203, 0.769309, -0.168694,
		-0.060087, -0.167646, -0.984014,
		-0.785292, 0.616489, -0.057078,
		25.304790, 35.881691, 34.803215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746529, 35.905548, 34.130943>,  <25.854496, 35.450146, 34.843170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746529, 35.905548, 34.130943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691282, 36.030350, 34.506939>,  <25.658134, 36.105232, 34.732536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691282, 36.030350, 34.506939>,  <25.746529, 35.905548, 34.130943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691282, 36.030350, 34.506939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699507, 0.702621, -0.130433,
		-0.701151, 0.639513, -0.315293,
		-0.138118, 0.312003, 0.939988,
		25.649847, 36.123951, 34.788937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503471, 36.527069, 34.247589>,  <25.746529, 35.905548, 34.130943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503471, 36.527069, 34.247589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765049, 36.429352, 34.533997>,  <25.921995, 36.370720, 34.705841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765049, 36.429352, 34.533997>,  <25.503471, 36.527069, 34.247589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765049, 36.429352, 34.533997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683555, 0.596368, -0.420829,
		-0.324203, 0.764635, 0.556979,
		0.653945, -0.244292, 0.716015,
		25.961233, 36.356064, 34.748802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000275, 37.158604, 34.286209>,  <25.503471, 36.527069, 34.247589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000275, 37.158604, 34.286209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148443, 36.839542, 34.476589>,  <26.237345, 36.648106, 34.590816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148443, 36.839542, 34.476589>,  <26.000275, 37.158604, 34.286209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148443, 36.839542, 34.476589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920575, 0.246960, -0.302577,
		0.123811, 0.550232, 0.825782,
		0.370423, -0.797656, 0.475953,
		26.259569, 36.600246, 34.619373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694031, 37.367832, 34.472267>,  <26.000275, 37.158604, 34.286209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694031, 37.367832, 34.472267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714867, 36.968426, 34.478535>,  <26.727369, 36.728783, 34.482296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714867, 36.968426, 34.478535>,  <26.694031, 37.367832, 34.472267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714867, 36.968426, 34.478535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932375, 0.043007, -0.358924,
		0.357719, 0.033310, 0.933235,
		0.052091, -0.998519, 0.015674,
		26.730494, 36.668869, 34.483238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395769, 37.261814, 34.822056>,  <26.694031, 37.367832, 34.472267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395769, 37.261814, 34.822056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265825, 36.949501, 34.608574>,  <27.187859, 36.762112, 34.480484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265825, 36.949501, 34.608574>,  <27.395769, 37.261814, 34.822056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265825, 36.949501, 34.608574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857517, -0.005148, -0.514430,
		0.398913, -0.624777, 0.671210,
		-0.324859, -0.780787, -0.533703,
		27.168367, 36.715263, 34.448463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971272, 36.894070, 34.806782>,  <27.395769, 37.261814, 34.822056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971272, 36.894070, 34.806782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739758, 36.786770, 34.498741>,  <27.600849, 36.722389, 34.313919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739758, 36.786770, 34.498741>,  <27.971272, 36.894070, 34.806782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739758, 36.786770, 34.498741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805304, -0.039286, -0.591560,
		0.128429, -0.962549, 0.238757,
		-0.578785, -0.268245, -0.770099,
		27.566122, 36.706295, 34.267712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198475, 36.230267, 34.525639>,  <27.971272, 36.894070, 34.806782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198475, 36.230267, 34.525639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013695, 36.455280, 34.251366>,  <27.902826, 36.590290, 34.086803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013695, 36.455280, 34.251366>,  <28.198475, 36.230267, 34.525639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013695, 36.455280, 34.251366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764372, -0.139588, -0.629484,
		-0.449820, -0.814905, -0.365503,
		-0.461950, 0.562535, -0.685680,
		27.875111, 36.624043, 34.045662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408302, 35.906273, 33.877007>,  <28.198475, 36.230267, 34.525639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408302, 35.906273, 33.877007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232733, 36.238518, 33.739937>,  <28.127390, 36.437866, 33.657696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232733, 36.238518, 33.739937>,  <28.408302, 35.906273, 33.877007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232733, 36.238518, 33.739937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683306, 0.060917, -0.727587,
		-0.583470, -0.553505, -0.594302,
		-0.438926, 0.830615, -0.342670,
		28.101055, 36.487701, 33.637135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362011, 35.916588, 33.111382>,  <28.408302, 35.906273, 33.877007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362011, 35.916588, 33.111382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376421, 36.290554, 33.252594>,  <28.385067, 36.514935, 33.337322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376421, 36.290554, 33.252594>,  <28.362011, 35.916588, 33.111382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376421, 36.290554, 33.252594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801270, 0.184086, -0.569279,
		-0.597217, 0.303379, -0.742491,
		0.036025, 0.934919, 0.353028,
		28.387228, 36.571030, 33.358501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937128, 36.246445, 32.783974>,  <28.362011, 35.916588, 33.111382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937128, 36.246445, 32.783974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985277, 36.611809, 32.628437>,  <29.014166, 36.831028, 32.535114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985277, 36.611809, 32.628437>,  <28.937128, 36.246445, 32.783974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985277, 36.611809, 32.628437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765375, 0.334842, 0.549619,
		0.632227, 0.231456, 0.739403,
		0.120371, 0.913406, -0.388847,
		29.021389, 36.885830, 32.511784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309963, 36.764385, 33.252045>,  <28.937128, 36.246445, 32.783974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309963, 36.764385, 33.252045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037941, 36.931778, 33.011246>,  <28.874727, 37.032215, 32.866768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037941, 36.931778, 33.011246>,  <29.309963, 36.764385, 33.252045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037941, 36.931778, 33.011246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666682, -0.011325, 0.745256,
		0.305060, 0.908154, 0.286697,
		-0.680054, 0.418484, -0.601995,
		28.833925, 37.057323, 32.830647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873756, 37.126583, 33.754181>,  <29.309963, 36.764385, 33.252045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873756, 37.126583, 33.754181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671707, 37.115227, 33.409149>,  <28.550478, 37.108414, 33.202129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671707, 37.115227, 33.409149>,  <28.873756, 37.126583, 33.754181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671707, 37.115227, 33.409149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853771, -0.129707, 0.504234,
		-0.126197, 0.991146, 0.041281,
		-0.505124, -0.028388, -0.862580,
		28.520170, 37.106709, 33.150375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244442, 37.656067, 33.577057>,  <28.873756, 37.126583, 33.754181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244442, 37.656067, 33.577057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212914, 37.306213, 33.385723>,  <28.193996, 37.096302, 33.270924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212914, 37.306213, 33.385723>,  <28.244442, 37.656067, 33.577057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212914, 37.306213, 33.385723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790849, -0.237259, 0.564151,
		-0.606914, 0.422755, -0.673003,
		-0.078821, -0.874635, -0.478331,
		28.189266, 37.043823, 33.242226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583324, 37.595009, 33.173012>,  <28.244442, 37.656067, 33.577057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583324, 37.595009, 33.173012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727209, 37.247192, 33.308369>,  <27.813540, 37.038502, 33.389584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727209, 37.247192, 33.308369>,  <27.583324, 37.595009, 33.173012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727209, 37.247192, 33.308369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805683, -0.106537, 0.582688,
		-0.470618, -0.482236, -0.738895,
		0.359713, -0.869539, 0.338391,
		27.835123, 36.986332, 33.409885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044859, 37.197678, 33.155563>,  <27.583324, 37.595009, 33.173012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044859, 37.197678, 33.155563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304663, 36.987720, 33.375610>,  <27.460545, 36.861748, 33.507637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304663, 36.987720, 33.375610>,  <27.044859, 37.197678, 33.155563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304663, 36.987720, 33.375610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749583, -0.320683, 0.579040,
		-0.127516, -0.788452, -0.601733,
		0.649511, -0.524886, 0.550118,
		27.499516, 36.830254, 33.540646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793709, 36.499481, 33.284115>,  <27.044859, 37.197678, 33.155563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793709, 36.499481, 33.284115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060129, 36.526722, 33.581230>,  <27.219980, 36.543064, 33.759499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060129, 36.526722, 33.581230>,  <26.793709, 36.499481, 33.284115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060129, 36.526722, 33.581230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627121, -0.488038, 0.607073,
		0.403853, -0.870161, -0.282351,
		0.666049, 0.068099, 0.742792,
		27.259945, 36.547153, 33.804070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906710, 35.823784, 33.554928>,  <26.793709, 36.499481, 33.284115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906710, 35.823784, 33.554928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962563, 36.088818, 33.849270>,  <26.996075, 36.247837, 34.025875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962563, 36.088818, 33.849270>,  <26.906710, 35.823784, 33.554928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962563, 36.088818, 33.849270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777911, -0.386395, 0.495533,
		0.612664, -0.641623, 0.461479,
		0.139633, 0.662585, 0.735856,
		27.004452, 36.287594, 34.070026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996237, 35.530090, 34.269062>,  <26.906710, 35.823784, 33.554928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996237, 35.530090, 34.269062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826355, 35.892162, 34.262527>,  <26.724426, 36.109406, 34.258606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826355, 35.892162, 34.262527>,  <26.996237, 35.530090, 34.269062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826355, 35.892162, 34.262527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835005, -0.384675, 0.393437,
		0.349847, 0.180738, 0.919206,
		-0.424705, 0.905185, -0.016340,
		26.698944, 36.163719, 34.257626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914900, 35.680317, 34.886131>,  <26.996237, 35.530090, 34.269062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914900, 35.680317, 34.886131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646673, 35.910397, 34.698734>,  <26.485737, 36.048443, 34.586296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646673, 35.910397, 34.698734>,  <26.914900, 35.680317, 34.886131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646673, 35.910397, 34.698734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704926, -0.297289, 0.643972,
		0.231133, 0.762080, 0.604824,
		-0.670565, 0.575199, -0.468497,
		26.445503, 36.082954, 34.558186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400040, 35.679832, 35.381760>,  <26.914900, 35.680317, 34.886131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400040, 35.679832, 35.381760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223560, 35.824581, 35.053276>,  <26.117672, 35.911430, 34.856186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223560, 35.824581, 35.053276>,  <26.400040, 35.679832, 35.381760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223560, 35.824581, 35.053276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886143, -0.320224, 0.334973,
		-0.141754, 0.875502, 0.461953,
		-0.441198, 0.361873, -0.821214,
		26.091200, 35.933144, 34.806911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618694, 35.764160, 36.106087>,  <26.400040, 35.679832, 35.381760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618694, 35.764160, 36.106087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756399, 35.388641, 36.101379>,  <26.839022, 35.163330, 36.098557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756399, 35.388641, 36.101379>,  <26.618694, 35.764160, 36.106087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756399, 35.388641, 36.101379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169319, -0.074410, 0.982748,
		-0.923480, -0.336330, -0.184573,
		0.344262, -0.938800, -0.011769,
		26.859678, 35.107002, 36.097847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117668, 35.259979, 36.410244>,  <26.618694, 35.764160, 36.106087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117668, 35.259979, 36.410244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487394, 35.110950, 36.443291>,  <26.709230, 35.021534, 36.463120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487394, 35.110950, 36.443291>,  <26.117668, 35.259979, 36.410244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487394, 35.110950, 36.443291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157098, -0.174180, 0.972102,
		-0.347790, -0.911509, -0.219529,
		0.924317, -0.372575, 0.082618,
		26.764690, 34.999180, 36.468075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952942, 34.712673, 36.847736>,  <26.117668, 35.259979, 36.410244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952942, 34.712673, 36.847736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351305, 34.720879, 36.812531>,  <26.590322, 34.725803, 36.791409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351305, 34.720879, 36.812531>,  <25.952942, 34.712673, 36.847736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351305, 34.720879, 36.812531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089148, -0.382556, 0.919622,
		-0.014804, -0.923705, -0.382819,
		0.995908, 0.020513, -0.088010,
		26.650078, 34.727032, 36.786129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194059, 34.046932, 36.966434>,  <25.952942, 34.712673, 36.847736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194059, 34.046932, 36.966434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464933, 34.324570, 37.064129>,  <26.627459, 34.491154, 37.122746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464933, 34.324570, 37.064129>,  <26.194059, 34.046932, 36.966434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464933, 34.324570, 37.064129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023591, -0.352242, 0.935612,
		0.735434, -0.627821, -0.254907,
		0.677186, 0.694094, 0.244240,
		26.668089, 34.532799, 37.137402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343060, 34.117420, 37.658154>,  <26.194059, 34.046932, 36.966434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343060, 34.117420, 37.658154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421585, 34.457607, 37.853363>,  <26.468700, 34.661720, 37.970490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421585, 34.457607, 37.853363>,  <26.343060, 34.117420, 37.658154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421585, 34.457607, 37.853363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762484, -0.445334, 0.469358,
		0.616506, 0.279966, -0.735894,
		0.196314, 0.850469, 0.488021,
		26.480478, 34.712749, 37.999767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636026, 33.333576, 37.923203>,  <26.343060, 34.117420, 37.658154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636026, 33.333576, 37.923203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630955, 32.933609, 37.922958>,  <26.627913, 32.693630, 37.922810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630955, 32.933609, 37.922958>,  <26.636026, 33.333576, 37.923203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630955, 32.933609, 37.922958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914325, 0.011345, 0.404823,
		-0.404783, 0.005696, -0.914395,
		-0.012680, -0.999919, -0.000615,
		26.627151, 32.633633, 37.922775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871819, 33.510094, 37.230892>,  <26.636026, 33.333576, 37.923203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871819, 33.510094, 37.230892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981476, 33.894691, 37.223217>,  <27.047270, 34.125450, 37.218613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981476, 33.894691, 37.223217>,  <26.871819, 33.510094, 37.230892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981476, 33.894691, 37.223217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305039, 0.105860, 0.946438,
		0.912029, -0.253605, 0.322315,
		0.274142, 0.961498, -0.019188,
		27.063719, 34.183140, 37.217461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531597, 33.669956, 37.741131>,  <26.871819, 33.510094, 37.230892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531597, 33.669956, 37.741131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271614, 33.967541, 37.679066>,  <27.115625, 34.146091, 37.641827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271614, 33.967541, 37.679066>,  <27.531597, 33.669956, 37.741131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271614, 33.967541, 37.679066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163313, 0.062664, 0.984582,
		0.742217, 0.665275, 0.080770,
		-0.649956, 0.743964, -0.155158,
		27.076628, 34.190731, 37.632519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434448, 34.079109, 38.342678>,  <27.531597, 33.669956, 37.741131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434448, 34.079109, 38.342678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090721, 34.189651, 38.170536>,  <26.884485, 34.255978, 38.067253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090721, 34.189651, 38.170536>,  <27.434448, 34.079109, 38.342678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090721, 34.189651, 38.170536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373705, 0.235191, 0.897234,
		0.349171, 0.931833, -0.098828,
		-0.859316, 0.276356, -0.430353,
		26.832926, 34.272560, 38.041431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299875, 34.802505, 38.473366>,  <27.434448, 34.079109, 38.342678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299875, 34.802505, 38.473366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989660, 34.555851, 38.419254>,  <26.803532, 34.407856, 38.386787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989660, 34.555851, 38.419254>,  <27.299875, 34.802505, 38.473366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989660, 34.555851, 38.419254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299455, 0.170686, 0.938719,
		-0.555762, 0.768519, -0.317029,
		-0.775536, -0.616640, -0.135276,
		26.757000, 34.370857, 38.378670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630878, 35.086094, 38.688499>,  <27.299875, 34.802505, 38.473366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630878, 35.086094, 38.688499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645153, 34.688251, 38.727451>,  <26.653717, 34.449547, 38.750820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645153, 34.688251, 38.727451>,  <26.630878, 35.086094, 38.688499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645153, 34.688251, 38.727451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494464, 0.067104, 0.866604,
		-0.868465, -0.079074, -0.489403,
		0.035685, -0.994608, 0.097377,
		26.655859, 34.389870, 38.756664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966667, 34.712490, 38.867916>,  <26.630878, 35.086094, 38.688499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966667, 34.712490, 38.867916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256044, 34.472702, 39.004898>,  <26.429670, 34.328831, 39.087086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256044, 34.472702, 39.004898>,  <25.966667, 34.712490, 38.867916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256044, 34.472702, 39.004898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467576, -0.060490, 0.881881,
		-0.507943, -0.798111, -0.324057,
		0.723441, -0.599467, 0.342452,
		26.473076, 34.292862, 39.107635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004566, 34.634258, 38.107838>,  <25.966667, 34.712490, 38.867916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004566, 34.634258, 38.107838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404434, 34.625462, 38.102486>,  <26.644354, 34.620186, 38.099274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404434, 34.625462, 38.102486>,  <26.004566, 34.634258, 38.107838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404434, 34.625462, 38.102486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014020, -0.029285, -0.999473,
		0.021584, 0.999329, -0.029584,
		0.999669, -0.021988, -0.013379,
		26.704334, 34.618866, 38.098473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174492, 35.123684, 37.542130>,  <26.004566, 34.634258, 38.107838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174492, 35.123684, 37.542130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450279, 34.835537, 37.572330>,  <26.615751, 34.662647, 37.590450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450279, 34.835537, 37.572330>,  <26.174492, 35.123684, 37.542130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450279, 34.835537, 37.572330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076529, -0.031211, -0.996579,
		0.720260, 0.692890, 0.033610,
		0.689470, -0.720368, 0.075506,
		26.657120, 34.619427, 37.594982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844427, 35.391586, 37.766781>,  <26.174492, 35.123684, 37.542130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844427, 35.391586, 37.766781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987177, 35.020691, 37.721390>,  <27.072826, 34.798153, 37.694157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987177, 35.020691, 37.721390>,  <26.844427, 35.391586, 37.766781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987177, 35.020691, 37.721390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252425, 0.212675, -0.943955,
		0.899400, 0.308231, 0.309956,
		0.356876, -0.927234, -0.113475,
		27.094240, 34.742519, 37.687347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431198, 35.443943, 37.483166>,  <26.844427, 35.391586, 37.766781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431198, 35.443943, 37.483166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302937, 35.084488, 37.363411>,  <27.225981, 34.868816, 37.291557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302937, 35.084488, 37.363411>,  <27.431198, 35.443943, 37.483166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302937, 35.084488, 37.363411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288311, 0.208482, -0.934565,
		0.902252, -0.385988, 0.192236,
		-0.320653, -0.898637, -0.299388,
		27.206741, 34.814896, 37.273594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923536, 34.949997, 37.056095>,  <27.431198, 35.443943, 37.483166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923536, 34.949997, 37.056095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548037, 34.837189, 36.976887>,  <27.322737, 34.769505, 36.929363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548037, 34.837189, 36.976887>,  <27.923536, 34.949997, 37.056095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548037, 34.837189, 36.976887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214724, -0.029285, -0.976236,
		0.269522, -0.958961, 0.088049,
		-0.938750, -0.282023, -0.198019,
		27.266411, 34.752583, 36.917480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993910, 34.580471, 36.481121>,  <27.923536, 34.949997, 37.056095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993910, 34.580471, 36.481121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620922, 34.724567, 36.491898>,  <27.397129, 34.811028, 36.498363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620922, 34.724567, 36.491898>,  <27.993910, 34.580471, 36.481121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620922, 34.724567, 36.491898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062589, 0.234567, -0.970083,
		-0.355786, -0.902886, -0.241274,
		-0.932469, 0.360243, 0.026945,
		27.341181, 34.832642, 36.499981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584627, 34.370468, 35.913239>,  <27.993910, 34.580471, 36.481121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584627, 34.370468, 35.913239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414736, 34.725357, 35.985283>,  <27.312801, 34.938290, 36.028511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414736, 34.725357, 35.985283>,  <27.584627, 34.370468, 35.913239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414736, 34.725357, 35.985283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096157, 0.242036, -0.965491,
		-0.900199, -0.392753, -0.188112,
		-0.424729, 0.887222, 0.180115,
		27.287317, 34.991524, 36.039318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087849, 34.429901, 35.530354>,  <27.584627, 34.370468, 35.913239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087849, 34.429901, 35.530354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270405, 34.773197, 35.624275>,  <27.379938, 34.979176, 35.680630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270405, 34.773197, 35.624275>,  <27.087849, 34.429901, 35.530354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270405, 34.773197, 35.624275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075566, 0.225549, -0.971297,
		-0.886564, 0.461036, 0.038085,
		0.456392, 0.858239, 0.234803,
		27.407322, 35.030670, 35.694717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321890, 33.851509, 35.055195>,  <27.087849, 34.429901, 35.530354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321890, 33.851509, 35.055195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074100, 33.674747, 35.314724>,  <26.925426, 33.568691, 35.470444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074100, 33.674747, 35.314724>,  <27.321890, 33.851509, 35.055195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074100, 33.674747, 35.314724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676054, -0.119779, -0.727051,
		0.399003, -0.889030, -0.224551,
		-0.619473, -0.441904, 0.648824,
		26.888258, 33.542175, 35.509373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960737, 33.434193, 35.285465>,  <27.321890, 33.851509, 35.055195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960737, 33.434193, 35.285465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949184, 33.833786, 35.271622>,  <27.942253, 34.073544, 35.263317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949184, 33.833786, 35.271622>,  <27.960737, 33.434193, 35.285465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949184, 33.833786, 35.271622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990514, 0.023948, -0.135309,
		-0.134343, -0.038189, -0.990199,
		-0.028881, 0.998984, -0.034609,
		27.940519, 34.133480, 35.261238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290831, 33.726238, 35.877937>,  <27.960737, 33.434193, 35.285465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290831, 33.726238, 35.877937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312634, 33.386497, 35.667934>,  <28.325714, 33.182655, 35.541931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312634, 33.386497, 35.667934>,  <28.290831, 33.726238, 35.877937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312634, 33.386497, 35.667934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083906, -0.520036, 0.850013,
		-0.994982, -0.090382, 0.042920,
		0.054506, -0.849349, -0.525010,
		28.328985, 33.131691, 35.510433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813019, 33.234459, 36.131248>,  <28.290831, 33.726238, 35.877937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813019, 33.234459, 36.131248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137939, 33.062454, 35.973640>,  <28.332891, 32.959251, 35.879074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137939, 33.062454, 35.973640>,  <27.813019, 33.234459, 36.131248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137939, 33.062454, 35.973640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219767, -0.400111, 0.889727,
		-0.540247, -0.809320, -0.230508,
		0.812302, -0.430014, -0.394021,
		28.381630, 32.933449, 35.855434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919682, 32.403675, 36.257473>,  <27.813019, 33.234459, 36.131248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919682, 32.403675, 36.257473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256168, 32.616852, 36.220982>,  <28.458061, 32.744759, 36.199085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256168, 32.616852, 36.220982>,  <27.919682, 32.403675, 36.257473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256168, 32.616852, 36.220982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319531, -0.353886, 0.879014,
		0.436178, -0.768594, -0.467987,
		0.841218, 0.532943, -0.091233,
		28.508533, 32.776733, 36.193611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479269, 31.997936, 36.202618>,  <27.919682, 32.403675, 36.257473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479269, 31.997936, 36.202618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576204, 32.344749, 36.376755>,  <28.634365, 32.552837, 36.481236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576204, 32.344749, 36.376755>,  <28.479269, 31.997936, 36.202618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576204, 32.344749, 36.376755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287018, -0.492703, 0.821501,
		0.926764, -0.074131, -0.368256,
		0.242340, 0.867034, 0.435343,
		28.648907, 32.604858, 36.507359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070261, 31.947668, 36.548306>,  <28.479269, 31.997936, 36.202618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070261, 31.947668, 36.548306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871979, 32.257595, 36.705242>,  <28.753010, 32.443550, 36.799404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871979, 32.257595, 36.705242>,  <29.070261, 31.947668, 36.548306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871979, 32.257595, 36.705242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348985, -0.235966, 0.906934,
		0.795288, 0.586495, -0.153430,
		-0.495708, 0.774819, 0.392339,
		28.723267, 32.490040, 36.822945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511438, 32.384968, 37.044353>,  <29.070261, 31.947668, 36.548306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511438, 32.384968, 37.044353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128014, 32.412411, 37.154953>,  <28.897959, 32.428879, 37.221313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128014, 32.412411, 37.154953>,  <29.511438, 32.384968, 37.044353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128014, 32.412411, 37.154953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252188, -0.247087, 0.935601,
		0.132512, 0.966561, 0.219545,
		-0.958562, 0.068612, 0.276497,
		28.840445, 32.432995, 37.237904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391912, 32.866425, 37.645920>,  <29.511438, 32.384968, 37.044353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391912, 32.866425, 37.645920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151617, 32.546680, 37.641224>,  <29.007441, 32.354836, 37.638409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151617, 32.546680, 37.641224>,  <29.391912, 32.866425, 37.645920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151617, 32.546680, 37.641224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206770, -0.169540, 0.963588,
		-0.772244, 0.576437, 0.267133,
		-0.600738, -0.799360, -0.011736,
		28.971395, 32.306873, 37.637703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853901, 32.874786, 38.153812>,  <29.391912, 32.866425, 37.645920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853901, 32.874786, 38.153812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018244, 32.514347, 38.098370>,  <29.116850, 32.298084, 38.065105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018244, 32.514347, 38.098370>,  <28.853901, 32.874786, 38.153812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018244, 32.514347, 38.098370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237460, -0.041012, 0.970531,
		-0.880233, -0.431662, 0.197126,
		0.410857, -0.901103, -0.138603,
		29.141500, 32.244015, 38.056789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685555, 32.543468, 38.783619>,  <28.853901, 32.874786, 38.153812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685555, 32.543468, 38.783619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000128, 32.359440, 38.618763>,  <29.188871, 32.249023, 38.519848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000128, 32.359440, 38.618763>,  <28.685555, 32.543468, 38.783619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000128, 32.359440, 38.618763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417926, -0.094982, 0.903502,
		-0.454819, -0.882788, 0.117578,
		0.786433, -0.460069, -0.412140,
		29.236057, 32.221420, 38.495121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766956, 31.858334, 39.052433>,  <28.685555, 32.543468, 38.783619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766956, 31.858334, 39.052433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143169, 31.947128, 38.949577>,  <29.368896, 32.000404, 38.887863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143169, 31.947128, 38.949577>,  <28.766956, 31.858334, 39.052433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143169, 31.947128, 38.949577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319623, -0.321868, 0.891203,
		0.115068, -0.920393, -0.373679,
		0.940532, 0.221985, -0.257142,
		29.425329, 32.013725, 38.872437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161741, 31.390354, 39.433239>,  <28.766956, 31.858334, 39.052433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161741, 31.390354, 39.433239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428476, 31.656685, 39.299370>,  <29.588518, 31.816483, 39.219048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428476, 31.656685, 39.299370>,  <29.161741, 31.390354, 39.433239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428476, 31.656685, 39.299370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596808, -0.208224, 0.774895,
		0.446259, -0.716463, -0.536222,
		0.666838, 0.665825, -0.334669,
		29.628529, 31.856432, 39.198971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791550, 31.092480, 39.459953>,  <29.161741, 31.390354, 39.433239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791550, 31.092480, 39.459953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883638, 31.480881, 39.434189>,  <29.938890, 31.713923, 39.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883638, 31.480881, 39.434189>,  <29.791550, 31.092480, 39.459953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883638, 31.480881, 39.434189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667415, -0.109375, 0.736610,
		0.708206, -0.212573, -0.673243,
		0.230219, 0.971005, -0.064414,
		29.952703, 31.772182, 39.414864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520638, 31.135294, 39.350098>,  <29.791550, 31.092480, 39.459953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520638, 31.135294, 39.350098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349861, 31.446936, 39.533714>,  <30.247395, 31.633921, 39.643883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349861, 31.446936, 39.533714>,  <30.520638, 31.135294, 39.350098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349861, 31.446936, 39.533714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686284, -0.051387, 0.725516,
		0.588841, 0.624785, -0.512748,
		-0.426943, 0.779104, 0.459039,
		30.221779, 31.680666, 39.671425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021782, 31.430248, 39.789925>,  <30.520638, 31.135294, 39.350098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021782, 31.430248, 39.789925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682718, 31.601498, 39.915260>,  <30.479280, 31.704247, 39.990463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682718, 31.601498, 39.915260>,  <31.021782, 31.430248, 39.789925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682718, 31.601498, 39.915260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346892, 0.000380, 0.937905,
		0.401419, 0.903721, -0.148834,
		-0.847661, 0.428122, 0.313341,
		30.428419, 31.729935, 40.009262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206385, 31.220362, 40.364380>,  <31.021782, 31.430248, 39.789925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206385, 31.220362, 40.364380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866764, 31.429138, 40.397091>,  <30.662991, 31.554403, 40.416718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866764, 31.429138, 40.397091>,  <31.206385, 31.220362, 40.364380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866764, 31.429138, 40.397091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135714, -0.365070, 0.921035,
		0.510578, 0.770910, 0.380798,
		-0.849054, 0.521940, 0.081773,
		30.612047, 31.585720, 40.421623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258282, 31.608940, 41.081341>,  <31.206385, 31.220362, 40.364380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258282, 31.608940, 41.081341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525801, 31.466925, 40.820065>,  <31.686312, 31.381716, 40.663300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525801, 31.466925, 40.820065>,  <31.258282, 31.608940, 41.081341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525801, 31.466925, 40.820065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599980, 0.776582, 0.192208,
		0.439015, -0.520450, 0.732392,
		0.668797, -0.355039, -0.653190,
		31.726440, 31.360413, 40.624107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713652, 32.166706, 41.000820>,  <31.258282, 31.608940, 41.081341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713652, 32.166706, 41.000820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003540, 32.395493, 41.154514>,  <32.177471, 32.532764, 41.246731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003540, 32.395493, 41.154514>,  <31.713652, 32.166706, 41.000820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003540, 32.395493, 41.154514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671758, -0.462370, -0.578754,
		-0.153371, 0.677545, -0.719312,
		0.724720, 0.571967, 0.384232,
		32.220955, 32.567081, 41.269783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032368, 32.678478, 40.651737>,  <31.713652, 32.166706, 41.000820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032368, 32.678478, 40.651737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313923, 32.521378, 40.888477>,  <32.482857, 32.427116, 41.030521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313923, 32.521378, 40.888477>,  <32.032368, 32.678478, 40.651737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313923, 32.521378, 40.888477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487654, -0.338637, -0.804686,
		0.516466, 0.855026, -0.046833,
		0.703886, -0.392754, 0.591851,
		32.525089, 32.403553, 41.066032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751556, 32.921078, 40.512878>,  <32.032368, 32.678478, 40.651737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751556, 32.921078, 40.512878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740688, 32.549976, 40.661762>,  <32.734169, 32.327316, 40.751091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740688, 32.549976, 40.661762>,  <32.751556, 32.921078, 40.512878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740688, 32.549976, 40.661762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281965, -0.364338, -0.887555,
		0.959040, 0.080838, 0.271492,
		-0.027167, -0.927752, 0.372208,
		32.732540, 32.271652, 40.773426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342979, 32.531437, 40.367825>,  <32.751556, 32.921078, 40.512878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342979, 32.531437, 40.367825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023994, 32.292850, 40.404221>,  <32.832603, 32.149700, 40.426056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023994, 32.292850, 40.404221>,  <33.342979, 32.531437, 40.367825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023994, 32.292850, 40.404221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251506, -0.465685, -0.848459,
		0.548447, -0.653733, 0.521382,
		-0.797465, -0.596465, 0.090986,
		32.784756, 32.113911, 40.431515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426144, 31.774591, 40.347794>,  <33.342979, 32.531437, 40.367825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426144, 31.774591, 40.347794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045795, 31.816893, 40.231403>,  <32.817589, 31.842274, 40.161568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045795, 31.816893, 40.231403>,  <33.426144, 31.774591, 40.347794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045795, 31.816893, 40.231403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179361, -0.577907, -0.796149,
		-0.252353, -0.809222, 0.530545,
		-0.950867, 0.105751, -0.290979,
		32.760536, 31.848618, 40.144108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314728, 31.109697, 40.100712>,  <33.426144, 31.774591, 40.347794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314728, 31.109697, 40.100712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054657, 31.368536, 39.941444>,  <32.898617, 31.523840, 39.845882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054657, 31.368536, 39.941444>,  <33.314728, 31.109697, 40.100712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054657, 31.368536, 39.941444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004092, -0.521064, -0.853508,
		-0.759774, -0.556559, 0.336135,
		-0.650175, 0.647097, -0.398168,
		32.859604, 31.562666, 39.821995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774506, 30.703152, 39.738747>,  <33.314728, 31.109697, 40.100712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774506, 30.703152, 39.738747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796181, 31.066576, 39.573055>,  <32.809185, 31.284630, 39.473640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796181, 31.066576, 39.573055>,  <32.774506, 30.703152, 39.738747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796181, 31.066576, 39.573055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216927, -0.394217, -0.893048,
		-0.974683, 0.138251, 0.175729,
		0.054189, 0.908559, -0.414227,
		32.812439, 31.339144, 39.448788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109913, 30.748569, 39.365250>,  <32.774506, 30.703152, 39.738747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109913, 30.748569, 39.365250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356167, 31.001921, 39.177711>,  <32.503922, 31.153933, 39.065189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356167, 31.001921, 39.177711>,  <32.109913, 30.748569, 39.365250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356167, 31.001921, 39.177711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220679, -0.432590, -0.874166,
		-0.756498, 0.641636, -0.126546,
		0.615639, 0.633379, -0.468850,
		32.540859, 31.191935, 39.037056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795137, 30.815092, 38.735508>,  <32.109913, 30.748569, 39.365250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795137, 30.815092, 38.735508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165646, 30.952915, 38.674450>,  <32.387951, 31.035608, 38.637814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165646, 30.952915, 38.674450>,  <31.795137, 30.815092, 38.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165646, 30.952915, 38.674450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002005, -0.409550, -0.912286,
		-0.376851, 0.844718, -0.380045,
		0.926271, 0.344558, -0.152646,
		32.443527, 31.056282, 38.628654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846148, 31.245823, 38.118313>,  <31.795137, 30.815092, 38.735508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846148, 31.245823, 38.118313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223415, 31.123198, 38.169609>,  <32.449776, 31.049622, 38.200386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223415, 31.123198, 38.169609>,  <31.846148, 31.245823, 38.118313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223415, 31.123198, 38.169609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059065, -0.225121, -0.972539,
		0.327016, 0.924845, -0.194220,
		0.943171, -0.306564, 0.128245,
		32.506367, 31.031229, 38.208084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268959, 31.625210, 37.651955>,  <31.846148, 31.245823, 38.118313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268959, 31.625210, 37.651955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473698, 31.293245, 37.740730>,  <32.596542, 31.094067, 37.793995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473698, 31.293245, 37.740730>,  <32.268959, 31.625210, 37.651955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473698, 31.293245, 37.740730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198807, -0.136904, -0.970429,
		0.835755, 0.540837, 0.094918,
		0.511850, -0.829911, 0.221941,
		32.627251, 31.044271, 37.807312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879330, 31.666862, 37.211876>,  <32.268959, 31.625210, 37.651955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879330, 31.666862, 37.211876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849148, 31.286787, 37.332836>,  <32.831039, 31.058741, 37.405411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849148, 31.286787, 37.332836>,  <32.879330, 31.666862, 37.211876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849148, 31.286787, 37.332836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378439, -0.307862, -0.872929,
		0.922545, 0.048572, 0.382819,
		-0.075456, -0.950190, 0.302398,
		32.826511, 31.001730, 37.423557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467857, 31.271593, 36.964531>,  <32.879330, 31.666862, 37.211876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467857, 31.271593, 36.964531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240227, 30.957481, 37.062084>,  <33.103649, 30.769014, 37.120617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240227, 30.957481, 37.062084>,  <33.467857, 31.271593, 36.964531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240227, 30.957481, 37.062084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330565, -0.490057, -0.806580,
		0.752911, -0.378388, 0.538468,
		-0.569080, -0.785281, 0.243888,
		33.069504, 30.721897, 37.135250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902954, 30.716766, 36.857777>,  <33.467857, 31.271593, 36.964531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902954, 30.716766, 36.857777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527737, 30.581121, 36.829254>,  <33.302608, 30.499735, 36.812141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527737, 30.581121, 36.829254>,  <33.902954, 30.716766, 36.857777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527737, 30.581121, 36.829254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304598, -0.708772, -0.636289,
		0.165234, -0.618583, 0.768148,
		-0.938039, -0.339113, -0.071306,
		33.246326, 30.479387, 36.807861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919987, 30.093204, 37.035805>,  <33.902954, 30.716766, 36.857777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919987, 30.093204, 37.035805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592770, 30.120052, 36.807312>,  <33.396439, 30.136160, 36.670216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592770, 30.120052, 36.807312>,  <33.919987, 30.093204, 37.035805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592770, 30.120052, 36.807312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351114, -0.728358, -0.588400,
		-0.455552, -0.681902, 0.572260,
		-0.818041, 0.067118, -0.571231,
		33.347359, 30.140188, 36.635944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022888, 29.519432, 36.534012>,  <33.919987, 30.093204, 37.035805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022888, 29.519432, 36.534012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702503, 29.697184, 36.373516>,  <33.510273, 29.803835, 36.277218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702503, 29.697184, 36.373516>,  <34.022888, 29.519432, 36.534012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702503, 29.697184, 36.373516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230535, -0.389584, -0.891671,
		-0.552557, -0.806691, 0.209596,
		-0.800958, 0.444380, -0.401238,
		33.462215, 29.830498, 36.253143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649120, 29.078102, 36.179050>,  <34.022888, 29.519432, 36.534012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649120, 29.078102, 36.179050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544292, 29.426981, 36.013840>,  <33.481396, 29.636309, 35.914715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544292, 29.426981, 36.013840>,  <33.649120, 29.078102, 36.179050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544292, 29.426981, 36.013840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208473, -0.366713, -0.906675,
		-0.942262, -0.323719, -0.085724,
		-0.262072, 0.872197, -0.413027,
		33.465672, 29.688641, 35.889931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166054, 28.837534, 35.597801>,  <33.649120, 29.078102, 36.179050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166054, 28.837534, 35.597801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314369, 29.203537, 35.534214>,  <33.403358, 29.423140, 35.496059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314369, 29.203537, 35.534214>,  <33.166054, 28.837534, 35.597801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314369, 29.203537, 35.534214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223796, -0.254161, -0.940913,
		-0.901348, 0.313306, -0.299016,
		0.370792, 0.915009, -0.158971,
		33.425606, 29.478039, 35.486523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993904, 28.830814, 34.912067>,  <33.166054, 28.837534, 35.597801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993904, 28.830814, 34.912067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230255, 29.146988, 34.976658>,  <33.372066, 29.336693, 35.015411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230255, 29.146988, 34.976658>,  <32.993904, 28.830814, 34.912067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230255, 29.146988, 34.976658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214066, 0.039374, -0.976025,
		-0.777843, 0.611278, -0.145940,
		0.590877, 0.790436, 0.161481,
		33.407516, 29.384119, 35.025101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733009, 29.441189, 34.501404>,  <32.993904, 28.830814, 34.912067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733009, 29.441189, 34.501404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121532, 29.477730, 34.589237>,  <33.354645, 29.499655, 34.641937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121532, 29.477730, 34.589237>,  <32.733009, 29.441189, 34.501404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121532, 29.477730, 34.589237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195140, 0.221649, -0.955402,
		-0.135949, 0.970838, 0.197463,
		0.971308, 0.091353, 0.219582,
		33.412926, 29.505136, 34.655113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006657, 30.039616, 34.022045>,  <32.733009, 29.441189, 34.501404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006657, 30.039616, 34.022045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311310, 29.818241, 34.156879>,  <33.494102, 29.685417, 34.237782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311310, 29.818241, 34.156879>,  <33.006657, 30.039616, 34.022045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311310, 29.818241, 34.156879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440097, 0.059948, -0.895947,
		0.475640, 0.830733, 0.289223,
		0.761631, -0.553434, 0.337089,
		33.539799, 29.652210, 34.258007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569218, 30.318636, 33.742294>,  <33.006657, 30.039616, 34.022045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569218, 30.318636, 33.742294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715122, 29.957100, 33.831757>,  <33.802666, 29.740179, 33.885433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715122, 29.957100, 33.831757>,  <33.569218, 30.318636, 33.742294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715122, 29.957100, 33.831757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450367, -0.038967, -0.891993,
		0.814934, 0.426093, 0.392846,
		0.364764, -0.903840, 0.223654,
		33.824551, 29.685947, 33.898853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215252, 30.292891, 33.543789>,  <33.569218, 30.318636, 33.742294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215252, 30.292891, 33.543789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137264, 29.900602, 33.538448>,  <34.090473, 29.665230, 33.535244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137264, 29.900602, 33.538448>,  <34.215252, 30.292891, 33.543789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137264, 29.900602, 33.538448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380490, -0.063078, -0.922631,
		0.903999, -0.184967, 0.385452,
		-0.194970, -0.980718, -0.013356,
		34.078773, 29.606386, 33.534443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756798, 29.985128, 33.146587>,  <34.215252, 30.292891, 33.543789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756798, 29.985128, 33.146587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446850, 29.732380, 33.153614>,  <34.260880, 29.580730, 33.157829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446850, 29.732380, 33.153614>,  <34.756798, 29.985128, 33.146587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446850, 29.732380, 33.153614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077121, -0.122087, -0.989519,
		0.627395, -0.765396, 0.143333,
		-0.774873, -0.631873, 0.017569,
		34.214390, 29.542818, 33.158886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908844, 29.418169, 32.673267>,  <34.756798, 29.985128, 33.146587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908844, 29.418169, 32.673267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512405, 29.374727, 32.704098>,  <34.274544, 29.348663, 32.722595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512405, 29.374727, 32.704098>,  <34.908844, 29.418169, 32.673267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512405, 29.374727, 32.704098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059694, -0.155069, -0.986098,
		0.119046, -0.981916, 0.147205,
		-0.991093, -0.108604, 0.077074,
		34.215076, 29.342146, 32.727219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675411, 28.784275, 32.273972>,  <34.908844, 29.418169, 32.673267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675411, 28.784275, 32.273972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342033, 28.999249, 32.325413>,  <34.142006, 29.128233, 32.356277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342033, 28.999249, 32.325413>,  <34.675411, 28.784275, 32.273972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342033, 28.999249, 32.325413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264946, -0.184392, -0.946469,
		-0.484952, -0.822900, 0.296071,
		-0.833442, 0.537434, 0.128603,
		34.091999, 29.160479, 32.363995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250118, 28.419870, 31.928938>,  <34.675411, 28.784275, 32.273972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250118, 28.419870, 31.928938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041779, 28.759031, 31.968489>,  <33.916775, 28.962528, 31.992220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041779, 28.759031, 31.968489>,  <34.250118, 28.419870, 31.928938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041779, 28.759031, 31.968489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368575, -0.118894, -0.921963,
		-0.769980, -0.516647, 0.374442,
		-0.520849, 0.847903, 0.098877,
		33.885525, 29.013403, 31.998152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508568, 28.281610, 31.780306>,  <34.250118, 28.419870, 31.928938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508568, 28.281610, 31.780306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582958, 28.668482, 31.711048>,  <33.627594, 28.900604, 31.669495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582958, 28.668482, 31.711048>,  <33.508568, 28.281610, 31.780306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582958, 28.668482, 31.711048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169446, -0.142006, -0.975255,
		-0.967832, 0.210716, 0.137474,
		0.185980, 0.967178, -0.173143,
		33.638752, 28.958635, 31.659105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006119, 28.445351, 31.375422>,  <33.508568, 28.281610, 31.780306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006119, 28.445351, 31.375422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239956, 28.761190, 31.300825>,  <33.380260, 28.950695, 31.256067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239956, 28.761190, 31.300825>,  <33.006119, 28.445351, 31.375422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239956, 28.761190, 31.300825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101117, -0.157161, -0.982383,
		-0.804999, 0.593155, -0.012034,
		0.584596, 0.789600, -0.186493,
		33.415337, 28.998070, 31.244877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604820, 28.784454, 30.920580>,  <33.006119, 28.445351, 31.375422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604820, 28.784454, 30.920580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992256, 28.874962, 30.879316>,  <33.224716, 28.929266, 30.854559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992256, 28.874962, 30.879316>,  <32.604820, 28.784454, 30.920580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992256, 28.874962, 30.879316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078027, -0.117343, -0.990021,
		-0.236116, 0.966971, -0.096002,
		0.968587, 0.226269, -0.103157,
		33.282833, 28.942842, 30.848370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611713, 29.087954, 30.291563>,  <32.604820, 28.784454, 30.920580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611713, 29.087954, 30.291563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005035, 29.029612, 30.335093>,  <33.241028, 28.994606, 30.361210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005035, 29.029612, 30.335093>,  <32.611713, 29.087954, 30.291563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005035, 29.029612, 30.335093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112088, 0.014329, -0.993595,
		0.143363, 0.989202, 0.030438,
		0.983302, -0.145857, 0.108824,
		33.300026, 28.985855, 30.367741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982101, 29.656527, 29.916315>,  <32.611713, 29.087954, 30.291563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982101, 29.656527, 29.916315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212513, 29.332432, 29.959600>,  <33.350758, 29.137974, 29.985573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212513, 29.332432, 29.959600>,  <32.982101, 29.656527, 29.916315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212513, 29.332432, 29.959600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196008, 0.008384, -0.980566,
		0.793585, 0.586041, 0.163642,
		0.576024, -0.810238, 0.108215,
		33.385319, 29.089361, 29.992065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585468, 29.883974, 29.698463>,  <32.982101, 29.656527, 29.916315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585468, 29.883974, 29.698463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567131, 29.485569, 29.667845>,  <33.556129, 29.246527, 29.649473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567131, 29.485569, 29.667845>,  <33.585468, 29.883974, 29.698463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567131, 29.485569, 29.667845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396084, 0.052224, -0.916728,
		0.917069, -0.072343, 0.392111,
		-0.045841, -0.996012, -0.076547,
		33.553379, 29.186766, 29.644880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127518, 29.744850, 29.298239>,  <33.585468, 29.883974, 29.698463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127518, 29.744850, 29.298239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937912, 29.392881, 29.285299>,  <33.824146, 29.181700, 29.277536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937912, 29.392881, 29.285299>,  <34.127518, 29.744850, 29.298239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937912, 29.392881, 29.285299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297477, -0.125460, -0.946450,
		0.828743, -0.458257, 0.321226,
		-0.474018, -0.879921, -0.032347,
		33.795708, 29.128904, 29.275595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637623, 29.334410, 29.192713>,  <34.127518, 29.744850, 29.298239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637623, 29.334410, 29.192713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302956, 29.159451, 29.060848>,  <34.102158, 29.054476, 28.981730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302956, 29.159451, 29.060848>,  <34.637623, 29.334410, 29.192713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302956, 29.159451, 29.060848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462463, -0.241666, -0.853068,
		0.293462, -0.866188, 0.404474,
		-0.836664, -0.437397, -0.329660,
		34.051956, 29.028231, 28.961950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823978, 28.687420, 28.927214>,  <34.637623, 29.334410, 29.192713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823978, 28.687420, 28.927214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470478, 28.775574, 28.762087>,  <34.258377, 28.828466, 28.663010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470478, 28.775574, 28.762087>,  <34.823978, 28.687420, 28.927214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470478, 28.775574, 28.762087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389795, -0.141448, -0.909974,
		-0.258938, -0.965102, 0.039099,
		-0.883748, 0.220386, -0.412818,
		34.205353, 28.841690, 28.638241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677361, 28.187166, 28.414358>,  <34.823978, 28.687420, 28.927214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677361, 28.187166, 28.414358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444801, 28.492027, 28.300447>,  <34.305267, 28.674944, 28.232101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444801, 28.492027, 28.300447>,  <34.677361, 28.187166, 28.414358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444801, 28.492027, 28.300447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392676, -0.043700, -0.918638,
		-0.712588, -0.645920, -0.273872,
		-0.581398, 0.762153, -0.284777,
		34.270382, 28.720673, 28.215014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443413, 28.030163, 27.682596>,  <34.677361, 28.187166, 28.414358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443413, 28.030163, 27.682596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359955, 28.420813, 27.703283>,  <34.309879, 28.655203, 27.715694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359955, 28.420813, 27.703283>,  <34.443413, 28.030163, 27.682596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359955, 28.420813, 27.703283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219014, 0.098196, -0.970768,
		-0.953153, -0.191219, -0.234382,
		-0.208645, 0.976623, 0.051716,
		34.297363, 28.713800, 27.718798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054855, 28.122166, 27.130705>,  <34.443413, 28.030163, 27.682596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054855, 28.122166, 27.130705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188248, 28.487156, 27.225513>,  <34.268284, 28.706150, 27.282398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188248, 28.487156, 27.225513>,  <34.054855, 28.122166, 27.130705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188248, 28.487156, 27.225513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033063, 0.239939, -0.970225,
		-0.942178, 0.331386, 0.049845,
		0.333479, 0.912476, 0.237022,
		34.288292, 28.760899, 27.296619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790520, 28.562435, 26.719360>,  <34.054855, 28.122166, 27.130705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790520, 28.562435, 26.719360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110931, 28.774195, 26.831137>,  <34.303181, 28.901251, 26.898203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110931, 28.774195, 26.831137>,  <33.790520, 28.562435, 26.719360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110931, 28.774195, 26.831137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085506, 0.360830, -0.928704,
		-0.592484, 0.767814, 0.243769,
		0.801031, 0.529399, 0.279439,
		34.351242, 28.933014, 26.914968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654171, 29.287413, 26.388327>,  <33.790520, 28.562435, 26.719360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654171, 29.287413, 26.388327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041439, 29.214376, 26.456804>,  <34.273800, 29.170555, 26.497890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041439, 29.214376, 26.456804>,  <33.654171, 29.287413, 26.388327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041439, 29.214376, 26.456804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239551, 0.477758, -0.845200,
		0.072538, 0.859307, 0.506291,
		0.968170, -0.182592, 0.171192,
		34.331890, 29.159599, 26.508162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864155, 29.846329, 26.198004>,  <33.654171, 29.287413, 26.388327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864155, 29.846329, 26.198004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198036, 29.626144, 26.191549>,  <34.398365, 29.494034, 26.187677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198036, 29.626144, 26.191549>,  <33.864155, 29.846329, 26.198004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198036, 29.626144, 26.191549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289078, 0.462917, -0.837939,
		0.468721, 0.694768, 0.545525,
		0.834706, -0.550460, -0.016137,
		34.448448, 29.461006, 26.186708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329712, 30.302332, 26.064102>,  <33.864155, 29.846329, 26.198004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329712, 30.302332, 26.064102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485863, 29.956127, 25.938568>,  <34.579556, 29.748405, 25.863247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485863, 29.956127, 25.938568>,  <34.329712, 30.302332, 26.064102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485863, 29.956127, 25.938568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419311, 0.470626, -0.776330,
		0.819622, 0.171470, 0.546642,
		0.390382, -0.865511, -0.313837,
		34.602978, 29.696474, 25.844418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994167, 30.440924, 25.872635>,  <34.329712, 30.302332, 26.064102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994167, 30.440924, 25.872635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941982, 30.103954, 25.663521>,  <34.910671, 29.901773, 25.538052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941982, 30.103954, 25.663521>,  <34.994167, 30.440924, 25.872635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941982, 30.103954, 25.663521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385071, 0.442845, -0.809697,
		0.913619, -0.306945, 0.266618,
		-0.130462, -0.842421, -0.522787,
		34.902843, 29.851229, 25.506685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643291, 30.261290, 25.591631>,  <34.994167, 30.440924, 25.872635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643291, 30.261290, 25.591631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362385, 30.079979, 25.372042>,  <35.193840, 29.971193, 25.240288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362385, 30.079979, 25.372042>,  <35.643291, 30.261290, 25.591631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362385, 30.079979, 25.372042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309214, 0.500376, -0.808709,
		0.641259, -0.737676, -0.211237,
		-0.702263, -0.453274, -0.548971,
		35.151707, 29.943996, 25.207350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967144, 30.202141, 24.976557>,  <35.643291, 30.261290, 25.591631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967144, 30.202141, 24.976557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588226, 30.125515, 24.873844>,  <35.360874, 30.079540, 24.812218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588226, 30.125515, 24.873844>,  <35.967144, 30.202141, 24.976557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588226, 30.125515, 24.873844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168349, 0.384277, -0.907739,
		0.272563, -0.903125, -0.331774,
		-0.947295, -0.191562, -0.256780,
		35.304039, 30.068047, 24.796810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002537, 29.988113, 24.269293>,  <35.967144, 30.202141, 24.976557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002537, 29.988113, 24.269293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616779, 30.084318, 24.313276>,  <35.385323, 30.142040, 24.339666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616779, 30.084318, 24.313276>,  <36.002537, 29.988113, 24.269293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616779, 30.084318, 24.313276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031802, 0.518247, -0.854639,
		-0.262535, -0.820716, -0.507445,
		-0.964398, 0.240511, 0.109958,
		35.327461, 30.156471, 24.346264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667061, 29.781986, 23.616196>,  <36.002537, 29.988113, 24.269293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667061, 29.781986, 23.616196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418739, 30.030485, 23.807467>,  <35.269745, 30.179585, 23.922230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418739, 30.030485, 23.807467>,  <35.667061, 29.781986, 23.616196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418739, 30.030485, 23.807467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036449, 0.586416, -0.809190,
		-0.783118, -0.519777, -0.341405,
		-0.620803, 0.621247, 0.478179,
		35.232498, 30.216860, 23.950920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009823, 29.843317, 23.311337>,  <35.667061, 29.781986, 23.616196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009823, 29.843317, 23.311337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057568, 30.189150, 23.506580>,  <35.086216, 30.396648, 23.623728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057568, 30.189150, 23.506580>,  <35.009823, 29.843317, 23.311337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057568, 30.189150, 23.506580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266199, 0.501494, -0.823191,
		-0.956500, -0.031678, 0.290009,
		0.119361, 0.864581, 0.488111,
		35.093376, 30.448524, 23.653013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480366, 30.265678, 23.491116>,  <35.009823, 29.843317, 23.311337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480366, 30.265678, 23.491116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805557, 30.477413, 23.394066>,  <35.000671, 30.604454, 23.335836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805557, 30.477413, 23.394066>,  <34.480366, 30.265678, 23.491116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805557, 30.477413, 23.394066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426941, 0.258543, -0.866531,
		-0.395957, 0.808059, 0.436186,
		0.812981, 0.529335, -0.242622,
		35.049450, 30.636213, 23.321280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237572, 30.862682, 23.248701>,  <34.480366, 30.265678, 23.491116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237572, 30.862682, 23.248701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602356, 30.834335, 23.087059>,  <34.821228, 30.817327, 22.990074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602356, 30.834335, 23.087059>,  <34.237572, 30.862682, 23.248701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602356, 30.834335, 23.087059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338359, 0.427134, -0.838493,
		0.232028, 0.901407, 0.365552,
		0.911963, -0.070866, -0.404107,
		34.875946, 30.813076, 22.965828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534630, 31.462072, 23.633183>,  <34.237572, 30.862682, 23.248701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534630, 31.462072, 23.633183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625118, 31.825886, 23.493715>,  <34.679413, 32.044174, 23.410034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625118, 31.825886, 23.493715>,  <34.534630, 31.462072, 23.633183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625118, 31.825886, 23.493715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440235, -0.223838, -0.869534,
		-0.868917, 0.350203, 0.349773,
		0.226221, 0.909535, -0.348668,
		34.692986, 32.098747, 23.389114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882530, 31.604141, 23.436075>,  <34.534630, 31.462072, 23.633183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882530, 31.604141, 23.436075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103111, 31.874466, 23.240450>,  <34.235458, 32.036659, 23.123075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103111, 31.874466, 23.240450>,  <33.882530, 31.604141, 23.436075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103111, 31.874466, 23.240450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313219, -0.375629, -0.872237,
		-0.773172, 0.634180, 0.004535,
		0.551451, 0.675810, -0.489063,
		34.268547, 32.077209, 23.093731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457466, 32.028347, 22.955614>,  <33.882530, 31.604141, 23.436075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457466, 32.028347, 22.955614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831398, 31.995176, 22.817499>,  <34.055756, 31.975275, 22.734631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831398, 31.995176, 22.817499>,  <33.457466, 32.028347, 22.955614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831398, 31.995176, 22.817499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351983, -0.087700, -0.931889,
		0.046992, 0.992689, -0.111172,
		0.934826, -0.082922, -0.345289,
		34.111847, 31.970299, 22.713913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578503, 32.660416, 22.606482>,  <33.457466, 32.028347, 22.955614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578503, 32.660416, 22.606482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807747, 32.358227, 22.479477>,  <33.945293, 32.176914, 22.403275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807747, 32.358227, 22.479477>,  <33.578503, 32.660416, 22.606482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807747, 32.358227, 22.479477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268801, 0.192713, -0.943720,
		0.774139, 0.626202, -0.092625,
		0.573110, -0.755468, -0.317510,
		33.979679, 32.131588, 22.384224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032005, 33.036308, 22.310511>,  <33.578503, 32.660416, 22.606482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032005, 33.036308, 22.310511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957851, 32.663246, 22.186714>,  <33.913361, 32.439407, 22.112436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957851, 32.663246, 22.186714>,  <34.032005, 33.036308, 22.310511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957851, 32.663246, 22.186714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128910, 0.335312, -0.933246,
		0.974174, -0.133109, -0.182390,
		-0.185381, -0.932656, -0.309493,
		33.902237, 32.383450, 22.093866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507294, 32.456013, 21.971960>,  <34.032005, 33.036308, 22.310511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507294, 32.456013, 21.971960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433037, 32.273914, 21.623640>,  <34.388481, 32.164654, 21.414648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433037, 32.273914, 21.623640>,  <34.507294, 32.456013, 21.971960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433037, 32.273914, 21.623640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757782, -0.630492, 0.168067,
		-0.625543, -0.628675, 0.462022,
		-0.185642, -0.455245, -0.870798,
		34.377346, 32.137341, 21.362400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104401, 32.783775, 22.386671>,  <34.507294, 32.456013, 21.971960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104401, 32.783775, 22.386671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830074, 32.581692, 22.596210>,  <34.665478, 32.460442, 22.721933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830074, 32.581692, 22.596210>,  <35.104401, 32.783775, 22.386671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830074, 32.581692, 22.596210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353335, 0.398130, 0.846550,
		-0.636245, 0.765673, -0.094536,
		-0.685818, -0.505210, 0.523848,
		34.624329, 32.430130, 22.753365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826576, 33.267891, 22.817909>,  <35.104401, 32.783775, 22.386671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826576, 33.267891, 22.817909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785263, 32.910328, 22.992390>,  <34.760475, 32.695789, 23.097078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785263, 32.910328, 22.992390>,  <34.826576, 33.267891, 22.817909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785263, 32.910328, 22.992390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437085, 0.353143, 0.827192,
		-0.893470, 0.276094, 0.354236,
		-0.103287, -0.893903, 0.436199,
		34.754276, 32.642159, 23.123249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691082, 33.476982, 23.430399>,  <34.826576, 33.267891, 22.817909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691082, 33.476982, 23.430399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824459, 33.101849, 23.468952>,  <34.904484, 32.876770, 23.492085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824459, 33.101849, 23.468952>,  <34.691082, 33.476982, 23.430399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824459, 33.101849, 23.468952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377587, 0.226521, 0.897840,
		-0.863855, -0.262984, 0.429644,
		0.333441, -0.937832, 0.096382,
		34.924492, 32.820499, 23.497868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405106, 33.285904, 24.097914>,  <34.691082, 33.476982, 23.430399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405106, 33.285904, 24.097914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698704, 33.018284, 24.051239>,  <34.874863, 32.857712, 24.023233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698704, 33.018284, 24.051239>,  <34.405106, 33.285904, 24.097914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698704, 33.018284, 24.051239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214886, 0.065800, 0.974420,
		-0.644258, -0.740298, 0.192067,
		0.733999, -0.669050, -0.116688,
		34.918903, 32.817570, 24.016233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306206, 32.854385, 24.670033>,  <34.405106, 33.285904, 24.097914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306206, 32.854385, 24.670033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683895, 32.793480, 24.553236>,  <34.910507, 32.756935, 24.483158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683895, 32.793480, 24.553236>,  <34.306206, 32.854385, 24.670033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683895, 32.793480, 24.553236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275329, -0.121415, 0.953652,
		-0.180663, -0.980853, -0.072719,
		0.944222, -0.152268, -0.291993,
		34.967163, 32.747799, 24.465639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468384, 32.269485, 24.894985>,  <34.306206, 32.854385, 24.670033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468384, 32.269485, 24.894985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825989, 32.442841, 24.849529>,  <35.040550, 32.546852, 24.822256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825989, 32.442841, 24.849529>,  <34.468384, 32.269485, 24.894985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825989, 32.442841, 24.849529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236834, -0.241813, 0.940976,
		0.380328, -0.868159, -0.318825,
		0.894013, 0.433389, -0.113641,
		35.094193, 32.572857, 24.815437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840340, 31.802986, 25.129183>,  <34.468384, 32.269485, 24.894985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840340, 31.802986, 25.129183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064564, 32.134125, 25.137638>,  <35.199097, 32.332809, 25.142712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064564, 32.134125, 25.137638>,  <34.840340, 31.802986, 25.129183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064564, 32.134125, 25.137638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226151, -0.177589, 0.957767,
		0.796638, -0.532102, -0.286766,
		0.560557, 0.827846, 0.021139,
		35.232731, 32.382477, 25.143980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356453, 31.631243, 25.468342>,  <34.840340, 31.802986, 25.129183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356453, 31.631243, 25.468342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344997, 32.029510, 25.503716>,  <35.338123, 32.268471, 25.524940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344997, 32.029510, 25.503716>,  <35.356453, 31.631243, 25.468342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344997, 32.029510, 25.503716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188734, -0.081494, 0.978641,
		0.981610, 0.044721, -0.185582,
		-0.028642, 0.995670, 0.088435,
		35.336403, 32.328213, 25.530247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965008, 31.816896, 25.990784>,  <35.356453, 31.631243, 25.468342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965008, 31.816896, 25.990784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700817, 32.116470, 25.969372>,  <35.542301, 32.296215, 25.956524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700817, 32.116470, 25.969372>,  <35.965008, 31.816896, 25.990784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700817, 32.116470, 25.969372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114663, -0.030148, 0.992947,
		0.742036, 0.661960, 0.105787,
		-0.660480, 0.748933, -0.053531,
		35.502674, 32.341148, 25.953312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204624, 32.239655, 26.420717>,  <35.965008, 31.816896, 25.990784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204624, 32.239655, 26.420717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818775, 32.333958, 26.373512>,  <35.587265, 32.390541, 26.345188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818775, 32.333958, 26.373512>,  <36.204624, 32.239655, 26.420717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818775, 32.333958, 26.373512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126009, -0.019085, 0.991845,
		0.231587, 0.971624, 0.048118,
		-0.964619, 0.235762, -0.118014,
		35.529388, 32.404686, 26.338108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204956, 32.781818, 26.865120>,  <36.204624, 32.239655, 26.420717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204956, 32.781818, 26.865120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829609, 32.656563, 26.806599>,  <35.604401, 32.581409, 26.771486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829609, 32.656563, 26.806599>,  <36.204956, 32.781818, 26.865120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829609, 32.656563, 26.806599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140725, -0.040471, 0.989221,
		-0.315685, 0.948844, -0.006090,
		-0.938370, -0.313140, -0.146302,
		35.548100, 32.562622, 26.762709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757580, 33.300655, 27.193369>,  <36.204956, 32.781818, 26.865120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757580, 33.300655, 27.193369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563816, 32.952888, 27.154448>,  <35.447559, 32.744228, 27.131094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563816, 32.952888, 27.154448>,  <35.757580, 33.300655, 27.193369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563816, 32.952888, 27.154448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185694, -0.006508, 0.982586,
		-0.854907, 0.494041, -0.158293,
		-0.484408, -0.869414, -0.097304,
		35.418495, 32.692062, 27.125256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180603, 33.437618, 27.523930>,  <35.757580, 33.300655, 27.193369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180603, 33.437618, 27.523930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185520, 33.038918, 27.492107>,  <35.188469, 32.799698, 27.473015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185520, 33.038918, 27.492107>,  <35.180603, 33.437618, 27.523930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185520, 33.038918, 27.492107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337996, -0.079019, 0.937824,
		-0.941067, 0.015364, -0.337870,
		0.012289, -0.996755, -0.079555,
		35.189205, 32.739891, 27.468241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536892, 33.210247, 27.725670>,  <35.180603, 33.437618, 27.523930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536892, 33.210247, 27.725670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774738, 32.894451, 27.786505>,  <34.917446, 32.704971, 27.823006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774738, 32.894451, 27.786505>,  <34.536892, 33.210247, 27.725670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774738, 32.894451, 27.786505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343260, -0.078226, 0.935977,
		-0.727051, -0.608753, -0.317516,
		0.594617, -0.789494, 0.152087,
		34.953125, 32.657604, 27.832130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069920, 32.728954, 28.042870>,  <34.536892, 33.210247, 27.725670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069920, 32.728954, 28.042870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448776, 32.637245, 28.132635>,  <34.676090, 32.582218, 28.186495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448776, 32.637245, 28.132635>,  <34.069920, 32.728954, 28.042870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448776, 32.637245, 28.132635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298785, -0.375574, 0.877309,
		-0.116856, -0.897986, -0.424224,
		0.947139, -0.229271, 0.224417,
		34.732918, 32.568462, 28.199961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120129, 32.003395, 28.255787>,  <34.069920, 32.728954, 28.042870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120129, 32.003395, 28.255787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430367, 32.203117, 28.410263>,  <34.616508, 32.322952, 28.502949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430367, 32.203117, 28.410263>,  <34.120129, 32.003395, 28.255787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430367, 32.203117, 28.410263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296438, -0.252036, 0.921196,
		0.557292, -0.828959, -0.047466,
		0.775597, 0.499305, 0.386192,
		34.663044, 32.352909, 28.526121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323341, 31.603109, 28.881346>,  <34.120129, 32.003395, 28.255787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323341, 31.603109, 28.881346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498531, 31.951256, 28.971363>,  <34.603645, 32.160145, 29.025373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498531, 31.951256, 28.971363>,  <34.323341, 31.603109, 28.881346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498531, 31.951256, 28.971363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185484, -0.157455, 0.969950,
		0.879646, -0.466551, 0.092479,
		0.437970, 0.870366, 0.225042,
		34.629921, 32.212364, 29.038876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758881, 31.473289, 29.427094>,  <34.323341, 31.603109, 28.881346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758881, 31.473289, 29.427094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695679, 31.868256, 29.429964>,  <34.657757, 32.105236, 29.431686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695679, 31.868256, 29.429964>,  <34.758881, 31.473289, 29.427094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695679, 31.868256, 29.429964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264072, -0.049254, 0.963244,
		0.951473, 0.150298, 0.268531,
		-0.158000, 0.987413, 0.007174,
		34.648277, 32.164478, 29.432116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131512, 31.686695, 30.016268>,  <34.758881, 31.473289, 29.427094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131512, 31.686695, 30.016268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860840, 31.968491, 29.930658>,  <34.698437, 32.137566, 29.879293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860840, 31.968491, 29.930658>,  <35.131512, 31.686695, 30.016268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860840, 31.968491, 29.930658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439220, -0.152940, 0.885265,
		0.590925, 0.693043, 0.412916,
		-0.676678, 0.704486, -0.214022,
		34.657837, 32.179836, 29.866451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211746, 32.137047, 30.576654>,  <35.131512, 31.686695, 30.016268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211746, 32.137047, 30.576654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849762, 32.232727, 30.435896>,  <34.632572, 32.290134, 30.351440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849762, 32.232727, 30.435896>,  <35.211746, 32.137047, 30.576654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849762, 32.232727, 30.435896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367100, -0.020754, 0.929950,
		0.215145, 0.970747, 0.106593,
		-0.904959, 0.239204, -0.351897,
		34.578274, 32.304489, 30.330326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943893, 32.494884, 31.017590>,  <35.211746, 32.137047, 30.576654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943893, 32.494884, 31.017590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611118, 32.407837, 30.813421>,  <34.411453, 32.355610, 30.690920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611118, 32.407837, 30.813421>,  <34.943893, 32.494884, 31.017590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611118, 32.407837, 30.813421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537063, 0.084596, 0.839290,
		-0.139465, 0.972361, -0.187253,
		-0.831933, -0.217618, -0.510421,
		34.361538, 32.342552, 30.660295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429192, 33.053986, 31.144407>,  <34.943893, 32.494884, 31.017590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429192, 33.053986, 31.144407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195900, 32.761810, 31.002247>,  <34.055923, 32.586506, 30.916950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195900, 32.761810, 31.002247>,  <34.429192, 33.053986, 31.144407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195900, 32.761810, 31.002247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671073, 0.186728, 0.717492,
		-0.457717, 0.656962, -0.599080,
		-0.583229, -0.730434, -0.355400,
		34.020931, 32.542679, 30.895626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832066, 33.273167, 31.033968>,  <34.429192, 33.053986, 31.144407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832066, 33.273167, 31.033968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760033, 32.881329, 31.069681>,  <33.716812, 32.646225, 31.091108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760033, 32.881329, 31.069681>,  <33.832066, 33.273167, 31.033968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760033, 32.881329, 31.069681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667252, 0.188341, 0.720627,
		-0.722736, 0.070195, -0.687551,
		-0.180078, -0.979592, 0.089283,
		33.706009, 32.587452, 31.096466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164307, 33.235413, 31.158297>,  <33.832066, 33.273167, 31.033968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164307, 33.235413, 31.158297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305374, 32.878868, 31.272207>,  <33.390015, 32.664940, 31.340553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305374, 32.878868, 31.272207>,  <33.164307, 33.235413, 31.158297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305374, 32.878868, 31.272207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571446, 0.035836, 0.819857,
		-0.740994, -0.451875, -0.496726,
		0.352673, -0.891361, 0.284777,
		33.411175, 32.611462, 31.357639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575714, 32.861259, 31.378675>,  <33.164307, 33.235413, 31.158297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575714, 32.861259, 31.378675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909290, 32.722576, 31.550409>,  <33.109436, 32.639366, 31.653450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909290, 32.722576, 31.550409>,  <32.575714, 32.861259, 31.378675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909290, 32.722576, 31.550409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467741, -0.031242, 0.883313,
		-0.292841, -0.937452, -0.188225,
		0.833944, -0.346710, 0.429336,
		33.159473, 32.618565, 31.679211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392124, 32.215893, 31.897797>,  <32.575714, 32.861259, 31.378675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392124, 32.215893, 31.897797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749397, 32.355545, 32.011173>,  <32.963760, 32.439335, 32.079201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749397, 32.355545, 32.011173>,  <32.392124, 32.215893, 31.897797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749397, 32.355545, 32.011173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382839, 0.259653, 0.886575,
		0.235935, -0.900382, 0.365578,
		0.893179, 0.349131, 0.283440,
		33.017353, 32.460281, 32.096207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521420, 31.762550, 32.487747>,  <32.392124, 32.215893, 31.897797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521420, 31.762550, 32.487747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741375, 32.096149, 32.505966>,  <32.873348, 32.296310, 32.516899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741375, 32.096149, 32.505966>,  <32.521420, 31.762550, 32.487747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741375, 32.096149, 32.505966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098098, 0.010331, 0.995123,
		0.829459, -0.551672, 0.087494,
		0.549885, 0.833997, 0.045549,
		32.906342, 32.346348, 32.519630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955994, 31.664650, 33.030800>,  <32.521420, 31.762550, 32.487747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955994, 31.664650, 33.030800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002228, 32.059483, 32.986416>,  <33.029968, 32.296383, 32.959785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002228, 32.059483, 32.986416>,  <32.955994, 31.664650, 33.030800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002228, 32.059483, 32.986416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064029, 0.104076, 0.992506,
		0.991231, -0.121827, -0.051172,
		0.115588, 0.987080, -0.110963,
		33.036903, 32.355606, 32.953125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442627, 31.893412, 33.545067>,  <32.955994, 31.664650, 33.030800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442627, 31.893412, 33.545067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313797, 32.257332, 33.440357>,  <33.236500, 32.475685, 33.377529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313797, 32.257332, 33.440357>,  <33.442627, 31.893412, 33.545067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313797, 32.257332, 33.440357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000270, 0.276424, 0.961036,
		0.946713, 0.309600, -0.088784,
		-0.322078, 0.909801, -0.261778,
		33.217175, 32.530273, 33.361824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875500, 32.415947, 33.839024>,  <33.442627, 31.893412, 33.545067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875500, 32.415947, 33.839024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530510, 32.602444, 33.760273>,  <33.323517, 32.714340, 33.713020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530510, 32.602444, 33.760273>,  <33.875500, 32.415947, 33.839024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530510, 32.602444, 33.760273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058531, 0.294513, 0.953853,
		0.502706, 0.834197, -0.226721,
		-0.862474, 0.466238, -0.196880,
		33.271767, 32.742313, 33.701210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915489, 33.090649, 34.163155>,  <33.875500, 32.415947, 33.839024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915489, 33.090649, 34.163155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520523, 33.072803, 34.102467>,  <33.283543, 33.062096, 34.066055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520523, 33.072803, 34.102467>,  <33.915489, 33.090649, 34.163155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520523, 33.072803, 34.102467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157505, 0.363304, 0.918261,
		0.014152, 0.930602, -0.365759,
		-0.987417, -0.044614, -0.151716,
		33.224297, 33.059418, 34.056953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618828, 33.668697, 34.320709>,  <33.915489, 33.090649, 34.163155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618828, 33.668697, 34.320709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286797, 33.447983, 34.352955>,  <33.087578, 33.315556, 34.372303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286797, 33.447983, 34.352955>,  <33.618828, 33.668697, 34.320709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286797, 33.447983, 34.352955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179670, 0.401487, 0.898068,
		-0.527904, 0.730987, -0.432406,
		-0.830082, -0.551784, 0.080610,
		33.037773, 33.282448, 34.377136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096752, 34.105587, 34.564758>,  <33.618828, 33.668697, 34.320709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096752, 34.105587, 34.564758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944714, 33.747318, 34.657101>,  <32.853489, 33.532356, 34.712505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944714, 33.747318, 34.657101>,  <33.096752, 34.105587, 34.564758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944714, 33.747318, 34.657101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277515, 0.348523, 0.895275,
		-0.882334, 0.276224, -0.381035,
		-0.380096, -0.895674, 0.230857,
		32.830685, 33.478615, 34.726357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490147, 34.196098, 34.725929>,  <33.096752, 34.105587, 34.564758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490147, 34.196098, 34.725929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555054, 33.843506, 34.903316>,  <32.593998, 33.631950, 35.009750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555054, 33.843506, 34.903316>,  <32.490147, 34.196098, 34.725929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555054, 33.843506, 34.903316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406666, 0.349740, 0.843982,
		-0.899050, -0.317297, -0.301715,
		0.162271, -0.881479, 0.443467,
		32.603737, 33.579063, 35.036358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114777, 34.276791, 35.351788>,  <32.490147, 34.196098, 34.725929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114777, 34.276791, 35.351788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286175, 33.924198, 35.431168>,  <32.389015, 33.712643, 35.478794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286175, 33.924198, 35.431168>,  <32.114777, 34.276791, 35.351788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286175, 33.924198, 35.431168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196719, 0.123351, 0.972670,
		-0.881868, -0.455825, -0.120548,
		0.428498, -0.881481, 0.198449,
		32.414722, 33.659756, 35.490704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589504, 33.778198, 35.743618>,  <32.114777, 34.276791, 35.351788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589504, 33.778198, 35.743618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962719, 33.664703, 35.832104>,  <32.186649, 33.596607, 35.885193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962719, 33.664703, 35.832104>,  <31.589504, 33.778198, 35.743618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962719, 33.664703, 35.832104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241421, -0.037886, 0.969681,
		-0.266752, -0.958154, -0.103849,
		0.933038, -0.283735, 0.221212,
		32.242630, 33.579582, 35.898468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568195, 33.195160, 36.199944>,  <31.589504, 33.778198, 35.743618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568195, 33.195160, 36.199944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938828, 33.334347, 36.257034>,  <32.161205, 33.417858, 36.291290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938828, 33.334347, 36.257034>,  <31.568195, 33.195160, 36.199944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938828, 33.334347, 36.257034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095734, -0.148791, 0.984224,
		0.363711, -0.925626, -0.104555,
		0.926580, 0.347963, 0.142730,
		32.216801, 33.438736, 36.299854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888020, 32.675350, 36.612377>,  <31.568195, 33.195160, 36.199944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888020, 32.675350, 36.612377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088680, 33.017048, 36.666939>,  <32.209076, 33.222069, 36.699677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088680, 33.017048, 36.666939>,  <31.888020, 32.675350, 36.612377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088680, 33.017048, 36.666939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098673, -0.213151, 0.972024,
		0.859423, -0.474160, -0.191219,
		0.501654, 0.854248, 0.136401,
		32.239178, 33.273323, 36.707859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476189, 32.574684, 37.095413>,  <31.888020, 32.675350, 36.612377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476189, 32.574684, 37.095413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451176, 32.973072, 37.121113>,  <32.436169, 33.212105, 37.136532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451176, 32.973072, 37.121113>,  <32.476189, 32.574684, 37.095413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451176, 32.973072, 37.121113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425174, -0.031655, 0.904558,
		0.902949, 0.083876, -0.421483,
		-0.062529, 0.995973, 0.064244,
		32.432419, 33.271866, 37.140385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126438, 32.776489, 37.388229>,  <32.476189, 32.574684, 37.095413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126438, 32.776489, 37.388229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904240, 33.104458, 37.443581>,  <32.770920, 33.301239, 37.476791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904240, 33.104458, 37.443581>,  <33.126438, 32.776489, 37.388229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904240, 33.104458, 37.443581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266042, 0.017584, 0.963801,
		0.787808, 0.572205, -0.227902,
		-0.555500, 0.819922, 0.138378,
		32.737591, 33.350433, 37.485092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530151, 33.158741, 37.932327>,  <33.126438, 32.776489, 37.388229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530151, 33.158741, 37.932327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156883, 33.302513, 37.932423>,  <32.932922, 33.388775, 37.932480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156883, 33.302513, 37.932423>,  <33.530151, 33.158741, 37.932327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156883, 33.302513, 37.932423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000046, -0.000788, 1.000000,
		0.359429, 0.933172, 0.000752,
		-0.933172, 0.359429, 0.000240,
		32.876930, 33.410343, 37.932495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707676, 33.791580, 37.558170>,  <33.530151, 33.158741, 37.932327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707676, 33.791580, 37.558170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924381, 34.032990, 37.792179>,  <34.054405, 34.177837, 37.932587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924381, 34.032990, 37.792179>,  <33.707676, 33.791580, 37.558170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924381, 34.032990, 37.792179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577691, 0.238218, -0.780721,
		-0.610548, 0.760926, -0.219595,
		0.541759, 0.603526, 0.585024,
		34.086910, 34.214046, 37.967686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692379, 34.475311, 37.162262>,  <33.707676, 33.791580, 37.558170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692379, 34.475311, 37.162262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005650, 34.466900, 37.410839>,  <34.193611, 34.461853, 37.559986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005650, 34.466900, 37.410839>,  <33.692379, 34.475311, 37.162262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005650, 34.466900, 37.410839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594875, 0.316247, -0.738993,
		-0.180986, 0.948444, 0.260190,
		0.783178, -0.021033, 0.621442,
		34.240604, 34.460590, 37.597271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129234, 35.076778, 37.001995>,  <33.692379, 34.475311, 37.162262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129234, 35.076778, 37.001995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370632, 34.828587, 37.202312>,  <34.515472, 34.679672, 37.322502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370632, 34.828587, 37.202312>,  <34.129234, 35.076778, 37.001995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370632, 34.828587, 37.202312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730068, 0.177444, -0.659935,
		0.320614, 0.763883, 0.560080,
		0.603496, -0.620481, 0.500796,
		34.551682, 34.642441, 37.352551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737305, 35.507584, 37.006470>,  <34.129234, 35.076778, 37.001995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737305, 35.507584, 37.006470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839378, 35.129208, 37.086540>,  <34.900623, 34.902180, 37.134583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839378, 35.129208, 37.086540>,  <34.737305, 35.507584, 37.006470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839378, 35.129208, 37.086540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656980, 0.017739, -0.753699,
		0.709406, 0.323844, 0.625994,
		0.255186, -0.945944, 0.200175,
		34.915936, 34.845425, 37.146591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408184, 35.614162, 37.219326>,  <34.737305, 35.507584, 37.006470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408184, 35.614162, 37.219326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351128, 35.241489, 37.085693>,  <35.316895, 35.017883, 37.005512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351128, 35.241489, 37.085693>,  <35.408184, 35.614162, 37.219326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351128, 35.241489, 37.085693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663689, 0.160373, -0.730614,
		0.734282, -0.325946, 0.595474,
		-0.142642, -0.931686, -0.334086,
		35.308334, 34.961983, 36.985466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091057, 35.353951, 36.916565>,  <35.408184, 35.614162, 37.219326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091057, 35.353951, 36.916565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805012, 35.117268, 36.767704>,  <35.633385, 34.975258, 36.678387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805012, 35.117268, 36.767704>,  <36.091057, 35.353951, 36.916565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805012, 35.117268, 36.767704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520978, -0.096204, -0.848131,
		0.466047, -0.800388, 0.377065,
		-0.715110, -0.591712, -0.372149,
		35.590477, 34.939754, 36.656059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469555, 35.004204, 36.480694>,  <36.091057, 35.353951, 36.916565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469555, 35.004204, 36.480694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100140, 34.928284, 36.347393>,  <35.878490, 34.882732, 36.267410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100140, 34.928284, 36.347393>,  <36.469555, 35.004204, 36.480694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100140, 34.928284, 36.347393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371006, -0.222024, -0.901698,
		0.097157, -0.956389, 0.275466,
		-0.923534, -0.189806, -0.333255,
		35.823078, 34.871342, 36.247417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512543, 34.358517, 36.233082>,  <36.469555, 35.004204, 36.480694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512543, 34.358517, 36.233082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187695, 34.523991, 36.068489>,  <35.992786, 34.623276, 35.969734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187695, 34.523991, 36.068489>,  <36.512543, 34.358517, 36.233082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187695, 34.523991, 36.068489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301071, -0.306991, -0.902836,
		-0.499812, -0.857100, 0.124766,
		-0.812123, 0.413685, -0.411486,
		35.944057, 34.648094, 35.945042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317719, 33.874683, 35.757320>,  <36.512543, 34.358517, 36.233082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317719, 33.874683, 35.757320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159241, 34.223240, 35.641594>,  <36.064156, 34.432373, 35.572159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159241, 34.223240, 35.641594>,  <36.317719, 33.874683, 35.757320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159241, 34.223240, 35.641594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249548, -0.201048, -0.947262,
		-0.883604, -0.447499, -0.137800,
		-0.396194, 0.871392, -0.289319,
		36.040382, 34.484657, 35.554798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964924, 33.724236, 35.189945>,  <36.317719, 33.874683, 35.757320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964924, 33.724236, 35.189945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036171, 34.117275, 35.168880>,  <36.078918, 34.353100, 35.156242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036171, 34.117275, 35.168880>,  <35.964924, 33.724236, 35.189945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036171, 34.117275, 35.168880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320253, -0.108493, -0.941099,
		-0.930437, 0.150757, -0.334005,
		0.178115, 0.982599, -0.052665,
		36.089603, 34.412056, 35.153080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738846, 33.790230, 34.602108>,  <35.964924, 33.724236, 35.189945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738846, 33.790230, 34.602108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978127, 34.100300, 34.683350>,  <36.121696, 34.286343, 34.732094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978127, 34.100300, 34.683350>,  <35.738846, 33.790230, 34.602108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978127, 34.100300, 34.683350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379816, -0.051099, -0.923650,
		-0.705615, 0.629673, -0.324992,
		0.598204, 0.775178, 0.203103,
		36.157589, 34.332855, 34.744282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505520, 34.283848, 34.128334>,  <35.738846, 33.790230, 34.602108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505520, 34.283848, 34.128334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877823, 34.396626, 34.221451>,  <36.101204, 34.464291, 34.277321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877823, 34.396626, 34.221451>,  <35.505520, 34.283848, 34.128334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877823, 34.396626, 34.221451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242995, -0.001270, -0.970027,
		-0.273197, 0.959430, -0.069693,
		0.930761, 0.281943, 0.232790,
		36.157051, 34.481209, 34.291286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572327, 34.935612, 33.918381>,  <35.505520, 34.283848, 34.128334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572327, 34.935612, 33.918381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949123, 34.805988, 33.953350>,  <36.175201, 34.728214, 33.974331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949123, 34.805988, 33.953350>,  <35.572327, 34.935612, 33.918381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949123, 34.805988, 33.953350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148491, 0.168774, -0.974405,
		0.301011, 0.930860, 0.207104,
		0.941989, -0.324060, 0.087421,
		36.231720, 34.708771, 33.979576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909538, 35.361076, 33.414814>,  <35.572327, 34.935612, 33.918381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909538, 35.361076, 33.414814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168449, 35.058487, 33.452278>,  <36.323795, 34.876934, 33.474758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168449, 35.058487, 33.452278>,  <35.909538, 35.361076, 33.414814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168449, 35.058487, 33.452278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418724, 0.250194, -0.872968,
		0.636945, 0.604274, 0.478700,
		0.647280, -0.756476, 0.093664,
		36.362633, 34.831543, 33.480377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622990, 35.616226, 33.155552>,  <35.909538, 35.361076, 33.414814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622990, 35.616226, 33.155552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611897, 35.217697, 33.123112>,  <36.605240, 34.978580, 33.103649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611897, 35.217697, 33.123112>,  <36.622990, 35.616226, 33.155552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611897, 35.217697, 33.123112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230707, 0.072559, -0.970314,
		0.972628, -0.045618, 0.227846,
		-0.027731, -0.996320, -0.081097,
		36.603577, 34.918800, 33.098782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223339, 35.485497, 32.763645>,  <36.622990, 35.616226, 33.155552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223339, 35.485497, 32.763645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007332, 35.152851, 32.711784>,  <36.877728, 34.953266, 32.680668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007332, 35.152851, 32.711784>,  <37.223339, 35.485497, 32.763645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007332, 35.152851, 32.711784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211910, 0.014744, -0.977178,
		0.814542, -0.555165, 0.168265,
		-0.540014, -0.831610, -0.129654,
		36.845329, 34.903370, 32.672890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681774, 35.031620, 32.312145>,  <37.223339, 35.485497, 32.763645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681774, 35.031620, 32.312145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315323, 34.871273, 32.313469>,  <37.095451, 34.775066, 32.314262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315323, 34.871273, 32.313469>,  <37.681774, 35.031620, 32.312145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315323, 34.871273, 32.313469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047245, -0.116168, -0.992105,
		0.398089, -0.908740, 0.125364,
		-0.916129, -0.400869, 0.003311,
		37.040485, 34.751011, 32.314461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721249, 34.615448, 31.715849>,  <37.681774, 35.031620, 32.312145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721249, 34.615448, 31.715849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327057, 34.613945, 31.783741>,  <37.090542, 34.613045, 31.824476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327057, 34.613945, 31.783741>,  <37.721249, 34.615448, 31.715849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327057, 34.613945, 31.783741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161036, -0.295872, -0.941556,
		0.053757, -0.955220, 0.290971,
		-0.985483, -0.003759, 0.169731,
		37.031410, 34.612820, 31.834660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405895, 33.922569, 31.693340>,  <37.721249, 34.615448, 31.715849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405895, 33.922569, 31.693340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127914, 34.192253, 31.593355>,  <36.961124, 34.354065, 31.533363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127914, 34.192253, 31.593355>,  <37.405895, 33.922569, 31.693340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127914, 34.192253, 31.593355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029533, -0.374095, -0.926920,
		-0.718450, -0.636782, 0.279889,
		-0.694951, 0.674211, -0.249963,
		36.919430, 34.394516, 31.518366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949844, 33.532520, 31.255697>,  <37.405895, 33.922569, 31.693340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949844, 33.532520, 31.255697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862320, 33.910473, 31.158279>,  <36.809807, 34.137245, 31.099829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862320, 33.910473, 31.158279>,  <36.949844, 33.532520, 31.255697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862320, 33.910473, 31.158279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042036, -0.240235, -0.969804,
		-0.974862, -0.222440, 0.012847,
		-0.218809, 0.944885, -0.243546,
		36.796677, 34.193939, 31.085217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310158, 33.563705, 30.812340>,  <36.949844, 33.532520, 31.255697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310158, 33.563705, 30.812340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569824, 33.863140, 30.758387>,  <36.725624, 34.042801, 30.726015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569824, 33.863140, 30.758387>,  <36.310158, 33.563705, 30.812340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569824, 33.863140, 30.758387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054138, -0.222351, -0.973463,
		-0.758714, 0.624641, -0.184871,
		0.649171, 0.748588, -0.134883,
		36.764576, 34.087715, 30.717922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098808, 33.870800, 30.175413>,  <36.310158, 33.563705, 30.812340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098808, 33.870800, 30.175413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478073, 33.963764, 30.262100>,  <36.705631, 34.019543, 30.314114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478073, 33.963764, 30.262100>,  <36.098808, 33.870800, 30.175413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478073, 33.963764, 30.262100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255733, -0.153239, -0.954525,
		-0.188628, 0.960471, -0.204730,
		0.948167, 0.232406, 0.216719,
		36.762524, 34.033485, 30.327116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234455, 34.370728, 29.609718>,  <36.098808, 33.870800, 30.175413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234455, 34.370728, 29.609718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577221, 34.223656, 29.754223>,  <36.782879, 34.135414, 29.840925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577221, 34.223656, 29.754223>,  <36.234455, 34.370728, 29.609718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577221, 34.223656, 29.754223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256773, -0.303220, -0.917674,
		0.446952, 0.879129, -0.165423,
		0.856914, -0.367680, 0.361262,
		36.834293, 34.113350, 29.862602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753292, 34.552925, 29.192204>,  <36.234455, 34.370728, 29.609718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753292, 34.552925, 29.192204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900803, 34.226475, 29.370167>,  <36.989311, 34.030605, 29.476946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900803, 34.226475, 29.370167>,  <36.753292, 34.552925, 29.192204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900803, 34.226475, 29.370167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141909, -0.423602, -0.894664,
		0.918620, 0.393071, -0.040400,
		0.368780, -0.816123, 0.444910,
		37.011436, 33.981636, 29.503639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494110, 34.355896, 28.863115>,  <36.753292, 34.552925, 29.192204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494110, 34.355896, 28.863115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345318, 34.026089, 29.033669>,  <37.256042, 33.828205, 29.136000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345318, 34.026089, 29.033669>,  <37.494110, 34.355896, 28.863115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345318, 34.026089, 29.033669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124766, -0.499586, -0.857232,
		0.919819, -0.265672, 0.288707,
		-0.371977, -0.824519, 0.426382,
		37.233727, 33.778732, 29.161583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917358, 33.840523, 28.704086>,  <37.494110, 34.355896, 28.863115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917358, 33.840523, 28.704086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579025, 33.651413, 28.802917>,  <37.376026, 33.537949, 28.862215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579025, 33.651413, 28.802917>,  <37.917358, 33.840523, 28.704086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579025, 33.651413, 28.802917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195163, -0.705322, -0.681492,
		0.496459, -0.528211, 0.688855,
		-0.845836, -0.472772, 0.247076,
		37.325275, 33.509583, 28.877041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205387, 33.210232, 28.866095>,  <37.917358, 33.840523, 28.704086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205387, 33.210232, 28.866095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810505, 33.146694, 28.860571>,  <37.573574, 33.108574, 28.857256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810505, 33.146694, 28.860571>,  <38.205387, 33.210232, 28.866095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810505, 33.146694, 28.860571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118564, -0.673443, -0.729669,
		0.106603, -0.721972, 0.683661,
		-0.987207, -0.158843, -0.013809,
		37.514343, 33.099041, 28.856428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982334, 32.515503, 28.954458>,  <38.205387, 33.210232, 28.866095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982334, 32.515503, 28.954458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696064, 32.681969, 28.730097>,  <37.524300, 32.781849, 28.595480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696064, 32.681969, 28.730097>,  <37.982334, 32.515503, 28.954458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696064, 32.681969, 28.730097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158858, -0.685045, -0.710969,
		-0.680122, -0.597930, 0.424163,
		-0.715681, 0.416164, -0.560901,
		37.481361, 32.806820, 28.561827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718464, 31.953146, 28.677879>,  <37.982334, 32.515503, 28.954458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718464, 31.953146, 28.677879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580685, 32.251926, 28.450401>,  <37.498016, 32.431194, 28.313915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580685, 32.251926, 28.450401>,  <37.718464, 31.953146, 28.677879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580685, 32.251926, 28.450401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195598, -0.535372, -0.821656,
		-0.918202, -0.394255, 0.038307,
		-0.344451, 0.746953, -0.568695,
		37.477348, 32.476013, 28.279793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241116, 31.633648, 28.348673>,  <37.718464, 31.953146, 28.677879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241116, 31.633648, 28.348673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328018, 31.958984, 28.132792>,  <37.380161, 32.154186, 28.003263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328018, 31.958984, 28.132792>,  <37.241116, 31.633648, 28.348673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328018, 31.958984, 28.132792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132557, -0.572370, -0.809210,
		-0.967072, 0.104266, -0.232166,
		0.217258, 0.813340, -0.539702,
		37.393196, 32.202988, 27.970881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899311, 31.556005, 27.741280>,  <37.241116, 31.633648, 28.348673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899311, 31.556005, 27.741280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193176, 31.809605, 27.644678>,  <37.369495, 31.961763, 27.586718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193176, 31.809605, 27.644678>,  <36.899311, 31.556005, 27.741280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193176, 31.809605, 27.644678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222409, -0.561363, -0.797124,
		-0.640944, 0.531902, -0.553417,
		0.734660, 0.633997, -0.241502,
		37.413574, 31.999804, 27.572227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760166, 31.607655, 27.051640>,  <36.899311, 31.556005, 27.741280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760166, 31.607655, 27.051640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145363, 31.706280, 27.095194>,  <37.376480, 31.765455, 27.121326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145363, 31.706280, 27.095194>,  <36.760166, 31.607655, 27.051640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145363, 31.706280, 27.095194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219679, -0.483901, -0.847102,
		-0.156172, 0.839671, -0.520156,
		0.962991, 0.246561, 0.108887,
		37.434261, 31.780249, 27.127859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917747, 31.744728, 26.368666>,  <36.760166, 31.607655, 27.051640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917747, 31.744728, 26.368666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280838, 31.734680, 26.536190>,  <37.498692, 31.728651, 26.636705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280838, 31.734680, 26.536190>,  <36.917747, 31.744728, 26.368666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280838, 31.734680, 26.536190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370587, -0.420028, -0.828397,
		0.196720, 0.907164, -0.371961,
		0.907726, -0.025119, 0.418811,
		37.553154, 31.727144, 26.661833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342155, 32.091911, 25.881592>,  <36.917747, 31.744728, 26.368666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342155, 32.091911, 25.881592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585838, 31.867495, 26.105770>,  <37.732048, 31.732845, 26.240276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585838, 31.867495, 26.105770>,  <37.342155, 32.091911, 25.881592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585838, 31.867495, 26.105770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444645, -0.343519, -0.827216,
		0.656622, 0.753148, 0.040187,
		0.609211, -0.561037, 0.560445,
		37.768600, 31.699183, 26.273903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923492, 32.150501, 25.551811>,  <37.342155, 32.091911, 25.881592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923492, 32.150501, 25.551811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976719, 31.823416, 25.775826>,  <38.008656, 31.627165, 25.910234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976719, 31.823416, 25.775826>,  <37.923492, 32.150501, 25.551811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976719, 31.823416, 25.775826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391783, -0.475638, -0.787575,
		0.910384, 0.324211, 0.257074,
		0.133066, -0.817713, 0.560034,
		38.016640, 31.578102, 25.943836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529579, 32.007423, 25.367342>,  <37.923492, 32.150501, 25.551811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529579, 32.007423, 25.367342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378384, 31.679705, 25.539797>,  <38.287666, 31.483074, 25.643270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378384, 31.679705, 25.539797>,  <38.529579, 32.007423, 25.367342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378384, 31.679705, 25.539797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537431, -0.573371, -0.618396,
		0.753850, -0.002041, 0.657043,
		-0.377992, -0.819293, 0.431139,
		38.264988, 31.433916, 25.669138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116589, 31.565409, 25.438787>,  <38.529579, 32.007423, 25.367342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116589, 31.565409, 25.438787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817406, 31.302158, 25.473278>,  <38.637897, 31.144209, 25.493973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817406, 31.302158, 25.473278>,  <39.116589, 31.565409, 25.438787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817406, 31.302158, 25.473278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521589, -0.663122, -0.536857,
		0.410498, -0.356570, 0.839256,
		-0.747955, -0.658124, 0.086227,
		38.593018, 31.104721, 25.499146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431465, 30.927649, 25.674753>,  <39.116589, 31.565409, 25.438787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431465, 30.927649, 25.674753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084679, 30.843967, 25.493818>,  <38.876606, 30.793758, 25.385258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084679, 30.843967, 25.493818>,  <39.431465, 30.927649, 25.674753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084679, 30.843967, 25.493818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437803, -0.753363, -0.490686,
		-0.238121, -0.623442, 0.744727,
		-0.866964, -0.209201, -0.452336,
		38.824589, 30.781206, 25.358118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068569, 31.221203, 25.287611>,  <39.431465, 30.927649, 25.674753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068569, 31.221203, 25.287611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448105, 31.131119, 25.376146>,  <40.675827, 31.077068, 25.429268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448105, 31.131119, 25.376146>,  <40.068569, 31.221203, 25.287611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448105, 31.131119, 25.376146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269070, -0.209794, 0.939993,
		-0.165253, -0.951457, -0.259656,
		0.948838, -0.225203, 0.221339,
		40.732758, 31.063557, 25.442547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115299, 30.689993, 25.708500>,  <40.068569, 31.221203, 25.287611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115299, 30.689993, 25.708500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506096, 30.749496, 25.769644>,  <40.740574, 30.785198, 25.806330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506096, 30.749496, 25.769644>,  <40.115299, 30.689993, 25.708500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506096, 30.749496, 25.769644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130944, -0.147391, 0.980372,
		0.168371, -0.977827, -0.124520,
		0.976988, 0.148761, 0.152857,
		40.799191, 30.794125, 25.815500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353661, 30.128597, 26.093607>,  <40.115299, 30.689993, 25.708500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353661, 30.128597, 26.093607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644581, 30.398067, 26.146048>,  <40.819134, 30.559750, 26.177511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644581, 30.398067, 26.146048>,  <40.353661, 30.128597, 26.093607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644581, 30.398067, 26.146048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119947, -0.063310, 0.990759,
		0.675752, -0.736309, 0.034760,
		0.727304, 0.673677, 0.131100,
		40.862774, 30.600170, 26.185377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841747, 29.865217, 26.624783>,  <40.353661, 30.128597, 26.093607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841747, 29.865217, 26.624783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905163, 30.260054, 26.615664>,  <40.943211, 30.496956, 26.610193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905163, 30.260054, 26.615664>,  <40.841747, 29.865217, 26.624783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905163, 30.260054, 26.615664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018320, 0.020143, 0.999629,
		0.987183, -0.158898, -0.014890,
		0.158539, 0.987090, -0.022796,
		40.952724, 30.556181, 26.608824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426289, 30.004175, 27.094013>,  <40.841747, 29.865217, 26.624783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426289, 30.004175, 27.094013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210968, 30.340977, 27.079784>,  <41.081776, 30.543058, 27.071247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210968, 30.340977, 27.079784>,  <41.426289, 30.004175, 27.094013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210968, 30.340977, 27.079784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089875, -0.015386, 0.995834,
		0.837948, 0.539252, 0.083958,
		-0.538298, 0.842003, -0.035573,
		41.049480, 30.593578, 27.069113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703518, 30.439354, 27.694859>,  <41.426289, 30.004175, 27.094013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703518, 30.439354, 27.694859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334267, 30.557936, 27.596920>,  <41.112717, 30.629086, 27.538157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334267, 30.557936, 27.596920>,  <41.703518, 30.439354, 27.694859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334267, 30.557936, 27.596920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189261, 0.203958, 0.960511,
		0.334687, 0.933014, -0.132172,
		-0.923128, 0.296455, -0.244845,
		41.057327, 30.646872, 27.523466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690514, 31.059502, 28.032991>,  <41.703518, 30.439354, 27.694859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690514, 31.059502, 28.032991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312931, 30.993734, 27.918512>,  <41.086380, 30.954273, 27.849825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312931, 30.993734, 27.918512>,  <41.690514, 31.059502, 28.032991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312931, 30.993734, 27.918512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315605, 0.195777, 0.928474,
		-0.096628, 0.966767, -0.236697,
		-0.943958, -0.164420, -0.286199,
		41.029743, 30.944408, 27.832653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315838, 31.612833, 28.323240>,  <41.690514, 31.059502, 28.032991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315838, 31.612833, 28.323240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005054, 31.381824, 28.223000>,  <40.818584, 31.243219, 28.162855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005054, 31.381824, 28.223000>,  <41.315838, 31.612833, 28.323240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005054, 31.381824, 28.223000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519847, 0.364025, 0.772816,
		-0.355091, 0.730723, -0.583056,
		-0.776962, -0.577520, -0.250602,
		40.771965, 31.208569, 28.147820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831615, 32.059914, 28.169336>,  <41.315838, 31.612833, 28.323240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831615, 32.059914, 28.169336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675186, 31.710165, 28.284254>,  <40.581329, 31.500317, 28.353205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675186, 31.710165, 28.284254>,  <40.831615, 32.059914, 28.169336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675186, 31.710165, 28.284254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493521, 0.462704, 0.736438,
		-0.776852, 0.146215, -0.612472,
		-0.391072, -0.874372, 0.287293,
		40.557865, 31.447853, 28.370441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123234, 32.130756, 28.333889>,  <40.831615, 32.059914, 28.169336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123234, 32.130756, 28.333889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213425, 31.786039, 28.515648>,  <40.267540, 31.579210, 28.624704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213425, 31.786039, 28.515648>,  <40.123234, 32.130756, 28.333889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213425, 31.786039, 28.515648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577264, 0.257540, 0.774881,
		-0.784811, -0.437024, -0.439411,
		0.225475, -0.861791, 0.454398,
		40.281067, 31.527502, 28.651968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485947, 31.826363, 28.751513>,  <40.123234, 32.130756, 28.333889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485947, 31.826363, 28.751513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812317, 31.662439, 28.914642>,  <40.008141, 31.564085, 29.012520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812317, 31.662439, 28.914642>,  <39.485947, 31.826363, 28.751513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812317, 31.662439, 28.914642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301489, 0.300305, 0.904943,
		-0.493325, -0.861321, 0.121474,
		0.815926, -0.409808, 0.407827,
		40.057095, 31.539497, 29.036991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275639, 31.386349, 29.351669>,  <39.485947, 31.826363, 28.751513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275639, 31.386349, 29.351669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661972, 31.486134, 29.379747>,  <39.893772, 31.546005, 29.396593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661972, 31.486134, 29.379747>,  <39.275639, 31.386349, 29.351669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661972, 31.486134, 29.379747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161840, 0.369072, 0.915201,
		0.202401, -0.895296, 0.396837,
		0.965837, 0.249462, 0.070194,
		39.951725, 31.560972, 29.400806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554020, 31.153931, 29.955940>,  <39.275639, 31.386349, 29.351669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554020, 31.153931, 29.955940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789391, 31.462643, 29.859514>,  <39.930611, 31.647871, 29.801659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789391, 31.462643, 29.859514>,  <39.554020, 31.153931, 29.955940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789391, 31.462643, 29.859514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142010, 0.392158, 0.908871,
		0.795985, -0.500566, 0.340355,
		0.588423, 0.771781, -0.241066,
		39.965916, 31.694178, 29.787195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014828, 31.279495, 30.546579>,  <39.554020, 31.153931, 29.955940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014828, 31.279495, 30.546579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999699, 31.620310, 30.337732>,  <39.990620, 31.824799, 30.212425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999699, 31.620310, 30.337732>,  <40.014828, 31.279495, 30.546579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999699, 31.620310, 30.337732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064621, 0.519311, 0.852139,
		0.997193, 0.065970, 0.035418,
		-0.037823, 0.852035, -0.522116,
		39.988350, 31.875921, 30.181097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476433, 31.817795, 30.862904>,  <40.014828, 31.279495, 30.546579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476433, 31.817795, 30.862904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236317, 32.045582, 30.638275>,  <40.092247, 32.182255, 30.503498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236317, 32.045582, 30.638275>,  <40.476433, 31.817795, 30.862904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236317, 32.045582, 30.638275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096195, 0.645647, 0.757553,
		0.793979, 0.508768, -0.332793,
		-0.600286, 0.569468, -0.561572,
		40.056232, 32.216423, 30.469803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754444, 32.461586, 30.877586>,  <40.476433, 31.817795, 30.862904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754444, 32.461586, 30.877586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370449, 32.516720, 30.780075>,  <40.140053, 32.549801, 30.721569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370449, 32.516720, 30.780075>,  <40.754444, 32.461586, 30.877586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370449, 32.516720, 30.780075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093396, 0.663074, 0.742705,
		0.264012, 0.735754, -0.623669,
		-0.959987, 0.137835, -0.243776,
		40.082455, 32.558071, 30.706942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622498, 33.105511, 31.010216>,  <40.754444, 32.461586, 30.877586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622498, 33.105511, 31.010216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238304, 33.006012, 30.960264>,  <40.007786, 32.946312, 30.930292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238304, 33.006012, 30.960264>,  <40.622498, 33.105511, 31.010216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238304, 33.006012, 30.960264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225212, 0.430914, 0.873838,
		-0.163548, 0.867433, -0.469907,
		-0.960485, -0.248743, -0.124881,
		39.950157, 32.931389, 30.922800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293175, 33.703732, 31.218336>,  <40.622498, 33.105511, 31.010216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293175, 33.703732, 31.218336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059982, 33.382996, 31.270782>,  <39.920067, 33.190556, 31.302250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059982, 33.382996, 31.270782>,  <40.293175, 33.703732, 31.218336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059982, 33.382996, 31.270782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421446, 0.436403, 0.794944,
		-0.694637, 0.408175, -0.592345,
		-0.582977, -0.801839, 0.131118,
		39.885090, 33.142445, 31.310118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585922, 33.960739, 31.340729>,  <40.293175, 33.703732, 31.218336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585922, 33.960739, 31.340729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594639, 33.584400, 31.475985>,  <39.599869, 33.358597, 31.557138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594639, 33.584400, 31.475985>,  <39.585922, 33.960739, 31.340729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594639, 33.584400, 31.475985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501531, 0.282296, 0.817787,
		-0.864865, -0.187410, -0.465710,
		0.021793, -0.940843, 0.338140,
		39.601177, 33.302147, 31.577427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956062, 33.829773, 31.600052>,  <39.585922, 33.960739, 31.340729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956062, 33.829773, 31.600052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209637, 33.582512, 31.785959>,  <39.361782, 33.434155, 31.897503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209637, 33.582512, 31.785959>,  <38.956062, 33.829773, 31.600052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209637, 33.582512, 31.785959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393597, 0.259434, 0.881916,
		-0.665735, -0.742011, -0.078838,
		0.633938, -0.618153, 0.464768,
		39.399818, 33.397064, 31.925390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551994, 33.359688, 31.933380>,  <38.956062, 33.829773, 31.600052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551994, 33.359688, 31.933380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915390, 33.389523, 32.097862>,  <39.133427, 33.407425, 32.196552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915390, 33.389523, 32.097862>,  <38.551994, 33.359688, 31.933380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915390, 33.389523, 32.097862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417717, 0.131848, 0.898960,
		0.012832, -0.988460, 0.150938,
		0.908487, 0.074585, 0.411205,
		39.187935, 33.411900, 32.221222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323990, 33.420635, 32.523300>,  <38.551994, 33.359688, 31.933380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323990, 33.420635, 32.523300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714478, 33.416870, 32.609936>,  <38.948769, 33.414612, 32.661919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714478, 33.416870, 32.609936>,  <38.323990, 33.420635, 32.523300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714478, 33.416870, 32.609936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212861, 0.147833, 0.965834,
		-0.041108, -0.988968, 0.142314,
		0.976217, -0.009410, 0.216590,
		39.007343, 33.414047, 32.674911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407669, 32.984169, 33.155392>,  <38.323990, 33.420635, 32.523300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407669, 32.984169, 33.155392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713348, 33.241283, 33.134148>,  <38.896755, 33.395554, 33.121403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713348, 33.241283, 33.134148>,  <38.407669, 32.984169, 33.155392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713348, 33.241283, 33.134148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124083, 0.227325, 0.965881,
		0.632932, -0.731536, 0.253481,
		0.764200, 0.642790, -0.053110,
		38.942608, 33.434120, 33.118214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784981, 32.759071, 33.720978>,  <38.407669, 32.984169, 33.155392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784981, 32.759071, 33.720978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884529, 33.138268, 33.641594>,  <38.944260, 33.365784, 33.593964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884529, 33.138268, 33.641594>,  <38.784981, 32.759071, 33.720978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884529, 33.138268, 33.641594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090492, 0.181247, 0.979265,
		0.964299, -0.261672, -0.040678,
		0.248874, 0.947986, -0.198456,
		38.959190, 33.422665, 33.582058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159641, 32.980206, 34.256573>,  <38.784981, 32.759071, 33.720978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159641, 32.980206, 34.256573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107441, 33.354195, 34.124638>,  <39.076122, 33.578587, 34.045475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107441, 33.354195, 34.124638>,  <39.159641, 32.980206, 34.256573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107441, 33.354195, 34.124638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087899, 0.342286, 0.935475,
		0.987544, 0.093085, -0.126851,
		-0.130498, 0.934974, -0.329841,
		39.068291, 33.634686, 34.025684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814659, 33.477154, 34.289532>,  <39.159641, 32.980206, 34.256573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814659, 33.477154, 34.289532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480659, 33.696442, 34.308449>,  <39.280258, 33.828014, 34.319801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480659, 33.696442, 34.308449>,  <39.814659, 33.477154, 34.289532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480659, 33.696442, 34.308449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294324, 0.372356, 0.880184,
		0.464922, 0.748872, -0.472270,
		-0.834998, 0.548217, 0.047294,
		39.230160, 33.860909, 34.322636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027866, 34.065647, 34.567562>,  <39.814659, 33.477154, 34.289532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027866, 34.065647, 34.567562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635731, 34.140121, 34.593712>,  <39.400452, 34.184807, 34.609402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635731, 34.140121, 34.593712>,  <40.027866, 34.065647, 34.567562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635731, 34.140121, 34.593712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160262, 0.557916, 0.814276,
		0.115134, 0.808742, -0.576784,
		-0.980337, 0.186187, 0.065375,
		39.341629, 34.195976, 34.613323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891846, 34.772263, 34.802322>,  <40.027866, 34.065647, 34.567562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891846, 34.772263, 34.802322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548954, 34.578350, 34.871769>,  <39.343220, 34.462002, 34.913437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548954, 34.578350, 34.871769>,  <39.891846, 34.772263, 34.802322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548954, 34.578350, 34.871769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021628, 0.370767, 0.928474,
		-0.514475, 0.792163, -0.328319,
		-0.857233, -0.484778, 0.173617,
		39.291782, 34.432919, 34.923855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338116, 35.331875, 35.025501>,  <39.891846, 34.772263, 34.802322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338116, 35.331875, 35.025501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214420, 34.978874, 35.167244>,  <39.140205, 34.767075, 35.252289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214420, 34.978874, 35.167244>,  <39.338116, 35.331875, 35.025501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214420, 34.978874, 35.167244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027929, 0.364032, 0.930968,
		-0.950575, 0.297784, -0.087924,
		-0.309235, -0.882499, 0.354357,
		39.121651, 34.714123, 35.273552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759495, 35.446651, 35.479813>,  <39.338116, 35.331875, 35.025501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759495, 35.446651, 35.479813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896496, 35.081127, 35.567127>,  <38.978695, 34.861813, 35.619514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896496, 35.081127, 35.567127>,  <38.759495, 35.446651, 35.479813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896496, 35.081127, 35.567127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160741, 0.171918, 0.971909,
		-0.925664, -0.367969, -0.088004,
		0.342503, -0.913807, 0.218286,
		38.999249, 34.806984, 35.632614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566887, 35.488567, 36.094723>,  <38.759495, 35.446651, 35.479813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566887, 35.488567, 36.094723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809593, 35.170738, 36.085846>,  <38.955215, 34.980042, 36.080521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809593, 35.170738, 36.085846>,  <38.566887, 35.488567, 36.094723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809593, 35.170738, 36.085846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020944, -0.043885, 0.998817,
		-0.794606, -0.605582, -0.043269,
		0.606764, -0.794572, -0.022188,
		38.991623, 34.932365, 36.079189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270962, 34.923458, 36.475906>,  <38.566887, 35.488567, 36.094723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270962, 34.923458, 36.475906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659828, 34.829769, 36.473839>,  <38.893150, 34.773556, 36.472599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659828, 34.829769, 36.473839>,  <38.270962, 34.923458, 36.475906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659828, 34.829769, 36.473839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012616, -0.074389, 0.997150,
		-0.233939, -0.969333, -0.075274,
		0.972170, -0.234222, -0.005173,
		38.951481, 34.759502, 36.472286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349918, 34.310894, 36.925537>,  <38.270962, 34.923458, 36.475906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349918, 34.310894, 36.925537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717934, 34.467247, 36.914608>,  <38.938744, 34.561058, 36.908051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717934, 34.467247, 36.914608>,  <38.349918, 34.310894, 36.925537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717934, 34.467247, 36.914608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148771, -0.283950, 0.947227,
		0.362497, -0.875547, -0.319396,
		0.920034, 0.390884, -0.027325,
		38.993942, 34.584511, 36.906410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839104, 33.737995, 37.255539>,  <38.349918, 34.310894, 36.925537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839104, 33.737995, 37.255539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030445, 34.088943, 37.270470>,  <39.145252, 34.299515, 37.279427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030445, 34.088943, 37.270470>,  <38.839104, 33.737995, 37.255539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030445, 34.088943, 37.270470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161008, -0.129407, 0.978433,
		0.863280, -0.462029, -0.203166,
		0.478356, 0.877373, 0.037324,
		39.173950, 34.352154, 37.281666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520466, 33.566776, 37.606667>,  <38.839104, 33.737995, 37.255539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520466, 33.566776, 37.606667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465923, 33.959087, 37.662510>,  <39.433197, 34.194473, 37.696014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465923, 33.959087, 37.662510>,  <39.520466, 33.566776, 37.606667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465923, 33.959087, 37.662510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178346, -0.114317, 0.977305,
		0.974474, 0.158158, -0.159329,
		-0.136354, 0.980774, 0.139606,
		39.425018, 34.253319, 37.704391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107597, 33.711636, 37.982037>,  <39.520466, 33.566776, 37.606667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107597, 33.711636, 37.982037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858410, 34.014778, 38.059563>,  <39.708897, 34.196663, 38.106079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858410, 34.014778, 38.059563>,  <40.107597, 33.711636, 37.982037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858410, 34.014778, 38.059563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183264, -0.099469, 0.978019,
		0.760476, 0.644794, -0.076922,
		-0.622969, 0.757857, 0.193811,
		39.671520, 34.242134, 38.117706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362354, 33.997864, 38.606304>,  <40.107597, 33.711636, 37.982037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362354, 33.997864, 38.606304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001793, 34.171055, 38.605240>,  <39.785458, 34.274967, 38.604603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001793, 34.171055, 38.605240>,  <40.362354, 33.997864, 38.606304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001793, 34.171055, 38.605240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036458, 0.082014, 0.995964,
		0.431446, 0.897667, -0.089713,
		-0.901402, 0.432976, -0.002657,
		39.731373, 34.300949, 38.604443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391911, 34.572338, 39.105267>,  <40.362354, 33.997864, 38.606304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391911, 34.572338, 39.105267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005054, 34.480019, 39.062626>,  <39.772942, 34.424629, 39.037041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005054, 34.480019, 39.062626>,  <40.391911, 34.572338, 39.105267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005054, 34.480019, 39.062626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118216, 0.037041, 0.992297,
		-0.225070, 0.972297, -0.063108,
		-0.967144, -0.230796, -0.106605,
		39.714912, 34.410778, 39.030643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002472, 35.198448, 39.477489>,  <40.391911, 34.572338, 39.105267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002472, 35.198448, 39.477489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791851, 34.858692, 39.491753>,  <39.665478, 34.654839, 39.500313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791851, 34.858692, 39.491753>,  <40.002472, 35.198448, 39.477489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791851, 34.858692, 39.491753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015694, 0.032228, 0.999357,
		-0.849996, 0.526777, -0.003640,
		-0.526555, -0.849392, 0.035661,
		39.633884, 34.603874, 39.502449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484070, 35.258511, 40.032883>,  <40.002472, 35.198448, 39.477489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484070, 35.258511, 40.032883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483757, 34.862652, 39.975471>,  <39.483570, 34.625137, 39.941025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483757, 34.862652, 39.975471>,  <39.484070, 35.258511, 40.032883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483757, 34.862652, 39.975471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043806, -0.143355, 0.988701,
		-0.999040, 0.007057, -0.043241,
		-0.000779, -0.989646, -0.143526,
		39.483524, 34.565758, 39.932415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863438, 34.950642, 40.428619>,  <39.484070, 35.258511, 40.032883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863438, 34.950642, 40.428619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129471, 34.655830, 40.380524>,  <39.289089, 34.478943, 40.351665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129471, 34.655830, 40.380524>,  <38.863438, 34.950642, 40.428619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129471, 34.655830, 40.380524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017214, -0.176095, 0.984223,
		-0.746571, -0.652520, -0.129805,
		0.665083, -0.737026, -0.120235,
		39.328995, 34.434723, 40.344452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615509, 34.502445, 40.873615>,  <38.863438, 34.950642, 40.428619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615509, 34.502445, 40.873615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965744, 34.333813, 40.779285>,  <39.175884, 34.232632, 40.722687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965744, 34.333813, 40.779285>,  <38.615509, 34.502445, 40.873615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965744, 34.333813, 40.779285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088795, -0.339406, 0.936440,
		-0.474829, -0.840875, -0.259745,
		0.875587, -0.421584, -0.235825,
		39.228420, 34.207336, 40.708538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631172, 33.735374, 41.026001>,  <38.615509, 34.502445, 40.873615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631172, 33.735374, 41.026001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998447, 33.889442, 41.063026>,  <39.218815, 33.981884, 41.085239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998447, 33.889442, 41.063026>,  <38.631172, 33.735374, 41.026001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998447, 33.889442, 41.063026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038577, -0.319486, 0.946806,
		0.394256, -0.865777, -0.308208,
		0.918191, 0.385174, 0.092560,
		39.273903, 34.004993, 41.090794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878361, 33.393303, 41.611900>,  <38.631172, 33.735374, 41.026001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878361, 33.393303, 41.611900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173363, 33.660156, 41.569889>,  <39.350365, 33.820267, 41.544682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173363, 33.660156, 41.569889>,  <38.878361, 33.393303, 41.611900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173363, 33.660156, 41.569889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212518, -0.081636, 0.973741,
		0.641038, -0.740455, -0.201984,
		0.737500, 0.667130, -0.105028,
		39.394611, 33.860294, 41.538380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431793, 33.203251, 42.038822>,  <38.878361, 33.393303, 41.611900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431793, 33.203251, 42.038822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426899, 33.598083, 41.974918>,  <39.423962, 33.834984, 41.936577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426899, 33.598083, 41.974918>,  <39.431793, 33.203251, 42.038822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426899, 33.598083, 41.974918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195884, 0.159047, 0.967643,
		0.980551, -0.019453, -0.195300,
		-0.012238, 0.987079, -0.159764,
		39.423229, 33.894207, 41.926991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814968, 33.358879, 42.517994>,  <39.431793, 33.203251, 42.038822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814968, 33.358879, 42.517994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672218, 33.715862, 42.407612>,  <39.586567, 33.930054, 42.341381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672218, 33.715862, 42.407612>,  <39.814968, 33.358879, 42.517994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672218, 33.715862, 42.407612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052870, 0.314233, 0.947873,
		0.932655, 0.323681, -0.159326,
		-0.356874, 0.892462, -0.275958,
		39.565155, 33.983601, 42.324825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319843, 33.887821, 42.680111>,  <39.814968, 33.358879, 42.517994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319843, 33.887821, 42.680111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958073, 34.058441, 42.676834>,  <39.741009, 34.160812, 42.674870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958073, 34.058441, 42.676834>,  <40.319843, 33.887821, 42.680111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958073, 34.058441, 42.676834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140545, 0.316012, 0.938287,
		0.402817, 0.847460, -0.345759,
		-0.904426, 0.426553, -0.008189,
		39.686745, 34.186405, 42.674377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354336, 34.563110, 43.010742>,  <40.319843, 33.887821, 42.680111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354336, 34.563110, 43.010742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967335, 34.464153, 43.031639>,  <39.735134, 34.404778, 43.044178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967335, 34.464153, 43.031639>,  <40.354336, 34.563110, 43.010742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967335, 34.464153, 43.031639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058235, 0.419065, 0.906087,
		-0.246054, 0.873602, -0.419855,
		-0.967505, -0.247396, 0.052238,
		39.677082, 34.389935, 43.047310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937450, 35.213078, 43.173531>,  <40.354336, 34.563110, 43.010742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937450, 35.213078, 43.173531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758324, 34.877991, 43.298550>,  <39.650848, 34.676937, 43.373562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758324, 34.877991, 43.298550>,  <39.937450, 35.213078, 43.173531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758324, 34.877991, 43.298550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103288, 0.395682, 0.912561,
		-0.888138, 0.376381, -0.263721,
		-0.447820, -0.837719, 0.312545,
		39.623978, 34.626675, 43.392315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302452, 35.455898, 43.516960>,  <39.937450, 35.213078, 43.173531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302452, 35.455898, 43.516960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418560, 35.095379, 43.645592>,  <39.488224, 34.879066, 43.722771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418560, 35.095379, 43.645592>,  <39.302452, 35.455898, 43.516960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418560, 35.095379, 43.645592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123656, 0.368556, 0.921344,
		-0.948922, -0.227673, 0.218431,
		0.290269, -0.901294, 0.321578,
		39.505642, 34.824989, 43.742065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846458, 35.171513, 44.019203>,  <39.302452, 35.455898, 43.516960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846458, 35.171513, 44.019203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198334, 34.998138, 44.097466>,  <39.409458, 34.894115, 44.144424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198334, 34.998138, 44.097466>,  <38.846458, 35.171513, 44.019203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198334, 34.998138, 44.097466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075574, 0.278794, 0.957373,
		-0.469505, -0.856978, 0.212496,
		0.879690, -0.433432, 0.195660,
		39.462242, 34.868111, 44.156162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042515, 35.188019, 44.843334>,  <38.846458, 35.171513, 44.019203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042515, 35.188019, 44.843334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151665, 34.854427, 44.651493>,  <39.217155, 34.654274, 44.536388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151665, 34.854427, 44.651493>,  <39.042515, 35.188019, 44.843334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151665, 34.854427, 44.651493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632827, -0.219891, 0.742414,
		-0.724616, -0.506095, 0.467760,
		0.272876, -0.833976, -0.479607,
		39.233528, 34.604233, 44.507610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740440, 34.637226, 45.249523>,  <39.042515, 35.188019, 44.843334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740440, 34.637226, 45.249523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092369, 34.589142, 45.065578>,  <39.303524, 34.560291, 44.955212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092369, 34.589142, 45.065578>,  <38.740440, 34.637226, 45.249523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092369, 34.589142, 45.065578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470792, 0.087315, 0.877913,
		-0.065387, -0.988901, 0.133418,
		0.879818, -0.120216, -0.459857,
		39.356316, 34.553078, 44.927620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085312, 34.023048, 45.404995>,  <38.740440, 34.637226, 45.249523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085312, 34.023048, 45.404995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366608, 34.286423, 45.297718>,  <39.535385, 34.444447, 45.233353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366608, 34.286423, 45.297718>,  <39.085312, 34.023048, 45.404995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366608, 34.286423, 45.297718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365830, -0.011666, 0.930609,
		0.609614, -0.752550, -0.249078,
		0.703235, 0.658432, -0.268194,
		39.577579, 34.483952, 45.217258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886841, 33.862347, 45.487122>,  <39.085312, 34.023048, 45.404995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886841, 33.862347, 45.487122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788853, 34.245136, 45.549335>,  <39.730061, 34.474812, 45.586666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788853, 34.245136, 45.549335>,  <39.886841, 33.862347, 45.487122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788853, 34.245136, 45.549335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102164, -0.134053, 0.985694,
		0.964133, 0.257354, -0.064929,
		-0.244969, 0.956973, 0.155537,
		39.715363, 34.532227, 45.595997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352654, 34.012932, 46.142708>,  <39.886841, 33.862347, 45.487122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352654, 34.012932, 46.142708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101959, 34.323181, 46.112747>,  <39.951542, 34.509331, 46.094772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101959, 34.323181, 46.112747>,  <40.352654, 34.012932, 46.142708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101959, 34.323181, 46.112747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076055, 0.156551, 0.984737,
		0.775512, 0.611472, -0.157106,
		-0.626734, 0.775625, -0.074902,
		39.913940, 34.555870, 46.090275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670898, 34.661064, 46.503593>,  <40.352654, 34.012932, 46.142708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670898, 34.661064, 46.503593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272446, 34.696182, 46.501949>,  <40.033375, 34.717255, 46.500965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272446, 34.696182, 46.501949>,  <40.670898, 34.661064, 46.503593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272446, 34.696182, 46.501949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020947, 0.282521, 0.959032,
		0.085360, 0.955235, -0.283267,
		-0.996130, 0.087797, -0.004106,
		39.973606, 34.722523, 46.500717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399338, 35.309181, 46.798378>,  <40.670898, 34.661064, 46.503593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399338, 35.309181, 46.798378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074936, 35.080509, 46.848095>,  <39.880295, 34.943306, 46.877926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074936, 35.080509, 46.848095>,  <40.399338, 35.309181, 46.798378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074936, 35.080509, 46.848095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068581, 0.303883, 0.950238,
		-0.581005, 0.762124, -0.285657,
		-0.811005, -0.571684, 0.124290,
		39.831635, 34.909004, 46.885384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942711, 35.703503, 47.165699>,  <40.399338, 35.309181, 46.798378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942711, 35.703503, 47.165699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853081, 35.319538, 47.233070>,  <39.799301, 35.089161, 47.273495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853081, 35.319538, 47.233070>,  <39.942711, 35.703503, 47.165699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853081, 35.319538, 47.233070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156242, 0.205971, 0.966004,
		-0.961965, 0.190145, -0.196132,
		-0.224078, -0.959907, 0.168429,
		39.785858, 35.031567, 47.283600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409039, 35.691257, 47.706043>,  <39.942711, 35.703503, 47.165699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409039, 35.691257, 47.706043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561775, 35.321606, 47.700577>,  <39.653419, 35.099815, 47.697296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561775, 35.321606, 47.700577>,  <39.409039, 35.691257, 47.706043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561775, 35.321606, 47.700577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232051, -0.110178, 0.966443,
		-0.894621, -0.365860, -0.256516,
		0.381845, -0.924125, -0.013669,
		39.676331, 35.044369, 47.696476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876171, 35.256104, 47.903004>,  <39.409039, 35.691257, 47.706043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876171, 35.256104, 47.903004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241547, 35.110592, 47.975994>,  <39.460770, 35.023285, 48.019791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241547, 35.110592, 47.975994>,  <38.876171, 35.256104, 47.903004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241547, 35.110592, 47.975994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112272, 0.205739, 0.972145,
		-0.391188, -0.908481, 0.147087,
		0.913437, -0.363778, 0.182480,
		39.515579, 35.001457, 48.030739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842972, 34.711742, 48.423866>,  <38.876171, 35.256104, 47.903004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842972, 34.711742, 48.423866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177437, 34.931137, 48.423065>,  <39.378117, 35.062775, 48.422585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177437, 34.931137, 48.423065>,  <38.842972, 34.711742, 48.423866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177437, 34.931137, 48.423065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152302, 0.235690, 0.959820,
		0.526917, -0.802257, 0.280609,
		0.836159, 0.548483, -0.002004,
		39.428284, 35.095680, 48.422462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345802, 34.417683, 48.829948>,  <38.842972, 34.711742, 48.423866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345802, 34.417683, 48.829948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426163, 34.807777, 48.792980>,  <39.474380, 35.041836, 48.770798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426163, 34.807777, 48.792980>,  <39.345802, 34.417683, 48.829948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426163, 34.807777, 48.792980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051350, 0.083731, 0.995164,
		0.978264, -0.204678, -0.033257,
		0.200904, 0.975241, -0.092422,
		39.486435, 35.100349, 48.765255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841076, 34.666584, 49.304543>,  <39.345802, 34.417683, 48.829948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841076, 34.666584, 49.304543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816521, 35.044640, 49.176201>,  <39.801788, 35.271473, 49.099194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816521, 35.044640, 49.176201>,  <39.841076, 34.666584, 49.304543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816521, 35.044640, 49.176201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366957, 0.320321, 0.873349,
		0.928210, -0.064126, -0.366489,
		-0.061389, 0.945136, -0.320856,
		39.798103, 35.328182, 49.079945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018284, 34.445007, 48.560890>,  <39.841076, 34.666584, 49.304543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018284, 34.445007, 48.560890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690575, 34.602009, 48.393684>,  <39.493950, 34.696209, 48.293362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690575, 34.602009, 48.393684>,  <40.018284, 34.445007, 48.560890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690575, 34.602009, 48.393684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432062, -0.056710, -0.900059,
		-0.376981, -0.918001, -0.123125,
		-0.819273, 0.392503, -0.418012,
		39.444794, 34.719761, 48.268280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824818, 33.995544, 47.903996>,  <40.018284, 34.445007, 48.560890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824818, 33.995544, 47.903996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644951, 34.343922, 47.824749>,  <39.537029, 34.552948, 47.777203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644951, 34.343922, 47.824749>,  <39.824818, 33.995544, 47.903996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644951, 34.343922, 47.824749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186323, -0.125457, -0.974446,
		-0.873545, -0.475092, -0.105863,
		-0.449670, 0.870946, -0.198113,
		39.510048, 34.605206, 47.765316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211891, 33.811733, 47.358570>,  <39.824818, 33.995544, 47.903996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211891, 33.811733, 47.358570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348526, 34.187515, 47.347672>,  <39.430508, 34.412983, 47.341133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348526, 34.187515, 47.347672>,  <39.211891, 33.811733, 47.358570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348526, 34.187515, 47.347672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017057, -0.035181, -0.999235,
		-0.939694, 0.340865, -0.028042,
		0.341591, 0.939454, -0.027245,
		39.451004, 34.469353, 47.339497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746872, 34.258900, 47.004204>,  <39.211891, 33.811733, 47.358570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746872, 34.258900, 47.004204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099888, 34.444492, 46.973648>,  <39.311699, 34.555847, 46.955315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099888, 34.444492, 46.973648>,  <38.746872, 34.258900, 47.004204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099888, 34.444492, 46.973648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083015, -0.006174, -0.996529,
		-0.462846, 0.885821, 0.033069,
		0.882543, 0.463985, -0.076393,
		39.364651, 34.583687, 46.950729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700214, 34.850243, 46.563038>,  <38.746872, 34.258900, 47.004204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700214, 34.850243, 46.563038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095070, 34.790337, 46.540688>,  <39.331985, 34.754395, 46.527279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095070, 34.790337, 46.540688>,  <38.700214, 34.850243, 46.563038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095070, 34.790337, 46.540688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028093, 0.181578, -0.982975,
		0.157357, 0.971906, 0.175036,
		0.987142, -0.149761, -0.055876,
		39.391212, 34.745407, 46.523926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834377, 35.379055, 46.085049>,  <38.700214, 34.850243, 46.563038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834377, 35.379055, 46.085049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155079, 35.139996, 46.083878>,  <39.347500, 34.996559, 46.083176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155079, 35.139996, 46.083878>,  <38.834377, 35.379055, 46.085049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155079, 35.139996, 46.083878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136270, 0.187571, -0.972753,
		0.581916, 0.779507, 0.231827,
		0.801751, -0.597651, -0.002927,
		39.395603, 34.960701, 46.083000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419933, 35.747730, 45.799927>,  <38.834377, 35.379055, 46.085049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419933, 35.747730, 45.799927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524971, 35.366318, 45.740829>,  <39.587994, 35.137470, 45.705372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524971, 35.366318, 45.740829>,  <39.419933, 35.747730, 45.799927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524971, 35.366318, 45.740829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267350, 0.219019, -0.938378,
		0.927129, 0.206914, 0.312440,
		0.262594, -0.953529, -0.147740,
		39.603748, 35.080257, 45.696507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103611, 35.706688, 45.432667>,  <39.419933, 35.747730, 45.799927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103611, 35.706688, 45.432667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968811, 35.330719, 45.410828>,  <39.887932, 35.105137, 45.397724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968811, 35.330719, 45.410828>,  <40.103611, 35.706688, 45.432667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968811, 35.330719, 45.410828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119733, 0.014734, -0.992697,
		0.933860, -0.341078, 0.107574,
		-0.337002, -0.939919, -0.054597,
		39.867710, 35.048744, 45.394447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574696, 35.216171, 45.029636>,  <40.103611, 35.706688, 45.432667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574696, 35.216171, 45.029636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195629, 35.090282, 45.008148>,  <39.968189, 35.014751, 44.995255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195629, 35.090282, 45.008148>,  <40.574696, 35.216171, 45.029636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195629, 35.090282, 45.008148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104428, -0.146526, -0.983679,
		0.301712, -0.937806, 0.171723,
		-0.947663, -0.314721, -0.053725,
		39.911331, 34.995865, 44.992031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418129, 34.771103, 44.282402>,  <40.574696, 35.216171, 45.029636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418129, 34.771103, 44.282402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075787, 34.715572, 44.481697>,  <39.870380, 34.682255, 44.601273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075787, 34.715572, 44.481697>,  <40.418129, 34.771103, 44.282402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075787, 34.715572, 44.481697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459652, -0.237511, -0.855750,
		0.237142, -0.961413, 0.139460,
		-0.855852, -0.138831, 0.498239,
		39.819031, 34.673923, 44.631168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292034, 34.039978, 44.318611>,  <40.418129, 34.771103, 44.282402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292034, 34.039978, 44.318611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971798, 34.278969, 44.300362>,  <39.779655, 34.422363, 44.289413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971798, 34.278969, 44.300362>,  <40.292034, 34.039978, 44.318611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971798, 34.278969, 44.300362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247387, -0.398908, -0.882990,
		-0.545766, -0.695624, 0.467169,
		-0.800586, 0.597478, -0.045622,
		39.731621, 34.458214, 44.286674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728584, 33.624805, 44.230476>,  <40.292034, 34.039978, 44.318611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728584, 33.624805, 44.230476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662167, 33.987835, 44.076210>,  <39.622314, 34.205654, 43.983650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662167, 33.987835, 44.076210>,  <39.728584, 33.624805, 44.230476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662167, 33.987835, 44.076210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284417, -0.418547, -0.862511,
		-0.944212, -0.033527, 0.327628,
		-0.166045, 0.907576, -0.385662,
		39.612354, 34.260109, 43.960510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179745, 33.480732, 43.855598>,  <39.728584, 33.624805, 44.230476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179745, 33.480732, 43.855598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329369, 33.823322, 43.713314>,  <39.419144, 34.028877, 43.627945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329369, 33.823322, 43.713314>,  <39.179745, 33.480732, 43.855598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329369, 33.823322, 43.713314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164469, -0.316210, -0.934324,
		-0.912706, 0.407992, 0.022584,
		0.374056, 0.856478, -0.355709,
		39.441586, 34.080265, 43.606602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646458, 33.924496, 43.653126>,  <39.179745, 33.480732, 43.855598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646458, 33.924496, 43.653126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927654, 34.195133, 43.565468>,  <39.096371, 34.357517, 43.512875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927654, 34.195133, 43.565468>,  <38.646458, 33.924496, 43.653126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927654, 34.195133, 43.565468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096277, -0.214756, -0.971911,
		-0.704653, 0.704342, -0.085830,
		0.702990, 0.676596, -0.219140,
		39.138550, 34.398113, 43.499725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391533, 34.321266, 43.026680>,  <38.646458, 33.924496, 43.653126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391533, 34.321266, 43.026680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790112, 34.342678, 43.052708>,  <39.029259, 34.355526, 43.068325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790112, 34.342678, 43.052708>,  <38.391533, 34.321266, 43.026680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790112, 34.342678, 43.052708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073705, -0.179459, -0.981000,
		-0.040836, 0.982308, -0.182766,
		0.996444, 0.053531, 0.065072,
		39.089046, 34.358738, 43.072227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531143, 34.769451, 42.496513>,  <38.391533, 34.321266, 43.026680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531143, 34.769451, 42.496513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886482, 34.597324, 42.560593>,  <39.099686, 34.494049, 42.599041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886482, 34.597324, 42.560593>,  <38.531143, 34.769451, 42.496513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886482, 34.597324, 42.560593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145986, -0.066087, -0.987077,
		0.435338, 0.900258, 0.004111,
		0.888352, -0.430312, 0.160195,
		39.152988, 34.468231, 42.608650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925201, 35.066422, 41.998371>,  <38.531143, 34.769451, 42.496513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925201, 35.066422, 41.998371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164856, 34.765812, 42.108818>,  <39.308647, 34.585445, 42.175087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164856, 34.765812, 42.108818>,  <38.925201, 35.066422, 41.998371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164856, 34.765812, 42.108818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356357, -0.058524, -0.932515,
		0.716971, 0.657101, 0.232749,
		0.599135, -0.751528, 0.276122,
		39.344597, 34.540352, 42.191654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693424, 35.173088, 41.818733>,  <38.925201, 35.066422, 41.998371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693424, 35.173088, 41.818733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600002, 34.784595, 41.837326>,  <39.543949, 34.551498, 41.848484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600002, 34.784595, 41.837326>,  <39.693424, 35.173088, 41.818733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600002, 34.784595, 41.837326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328793, -0.123874, -0.936243,
		0.915068, -0.203378, 0.348265,
		-0.233552, -0.971233, 0.046484,
		39.529938, 34.493225, 41.851273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244518, 34.864754, 41.507484>,  <39.693424, 35.173088, 41.818733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244518, 34.864754, 41.507484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964142, 34.579971, 41.490551>,  <39.795914, 34.409100, 41.480392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964142, 34.579971, 41.490551>,  <40.244518, 34.864754, 41.507484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964142, 34.579971, 41.490551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285431, -0.225633, -0.931461,
		0.653611, -0.664984, 0.361372,
		-0.700944, -0.711960, -0.042331,
		39.753860, 34.366383, 41.477852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577900, 34.440784, 41.127327>,  <40.244518, 34.864754, 41.507484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577900, 34.440784, 41.127327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206154, 34.294086, 41.110493>,  <39.983105, 34.206066, 41.100391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206154, 34.294086, 41.110493>,  <40.577900, 34.440784, 41.127327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206154, 34.294086, 41.110493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102359, -0.146476, -0.983904,
		0.354680, -0.918717, 0.173670,
		-0.929368, -0.366748, -0.042087,
		39.927345, 34.184063, 41.097866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544411, 33.897297, 40.555382>,  <40.577900, 34.440784, 41.127327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544411, 33.897297, 40.555382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153667, 33.968300, 40.603104>,  <39.919220, 34.010902, 40.631737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153667, 33.968300, 40.603104>,  <40.544411, 33.897297, 40.555382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153667, 33.968300, 40.603104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133782, -0.071918, -0.988398,
		-0.166866, -0.981488, 0.094001,
		-0.976862, 0.177505, 0.119305,
		39.860607, 34.021553, 40.638897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202141, 33.456577, 40.084942>,  <40.544411, 33.897297, 40.555382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202141, 33.456577, 40.084942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942890, 33.749500, 40.168522>,  <39.787342, 33.925255, 40.218670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942890, 33.749500, 40.168522>,  <40.202141, 33.456577, 40.084942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942890, 33.749500, 40.168522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187026, 0.112914, -0.975844,
		-0.738214, -0.671545, 0.063779,
		-0.648122, 0.732310, 0.208951,
		39.748455, 33.969193, 40.231209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876766, 33.489964, 39.607822>,  <40.202141, 33.456577, 40.084942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876766, 33.489964, 39.607822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786476, 33.282986, 39.277660>,  <40.732300, 33.158798, 39.079563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786476, 33.282986, 39.277660>,  <40.876766, 33.489964, 39.607822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786476, 33.282986, 39.277660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949481, -0.306473, -0.067533,
		-0.218020, -0.798952, 0.560485,
		-0.225729, -0.517446, -0.825407,
		40.718758, 33.127750, 39.030037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310806, 32.983299, 39.618217>,  <40.876766, 33.489964, 39.607822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310806, 32.983299, 39.618217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153198, 32.931019, 39.254311>,  <41.058636, 32.899651, 39.035969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153198, 32.931019, 39.254311>,  <41.310806, 32.983299, 39.618217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153198, 32.931019, 39.254311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829303, -0.477293, -0.290600,
		-0.396242, -0.868970, 0.296450,
		-0.394017, -0.130699, -0.909763,
		41.034992, 32.891808, 38.981380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528542, 32.390236, 39.198044>,  <41.310806, 32.983299, 39.618217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528542, 32.390236, 39.198044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420879, 32.629520, 38.896130>,  <41.356281, 32.773090, 38.714981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420879, 32.629520, 38.896130>,  <41.528542, 32.390236, 39.198044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420879, 32.629520, 38.896130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909837, -0.099070, -0.402967,
		-0.315836, -0.795190, -0.517610,
		-0.269156, 0.598212, -0.754783,
		41.340134, 32.808983, 38.669693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477562, 32.025486, 38.502502>,  <41.528542, 32.390236, 39.198044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477562, 32.025486, 38.502502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612377, 32.401283, 38.477993>,  <41.693268, 32.626762, 38.463287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612377, 32.401283, 38.477993>,  <41.477562, 32.025486, 38.502502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612377, 32.401283, 38.477993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735333, -0.303326, -0.606035,
		-0.587952, 0.159202, -0.793074,
		0.337042, 0.939494, -0.061275,
		41.713490, 32.683132, 38.459610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948292, 32.112499, 37.954643>,  <41.477562, 32.025486, 38.502502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948292, 32.112499, 37.954643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059589, 32.442959, 38.150627>,  <42.126369, 32.641235, 38.268215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059589, 32.442959, 38.150627>,  <41.948292, 32.112499, 37.954643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059589, 32.442959, 38.150627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923013, -0.088847, -0.374370,
		-0.265754, 0.556405, -0.787267,
		0.278247, 0.826148, 0.489957,
		42.143063, 32.690804, 38.297615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539268, 31.648617, 38.116844>,  <41.948292, 32.112499, 37.954643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539268, 31.648617, 38.116844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558220, 32.042564, 38.183521>,  <42.569592, 32.278934, 38.223530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558220, 32.042564, 38.183521>,  <42.539268, 31.648617, 38.116844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558220, 32.042564, 38.183521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263559, -0.173296, 0.948950,
		0.963479, -0.001024, -0.267781,
		0.047377, 0.984869, 0.166697,
		42.572433, 32.338024, 38.233532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107510, 31.684969, 37.546997>,  <42.539268, 31.648617, 38.116844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107510, 31.684969, 37.546997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342857, 31.935318, 37.751781>,  <43.484066, 32.085526, 37.874653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342857, 31.935318, 37.751781>,  <43.107510, 31.684969, 37.546997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342857, 31.935318, 37.751781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055504, 0.662920, -0.746630,
		-0.806685, 0.410879, 0.424781,
		0.588370, 0.625872, 0.511962,
		43.519367, 32.123081, 37.905369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886719, 32.403198, 37.343525>,  <43.107510, 31.684969, 37.546997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886719, 32.403198, 37.343525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265736, 32.424431, 37.469601>,  <43.493145, 32.437172, 37.545246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265736, 32.424431, 37.469601>,  <42.886719, 32.403198, 37.343525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265736, 32.424431, 37.469601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232750, 0.561255, -0.794242,
		-0.219061, 0.825939, 0.519458,
		0.947544, 0.053083, 0.315186,
		43.549999, 32.440357, 37.564156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121662, 33.098946, 37.501579>,  <42.886719, 32.403198, 37.343525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121662, 33.098946, 37.501579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389133, 32.844917, 37.346889>,  <43.549614, 32.692501, 37.254074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389133, 32.844917, 37.346889>,  <43.121662, 33.098946, 37.501579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389133, 32.844917, 37.346889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148813, 0.623888, -0.767215,
		0.728510, 0.455468, 0.511685,
		0.668676, -0.635069, -0.386729,
		43.589737, 32.654396, 37.230869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739128, 33.526043, 37.367485>,  <43.121662, 33.098946, 37.501579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739128, 33.526043, 37.367485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758526, 33.191826, 37.148575>,  <43.770164, 32.991295, 37.017227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758526, 33.191826, 37.148575>,  <43.739128, 33.526043, 37.367485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758526, 33.191826, 37.148575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480153, 0.499962, -0.720757,
		0.875843, -0.227825, 0.425434,
		0.048495, -0.835544, -0.547280,
		43.773075, 32.941162, 36.984390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393581, 33.463120, 37.154263>,  <43.739128, 33.526043, 37.367485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393581, 33.463120, 37.154263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210049, 33.231098, 36.885036>,  <44.099930, 33.091885, 36.723499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210049, 33.231098, 36.885036>,  <44.393581, 33.463120, 37.154263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210049, 33.231098, 36.885036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561122, 0.398180, -0.725668,
		0.688926, -0.710629, 0.142783,
		-0.458828, -0.580050, -0.673066,
		44.072399, 33.057083, 36.683117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964600, 33.027557, 36.773064>,  <44.393581, 33.463120, 37.154263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964600, 33.027557, 36.773064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623455, 33.059532, 36.566673>,  <44.418770, 33.078716, 36.442837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623455, 33.059532, 36.566673>,  <44.964600, 33.027557, 36.773064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623455, 33.059532, 36.566673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515143, 0.290022, -0.806545,
		0.085169, -0.953675, -0.288530,
		-0.852862, 0.079942, -0.515980,
		44.367596, 33.083515, 36.411880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906990, 32.496387, 36.214138>,  <44.964600, 33.027557, 36.773064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906990, 32.496387, 36.214138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691772, 32.822960, 36.130283>,  <44.562641, 33.018902, 36.079971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691772, 32.822960, 36.130283>,  <44.906990, 32.496387, 36.214138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691772, 32.822960, 36.130283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683751, 0.277295, -0.674976,
		-0.492941, -0.506506, -0.707433,
		-0.538047, 0.816431, -0.209634,
		44.530357, 33.067890, 36.067394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829876, 32.703903, 35.479172>,  <44.906990, 32.496387, 36.214138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829876, 32.703903, 35.479172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800732, 33.057102, 35.664646>,  <44.783245, 33.269024, 35.775928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800732, 33.057102, 35.664646>,  <44.829876, 32.703903, 35.479172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800732, 33.057102, 35.664646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720496, 0.368074, -0.587713,
		-0.689620, 0.291258, -0.663018,
		-0.072863, 0.883001, 0.463681,
		44.778873, 33.322002, 35.803749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899239, 33.283634, 34.977669>,  <44.829876, 32.703903, 35.479172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899239, 33.283634, 34.977669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050186, 33.399094, 35.329639>,  <45.140755, 33.468369, 35.540821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050186, 33.399094, 35.329639>,  <44.899239, 33.283634, 34.977669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050186, 33.399094, 35.329639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829765, 0.316518, -0.459682,
		-0.411201, 0.903603, -0.120068,
		0.377366, 0.288650, 0.879930,
		45.163395, 33.485687, 35.593616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087959, 33.879211, 34.830357>,  <44.899239, 33.283634, 34.977669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087959, 33.879211, 34.830357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292850, 33.731094, 35.140327>,  <45.415783, 33.642223, 35.326309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292850, 33.731094, 35.140327>,  <45.087959, 33.879211, 34.830357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292850, 33.731094, 35.140327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829276, -0.021502, -0.558426,
		0.223442, 0.928667, 0.296059,
		0.512226, -0.370291, 0.774926,
		45.446518, 33.620007, 35.372807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834442, 33.750000, 35.036655>,  <45.087959, 33.879211, 34.830357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834442, 33.750000, 35.036655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637424, 34.072357, 35.168068>,  <45.519215, 34.265774, 35.246914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637424, 34.072357, 35.168068>,  <45.834442, 33.750000, 35.036655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637424, 34.072357, 35.168068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784902, 0.248283, 0.567701,
		0.375939, 0.537483, -0.754839,
		-0.492544, 0.805896, 0.328531,
		45.489662, 34.314125, 35.266628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163162, 34.213081, 34.523449>,  <45.834442, 33.750000, 35.036655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163162, 34.213081, 34.523449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879269, 34.492867, 34.489902>,  <45.708935, 34.660736, 34.469776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879269, 34.492867, 34.489902>,  <46.163162, 34.213081, 34.523449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879269, 34.492867, 34.489902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366354, -0.264777, 0.892007,
		0.601721, 0.663809, 0.444172,
		-0.709730, 0.699464, -0.083867,
		45.666351, 34.702705, 34.464741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086662, 34.634350, 35.168457>,  <46.163162, 34.213081, 34.523449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086662, 34.634350, 35.168457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715485, 34.627117, 35.019547>,  <45.492779, 34.622776, 34.930199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715485, 34.627117, 35.019547>,  <46.086662, 34.634350, 35.168457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715485, 34.627117, 35.019547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359021, -0.224921, 0.905822,
		-0.100113, 0.974209, 0.202222,
		-0.927945, -0.018083, -0.372279,
		45.437099, 34.621693, 34.907864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.911362, 34.734333, 35.076443>,  <46.086662, 34.634350, 35.168457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.911362, 34.734333, 35.076443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.960537, 34.337952, 35.098000>,  <46.990044, 34.100124, 35.110935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.960537, 34.337952, 35.098000>,  <46.911362, 34.734333, 35.076443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.960537, 34.337952, 35.098000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623781, -0.034922, 0.780818,
		-0.771870, -0.129611, -0.622429,
		0.122939, -0.990950, 0.053894,
		46.997417, 34.040668, 35.114166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.557518, 34.483814, 34.769760>,  <46.911362, 34.734333, 35.076443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.557518, 34.483814, 34.769760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.570660, 34.877598, 34.838772>,  <47.578545, 35.113869, 34.880180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.570660, 34.877598, 34.838772>,  <47.557518, 34.483814, 34.769760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.570660, 34.877598, 34.838772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165504, -0.175601, 0.970450,
		0.985662, -0.003332, -0.168701,
		0.032858, 0.984456, 0.172531,
		47.580517, 35.172935, 34.890530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.266586, 28.077854, 31.417725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889046, 27.960707, 31.356571>,  <36.662521, 27.890419, 31.319880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889046, 27.960707, 31.356571>,  <37.266586, 28.077854, 31.417725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889046, 27.960707, 31.356571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229434, 0.248112, 0.941170,
		-0.237707, 0.923401, -0.301374,
		-0.943852, -0.292868, -0.152882,
		36.605888, 27.872847, 31.310707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851913, 28.565945, 31.732685>,  <37.266586, 28.077854, 31.417725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851913, 28.565945, 31.732685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620590, 28.239685, 31.726116>,  <36.481796, 28.043928, 31.722174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620590, 28.239685, 31.726116>,  <36.851913, 28.565945, 31.732685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620590, 28.239685, 31.726116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110109, 0.058091, 0.992221,
		-0.808352, 0.575620, -0.123405,
		-0.578311, -0.815651, -0.016423,
		36.447098, 27.994989, 31.721189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307747, 28.869276, 32.094383>,  <36.851913, 28.565945, 31.732685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307747, 28.869276, 32.094383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256767, 28.472677, 32.104919>,  <36.226177, 28.234718, 32.111240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256767, 28.472677, 32.104919>,  <36.307747, 28.869276, 32.094383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256767, 28.472677, 32.104919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238569, 0.056419, 0.969485,
		-0.962726, 0.117278, -0.243731,
		-0.127451, -0.991495, 0.026337,
		36.218533, 28.175228, 32.112820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698997, 28.815395, 32.442616>,  <36.307747, 28.869276, 32.094383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698997, 28.815395, 32.442616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.865398, 28.452087, 32.460430>,  <35.965240, 28.234102, 32.471119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.865398, 28.452087, 32.460430>,  <35.698997, 28.815395, 32.442616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865398, 28.452087, 32.460430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306787, -0.094073, 0.947118,
		-0.856051, -0.407667, -0.317780,
		0.416003, -0.908272, 0.044535,
		35.990200, 28.179605, 32.473789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217136, 28.409428, 32.770470>,  <35.698997, 28.815395, 32.442616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217136, 28.409428, 32.770470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577259, 28.242006, 32.818245>,  <35.793331, 28.141554, 32.846909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577259, 28.242006, 32.818245>,  <35.217136, 28.409428, 32.770470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577259, 28.242006, 32.818245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111600, 0.043248, 0.992812,
		-0.420712, -0.907161, -0.007775,
		0.900304, -0.418555, 0.119434,
		35.847351, 28.116440, 32.854076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042675, 27.889534, 33.267212>,  <35.217136, 28.409428, 32.770470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042675, 27.889534, 33.267212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437199, 27.953451, 33.283482>,  <35.673912, 27.991800, 33.293243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437199, 27.953451, 33.283482>,  <35.042675, 27.889534, 33.267212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437199, 27.953451, 33.283482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065207, 0.151444, 0.986313,
		0.151444, -0.975465, 0.159791,
		-0.986313, -0.159791, -0.040672,
		35.733093, 28.001389, 33.295685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284412, 27.566803, 33.859409>,  <35.042675, 27.889534, 33.267212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284412, 27.566803, 33.859409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581211, 27.824100, 33.783848>,  <35.759289, 27.978479, 33.738510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581211, 27.824100, 33.783848>,  <35.284412, 27.566803, 33.859409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581211, 27.824100, 33.783848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033306, 0.246058, 0.968683,
		0.669581, -0.725047, 0.161149,
		0.741992, 0.643244, -0.188904,
		35.803810, 28.017073, 33.727177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770279, 27.494259, 34.319386>,  <35.284412, 27.566803, 33.859409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770279, 27.494259, 34.319386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870949, 27.862259, 34.199211>,  <35.931351, 28.083059, 34.127106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870949, 27.862259, 34.199211>,  <35.770279, 27.494259, 34.319386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870949, 27.862259, 34.199211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076368, 0.290583, 0.953797,
		0.964794, -0.262992, 0.002875,
		0.251677, 0.919998, -0.300437,
		35.946453, 28.138258, 34.109081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277260, 27.716442, 34.776272>,  <35.770279, 27.494259, 34.319386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277260, 27.716442, 34.776272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182796, 28.072397, 34.620155>,  <36.126118, 28.285971, 34.526485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182796, 28.072397, 34.620155>,  <36.277260, 27.716442, 34.776272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182796, 28.072397, 34.620155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215121, 0.439568, 0.872068,
		0.947602, 0.121989, -0.295243,
		-0.236162, 0.889887, -0.390293,
		36.111946, 28.339363, 34.503067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851868, 28.119917, 34.864563>,  <36.277260, 27.716442, 34.776272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851868, 28.119917, 34.864563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.556664, 28.383286, 34.805481>,  <36.379539, 28.541306, 34.770031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.556664, 28.383286, 34.805481>,  <36.851868, 28.119917, 34.864563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556664, 28.383286, 34.805481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278865, 0.496929, 0.821764,
		0.614467, 0.565283, -0.550351,
		-0.738014, 0.658420, -0.147709,
		36.335258, 28.580812, 34.761169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119907, 28.681656, 35.111912>,  <36.851868, 28.119917, 34.864563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119907, 28.681656, 35.111912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726040, 28.749573, 35.127911>,  <36.489719, 28.790323, 35.137508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726040, 28.749573, 35.127911>,  <37.119907, 28.681656, 35.111912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726040, 28.749573, 35.127911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127218, 0.542109, 0.830622,
		0.119354, 0.822975, -0.555398,
		-0.984668, 0.169794, 0.039994,
		36.430641, 28.800510, 35.139908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097462, 29.383047, 35.305210>,  <37.119907, 28.681656, 35.111912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097462, 29.383047, 35.305210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731045, 29.247505, 35.391037>,  <36.511192, 29.166180, 35.442532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731045, 29.247505, 35.391037>,  <37.097462, 29.383047, 35.305210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731045, 29.247505, 35.391037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052289, 0.429516, 0.901544,
		-0.397653, 0.837074, -0.375738,
		-0.916045, -0.338855, 0.214568,
		36.456230, 29.145849, 35.455406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650265, 29.973698, 35.477528>,  <37.097462, 29.383047, 35.305210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650265, 29.973698, 35.477528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494366, 29.657583, 35.666649>,  <36.400826, 29.467915, 35.780121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494366, 29.657583, 35.666649>,  <36.650265, 29.973698, 35.477528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494366, 29.657583, 35.666649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026158, 0.522700, 0.852115,
		-0.920550, 0.319741, -0.224393,
		-0.389747, -0.790285, 0.472808,
		36.377441, 29.420498, 35.808491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036232, 30.239712, 35.803165>,  <36.650265, 29.973698, 35.477528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036232, 30.239712, 35.803165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118858, 29.896053, 35.990440>,  <36.168434, 29.689859, 36.102806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118858, 29.896053, 35.990440>,  <36.036232, 30.239712, 35.803165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118858, 29.896053, 35.990440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149110, 0.445276, 0.882890,
		-0.967003, -0.252190, -0.036127,
		0.206570, -0.859145, 0.468188,
		36.180828, 29.638309, 36.130898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526497, 30.249239, 36.238033>,  <36.036232, 30.239712, 35.803165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526497, 30.249239, 36.238033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793518, 29.987478, 36.380093>,  <35.953732, 29.830421, 36.465328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793518, 29.987478, 36.380093>,  <35.526497, 30.249239, 36.238033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793518, 29.987478, 36.380093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181020, 0.320027, 0.929954,
		-0.722221, -0.685083, 0.095175,
		0.667554, -0.654404, 0.355144,
		35.993786, 29.791157, 36.486637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185627, 29.856703, 36.763500>,  <35.526497, 30.249239, 36.238033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185627, 29.856703, 36.763500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578758, 29.815905, 36.824997>,  <35.814636, 29.791426, 36.861897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578758, 29.815905, 36.824997>,  <35.185627, 29.856703, 36.763500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578758, 29.815905, 36.824997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162117, -0.079592, 0.983556,
		-0.088077, -0.991596, -0.094760,
		0.982833, -0.101991, 0.153744,
		35.873608, 29.785307, 36.871120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247757, 29.367579, 37.314846>,  <35.185627, 29.856703, 36.763500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247757, 29.367579, 37.314846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601059, 29.554758, 37.326794>,  <35.813038, 29.667065, 37.333961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601059, 29.554758, 37.326794>,  <35.247757, 29.367579, 37.314846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601059, 29.554758, 37.326794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001216, -0.065990, 0.997819,
		0.468898, -0.881289, -0.058855,
		0.883251, 0.467947, 0.029871,
		35.866035, 29.695143, 37.335754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699791, 29.054190, 37.742771>,  <35.247757, 29.367579, 37.314846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699791, 29.054190, 37.742771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826820, 29.432539, 37.769505>,  <35.903038, 29.659550, 37.785545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826820, 29.432539, 37.769505>,  <35.699791, 29.054190, 37.742771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826820, 29.432539, 37.769505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110522, -0.033076, 0.993323,
		0.941770, -0.322841, 0.094036,
		0.317575, 0.945875, 0.066831,
		35.922092, 29.716301, 37.789555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197090, 29.085684, 38.286945>,  <35.699791, 29.054190, 37.742771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197090, 29.085684, 38.286945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111092, 29.475859, 38.267780>,  <36.059494, 29.709965, 38.256283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111092, 29.475859, 38.267780>,  <36.197090, 29.085684, 38.286945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111092, 29.475859, 38.267780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093128, 0.069312, 0.993239,
		0.972164, 0.209082, -0.105742,
		-0.214997, 0.975439, -0.047911,
		36.046593, 29.768490, 38.253407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694443, 29.367817, 38.690868>,  <36.197090, 29.085684, 38.286945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694443, 29.367817, 38.690868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421173, 29.659533, 38.675819>,  <36.257214, 29.834562, 38.666790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421173, 29.659533, 38.675819>,  <36.694443, 29.367817, 38.690868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421173, 29.659533, 38.675819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164100, 0.203516, 0.965222,
		0.711582, 0.653238, -0.258712,
		-0.683171, 0.729288, -0.037622,
		36.216221, 29.878319, 38.664532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035370, 29.956465, 38.944607>,  <36.694443, 29.367817, 38.690868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035370, 29.956465, 38.944607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642918, 30.020891, 38.987400>,  <36.407448, 30.059547, 39.013077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642918, 30.020891, 38.987400>,  <37.035370, 29.956465, 38.944607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642918, 30.020891, 38.987400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162131, 0.383809, 0.909068,
		0.105359, 0.909257, -0.402680,
		-0.981129, 0.161065, 0.106981,
		36.348579, 30.069210, 39.019493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008247, 30.670046, 38.805256>,  <37.035370, 29.956465, 38.944607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008247, 30.670046, 38.805256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882416, 30.717876, 39.181923>,  <36.806919, 30.746574, 39.407925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882416, 30.717876, 39.181923>,  <37.008247, 30.670046, 38.805256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882416, 30.717876, 39.181923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432674, 0.864921, -0.254372,
		-0.844888, -0.487455, -0.220345,
		-0.314576, 0.119578, 0.941670,
		36.788044, 30.753750, 39.464424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403408, 31.283527, 39.094292>,  <37.008247, 30.670046, 38.805256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403408, 31.283527, 39.094292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.780422, 31.415396, 39.115971>,  <38.006630, 31.494516, 39.128979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.780422, 31.415396, 39.115971>,  <37.403408, 31.283527, 39.094292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780422, 31.415396, 39.115971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209812, -0.457841, -0.863922,
		-0.259998, 0.825651, -0.500702,
		0.942539, 0.329671, 0.054194,
		38.063183, 31.514297, 39.132229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537209, 31.757574, 38.532791>,  <37.403408, 31.283527, 39.094292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537209, 31.757574, 38.532791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900032, 31.636944, 38.650299>,  <38.117725, 31.564566, 38.720806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900032, 31.636944, 38.650299>,  <37.537209, 31.757574, 38.532791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900032, 31.636944, 38.650299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214021, -0.270604, -0.938599,
		0.362555, 0.914235, -0.180909,
		0.907055, -0.301576, 0.293774,
		38.172150, 31.546471, 38.738430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991512, 31.910307, 38.003902>,  <37.537209, 31.757574, 38.532791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991512, 31.910307, 38.003902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181961, 31.628107, 38.213886>,  <38.296230, 31.458786, 38.339874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181961, 31.628107, 38.213886>,  <37.991512, 31.910307, 38.003902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181961, 31.628107, 38.213886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361410, -0.387231, -0.848195,
		0.801681, 0.593567, 0.070607,
		0.476120, -0.705501, 0.524956,
		38.324799, 31.416456, 38.371372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698139, 31.870348, 37.623043>,  <37.991512, 31.910307, 38.003902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698139, 31.870348, 37.623043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646065, 31.540319, 37.842976>,  <38.614822, 31.342302, 37.974934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646065, 31.540319, 37.842976>,  <38.698139, 31.870348, 37.623043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646065, 31.540319, 37.842976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292279, -0.561839, -0.773893,
		0.947431, 0.059955, 0.314293,
		-0.130183, -0.825071, 0.549827,
		38.607010, 31.292799, 38.007923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347610, 31.475275, 37.612679>,  <38.698139, 31.870348, 37.623043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347610, 31.475275, 37.612679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.067181, 31.212191, 37.722885>,  <38.898922, 31.054340, 37.789009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.067181, 31.212191, 37.722885>,  <39.347610, 31.475275, 37.612679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067181, 31.212191, 37.722885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161857, -0.523062, -0.836784,
		0.694478, -0.542051, 0.473160,
		-0.701072, -0.657713, 0.275520,
		38.856857, 31.014877, 37.805542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639790, 30.799168, 37.603760>,  <39.347610, 31.475275, 37.612679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639790, 30.799168, 37.603760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246330, 30.751667, 37.549591>,  <39.010254, 30.723166, 37.517090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.246330, 30.751667, 37.549591>,  <39.639790, 30.799168, 37.603760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246330, 30.751667, 37.549591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175175, -0.455834, -0.872656,
		0.041900, -0.882107, 0.469182,
		-0.983645, -0.118753, -0.135424,
		38.951237, 30.716042, 37.508965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615730, 30.080528, 37.331364>,  <39.639790, 30.799168, 37.603760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615730, 30.080528, 37.331364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280064, 30.286945, 37.262672>,  <39.078663, 30.410795, 37.221458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280064, 30.286945, 37.262672>,  <39.615730, 30.080528, 37.331364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280064, 30.286945, 37.262672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076962, -0.425250, -0.901798,
		-0.538396, -0.743545, 0.396573,
		-0.839170, 0.516045, -0.171728,
		39.028313, 30.441759, 37.211155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136860, 29.584177, 37.020802>,  <39.615730, 30.080528, 37.331364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136860, 29.584177, 37.020802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012821, 29.950762, 36.919655>,  <38.938400, 30.170713, 36.858967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012821, 29.950762, 36.919655>,  <39.136860, 29.584177, 37.020802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012821, 29.950762, 36.919655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213904, -0.326413, -0.920706,
		-0.926330, -0.231417, 0.297253,
		-0.310094, 0.916461, -0.252865,
		38.919792, 30.225700, 36.843796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446861, 29.434462, 36.722248>,  <39.136860, 29.584177, 37.020802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446861, 29.434462, 36.722248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576283, 29.787987, 36.587082>,  <38.653934, 30.000101, 36.505981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576283, 29.787987, 36.587082>,  <38.446861, 29.434462, 36.722248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576283, 29.787987, 36.587082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220573, -0.276831, -0.935260,
		-0.920140, 0.377145, 0.105375,
		0.323557, 0.883814, -0.337911,
		38.673351, 30.053131, 36.485710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043785, 29.513323, 36.176155>,  <38.446861, 29.434462, 36.722248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043785, 29.513323, 36.176155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325371, 29.789524, 36.109646>,  <38.494320, 29.955244, 36.069740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325371, 29.789524, 36.109646>,  <38.043785, 29.513323, 36.176155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325371, 29.789524, 36.109646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034076, -0.201006, -0.978997,
		-0.709421, 0.694842, -0.117970,
		0.703961, 0.690501, -0.166275,
		38.536560, 29.996674, 36.059765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811005, 29.869619, 35.542427>,  <38.043785, 29.513323, 36.176155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811005, 29.869619, 35.542427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.199394, 29.953365, 35.588688>,  <38.432426, 30.003613, 35.616444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.199394, 29.953365, 35.588688>,  <37.811005, 29.869619, 35.542427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199394, 29.953365, 35.588688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144186, -0.126569, -0.981423,
		-0.190835, 0.969612, -0.153082,
		0.970975, 0.209363, 0.115651,
		38.490688, 30.016174, 35.623383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060604, 30.342707, 35.037155>,  <37.811005, 29.869619, 35.542427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060604, 30.342707, 35.037155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405155, 30.168617, 35.141926>,  <38.611885, 30.064163, 35.204788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405155, 30.168617, 35.141926>,  <38.060604, 30.342707, 35.037155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405155, 30.168617, 35.141926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271324, -0.041715, -0.961584,
		0.429430, 0.899355, 0.082154,
		0.861378, -0.435224, 0.261931,
		38.663570, 30.038050, 35.220505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585804, 30.653831, 34.617699>,  <38.060604, 30.342707, 35.037155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585804, 30.653831, 34.617699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711121, 30.289488, 34.725166>,  <38.786312, 30.070881, 34.789646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711121, 30.289488, 34.725166>,  <38.585804, 30.653831, 34.617699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711121, 30.289488, 34.725166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266831, -0.187080, -0.945411,
		0.911399, 0.367879, 0.184435,
		0.313293, -0.910860, 0.268666,
		38.805107, 30.016230, 34.805767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201820, 30.544695, 34.283970>,  <38.585804, 30.653831, 34.617699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201820, 30.544695, 34.283970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096104, 30.168844, 34.370918>,  <39.032673, 29.943335, 34.423088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096104, 30.168844, 34.370918>,  <39.201820, 30.544695, 34.283970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096104, 30.168844, 34.370918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230662, -0.280427, -0.931748,
		0.936453, -0.196115, 0.290851,
		-0.264293, -0.939627, 0.217371,
		39.016815, 29.886955, 34.436131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628639, 30.166986, 33.851624>,  <39.201820, 30.544695, 34.283970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628639, 30.166986, 33.851624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357605, 29.888992, 33.947845>,  <39.194984, 29.722195, 34.005581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357605, 29.888992, 33.947845>,  <39.628639, 30.166986, 33.851624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357605, 29.888992, 33.947845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069659, -0.386272, -0.919751,
		0.732137, -0.606453, 0.310145,
		-0.677586, -0.694988, 0.240559,
		39.154327, 29.680496, 34.020012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859573, 29.596476, 33.520531>,  <39.628639, 30.166986, 33.851624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859573, 29.596476, 33.520531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471706, 29.537725, 33.598686>,  <39.238987, 29.502476, 33.645580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471706, 29.537725, 33.598686>,  <39.859573, 29.596476, 33.520531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471706, 29.537725, 33.598686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127442, -0.378315, -0.916862,
		0.208583, -0.913950, 0.348121,
		-0.969666, -0.146876, 0.195386,
		39.180805, 29.493662, 33.657303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738361, 28.871674, 33.259460>,  <39.859573, 29.596476, 33.520531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738361, 28.871674, 33.259460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.375748, 29.035282, 33.301205>,  <39.158180, 29.133448, 33.326252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.375748, 29.035282, 33.301205>,  <39.738361, 28.871674, 33.259460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375748, 29.035282, 33.301205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274216, -0.382665, -0.882255,
		-0.320921, -0.828416, 0.459060,
		-0.906540, 0.409015, 0.104360,
		39.103786, 29.157988, 33.332512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230656, 28.386919, 33.196323>,  <39.738361, 28.871674, 33.259460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230656, 28.386919, 33.196323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095299, 28.742870, 33.073944>,  <39.014084, 28.956440, 33.000515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095299, 28.742870, 33.073944>,  <39.230656, 28.386919, 33.196323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095299, 28.742870, 33.073944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273786, -0.404174, -0.872745,
		-0.900294, -0.211568, 0.380407,
		-0.338396, 0.889878, -0.305952,
		38.993778, 29.009834, 32.982159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.592571, 28.180304, 32.757568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686115, 28.557510, 32.662888>,  <38.742241, 28.783834, 32.606079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686115, 28.557510, 32.662888>,  <38.592571, 28.180304, 32.757568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686115, 28.557510, 32.662888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191823, -0.193919, -0.962081,
		-0.953159, 0.270402, 0.135542,
		0.233864, 0.943016, -0.236705,
		38.756275, 28.840416, 32.591877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134541, 28.409466, 32.307404>,  <38.592571, 28.180304, 32.757568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134541, 28.409466, 32.307404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423691, 28.677416, 32.239616>,  <38.597183, 28.838186, 32.198944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423691, 28.677416, 32.239616>,  <38.134541, 28.409466, 32.307404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423691, 28.677416, 32.239616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088200, -0.153794, -0.984158,
		-0.685324, 0.726373, -0.052092,
		0.722877, 0.669873, -0.169465,
		38.640553, 28.878378, 32.188778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831867, 28.781919, 31.743876>,  <38.134541, 28.409466, 32.307404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831867, 28.781919, 31.743876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214985, 28.896862, 31.747021>,  <38.444855, 28.965828, 31.748907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214985, 28.896862, 31.747021>,  <37.831867, 28.781919, 31.743876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214985, 28.896862, 31.747021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004221, 0.013292, -0.999903,
		-0.287433, 0.957732, 0.011518,
		0.957791, 0.287357, 0.007863,
		38.502323, 28.983068, 31.749380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858379, 29.387383, 31.258158>,  <37.831867, 28.781919, 31.743876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858379, 29.387383, 31.258158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243443, 29.289141, 31.303709>,  <38.474480, 29.230196, 31.331039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243443, 29.289141, 31.303709>,  <37.858379, 29.387383, 31.258158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243443, 29.289141, 31.303709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163484, 0.192108, -0.967661,
		0.215786, 0.950144, 0.225087,
		0.962658, -0.245605, 0.113879,
		38.532238, 29.215460, 31.337873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304756, 29.893827, 31.006332>,  <37.858379, 29.387383, 31.258158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304756, 29.893827, 31.006332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522076, 29.558439, 30.989412>,  <38.652470, 29.357206, 30.979259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522076, 29.558439, 30.989412>,  <38.304756, 29.893827, 31.006332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522076, 29.558439, 30.989412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079204, 0.101353, -0.991693,
		0.835793, 0.535437, 0.121476,
		0.543301, -0.838472, -0.042301,
		38.685066, 29.306898, 30.976723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925667, 30.014900, 30.667559>,  <38.304756, 29.893827, 31.006332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925667, 30.014900, 30.667559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902100, 29.618732, 30.617601>,  <38.887959, 29.381031, 30.587627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.902100, 29.618732, 30.617601>,  <38.925667, 30.014900, 30.667559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902100, 29.618732, 30.617601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041104, 0.122597, -0.991605,
		0.997416, -0.063561, 0.033486,
		-0.058922, -0.990419, -0.124893,
		38.884422, 29.321608, 30.580133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386292, 29.778814, 30.123297>,  <38.925667, 30.014900, 30.667559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386292, 29.778814, 30.123297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140629, 29.464025, 30.146904>,  <38.993229, 29.275152, 30.161068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140629, 29.464025, 30.146904>,  <39.386292, 29.778814, 30.123297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140629, 29.464025, 30.146904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075110, -0.132736, -0.988302,
		0.785599, -0.602543, 0.140630,
		-0.614161, -0.786971, 0.059020,
		38.956379, 29.227934, 30.164610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717503, 29.239265, 29.732508>,  <39.386292, 29.778814, 30.123297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717503, 29.239265, 29.732508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331249, 29.142267, 29.769917>,  <39.099499, 29.084068, 29.792362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331249, 29.142267, 29.769917>,  <39.717503, 29.239265, 29.732508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331249, 29.142267, 29.769917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012631, -0.403185, -0.915031,
		0.259598, -0.882404, 0.392392,
		-0.965634, -0.242497, 0.093521,
		39.041557, 29.069519, 29.797974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739441, 28.613129, 29.530785>,  <39.717503, 29.239265, 29.732508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739441, 28.613129, 29.530785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.364174, 28.745413, 29.489861>,  <39.139011, 28.824783, 29.465305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.364174, 28.745413, 29.489861>,  <39.739441, 28.613129, 29.530785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364174, 28.745413, 29.489861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009558, -0.270695, -0.962618,
		-0.346042, -0.904077, 0.250798,
		-0.938170, 0.330709, -0.102313,
		39.082722, 28.844625, 29.459167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418369, 28.094034, 29.030672>,  <39.739441, 28.613129, 29.530785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418369, 28.094034, 29.030672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183853, 28.418074, 29.029663>,  <39.043144, 28.612497, 29.029057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183853, 28.418074, 29.029663>,  <39.418369, 28.094034, 29.030672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183853, 28.418074, 29.029663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099428, 0.068865, -0.992659,
		-0.803978, -0.582235, -0.120921,
		-0.586288, 0.810099, -0.002524,
		39.007965, 28.661104, 29.028906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792725, 27.961651, 28.648676>,  <39.418369, 28.094034, 29.030672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792725, 27.961651, 28.648676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816696, 28.360809, 28.638783>,  <38.831078, 28.600304, 28.632847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816696, 28.360809, 28.638783>,  <38.792725, 27.961651, 28.648676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816696, 28.360809, 28.638783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036794, -0.026967, -0.998959,
		-0.997524, 0.058956, -0.038333,
		0.059929, 0.997896, -0.024731,
		38.834675, 28.660179, 28.631363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504578, 28.100805, 28.111830>,  <38.792725, 27.961651, 28.648676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504578, 28.100805, 28.111830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701324, 28.445980, 28.158138>,  <38.819374, 28.653086, 28.185923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701324, 28.445980, 28.158138>,  <38.504578, 28.100805, 28.111830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701324, 28.445980, 28.158138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024062, 0.146389, -0.988934,
		-0.870336, 0.483642, 0.092769,
		0.491871, 0.862937, 0.115770,
		38.848885, 28.704861, 28.192869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141785, 28.636703, 27.750500>,  <38.504578, 28.100805, 28.111830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141785, 28.636703, 27.750500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511665, 28.784016, 27.789076>,  <38.733593, 28.872402, 27.812222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511665, 28.784016, 27.789076>,  <38.141785, 28.636703, 27.750500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511665, 28.784016, 27.789076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072302, 0.078817, -0.994264,
		-0.373769, 0.926368, 0.046255,
		0.924699, 0.368281, 0.096438,
		38.789074, 28.894501, 27.818007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166931, 29.056948, 27.231295>,  <38.141785, 28.636703, 27.750500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166931, 29.056948, 27.231295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.554188, 29.021254, 27.324883>,  <38.786541, 28.999836, 27.381035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.554188, 29.021254, 27.324883>,  <38.166931, 29.056948, 27.231295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554188, 29.021254, 27.324883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247070, 0.188309, -0.950524,
		0.040762, 0.978047, 0.204357,
		0.968140, -0.089236, 0.233970,
		38.844631, 28.994482, 27.395073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496750, 29.674355, 26.976395>,  <38.166931, 29.056948, 27.231295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496750, 29.674355, 26.976395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753387, 29.367575, 26.981237>,  <38.907368, 29.183506, 26.984142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753387, 29.367575, 26.981237>,  <38.496750, 29.674355, 26.976395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753387, 29.367575, 26.981237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264465, 0.206368, -0.942056,
		0.720012, 0.607617, 0.335236,
		0.641592, -0.766951, 0.012106,
		38.945866, 29.137489, 26.984869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937977, 29.818569, 26.516932>,  <38.496750, 29.674355, 26.976395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937977, 29.818569, 26.516932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044521, 29.436047, 26.565147>,  <39.108448, 29.206533, 26.594076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044521, 29.436047, 26.565147>,  <38.937977, 29.818569, 26.516932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044521, 29.436047, 26.565147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271851, -0.045447, -0.961265,
		0.924743, 0.288809, 0.247868,
		0.266357, -0.956307, 0.120540,
		39.124428, 29.149155, 26.601309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577393, 29.767799, 26.165686>,  <38.937977, 29.818569, 26.516932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577393, 29.767799, 26.165686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.429279, 29.396784, 26.185930>,  <39.340412, 29.174173, 26.198078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.429279, 29.396784, 26.185930>,  <39.577393, 29.767799, 26.165686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429279, 29.396784, 26.185930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273831, -0.161055, -0.948197,
		0.887643, -0.337238, 0.313624,
		-0.370278, -0.927541, 0.050613,
		39.318195, 29.118521, 26.201115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136066, 29.374527, 25.934269>,  <39.577393, 29.767799, 26.165686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136066, 29.374527, 25.934269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804253, 29.157476, 25.881474>,  <39.605164, 29.027246, 25.849796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804253, 29.157476, 25.881474>,  <40.136066, 29.374527, 25.934269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804253, 29.157476, 25.881474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389578, -0.392956, -0.832956,
		0.400118, -0.742389, 0.537368,
		-0.829539, -0.542627, -0.131989,
		39.555389, 28.994688, 25.841877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359871, 28.676781, 25.918303>,  <40.136066, 29.374527, 25.934269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359871, 28.676781, 25.918303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012299, 28.701351, 25.721863>,  <39.803753, 28.716093, 25.603998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012299, 28.701351, 25.721863>,  <40.359871, 28.676781, 25.918303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012299, 28.701351, 25.721863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457094, -0.280896, -0.843897,
		-0.189783, -0.957771, 0.216004,
		-0.868935, 0.061423, -0.491100,
		39.751617, 28.719778, 25.574533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389969, 28.111124, 25.483938>,  <40.359871, 28.676781, 25.918303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389969, 28.111124, 25.483938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096035, 28.332390, 25.326954>,  <39.919674, 28.465149, 25.232763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096035, 28.332390, 25.326954>,  <40.389969, 28.111124, 25.483938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096035, 28.332390, 25.326954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322985, -0.223421, -0.919654,
		-0.596404, -0.802554, -0.014486,
		-0.734836, 0.553164, -0.392462,
		39.875584, 28.498339, 25.209215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037827, 27.731050, 24.952850>,  <40.389969, 28.111124, 25.483938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037827, 27.731050, 24.952850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973728, 28.114994, 24.860773>,  <39.935268, 28.345360, 24.805527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973728, 28.114994, 24.860773>,  <40.037827, 27.731050, 24.952850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973728, 28.114994, 24.860773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258250, -0.184315, -0.948333,
		-0.952695, -0.211417, -0.218347,
		-0.160249, 0.959859, -0.230195,
		39.925655, 28.402952, 24.791714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629978, 27.717548, 24.413139>,  <40.037827, 27.731050, 24.952850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629978, 27.717548, 24.413139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825123, 28.066700, 24.409822>,  <39.942211, 28.276192, 24.407833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825123, 28.066700, 24.409822>,  <39.629978, 27.717548, 24.413139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825123, 28.066700, 24.409822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111246, -0.071593, -0.991211,
		-0.865803, 0.482652, -0.132032,
		0.487862, 0.872881, -0.008293,
		39.971481, 28.328564, 24.407335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369350, 28.086157, 23.830370>,  <39.629978, 27.717548, 24.413139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369350, 28.086157, 23.830370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733616, 28.219229, 23.928360>,  <39.952175, 28.299072, 23.987154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733616, 28.219229, 23.928360>,  <39.369350, 28.086157, 23.830370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733616, 28.219229, 23.928360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324424, -0.208682, -0.922606,
		-0.255809, 0.919661, -0.297969,
		0.910665, 0.332679, 0.244977,
		40.006817, 28.319033, 24.001854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744102, 28.127211, 23.327684>,  <39.369350, 28.086157, 23.830370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744102, 28.127211, 23.327684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379723, 28.286964, 23.286369>,  <38.161095, 28.382816, 23.261580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379723, 28.286964, 23.286369>,  <38.744102, 28.127211, 23.327684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379723, 28.286964, 23.286369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104367, 0.019110, 0.994355,
		0.399105, 0.916584, 0.024274,
		-0.910946, 0.399385, -0.103288,
		38.106438, 28.406780, 23.255383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616970, 28.721275, 23.810614>,  <38.744102, 28.127211, 23.327684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616970, 28.721275, 23.810614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267685, 28.553379, 23.711563>,  <38.058113, 28.452641, 23.652134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267685, 28.553379, 23.711563>,  <38.616970, 28.721275, 23.810614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267685, 28.553379, 23.711563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291184, 0.041929, 0.955748,
		-0.390785, 0.906675, -0.158835,
		-0.873212, -0.419742, -0.247624,
		38.005722, 28.427456, 23.637276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131584, 29.151968, 24.118876>,  <38.616970, 28.721275, 23.810614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131584, 29.151968, 24.118876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982361, 28.787603, 24.048378>,  <37.892826, 28.568985, 24.006079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982361, 28.787603, 24.048378>,  <38.131584, 29.151968, 24.118876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982361, 28.787603, 24.048378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640247, 0.115266, 0.759472,
		-0.671499, 0.396169, -0.626211,
		-0.373060, -0.910914, -0.176245,
		37.870441, 28.514330, 23.995504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343372, 29.259300, 23.978069>,  <38.131584, 29.151968, 24.118876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343372, 29.259300, 23.978069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385605, 28.882547, 24.105635>,  <37.410946, 28.656496, 24.182175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385605, 28.882547, 24.105635>,  <37.343372, 29.259300, 23.978069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385605, 28.882547, 24.105635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697633, 0.158380, 0.698731,
		-0.708633, -0.296260, -0.640367,
		0.105585, -0.941884, 0.318914,
		37.417282, 28.599981, 24.201309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653534, 28.926342, 24.101719>,  <37.343372, 29.259300, 23.978069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653534, 28.926342, 24.101719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.893311, 28.666193, 24.288347>,  <37.037174, 28.510103, 24.400324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.893311, 28.666193, 24.288347>,  <36.653534, 28.926342, 24.101719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893311, 28.666193, 24.288347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668536, -0.086269, 0.738659,
		-0.440154, -0.754699, -0.486511,
		0.599437, -0.650374, 0.466572,
		37.073143, 28.471081, 24.428318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288258, 28.207340, 24.253050>,  <36.653534, 28.926342, 24.101719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288258, 28.207340, 24.253050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571514, 28.236076, 24.534014>,  <36.741467, 28.253319, 24.702591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571514, 28.236076, 24.534014>,  <36.288258, 28.207340, 24.253050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571514, 28.236076, 24.534014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706027, 0.060763, 0.705573,
		0.008003, -0.995564, 0.093744,
		0.708139, 0.071833, 0.702410,
		36.783955, 28.257629, 24.744736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011074, 27.939461, 24.901867>,  <36.288258, 28.207340, 24.253050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011074, 27.939461, 24.901867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334888, 28.117136, 25.055410>,  <36.529179, 28.223742, 25.147537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334888, 28.117136, 25.055410>,  <36.011074, 27.939461, 24.901867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334888, 28.117136, 25.055410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508635, 0.204166, 0.836425,
		0.293163, -0.872359, 0.391211,
		0.809534, 0.444192, 0.383859,
		36.577747, 28.250393, 25.170568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183273, 27.590042, 25.499187>,  <36.011074, 27.939461, 24.901867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183273, 27.590042, 25.499187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333206, 27.958584, 25.540384>,  <36.423164, 28.179708, 25.565102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333206, 27.958584, 25.540384>,  <36.183273, 27.590042, 25.499187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333206, 27.958584, 25.540384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474413, 0.095175, 0.875142,
		0.796515, -0.376888, 0.472777,
		0.374828, 0.921356, 0.102993,
		36.445656, 28.234991, 25.571281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560493, 27.689608, 26.146837>,  <36.183273, 27.590042, 25.499187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560493, 27.689608, 26.146837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508156, 28.078131, 26.067402>,  <36.476753, 28.311245, 26.019741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508156, 28.078131, 26.067402>,  <36.560493, 27.689608, 26.146837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508156, 28.078131, 26.067402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248677, 0.161753, 0.954985,
		0.959707, 0.174344, 0.220377,
		-0.130849, 0.971309, -0.198590,
		36.468903, 28.369524, 26.007824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746765, 28.025064, 26.784649>,  <36.560493, 27.689608, 26.146837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746765, 28.025064, 26.784649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538586, 28.297163, 26.578196>,  <36.413677, 28.460423, 26.454323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538586, 28.297163, 26.578196>,  <36.746765, 28.025064, 26.784649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538586, 28.297163, 26.578196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392918, 0.345872, 0.852049,
		0.758121, 0.646248, 0.087272,
		-0.520450, 0.680247, -0.516136,
		36.382450, 28.501238, 26.423355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026134, 28.583405, 26.998144>,  <36.746765, 28.025064, 26.784649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026134, 28.583405, 26.998144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634945, 28.627911, 26.927502>,  <36.400230, 28.654613, 26.885117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634945, 28.627911, 26.927502>,  <37.026134, 28.583405, 26.998144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634945, 28.627911, 26.927502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143251, 0.257632, 0.955565,
		0.151821, 0.959815, -0.236018,
		-0.977972, 0.111265, -0.176608,
		36.341553, 28.661289, 26.874519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797253, 29.168808, 27.235739>,  <37.026134, 28.583405, 26.998144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797253, 29.168808, 27.235739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486862, 28.916754, 27.246996>,  <36.300629, 28.765522, 27.253750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486862, 28.916754, 27.246996>,  <36.797253, 29.168808, 27.235739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486862, 28.916754, 27.246996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088209, 0.152585, 0.984346,
		-0.624564, 0.761347, -0.173986,
		-0.775976, -0.630134, 0.028142,
		36.254070, 28.727715, 27.255438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293354, 29.470959, 27.687731>,  <36.797253, 29.168808, 27.235739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293354, 29.470959, 27.687731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244278, 29.074121, 27.677139>,  <36.214832, 28.836020, 27.670784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244278, 29.074121, 27.677139>,  <36.293354, 29.470959, 27.687731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244278, 29.074121, 27.677139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156440, -0.007014, 0.987662,
		-0.980038, 0.125316, -0.154342,
		-0.122687, -0.992092, -0.026478,
		36.207470, 28.776493, 27.669195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893597, 29.314798, 28.181763>,  <36.293354, 29.470959, 27.687731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893597, 29.314798, 28.181763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.051273, 28.950022, 28.136209>,  <36.145882, 28.731155, 28.108877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.051273, 28.950022, 28.136209>,  <35.893597, 29.314798, 28.181763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051273, 28.950022, 28.136209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024222, -0.113564, 0.993236,
		-0.918708, -0.394287, -0.022677,
		0.394195, -0.911944, -0.113883,
		36.169533, 28.676439, 28.102045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626888, 29.032280, 28.776657>,  <35.893597, 29.314798, 28.181763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626888, 29.032280, 28.776657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.921513, 28.790028, 28.656200>,  <36.098289, 28.644676, 28.583925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.921513, 28.790028, 28.656200>,  <35.626888, 29.032280, 28.776657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921513, 28.790028, 28.656200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019167, -0.426368, 0.904347,
		-0.676098, -0.671880, -0.302439,
		0.736563, -0.605630, -0.301144,
		36.142483, 28.608339, 28.565857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473450, 28.396116, 29.021448>,  <35.626888, 29.032280, 28.776657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473450, 28.396116, 29.021448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867081, 28.390739, 28.950558>,  <36.103260, 28.387514, 28.908024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867081, 28.390739, 28.950558>,  <35.473450, 28.396116, 29.021448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867081, 28.390739, 28.950558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153927, -0.434067, 0.887633,
		-0.088856, -0.900780, -0.425087,
		0.984079, -0.013439, -0.177224,
		36.162304, 28.386707, 28.897390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642265, 27.791908, 29.254837>,  <35.473450, 28.396116, 29.021448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642265, 27.791908, 29.254837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017391, 27.929974, 29.240082>,  <36.242466, 28.012812, 29.231230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017391, 27.929974, 29.240082>,  <35.642265, 27.791908, 29.254837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017391, 27.929974, 29.240082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197476, -0.443101, 0.874451,
		0.285483, -0.827360, -0.483710,
		0.937818, 0.345162, -0.036886,
		36.298737, 28.033522, 29.229015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052662, 27.225719, 29.460842>,  <35.642265, 27.791908, 29.254837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052662, 27.225719, 29.460842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263885, 27.558767, 29.527649>,  <36.390621, 27.758596, 29.567734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263885, 27.558767, 29.527649>,  <36.052662, 27.225719, 29.460842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263885, 27.558767, 29.527649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280821, -0.356823, 0.890964,
		0.801431, -0.423581, -0.422242,
		0.528061, 0.832621, 0.167018,
		36.422302, 27.808554, 29.577755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660557, 27.008867, 29.788603>,  <36.052662, 27.225719, 29.460842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660557, 27.008867, 29.788603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622665, 27.393831, 29.890419>,  <36.599930, 27.624809, 29.951509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622665, 27.393831, 29.890419>,  <36.660557, 27.008867, 29.788603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622665, 27.393831, 29.890419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051378, -0.250625, 0.966720,
		0.994176, 0.104655, -0.025706,
		-0.094730, 0.962411, 0.254543,
		36.594246, 27.682554, 29.966782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064224, 27.096954, 30.376886>,  <36.660557, 27.008867, 29.788603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064224, 27.096954, 30.376886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811077, 27.401104, 30.435278>,  <36.659191, 27.583593, 30.470312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811077, 27.401104, 30.435278>,  <37.064224, 27.096954, 30.376886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811077, 27.401104, 30.435278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000563, -0.188087, 0.982152,
		0.774261, 0.621653, 0.118606,
		-0.632866, 0.760375, 0.145979,
		36.621216, 27.629217, 30.479071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349148, 27.487181, 30.930937>,  <37.064224, 27.096954, 30.376886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349148, 27.487181, 30.930937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972408, 27.620401, 30.913023>,  <36.746365, 27.700335, 30.902275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972408, 27.620401, 30.913023>,  <37.349148, 27.487181, 30.930937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972408, 27.620401, 30.913023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011562, 0.165303, 0.986175,
		0.335849, 0.928306, -0.159541,
		-0.941845, 0.333051, -0.044784,
		36.689854, 27.720316, 30.899588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.803787, 29.497398, 35.510181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456913, 29.675110, 35.420193>,  <39.248791, 29.781736, 35.366199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456913, 29.675110, 35.420193>,  <39.803787, 29.497398, 35.510181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456913, 29.675110, 35.420193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159665, 0.179867, 0.970647,
		0.471701, 0.877648, -0.085042,
		-0.867182, 0.444277, -0.224973,
		39.196758, 29.808393, 35.352699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714615, 30.083447, 35.847355>,  <39.803787, 29.497398, 35.510181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714615, 30.083447, 35.847355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.322220, 30.093704, 35.770416>,  <39.086781, 30.099859, 35.724255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.322220, 30.093704, 35.770416>,  <39.714615, 30.083447, 35.847355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322220, 30.093704, 35.770416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147210, 0.547464, 0.823779,
		0.126428, 0.836436, -0.533283,
		-0.980992, 0.025644, -0.192347,
		39.027924, 30.101397, 35.712711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572155, 30.747473, 35.980148>,  <39.714615, 30.083447, 35.847355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572155, 30.747473, 35.980148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237888, 30.527866, 35.986450>,  <39.037331, 30.396103, 35.990231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237888, 30.527866, 35.986450>,  <39.572155, 30.747473, 35.980148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237888, 30.527866, 35.986450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284702, 0.457514, 0.842393,
		-0.469695, 0.699472, -0.538633,
		-0.835662, -0.549017, 0.015751,
		38.987190, 30.363161, 35.991177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992176, 31.255922, 36.147552>,  <39.572155, 30.747473, 35.980148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992176, 31.255922, 36.147552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899376, 30.882294, 36.256130>,  <38.843697, 30.658115, 36.321278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899376, 30.882294, 36.256130>,  <38.992176, 31.255922, 36.147552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899376, 30.882294, 36.256130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281491, 0.331591, 0.900450,
		-0.931096, 0.132492, -0.339862,
		-0.231998, -0.934073, 0.271448,
		38.829777, 30.602072, 36.337566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363873, 31.342810, 36.497307>,  <38.992176, 31.255922, 36.147552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363873, 31.342810, 36.497307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.516033, 30.989870, 36.608124>,  <38.607330, 30.778107, 36.674614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.516033, 30.989870, 36.608124>,  <38.363873, 31.342810, 36.497307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516033, 30.989870, 36.608124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100641, 0.258289, 0.960811,
		-0.919328, -0.393379, 0.009453,
		0.380404, -0.882349, 0.277042,
		38.630154, 30.725164, 36.691235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868668, 31.007078, 36.934147>,  <38.363873, 31.342810, 36.497307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868668, 31.007078, 36.934147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214706, 30.831903, 37.031975>,  <38.422329, 30.726799, 37.090672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214706, 30.831903, 37.031975>,  <37.868668, 31.007078, 36.934147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214706, 30.831903, 37.031975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152035, 0.235707, 0.959858,
		-0.478003, -0.867557, 0.137328,
		0.865101, -0.437936, 0.244568,
		38.474236, 30.700523, 37.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727638, 30.535170, 37.483360>,  <37.868668, 31.007078, 36.934147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727638, 30.535170, 37.483360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.121490, 30.603302, 37.498802>,  <38.357803, 30.644182, 37.508068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.121490, 30.603302, 37.498802>,  <37.727638, 30.535170, 37.483360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121490, 30.603302, 37.498802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089705, 0.303570, 0.948577,
		0.149851, -0.937461, 0.314184,
		0.984631, 0.170329, 0.038605,
		38.416878, 30.654402, 37.510384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904655, 30.216555, 38.099270>,  <37.727638, 30.535170, 37.483360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904655, 30.216555, 38.099270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.211521, 30.455696, 38.006287>,  <38.395641, 30.599180, 37.950497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.211521, 30.455696, 38.006287>,  <37.904655, 30.216555, 38.099270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211521, 30.455696, 38.006287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076377, 0.444948, 0.892294,
		0.636890, -0.666780, 0.387009,
		0.767162, 0.597852, -0.232456,
		38.441669, 30.635052, 37.936550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399868, 30.164110, 38.667500>,  <37.904655, 30.216555, 38.099270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399868, 30.164110, 38.667500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.467949, 30.504896, 38.469437>,  <38.508797, 30.709368, 38.350597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.467949, 30.504896, 38.469437>,  <38.399868, 30.164110, 38.667500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467949, 30.504896, 38.469437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032667, 0.507093, 0.861272,
		0.984867, -0.130418, 0.114142,
		0.170205, 0.851967, -0.495159,
		38.519012, 30.760487, 38.320889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005966, 30.483545, 38.981174>,  <38.399868, 30.164110, 38.667500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005966, 30.483545, 38.981174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.801155, 30.768127, 38.788651>,  <38.678268, 30.938877, 38.673138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.801155, 30.768127, 38.788651>,  <39.005966, 30.483545, 38.981174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801155, 30.768127, 38.788651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075474, 0.595430, 0.799855,
		0.855647, 0.373221, -0.358573,
		-0.512028, 0.711456, -0.481309,
		38.647549, 30.981564, 38.644257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259651, 31.151379, 39.301311>,  <39.005966, 30.483545, 38.981174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259651, 31.151379, 39.301311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.926075, 31.261148, 39.109795>,  <38.725929, 31.327011, 38.994884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.926075, 31.261148, 39.109795>,  <39.259651, 31.151379, 39.301311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926075, 31.261148, 39.109795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274735, 0.545986, 0.791467,
		0.478611, 0.791574, -0.379924,
		-0.833938, 0.274426, -0.478788,
		38.675892, 31.343477, 38.966160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343983, 31.862247, 39.289757>,  <39.259651, 31.151379, 39.301311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343983, 31.862247, 39.289757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.956024, 31.776728, 39.243130>,  <38.723248, 31.725416, 39.215153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.956024, 31.776728, 39.243130>,  <39.343983, 31.862247, 39.289757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956024, 31.776728, 39.243130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213239, 0.514540, 0.830529,
		-0.117587, 0.830385, -0.544641,
		-0.969898, -0.213798, -0.116567,
		38.665054, 31.712589, 39.208160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925701, 32.459743, 39.308830>,  <39.343983, 31.862247, 39.289757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925701, 32.459743, 39.308830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715351, 32.143150, 39.433414>,  <38.589142, 31.953194, 39.508167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715351, 32.143150, 39.433414>,  <38.925701, 32.459743, 39.308830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715351, 32.143150, 39.433414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363625, 0.540237, 0.758895,
		-0.768917, 0.285827, -0.571900,
		-0.525874, -0.791484, 0.311464,
		38.557590, 31.905704, 39.526852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031776, 32.950058, 39.913383>,  <38.925701, 32.459743, 39.308830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031776, 32.950058, 39.913383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.706558, 32.737347, 40.008183>,  <38.511429, 32.609718, 40.065060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.706558, 32.737347, 40.008183>,  <39.031776, 32.950058, 39.913383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706558, 32.737347, 40.008183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172615, 0.168579, 0.970456,
		-0.556024, 0.829933, -0.045268,
		-0.813044, -0.531783, 0.236993,
		38.462646, 32.577812, 40.079281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614288, 33.277870, 39.641289>,  <39.031776, 32.950058, 39.913383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614288, 33.277870, 39.641289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.554646, 33.665577, 39.719555>,  <39.518860, 33.898201, 39.766514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.554646, 33.665577, 39.719555>,  <39.614288, 33.277870, 39.641289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554646, 33.665577, 39.719555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410864, 0.119255, -0.903863,
		-0.899421, -0.215159, 0.380457,
		-0.149103, 0.969270, 0.195662,
		39.509914, 33.956360, 39.778252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921844, 33.523010, 39.381229>,  <39.614288, 33.277870, 39.641289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921844, 33.523010, 39.381229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.124783, 33.863541, 39.434662>,  <39.246548, 34.067860, 39.466721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.124783, 33.863541, 39.434662>,  <38.921844, 33.523010, 39.381229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124783, 33.863541, 39.434662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393739, 0.366899, -0.842826,
		-0.766530, 0.375008, 0.521345,
		0.507347, 0.851325, 0.133584,
		39.276985, 34.118938, 39.474735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501675, 34.035645, 38.931667>,  <38.921844, 33.523010, 39.381229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501675, 34.035645, 38.931667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882572, 34.153324, 38.964378>,  <39.111111, 34.223930, 38.984005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882572, 34.153324, 38.964378>,  <38.501675, 34.035645, 38.931667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882572, 34.153324, 38.964378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049370, 0.412629, -0.909560,
		-0.301335, 0.862081, 0.407447,
		0.952239, 0.294198, 0.081779,
		39.168243, 34.241585, 38.988911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531700, 34.760345, 38.630627>,  <38.501675, 34.035645, 38.931667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531700, 34.760345, 38.630627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899269, 34.603977, 38.609646>,  <39.119812, 34.510155, 38.597057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899269, 34.603977, 38.609646>,  <38.531700, 34.760345, 38.630627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899269, 34.603977, 38.609646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103236, 0.366737, -0.924579,
		0.380678, 0.844205, 0.377362,
		0.918927, -0.390924, -0.052456,
		39.174946, 34.486698, 38.593910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814922, 35.265377, 38.302513>,  <38.531700, 34.760345, 38.630627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814922, 35.265377, 38.302513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060192, 34.953506, 38.251728>,  <39.207355, 34.766384, 38.221256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060192, 34.953506, 38.251728>,  <38.814922, 35.265377, 38.302513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060192, 34.953506, 38.251728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039361, 0.190685, -0.980862,
		0.788963, 0.596446, 0.147613,
		0.613179, -0.779674, -0.126967,
		39.244144, 34.719604, 38.213638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316479, 35.521896, 37.896172>,  <38.814922, 35.265377, 38.302513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316479, 35.521896, 37.896172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326591, 35.127827, 37.828308>,  <39.332657, 34.891384, 37.787590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326591, 35.127827, 37.828308>,  <39.316479, 35.521896, 37.896172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326591, 35.127827, 37.828308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015762, 0.170083, -0.985304,
		0.999556, 0.022233, 0.019828,
		0.025278, -0.985179, -0.169657,
		39.334175, 34.832272, 37.777412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839638, 35.489323, 37.356117>,  <39.316479, 35.521896, 37.896172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839638, 35.489323, 37.356117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637524, 35.144295, 37.345798>,  <39.516254, 34.937279, 37.339607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.637524, 35.144295, 37.345798>,  <39.839638, 35.489323, 37.356117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637524, 35.144295, 37.345798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005972, 0.026399, -0.999634,
		0.862934, -0.505250, -0.008188,
		-0.505281, -0.862569, -0.025798,
		39.485939, 34.885525, 37.338058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236309, 35.023102, 36.877903>,  <39.839638, 35.489323, 37.356117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236309, 35.023102, 36.877903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.852333, 34.911037, 36.880173>,  <39.621948, 34.843800, 36.881535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.852333, 34.911037, 36.880173>,  <40.236309, 35.023102, 36.877903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852333, 34.911037, 36.880173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077224, -0.283971, -0.955718,
		0.269365, -0.916991, 0.294229,
		-0.959937, -0.280159, 0.005678,
		39.564350, 34.826988, 36.881878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248238, 34.438667, 36.504223>,  <40.236309, 35.023102, 36.877903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248238, 34.438667, 36.504223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869198, 34.564087, 36.479740>,  <39.641773, 34.639339, 36.465050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869198, 34.564087, 36.479740>,  <40.248238, 34.438667, 36.504223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869198, 34.564087, 36.479740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001431, -0.187404, -0.982282,
		-0.319468, -0.930894, 0.177135,
		-0.947596, 0.313554, -0.061202,
		39.584919, 34.658154, 36.461380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966656, 34.070438, 35.935413>,  <40.248238, 34.438667, 36.504223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966656, 34.070438, 35.935413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659256, 34.317936, 36.000610>,  <39.474815, 34.466434, 36.039730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659256, 34.317936, 36.000610>,  <39.966656, 34.070438, 35.935413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659256, 34.317936, 36.000610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424368, -0.302228, -0.853563,
		-0.478873, -0.725133, 0.494836,
		-0.768501, 0.618741, 0.162994,
		39.428707, 34.503559, 36.049507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404644, 33.646873, 36.056644>,  <39.966656, 34.070438, 35.935413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404644, 33.646873, 36.056644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281487, 34.002918, 35.922237>,  <39.207592, 34.216545, 35.841595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281487, 34.002918, 35.922237>,  <39.404644, 33.646873, 36.056644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281487, 34.002918, 35.922237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368399, -0.437159, -0.820472,
		-0.877203, -0.128827, 0.462513,
		-0.307891, 0.890110, -0.336017,
		39.189117, 34.269951, 35.821434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701462, 33.520260, 35.711845>,  <39.404644, 33.646873, 36.056644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701462, 33.520260, 35.711845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.807995, 33.881702, 35.577644>,  <38.871914, 34.098568, 35.497124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.807995, 33.881702, 35.577644>,  <38.701462, 33.520260, 35.711845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807995, 33.881702, 35.577644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155934, -0.303099, -0.940114,
		-0.951185, 0.302698, 0.060179,
		0.266331, 0.903606, -0.335505,
		38.887894, 34.152786, 35.476994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164291, 33.823917, 35.185013>,  <38.701462, 33.520260, 35.711845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164291, 33.823917, 35.185013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505783, 34.019936, 35.114594>,  <38.710678, 34.137547, 35.072342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505783, 34.019936, 35.114594>,  <38.164291, 33.823917, 35.185013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505783, 34.019936, 35.114594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141829, -0.106471, -0.984149,
		-0.501022, 0.865170, -0.021395,
		0.853734, 0.490046, -0.176050,
		38.761902, 34.166950, 35.061779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062916, 34.481365, 34.749962>,  <38.164291, 33.823917, 35.185013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062916, 34.481365, 34.749962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436127, 34.344372, 34.705849>,  <38.660053, 34.262177, 34.679382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436127, 34.344372, 34.705849>,  <38.062916, 34.481365, 34.749962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436127, 34.344372, 34.705849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154138, -0.103515, -0.982612,
		0.325117, 0.933802, -0.149372,
		0.933027, -0.342488, -0.110280,
		38.716034, 34.241627, 34.672764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389984, 34.811939, 34.570892>,  <38.062916, 34.481365, 34.749962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389984, 34.811939, 34.570892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010441, 34.723133, 34.481102>,  <36.782715, 34.669849, 34.427227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010441, 34.723133, 34.481102>,  <37.389984, 34.811939, 34.570892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010441, 34.723133, 34.481102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270797, 0.206774, 0.940167,
		-0.162313, 0.952867, -0.256318,
		-0.948854, -0.222012, -0.224472,
		36.725784, 34.656528, 34.413761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891865, 35.378143, 34.891136>,  <37.389984, 34.811939, 34.570892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891865, 35.378143, 34.891136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.649818, 35.065868, 34.828716>,  <36.504589, 34.878502, 34.791264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.649818, 35.065868, 34.828716>,  <36.891865, 35.378143, 34.891136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649818, 35.065868, 34.828716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385240, 0.115593, 0.915548,
		-0.696721, 0.614135, -0.370700,
		-0.605120, -0.780690, -0.156053,
		36.468281, 34.831661, 34.781898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129066, 35.659634, 34.868111>,  <36.891865, 35.378143, 34.891136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129066, 35.659634, 34.868111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.128895, 35.271919, 34.966484>,  <36.128792, 35.039291, 35.025509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.128895, 35.271919, 34.966484>,  <36.129066, 35.659634, 34.868111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128895, 35.271919, 34.966484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561880, 0.203676, 0.801753,
		-0.827219, -0.137842, -0.544710,
		-0.000429, -0.969286, 0.245935,
		36.128765, 34.981133, 35.040264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502453, 35.676983, 35.302269>,  <36.129066, 35.659634, 34.868111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502453, 35.676983, 35.302269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.638123, 35.304955, 35.358727>,  <35.719524, 35.081738, 35.392601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.638123, 35.304955, 35.358727>,  <35.502453, 35.676983, 35.302269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638123, 35.304955, 35.358727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435498, -0.022243, 0.899915,
		-0.833848, -0.366697, -0.412590,
		0.339173, -0.930074, 0.141148,
		35.739876, 35.025932, 35.401070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939983, 35.264103, 35.418880>,  <35.502453, 35.676983, 35.302269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939983, 35.264103, 35.418880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.251221, 35.062115, 35.568325>,  <35.437962, 34.940922, 35.657990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.251221, 35.062115, 35.568325>,  <34.939983, 35.264103, 35.418880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251221, 35.062115, 35.568325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469241, -0.071857, 0.880141,
		-0.417597, -0.860142, -0.292863,
		0.778091, -0.504968, 0.373607,
		35.484650, 34.910625, 35.680408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644440, 34.692612, 35.752304>,  <34.939983, 35.264103, 35.418880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644440, 34.692612, 35.752304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.001698, 34.749557, 35.922962>,  <35.216053, 34.783726, 36.025356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.001698, 34.749557, 35.922962>,  <34.644440, 34.692612, 35.752304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001698, 34.749557, 35.922962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433793, 0.022098, 0.900741,
		0.118809, -0.989567, 0.081495,
		0.893145, 0.142369, 0.426642,
		35.269642, 34.792267, 36.050957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691414, 34.101871, 36.217525>,  <34.644440, 34.692612, 35.752304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691414, 34.101871, 36.217525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.987408, 34.333260, 36.354813>,  <35.165005, 34.472092, 36.437183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.987408, 34.333260, 36.354813>,  <34.691414, 34.101871, 36.217525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987408, 34.333260, 36.354813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373627, -0.070793, 0.924874,
		0.559308, -0.812626, 0.163746,
		0.739984, 0.578469, 0.343214,
		35.209404, 34.506802, 36.457775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054039, 33.743992, 36.659237>,  <34.691414, 34.101871, 36.217525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054039, 33.743992, 36.659237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.138783, 34.117805, 36.773609>,  <35.189629, 34.342094, 36.842232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.138783, 34.117805, 36.773609>,  <35.054039, 33.743992, 36.659237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138783, 34.117805, 36.773609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061300, -0.279285, 0.958249,
		0.975376, -0.220542, -0.001882,
		0.211860, 0.934538, 0.285927,
		35.202339, 34.398167, 36.859386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444248, 33.626076, 37.239140>,  <35.054039, 33.743992, 36.659237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444248, 33.626076, 37.239140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.296658, 33.997818, 37.234257>,  <35.208103, 34.220863, 37.231327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.296658, 33.997818, 37.234257>,  <35.444248, 33.626076, 37.239140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296658, 33.997818, 37.234257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277241, -0.097514, 0.955839,
		0.887127, 0.356065, 0.293637,
		-0.368975, 0.929359, -0.012208,
		35.185966, 34.276627, 37.230595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433697, 33.890347, 37.952583>,  <35.444248, 33.626076, 37.239140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433697, 33.890347, 37.952583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.168095, 34.127399, 37.770203>,  <35.008736, 34.269630, 37.660774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.168095, 34.127399, 37.770203>,  <35.433697, 33.890347, 37.952583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168095, 34.127399, 37.770203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527055, 0.061584, 0.847597,
		0.530390, 0.803117, 0.271456,
		-0.664002, 0.592630, -0.455950,
		34.968895, 34.305187, 37.633419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220867, 34.390118, 38.489784>,  <35.433697, 33.890347, 37.952583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220867, 34.390118, 38.489784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.932808, 34.419292, 38.213795>,  <34.759972, 34.436798, 38.048199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.932808, 34.419292, 38.213795>,  <35.220867, 34.390118, 38.489784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932808, 34.419292, 38.213795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671204, 0.178611, 0.719432,
		0.175711, 0.981213, -0.079670,
		-0.720146, 0.072937, -0.689978,
		34.716763, 34.441174, 38.006802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764202, 34.998352, 38.666061>,  <35.220867, 34.390118, 38.489784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764202, 34.998352, 38.666061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.548466, 34.745312, 38.443737>,  <34.419022, 34.593487, 38.310345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.548466, 34.745312, 38.443737>,  <34.764202, 34.998352, 38.666061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548466, 34.745312, 38.443737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769786, 0.102810, 0.629968,
		-0.341376, 0.767622, -0.542418,
		-0.539344, -0.632602, -0.555808,
		34.386662, 34.555531, 38.276993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.988941, 35.234547, 30.310516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831898, 34.890079, 30.439663>,  <36.737671, 34.683399, 30.517151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831898, 34.890079, 30.439663>,  <36.988941, 35.234547, 30.310516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831898, 34.890079, 30.439663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341493, 0.462455, 0.818241,
		-0.853957, 0.210991, -0.475647,
		-0.392607, -0.861172, 0.322865,
		36.714115, 34.631729, 30.536522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521641, 35.459671, 30.784925>,  <36.988941, 35.234547, 30.310516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521641, 35.459671, 30.784925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586250, 35.074760, 30.872499>,  <36.625015, 34.843815, 30.925043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586250, 35.074760, 30.872499>,  <36.521641, 35.459671, 30.784925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586250, 35.074760, 30.872499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091077, 0.206364, 0.974227,
		-0.982656, -0.177305, -0.054308,
		0.161528, -0.962277, 0.218934,
		36.634708, 34.786076, 30.938179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002327, 35.296036, 31.383774>,  <36.521641, 35.459671, 30.784925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002327, 35.296036, 31.383774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280254, 35.008465, 31.391516>,  <36.447010, 34.835922, 31.396162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280254, 35.008465, 31.391516>,  <36.002327, 35.296036, 31.383774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280254, 35.008465, 31.391516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047353, 0.072588, 0.996237,
		-0.717624, -0.691288, 0.084479,
		0.694819, -0.718924, 0.019357,
		36.488701, 34.792789, 31.397324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723637, 34.863422, 31.808680>,  <36.002327, 35.296036, 31.383774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723637, 34.863422, 31.808680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117237, 34.793102, 31.820211>,  <36.353397, 34.750908, 31.827131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117237, 34.793102, 31.820211>,  <35.723637, 34.863422, 31.808680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117237, 34.793102, 31.820211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048217, -0.107015, 0.993088,
		-0.171504, -0.978591, -0.113780,
		0.984003, -0.175804, 0.028831,
		36.412437, 34.740360, 31.828861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854851, 34.254658, 32.201813>,  <35.723637, 34.863422, 31.808680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854851, 34.254658, 32.201813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221386, 34.413223, 32.224407>,  <36.441307, 34.508362, 32.237965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221386, 34.413223, 32.224407>,  <35.854851, 34.254658, 32.201813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221386, 34.413223, 32.224407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055021, -0.264375, 0.962849,
		0.396616, -0.879184, -0.264066,
		0.916334, 0.396411, 0.056482,
		36.496284, 34.532146, 32.241352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212494, 33.762157, 32.627029>,  <35.854851, 34.254658, 32.201813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212494, 33.762157, 32.627029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440319, 34.090496, 32.644009>,  <36.577015, 34.287498, 32.654198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440319, 34.090496, 32.644009>,  <36.212494, 33.762157, 32.627029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440319, 34.090496, 32.644009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198670, -0.187597, 0.961945,
		0.797574, -0.539458, -0.269927,
		0.569566, 0.820848, 0.042449,
		36.611191, 34.336750, 32.656742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803104, 33.627865, 33.025982>,  <36.212494, 33.762157, 32.627029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803104, 33.627865, 33.025982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710777, 34.016296, 33.050396>,  <36.655380, 34.249355, 33.065044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710777, 34.016296, 33.050396>,  <36.803104, 33.627865, 33.025982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710777, 34.016296, 33.050396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037928, -0.071660, 0.996708,
		0.972259, 0.227739, 0.053371,
		-0.230813, 0.971082, 0.061035,
		36.641533, 34.307621, 33.068707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940510, 33.715439, 33.714397>,  <36.803104, 33.627865, 33.025982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940510, 33.715439, 33.714397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777515, 34.073601, 33.642609>,  <36.679718, 34.288498, 33.599537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777515, 34.073601, 33.642609>,  <36.940510, 33.715439, 33.714397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777515, 34.073601, 33.642609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008065, 0.192987, 0.981168,
		0.913177, 0.401257, -0.071417,
		-0.407483, 0.895404, -0.179468,
		36.655270, 34.342220, 33.588768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452415, 34.205318, 33.954445>,  <36.940510, 33.715439, 33.714397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452415, 34.205318, 33.954445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073727, 34.332901, 33.972279>,  <36.846516, 34.409451, 33.982979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073727, 34.332901, 33.972279>,  <37.452415, 34.205318, 33.954445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073727, 34.332901, 33.972279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058977, 0.035596, 0.997625,
		0.316614, 0.947100, -0.052510,
		-0.946719, 0.318958, 0.044587,
		36.789711, 34.428589, 33.985653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156013, 34.603115, 34.043434>,  <37.452415, 34.205318, 33.954445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156013, 34.603115, 34.043434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467876, 34.379898, 34.157074>,  <38.654995, 34.245968, 34.225258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467876, 34.379898, 34.157074>,  <38.156013, 34.603115, 34.043434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467876, 34.379898, 34.157074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164636, -0.255061, -0.952806,
		0.604174, 0.789638, -0.106986,
		0.779660, -0.558046, 0.284104,
		38.701775, 34.212482, 34.242306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611851, 34.756458, 33.533718>,  <38.156013, 34.603115, 34.043434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611851, 34.756458, 33.533718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786232, 34.430164, 33.685783>,  <38.890862, 34.234386, 33.777023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786232, 34.430164, 33.685783>,  <38.611851, 34.756458, 33.533718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786232, 34.430164, 33.685783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253708, -0.293885, -0.921555,
		0.863468, 0.498205, 0.078838,
		0.435954, -0.815735, 0.380159,
		38.917019, 34.185444, 33.799831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301537, 34.653019, 33.266464>,  <38.611851, 34.756458, 33.533718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301537, 34.653019, 33.266464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206303, 34.279652, 33.373829>,  <39.149162, 34.055630, 33.438248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206303, 34.279652, 33.373829>,  <39.301537, 34.653019, 33.266464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206303, 34.279652, 33.373829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336531, -0.338522, -0.878721,
		0.911079, -0.118878, 0.394720,
		-0.238082, -0.933419, 0.268414,
		39.134876, 33.999626, 33.454353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902435, 34.202766, 33.212109>,  <39.301537, 34.653019, 33.266464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902435, 34.202766, 33.212109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564964, 33.996857, 33.151157>,  <39.362480, 33.873310, 33.114586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564964, 33.996857, 33.151157>,  <39.902435, 34.202766, 33.212109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564964, 33.996857, 33.151157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456555, -0.538669, -0.708091,
		0.282425, -0.666969, 0.689484,
		-0.843678, -0.514770, -0.152374,
		39.311859, 33.842426, 33.105446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213520, 33.656937, 33.040115>,  <39.902435, 34.202766, 33.212109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213520, 33.656937, 33.040115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844193, 33.594788, 32.899632>,  <39.622597, 33.557499, 32.815342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844193, 33.594788, 32.899632>,  <40.213520, 33.656937, 33.040115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844193, 33.594788, 32.899632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369881, -0.605822, -0.704391,
		-0.103325, -0.780281, 0.616835,
		-0.923316, -0.155374, -0.351208,
		39.567200, 33.548176, 32.794270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288414, 33.018108, 32.727188>,  <40.213520, 33.656937, 33.040115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288414, 33.018108, 32.727188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943775, 33.164482, 32.586483>,  <39.736992, 33.252308, 32.502060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943775, 33.164482, 32.586483>,  <40.288414, 33.018108, 32.727188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943775, 33.164482, 32.586483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115534, -0.533434, -0.837914,
		-0.494263, -0.762588, 0.417329,
		-0.861601, 0.365934, -0.351762,
		39.685295, 33.274261, 32.480953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017754, 32.409290, 32.454601>,  <40.288414, 33.018108, 32.727188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017754, 32.409290, 32.454601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813438, 32.710266, 32.288261>,  <39.690849, 32.890854, 32.188457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813438, 32.710266, 32.288261>,  <40.017754, 32.409290, 32.454601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813438, 32.710266, 32.288261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093564, -0.432180, -0.896920,
		-0.854601, -0.497043, 0.150350,
		-0.510786, 0.752442, -0.415847,
		39.660202, 32.935997, 32.163506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624142, 32.095516, 31.973005>,  <40.017754, 32.409290, 32.454601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624142, 32.095516, 31.973005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607895, 32.477699, 31.856071>,  <39.598148, 32.707008, 31.785912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607895, 32.477699, 31.856071>,  <39.624142, 32.095516, 31.973005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607895, 32.477699, 31.856071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149709, -0.283453, -0.947229,
		-0.987896, -0.082238, -0.131527,
		-0.040616, 0.955454, -0.292333,
		39.595711, 32.764336, 31.768372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047363, 32.195610, 31.553219>,  <39.624142, 32.095516, 31.973005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047363, 32.195610, 31.553219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313473, 32.477703, 31.455185>,  <39.473137, 32.646957, 31.396364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313473, 32.477703, 31.455185>,  <39.047363, 32.195610, 31.553219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313473, 32.477703, 31.455185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011007, -0.318966, -0.947702,
		-0.746519, 0.633178, -0.204437,
		0.665273, 0.705228, -0.245083,
		39.513054, 32.689270, 31.381660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776569, 32.393253, 30.788393>,  <39.047363, 32.195610, 31.553219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776569, 32.393253, 30.788393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150917, 32.518734, 30.852581>,  <39.375526, 32.594021, 30.891094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150917, 32.518734, 30.852581>,  <38.776569, 32.393253, 30.788393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150917, 32.518734, 30.852581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238622, -0.229154, -0.943688,
		-0.259261, 0.921457, -0.289312,
		0.935865, 0.313698, 0.160469,
		39.431675, 32.612843, 30.900723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866856, 32.799923, 30.207142>,  <38.776569, 32.393253, 30.788393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866856, 32.799923, 30.207142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214966, 32.693714, 30.373087>,  <39.423832, 32.629990, 30.472654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214966, 32.693714, 30.373087>,  <38.866856, 32.799923, 30.207142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214966, 32.693714, 30.373087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274706, -0.437460, -0.856251,
		0.408840, 0.859143, -0.307772,
		0.870280, -0.265522, 0.414863,
		39.476051, 32.614056, 30.497545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260326, 32.901531, 29.725620>,  <38.866856, 32.799923, 30.207142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260326, 32.901531, 29.725620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507820, 32.697361, 29.964495>,  <39.656315, 32.574860, 30.107821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507820, 32.697361, 29.964495>,  <39.260326, 32.901531, 29.725620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507820, 32.697361, 29.964495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421545, -0.425749, -0.800648,
		0.662922, 0.747131, -0.048259,
		0.618735, -0.510424, 0.597188,
		39.693439, 32.544235, 30.143652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938488, 33.013954, 29.537767>,  <39.260326, 32.901531, 29.725620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938488, 33.013954, 29.537767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922058, 32.658989, 29.721420>,  <39.912201, 32.446011, 29.831612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922058, 32.658989, 29.721420>,  <39.938488, 33.013954, 29.537767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922058, 32.658989, 29.721420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381356, -0.438659, -0.813724,
		0.923515, 0.141668, 0.356441,
		-0.041078, -0.887417, 0.459134,
		39.909737, 32.392765, 29.859159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624226, 32.687477, 29.441214>,  <39.938488, 33.013954, 29.537767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624226, 32.687477, 29.441214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387104, 32.379219, 29.534754>,  <40.244831, 32.194263, 29.590878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387104, 32.379219, 29.534754>,  <40.624226, 32.687477, 29.441214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387104, 32.379219, 29.534754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397464, -0.532504, -0.747303,
		0.700433, -0.350057, 0.621975,
		-0.592803, -0.770649, 0.233848,
		40.209263, 32.148026, 29.604908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.139137, 28.033388, 29.149420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.376179, 28.351788, 29.198761>,  <33.518402, 28.542828, 29.228365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.376179, 28.351788, 29.198761>,  <33.139137, 28.033388, 29.149420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376179, 28.351788, 29.198761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138018, -0.050532, 0.989140,
		0.793585, -0.603188, 0.079917,
		0.592599, 0.795997, 0.123352,
		33.553959, 28.590586, 29.235767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727886, 27.875423, 29.618513>,  <33.139137, 28.033388, 29.149420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727886, 27.875423, 29.618513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687511, 28.273346, 29.623825>,  <33.663288, 28.512098, 29.627012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687511, 28.273346, 29.623825>,  <33.727886, 27.875423, 29.618513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687511, 28.273346, 29.623825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016839, -0.015054, 0.999745,
		0.994750, 0.100684, 0.018271,
		-0.100934, 0.994804, 0.013280,
		33.657230, 28.571787, 29.627810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146873, 28.064329, 30.162064>,  <33.727886, 27.875423, 29.618513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146873, 28.064329, 30.162064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.920189, 28.390736, 30.116547>,  <33.784176, 28.586580, 30.089237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.920189, 28.390736, 30.116547>,  <34.146873, 28.064329, 30.162064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920189, 28.390736, 30.116547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027114, 0.156508, 0.987305,
		0.823468, 0.556434, -0.110821,
		-0.566714, 0.816018, -0.113792,
		33.750175, 28.635542, 30.082409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490108, 28.631401, 30.491291>,  <34.146873, 28.064329, 30.162064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490108, 28.631401, 30.491291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.123161, 28.786800, 30.456650>,  <33.902992, 28.880039, 30.435865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.123161, 28.786800, 30.456650>,  <34.490108, 28.631401, 30.491291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123161, 28.786800, 30.456650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032699, 0.143281, 0.989142,
		0.396686, 0.910242, -0.118738,
		-0.917372, 0.388497, -0.086602,
		33.847950, 28.903349, 30.430670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475819, 29.353313, 30.670687>,  <34.490108, 28.631401, 30.491291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475819, 29.353313, 30.670687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.093166, 29.254494, 30.732433>,  <33.863575, 29.195202, 30.769482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.093166, 29.254494, 30.732433>,  <34.475819, 29.353313, 30.670687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093166, 29.254494, 30.732433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067145, 0.328639, 0.942066,
		-0.283469, 0.911572, -0.297797,
		-0.956628, -0.247051, 0.154366,
		33.806179, 29.180378, 30.778744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310478, 29.876503, 31.075726>,  <34.475819, 29.353313, 30.670687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310478, 29.876503, 31.075726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.005856, 29.621550, 31.122660>,  <33.823082, 29.468578, 31.150820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.005856, 29.621550, 31.122660>,  <34.310478, 29.876503, 31.075726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005856, 29.621550, 31.122660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090906, 0.284314, 0.954412,
		-0.641686, 0.716177, -0.274464,
		-0.761561, -0.637383, 0.117336,
		33.777386, 29.430334, 31.157860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653549, 30.240662, 31.336226>,  <34.310478, 29.876503, 31.075726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653549, 30.240662, 31.336226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682175, 29.857214, 31.446444>,  <33.699352, 29.627146, 31.512575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682175, 29.857214, 31.446444>,  <33.653549, 30.240662, 31.336226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682175, 29.857214, 31.446444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017030, 0.275039, 0.961282,
		-0.997290, -0.073488, 0.003358,
		0.071566, -0.958620, 0.275545,
		33.703644, 29.569628, 31.529106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342999, 30.190447, 32.006378>,  <33.653549, 30.240662, 31.336226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342999, 30.190447, 32.006378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.501377, 29.823151, 32.009399>,  <33.596405, 29.602772, 32.011211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.501377, 29.823151, 32.009399>,  <33.342999, 30.190447, 32.006378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501377, 29.823151, 32.009399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085795, 0.045185, 0.995288,
		-0.914256, -0.393435, 0.096672,
		0.395949, -0.918241, 0.007556,
		33.620163, 29.547678, 32.011665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910286, 29.711880, 32.425705>,  <33.342999, 30.190447, 32.006378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910286, 29.711880, 32.425705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.283302, 29.567457, 32.424934>,  <33.507111, 29.480804, 32.424473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.283302, 29.567457, 32.424934>,  <32.910286, 29.711880, 32.425705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283302, 29.567457, 32.424934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045609, -0.123097, 0.991346,
		-0.358170, -0.924384, -0.131261,
		0.932542, -0.361057, -0.001929,
		33.563065, 29.459141, 32.424355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924038, 29.088703, 32.810104>,  <32.910286, 29.711880, 32.425705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924038, 29.088703, 32.810104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.315163, 29.171978, 32.800728>,  <33.549835, 29.221943, 32.795101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.315163, 29.171978, 32.800728>,  <32.924038, 29.088703, 32.810104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315163, 29.171978, 32.800728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086143, -0.297515, 0.950823,
		0.190974, -0.931742, -0.308847,
		0.977808, 0.208187, -0.023446,
		33.608505, 29.234434, 32.793694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294395, 28.591797, 33.269405>,  <32.924038, 29.088703, 32.810104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294395, 28.591797, 33.269405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566685, 28.882504, 33.232677>,  <33.730057, 29.056929, 33.210640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566685, 28.882504, 33.232677>,  <33.294395, 28.591797, 33.269405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566685, 28.882504, 33.232677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185928, -0.050175, 0.981282,
		0.708557, -0.685048, -0.169281,
		0.680718, 0.726768, -0.091817,
		33.770901, 29.100534, 33.205132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824528, 28.344442, 33.649696>,  <33.294395, 28.591797, 33.269405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824528, 28.344442, 33.649696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870430, 28.739851, 33.610394>,  <33.897972, 28.977097, 33.586811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870430, 28.739851, 33.610394>,  <33.824528, 28.344442, 33.649696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870430, 28.739851, 33.610394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182095, 0.076300, 0.980316,
		0.976561, -0.130392, -0.171249,
		0.114760, 0.988522, -0.098255,
		33.904858, 29.036407, 33.580917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298496, 28.536177, 34.109604>,  <33.824528, 28.344442, 33.649696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298496, 28.536177, 34.109604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.110649, 28.884434, 34.051029>,  <33.997940, 29.093388, 34.015884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.110649, 28.884434, 34.051029>,  <34.298496, 28.536177, 34.109604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110649, 28.884434, 34.051029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012702, 0.172510, 0.984926,
		0.882778, 0.460679, -0.092072,
		-0.469618, 0.870640, -0.146437,
		33.969765, 29.145626, 34.007099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601429, 29.065916, 34.576809>,  <34.298496, 28.536177, 34.109604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601429, 29.065916, 34.576809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.253342, 29.242973, 34.490284>,  <34.044491, 29.349207, 34.438370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.253342, 29.242973, 34.490284>,  <34.601429, 29.065916, 34.576809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253342, 29.242973, 34.490284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017146, 0.466014, 0.884611,
		0.492372, 0.766094, -0.413123,
		-0.870216, 0.442641, -0.216317,
		33.992275, 29.375765, 34.425388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313053, 29.342377, 34.500427>,  <34.601429, 29.065916, 34.576809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313053, 29.342377, 34.500427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.635418, 29.121216, 34.585098>,  <35.828835, 28.988520, 34.635902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.635418, 29.121216, 34.585098>,  <35.313053, 29.342377, 34.500427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635418, 29.121216, 34.585098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031724, -0.397357, -0.917116,
		0.591188, 0.732397, -0.337774,
		0.805910, -0.552904, 0.211678,
		35.877190, 28.955345, 34.648602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657372, 29.354332, 33.927990>,  <35.313053, 29.342377, 34.500427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657372, 29.354332, 33.927990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.809013, 29.044785, 34.130932>,  <35.899998, 28.859056, 34.252697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.809013, 29.044785, 34.130932>,  <35.657372, 29.354332, 33.927990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809013, 29.044785, 34.130932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191201, -0.470937, -0.861197,
		0.905385, 0.423489, -0.030569,
		0.379103, -0.773870, 0.507351,
		35.922745, 28.812624, 34.283138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234924, 29.245907, 33.527905>,  <35.657372, 29.354332, 33.927990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234924, 29.245907, 33.527905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.118073, 28.915703, 33.721062>,  <36.047962, 28.717581, 33.836956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.118073, 28.915703, 33.721062>,  <36.234924, 29.245907, 33.527905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118073, 28.915703, 33.721062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122717, -0.533105, -0.837102,
		0.948472, -0.185285, 0.257042,
		-0.292133, -0.825511, 0.482898,
		36.030434, 28.668049, 33.865932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771347, 28.872080, 33.382423>,  <36.234924, 29.245907, 33.527905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771347, 28.872080, 33.382423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475422, 28.624136, 33.487080>,  <36.297867, 28.475370, 33.549873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475422, 28.624136, 33.487080>,  <36.771347, 28.872080, 33.382423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475422, 28.624136, 33.487080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191176, -0.566508, -0.801574,
		0.645082, -0.542995, 0.537611,
		-0.739812, -0.619859, 0.261636,
		36.253479, 28.438179, 33.565571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994434, 28.232956, 33.168274>,  <36.771347, 28.872080, 33.382423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994434, 28.232956, 33.168274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601646, 28.172602, 33.213840>,  <36.365974, 28.136389, 33.241180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601646, 28.172602, 33.213840>,  <36.994434, 28.232956, 33.168274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601646, 28.172602, 33.213840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040973, -0.418371, -0.907352,
		0.184566, -0.895656, 0.404643,
		-0.981966, -0.150887, 0.113914,
		36.307056, 28.127337, 33.248016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959270, 27.489346, 33.079060>,  <36.994434, 28.232956, 33.168274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959270, 27.489346, 33.079060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615631, 27.675198, 32.993206>,  <36.409447, 27.786709, 32.941692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.615631, 27.675198, 32.993206>,  <36.959270, 27.489346, 33.079060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615631, 27.675198, 32.993206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085354, -0.283430, -0.955187,
		-0.504645, -0.838918, 0.203836,
		-0.859097, 0.464632, -0.214637,
		36.357903, 27.814587, 32.928814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537247, 26.976864, 32.651718>,  <36.959270, 27.489346, 33.079060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537247, 26.976864, 32.651718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393566, 27.344131, 32.584858>,  <36.307358, 27.564493, 32.544743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393566, 27.344131, 32.584858>,  <36.537247, 26.976864, 32.651718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393566, 27.344131, 32.584858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003900, -0.180577, -0.983553,
		-0.933253, -0.352639, 0.068444,
		-0.359198, 0.918171, -0.167149,
		36.285805, 27.619583, 32.534714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984032, 26.939983, 32.194653>,  <36.537247, 26.976864, 32.651718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984032, 26.939983, 32.194653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076683, 27.327703, 32.161648>,  <36.132275, 27.560335, 32.141846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.076683, 27.327703, 32.161648>,  <35.984032, 26.939983, 32.194653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076683, 27.327703, 32.161648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060662, -0.070260, -0.995683,
		-0.970910, 0.235637, 0.042525,
		0.231632, 0.969298, -0.082510,
		36.146172, 27.618492, 32.136894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550972, 27.105608, 31.657440>,  <35.984032, 26.939983, 32.194653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550972, 27.105608, 31.657440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.849358, 27.369576, 31.693316>,  <36.028389, 27.527956, 31.714842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.849358, 27.369576, 31.693316>,  <35.550972, 27.105608, 31.657440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849358, 27.369576, 31.693316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018045, 0.114595, -0.993248,
		-0.665741, 0.742547, 0.073576,
		0.745965, 0.659918, 0.089689,
		36.073147, 27.567551, 31.720222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405586, 27.521812, 31.006935>,  <35.550972, 27.105608, 31.657440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405586, 27.521812, 31.006935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.779781, 27.606651, 31.119984>,  <36.004299, 27.657555, 31.187813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.779781, 27.606651, 31.119984>,  <35.405586, 27.521812, 31.006935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779781, 27.606651, 31.119984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182198, 0.395769, -0.900095,
		-0.302759, 0.893523, 0.331594,
		0.935490, 0.212096, 0.282621,
		36.060429, 27.670280, 31.204769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522278, 28.179138, 30.978220>,  <35.405586, 27.521812, 31.006935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522278, 28.179138, 30.978220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.894855, 28.040792, 30.932976>,  <36.118401, 27.957785, 30.905828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.894855, 28.040792, 30.932976>,  <35.522278, 28.179138, 30.978220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894855, 28.040792, 30.932976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021768, 0.363240, -0.931441,
		0.363240, 0.865121, 0.345866,
		0.931441, -0.345866, -0.113111,
		36.174290, 27.937033, 30.899042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802593, 28.689196, 30.608875>,  <35.522278, 28.179138, 30.978220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802593, 28.689196, 30.608875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045429, 28.373796, 30.569448>,  <36.191132, 28.184557, 30.545792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045429, 28.373796, 30.569448>,  <35.802593, 28.689196, 30.608875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045429, 28.373796, 30.569448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347811, 0.375201, -0.859216,
		0.714471, 0.487338, 0.502028,
		0.607090, -0.788496, -0.098569,
		36.227554, 28.137247, 30.539877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431583, 28.942413, 30.375097>,  <35.802593, 28.689196, 30.608875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431583, 28.942413, 30.375097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.453892, 28.563656, 30.248426>,  <36.467278, 28.336401, 30.172424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.453892, 28.563656, 30.248426>,  <36.431583, 28.942413, 30.375097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453892, 28.563656, 30.248426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189420, 0.321447, -0.927789,
		0.980311, -0.008238, 0.197289,
		0.055775, -0.946892, -0.316678,
		36.470623, 28.279589, 30.153423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025227, 28.962563, 29.831730>,  <36.431583, 28.942413, 30.375097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025227, 28.962563, 29.831730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.849609, 28.609621, 29.763977>,  <36.744240, 28.397856, 29.723326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.849609, 28.609621, 29.763977>,  <37.025227, 28.962563, 29.831730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849609, 28.609621, 29.763977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004468, 0.186375, -0.982469,
		0.898455, -0.432103, -0.077885,
		-0.439044, -0.882355, -0.169380,
		36.717896, 28.344913, 29.713163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833294, 28.714176, 29.808310>,  <37.025227, 28.962563, 29.831730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833294, 28.714176, 29.808310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.219208, 28.819382, 29.809542>,  <38.450756, 28.882505, 29.810282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.219208, 28.819382, 29.809542>,  <37.833294, 28.714176, 29.808310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219208, 28.819382, 29.809542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061749, -0.237860, 0.969335,
		0.255682, -0.935011, -0.245725,
		0.964787, 0.263015, 0.003081,
		38.508644, 28.898287, 29.810467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126125, 28.276213, 30.253511>,  <37.833294, 28.714176, 29.808310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126125, 28.276213, 30.253511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398293, 28.566910, 30.215822>,  <38.561592, 28.741329, 30.193209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398293, 28.566910, 30.215822>,  <38.126125, 28.276213, 30.253511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398293, 28.566910, 30.215822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283433, -0.142407, 0.948360,
		0.675797, -0.671984, -0.302879,
		0.680415, 0.726744, -0.094224,
		38.602417, 28.784933, 30.187555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760593, 28.023790, 30.585367>,  <38.126125, 28.276213, 30.253511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760593, 28.023790, 30.585367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768341, 28.423029, 30.561943>,  <38.772991, 28.662573, 30.547888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768341, 28.423029, 30.561943>,  <38.760593, 28.023790, 30.585367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768341, 28.423029, 30.561943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154554, 0.054879, 0.986459,
		0.987794, -0.028157, -0.153197,
		0.019368, 0.998096, -0.058561,
		38.774151, 28.722458, 30.544374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400658, 28.242912, 30.881187>,  <38.760593, 28.023790, 30.585367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400658, 28.242912, 30.881187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.175373, 28.569769, 30.930304>,  <39.040203, 28.765882, 30.959772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.175373, 28.569769, 30.930304>,  <39.400658, 28.242912, 30.881187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175373, 28.569769, 30.930304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273139, 0.043858, 0.960974,
		0.779865, 0.574768, -0.247894,
		-0.563210, 0.817140, 0.122788,
		39.006409, 28.814911, 30.967140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630207, 28.545908, 31.499859>,  <39.400658, 28.242912, 30.881187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630207, 28.545908, 31.499859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302898, 28.769848, 31.447706>,  <39.106514, 28.904213, 31.416414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302898, 28.769848, 31.447706>,  <39.630207, 28.545908, 31.499859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302898, 28.769848, 31.447706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065872, 0.134001, 0.988789,
		0.571047, 0.817686, -0.072770,
		-0.818270, 0.559852, -0.130384,
		39.057419, 28.937803, 31.408590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773136, 29.181664, 31.774748>,  <39.630207, 28.545908, 31.499859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773136, 29.181664, 31.774748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378922, 29.113874, 31.775440>,  <39.142395, 29.073202, 31.775856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378922, 29.113874, 31.775440>,  <39.773136, 29.181664, 31.774748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378922, 29.113874, 31.775440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031989, 0.196035, 0.980075,
		-0.166434, 0.965842, -0.198620,
		-0.985534, -0.169471, 0.001730,
		39.083260, 29.063032, 31.775959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541531, 29.760464, 32.185875>,  <39.773136, 29.181664, 31.774748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541531, 29.760464, 32.185875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257038, 29.479382, 32.178318>,  <39.086342, 29.310732, 32.173786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257038, 29.479382, 32.178318>,  <39.541531, 29.760464, 32.185875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257038, 29.479382, 32.178318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337842, 0.318130, 0.885808,
		-0.616454, 0.636394, -0.463667,
		-0.711229, -0.702706, -0.018888,
		39.043671, 29.268570, 32.172653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842564, 30.116505, 32.249332>,  <39.541531, 29.760464, 32.185875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842564, 30.116505, 32.249332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843887, 29.733431, 32.364452>,  <38.844681, 29.503586, 32.433525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843887, 29.733431, 32.364452>,  <38.842564, 30.116505, 32.249332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843887, 29.733431, 32.364452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050528, 0.287271, 0.956516,
		-0.998717, -0.017706, -0.047439,
		0.003308, -0.957686, 0.287797,
		38.844879, 29.446125, 32.450790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423683, 30.125904, 32.748268>,  <38.842564, 30.116505, 32.249332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423683, 30.125904, 32.748268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590126, 29.770432, 32.825317>,  <38.689991, 29.557148, 32.871548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590126, 29.770432, 32.825317>,  <38.423683, 30.125904, 32.748268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590126, 29.770432, 32.825317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194432, 0.119985, 0.973550,
		-0.888288, -0.442549, -0.122862,
		0.416102, -0.888681, 0.192627,
		38.714958, 29.503828, 32.883106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098663, 29.924648, 33.333103>,  <38.423683, 30.125904, 32.748268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098663, 29.924648, 33.333103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396336, 29.657461, 33.331242>,  <38.574940, 29.497149, 33.330124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396336, 29.657461, 33.331242>,  <38.098663, 29.924648, 33.333103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396336, 29.657461, 33.331242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105838, 0.111036, 0.988165,
		-0.659544, -0.735862, 0.153327,
		0.744178, -0.667966, -0.004649,
		38.619591, 29.457071, 33.329845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910133, 29.426865, 33.878841>,  <38.098663, 29.924648, 33.333103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910133, 29.426865, 33.878841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304382, 29.419756, 33.811623>,  <38.540932, 29.415491, 33.771290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304382, 29.419756, 33.811623>,  <37.910133, 29.426865, 33.878841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304382, 29.419756, 33.811623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166757, -0.058573, 0.984257,
		-0.027329, -0.998125, -0.054768,
		0.985619, -0.017766, -0.168045,
		38.600067, 29.414423, 33.761208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164463, 28.901197, 34.377235>,  <37.910133, 29.426865, 33.878841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164463, 28.901197, 34.377235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471466, 29.129690, 34.260876>,  <38.655670, 29.266787, 34.191059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471466, 29.129690, 34.260876>,  <38.164463, 28.901197, 34.377235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471466, 29.129690, 34.260876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277439, 0.113088, 0.954064,
		0.577890, -0.812960, -0.071686,
		0.767509, 0.571233, -0.290899,
		38.701717, 29.301060, 34.173607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713181, 28.616196, 34.645477>,  <38.164463, 28.901197, 34.377235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713181, 28.616196, 34.645477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807999, 29.000603, 34.588547>,  <38.864891, 29.231247, 34.554390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807999, 29.000603, 34.588547>,  <38.713181, 28.616196, 34.645477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807999, 29.000603, 34.588547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154327, 0.107393, 0.982166,
		0.959162, -0.254784, -0.122854,
		0.237046, 0.961016, -0.142328,
		38.879112, 29.288908, 34.545849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165043, 28.826689, 35.196102>,  <38.713181, 28.616196, 34.645477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165043, 28.826689, 35.196102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047298, 29.186493, 35.066963>,  <38.976650, 29.402376, 34.989479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047298, 29.186493, 35.066963>,  <39.165043, 28.826689, 35.196102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047298, 29.186493, 35.066963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086718, 0.361561, 0.928307,
		0.951752, 0.245261, -0.184433,
		-0.294362, 0.899511, -0.322848,
		38.958988, 29.456347, 34.970108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.200729, 31.870230, 29.540457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832832, 31.713245, 29.537745>,  <40.612095, 31.619055, 29.536118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832832, 31.713245, 29.537745>,  <41.200729, 31.870230, 29.540457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832832, 31.713245, 29.537745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176941, -0.399121, -0.899664,
		0.350376, -0.828660, 0.436531,
		-0.919744, -0.392461, -0.006782,
		40.556908, 31.595507, 29.535709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136345, 31.049978, 29.534575>,  <41.200729, 31.870230, 29.540457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136345, 31.049978, 29.534575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812977, 31.208303, 29.360315>,  <40.618958, 31.303299, 29.255760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812977, 31.208303, 29.360315>,  <41.136345, 31.049978, 29.534575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812977, 31.208303, 29.360315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119368, -0.614506, -0.779829,
		-0.576370, -0.682434, 0.449535,
		-0.808424, 0.395810, -0.435644,
		40.570450, 31.327047, 29.229622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744663, 30.427162, 29.243908>,  <41.136345, 31.049978, 29.534575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744663, 30.427162, 29.243908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.617661, 30.752848, 29.049486>,  <40.541458, 30.948259, 28.932833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.617661, 30.752848, 29.049486>,  <40.744663, 30.427162, 29.243908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617661, 30.752848, 29.049486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063807, -0.493071, -0.867646,
		-0.946107, -0.306496, 0.104600,
		-0.317505, 0.814212, -0.486055,
		40.522408, 30.997110, 28.903669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236317, 30.149815, 28.713881>,  <40.744663, 30.427162, 29.243908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236317, 30.149815, 28.713881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361530, 30.521029, 28.633120>,  <40.436657, 30.743757, 28.584663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361530, 30.521029, 28.633120>,  <40.236317, 30.149815, 28.713881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361530, 30.521029, 28.633120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079368, -0.237403, -0.968164,
		-0.946420, 0.287044, -0.147972,
		0.313034, 0.928033, -0.201901,
		40.455441, 30.799438, 28.572550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979080, 30.229246, 28.016428>,  <40.236317, 30.149815, 28.713881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979080, 30.229246, 28.016428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214695, 30.549253, 28.062052>,  <40.356064, 30.741259, 28.089426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214695, 30.549253, 28.062052>,  <39.979080, 30.229246, 28.016428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214695, 30.549253, 28.062052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081079, 0.081926, -0.993335,
		-0.804031, 0.594356, -0.016608,
		0.589034, 0.800018, 0.114061,
		40.391407, 30.789259, 28.096270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765892, 30.751999, 27.496210>,  <39.979080, 30.229246, 28.016428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765892, 30.751999, 27.496210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146725, 30.797125, 27.609919>,  <40.375225, 30.824200, 27.678144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146725, 30.797125, 27.609919>,  <39.765892, 30.751999, 27.496210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146725, 30.797125, 27.609919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292340, -0.062599, -0.954263,
		-0.089859, 0.991642, -0.092580,
		0.952083, 0.112814, 0.284272,
		40.432350, 30.830969, 27.695200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979710, 31.250898, 27.123135>,  <39.765892, 30.751999, 27.496210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979710, 31.250898, 27.123135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.314392, 31.076124, 27.255198>,  <40.515202, 30.971260, 27.334435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.314392, 31.076124, 27.255198>,  <39.979710, 31.250898, 27.123135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314392, 31.076124, 27.255198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462954, 0.242274, -0.852629,
		0.292555, 0.866251, 0.404994,
		0.836711, -0.436935, 0.330156,
		40.565407, 30.945044, 27.354244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604076, 31.771259, 26.962393>,  <39.979710, 31.250898, 27.123135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604076, 31.771259, 26.962393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748161, 31.399282, 26.991936>,  <40.834614, 31.176096, 27.009663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748161, 31.399282, 26.991936>,  <40.604076, 31.771259, 26.962393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748161, 31.399282, 26.991936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240547, 0.016094, -0.970504,
		0.901324, 0.367353, 0.229493,
		0.360211, -0.929942, 0.073860,
		40.856224, 31.120300, 27.014093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249737, 31.790348, 26.710552>,  <40.604076, 31.771259, 26.962393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249737, 31.790348, 26.710552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.132252, 31.411068, 26.662142>,  <41.061760, 31.183500, 26.633097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.132252, 31.411068, 26.662142>,  <41.249737, 31.790348, 26.710552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132252, 31.411068, 26.662142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357477, 0.008464, -0.933884,
		0.886533, -0.317561, 0.336474,
		-0.293717, -0.948200, -0.121024,
		41.044136, 31.126608, 26.625834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796944, 31.532583, 26.334417>,  <41.249737, 31.790348, 26.710552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796944, 31.532583, 26.334417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.494846, 31.276205, 26.279581>,  <41.313587, 31.122377, 26.246679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.494846, 31.276205, 26.279581>,  <41.796944, 31.532583, 26.334417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494846, 31.276205, 26.279581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241787, -0.078032, -0.967187,
		0.609218, -0.763608, 0.213906,
		-0.755243, -0.640948, -0.137092,
		41.268272, 31.083921, 26.238453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088242, 31.086639, 25.837521>,  <41.796944, 31.532583, 26.334417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088242, 31.086639, 25.837521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691174, 31.040215, 25.851023>,  <41.452934, 31.012360, 25.859123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691174, 31.040215, 25.851023>,  <42.088242, 31.086639, 25.837521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691174, 31.040215, 25.851023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003899, -0.248378, -0.968655,
		0.120808, -0.961685, 0.246105,
		-0.992668, -0.116062, 0.033755,
		41.393372, 31.005396, 25.861149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884586, 30.404230, 25.653040>,  <42.088242, 31.086639, 25.837521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884586, 30.404230, 25.653040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.601685, 30.677898, 25.581820>,  <41.431942, 30.842100, 25.539087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.601685, 30.677898, 25.581820>,  <41.884586, 30.404230, 25.653040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601685, 30.677898, 25.581820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047594, -0.205203, -0.977562,
		-0.705355, -0.699859, 0.112568,
		-0.707254, 0.684171, -0.178050,
		41.389507, 30.883150, 25.528404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331161, 29.994406, 25.233171>,  <41.884586, 30.404230, 25.653040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331161, 29.994406, 25.233171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.309265, 30.393320, 25.213478>,  <41.296127, 30.632669, 25.201662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.309265, 30.393320, 25.213478>,  <41.331161, 29.994406, 25.233171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309265, 30.393320, 25.213478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141736, -0.056569, -0.988287,
		-0.988390, -0.047119, 0.144448,
		-0.054738, 0.997286, -0.049233,
		41.292843, 30.692507, 25.198708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767494, 30.201714, 24.629147>,  <41.331161, 29.994406, 25.233171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767494, 30.201714, 24.629147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.963554, 30.545435, 24.687597>,  <41.081192, 30.751667, 24.722668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.963554, 30.545435, 24.687597>,  <40.767494, 30.201714, 24.629147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963554, 30.545435, 24.687597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375808, 0.359603, -0.854081,
		-0.786461, 0.363713, 0.499191,
		0.490151, 0.859302, 0.146127,
		41.110600, 30.803225, 24.731436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418629, 29.522114, 24.506845>,  <40.767494, 30.201714, 24.629147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418629, 29.522114, 24.506845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.243576, 29.167850, 24.444769>,  <40.138542, 28.955292, 24.407524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.243576, 29.167850, 24.444769>,  <40.418629, 29.522114, 24.506845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243576, 29.167850, 24.444769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652633, 0.194159, 0.732374,
		-0.618502, 0.421796, -0.662981,
		-0.437636, -0.885658, -0.155191,
		40.112286, 28.902153, 24.398212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670639, 29.636780, 24.558180>,  <40.418629, 29.522114, 24.506845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670639, 29.636780, 24.558180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732380, 29.246796, 24.622213>,  <39.769424, 29.012804, 24.660633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732380, 29.246796, 24.622213>,  <39.670639, 29.636780, 24.558180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732380, 29.246796, 24.622213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649346, 0.022019, 0.760174,
		-0.744666, -0.221281, -0.629689,
		0.154348, -0.974962, 0.160085,
		39.778683, 28.954308, 24.670238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020081, 29.198093, 24.600796>,  <39.670639, 29.636780, 24.558180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020081, 29.198093, 24.600796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290047, 28.979662, 24.799307>,  <39.452026, 28.848602, 24.918413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290047, 28.979662, 24.799307>,  <39.020081, 29.198093, 24.600796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290047, 28.979662, 24.799307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624237, -0.063904, 0.778617,
		-0.393472, -0.835293, -0.384012,
		0.674914, -0.546078, 0.496276,
		39.492519, 28.815838, 24.948191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561089, 28.757544, 24.980742>,  <39.020081, 29.198093, 24.600796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561089, 28.757544, 24.980742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.921421, 28.723463, 25.151037>,  <39.137619, 28.703014, 25.253214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.921421, 28.723463, 25.151037>,  <38.561089, 28.757544, 24.980742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921421, 28.723463, 25.151037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411143, 0.147758, 0.899516,
		-0.139547, -0.985347, 0.098074,
		0.900826, -0.085202, 0.425738,
		39.191669, 28.697903, 25.278759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523739, 28.266853, 25.539165>,  <38.561089, 28.757544, 24.980742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523739, 28.266853, 25.539165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.856640, 28.465477, 25.637779>,  <39.056381, 28.584652, 25.696947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.856640, 28.465477, 25.637779>,  <38.523739, 28.266853, 25.539165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856640, 28.465477, 25.637779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321048, 0.069140, 0.944536,
		0.451975, -0.865243, 0.216962,
		0.832254, 0.496562, 0.246535,
		39.106316, 28.614445, 25.711740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749924, 27.964390, 26.203278>,  <38.523739, 28.266853, 25.539165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749924, 27.964390, 26.203278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.931198, 28.320940, 26.199917>,  <39.039963, 28.534870, 26.197901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.931198, 28.320940, 26.199917>,  <38.749924, 27.964390, 26.203278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931198, 28.320940, 26.199917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028445, -0.005037, 0.999583,
		0.890964, -0.453233, -0.027638,
		0.453183, 0.891378, -0.008404,
		39.067154, 28.588354, 26.197395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351810, 27.899099, 26.632338>,  <38.749924, 27.964390, 26.203278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351810, 27.899099, 26.632338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266514, 28.289873, 26.627748>,  <39.215336, 28.524338, 26.624996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266514, 28.289873, 26.627748>,  <39.351810, 27.899099, 26.632338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266514, 28.289873, 26.627748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013177, 0.014616, 0.999806,
		0.976911, 0.213049, -0.015990,
		-0.213241, 0.976932, -0.011471,
		39.202541, 28.582952, 26.624308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880093, 28.202410, 27.046125>,  <39.351810, 27.899099, 26.632338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880093, 28.202410, 27.046125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.582058, 28.468822, 27.031998>,  <39.403236, 28.628670, 27.023521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.582058, 28.468822, 27.031998>,  <39.880093, 28.202410, 27.046125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582058, 28.468822, 27.031998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052962, 0.111867, 0.992311,
		0.664863, 0.737486, -0.118625,
		-0.745085, 0.666033, -0.035317,
		39.358532, 28.668633, 27.021402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025814, 28.590681, 27.642792>,  <39.880093, 28.202410, 27.046125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025814, 28.590681, 27.642792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.654068, 28.717045, 27.566397>,  <39.431019, 28.792862, 27.520559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.654068, 28.717045, 27.566397>,  <40.025814, 28.590681, 27.642792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654068, 28.717045, 27.566397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196805, 0.013701, 0.980347,
		0.312317, 0.948691, 0.049440,
		-0.929368, 0.315909, -0.190986,
		39.375256, 28.811817, 27.509100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974491, 29.313660, 27.985878>,  <40.025814, 28.590681, 27.642792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974491, 29.313660, 27.985878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.597820, 29.192793, 27.926634>,  <39.371819, 29.120274, 27.891088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.597820, 29.192793, 27.926634>,  <39.974491, 29.313660, 27.985878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597820, 29.192793, 27.926634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183839, 0.093293, 0.978519,
		-0.281857, 0.948679, -0.143402,
		-0.941679, -0.302165, -0.148109,
		39.315315, 29.102144, 27.882202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651859, 29.698690, 28.418730>,  <39.974491, 29.313660, 27.985878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651859, 29.698690, 28.418730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.384197, 29.410406, 28.346281>,  <39.223598, 29.237434, 28.302811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.384197, 29.410406, 28.346281>,  <39.651859, 29.698690, 28.418730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384197, 29.410406, 28.346281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262515, 0.001237, 0.964927,
		-0.695210, 0.693234, -0.190025,
		-0.669155, -0.720712, -0.181124,
		39.183449, 29.194193, 28.291945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986008, 29.935947, 28.680105>,  <39.651859, 29.698690, 28.418730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986008, 29.935947, 28.680105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946712, 29.538044, 28.668758>,  <38.923134, 29.299301, 28.661949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946712, 29.538044, 28.668758>,  <38.986008, 29.935947, 28.680105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946712, 29.538044, 28.668758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227864, -0.005266, 0.973679,
		-0.968725, 0.102115, -0.226152,
		-0.098237, -0.994759, -0.028369,
		38.917240, 29.239616, 28.660248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297817, 29.690304, 28.811520>,  <38.986008, 29.935947, 28.680105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297817, 29.690304, 28.811520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514488, 29.369072, 28.910833>,  <38.644489, 29.176332, 28.970423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514488, 29.369072, 28.910833>,  <38.297817, 29.690304, 28.811520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514488, 29.369072, 28.910833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312473, 0.081831, 0.946396,
		-0.780350, -0.590224, -0.206615,
		0.541678, -0.803081, 0.248286,
		38.676991, 29.128147, 28.985319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885315, 29.282616, 29.314047>,  <38.297817, 29.690304, 28.811520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885315, 29.282616, 29.314047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.260983, 29.152370, 29.357761>,  <38.486382, 29.074223, 29.383989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.260983, 29.152370, 29.357761>,  <37.885315, 29.282616, 29.314047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260983, 29.152370, 29.357761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144203, -0.085028, 0.985888,
		-0.311729, -0.941671, -0.126810,
		0.939165, -0.325616, 0.109286,
		38.542732, 29.054686, 29.390547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347946, 28.774729, 29.120821>,  <37.885315, 29.282616, 29.314047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347946, 28.774729, 29.120821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031727, 28.534811, 29.170277>,  <36.841995, 28.390862, 29.199951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031727, 28.534811, 29.170277>,  <37.347946, 28.774729, 29.120821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031727, 28.534811, 29.170277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137686, -0.022649, -0.990217,
		0.596726, -0.799834, -0.064678,
		-0.790544, -0.599794, 0.123641,
		36.794563, 28.354874, 29.207369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429573, 28.197676, 28.616249>,  <37.347946, 28.774729, 29.120821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429573, 28.197676, 28.616249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.039536, 28.221584, 28.701677>,  <36.805511, 28.235929, 28.752934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.039536, 28.221584, 28.701677>,  <37.429573, 28.197676, 28.616249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039536, 28.221584, 28.701677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207038, 0.099870, -0.973222,
		-0.079501, -0.993204, -0.085007,
		-0.975098, 0.059772, 0.213570,
		36.747005, 28.239515, 28.765749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031822, 27.756126, 28.133249>,  <37.429573, 28.197676, 28.616249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031822, 27.756126, 28.133249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.752708, 27.998343, 28.286304>,  <36.585239, 28.143673, 28.378138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.752708, 27.998343, 28.286304>,  <37.031822, 27.756126, 28.133249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752708, 27.998343, 28.286304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464556, 0.024035, -0.885217,
		-0.545233, -0.795450, 0.264537,
		-0.697788, 0.605543, 0.382636,
		36.543373, 28.180006, 28.401094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470524, 27.425835, 27.897661>,  <37.031822, 27.756126, 28.133249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470524, 27.425835, 27.897661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377300, 27.808592, 27.966990>,  <36.321365, 28.038246, 28.008587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377300, 27.808592, 27.966990>,  <36.470524, 27.425835, 27.897661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377300, 27.808592, 27.966990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302790, 0.097967, -0.948009,
		-0.924123, -0.273420, 0.266906,
		-0.233057, 0.956893, 0.173323,
		36.307384, 28.095659, 28.018986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779720, 27.536201, 27.464830>,  <36.470524, 27.425835, 27.897661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779720, 27.536201, 27.464830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932972, 27.897146, 27.543779>,  <36.024925, 28.113712, 27.591148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932972, 27.897146, 27.543779>,  <35.779720, 27.536201, 27.464830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932972, 27.897146, 27.543779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183732, 0.283857, -0.941099,
		-0.905236, 0.324302, 0.274547,
		0.383132, 0.902360, 0.197373,
		36.047913, 28.167854, 27.602991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237457, 27.872097, 27.098612>,  <35.779720, 27.536201, 27.464830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237457, 27.872097, 27.098612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551907, 28.111187, 27.161530>,  <35.740574, 28.254641, 27.199280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551907, 28.111187, 27.161530>,  <35.237457, 27.872097, 27.098612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551907, 28.111187, 27.161530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044880, 0.309019, -0.949996,
		-0.616442, 0.739752, 0.269752,
		0.786120, 0.597725, 0.157292,
		35.787743, 28.290504, 27.208717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172260, 28.581881, 26.877092>,  <35.237457, 27.872097, 27.098612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172260, 28.581881, 26.877092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.562187, 28.494808, 26.857725>,  <35.796143, 28.442564, 26.846106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.562187, 28.494808, 26.857725>,  <35.172260, 28.581881, 26.877092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562187, 28.494808, 26.857725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010131, 0.260124, -0.965522,
		0.222772, 0.940718, 0.255779,
		0.974818, -0.217682, -0.048418,
		35.854633, 28.429504, 26.843201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638756, 29.181091, 26.759579>,  <35.172260, 28.581881, 26.877092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638756, 29.181091, 26.759579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245819, 29.168161, 26.685865>,  <35.010056, 29.160404, 26.641638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245819, 29.168161, 26.685865>,  <35.638756, 29.181091, 26.759579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245819, 29.168161, 26.685865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167218, -0.290133, 0.942264,
		-0.083924, 0.956440, 0.279604,
		-0.982342, -0.032323, -0.184283,
		34.951118, 29.158464, 26.630581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366810, 29.645870, 27.216887>,  <35.638756, 29.181091, 26.759579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366810, 29.645870, 27.216887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057537, 29.411362, 27.120163>,  <34.871975, 29.270657, 27.062128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057537, 29.411362, 27.120163>,  <35.366810, 29.645870, 27.216887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057537, 29.411362, 27.120163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205365, -0.129286, 0.970109,
		-0.600011, 0.799731, -0.020438,
		-0.773183, -0.586273, -0.241809,
		34.825581, 29.235479, 27.047621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807972, 29.921883, 27.700794>,  <35.366810, 29.645870, 27.216887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807972, 29.921883, 27.700794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631931, 29.590607, 27.561991>,  <34.526306, 29.391842, 27.478708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631931, 29.590607, 27.561991>,  <34.807972, 29.921883, 27.700794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631931, 29.590607, 27.561991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494016, -0.099393, 0.863753,
		-0.749842, 0.551564, -0.365396,
		-0.440097, -0.828190, -0.347010,
		34.499901, 29.342150, 27.457888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102154, 29.990562, 27.887758>,  <34.807972, 29.921883, 27.700794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102154, 29.990562, 27.887758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154491, 29.600967, 27.813755>,  <34.185894, 29.367210, 27.769354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154491, 29.600967, 27.813755>,  <34.102154, 29.990562, 27.887758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154491, 29.600967, 27.813755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407895, -0.222974, 0.885384,
		-0.903604, -0.040387, -0.426461,
		0.130848, -0.973988, -0.185007,
		34.193745, 29.308771, 27.758253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472538, 29.768419, 27.985888>,  <34.102154, 29.990562, 27.887758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472538, 29.768419, 27.985888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714764, 29.452417, 28.024233>,  <33.860100, 29.262817, 28.047241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714764, 29.452417, 28.024233>,  <33.472538, 29.768419, 27.985888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714764, 29.452417, 28.024233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540051, -0.319481, 0.778638,
		-0.584499, -0.523286, -0.620107,
		0.605563, -0.790003, 0.095864,
		33.896431, 29.215416, 28.052992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022167, 29.215670, 28.186411>,  <33.472538, 29.768419, 27.985888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022167, 29.215670, 28.186411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375683, 29.072578, 28.307045>,  <33.587791, 28.986723, 28.379425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375683, 29.072578, 28.307045>,  <33.022167, 29.215670, 28.186411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375683, 29.072578, 28.307045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401262, -0.247964, 0.881761,
		-0.240640, -0.900306, -0.362687,
		0.883788, -0.357720, 0.301589,
		33.640820, 28.965260, 28.397520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927502, 28.469675, 28.556044>,  <33.022167, 29.215670, 28.186411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927502, 28.469675, 28.556044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.280910, 28.618835, 28.669422>,  <33.492954, 28.708332, 28.737450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.280910, 28.618835, 28.669422>,  <32.927502, 28.469675, 28.556044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280910, 28.618835, 28.669422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305961, 0.001261, 0.952043,
		0.354662, -0.927870, 0.115208,
		0.883517, 0.372902, 0.283444,
		33.545967, 28.730705, 28.754456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.686237, 30.407251, 24.853485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031551, 30.490961, 25.037197>,  <38.238739, 30.541187, 25.147425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031551, 30.490961, 25.037197>,  <37.686237, 30.407251, 24.853485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031551, 30.490961, 25.037197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498536, 0.495483, 0.711308,
		-0.078707, -0.843031, 0.532075,
		0.863289, 0.209274, 0.459279,
		38.290539, 30.553743, 25.174980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516483, 30.391495, 25.595503>,  <37.686237, 30.407251, 24.853485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516483, 30.391495, 25.595503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871418, 30.575636, 25.584835>,  <38.084377, 30.686121, 25.578434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.871418, 30.575636, 25.584835>,  <37.516483, 30.391495, 25.595503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871418, 30.575636, 25.584835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279728, 0.583350, 0.762533,
		0.366591, -0.669162, 0.646400,
		0.887335, 0.460354, -0.026668,
		38.137619, 30.713743, 25.576834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937500, 30.210379, 26.200703>,  <37.516483, 30.391495, 25.595503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937500, 30.210379, 26.200703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018475, 30.573721, 26.054331>,  <38.067059, 30.791727, 25.966507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018475, 30.573721, 26.054331>,  <37.937500, 30.210379, 26.200703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018475, 30.573721, 26.054331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258565, 0.409986, 0.874675,
		0.944544, -0.082450, 0.317866,
		0.202437, 0.908357, -0.365931,
		38.079205, 30.846228, 25.944551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129490, 30.553278, 26.739553>,  <37.937500, 30.210379, 26.200703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129490, 30.553278, 26.739553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.078030, 30.863995, 26.492962>,  <38.047153, 31.050425, 26.345007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.078030, 30.863995, 26.492962>,  <38.129490, 30.553278, 26.739553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078030, 30.863995, 26.492962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176188, 0.593851, 0.785047,
		0.975913, 0.209612, 0.060463,
		-0.128649, 0.776791, -0.616478,
		38.039436, 31.097033, 26.308018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659397, 30.990669, 26.887812>,  <38.129490, 30.553278, 26.739553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659397, 30.990669, 26.887812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.347553, 31.181965, 26.726076>,  <38.160446, 31.296741, 26.629034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.347553, 31.181965, 26.726076>,  <38.659397, 30.990669, 26.887812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347553, 31.181965, 26.726076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014507, 0.631680, 0.775094,
		0.626092, 0.610140, -0.485528,
		-0.779614, 0.478237, -0.404341,
		38.113670, 31.325436, 26.604774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757248, 31.569302, 27.124714>,  <38.659397, 30.990669, 26.887812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757248, 31.569302, 27.124714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.379505, 31.617773, 27.002394>,  <38.152859, 31.646856, 26.929001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.379505, 31.617773, 27.002394>,  <38.757248, 31.569302, 27.124714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379505, 31.617773, 27.002394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121805, 0.734752, 0.667310,
		0.305552, 0.667424, -0.679104,
		-0.944352, 0.121179, -0.305801,
		38.096199, 31.654127, 26.910654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573505, 32.208195, 27.514608>,  <38.757248, 31.569302, 27.124714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573505, 32.208195, 27.514608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.223644, 32.121708, 27.341064>,  <38.013729, 32.069817, 27.236938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.223644, 32.121708, 27.341064>,  <38.573505, 32.208195, 27.514608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223644, 32.121708, 27.341064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442947, 0.720083, 0.534114,
		0.196929, 0.659341, -0.725596,
		-0.874653, -0.216218, -0.433858,
		37.961250, 32.056843, 27.210907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311432, 32.858395, 27.271816>,  <38.573505, 32.208195, 27.514608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311432, 32.858395, 27.271816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.023357, 32.592022, 27.349657>,  <37.850513, 32.432198, 27.396360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.023357, 32.592022, 27.349657>,  <38.311432, 32.858395, 27.271816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023357, 32.592022, 27.349657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423615, 0.644222, 0.636812,
		-0.549438, 0.376188, -0.746057,
		-0.720187, -0.665929, 0.194601,
		37.807301, 32.392242, 27.408037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637157, 33.164909, 27.142241>,  <38.311432, 32.858395, 27.271816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637157, 33.164909, 27.142241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.590244, 32.876202, 27.415091>,  <37.562096, 32.702976, 27.578800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.590244, 32.876202, 27.415091>,  <37.637157, 33.164909, 27.142241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590244, 32.876202, 27.415091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257590, 0.685468, 0.681014,
		-0.959110, -0.095835, -0.266316,
		-0.117287, -0.721768, 0.682125,
		37.555058, 32.659672, 27.619728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915585, 33.284882, 27.437668>,  <37.637157, 33.164909, 27.142241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915585, 33.284882, 27.437668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.092819, 33.058029, 27.715385>,  <37.199158, 32.921917, 27.882015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.092819, 33.058029, 27.715385>,  <36.915585, 33.284882, 27.437668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092819, 33.058029, 27.715385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410179, 0.560396, 0.719520,
		-0.797140, -0.603591, 0.015678,
		0.443082, -0.567127, 0.694295,
		37.225742, 32.887890, 27.923674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483944, 33.296238, 27.920761>,  <36.915585, 33.284882, 27.437668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483944, 33.296238, 27.920761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.803131, 33.145107, 28.108587>,  <36.994644, 33.054428, 28.221283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.803131, 33.145107, 28.108587>,  <36.483944, 33.296238, 27.920761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803131, 33.145107, 28.108587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378778, 0.291629, 0.878339,
		-0.468802, -0.878747, 0.089597,
		0.797968, -0.377830, 0.469566,
		37.042522, 33.031757, 28.249456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266766, 32.867146, 28.504416>,  <36.483944, 33.296238, 27.920761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266766, 32.867146, 28.504416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.647224, 32.935394, 28.607342>,  <36.875500, 32.976341, 28.669098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.647224, 32.935394, 28.607342>,  <36.266766, 32.867146, 28.504416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647224, 32.935394, 28.607342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303291, 0.360392, 0.882118,
		0.057772, -0.917064, 0.394532,
		0.951145, 0.170619, 0.257317,
		36.932568, 32.986580, 28.684536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905014, 32.217533, 28.683090>,  <36.266766, 32.867146, 28.504416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905014, 32.217533, 28.683090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.568909, 32.338692, 28.503216>,  <35.367245, 32.411388, 28.395290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.568909, 32.338692, 28.503216>,  <35.905014, 32.217533, 28.683090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568909, 32.338692, 28.503216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385153, -0.250287, -0.888264,
		-0.381602, -0.919571, 0.093645,
		-0.840260, 0.302896, -0.449686,
		35.316830, 32.429562, 28.368311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769764, 31.676239, 28.026405>,  <35.905014, 32.217533, 28.683090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769764, 31.676239, 28.026405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.517567, 31.981695, 27.970781>,  <35.366249, 32.164967, 27.937407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.517567, 31.981695, 27.970781>,  <35.769764, 31.676239, 28.026405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517567, 31.981695, 27.970781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233400, 0.015652, -0.972255,
		-0.740275, -0.645454, -0.188101,
		-0.630490, 0.763639, -0.139062,
		35.328419, 32.210785, 27.929062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351826, 31.451580, 27.416117>,  <35.769764, 31.676239, 28.026405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351826, 31.451580, 27.416117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.300213, 31.847626, 27.438101>,  <35.269245, 32.085255, 27.451290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.300213, 31.847626, 27.438101>,  <35.351826, 31.451580, 27.416117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300213, 31.847626, 27.438101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078905, 0.044995, -0.995866,
		-0.988496, -0.132833, 0.072319,
		-0.129030, 0.990117, 0.054958,
		35.261505, 32.144661, 27.454588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666859, 31.626139, 26.997541>,  <35.351826, 31.451580, 27.416117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666859, 31.626139, 26.997541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.909126, 31.941660, 27.039419>,  <35.054485, 32.130974, 27.064547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.909126, 31.941660, 27.039419>,  <34.666859, 31.626139, 26.997541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909126, 31.941660, 27.039419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091565, 0.061609, -0.993891,
		-0.790434, 0.611551, -0.034912,
		0.605665, 0.788802, 0.104695,
		35.090824, 32.178299, 27.070827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383171, 32.055676, 26.577284>,  <34.666859, 31.626139, 26.997541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383171, 32.055676, 26.577284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.728893, 32.246063, 26.642302>,  <34.936329, 32.360298, 26.681313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.728893, 32.246063, 26.642302>,  <34.383171, 32.055676, 26.577284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728893, 32.246063, 26.642302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011523, 0.341828, -0.939692,
		-0.502829, 0.810311, 0.300930,
		0.864309, 0.475972, 0.162543,
		34.988186, 32.388855, 26.691065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277927, 32.719700, 26.315317>,  <34.383171, 32.055676, 26.577284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277927, 32.719700, 26.315317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.664711, 32.617954, 26.308424>,  <34.896782, 32.556908, 26.304287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.664711, 32.617954, 26.308424>,  <34.277927, 32.719700, 26.315317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664711, 32.617954, 26.308424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040423, 0.219709, -0.974728,
		0.251721, 0.941821, 0.222731,
		0.966955, -0.254363, -0.017234,
		34.954796, 32.541645, 26.303253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613064, 33.218452, 25.888483>,  <34.277927, 32.719700, 26.315317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613064, 33.218452, 25.888483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921036, 32.964191, 25.910959>,  <35.105820, 32.811634, 25.924444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921036, 32.964191, 25.910959>,  <34.613064, 33.218452, 25.888483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921036, 32.964191, 25.910959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312710, 0.299075, -0.901536,
		0.556260, 0.711687, 0.429041,
		0.769927, -0.635654, 0.056188,
		35.152012, 32.773495, 25.927816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363453, 33.590050, 25.788776>,  <34.613064, 33.218452, 25.888483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363453, 33.590050, 25.788776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.350636, 33.204510, 25.682978>,  <35.342945, 32.973186, 25.619497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.350636, 33.204510, 25.682978>,  <35.363453, 33.590050, 25.788776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350636, 33.204510, 25.682978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271610, 0.246278, -0.930363,
		0.961874, -0.101654, 0.253900,
		-0.032045, -0.963854, -0.264498,
		35.341022, 32.915352, 25.603628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878788, 33.543228, 25.127148>,  <35.363453, 33.590050, 25.788776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878788, 33.543228, 25.127148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696198, 33.187546, 25.139460>,  <35.586643, 32.974136, 25.146847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696198, 33.187546, 25.139460>,  <35.878788, 33.543228, 25.127148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696198, 33.187546, 25.139460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134874, -0.103353, -0.985458,
		0.879452, -0.445689, 0.167109,
		-0.456479, -0.889202, 0.030782,
		35.559254, 32.920784, 25.148695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240101, 33.177685, 24.581532>,  <35.878788, 33.543228, 25.127148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240101, 33.177685, 24.581532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893494, 32.991150, 24.652727>,  <35.685532, 32.879230, 24.695444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893494, 32.991150, 24.652727>,  <36.240101, 33.177685, 24.581532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893494, 32.991150, 24.652727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173317, -0.053305, -0.983422,
		0.468095, -0.882999, -0.034634,
		-0.866515, -0.466338, 0.177991,
		35.633537, 32.851250, 24.706125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151886, 32.647690, 24.113981>,  <36.240101, 33.177685, 24.581532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151886, 32.647690, 24.113981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.768620, 32.654991, 24.228235>,  <35.538658, 32.659370, 24.296787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.768620, 32.654991, 24.228235>,  <36.151886, 32.647690, 24.113981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768620, 32.654991, 24.228235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276853, -0.312261, -0.908761,
		0.072606, -0.949821, 0.304250,
		-0.958165, 0.018251, 0.285633,
		35.481171, 32.660465, 24.313925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893082, 31.994339, 23.921814>,  <36.151886, 32.647690, 24.113981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893082, 31.994339, 23.921814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.595745, 32.261532, 23.935972>,  <35.417343, 32.421848, 23.944468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.595745, 32.261532, 23.935972>,  <35.893082, 31.994339, 23.921814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595745, 32.261532, 23.935972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317535, -0.305795, -0.897586,
		-0.588745, -0.678448, 0.439416,
		-0.743337, 0.667980, 0.035396,
		35.372746, 32.461926, 23.946590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384357, 31.624592, 23.683334>,  <35.893082, 31.994339, 23.921814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384357, 31.624592, 23.683334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.239082, 31.993855, 23.632936>,  <35.151917, 32.215412, 23.602697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.239082, 31.993855, 23.632936>,  <35.384357, 31.624592, 23.683334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239082, 31.993855, 23.632936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459598, -0.295141, -0.837653,
		-0.810471, -0.246319, 0.531473,
		-0.363189, 0.923157, -0.125996,
		35.130127, 32.270802, 23.595139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185249, 31.510567, 24.409552>,  <35.384357, 31.624592, 23.683334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185249, 31.510567, 24.409552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.132790, 31.198292, 24.165150>,  <35.101315, 31.010927, 24.018509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.132790, 31.198292, 24.165150>,  <35.185249, 31.510567, 24.409552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132790, 31.198292, 24.165150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297363, -0.556971, 0.775472,
		-0.945714, 0.283393, -0.159101,
		-0.131149, -0.780686, -0.611006,
		35.093445, 30.964087, 23.981848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496414, 31.213385, 24.522005>,  <35.185249, 31.510567, 24.409552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496414, 31.213385, 24.522005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.724525, 30.925512, 24.363592>,  <34.861393, 30.752789, 24.268545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.724525, 30.925512, 24.363592>,  <34.496414, 31.213385, 24.522005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724525, 30.925512, 24.363592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267457, -0.618516, 0.738854,
		-0.776692, -0.315430, -0.545210,
		0.570277, -0.719682, -0.396032,
		34.895607, 30.709608, 24.244783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155643, 30.562016, 24.723095>,  <34.496414, 31.213385, 24.522005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155643, 30.562016, 24.723095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505508, 30.425339, 24.585569>,  <34.715427, 30.343332, 24.503054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505508, 30.425339, 24.585569>,  <34.155643, 30.562016, 24.723095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505508, 30.425339, 24.585569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048358, -0.767262, 0.639508,
		-0.482309, -0.542729, -0.687621,
		0.874665, -0.341692, -0.343813,
		34.767906, 30.322830, 24.482426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053802, 29.854574, 24.475430>,  <34.155643, 30.562016, 24.723095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053802, 29.854574, 24.475430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.439888, 29.909443, 24.564468>,  <34.671539, 29.942364, 24.617891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.439888, 29.909443, 24.564468>,  <34.053802, 29.854574, 24.475430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439888, 29.909443, 24.564468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040403, -0.762866, 0.645293,
		0.258330, -0.631838, -0.730785,
		0.965212, 0.137173, 0.222599,
		34.729450, 29.950594, 24.631248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285015, 29.211214, 24.527752>,  <34.053802, 29.854574, 24.475430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285015, 29.211214, 24.527752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552780, 29.440414, 24.716879>,  <34.713440, 29.577934, 24.830355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552780, 29.440414, 24.716879>,  <34.285015, 29.211214, 24.527752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552780, 29.440414, 24.716879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017895, -0.648709, 0.760826,
		0.742674, -0.500847, -0.444509,
		0.669415, 0.572999, 0.472817,
		34.753605, 29.612314, 24.858725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623726, 28.723259, 24.971720>,  <34.285015, 29.211214, 24.527752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623726, 28.723259, 24.971720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684467, 29.089434, 25.120806>,  <34.720913, 29.309139, 25.210257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684467, 29.089434, 25.120806>,  <34.623726, 28.723259, 24.971720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684467, 29.089434, 25.120806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033596, -0.372088, 0.927589,
		0.987832, -0.153378, -0.025747,
		0.151852, 0.915438, 0.372713,
		34.730022, 29.364065, 25.232620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087139, 28.577751, 25.580700>,  <34.623726, 28.723259, 24.971720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087139, 28.577751, 25.580700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.901264, 28.926401, 25.643097>,  <34.789738, 29.135592, 25.680534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.901264, 28.926401, 25.643097>,  <35.087139, 28.577751, 25.580700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901264, 28.926401, 25.643097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141084, -0.101034, 0.984829,
		0.874163, 0.479646, -0.076023,
		-0.464688, 0.871626, 0.155991,
		34.761856, 29.187889, 25.689894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527058, 28.755564, 26.189867>,  <35.087139, 28.577751, 25.580700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527058, 28.755564, 26.189867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207001, 28.995266, 26.200186>,  <35.014965, 29.139088, 26.206377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207001, 28.995266, 26.200186>,  <35.527058, 28.755564, 26.189867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207001, 28.995266, 26.200186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015127, -0.063155, 0.997889,
		0.599621, 0.798062, 0.059598,
		-0.800141, 0.599257, 0.025797,
		34.966957, 29.175043, 26.207926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705875, 29.401634, 25.803205>,  <35.527058, 28.755564, 26.189867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705875, 29.401634, 25.803205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.923412, 29.132792, 26.004208>,  <36.053932, 28.971487, 26.124809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.923412, 29.132792, 26.004208>,  <35.705875, 29.401634, 25.803205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923412, 29.132792, 26.004208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707650, 0.045423, -0.705102,
		0.451078, 0.739061, 0.500318,
		0.543839, -0.672106, 0.502507,
		36.086563, 28.931160, 26.154961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439552, 29.664654, 26.005136>,  <35.705875, 29.401634, 25.803205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439552, 29.664654, 26.005136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.415283, 29.266411, 25.976620>,  <36.400723, 29.027464, 25.959511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.415283, 29.266411, 25.976620>,  <36.439552, 29.664654, 26.005136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415283, 29.266411, 25.976620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688929, 0.009913, -0.724761,
		0.722285, -0.093086, 0.685302,
		-0.060671, -0.995609, -0.071290,
		36.397083, 28.967728, 25.955233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029270, 29.373857, 25.802656>,  <36.439552, 29.664654, 26.005136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029270, 29.373857, 25.802656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849693, 29.022997, 25.734474>,  <36.741947, 28.812481, 25.693565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849693, 29.022997, 25.734474>,  <37.029270, 29.373857, 25.802656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849693, 29.022997, 25.734474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541289, -0.115185, -0.832909,
		0.710954, -0.466196, 0.526504,
		-0.448944, -0.877151, -0.170456,
		36.715012, 28.759851, 25.683338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555515, 29.005543, 25.494219>,  <37.029270, 29.373857, 25.802656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555515, 29.005543, 25.494219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.251598, 28.760338, 25.407570>,  <37.069248, 28.613214, 25.355581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.251598, 28.760338, 25.407570>,  <37.555515, 29.005543, 25.494219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251598, 28.760338, 25.407570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546221, -0.421143, -0.724073,
		0.352637, -0.668472, 0.654823,
		-0.759796, -0.613012, -0.216623,
		37.023659, 28.576435, 25.342583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817024, 28.257395, 25.550364>,  <37.555515, 29.005543, 25.494219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817024, 28.257395, 25.550364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.505611, 28.273125, 25.299814>,  <37.318764, 28.282562, 25.149485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.505611, 28.273125, 25.299814>,  <37.817024, 28.257395, 25.550364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505611, 28.273125, 25.299814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490322, -0.584873, -0.646148,
		-0.391761, -0.810171, 0.436059,
		-0.778529, 0.039326, -0.626375,
		37.272053, 28.284922, 25.111902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940174, 27.667662, 25.120348>,  <37.817024, 28.257395, 25.550364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940174, 27.667662, 25.120348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671253, 27.885504, 24.919785>,  <37.509899, 28.016209, 24.799446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671253, 27.885504, 24.919785>,  <37.940174, 27.667662, 25.120348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671253, 27.885504, 24.919785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483783, -0.189443, -0.854438,
		-0.560320, -0.817016, -0.136108,
		-0.672305, 0.544606, -0.501408,
		37.469563, 28.048885, 24.769361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773827, 27.321718, 24.604670>,  <37.940174, 27.667662, 25.120348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773827, 27.321718, 24.604670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.651089, 27.687109, 24.497782>,  <37.577446, 27.906343, 24.433649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.651089, 27.687109, 24.497782>,  <37.773827, 27.321718, 24.604670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651089, 27.687109, 24.497782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395935, -0.132802, -0.908625,
		-0.865495, -0.384607, -0.320928,
		-0.306844, 0.913477, -0.267219,
		37.559036, 27.961153, 24.417616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369480, 27.279638, 23.958836>,  <37.773827, 27.321718, 24.604670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369480, 27.279638, 23.958836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.538734, 27.641842, 23.971506>,  <37.640289, 27.859165, 23.979109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.538734, 27.641842, 23.971506>,  <37.369480, 27.279638, 23.958836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538734, 27.641842, 23.971506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269731, -0.092515, -0.958481,
		-0.864984, 0.414115, -0.283391,
		0.423140, 0.905511, 0.031676,
		37.665676, 27.913496, 23.981009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983074, 27.653667, 23.531149>,  <37.369480, 27.279638, 23.958836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983074, 27.653667, 23.531149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.356758, 27.791281, 23.568867>,  <37.580967, 27.873848, 23.591497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.356758, 27.791281, 23.568867>,  <36.983074, 27.653667, 23.531149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356758, 27.791281, 23.568867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137204, -0.102540, -0.985221,
		-0.329280, 0.933342, -0.142997,
		0.934211, 0.344033, 0.094294,
		37.637020, 27.894491, 23.597155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.220253, 29.778549, 39.228043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490932, 30.068651, 39.278770>,  <35.653339, 30.242712, 39.309208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490932, 30.068651, 39.278770>,  <35.220253, 29.778549, 39.228043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490932, 30.068651, 39.278770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336178, -0.151116, -0.929596,
		-0.655029, 0.671691, -0.346075,
		0.676698, 0.725255, 0.126822,
		35.693943, 30.286228, 39.316818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083290, 30.417496, 38.832069>,  <35.220253, 29.778549, 39.228043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083290, 30.417496, 38.832069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467155, 30.332214, 38.905384>,  <35.697475, 30.281046, 38.949375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467155, 30.332214, 38.905384>,  <35.083290, 30.417496, 38.832069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467155, 30.332214, 38.905384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174420, -0.059867, -0.982850,
		0.220518, 0.975173, -0.020265,
		0.959661, -0.213201, 0.183291,
		35.755054, 30.268253, 38.960373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434612, 30.879412, 38.378365>,  <35.083290, 30.417496, 38.832069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434612, 30.879412, 38.378365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693676, 30.589649, 38.472824>,  <35.849113, 30.415791, 38.529499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693676, 30.589649, 38.472824>,  <35.434612, 30.879412, 38.378365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693676, 30.589649, 38.472824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277499, -0.064382, -0.958566,
		0.709596, 0.686359, 0.159324,
		0.647664, -0.724407, 0.236149,
		35.887974, 30.372328, 38.543671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176163, 31.025936, 38.232807>,  <35.434612, 30.879412, 38.378365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176163, 31.025936, 38.232807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114540, 30.630865, 38.221764>,  <36.077568, 30.393824, 38.215137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114540, 30.630865, 38.221764>,  <36.176163, 31.025936, 38.232807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114540, 30.630865, 38.221764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114285, 0.009944, -0.993398,
		0.981431, -0.156191, 0.111345,
		-0.154053, -0.987677, -0.027610,
		36.068325, 30.334562, 38.213482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632069, 30.775721, 37.763077>,  <36.176163, 31.025936, 38.232807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632069, 30.775721, 37.763077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.375786, 30.468767, 37.773006>,  <36.222015, 30.284595, 37.778965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.375786, 30.468767, 37.773006>,  <36.632069, 30.775721, 37.763077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375786, 30.468767, 37.773006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164044, -0.168407, -0.971971,
		0.750058, -0.618674, 0.233785,
		-0.640705, -0.767386, 0.024825,
		36.183575, 30.238552, 37.780453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006798, 30.287954, 37.349365>,  <36.632069, 30.775721, 37.763077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006798, 30.287954, 37.349365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645626, 30.117188, 37.329514>,  <36.428925, 30.014729, 37.317600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645626, 30.117188, 37.329514>,  <37.006798, 30.287954, 37.349365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645626, 30.117188, 37.329514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278089, -0.492265, -0.824828,
		0.327699, -0.758563, 0.563201,
		-0.902928, -0.426916, -0.049633,
		36.374748, 29.989113, 37.314625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129719, 29.583452, 37.028671>,  <37.006798, 30.287954, 37.349365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129719, 29.583452, 37.028671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.737640, 29.645494, 36.979439>,  <36.502392, 29.682720, 36.949898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.737640, 29.645494, 36.979439>,  <37.129719, 29.583452, 37.028671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737640, 29.645494, 36.979439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006577, -0.595761, -0.803135,
		-0.197900, -0.788043, 0.582945,
		-0.980201, 0.155106, -0.123084,
		36.443581, 29.692026, 36.942513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791920, 28.900940, 36.957611>,  <37.129719, 29.583452, 37.028671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791920, 28.900940, 36.957611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561649, 29.186884, 36.798832>,  <36.423489, 29.358450, 36.703564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561649, 29.186884, 36.798832>,  <36.791920, 28.900940, 36.957611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561649, 29.186884, 36.798832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014508, -0.476457, -0.879078,
		-0.817550, -0.511822, 0.263913,
		-0.575675, 0.714862, -0.396953,
		36.388947, 29.401342, 36.679745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358322, 28.444277, 36.626209>,  <36.791920, 28.900940, 36.957611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358322, 28.444277, 36.626209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297104, 28.807493, 36.470245>,  <36.260372, 29.025423, 36.376667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297104, 28.807493, 36.470245>,  <36.358322, 28.444277, 36.626209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297104, 28.807493, 36.470245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226776, -0.416306, -0.880490,
		-0.961846, -0.046336, 0.269638,
		-0.153050, 0.908043, -0.389914,
		36.251190, 29.079906, 36.353271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664490, 28.435513, 36.291134>,  <36.358322, 28.444277, 36.626209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664490, 28.435513, 36.291134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889809, 28.733904, 36.149029>,  <36.025002, 28.912939, 36.063766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889809, 28.733904, 36.149029>,  <35.664490, 28.435513, 36.291134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889809, 28.733904, 36.149029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217874, -0.280647, -0.934756,
		-0.797010, 0.603950, 0.004441,
		0.563299, 0.745977, -0.355263,
		36.058800, 28.957697, 36.042450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215378, 28.672731, 35.813210>,  <35.664490, 28.435513, 36.291134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215378, 28.672731, 35.813210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569679, 28.821564, 35.702217>,  <35.782261, 28.910864, 35.635624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569679, 28.821564, 35.702217>,  <35.215378, 28.672731, 35.813210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569679, 28.821564, 35.702217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115223, -0.402836, -0.907990,
		-0.449626, 0.836228, -0.313941,
		0.885754, 0.372083, -0.277478,
		35.835407, 28.933189, 35.618973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145542, 29.031004, 35.134167>,  <35.215378, 28.672731, 35.813210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145542, 29.031004, 35.134167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530231, 28.928457, 35.172882>,  <35.761044, 28.866930, 35.196114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530231, 28.928457, 35.172882>,  <35.145542, 29.031004, 35.134167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530231, 28.928457, 35.172882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035313, -0.466211, -0.883968,
		0.271744, 0.846713, -0.457419,
		0.961721, -0.256366, 0.096791,
		35.818748, 28.851547, 35.201920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691189, 29.677216, 34.971939>,  <35.145542, 29.031004, 35.134167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691189, 29.677216, 34.971939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314861, 29.610041, 34.854191>,  <34.089066, 29.569735, 34.783543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314861, 29.610041, 34.854191>,  <34.691189, 29.677216, 34.971939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314861, 29.610041, 34.854191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338825, 0.446945, 0.827912,
		-0.007471, 0.878656, -0.477397,
		-0.940820, -0.167939, -0.294372,
		34.032616, 29.559658, 34.765881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352512, 30.238676, 35.301147>,  <34.691189, 29.677216, 34.971939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352512, 30.238676, 35.301147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048592, 29.998762, 35.200779>,  <33.866238, 29.854815, 35.140560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048592, 29.998762, 35.200779>,  <34.352512, 30.238676, 35.301147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048592, 29.998762, 35.200779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540819, 0.368860, 0.755948,
		-0.360852, 0.710072, -0.604635,
		-0.759803, -0.599783, -0.250917,
		33.820652, 29.818827, 35.125504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826794, 30.687550, 35.212353>,  <34.352512, 30.238676, 35.301147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826794, 30.687550, 35.212353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.677555, 30.324955, 35.291431>,  <33.588013, 30.107399, 35.338879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.677555, 30.324955, 35.291431>,  <33.826794, 30.687550, 35.212353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677555, 30.324955, 35.291431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608102, 0.399855, 0.685805,
		-0.700724, 0.135647, -0.700419,
		-0.373093, -0.906485, 0.197701,
		33.565628, 30.053009, 35.350742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070396, 30.726015, 35.303719>,  <33.826794, 30.687550, 35.212353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070396, 30.726015, 35.303719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193966, 30.397308, 35.495247>,  <33.268108, 30.200085, 35.610165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193966, 30.397308, 35.495247>,  <33.070396, 30.726015, 35.303719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193966, 30.397308, 35.495247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453317, 0.315356, 0.833699,
		-0.836105, -0.474603, -0.275102,
		0.308921, -0.821768, 0.478816,
		33.286644, 30.150778, 35.638893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528950, 30.374273, 35.528423>,  <33.070396, 30.726015, 35.303719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528950, 30.374273, 35.528423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816509, 30.234119, 35.768562>,  <32.989044, 30.150026, 35.912643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816509, 30.234119, 35.768562>,  <32.528950, 30.374273, 35.528423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816509, 30.234119, 35.768562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517899, 0.306077, 0.798810,
		-0.463645, -0.885181, 0.038573,
		0.718897, -0.350387, 0.600346,
		33.032177, 30.129004, 35.948666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157204, 30.126097, 36.079952>,  <32.528950, 30.374273, 35.528423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157204, 30.126097, 36.079952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521267, 30.123182, 36.245636>,  <32.739704, 30.121433, 36.345047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521267, 30.123182, 36.245636>,  <32.157204, 30.126097, 36.079952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521267, 30.123182, 36.245636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346461, 0.534774, 0.770702,
		-0.227120, -0.844964, 0.484203,
		0.910154, -0.007284, 0.414205,
		32.794312, 30.120996, 36.369896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014751, 30.005011, 36.742298>,  <32.157204, 30.126097, 36.079952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014751, 30.005011, 36.742298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384754, 30.156635, 36.752655>,  <32.606758, 30.247610, 36.758869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384754, 30.156635, 36.752655>,  <32.014751, 30.005011, 36.742298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384754, 30.156635, 36.752655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186068, 0.392522, 0.900725,
		0.331262, -0.837998, 0.433618,
		0.925010, 0.379059, 0.025897,
		32.662258, 30.270353, 36.760426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220577, 29.818102, 37.429771>,  <32.014751, 30.005011, 36.742298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220577, 29.818102, 37.429771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491100, 30.098438, 37.339062>,  <32.653416, 30.266640, 37.284637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491100, 30.098438, 37.339062>,  <32.220577, 29.818102, 37.429771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491100, 30.098438, 37.339062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044831, 0.268129, 0.962340,
		0.735250, -0.661008, 0.149919,
		0.676312, 0.700839, -0.226775,
		32.693993, 30.308689, 37.271030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803112, 29.755688, 37.880249>,  <32.220577, 29.818102, 37.429771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803112, 29.755688, 37.880249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810043, 30.128519, 37.735516>,  <32.814201, 30.352219, 37.648674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810043, 30.128519, 37.735516>,  <32.803112, 29.755688, 37.880249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810043, 30.128519, 37.735516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232679, 0.348197, 0.908086,
		0.972399, -0.099927, -0.210842,
		0.017328, 0.932080, -0.361837,
		32.815243, 30.408144, 37.626965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367001, 30.115040, 38.215942>,  <32.803112, 29.755688, 37.880249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367001, 30.115040, 38.215942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146133, 30.419073, 38.078896>,  <33.013615, 30.601494, 37.996666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146133, 30.419073, 38.078896>,  <33.367001, 30.115040, 38.215942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146133, 30.419073, 38.078896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011252, 0.404112, 0.914640,
		0.833660, 0.508886, -0.214584,
		-0.552164, 0.760084, -0.342618,
		32.980484, 30.647099, 37.976109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668213, 30.657284, 38.581581>,  <33.367001, 30.115040, 38.215942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668213, 30.657284, 38.581581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322968, 30.800467, 38.439091>,  <33.115818, 30.886375, 38.353596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322968, 30.800467, 38.439091>,  <33.668213, 30.657284, 38.581581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322968, 30.800467, 38.439091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118635, 0.541932, 0.832007,
		0.490874, 0.760379, -0.425284,
		-0.863116, 0.357957, -0.356228,
		33.064034, 30.907854, 38.332222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714054, 31.343573, 38.561329>,  <33.668213, 30.657284, 38.581581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714054, 31.343573, 38.561329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320148, 31.274771, 38.571491>,  <33.083805, 31.233490, 38.577587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320148, 31.274771, 38.571491>,  <33.714054, 31.343573, 38.561329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320148, 31.274771, 38.571491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106602, 0.712710, 0.693311,
		-0.137358, 0.680043, -0.720190,
		-0.984768, -0.172006, 0.025403,
		33.024719, 31.223169, 38.579113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382988, 32.008263, 38.509529>,  <33.714054, 31.343573, 38.561329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382988, 32.008263, 38.509529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132191, 31.744345, 38.675205>,  <32.981712, 31.585995, 38.774612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132191, 31.744345, 38.675205>,  <33.382988, 32.008263, 38.509529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132191, 31.744345, 38.675205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171290, 0.635429, 0.752921,
		-0.759958, 0.401131, -0.511426,
		-0.626995, -0.659791, 0.414190,
		32.944092, 31.546408, 38.799461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778141, 32.442593, 38.807819>,  <33.382988, 32.008263, 38.509529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778141, 32.442593, 38.807819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818737, 32.100525, 39.011147>,  <32.843094, 31.895285, 39.133141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818737, 32.100525, 39.011147>,  <32.778141, 32.442593, 38.807819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818737, 32.100525, 39.011147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076945, 0.502675, 0.861044,
		-0.991856, -0.126503, -0.014782,
		0.101495, -0.855169, 0.508315,
		32.849186, 31.843975, 39.163643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204708, 32.789066, 38.814594>,  <32.778141, 32.442593, 38.807819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204708, 32.789066, 38.814594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476357, 33.074181, 38.744480>,  <32.639347, 33.245251, 38.702412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476357, 33.074181, 38.744480>,  <32.204708, 32.789066, 38.814594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476357, 33.074181, 38.744480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382158, 0.139459, -0.913513,
		-0.626694, 0.687377, 0.367107,
		0.679125, 0.712786, -0.175289,
		32.680096, 33.288017, 38.691895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815367, 33.106216, 38.238659>,  <32.204708, 32.789066, 38.814594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815367, 33.106216, 38.238659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.180435, 33.267025, 38.268078>,  <32.399475, 33.363510, 38.285728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.180435, 33.267025, 38.268078>,  <31.815367, 33.106216, 38.238659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180435, 33.267025, 38.268078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122649, 0.441080, -0.889048,
		-0.389854, 0.802389, 0.451870,
		0.912673, 0.402020, 0.073545,
		32.454235, 33.387630, 38.290142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612835, 33.727226, 37.855206>,  <31.815367, 33.106216, 38.238659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612835, 33.727226, 37.855206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001846, 33.649208, 37.906029>,  <32.235252, 33.602398, 37.936523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001846, 33.649208, 37.906029>,  <31.612835, 33.727226, 37.855206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001846, 33.649208, 37.906029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184023, 0.309903, -0.932789,
		0.142563, 0.930546, 0.337282,
		0.972529, -0.195049, 0.127061,
		32.293606, 33.590694, 37.944145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911180, 34.375278, 37.682064>,  <31.612835, 33.727226, 37.855206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911180, 34.375278, 37.682064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155251, 34.065098, 37.617123>,  <32.301693, 33.878990, 37.578159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155251, 34.065098, 37.617123>,  <31.911180, 34.375278, 37.682064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155251, 34.065098, 37.617123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066592, 0.254395, -0.964805,
		0.789464, 0.577888, 0.206864,
		0.610174, -0.775454, -0.162353,
		32.338303, 33.832462, 37.568417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485809, 34.538548, 37.141788>,  <31.911180, 34.375278, 37.682064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485809, 34.538548, 37.141788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462666, 34.139381, 37.130402>,  <32.448780, 33.899879, 37.123569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462666, 34.139381, 37.130402>,  <32.485809, 34.538548, 37.141788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462666, 34.139381, 37.130402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088133, 0.023294, -0.995836,
		0.994427, -0.060131, 0.086601,
		-0.057863, -0.997918, -0.028464,
		32.445305, 33.840004, 37.121864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029495, 34.303238, 36.758507>,  <32.485809, 34.538548, 37.141788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029495, 34.303238, 36.758507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775021, 33.994701, 36.751545>,  <32.622337, 33.809582, 36.747368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775021, 33.994701, 36.751545>,  <33.029495, 34.303238, 36.758507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775021, 33.994701, 36.751545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238708, -0.175326, -0.955133,
		0.733678, -0.611800, 0.295664,
		-0.636188, -0.771338, -0.017409,
		32.584164, 33.763302, 36.746323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438301, 33.833885, 36.424950>,  <33.029495, 34.303238, 36.758507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438301, 33.833885, 36.424950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060436, 33.707413, 36.389977>,  <32.833717, 33.631531, 36.368992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060436, 33.707413, 36.389977>,  <33.438301, 33.833885, 36.424950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060436, 33.707413, 36.389977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143035, -0.157138, -0.977164,
		0.295223, -0.935594, 0.193667,
		-0.944661, -0.316182, -0.087432,
		32.777039, 33.612556, 36.363747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403164, 33.118221, 36.187637>,  <33.438301, 33.833885, 36.424950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403164, 33.118221, 36.187637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063065, 33.302597, 36.085960>,  <32.859005, 33.413223, 36.024956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063065, 33.302597, 36.085960>,  <33.403164, 33.118221, 36.187637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063065, 33.302597, 36.085960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180436, -0.198428, -0.963364,
		-0.494489, -0.864964, 0.085543,
		-0.850249, 0.460938, -0.254191,
		32.807991, 33.440880, 36.009705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088531, 32.619236, 35.841694>,  <33.403164, 33.118221, 36.187637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088531, 32.619236, 35.841694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891338, 32.950909, 35.736301>,  <32.773022, 33.149914, 35.673065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891338, 32.950909, 35.736301>,  <33.088531, 32.619236, 35.841694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891338, 32.950909, 35.736301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084819, -0.347196, -0.933949,
		-0.865894, -0.438075, 0.241493,
		-0.492985, 0.829184, -0.263478,
		32.743443, 33.199665, 35.657257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558346, 32.352058, 35.530270>,  <33.088531, 32.619236, 35.841694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558346, 32.352058, 35.530270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599533, 32.715336, 35.367992>,  <32.624245, 32.933300, 35.270626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599533, 32.715336, 35.367992>,  <32.558346, 32.352058, 35.530270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599533, 32.715336, 35.367992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105679, -0.415540, -0.903415,
		-0.989055, 0.050151, -0.138765,
		0.102970, 0.908191, -0.405692,
		32.630424, 32.987793, 35.246284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250957, 32.318279, 34.918278>,  <32.558346, 32.352058, 35.530270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250957, 32.318279, 34.918278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438343, 32.667973, 34.867275>,  <32.550774, 32.877789, 34.836674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438343, 32.667973, 34.867275>,  <32.250957, 32.318279, 34.918278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438343, 32.667973, 34.867275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126603, -0.209258, -0.969630,
		-0.874364, 0.438096, -0.208711,
		0.468465, 0.874233, -0.127504,
		32.578884, 32.930241, 34.829025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969175, 32.501221, 34.365543>,  <32.250957, 32.318279, 34.918278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969175, 32.501221, 34.365543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.286102, 32.745026, 34.376350>,  <32.476257, 32.891308, 34.382835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.286102, 32.745026, 34.376350>,  <31.969175, 32.501221, 34.365543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286102, 32.745026, 34.376350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172523, -0.181355, -0.968166,
		-0.585206, 0.771758, -0.248845,
		0.792319, 0.609508, 0.027016,
		32.523800, 32.927879, 34.384457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894636, 32.929863, 33.807022>,  <31.969175, 32.501221, 34.365543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894636, 32.929863, 33.807022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283630, 32.960178, 33.895134>,  <32.517029, 32.978367, 33.948002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283630, 32.960178, 33.895134>,  <31.894636, 32.929863, 33.807022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283630, 32.960178, 33.895134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229443, -0.148014, -0.962002,
		-0.040302, 0.986077, -0.161331,
		0.972487, 0.075787, 0.220283,
		32.575378, 32.982914, 33.961220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205528, 33.456551, 33.467667>,  <31.894636, 32.929863, 33.807022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205528, 33.456551, 33.467667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522095, 33.222679, 33.539013>,  <32.712032, 33.082355, 33.581821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522095, 33.222679, 33.539013>,  <32.205528, 33.456551, 33.467667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522095, 33.222679, 33.539013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188167, -0.044613, -0.981123,
		0.581598, 0.810038, 0.074710,
		0.791414, -0.584677, 0.178369,
		32.759518, 33.047276, 33.592522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529144, 33.554516, 32.940575>,  <32.205528, 33.456551, 33.467667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529144, 33.554516, 32.940575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750908, 33.260437, 33.096581>,  <32.883968, 33.083988, 33.190186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750908, 33.260437, 33.096581>,  <32.529144, 33.554516, 32.940575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750908, 33.260437, 33.096581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285082, -0.272516, -0.918947,
		0.781892, 0.620662, 0.058505,
		0.554412, -0.735196, 0.390018,
		32.917233, 33.039879, 33.213585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274471, 33.658638, 32.882507>,  <32.529144, 33.554516, 32.940575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274471, 33.658638, 32.882507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203068, 33.265202, 32.892948>,  <33.160225, 33.029140, 32.899212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203068, 33.265202, 32.892948>,  <33.274471, 33.658638, 32.882507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203068, 33.265202, 32.892948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407064, -0.097980, -0.908129,
		0.895786, -0.151483, 0.417875,
		-0.178510, -0.983592, 0.026106,
		33.149513, 32.970123, 32.900780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719334, 33.415604, 32.495144>,  <33.274471, 33.658638, 32.882507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719334, 33.415604, 32.495144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479618, 33.095650, 32.507969>,  <33.335789, 32.903675, 32.515663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479618, 33.095650, 32.507969>,  <33.719334, 33.415604, 32.495144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479618, 33.095650, 32.507969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322705, -0.278043, -0.904739,
		0.732606, -0.531855, 0.424757,
		-0.599290, -0.799889, 0.032064,
		33.299831, 32.855682, 32.517590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164604, 32.874668, 32.400936>,  <33.719334, 33.415604, 32.495144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164604, 32.874668, 32.400936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791752, 32.755959, 32.317944>,  <33.568039, 32.684731, 32.268147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791752, 32.755959, 32.317944>,  <34.164604, 32.874668, 32.400936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791752, 32.755959, 32.317944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346530, -0.564812, -0.748935,
		0.105079, -0.770007, 0.629323,
		-0.932135, -0.296776, -0.207481,
		33.512112, 32.666927, 32.255699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122158, 32.106720, 32.324940>,  <34.164604, 32.874668, 32.400936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122158, 32.106720, 32.324940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807442, 32.248413, 32.122761>,  <33.618610, 32.333427, 32.001453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807442, 32.248413, 32.122761>,  <34.122158, 32.106720, 32.324940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807442, 32.248413, 32.122761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348356, -0.421157, -0.837421,
		-0.509513, -0.834953, 0.207965,
		-0.786794, 0.354232, -0.505447,
		33.571404, 32.354683, 31.971127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973049, 31.514500, 31.840162>,  <34.122158, 32.106720, 32.324940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973049, 31.514500, 31.840162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816620, 31.858677, 31.709503>,  <33.722763, 32.065182, 31.631107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816620, 31.858677, 31.709503>,  <33.973049, 31.514500, 31.840162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816620, 31.858677, 31.709503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316415, -0.207581, -0.925630,
		-0.864258, -0.465347, -0.191078,
		-0.391075, 0.860443, -0.326646,
		33.699299, 32.116810, 31.611509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652275, 31.326614, 31.303932>,  <33.973049, 31.514500, 31.840162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652275, 31.326614, 31.303932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663654, 31.722658, 31.248983>,  <33.670483, 31.960285, 31.216013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663654, 31.722658, 31.248983>,  <33.652275, 31.326614, 31.303932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663654, 31.722658, 31.248983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400793, -0.137199, -0.905837,
		-0.915727, -0.029286, -0.400733,
		0.028452, 0.990111, -0.137374,
		33.672192, 32.019691, 31.207771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281574, 31.524334, 30.595407>,  <33.652275, 31.326614, 31.303932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281574, 31.524334, 30.595407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513592, 31.840607, 30.673758>,  <33.652802, 32.030369, 30.720768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513592, 31.840607, 30.673758>,  <33.281574, 31.524334, 30.595407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513592, 31.840607, 30.673758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138727, 0.141062, -0.980233,
		-0.802683, 0.595755, -0.027866,
		0.580048, 0.790682, 0.195876,
		33.687607, 32.077812, 30.732521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264034, 32.001564, 29.930798>,  <33.281574, 31.524334, 30.595407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264034, 32.001564, 29.930798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576443, 32.126869, 30.146896>,  <33.763889, 32.202053, 30.276556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576443, 32.126869, 30.146896>,  <33.264034, 32.001564, 29.930798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576443, 32.126869, 30.146896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430767, 0.356101, -0.829236,
		-0.452152, 0.880374, 0.143180,
		0.781024, 0.313263, 0.540247,
		33.810749, 32.220848, 30.308971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384270, 32.717548, 29.792572>,  <33.264034, 32.001564, 29.930798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384270, 32.717548, 29.792572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727318, 32.585014, 29.949903>,  <33.933147, 32.505493, 30.044302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727318, 32.585014, 29.949903>,  <33.384270, 32.717548, 29.792572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727318, 32.585014, 29.949903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502252, 0.375116, -0.779122,
		0.110604, 0.865741, 0.488119,
		0.857619, -0.331332, 0.393331,
		33.984604, 32.485615, 30.067904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827816, 33.196735, 29.585535>,  <33.384270, 32.717548, 29.792572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827816, 33.196735, 29.585535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049171, 32.873287, 29.665434>,  <34.181984, 32.679218, 29.713373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049171, 32.873287, 29.665434>,  <33.827816, 33.196735, 29.585535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049171, 32.873287, 29.665434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483423, 0.116523, -0.867597,
		0.678279, 0.576681, 0.455387,
		0.553389, -0.808617, 0.199746,
		34.215187, 32.630703, 29.725357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578915, 33.425907, 29.662434>,  <33.827816, 33.196735, 29.585535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578915, 33.425907, 29.662434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558697, 33.037628, 29.568466>,  <34.546566, 32.804661, 29.512085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558697, 33.037628, 29.568466>,  <34.578915, 33.425907, 29.662434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558697, 33.037628, 29.568466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573904, 0.164277, -0.802276,
		0.817361, -0.175373, 0.548785,
		-0.050545, -0.970699, -0.234921,
		34.543533, 32.746418, 29.497990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142807, 33.407024, 29.232409>,  <34.578915, 33.425907, 29.662434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142807, 33.407024, 29.232409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973724, 33.048527, 29.178638>,  <34.872276, 32.833427, 29.146378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973724, 33.048527, 29.178638>,  <35.142807, 33.407024, 29.232409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973724, 33.048527, 29.178638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399921, -0.051364, -0.915109,
		0.813256, -0.440578, 0.380138,
		-0.422703, -0.896244, -0.134424,
		34.846912, 32.779655, 29.138311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719841, 32.943779, 28.978458>,  <35.142807, 33.407024, 29.232409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719841, 32.943779, 28.978458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380291, 32.764160, 28.866915>,  <35.176559, 32.656387, 28.799990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380291, 32.764160, 28.866915>,  <35.719841, 32.943779, 28.978458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380291, 32.764160, 28.866915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394517, -0.187123, -0.899634,
		0.351797, -0.873694, 0.336001,
		-0.848879, -0.449047, -0.278858,
		35.125626, 32.629448, 28.783257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286747, 32.883080, 29.467327>,  <35.719841, 32.943779, 28.978458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286747, 32.883080, 29.467327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596531, 33.048679, 29.275990>,  <36.782402, 33.148037, 29.161186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596531, 33.048679, 29.275990>,  <36.286747, 32.883080, 29.467327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596531, 33.048679, 29.275990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224453, 0.527121, 0.819613,
		0.591460, -0.742127, 0.315314,
		0.774465, 0.413995, -0.478343,
		36.828869, 33.172878, 29.132486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836929, 32.778812, 29.868969>,  <36.286747, 32.883080, 29.467327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836929, 32.778812, 29.868969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929783, 33.093563, 29.640255>,  <36.985493, 33.282413, 29.503027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929783, 33.093563, 29.640255>,  <36.836929, 32.778812, 29.868969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929783, 33.093563, 29.640255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364122, 0.474799, 0.801237,
		0.901959, -0.394192, -0.176304,
		0.232132, 0.786879, -0.571783,
		36.999424, 33.329628, 29.468719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471764, 32.953594, 30.152452>,  <36.836929, 32.778812, 29.868969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471764, 32.953594, 30.152452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305195, 33.263847, 29.962721>,  <37.205254, 33.449997, 29.848883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305195, 33.263847, 29.962721>,  <37.471764, 32.953594, 30.152452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305195, 33.263847, 29.962721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059376, 0.543803, 0.837110,
		0.907229, 0.320429, -0.272507,
		-0.416425, 0.775631, -0.474328,
		37.180267, 33.496536, 29.820423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914822, 33.534397, 30.236732>,  <37.471764, 32.953594, 30.152452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914822, 33.534397, 30.236732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562504, 33.708309, 30.161720>,  <37.351112, 33.812656, 30.116713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562504, 33.708309, 30.161720>,  <37.914822, 33.534397, 30.236732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562504, 33.708309, 30.161720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096247, 0.552186, 0.828147,
		0.463610, 0.711379, -0.528209,
		-0.880796, 0.434776, -0.187531,
		37.298264, 33.838741, 30.105461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975342, 34.299637, 30.424406>,  <37.914822, 33.534397, 30.236732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975342, 34.299637, 30.424406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585033, 34.213547, 30.408670>,  <37.350849, 34.161892, 30.399229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585033, 34.213547, 30.408670>,  <37.975342, 34.299637, 30.424406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585033, 34.213547, 30.408670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148391, 0.518869, 0.841876,
		-0.160784, 0.827316, -0.538236,
		-0.975771, -0.215229, -0.039341,
		37.292301, 34.148979, 30.396868>
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
