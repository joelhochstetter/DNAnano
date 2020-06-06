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
	<24.354656, 35.298023, 34.644966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363071, 34.995453, 34.906464>,  <24.368120, 34.813911, 35.063362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363071, 34.995453, 34.906464>,  <24.354656, 35.298023, 34.644966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363071, 34.995453, 34.906464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820467, 0.386714, 0.421053,
		-0.571306, 0.527517, 0.628756,
		0.021036, -0.756424, 0.653743,
		24.369383, 34.768524, 35.102585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507093, 35.627239, 35.388733>,  <24.354656, 35.298023, 34.644966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507093, 35.627239, 35.388733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617508, 35.243423, 35.366539>,  <24.683758, 35.013134, 35.353222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617508, 35.243423, 35.366539>,  <24.507093, 35.627239, 35.388733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617508, 35.243423, 35.366539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943844, 0.259714, 0.204221,
		-0.181549, -0.108740, 0.977351,
		0.276038, -0.959544, -0.055483,
		24.700319, 34.955559, 35.349895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979637, 35.482414, 36.085602>,  <24.507093, 35.627239, 35.388733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979637, 35.482414, 36.085602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039694, 35.258152, 35.759872>,  <25.075727, 35.123596, 35.564434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039694, 35.258152, 35.759872>,  <24.979637, 35.482414, 36.085602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039694, 35.258152, 35.759872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972594, 0.231662, 0.019828,
		0.177532, -0.794986, 0.580069,
		0.150143, -0.560652, -0.814326,
		25.084736, 35.089958, 35.515575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434599, 34.982426, 36.247356>,  <24.979637, 35.482414, 36.085602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434599, 34.982426, 36.247356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462461, 35.127743, 35.875729>,  <25.479179, 35.214935, 35.652752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462461, 35.127743, 35.875729>,  <25.434599, 34.982426, 36.247356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462461, 35.127743, 35.875729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887693, 0.402341, 0.223881,
		0.455136, -0.840321, -0.294469,
		0.069655, 0.363295, -0.929067,
		25.483358, 35.236732, 35.597008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130381, 35.063084, 36.111092>,  <25.434599, 34.982426, 36.247356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130381, 35.063084, 36.111092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952600, 35.295773, 35.838600>,  <25.845932, 35.435387, 35.675106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952600, 35.295773, 35.838600>,  <26.130381, 35.063084, 36.111092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952600, 35.295773, 35.838600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717234, 0.686692, 0.118444,
		0.536694, -0.435957, -0.722427,
		-0.444448, 0.581718, -0.681227,
		25.819265, 35.470287, 35.634232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548483, 35.234646, 35.428085>,  <26.130381, 35.063084, 36.111092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548483, 35.234646, 35.428085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284952, 35.509537, 35.550507>,  <26.126835, 35.674473, 35.623959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284952, 35.509537, 35.550507>,  <26.548483, 35.234646, 35.428085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284952, 35.509537, 35.550507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743667, 0.656379, 0.126987,
		-0.113616, 0.311262, -0.943508,
		-0.658825, 0.687228, 0.306050,
		26.087305, 35.715706, 35.642323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614500, 35.797890, 34.961830>,  <26.548483, 35.234646, 35.428085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614500, 35.797890, 34.961830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530010, 35.874859, 35.345154>,  <26.479317, 35.921040, 35.575150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530010, 35.874859, 35.345154>,  <26.614500, 35.797890, 34.961830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530010, 35.874859, 35.345154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784998, 0.617556, 0.049022,
		-0.582377, 0.762626, -0.281495,
		-0.211224, 0.192424, 0.958310,
		26.466642, 35.932587, 35.632648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283312, 36.059593, 34.621738>,  <26.614500, 35.797890, 34.961830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283312, 36.059593, 34.621738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632071, 35.914436, 34.753254>,  <27.841326, 35.827343, 34.832165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632071, 35.914436, 34.753254>,  <27.283312, 36.059593, 34.621738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632071, 35.914436, 34.753254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231503, 0.897121, 0.376271,
		-0.431513, -0.251953, 0.866208,
		0.871896, -0.362896, 0.328791,
		27.893639, 35.805569, 34.851891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268713, 36.372387, 35.172375>,  <27.283312, 36.059593, 34.621738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268713, 36.372387, 35.172375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645969, 36.239895, 35.183468>,  <27.872324, 36.160400, 35.190125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645969, 36.239895, 35.183468>,  <27.268713, 36.372387, 35.172375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645969, 36.239895, 35.183468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297571, 0.878577, 0.373569,
		-0.148099, -0.344077, 0.927188,
		0.943143, -0.331229, 0.027729,
		27.928913, 36.140526, 35.191788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495993, 36.314018, 35.859997>,  <27.268713, 36.372387, 35.172375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495993, 36.314018, 35.859997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824600, 36.368118, 35.638435>,  <28.021765, 36.400578, 35.505497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824600, 36.368118, 35.638435>,  <27.495993, 36.314018, 35.859997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824600, 36.368118, 35.638435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326133, 0.685389, 0.651060,
		0.467699, -0.715505, 0.518950,
		0.821520, 0.135253, -0.553906,
		28.071056, 36.408695, 35.472263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051676, 36.571022, 36.364071>,  <27.495993, 36.314018, 35.859997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051676, 36.571022, 36.364071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191044, 36.640797, 35.995686>,  <28.274664, 36.682663, 35.774654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191044, 36.640797, 35.995686>,  <28.051676, 36.571022, 36.364071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191044, 36.640797, 35.995686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540214, 0.765574, 0.349378,
		0.766009, -0.619249, 0.172513,
		0.348424, 0.174433, -0.920963,
		28.295570, 36.693127, 35.719395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866707, 36.655495, 36.423252>,  <28.051676, 36.571022, 36.364071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866707, 36.655495, 36.423252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715754, 36.837376, 36.100555>,  <28.625181, 36.946503, 35.906937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715754, 36.837376, 36.100555>,  <28.866707, 36.655495, 36.423252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715754, 36.837376, 36.100555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451512, 0.850940, 0.268399,
		0.808528, -0.262963, -0.526434,
		-0.377384, 0.454699, -0.806740,
		28.602539, 36.973785, 35.858532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365574, 37.090591, 36.149090>,  <28.866707, 36.655495, 36.423252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365574, 37.090591, 36.149090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030113, 37.242775, 35.993187>,  <28.828836, 37.334084, 35.899647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030113, 37.242775, 35.993187>,  <29.365574, 37.090591, 36.149090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030113, 37.242775, 35.993187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354860, 0.924540, 0.138921,
		0.413199, -0.021803, -0.910379,
		-0.838654, 0.380460, -0.389756,
		28.778517, 37.356915, 35.876259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667843, 37.519836, 35.616997>,  <29.365574, 37.090591, 36.149090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667843, 37.519836, 35.616997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297268, 37.670322, 35.622349>,  <29.074923, 37.760612, 35.625561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297268, 37.670322, 35.622349>,  <29.667843, 37.519836, 35.616997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297268, 37.670322, 35.622349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370047, 0.903568, 0.215940,
		0.069152, 0.205005, -0.976315,
		-0.926436, 0.376215, 0.013378,
		29.019337, 37.783188, 35.626362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775730, 38.119080, 35.261818>,  <29.667843, 37.519836, 35.616997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775730, 38.119080, 35.261818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440737, 38.157143, 35.477066>,  <29.239740, 38.179981, 35.606213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440737, 38.157143, 35.477066>,  <29.775730, 38.119080, 35.261818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440737, 38.157143, 35.477066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220673, 0.959751, 0.173727,
		-0.499928, 0.264241, -0.824772,
		-0.837482, 0.095154, 0.538117,
		29.189491, 38.185688, 35.638500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413811, 38.783653, 35.044796>,  <29.775730, 38.119080, 35.261818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413811, 38.783653, 35.044796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292650, 38.688843, 35.414028>,  <29.219954, 38.631958, 35.635567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292650, 38.688843, 35.414028>,  <29.413811, 38.783653, 35.044796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292650, 38.688843, 35.414028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248627, 0.915384, 0.316633,
		-0.920019, 0.325410, -0.218341,
		-0.302902, -0.237023, 0.923077,
		29.201780, 38.617737, 35.690952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948748, 39.281750, 35.267090>,  <29.413811, 38.783653, 35.044796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948748, 39.281750, 35.267090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105556, 39.115032, 35.595139>,  <29.199642, 39.015003, 35.791969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105556, 39.115032, 35.595139>,  <28.948748, 39.281750, 35.267090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105556, 39.115032, 35.595139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183057, 0.908996, 0.374455,
		-0.901559, 0.003336, 0.432643,
		0.392021, -0.416791, 0.820125,
		29.223164, 38.989994, 35.841175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749210, 39.635166, 35.775005>,  <28.948748, 39.281750, 35.267090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749210, 39.635166, 35.775005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031658, 39.447559, 35.987202>,  <29.201126, 39.334995, 36.114517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031658, 39.447559, 35.987202>,  <28.749210, 39.635166, 35.775005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031658, 39.447559, 35.987202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168071, 0.838782, 0.517877,
		-0.687858, -0.276523, 0.671108,
		0.706118, -0.469020, 0.530487,
		29.243494, 39.306854, 36.146347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703442, 39.972488, 36.327209>,  <28.749210, 39.635166, 35.775005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703442, 39.972488, 36.327209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053501, 39.784481, 36.373165>,  <29.263536, 39.671677, 36.400738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053501, 39.784481, 36.373165>,  <28.703442, 39.972488, 36.327209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053501, 39.784481, 36.373165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316232, 0.735331, 0.599404,
		-0.366213, -0.488235, 0.792158,
		0.875149, -0.470015, 0.114892,
		29.316046, 39.643475, 36.407631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811342, 39.967697, 37.055878>,  <28.703442, 39.972488, 36.327209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811342, 39.967697, 37.055878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173229, 39.938965, 36.887913>,  <29.390362, 39.921726, 36.787136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173229, 39.938965, 36.887913>,  <28.811342, 39.967697, 37.055878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173229, 39.938965, 36.887913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298923, 0.809336, 0.505590,
		0.303529, -0.582937, 0.753693,
		0.904718, -0.071835, -0.419910,
		29.444645, 39.917416, 36.761940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207422, 40.295429, 37.508137>,  <28.811342, 39.967697, 37.055878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207422, 40.295429, 37.508137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472061, 40.269817, 37.209290>,  <29.630844, 40.254452, 37.029980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472061, 40.269817, 37.209290>,  <29.207422, 40.295429, 37.508137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472061, 40.269817, 37.209290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336631, 0.915666, 0.219625,
		0.670052, -0.396807, 0.627355,
		0.661597, -0.064027, -0.747121,
		29.670540, 40.250610, 36.985153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867199, 40.489624, 37.769733>,  <29.207422, 40.295429, 37.508137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867199, 40.489624, 37.769733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880192, 40.554707, 37.375278>,  <29.887987, 40.593758, 37.138603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880192, 40.554707, 37.375278>,  <29.867199, 40.489624, 37.769733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880192, 40.554707, 37.375278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452207, 0.877503, 0.159679,
		0.891321, -0.451126, -0.045077,
		0.032481, 0.162709, -0.986139,
		29.889936, 40.603519, 37.079437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613667, 40.709717, 37.560589>,  <29.867199, 40.489624, 37.769733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613667, 40.709717, 37.560589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351740, 40.837868, 37.286777>,  <30.194584, 40.914757, 37.122490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351740, 40.837868, 37.286777>,  <30.613667, 40.709717, 37.560589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351740, 40.837868, 37.286777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234125, 0.947145, 0.219323,
		0.718609, -0.016648, -0.695215,
		-0.654818, 0.320374, -0.684524,
		30.155294, 40.933979, 37.081421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001423, 41.128345, 37.196644>,  <30.613667, 40.709717, 37.560589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001423, 41.128345, 37.196644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632246, 41.246685, 37.098137>,  <30.410740, 41.317688, 37.039032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632246, 41.246685, 37.098137>,  <31.001423, 41.128345, 37.196644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632246, 41.246685, 37.098137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282320, 0.955145, 0.089403,
		0.261670, 0.012988, -0.965070,
		-0.922943, 0.295852, -0.246266,
		30.355364, 41.335442, 37.024258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061184, 41.626572, 36.636086>,  <31.001423, 41.128345, 37.196644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061184, 41.626572, 36.636086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689909, 41.687260, 36.771999>,  <30.467144, 41.723671, 36.853546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689909, 41.687260, 36.771999>,  <31.061184, 41.626572, 36.636086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689909, 41.687260, 36.771999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225199, 0.955935, 0.188342,
		-0.296239, 0.251336, -0.921451,
		-0.928185, 0.151716, 0.339786,
		30.411453, 41.732773, 36.873936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646444, 42.002892, 36.084267>,  <31.061184, 41.626572, 36.636086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646444, 42.002892, 36.084267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513206, 42.047504, 36.458775>,  <30.433264, 42.074272, 36.683479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513206, 42.047504, 36.458775>,  <30.646444, 42.002892, 36.084267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513206, 42.047504, 36.458775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187249, 0.981026, -0.050250,
		-0.924114, 0.158579, -0.347659,
		-0.333094, 0.111535, 0.936274,
		30.413279, 42.080963, 36.739658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978031, 42.490356, 36.177807>,  <30.646444, 42.002892, 36.084267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978031, 42.490356, 36.177807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227373, 42.505356, 36.490223>,  <30.376978, 42.514355, 36.677673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227373, 42.505356, 36.490223>,  <29.978031, 42.490356, 36.177807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227373, 42.505356, 36.490223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006557, 0.998564, -0.053170,
		-0.781913, 0.038265, 0.622212,
		0.623353, 0.037494, 0.781041,
		30.414379, 42.516605, 36.724537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205198, 43.207436, 35.923309>,  <29.978031, 42.490356, 36.177807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205198, 43.207436, 35.923309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582556, 43.339737, 35.933155>,  <30.808971, 43.419117, 35.939064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582556, 43.339737, 35.933155>,  <30.205198, 43.207436, 35.923309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582556, 43.339737, 35.933155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272225, -0.729788, -0.627138,
		-0.189466, 0.598340, -0.778519,
		0.943396, 0.330754, 0.024613,
		30.865574, 43.438965, 35.940540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499691, 43.475075, 35.214325>,  <30.205198, 43.207436, 35.923309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499691, 43.475075, 35.214325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807575, 43.351093, 35.437565>,  <30.992306, 43.276707, 35.571510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807575, 43.351093, 35.437565>,  <30.499691, 43.475075, 35.214325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807575, 43.351093, 35.437565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351621, -0.523835, -0.775860,
		0.532831, 0.793428, -0.294216,
		0.769710, -0.309950, 0.558102,
		31.038488, 43.258110, 35.604996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045906, 43.623581, 34.777065>,  <30.499691, 43.475075, 35.214325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045906, 43.623581, 34.777065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142246, 43.328697, 35.029575>,  <31.200050, 43.151768, 35.181084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142246, 43.328697, 35.029575>,  <31.045906, 43.623581, 34.777065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142246, 43.328697, 35.029575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410273, -0.512121, -0.754591,
		0.879583, 0.440740, 0.179113,
		0.240851, -0.737211, 0.631277,
		31.214502, 43.107533, 35.218960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668287, 43.606964, 34.455112>,  <31.045906, 43.623581, 34.777065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668287, 43.606964, 34.455112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614891, 43.288914, 34.691738>,  <31.582853, 43.098083, 34.833714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614891, 43.288914, 34.691738>,  <31.668287, 43.606964, 34.455112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614891, 43.288914, 34.691738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447739, -0.580905, -0.679764,
		0.884144, 0.174126, 0.433554,
		-0.133489, -0.795129, 0.591567,
		31.574844, 43.050377, 34.869209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113640, 43.497505, 33.864033>,  <31.668287, 43.606964, 34.455112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113640, 43.497505, 33.864033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727304, 43.410530, 33.920429>,  <31.495502, 43.358345, 33.954269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727304, 43.410530, 33.920429>,  <32.113640, 43.497505, 33.864033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727304, 43.410530, 33.920429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147742, -0.908995, -0.389744,
		0.212907, -0.355599, 0.910066,
		-0.965838, -0.217434, 0.140994,
		31.437553, 43.345299, 33.962727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070976, 42.764618, 33.975742>,  <32.113640, 43.497505, 33.864033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070976, 42.764618, 33.975742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711544, 42.900501, 33.864643>,  <31.495884, 42.982033, 33.797985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711544, 42.900501, 33.864643>,  <32.070976, 42.764618, 33.975742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711544, 42.900501, 33.864643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186438, -0.868569, -0.459161,
		-0.397223, -0.360812, 0.843818,
		-0.898585, 0.339709, -0.277746,
		31.441969, 43.002415, 33.781319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711933, 43.004280, 34.047733>,  <32.070976, 42.764618, 33.975742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711933, 43.004280, 34.047733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929657, 42.801235, 34.314884>,  <33.060291, 42.679409, 34.475174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929657, 42.801235, 34.314884>,  <32.711933, 43.004280, 34.047733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929657, 42.801235, 34.314884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250621, -0.858187, -0.448000,
		0.800572, 0.076467, -0.594337,
		0.544310, -0.507610, 0.667876,
		33.092949, 42.648952, 34.515247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058208, 42.497036, 33.754154>,  <32.711933, 43.004280, 34.047733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058208, 42.497036, 33.754154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071754, 42.329468, 34.117111>,  <33.079880, 42.228928, 34.334885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071754, 42.329468, 34.117111>,  <33.058208, 42.497036, 33.754154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071754, 42.329468, 34.117111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121578, -0.902898, -0.412305,
		0.992004, -0.096357, -0.081505,
		0.033862, -0.418917, 0.907393,
		33.081913, 42.203793, 34.389328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579140, 41.860760, 33.828468>,  <33.058208, 42.497036, 33.754154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579140, 41.860760, 33.828468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282604, 41.832401, 34.095417>,  <33.104683, 41.815388, 34.255589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282604, 41.832401, 34.095417>,  <33.579140, 41.860760, 33.828468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282604, 41.832401, 34.095417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121115, -0.963945, -0.236940,
		0.660111, -0.256482, 0.706025,
		-0.741340, -0.070896, 0.667374,
		33.060204, 41.811131, 34.295628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640270, 41.234989, 34.225460>,  <33.579140, 41.860760, 33.828468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640270, 41.234989, 34.225460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252502, 41.321728, 34.271416>,  <33.019840, 41.373772, 34.298988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252502, 41.321728, 34.271416>,  <33.640270, 41.234989, 34.225460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252502, 41.321728, 34.271416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239036, -0.940338, -0.242129,
		0.055529, -0.262187, 0.963418,
		-0.969422, 0.216846, 0.114888,
		32.961678, 41.386780, 34.305882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480244, 40.773998, 34.665474>,  <33.640270, 41.234989, 34.225460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480244, 40.773998, 34.665474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149189, 40.895004, 34.476368>,  <32.950558, 40.967606, 34.362904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149189, 40.895004, 34.476368>,  <33.480244, 40.773998, 34.665474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149189, 40.895004, 34.476368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303168, -0.949818, -0.077034,
		-0.472340, 0.079570, 0.877817,
		-0.827637, 0.302512, -0.472760,
		32.900898, 40.985760, 34.334541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973267, 40.231056, 35.020283>,  <33.480244, 40.773998, 34.665474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973267, 40.231056, 35.020283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812134, 40.387619, 34.689335>,  <32.715454, 40.481556, 34.490768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812134, 40.387619, 34.689335>,  <32.973267, 40.231056, 35.020283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812134, 40.387619, 34.689335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191934, -0.919977, -0.341766,
		-0.894926, 0.021128, 0.445715,
		-0.402827, 0.391403, -0.827366,
		32.691284, 40.505039, 34.441124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294109, 40.082218, 34.965866>,  <32.973267, 40.231056, 35.020283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294109, 40.082218, 34.965866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409531, 40.134758, 34.586502>,  <32.478783, 40.166283, 34.358883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409531, 40.134758, 34.586502>,  <32.294109, 40.082218, 34.965866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409531, 40.134758, 34.586502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272820, -0.938204, -0.212938,
		-0.917773, 0.320190, -0.234885,
		0.288550, 0.131347, -0.948413,
		32.496098, 40.174164, 34.301979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798891, 39.887321, 34.567307>,  <32.294109, 40.082218, 34.965866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798891, 39.887321, 34.567307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096962, 39.868813, 34.301205>,  <32.275806, 39.857708, 34.141544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096962, 39.868813, 34.301205>,  <31.798891, 39.887321, 34.567307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096962, 39.868813, 34.301205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204968, -0.965191, -0.162462,
		-0.634583, 0.257420, -0.728724,
		0.745179, -0.046269, -0.665257,
		32.320515, 39.854931, 34.101627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557457, 39.707874, 33.896549>,  <31.798891, 39.887321, 34.567307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557457, 39.707874, 33.896549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949743, 39.633335, 33.872982>,  <32.185116, 39.588612, 33.858841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949743, 39.633335, 33.872982>,  <31.557457, 39.707874, 33.896549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949743, 39.633335, 33.872982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192866, -0.874026, -0.445962,
		0.031612, 0.448725, -0.893111,
		0.980716, -0.186349, -0.058914,
		32.243958, 39.577431, 33.855309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522022, 39.382759, 33.333721>,  <31.557457, 39.707874, 33.896549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522022, 39.382759, 33.333721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873997, 39.290554, 33.499889>,  <32.085182, 39.235233, 33.599590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873997, 39.290554, 33.499889>,  <31.522022, 39.382759, 33.333721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873997, 39.290554, 33.499889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089818, -0.939353, -0.330981,
		0.466525, 0.253929, -0.847275,
		0.879936, -0.230511, 0.415424,
		32.137978, 39.221401, 33.624516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798187, 38.922642, 32.870373>,  <31.522022, 39.382759, 33.333721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798187, 38.922642, 32.870373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022079, 38.841068, 33.191650>,  <32.156414, 38.792126, 33.384415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022079, 38.841068, 33.191650>,  <31.798187, 38.922642, 32.870373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022079, 38.841068, 33.191650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074055, -0.977678, -0.196626,
		0.825360, 0.050577, -0.562337,
		0.559729, -0.203932, 0.803191,
		32.189999, 38.779888, 33.432610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257313, 38.469654, 32.674683>,  <31.798187, 38.922642, 32.870373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257313, 38.469654, 32.674683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231453, 38.411148, 33.069534>,  <32.215935, 38.376045, 33.306446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231453, 38.411148, 33.069534>,  <32.257313, 38.469654, 32.674683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231453, 38.411148, 33.069534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170202, -0.973089, -0.155337,
		0.983286, -0.178054, 0.038019,
		-0.064654, -0.146270, 0.987130,
		32.212055, 38.367268, 33.365673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501480, 37.718937, 32.743073>,  <32.257313, 38.469654, 32.674683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501480, 37.718937, 32.743073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338833, 37.795540, 33.100391>,  <32.241245, 37.841499, 33.314785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338833, 37.795540, 33.100391>,  <32.501480, 37.718937, 32.743073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338833, 37.795540, 33.100391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044985, -0.980795, 0.189784,
		0.912490, 0.036984, 0.407425,
		-0.406619, 0.191504, 0.893301,
		32.216846, 37.852993, 33.368382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891399, 37.362511, 33.217266>,  <32.501480, 37.718937, 32.743073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891399, 37.362511, 33.217266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521194, 37.422115, 33.356537>,  <32.299072, 37.457878, 33.440102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521194, 37.422115, 33.356537>,  <32.891399, 37.362511, 33.217266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521194, 37.422115, 33.356537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018936, -0.936399, 0.350425,
		0.378254, 0.317727, 0.869467,
		-0.925508, 0.149014, 0.348181,
		32.243542, 37.466820, 33.460991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840946, 37.021820, 33.901859>,  <32.891399, 37.362511, 33.217266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840946, 37.021820, 33.901859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464569, 37.086475, 33.782867>,  <32.238743, 37.125267, 33.711472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464569, 37.086475, 33.782867>,  <32.840946, 37.021820, 33.901859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464569, 37.086475, 33.782867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270388, -0.887560, 0.372998,
		-0.203741, 0.431406, 0.878851,
		-0.940946, 0.161636, -0.297479,
		32.182285, 37.134968, 33.693623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385174, 36.810158, 34.464790>,  <32.840946, 37.021820, 33.901859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385174, 36.810158, 34.464790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128174, 36.815861, 34.158329>,  <31.973972, 36.819283, 33.974453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128174, 36.815861, 34.158329>,  <32.385174, 36.810158, 34.464790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128174, 36.815861, 34.158329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412521, -0.849018, 0.330144,
		-0.645767, 0.528171, 0.551381,
		-0.642505, 0.014260, -0.766149,
		31.935423, 36.820137, 33.928486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763937, 36.795712, 34.806892>,  <32.385174, 36.810158, 34.464790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763937, 36.795712, 34.806892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702623, 36.669456, 34.432323>,  <31.665834, 36.593704, 34.207584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702623, 36.669456, 34.432323>,  <31.763937, 36.795712, 34.806892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702623, 36.669456, 34.432323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435545, -0.829028, 0.350733,
		-0.887020, 0.461614, -0.010395,
		-0.153286, -0.315635, -0.936418,
		31.656637, 36.574764, 34.151398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127853, 36.338764, 34.906540>,  <31.763937, 36.795712, 34.806892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127853, 36.338764, 34.906540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297260, 36.234486, 34.559513>,  <31.398905, 36.171917, 34.351295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297260, 36.234486, 34.559513>,  <31.127853, 36.338764, 34.906540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297260, 36.234486, 34.559513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172360, -0.963392, 0.205349,
		-0.889340, 0.062565, -0.452945,
		0.423516, -0.260695, -0.867567,
		31.424314, 36.156277, 34.299244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580421, 36.045746, 34.437443>,  <31.127853, 36.338764, 34.906540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580421, 36.045746, 34.437443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930069, 35.901718, 34.307049>,  <31.139858, 35.815304, 34.228813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930069, 35.901718, 34.307049>,  <30.580421, 36.045746, 34.437443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930069, 35.901718, 34.307049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376738, -0.926231, 0.012855,
		-0.306564, 0.111573, -0.945288,
		0.874120, -0.360067, -0.325983,
		31.192305, 35.793697, 34.209255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343161, 35.449352, 34.139866>,  <30.580421, 36.045746, 34.437443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343161, 35.449352, 34.139866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739801, 35.410877, 34.174435>,  <30.977787, 35.387791, 34.195175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739801, 35.410877, 34.174435>,  <30.343161, 35.449352, 34.139866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739801, 35.410877, 34.174435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102933, -0.991683, 0.077258,
		0.078269, -0.085505, -0.993259,
		0.991604, -0.096192, 0.086419,
		31.037283, 35.382019, 34.200359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430799, 34.782097, 33.892483>,  <30.343161, 35.449352, 34.139866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430799, 34.782097, 33.892483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788418, 34.848965, 34.058731>,  <31.002989, 34.889084, 34.158478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788418, 34.848965, 34.058731>,  <30.430799, 34.782097, 33.892483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788418, 34.848965, 34.058731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079431, -0.972219, 0.220183,
		0.440880, -0.163841, -0.882486,
		0.894045, 0.167171, 0.415618,
		31.056631, 34.899117, 34.183414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943840, 34.225586, 33.627254>,  <30.430799, 34.782097, 33.892483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943840, 34.225586, 33.627254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088463, 34.379299, 33.967045>,  <31.175236, 34.471527, 34.170918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088463, 34.379299, 33.967045>,  <30.943840, 34.225586, 33.627254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088463, 34.379299, 33.967045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122744, -0.883558, 0.451950,
		0.924236, -0.267673, -0.272286,
		0.361555, 0.384286, 0.849472,
		31.196930, 34.494587, 34.221886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399630, 33.640244, 33.911480>,  <30.943840, 34.225586, 33.627254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399630, 33.640244, 33.911480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320288, 33.871876, 34.227791>,  <31.272682, 34.010853, 34.417576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320288, 33.871876, 34.227791>,  <31.399630, 33.640244, 33.911480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320288, 33.871876, 34.227791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174254, -0.773118, 0.609856,
		0.964516, 0.258764, 0.052446,
		-0.198356, 0.579076, 0.790775,
		31.260780, 34.045597, 34.465023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853422, 33.331348, 34.439060>,  <31.399630, 33.640244, 33.911480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853422, 33.331348, 34.439060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591597, 33.558376, 34.638824>,  <31.434502, 33.694592, 34.758682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591597, 33.558376, 34.638824>,  <31.853422, 33.331348, 34.439060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591597, 33.558376, 34.638824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247263, -0.463534, 0.850880,
		0.714428, 0.680441, 0.163073,
		-0.654564, 0.567570, 0.499410,
		31.395227, 33.728649, 34.788647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273129, 33.754971, 34.971745>,  <31.853422, 33.331348, 34.439060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273129, 33.754971, 34.971745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909332, 33.623661, 35.073769>,  <31.691053, 33.544876, 35.134983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909332, 33.623661, 35.073769>,  <32.273129, 33.754971, 34.971745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909332, 33.623661, 35.073769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401141, -0.531951, 0.745731,
		-0.109122, 0.780554, 0.615490,
		-0.909494, -0.328274, 0.255064,
		31.636484, 33.525177, 35.150288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629509, 34.284950, 35.378426>,  <32.273129, 33.754971, 34.971745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629509, 34.284950, 35.378426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911236, 34.568901, 35.379425>,  <33.080273, 34.739273, 35.380024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911236, 34.568901, 35.379425>,  <32.629509, 34.284950, 35.378426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911236, 34.568901, 35.379425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216125, -0.217785, 0.951767,
		0.676183, -0.669808, -0.306813,
		0.704320, 0.709878, 0.002500,
		33.122532, 34.781864, 35.380177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305058, 34.036503, 35.321762>,  <32.629509, 34.284950, 35.378426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305058, 34.036503, 35.321762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341511, 34.389538, 35.506252>,  <33.363380, 34.601360, 35.616947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341511, 34.389538, 35.506252>,  <33.305058, 34.036503, 35.321762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341511, 34.389538, 35.506252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328375, -0.463884, 0.822789,
		0.940141, 0.076474, -0.332094,
		0.091131, 0.882589, 0.461229,
		33.368851, 34.654316, 35.644623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979511, 34.182621, 35.630550>,  <33.305058, 34.036503, 35.321762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979511, 34.182621, 35.630550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699547, 34.366287, 35.849380>,  <33.531570, 34.476486, 35.980679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699547, 34.366287, 35.849380>,  <33.979511, 34.182621, 35.630550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699547, 34.366287, 35.849380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358595, -0.436520, 0.825142,
		0.617688, 0.773703, 0.140869,
		-0.699908, 0.459166, 0.547079,
		33.489574, 34.504036, 36.013504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360134, 34.585468, 36.056965>,  <33.979511, 34.182621, 35.630550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360134, 34.585468, 36.056965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000168, 34.477417, 36.193897>,  <33.784187, 34.412586, 36.276058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000168, 34.477417, 36.193897>,  <34.360134, 34.585468, 36.056965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000168, 34.477417, 36.193897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433564, -0.638344, 0.636034,
		0.046720, 0.720798, 0.691568,
		-0.899911, -0.270124, 0.342335,
		33.730194, 34.396381, 36.296597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147144, 34.757130, 36.805264>,  <34.360134, 34.585468, 36.056965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147144, 34.757130, 36.805264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008141, 34.405781, 36.673988>,  <33.924740, 34.194973, 36.595222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008141, 34.405781, 36.673988>,  <34.147144, 34.757130, 36.805264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008141, 34.405781, 36.673988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544027, -0.473938, 0.692399,
		-0.763722, 0.062072, 0.642554,
		-0.347510, -0.878368, -0.328188,
		33.903889, 34.142269, 36.575531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805672, 34.371349, 37.285580>,  <34.147144, 34.757130, 36.805264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805672, 34.371349, 37.285580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955757, 34.086830, 37.047832>,  <34.045807, 33.916119, 36.905186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955757, 34.086830, 37.047832>,  <33.805672, 34.371349, 37.285580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955757, 34.086830, 37.047832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511807, -0.375631, 0.772629,
		-0.772833, -0.594097, 0.223108,
		0.375210, -0.711301, -0.594363,
		34.068321, 33.873440, 36.869522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624290, 33.713768, 37.392990>,  <33.805672, 34.371349, 37.285580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624290, 33.713768, 37.392990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989285, 33.720600, 37.229485>,  <34.208279, 33.724697, 37.131382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989285, 33.720600, 37.229485>,  <33.624290, 33.713768, 37.392990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989285, 33.720600, 37.229485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389689, -0.340509, 0.855685,
		-0.124574, -0.940086, -0.317363,
		0.912482, 0.017077, -0.408760,
		34.263031, 33.725723, 37.106857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956219, 33.236656, 37.762238>,  <33.624290, 33.713768, 37.392990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956219, 33.236656, 37.762238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271111, 33.420330, 37.597595>,  <34.460045, 33.530533, 37.498810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271111, 33.420330, 37.597595>,  <33.956219, 33.236656, 37.762238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271111, 33.420330, 37.597595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578040, -0.316982, 0.751926,
		0.214800, -0.829863, -0.514964,
		0.787230, 0.459184, -0.411606,
		34.507278, 33.558086, 37.474113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417149, 32.794521, 37.722572>,  <33.956219, 33.236656, 37.762238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417149, 32.794521, 37.722572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641991, 33.125229, 37.713772>,  <34.776897, 33.323654, 37.708492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641991, 33.125229, 37.713772>,  <34.417149, 32.794521, 37.722572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641991, 33.125229, 37.713772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577657, -0.373419, 0.725859,
		0.591902, -0.420722, -0.687491,
		0.562107, 0.826772, -0.022005,
		34.810623, 33.373260, 37.707169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040123, 32.554771, 37.924286>,  <34.417149, 32.794521, 37.722572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040123, 32.554771, 37.924286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056549, 32.951569, 37.972042>,  <35.066406, 33.189648, 38.000698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056549, 32.951569, 37.972042>,  <35.040123, 32.554771, 37.924286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056549, 32.951569, 37.972042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519415, -0.123274, 0.845584,
		0.853535, 0.027289, -0.520321,
		0.041067, 0.991998, 0.119393,
		35.068871, 33.249168, 38.007858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792667, 32.722702, 38.150951>,  <35.040123, 32.554771, 37.924286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792667, 32.722702, 38.150951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575222, 33.032681, 38.279915>,  <35.444756, 33.218666, 38.357292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575222, 33.032681, 38.279915>,  <35.792667, 32.722702, 38.150951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575222, 33.032681, 38.279915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534809, 0.023756, 0.844639,
		0.646887, 0.631586, -0.427360,
		-0.543614, 0.774942, 0.322410,
		35.412136, 33.265163, 38.376637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255466, 33.238735, 38.440712>,  <35.792667, 32.722702, 38.150951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255466, 33.238735, 38.440712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894283, 33.331455, 38.585449>,  <35.677574, 33.387089, 38.672291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894283, 33.331455, 38.585449>,  <36.255466, 33.238735, 38.440712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894283, 33.331455, 38.585449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387772, 0.076636, 0.918564,
		0.185192, 0.969740, -0.159085,
		-0.902960, 0.231800, 0.361846,
		35.623394, 33.400993, 38.694004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335747, 33.752613, 38.955471>,  <36.255466, 33.238735, 38.440712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335747, 33.752613, 38.955471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983837, 33.583649, 39.042709>,  <35.772690, 33.482269, 39.095051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983837, 33.583649, 39.042709>,  <36.335747, 33.752613, 38.955471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983837, 33.583649, 39.042709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231932, 0.019080, 0.972545,
		-0.414975, 0.906204, 0.081184,
		-0.879775, -0.422411, 0.218096,
		35.719906, 33.456924, 39.108139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968632, 34.161274, 39.521458>,  <36.335747, 33.752613, 38.955471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968632, 34.161274, 39.521458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759895, 33.820236, 39.532547>,  <35.634651, 33.615616, 39.539200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759895, 33.820236, 39.532547>,  <35.968632, 34.161274, 39.521458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759895, 33.820236, 39.532547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073874, 0.077541, 0.994248,
		-0.849836, 0.516796, -0.103448,
		-0.521845, -0.852590, 0.027719,
		35.603340, 33.564461, 39.540863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327698, 34.225132, 39.933800>,  <35.968632, 34.161274, 39.521458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327698, 34.225132, 39.933800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455032, 33.846592, 39.956036>,  <35.531433, 33.619469, 39.969379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455032, 33.846592, 39.956036>,  <35.327698, 34.225132, 39.933800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455032, 33.846592, 39.956036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039219, 0.071740, 0.996652,
		-0.947167, -0.315087, 0.059952,
		0.318334, -0.946347, 0.055592,
		35.550533, 33.562687, 39.972713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748505, 33.937042, 40.350269>,  <35.327698, 34.225132, 39.933800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748505, 33.937042, 40.350269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080780, 33.714363, 40.347404>,  <35.280144, 33.580757, 40.345684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080780, 33.714363, 40.347404>,  <34.748505, 33.937042, 40.350269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080780, 33.714363, 40.347404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007161, -0.023549, 0.999697,
		-0.556694, -0.830384, -0.023549,
		0.830687, -0.556694, -0.007164,
		35.329987, 33.547356, 40.345257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599304, 33.340450, 40.809460>,  <34.748505, 33.937042, 40.350269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599304, 33.340450, 40.809460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995174, 33.393253, 40.787163>,  <35.232697, 33.424934, 40.773785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995174, 33.393253, 40.787163>,  <34.599304, 33.340450, 40.809460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995174, 33.393253, 40.787163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063148, -0.052561, 0.996619,
		0.128633, -0.989854, -0.060354,
		0.989680, 0.132009, -0.055746,
		35.292080, 33.432858, 40.770439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856678, 32.976181, 41.370850>,  <34.599304, 33.340450, 40.809460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856678, 32.976181, 41.370850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191563, 33.177334, 41.284889>,  <35.392494, 33.298023, 41.233315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191563, 33.177334, 41.284889>,  <34.856678, 32.976181, 41.370850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191563, 33.177334, 41.284889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259748, -0.019852, 0.965472,
		0.481250, -0.864129, -0.147242,
		0.837215, 0.502879, -0.214902,
		35.442726, 33.328197, 41.220417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464539, 32.537121, 41.657078>,  <34.856678, 32.976181, 41.370850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464539, 32.537121, 41.657078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578850, 32.919678, 41.632938>,  <35.647438, 33.149212, 41.618454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578850, 32.919678, 41.632938>,  <35.464539, 32.537121, 41.657078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578850, 32.919678, 41.632938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420959, -0.068718, 0.904473,
		0.860884, -0.283886, -0.422241,
		0.285783, 0.956393, -0.060346,
		35.664585, 33.206596, 41.614834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073769, 32.525150, 42.051575>,  <35.464539, 32.537121, 41.657078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073769, 32.525150, 42.051575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950615, 32.904934, 42.027111>,  <35.876724, 33.132805, 42.012432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950615, 32.904934, 42.027111>,  <36.073769, 32.525150, 42.051575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950615, 32.904934, 42.027111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366418, 0.177655, 0.913333,
		0.878035, 0.258789, -0.402595,
		-0.307883, 0.949456, -0.061162,
		35.858250, 33.189770, 42.008762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684620, 32.931046, 42.345554>,  <36.073769, 32.525150, 42.051575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684620, 32.931046, 42.345554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344982, 33.141846, 42.331070>,  <36.141201, 33.268326, 42.322380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344982, 33.141846, 42.331070>,  <36.684620, 32.931046, 42.345554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344982, 33.141846, 42.331070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149567, 0.305586, 0.940344,
		0.506628, 0.793024, -0.338293,
		-0.849092, 0.527002, -0.036208,
		36.090256, 33.299946, 42.320206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824070, 33.602634, 42.677765>,  <36.684620, 32.931046, 42.345554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824070, 33.602634, 42.677765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426544, 33.558804, 42.670635>,  <36.188026, 33.532505, 42.666359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426544, 33.558804, 42.670635>,  <36.824070, 33.602634, 42.677765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426544, 33.558804, 42.670635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052953, 0.326799, 0.943609,
		-0.097570, 0.938721, -0.330581,
		-0.993819, -0.109573, -0.017822,
		36.128399, 33.525932, 42.665287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672306, 33.997154, 43.276272>,  <36.824070, 33.602634, 42.677765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672306, 33.997154, 43.276272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311710, 33.840691, 43.202175>,  <36.095352, 33.746815, 43.157715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311710, 33.840691, 43.202175>,  <36.672306, 33.997154, 43.276272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311710, 33.840691, 43.202175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253341, 0.129889, 0.958617,
		-0.350907, 0.911112, -0.216189,
		-0.901489, -0.391155, -0.185243,
		36.041264, 33.723343, 43.146603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166988, 34.513302, 43.588692>,  <36.672306, 33.997154, 43.276272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166988, 34.513302, 43.588692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007397, 34.148693, 43.548798>,  <35.911640, 33.929928, 43.524860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007397, 34.148693, 43.548798>,  <36.166988, 34.513302, 43.588692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007397, 34.148693, 43.548798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085206, -0.071439, 0.993799,
		-0.912993, 0.405002, -0.049164,
		-0.398978, -0.911521, -0.099732,
		35.887703, 33.875237, 43.518879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572975, 34.502975, 43.945251>,  <36.166988, 34.513302, 43.588692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572975, 34.502975, 43.945251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673515, 34.116470, 43.922737>,  <35.733837, 33.884567, 43.909229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673515, 34.116470, 43.922737>,  <35.572975, 34.502975, 43.945251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673515, 34.116470, 43.922737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174427, -0.102418, 0.979329,
		-0.952050, -0.236336, -0.194284,
		0.251349, -0.966259, -0.056284,
		35.748920, 33.826591, 43.905853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999313, 34.182709, 44.172413>,  <35.572975, 34.502975, 43.945251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999313, 34.182709, 44.172413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291775, 33.915325, 44.226936>,  <35.467251, 33.754894, 44.259651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291775, 33.915325, 44.226936>,  <34.999313, 34.182709, 44.172413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291775, 33.915325, 44.226936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240693, -0.065808, 0.968368,
		-0.638340, -0.740836, -0.209008,
		0.731156, -0.668455, 0.136306,
		35.511120, 33.714790, 44.267830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642635, 33.667538, 44.544678>,  <34.999313, 34.182709, 44.172413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642635, 33.667538, 44.544678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025455, 33.580631, 44.621460>,  <35.255146, 33.528488, 44.667530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025455, 33.580631, 44.621460>,  <34.642635, 33.667538, 44.544678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025455, 33.580631, 44.621460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227196, -0.150747, 0.962111,
		-0.180108, -0.964399, -0.193637,
		0.957049, -0.217277, 0.191957,
		35.312572, 33.515450, 44.679047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585052, 33.082581, 44.961327>,  <34.642635, 33.667538, 44.544678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585052, 33.082581, 44.961327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960403, 33.209755, 45.015533>,  <35.185616, 33.286060, 45.048058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960403, 33.209755, 45.015533>,  <34.585052, 33.082581, 44.961327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960403, 33.209755, 45.015533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086511, -0.163541, 0.982736,
		0.334608, -0.933901, -0.125959,
		0.938378, 0.317934, 0.135515,
		35.241917, 33.305134, 45.056187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886936, 32.679226, 45.438457>,  <34.585052, 33.082581, 44.961327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886936, 32.679226, 45.438457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140228, 32.988708, 45.446407>,  <35.292202, 33.174400, 45.451180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140228, 32.988708, 45.446407>,  <34.886936, 32.679226, 45.438457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140228, 32.988708, 45.446407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081303, -0.092040, 0.992431,
		0.769682, -0.626821, -0.121187,
		0.633230, 0.773709, 0.019879,
		35.330196, 33.220821, 45.452370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428539, 32.492989, 45.894829>,  <34.886936, 32.679226, 45.438457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428539, 32.492989, 45.894829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397400, 32.891571, 45.882065>,  <35.378716, 33.130722, 45.874405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397400, 32.891571, 45.882065>,  <35.428539, 32.492989, 45.894829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397400, 32.891571, 45.882065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121324, 0.041240, 0.991756,
		0.989556, 0.073331, -0.124104,
		-0.077845, 0.996455, -0.031912,
		35.374046, 33.190506, 45.872490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987843, 32.704063, 46.247551>,  <35.428539, 32.492989, 45.894829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987843, 32.704063, 46.247551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774326, 33.042164, 46.257526>,  <35.646217, 33.245026, 46.263512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774326, 33.042164, 46.257526>,  <35.987843, 32.704063, 46.247551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774326, 33.042164, 46.257526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068207, 0.013646, 0.997578,
		0.842863, 0.534196, -0.064936,
		-0.533789, 0.845250, 0.024935,
		35.614189, 33.295738, 46.265007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233082, 33.163380, 46.748344>,  <35.987843, 32.704063, 46.247551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233082, 33.163380, 46.748344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866405, 33.318512, 46.709858>,  <35.646400, 33.411591, 46.686764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866405, 33.318512, 46.709858>,  <36.233082, 33.163380, 46.748344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866405, 33.318512, 46.709858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087872, 0.039244, 0.995358,
		0.389811, 0.920893, -0.001895,
		-0.916693, 0.387835, -0.096218,
		35.591396, 33.434864, 46.680992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134712, 33.753399, 47.144016>,  <36.233082, 33.163380, 46.748344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134712, 33.753399, 47.144016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766430, 33.604740, 47.096394>,  <35.545460, 33.515545, 47.067822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766430, 33.604740, 47.096394>,  <36.134712, 33.753399, 47.144016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766430, 33.604740, 47.096394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155709, 0.070106, 0.985312,
		-0.357842, 0.925723, -0.122416,
		-0.920708, -0.371647, -0.119056,
		35.490219, 33.493244, 47.060677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672161, 34.307896, 47.162155>,  <36.134712, 33.753399, 47.144016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672161, 34.307896, 47.162155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508049, 33.962547, 47.279640>,  <35.409584, 33.755337, 47.350132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508049, 33.962547, 47.279640>,  <35.672161, 34.307896, 47.162155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508049, 33.962547, 47.279640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038632, 0.338229, 0.940271,
		-0.911142, 0.374424, -0.172121,
		-0.410277, -0.863370, 0.293710,
		35.384968, 33.703537, 47.367752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452892, 34.606949, 47.710545>,  <35.672161, 34.307896, 47.162155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452892, 34.606949, 47.710545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417309, 34.210239, 47.747364>,  <35.395958, 33.972214, 47.769455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417309, 34.210239, 47.747364>,  <35.452892, 34.606949, 47.710545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417309, 34.210239, 47.747364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082657, 0.084749, 0.992968,
		-0.992600, 0.095943, 0.074437,
		-0.088960, -0.991772, 0.092053,
		35.390621, 33.912708, 47.774979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026619, 34.445927, 48.335648>,  <35.452892, 34.606949, 47.710545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026619, 34.445927, 48.335648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188160, 34.090984, 48.246655>,  <35.285084, 33.878017, 48.193256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188160, 34.090984, 48.246655>,  <35.026619, 34.445927, 48.335648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188160, 34.090984, 48.246655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091682, -0.281232, 0.955250,
		-0.910220, -0.365379, -0.194930,
		0.403849, -0.887359, -0.222485,
		35.309315, 33.824776, 48.179909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621552, 34.028969, 48.698166>,  <35.026619, 34.445927, 48.335648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621552, 34.028969, 48.698166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961391, 33.827190, 48.636578>,  <35.165295, 33.706123, 48.599625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961391, 33.827190, 48.636578>,  <34.621552, 34.028969, 48.698166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961391, 33.827190, 48.636578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105941, -0.122750, 0.986767,
		-0.516672, -0.854672, -0.050847,
		0.849604, -0.504448, -0.153966,
		35.216274, 33.675858, 48.590389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471905, 33.470146, 49.098610>,  <34.621552, 34.028969, 48.698166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471905, 33.470146, 49.098610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866238, 33.462326, 49.031982>,  <35.102837, 33.457634, 48.992004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866238, 33.462326, 49.031982>,  <34.471905, 33.470146, 49.098610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866238, 33.462326, 49.031982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148583, -0.358841, 0.921497,
		-0.077788, -0.933194, -0.350854,
		0.985836, -0.019550, -0.166570,
		35.161987, 33.456459, 48.982010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696030, 32.896858, 49.407940>,  <34.471905, 33.470146, 49.098610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696030, 32.896858, 49.407940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023895, 33.124775, 49.384281>,  <35.220615, 33.261524, 49.370087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023895, 33.124775, 49.384281>,  <34.696030, 32.896858, 49.407940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023895, 33.124775, 49.384281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211681, -0.205326, 0.955527,
		0.532305, -0.795728, -0.288911,
		0.819660, 0.569788, -0.059145,
		35.269794, 33.295712, 49.366539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244087, 32.508236, 49.732449>,  <34.696030, 32.896858, 49.407940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244087, 32.508236, 49.732449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351505, 32.892586, 49.759586>,  <35.415955, 33.123196, 49.775867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351505, 32.892586, 49.759586>,  <35.244087, 32.508236, 49.732449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351505, 32.892586, 49.759586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303885, -0.151340, 0.940612,
		0.914079, -0.231976, -0.332637,
		0.268541, 0.960876, 0.067842,
		35.432068, 33.180847, 49.779938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888809, 32.517864, 50.025635>,  <35.244087, 32.508236, 49.732449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888809, 32.517864, 50.025635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771252, 32.889786, 50.114254>,  <35.700718, 33.112938, 50.167423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771252, 32.889786, 50.114254>,  <35.888809, 32.517864, 50.025635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771252, 32.889786, 50.114254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412488, -0.085711, 0.906922,
		0.862252, 0.357924, -0.358345,
		-0.293895, 0.929809, 0.221544,
		35.683083, 33.168728, 50.180717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415279, 32.737068, 50.335533>,  <35.888809, 32.517864, 50.025635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415279, 32.737068, 50.335533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144161, 33.004890, 50.457047>,  <35.981491, 33.165585, 50.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144161, 33.004890, 50.457047>,  <36.415279, 32.737068, 50.335533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144161, 33.004890, 50.457047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281420, -0.145456, 0.948497,
		0.679262, 0.728377, -0.089838,
		-0.677795, 0.669560, 0.303782,
		35.940823, 33.205757, 50.548180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786167, 33.163261, 50.810692>,  <36.415279, 32.737068, 50.335533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786167, 33.163261, 50.810692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399872, 33.198093, 50.908478>,  <36.168095, 33.218994, 50.967148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399872, 33.198093, 50.908478>,  <36.786167, 33.163261, 50.810692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399872, 33.198093, 50.908478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254537, 0.134300, 0.957692,
		0.050564, 0.987107, -0.151864,
		-0.965740, 0.087080, 0.244464,
		36.110149, 33.224216, 50.981815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731255, 33.743153, 51.265934>,  <36.786167, 33.163261, 50.810692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731255, 33.743153, 51.265934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390022, 33.544559, 51.330139>,  <36.185284, 33.425404, 51.368660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390022, 33.544559, 51.330139>,  <36.731255, 33.743153, 51.265934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390022, 33.544559, 51.330139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166137, 0.033155, 0.985545,
		-0.494630, 0.867412, 0.054201,
		-0.853076, -0.496485, 0.160508,
		36.134098, 33.395615, 51.378292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501373, 33.996571, 51.966175>,  <36.731255, 33.743153, 51.265934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501373, 33.996571, 51.966175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286713, 33.671577, 51.875069>,  <36.157917, 33.476582, 51.820404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286713, 33.671577, 51.875069>,  <36.501373, 33.996571, 51.966175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286713, 33.671577, 51.875069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040720, -0.244683, 0.968748,
		-0.842820, 0.529157, 0.098225,
		-0.536653, -0.812480, -0.227771,
		36.125717, 33.427834, 51.806736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130478, 33.860264, 52.493645>,  <36.501373, 33.996571, 51.966175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130478, 33.860264, 52.493645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116875, 33.505047, 52.310242>,  <36.108711, 33.291916, 52.200199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116875, 33.505047, 52.310242>,  <36.130478, 33.860264, 52.493645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116875, 33.505047, 52.310242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063432, -0.455927, 0.887754,
		-0.997406, 0.059275, -0.040825,
		-0.034009, -0.888041, -0.458504,
		36.106670, 33.238636, 52.172691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571510, 33.516758, 52.643127>,  <36.130478, 33.860264, 52.493645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571510, 33.516758, 52.643127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824219, 33.226067, 52.535252>,  <35.975845, 33.051651, 52.470524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824219, 33.226067, 52.535252>,  <35.571510, 33.516758, 52.643127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824219, 33.226067, 52.535252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208980, -0.494723, 0.843550,
		-0.746454, -0.476570, -0.464422,
		0.631771, -0.726726, -0.269694,
		36.013752, 33.008049, 52.454342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213074, 32.877075, 52.568016>,  <35.571510, 33.516758, 52.643127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213074, 32.877075, 52.568016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596935, 32.841911, 52.674854>,  <35.827251, 32.820812, 52.738956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596935, 32.841911, 52.674854>,  <35.213074, 32.877075, 52.568016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596935, 32.841911, 52.674854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271948, -0.531739, 0.802059,
		0.071517, -0.842333, -0.534191,
		0.959651, -0.087911, 0.267099,
		35.884830, 32.815536, 52.754982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486778, 32.203079, 52.677090>,  <35.213074, 32.877075, 52.568016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486778, 32.203079, 52.677090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666985, 32.448067, 52.936909>,  <35.775108, 32.595058, 53.092800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666985, 32.448067, 52.936909>,  <35.486778, 32.203079, 52.677090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666985, 32.448067, 52.936909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130185, -0.674723, 0.726499,
		0.883226, -0.411860, -0.224238,
		0.450515, 0.612470, 0.649551,
		35.802139, 32.631809, 53.131775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178814, 31.648951, 53.070477>,  <35.486778, 32.203079, 52.677090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178814, 31.648951, 53.070477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390198, 31.365351, 53.257259>,  <35.517029, 31.195190, 53.369328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390198, 31.365351, 53.257259>,  <35.178814, 31.648951, 53.070477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390198, 31.365351, 53.257259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351026, 0.683299, 0.640221,
		-0.772988, -0.174417, 0.609974,
		0.528459, -0.709000, 0.466957,
		35.548737, 31.152651, 53.397346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041794, 31.611397, 53.694031>,  <35.178814, 31.648951, 53.070477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041794, 31.611397, 53.694031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412281, 31.460602, 53.694321>,  <35.634575, 31.370125, 53.694492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412281, 31.460602, 53.694321>,  <35.041794, 31.611397, 53.694031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412281, 31.460602, 53.694321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230138, 0.566944, 0.790955,
		-0.298589, -0.732431, 0.611873,
		0.926219, -0.376986, 0.000723,
		35.690147, 31.347506, 53.694538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262775, 31.585159, 54.388641>,  <35.041794, 31.611397, 53.694031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262775, 31.585159, 54.388641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618500, 31.547316, 54.209675>,  <35.831932, 31.524609, 54.102295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618500, 31.547316, 54.209675>,  <35.262775, 31.585159, 54.388641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618500, 31.547316, 54.209675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385840, 0.680403, 0.623040,
		0.245478, -0.726705, 0.641591,
		0.889307, -0.094609, -0.447416,
		35.885292, 31.518932, 54.075451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769611, 31.533974, 54.868553>,  <35.262775, 31.585159, 54.388641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769611, 31.533974, 54.868553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931591, 31.681845, 54.534042>,  <36.028778, 31.770567, 54.333336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931591, 31.681845, 54.534042>,  <35.769611, 31.533974, 54.868553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931591, 31.681845, 54.534042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345158, 0.785145, 0.514212,
		0.846688, -0.496877, 0.190349,
		0.404952, 0.369676, -0.836274,
		36.053078, 31.792747, 54.283161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503151, 31.499285, 54.834442>,  <35.769611, 31.533974, 54.868553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503151, 31.499285, 54.834442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349453, 31.813183, 54.639908>,  <36.257233, 32.001522, 54.523186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349453, 31.813183, 54.639908>,  <36.503151, 31.499285, 54.834442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349453, 31.813183, 54.639908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473876, 0.619738, 0.625593,
		0.792335, 0.009920, -0.610006,
		-0.384249, 0.784746, -0.486339,
		36.234177, 32.048607, 54.494007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064995, 31.911522, 54.619244>,  <36.503151, 31.499285, 54.834442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064995, 31.911522, 54.619244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733482, 32.127880, 54.676582>,  <36.534573, 32.257694, 54.710983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733482, 32.127880, 54.676582>,  <37.064995, 31.911522, 54.619244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733482, 32.127880, 54.676582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436666, 0.464981, 0.770140,
		0.349914, 0.700874, -0.621560,
		-0.828784, 0.540897, 0.143344,
		36.484848, 32.290150, 54.719585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477261, 31.835743, 53.912724>,  <37.064995, 31.911522, 54.619244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477261, 31.835743, 53.912724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293442, 31.496656, 53.806744>,  <37.183151, 31.293205, 53.743156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293442, 31.496656, 53.806744>,  <37.477261, 31.835743, 53.912724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293442, 31.496656, 53.806744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592842, -0.070649, -0.802214,
		0.661330, -0.525726, 0.535027,
		-0.459544, -0.847715, -0.264950,
		37.155579, 31.242342, 53.727257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020782, 31.427677, 53.725601>,  <37.477261, 31.835743, 53.912724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020782, 31.427677, 53.725601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697868, 31.301931, 53.525814>,  <37.504120, 31.226484, 53.405941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697868, 31.301931, 53.525814>,  <38.020782, 31.427677, 53.725601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697868, 31.301931, 53.525814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523394, 0.009644, -0.852036,
		0.272668, -0.949253, 0.156753,
		-0.807286, -0.314367, -0.499463,
		37.455681, 31.207623, 53.375977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264454, 30.775372, 53.414688>,  <38.020782, 31.427677, 53.725601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264454, 30.775372, 53.414688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967476, 30.958004, 53.218605>,  <37.789288, 31.067585, 53.100956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967476, 30.958004, 53.218605>,  <38.264454, 30.775372, 53.414688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967476, 30.958004, 53.218605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502156, -0.105032, -0.858375,
		-0.443408, -0.883459, -0.151295,
		-0.742448, 0.456584, -0.490206,
		37.744740, 31.094978, 53.071545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065804, 30.317657, 52.891953>,  <38.264454, 30.775372, 53.414688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065804, 30.317657, 52.891953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961308, 30.686340, 52.777260>,  <37.898609, 30.907549, 52.708447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961308, 30.686340, 52.777260>,  <38.065804, 30.317657, 52.891953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961308, 30.686340, 52.777260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520806, -0.115510, -0.845824,
		-0.812721, -0.370292, -0.449854,
		-0.261239, 0.921706, -0.286728,
		37.882935, 30.962852, 52.691242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769691, 30.313818, 52.222641>,  <38.065804, 30.317657, 52.891953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769691, 30.313818, 52.222641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886318, 30.696074, 52.239311>,  <37.956295, 30.925426, 52.249313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886318, 30.696074, 52.239311>,  <37.769691, 30.313818, 52.222641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886318, 30.696074, 52.239311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417541, -0.087957, -0.904391,
		-0.860607, 0.281094, -0.424665,
		0.291571, 0.955641, 0.041672,
		37.973789, 30.982765, 52.251812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599628, 30.688635, 51.534359>,  <37.769691, 30.313818, 52.222641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599628, 30.688635, 51.534359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854515, 30.939823, 51.713070>,  <38.007446, 31.090536, 51.820297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854515, 30.939823, 51.713070>,  <37.599628, 30.688635, 51.534359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854515, 30.939823, 51.713070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485787, 0.122768, -0.865412,
		-0.598304, 0.768492, -0.226831,
		0.637215, 0.627972, 0.446776,
		38.045681, 31.128214, 51.847103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581631, 31.387718, 51.245712>,  <37.599628, 30.688635, 51.534359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581631, 31.387718, 51.245712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949997, 31.352573, 51.397606>,  <38.171017, 31.331486, 51.488743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949997, 31.352573, 51.397606>,  <37.581631, 31.387718, 51.245712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949997, 31.352573, 51.397606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389099, 0.150409, -0.908834,
		0.022738, 0.984712, 0.172701,
		0.920915, -0.087863, 0.379731,
		38.226273, 31.326214, 51.511524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933479, 31.973495, 50.949753>,  <37.581631, 31.387718, 51.245712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933479, 31.973495, 50.949753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236256, 31.750322, 51.085846>,  <38.417923, 31.616419, 51.167500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236256, 31.750322, 51.085846>,  <37.933479, 31.973495, 50.949753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236256, 31.750322, 51.085846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511528, 0.181871, -0.839799,
		0.406672, 0.809714, 0.423063,
		0.756940, -0.557930, 0.340229,
		38.463337, 31.582943, 51.187916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649017, 32.374420, 50.895725>,  <37.933479, 31.973495, 50.949753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649017, 32.374420, 50.895725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719818, 31.981024, 50.910786>,  <38.762299, 31.744986, 50.919823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719818, 31.981024, 50.910786>,  <38.649017, 32.374420, 50.895725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719818, 31.981024, 50.910786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477149, 0.052288, -0.877265,
		0.860814, 0.173240, 0.478527,
		0.176998, -0.983491, 0.037651,
		38.772919, 31.685976, 50.922081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342342, 32.289261, 50.654667>,  <38.649017, 32.374420, 50.895725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342342, 32.289261, 50.654667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163174, 31.936110, 50.598248>,  <39.055672, 31.724220, 50.564396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163174, 31.936110, 50.598248>,  <39.342342, 32.289261, 50.654667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163174, 31.936110, 50.598248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372451, -0.040843, -0.927153,
		0.812800, -0.467828, 0.347122,
		-0.447926, -0.882875, -0.141046,
		39.028797, 31.671247, 50.555935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910545, 31.937622, 50.348869>,  <39.342342, 32.289261, 50.654667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910545, 31.937622, 50.348869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567719, 31.747173, 50.270142>,  <39.362022, 31.632904, 50.222904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567719, 31.747173, 50.270142>,  <39.910545, 31.937622, 50.348869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567719, 31.747173, 50.270142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188348, 0.066016, -0.979881,
		0.479538, -0.876897, 0.033097,
		-0.857069, -0.476124, -0.196819,
		39.310596, 31.604336, 50.211098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073177, 31.451908, 49.790169>,  <39.910545, 31.937622, 50.348869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073177, 31.451908, 49.790169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675808, 31.482811, 49.756390>,  <39.437386, 31.501352, 49.736122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675808, 31.482811, 49.756390>,  <40.073177, 31.451908, 49.790169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675808, 31.482811, 49.756390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088609, 0.052082, -0.994704,
		-0.072452, -0.995650, -0.058586,
		-0.993428, 0.077259, -0.084450,
		39.377781, 31.505987, 49.731056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997101, 31.147507, 49.143185>,  <40.073177, 31.451908, 49.790169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997101, 31.147507, 49.143185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623432, 31.286814, 49.174252>,  <39.399231, 31.370398, 49.192890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623432, 31.286814, 49.174252>,  <39.997101, 31.147507, 49.143185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623432, 31.286814, 49.174252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089520, -0.018044, -0.995822,
		-0.345413, -0.937221, 0.048033,
		-0.934171, 0.348270, 0.077667,
		39.343182, 31.391294, 49.197552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591259, 30.779089, 48.661026>,  <39.997101, 31.147507, 49.143185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591259, 30.779089, 48.661026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398224, 31.122253, 48.731556>,  <39.282402, 31.328152, 48.773876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398224, 31.122253, 48.731556>,  <39.591259, 30.779089, 48.661026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398224, 31.122253, 48.731556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184177, 0.097419, -0.978053,
		-0.856262, -0.504475, 0.110994,
		-0.482590, 0.857913, 0.176329,
		39.253448, 31.379627, 48.784454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008526, 30.783327, 48.159611>,  <39.591259, 30.779089, 48.661026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008526, 30.783327, 48.159611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052105, 31.161510, 48.282402>,  <39.078251, 31.388420, 48.356079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052105, 31.161510, 48.282402>,  <39.008526, 30.783327, 48.159611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052105, 31.161510, 48.282402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306969, 0.325725, -0.894245,
		-0.945463, 0.003191, 0.325714,
		0.108947, 0.945459, 0.306981,
		39.084789, 31.445148, 48.374496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361858, 31.081907, 47.924129>,  <39.008526, 30.783327, 48.159611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361858, 31.081907, 47.924129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610264, 31.389103, 47.986786>,  <38.759308, 31.573421, 48.024380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610264, 31.389103, 47.986786>,  <38.361858, 31.081907, 47.924129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610264, 31.389103, 47.986786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254445, 0.386554, -0.886473,
		-0.741353, 0.510653, 0.435466,
		0.621011, 0.767991, 0.156640,
		38.796566, 31.619501, 48.033779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995647, 31.786718, 47.770721>,  <38.361858, 31.081907, 47.924129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995647, 31.786718, 47.770721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394573, 31.794741, 47.742558>,  <38.633930, 31.799555, 47.725658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394573, 31.794741, 47.742558>,  <37.995647, 31.786718, 47.770721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394573, 31.794741, 47.742558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072971, 0.349793, -0.933981,
		0.005894, 0.936612, 0.350318,
		0.997317, 0.020058, -0.070407,
		38.693768, 31.800758, 47.721436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055607, 32.395767, 47.460720>,  <37.995647, 31.786718, 47.770721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055607, 32.395767, 47.460720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395645, 32.194553, 47.398380>,  <38.599670, 32.073826, 47.360977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395645, 32.194553, 47.398380>,  <38.055607, 32.395767, 47.460720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395645, 32.194553, 47.398380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037354, 0.237592, -0.970646,
		0.525296, 0.830968, 0.183187,
		0.850100, -0.503034, -0.155846,
		38.650677, 32.043644, 47.351627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465992, 32.845924, 47.052223>,  <38.055607, 32.395767, 47.460720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465992, 32.845924, 47.052223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613556, 32.477428, 47.002876>,  <38.702095, 32.256332, 46.973267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613556, 32.477428, 47.002876>,  <38.465992, 32.845924, 47.052223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613556, 32.477428, 47.002876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079835, 0.163648, -0.983283,
		0.926029, 0.352895, 0.133919,
		0.368911, -0.921241, -0.123369,
		38.724228, 32.201057, 46.965866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100140, 32.816540, 46.582092>,  <38.465992, 32.845924, 47.052223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100140, 32.816540, 46.582092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961590, 32.442467, 46.552559>,  <38.878460, 32.218021, 46.534840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961590, 32.442467, 46.552559>,  <39.100140, 32.816540, 46.582092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961590, 32.442467, 46.552559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066849, 0.053897, -0.996306,
		0.935711, -0.350031, 0.043848,
		-0.346374, -0.935186, -0.073832,
		38.857677, 32.161911, 46.530411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244686, 32.555462, 45.947155>,  <39.100140, 32.816540, 46.582092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244686, 32.555462, 45.947155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009136, 32.249317, 46.051037>,  <38.867805, 32.065632, 46.113365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009136, 32.249317, 46.051037>,  <39.244686, 32.555462, 45.947155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009136, 32.249317, 46.051037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151756, -0.210909, -0.965654,
		0.793848, -0.608063, 0.008051,
		-0.588876, -0.765361, 0.259708,
		38.832474, 32.019711, 46.128948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487743, 31.970287, 45.587109>,  <39.244686, 32.555462, 45.947155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487743, 31.970287, 45.587109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103741, 31.903631, 45.677105>,  <38.873341, 31.863638, 45.731102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103741, 31.903631, 45.677105>,  <39.487743, 31.970287, 45.587109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103741, 31.903631, 45.677105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202673, -0.140809, -0.969070,
		0.193167, -0.975912, 0.101404,
		-0.960005, -0.166640, 0.224991,
		38.815739, 31.853640, 45.744602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298798, 31.469271, 45.110237>,  <39.487743, 31.970287, 45.587109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298798, 31.469271, 45.110237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958912, 31.640675, 45.233109>,  <38.754978, 31.743517, 45.306831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958912, 31.640675, 45.233109>,  <39.298798, 31.469271, 45.110237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958912, 31.640675, 45.233109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279995, 0.126928, -0.951574,
		-0.446747, -0.894578, 0.012127,
		-0.849718, 0.428508, 0.307182,
		38.703995, 31.769226, 45.325264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794079, 31.125177, 44.704998>,  <39.298798, 31.469271, 45.110237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794079, 31.125177, 44.704998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624546, 31.468000, 44.822178>,  <38.522827, 31.673695, 44.892487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624546, 31.468000, 44.822178>,  <38.794079, 31.125177, 44.704998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624546, 31.468000, 44.822178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427298, 0.095982, -0.899001,
		-0.798612, -0.506204, 0.325538,
		-0.423832, 0.857056, 0.292953,
		38.497395, 31.725117, 44.910065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089310, 31.008329, 44.647896>,  <38.794079, 31.125177, 44.704998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089310, 31.008329, 44.647896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158318, 31.402081, 44.633854>,  <38.199722, 31.638332, 44.625431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158318, 31.402081, 44.633854>,  <38.089310, 31.008329, 44.647896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158318, 31.402081, 44.633854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462299, 0.049454, -0.885344,
		-0.869779, 0.168969, 0.463610,
		0.172523, 0.984380, -0.035100,
		38.210075, 31.697395, 44.623325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456478, 31.205429, 44.368294>,  <38.089310, 31.008329, 44.647896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456478, 31.205429, 44.368294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728069, 31.494274, 44.315319>,  <37.891026, 31.667582, 44.283535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728069, 31.494274, 44.315319>,  <37.456478, 31.205429, 44.368294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728069, 31.494274, 44.315319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354559, 0.164567, -0.920438,
		-0.642862, 0.671918, 0.367768,
		0.678982, 0.722110, -0.132441,
		37.931763, 31.710907, 44.275585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073414, 31.668606, 44.035709>,  <37.456478, 31.205429, 44.368294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073414, 31.668606, 44.035709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452869, 31.776203, 43.969112>,  <37.680542, 31.840761, 43.929153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452869, 31.776203, 43.969112>,  <37.073414, 31.668606, 44.035709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452869, 31.776203, 43.969112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216235, 0.167203, -0.961918,
		-0.230913, 0.948517, 0.216782,
		0.948642, 0.268995, -0.166494,
		37.737461, 31.856901, 43.919163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016670, 32.265419, 43.595097>,  <37.073414, 31.668606, 44.035709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016670, 32.265419, 43.595097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392971, 32.137733, 43.549351>,  <37.618752, 32.061123, 43.521904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392971, 32.137733, 43.549351>,  <37.016670, 32.265419, 43.595097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392971, 32.137733, 43.549351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097404, 0.068655, -0.992874,
		0.324794, 0.945191, 0.033494,
		0.940755, -0.319218, -0.114364,
		37.675198, 32.041969, 43.515041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453762, 32.827923, 43.204002>,  <37.016670, 32.265419, 43.595097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453762, 32.827923, 43.204002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619465, 32.470993, 43.132286>,  <37.718887, 32.256836, 43.089256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619465, 32.470993, 43.132286>,  <37.453762, 32.827923, 43.204002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619465, 32.470993, 43.132286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065316, 0.225626, -0.972022,
		0.907813, 0.390957, 0.151750,
		0.414258, -0.892326, -0.179290,
		37.743744, 32.203297, 43.078499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017681, 32.895199, 42.754322>,  <37.453762, 32.827923, 43.204002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017681, 32.895199, 42.754322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918972, 32.509678, 42.713951>,  <37.859745, 32.278366, 42.689728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918972, 32.509678, 42.713951>,  <38.017681, 32.895199, 42.754322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918972, 32.509678, 42.713951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024941, 0.110429, -0.993571,
		0.968752, -0.242669, -0.051289,
		-0.246773, -0.963803, -0.100926,
		37.844940, 32.220535, 42.683674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372749, 32.754910, 42.128151>,  <38.017681, 32.895199, 42.754322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372749, 32.754910, 42.128151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137737, 32.434895, 42.176731>,  <37.996731, 32.242886, 42.205879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137737, 32.434895, 42.176731>,  <38.372749, 32.754910, 42.128151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137737, 32.434895, 42.176731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133342, -0.052315, -0.989688,
		0.798141, -0.597665, -0.075942,
		-0.587529, -0.800037, 0.121449,
		37.961479, 32.194885, 42.213165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722637, 32.267841, 41.679718>,  <38.372749, 32.754910, 42.128151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722637, 32.267841, 41.679718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350430, 32.144802, 41.759239>,  <38.127106, 32.070980, 41.806950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350430, 32.144802, 41.759239>,  <38.722637, 32.267841, 41.679718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350430, 32.144802, 41.759239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163771, -0.136050, -0.977072,
		0.327592, -0.941740, 0.076222,
		-0.930518, -0.307598, 0.198798,
		38.071274, 32.052525, 41.818878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652481, 31.572899, 41.382317>,  <38.722637, 32.267841, 41.679718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652481, 31.572899, 41.382317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287178, 31.728422, 41.430958>,  <38.067997, 31.821737, 41.460144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287178, 31.728422, 41.430958>,  <38.652481, 31.572899, 41.382317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287178, 31.728422, 41.430958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214397, -0.204903, -0.955013,
		-0.346403, -0.898243, 0.270489,
		-0.913257, 0.388811, 0.121601,
		38.013199, 31.845064, 41.467438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203285, 31.151648, 40.986958>,  <38.652481, 31.572899, 41.382317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203285, 31.151648, 40.986958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998074, 31.489161, 41.049999>,  <37.874947, 31.691668, 41.087826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998074, 31.489161, 41.049999>,  <38.203285, 31.151648, 40.986958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998074, 31.489161, 41.049999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219080, 0.048813, -0.974485,
		-0.829944, -0.534465, 0.159813,
		-0.513027, 0.843780, 0.157603,
		37.844166, 31.742294, 41.097279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509113, 31.101631, 40.703121>,  <38.203285, 31.151648, 40.986958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509113, 31.101631, 40.703121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573509, 31.496386, 40.707855>,  <37.612144, 31.733238, 40.710693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573509, 31.496386, 40.707855>,  <37.509113, 31.101631, 40.703121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573509, 31.496386, 40.707855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200122, 0.044378, -0.978766,
		-0.966455, 0.155200, 0.204641,
		0.160986, 0.986886, 0.011831,
		37.621803, 31.792452, 40.711403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901546, 31.455542, 40.318077>,  <37.509113, 31.101631, 40.703121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901546, 31.455542, 40.318077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199425, 31.722446, 40.312675>,  <37.378151, 31.882589, 40.309433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199425, 31.722446, 40.312675>,  <36.901546, 31.455542, 40.318077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199425, 31.722446, 40.312675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200571, 0.204457, -0.958107,
		-0.636548, 0.716210, 0.286093,
		0.744700, 0.667263, -0.013504,
		37.422836, 31.922625, 40.308624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578705, 31.961548, 40.031906>,  <36.901546, 31.455542, 40.318077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578705, 31.961548, 40.031906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963760, 32.051743, 39.971924>,  <37.194794, 32.105858, 39.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963760, 32.051743, 39.971924>,  <36.578705, 31.961548, 40.031906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963760, 32.051743, 39.971924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238602, 0.444418, -0.863459,
		-0.128058, 0.866976, 0.481615,
		0.962637, 0.225487, -0.149951,
		37.252552, 32.119389, 39.926937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608845, 32.696030, 39.831150>,  <36.578705, 31.961548, 40.031906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608845, 32.696030, 39.831150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964283, 32.557545, 39.710789>,  <37.177544, 32.474453, 39.638573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964283, 32.557545, 39.710789>,  <36.608845, 32.696030, 39.831150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964283, 32.557545, 39.710789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132860, 0.433608, -0.891253,
		0.439032, 0.831939, 0.339304,
		0.888594, -0.346209, -0.300899,
		37.230862, 32.453682, 39.620518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974064, 33.234299, 39.522621>,  <36.608845, 32.696030, 39.831150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974064, 33.234299, 39.522621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153904, 32.910278, 39.372055>,  <37.261806, 32.715866, 39.281715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153904, 32.910278, 39.372055>,  <36.974064, 33.234299, 39.522621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153904, 32.910278, 39.372055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011447, 0.426596, -0.904370,
		0.893157, 0.402295, 0.201070,
		0.449599, -0.810046, -0.376412,
		37.288784, 32.667263, 39.259132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441708, 33.490784, 39.168358>,  <36.974064, 33.234299, 39.522621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441708, 33.490784, 39.168358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385017, 33.120152, 39.029011>,  <37.351002, 32.897770, 38.945404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385017, 33.120152, 39.029011>,  <37.441708, 33.490784, 39.168358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385017, 33.120152, 39.029011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056215, 0.343817, -0.937353,
		0.988309, -0.152430, 0.003361,
		-0.141725, -0.926582, -0.348366,
		37.342499, 32.842178, 38.924500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776466, 33.596233, 38.571705>,  <37.441708, 33.490784, 39.168358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776466, 33.596233, 38.571705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622810, 33.233540, 38.502102>,  <37.530617, 33.015923, 38.460339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622810, 33.233540, 38.502102>,  <37.776466, 33.596233, 38.571705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622810, 33.233540, 38.502102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241522, 0.083217, -0.966821,
		0.891125, -0.413420, 0.187029,
		-0.384139, -0.906730, -0.174007,
		37.507568, 32.961521, 38.449902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297073, 33.233906, 38.223690>,  <37.776466, 33.596233, 38.571705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297073, 33.233906, 38.223690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935429, 33.090057, 38.131382>,  <37.718441, 33.003750, 38.075996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935429, 33.090057, 38.131382>,  <38.297073, 33.233906, 38.223690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935429, 33.090057, 38.131382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119817, 0.305038, -0.944773,
		0.410157, -0.881829, -0.232699,
		-0.904110, -0.359624, -0.230772,
		37.664196, 32.982170, 38.062149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499718, 32.758205, 38.860764>,  <38.297073, 33.233906, 38.223690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499718, 32.758205, 38.860764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821957, 32.913319, 38.681591>,  <39.015301, 33.006386, 38.574089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821957, 32.913319, 38.681591>,  <38.499718, 32.758205, 38.860764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821957, 32.913319, 38.681591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579734, -0.360071, 0.730929,
		0.122154, -0.848514, -0.514882,
		0.805597, 0.387780, -0.447928,
		39.063637, 33.029652, 38.547215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081936, 32.214367, 38.831734>,  <38.499718, 32.758205, 38.860764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081936, 32.214367, 38.831734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230282, 32.585186, 38.809692>,  <39.319290, 32.807678, 38.796467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230282, 32.585186, 38.809692>,  <39.081936, 32.214367, 38.831734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230282, 32.585186, 38.809692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454685, -0.129517, 0.881185,
		0.809766, -0.351856, -0.469549,
		0.370865, 0.927051, -0.055105,
		39.341541, 32.863300, 38.793159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686817, 32.214184, 39.141018>,  <39.081936, 32.214367, 38.831734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686817, 32.214184, 39.141018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623768, 32.609177, 39.143147>,  <39.585938, 32.846172, 39.144424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623768, 32.609177, 39.143147>,  <39.686817, 32.214184, 39.141018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623768, 32.609177, 39.143147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443963, 0.066051, 0.893608,
		0.882072, 0.143217, -0.448818,
		-0.157625, 0.987485, 0.005321,
		39.576481, 32.905422, 39.144741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291698, 32.556911, 39.252151>,  <39.686817, 32.214184, 39.141018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291698, 32.556911, 39.252151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996349, 32.796898, 39.375340>,  <39.819141, 32.940891, 39.449253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996349, 32.796898, 39.375340>,  <40.291698, 32.556911, 39.252151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996349, 32.796898, 39.375340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532600, 0.238646, 0.812025,
		0.413693, 0.763602, -0.495752,
		-0.738373, 0.599967, 0.307969,
		39.774837, 32.976887, 39.467731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569595, 33.177197, 39.334957>,  <40.291698, 32.556911, 39.252151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569595, 33.177197, 39.334957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237232, 33.166607, 39.557266>,  <40.037815, 33.160252, 39.690651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237232, 33.166607, 39.557266>,  <40.569595, 33.177197, 39.334957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237232, 33.166607, 39.557266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544345, 0.168169, 0.821832,
		-0.115222, 0.985403, -0.125323,
		-0.830911, -0.026474, 0.555775,
		39.987961, 33.158665, 39.723999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721676, 33.593132, 39.937428>,  <40.569595, 33.177197, 39.334957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721676, 33.593132, 39.937428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376545, 33.431229, 40.058552>,  <40.169464, 33.334087, 40.131226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376545, 33.431229, 40.058552>,  <40.721676, 33.593132, 39.937428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376545, 33.431229, 40.058552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376378, -0.114531, 0.919360,
		-0.337434, 0.907224, 0.251162,
		-0.862831, -0.404755, 0.302812,
		40.117695, 33.309803, 40.149395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734314, 33.772133, 40.582676>,  <40.721676, 33.593132, 39.937428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734314, 33.772133, 40.582676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475094, 33.471390, 40.534122>,  <40.319561, 33.290943, 40.504990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475094, 33.471390, 40.534122>,  <40.734314, 33.772133, 40.582676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475094, 33.471390, 40.534122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162712, -0.292388, 0.942356,
		-0.744013, 0.590943, 0.311819,
		-0.648051, -0.751862, -0.121387,
		40.280678, 33.245831, 40.497707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425770, 33.880943, 41.079300>,  <40.734314, 33.772133, 40.582676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425770, 33.880943, 41.079300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377140, 33.489426, 41.013363>,  <40.347961, 33.254513, 40.973801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377140, 33.489426, 41.013363>,  <40.425770, 33.880943, 41.079300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377140, 33.489426, 41.013363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294831, -0.194193, 0.935609,
		-0.947784, 0.065145, 0.312189,
		-0.121575, -0.978798, -0.164846,
		40.340668, 33.195786, 40.963909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063560, 33.571781, 41.681496>,  <40.425770, 33.880943, 41.079300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063560, 33.571781, 41.681496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229523, 33.259357, 41.494820>,  <40.329102, 33.071903, 41.382812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229523, 33.259357, 41.494820>,  <40.063560, 33.571781, 41.681496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229523, 33.259357, 41.494820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333215, -0.346854, 0.876733,
		-0.846651, -0.519274, 0.116346,
		0.414909, -0.781055, -0.466694,
		40.353996, 33.025040, 41.354813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010086, 33.039227, 42.145954>,  <40.063560, 33.571781, 41.681496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010086, 33.039227, 42.145954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295300, 32.930523, 41.887428>,  <40.466427, 32.865303, 41.732311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295300, 32.930523, 41.887428>,  <40.010086, 33.039227, 42.145954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295300, 32.930523, 41.887428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580455, -0.288242, 0.761570,
		-0.393257, -0.918186, -0.047785,
		0.713037, -0.271756, -0.646318,
		40.509209, 32.848995, 41.693531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227455, 32.472805, 42.428654>,  <40.010086, 33.039227, 42.145954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227455, 32.472805, 42.428654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523251, 32.619144, 42.202621>,  <40.700726, 32.706947, 42.067001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523251, 32.619144, 42.202621>,  <40.227455, 32.472805, 42.428654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523251, 32.619144, 42.202621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649905, -0.169206, 0.740940,
		0.175458, -0.915163, -0.362893,
		0.739485, 0.365850, -0.565080,
		40.745094, 32.728901, 42.033096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869362, 32.038166, 42.662521>,  <40.227455, 32.472805, 42.428654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869362, 32.038166, 42.662521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989407, 32.373463, 42.480404>,  <41.061432, 32.574638, 42.371136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989407, 32.373463, 42.480404>,  <40.869362, 32.038166, 42.662521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989407, 32.373463, 42.480404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716937, 0.116633, 0.687312,
		0.629233, -0.532685, -0.565962,
		0.300111, 0.838239, -0.455291,
		41.079441, 32.624935, 42.343815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694485, 31.982117, 42.497318>,  <40.869362, 32.038166, 42.662521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694485, 31.982117, 42.497318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568878, 32.359207, 42.542324>,  <41.493515, 32.585461, 42.569328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568878, 32.359207, 42.542324>,  <41.694485, 31.982117, 42.497318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568878, 32.359207, 42.542324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602600, 0.106325, 0.790929,
		0.733665, 0.316169, -0.601475,
		-0.314019, 0.942726, 0.112516,
		41.474674, 32.642025, 42.576080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262737, 32.122681, 42.847767>,  <41.694485, 31.982117, 42.497318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262737, 32.122681, 42.847767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994339, 32.418198, 42.872890>,  <41.833302, 32.595509, 42.887962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994339, 32.418198, 42.872890>,  <42.262737, 32.122681, 42.847767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994339, 32.418198, 42.872890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240380, 0.136624, 0.961016,
		0.701414, 0.659936, -0.269266,
		-0.670997, 0.738796, 0.062805,
		41.793041, 32.639835, 42.891731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567982, 32.642185, 43.291130>,  <42.262737, 32.122681, 42.847767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567982, 32.642185, 43.291130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173759, 32.707836, 43.307785>,  <41.937225, 32.747227, 43.317780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173759, 32.707836, 43.307785>,  <42.567982, 32.642185, 43.291130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173759, 32.707836, 43.307785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059259, 0.103966, 0.992814,
		0.158619, 0.980945, -0.112191,
		-0.985560, 0.164128, 0.041639,
		41.878090, 32.757076, 43.320278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430305, 33.267727, 43.689362>,  <42.567982, 32.642185, 43.291130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430305, 33.267727, 43.689362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101761, 33.045074, 43.739212>,  <41.904633, 32.911484, 43.769123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101761, 33.045074, 43.739212>,  <42.430305, 33.267727, 43.689362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101761, 33.045074, 43.739212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057544, 0.136508, 0.988966,
		-0.567500, 0.819469, -0.080092,
		-0.821360, -0.556629, 0.124623,
		41.855354, 32.878086, 43.776600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020626, 33.644238, 44.140572>,  <42.430305, 33.267727, 43.689362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020626, 33.644238, 44.140572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858135, 33.279076, 44.156487>,  <41.760643, 33.059978, 44.166035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858135, 33.279076, 44.156487>,  <42.020626, 33.644238, 44.140572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858135, 33.279076, 44.156487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206341, 0.134061, 0.969253,
		-0.890171, 0.385525, -0.242829,
		-0.406225, -0.912906, 0.039788,
		41.736267, 33.005203, 44.168423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384960, 33.710995, 44.553219>,  <42.020626, 33.644238, 44.140572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384960, 33.710995, 44.553219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463161, 33.318714, 44.552395>,  <41.510082, 33.083347, 44.551903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463161, 33.318714, 44.552395>,  <41.384960, 33.710995, 44.553219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463161, 33.318714, 44.552395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247377, -0.051342, 0.967558,
		-0.948991, -0.188651, -0.252640,
		0.195501, -0.980701, -0.002055,
		41.521812, 33.024506, 44.551777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876175, 33.404526, 44.952347>,  <41.384960, 33.710995, 44.553219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876175, 33.404526, 44.952347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160702, 33.124401, 44.928375>,  <41.331417, 32.956326, 44.913994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160702, 33.124401, 44.928375>,  <40.876175, 33.404526, 44.952347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160702, 33.124401, 44.928375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016976, -0.102351, 0.994604,
		-0.702670, -0.706458, -0.084692,
		0.711314, -0.700315, -0.059926,
		41.374096, 32.914307, 44.910397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569672, 32.899845, 45.375698>,  <40.876175, 33.404526, 44.952347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569672, 32.899845, 45.375698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966736, 32.852196, 45.367390>,  <41.204975, 32.823605, 45.362404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966736, 32.852196, 45.367390>,  <40.569672, 32.899845, 45.375698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966736, 32.852196, 45.367390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022245, 0.011080, 0.999691,
		-0.118859, -0.992817, 0.013649,
		0.992662, -0.119126, -0.020768,
		41.264534, 32.816460, 45.361160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771717, 32.352627, 45.853230>,  <40.569672, 32.899845, 45.375698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771717, 32.352627, 45.853230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099033, 32.579533, 45.816097>,  <41.295422, 32.715675, 45.793819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099033, 32.579533, 45.816097>,  <40.771717, 32.352627, 45.853230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099033, 32.579533, 45.816097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054874, 0.083669, 0.994982,
		0.572186, -0.819274, 0.037337,
		0.818287, 0.567266, -0.092831,
		41.344521, 32.749714, 45.788250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383148, 32.045300, 46.218338>,  <40.771717, 32.352627, 45.853230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383148, 32.045300, 46.218338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425419, 32.441845, 46.187267>,  <41.450783, 32.679771, 46.168625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425419, 32.441845, 46.187267>,  <41.383148, 32.045300, 46.218338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425419, 32.441845, 46.187267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280773, 0.104686, 0.954048,
		0.953938, -0.079013, 0.289411,
		0.105679, 0.991362, -0.077680,
		41.457123, 32.739254, 46.163963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854382, 32.236668, 46.758614>,  <41.383148, 32.045300, 46.218338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854382, 32.236668, 46.758614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632381, 32.555565, 46.663635>,  <41.499180, 32.746902, 46.606647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632381, 32.555565, 46.663635>,  <41.854382, 32.236668, 46.758614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632381, 32.555565, 46.663635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140157, 0.191737, 0.971387,
		0.819956, 0.572401, 0.005325,
		-0.555002, 0.797241, -0.237442,
		41.465881, 32.794739, 46.592403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897675, 32.655891, 47.308777>,  <41.854382, 32.236668, 46.758614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897675, 32.655891, 47.308777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617180, 32.865391, 47.115303>,  <41.448883, 32.991093, 46.999218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617180, 32.865391, 47.115303>,  <41.897675, 32.655891, 47.308777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617180, 32.865391, 47.115303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268037, 0.434984, 0.859619,
		0.660620, 0.732444, -0.164643,
		-0.701240, 0.523751, -0.483681,
		41.406807, 33.022514, 46.970200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865913, 33.324577, 47.647861>,  <41.897675, 32.655891, 47.308777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865913, 33.324577, 47.647861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516232, 33.272072, 47.460869>,  <41.306423, 33.240570, 47.348675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516232, 33.272072, 47.460869>,  <41.865913, 33.324577, 47.647861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516232, 33.272072, 47.460869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471223, 0.461560, 0.751606,
		0.117110, 0.877344, -0.465352,
		-0.874205, -0.131264, -0.467478,
		41.253971, 33.232693, 47.320625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628674, 34.012814, 47.644123>,  <41.865913, 33.324577, 47.647861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628674, 34.012814, 47.644123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332188, 33.745331, 47.620689>,  <41.154297, 33.584843, 47.606628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332188, 33.745331, 47.620689>,  <41.628674, 34.012814, 47.644123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332188, 33.745331, 47.620689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396168, 0.365328, 0.842369,
		-0.541893, 0.647588, -0.535706,
		-0.741217, -0.668704, -0.058584,
		41.109821, 33.544720, 47.603115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025990, 34.378605, 47.712372>,  <41.628674, 34.012814, 47.644123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025990, 34.378605, 47.712372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931458, 34.000004, 47.800259>,  <40.874741, 33.772842, 47.852989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931458, 34.000004, 47.800259>,  <41.025990, 34.378605, 47.712372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931458, 34.000004, 47.800259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276028, 0.282199, 0.918789,
		-0.931642, 0.156488, -0.327953,
		-0.236328, -0.946507, 0.219713,
		40.860558, 33.716053, 47.866173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290405, 34.381897, 47.991505>,  <41.025990, 34.378605, 47.712372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290405, 34.381897, 47.991505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415192, 34.029575, 48.133972>,  <40.490063, 33.818184, 48.219452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415192, 34.029575, 48.133972>,  <40.290405, 34.381897, 47.991505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415192, 34.029575, 48.133972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453060, 0.191595, 0.870648,
		-0.835112, -0.432981, -0.339286,
		0.311969, -0.880805, 0.356170,
		40.508781, 33.765335, 48.240822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692612, 34.176685, 48.302895>,  <40.290405, 34.381897, 47.991505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692612, 34.176685, 48.302895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001034, 33.974770, 48.458157>,  <40.186089, 33.853622, 48.551311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001034, 33.974770, 48.458157>,  <39.692612, 34.176685, 48.302895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001034, 33.974770, 48.458157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426454, 0.043313, 0.903472,
		-0.472873, -0.862156, -0.181873,
		0.771056, -0.504788, 0.388151,
		40.232349, 33.823334, 48.574600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439957, 33.674992, 48.894585>,  <39.692612, 34.176685, 48.302895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439957, 33.674992, 48.894585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829937, 33.736839, 48.958542>,  <40.063927, 33.773949, 48.996918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829937, 33.736839, 48.958542>,  <39.439957, 33.674992, 48.894585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829937, 33.736839, 48.958542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191079, 0.214242, 0.957909,
		0.113848, -0.964466, 0.238418,
		0.974950, 0.154612, 0.159898,
		40.122421, 33.783222, 49.006512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488297, 33.290100, 49.517857>,  <39.439957, 33.674992, 48.894585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488297, 33.290100, 49.517857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820858, 33.511829, 49.502384>,  <40.020393, 33.644867, 49.493099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820858, 33.511829, 49.502384>,  <39.488297, 33.290100, 49.517857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820858, 33.511829, 49.502384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045005, 0.002212, 0.998984,
		0.553842, -0.832301, -0.023108,
		0.831405, 0.554319, -0.038683,
		40.070278, 33.678123, 49.490780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981422, 32.972420, 49.878437>,  <39.488297, 33.290100, 49.517857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981422, 32.972420, 49.878437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081257, 33.359154, 49.856766>,  <40.141159, 33.591194, 49.843761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081257, 33.359154, 49.856766>,  <39.981422, 32.972420, 49.878437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081257, 33.359154, 49.856766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077584, 0.035806, 0.996343,
		0.965240, -0.252876, -0.066074,
		0.249585, 0.966836, -0.054180,
		40.156132, 33.649204, 49.840511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619438, 33.026951, 50.305916>,  <39.981422, 32.972420, 49.878437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619438, 33.026951, 50.305916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449093, 33.382088, 50.236210>,  <40.346886, 33.595169, 50.194386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449093, 33.382088, 50.236210>,  <40.619438, 33.026951, 50.305916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449093, 33.382088, 50.236210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055265, 0.166720, 0.984454,
		0.903097, 0.428875, -0.021933,
		-0.425865, 0.887846, -0.174266,
		40.321335, 33.648441, 50.183929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008331, 33.480949, 50.856098>,  <40.619438, 33.026951, 50.305916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008331, 33.480949, 50.856098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688671, 33.699863, 50.756630>,  <40.496876, 33.831211, 50.696949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688671, 33.699863, 50.756630>,  <41.008331, 33.480949, 50.856098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688671, 33.699863, 50.756630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039098, 0.460117, 0.886997,
		0.599856, 0.699123, -0.389101,
		-0.799152, 0.547284, -0.248670,
		40.448925, 33.864048, 50.682030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232399, 34.194099, 51.102886>,  <41.008331, 33.480949, 50.856098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232399, 34.194099, 51.102886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834286, 34.165176, 51.077007>,  <40.595417, 34.147823, 51.061481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834286, 34.165176, 51.077007>,  <41.232399, 34.194099, 51.102886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834286, 34.165176, 51.077007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090808, 0.459300, 0.883627,
		-0.034176, 0.885333, -0.463699,
		-0.995282, -0.072307, -0.064699,
		40.535702, 34.143486, 51.057598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923500, 34.874947, 51.319443>,  <41.232399, 34.194099, 51.102886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923500, 34.874947, 51.319443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614788, 34.621750, 51.343719>,  <40.429562, 34.469833, 51.358284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614788, 34.621750, 51.343719>,  <40.923500, 34.874947, 51.319443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614788, 34.621750, 51.343719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175918, 0.304249, 0.936208,
		-0.611073, 0.711869, -0.346167,
		-0.771779, -0.632989, 0.060688,
		40.383255, 34.431854, 51.361927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318199, 35.326309, 51.359413>,  <40.923500, 34.874947, 51.319443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318199, 35.326309, 51.359413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282799, 34.967113, 51.531826>,  <40.261559, 34.751598, 51.635273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282799, 34.967113, 51.531826>,  <40.318199, 35.326309, 51.359413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282799, 34.967113, 51.531826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144813, 0.439734, 0.886376,
		-0.985493, 0.016025, -0.168957,
		-0.088500, -0.897985, 0.431035,
		40.256248, 34.697720, 51.661137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821129, 35.468788, 51.818951>,  <40.318199, 35.326309, 51.359413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821129, 35.468788, 51.818951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016823, 35.139568, 51.934353>,  <40.134239, 34.942036, 52.003593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016823, 35.139568, 51.934353>,  <39.821129, 35.468788, 51.818951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016823, 35.139568, 51.934353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001198, 0.330163, 0.943923,
		-0.872151, -0.462146, 0.160541,
		0.489235, -0.823052, 0.288505,
		40.163593, 34.892654, 52.020905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528130, 36.050426, 51.515530>,  <39.821129, 35.468788, 51.818951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528130, 36.050426, 51.515530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538216, 36.448769, 51.550499>,  <39.544266, 36.687775, 51.571480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538216, 36.448769, 51.550499>,  <39.528130, 36.050426, 51.515530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538216, 36.448769, 51.550499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052965, 0.086000, -0.994886,
		-0.998278, 0.029715, -0.050577,
		0.025213, 0.995852, 0.087426,
		39.545780, 36.747524, 51.576725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961319, 36.333500, 51.100006>,  <39.528130, 36.050426, 51.515530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961319, 36.333500, 51.100006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245686, 36.611351, 51.143978>,  <39.416306, 36.778061, 51.170361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245686, 36.611351, 51.143978>,  <38.961319, 36.333500, 51.100006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245686, 36.611351, 51.143978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034646, 0.190721, -0.981033,
		-0.702419, 0.693627, 0.159654,
		0.710920, 0.694627, 0.109934,
		39.458961, 36.819740, 51.176960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738277, 36.898735, 50.638378>,  <38.961319, 36.333500, 51.100006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738277, 36.898735, 50.638378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132034, 36.923676, 50.704201>,  <39.368290, 36.938641, 50.743694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132034, 36.923676, 50.704201>,  <38.738277, 36.898735, 50.638378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132034, 36.923676, 50.704201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150785, 0.183189, -0.971445,
		-0.090717, 0.981098, 0.170928,
		0.984395, 0.062353, 0.164553,
		39.427353, 36.942383, 50.753567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932568, 37.428814, 50.274761>,  <38.738277, 36.898735, 50.638378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932568, 37.428814, 50.274761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295738, 37.272903, 50.336407>,  <39.513641, 37.179359, 50.373394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295738, 37.272903, 50.336407>,  <38.932568, 37.428814, 50.274761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295738, 37.272903, 50.336407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249840, 0.208066, -0.945668,
		0.336530, 0.897099, 0.286289,
		0.907925, -0.389772, 0.154111,
		39.568115, 37.155972, 50.382641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328850, 37.828854, 49.864597>,  <38.932568, 37.428814, 50.274761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328850, 37.828854, 49.864597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571651, 37.523033, 49.951317>,  <39.717331, 37.339539, 50.003349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571651, 37.523033, 49.951317>,  <39.328850, 37.828854, 49.864597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571651, 37.523033, 49.951317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486157, 0.141444, -0.862349,
		0.628648, 0.628847, 0.457551,
		0.607003, -0.764555, 0.216800,
		39.753754, 37.293667, 50.016357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984245, 38.047070, 49.740700>,  <39.328850, 37.828854, 49.864597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984245, 38.047070, 49.740700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007038, 37.649349, 49.704681>,  <40.020714, 37.410717, 49.683071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007038, 37.649349, 49.704681>,  <39.984245, 38.047070, 49.740700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007038, 37.649349, 49.704681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311305, 0.103396, -0.944668,
		0.948600, 0.025801, 0.315424,
		0.056987, -0.994306, -0.090050,
		40.024136, 37.351059, 49.677666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626518, 37.977486, 49.428894>,  <39.984245, 38.047070, 49.740700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626518, 37.977486, 49.428894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429897, 37.634144, 49.370102>,  <40.311924, 37.428139, 49.334827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429897, 37.634144, 49.370102>,  <40.626518, 37.977486, 49.428894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429897, 37.634144, 49.370102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373603, -0.055400, -0.925933,
		0.786637, -0.510056, 0.347916,
		-0.491553, -0.858355, -0.146979,
		40.282433, 37.376637, 49.326008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122765, 37.500179, 49.108852>,  <40.626518, 37.977486, 49.428894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122765, 37.500179, 49.108852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755817, 37.373074, 49.012970>,  <40.535648, 37.296810, 48.955441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755817, 37.373074, 49.012970>,  <41.122765, 37.500179, 49.108852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755817, 37.373074, 49.012970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351609, -0.364679, -0.862195,
		0.186564, -0.875233, 0.446275,
		-0.917368, -0.317769, -0.239703,
		40.480606, 37.277744, 48.941059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156551, 36.775848, 48.779987>,  <41.122765, 37.500179, 49.108852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156551, 36.775848, 48.779987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807384, 36.940819, 48.675743>,  <40.597885, 37.039803, 48.613197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807384, 36.940819, 48.675743>,  <41.156551, 36.775848, 48.779987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807384, 36.940819, 48.675743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064424, -0.432063, -0.899540,
		-0.483600, -0.802011, 0.350583,
		-0.872915, 0.412432, -0.260615,
		40.545509, 37.064548, 48.597557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682499, 36.193539, 48.573399>,  <41.156551, 36.775848, 48.779987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682499, 36.193539, 48.573399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549217, 36.527042, 48.397297>,  <40.469250, 36.727142, 48.291634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549217, 36.527042, 48.397297>,  <40.682499, 36.193539, 48.573399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549217, 36.527042, 48.397297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007150, -0.469161, -0.883084,
		-0.942827, -0.291100, 0.162288,
		-0.333205, 0.833756, -0.440257,
		40.449257, 36.777168, 48.265221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308186, 35.869965, 48.005482>,  <40.682499, 36.193539, 48.573399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308186, 35.869965, 48.005482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316769, 36.257526, 47.906876>,  <40.321918, 36.490063, 47.847713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316769, 36.257526, 47.906876>,  <40.308186, 35.869965, 48.005482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316769, 36.257526, 47.906876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167682, -0.239588, -0.956285,
		-0.985608, 0.061851, 0.157327,
		0.021453, 0.968903, -0.246511,
		40.323204, 36.548199, 47.832924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895191, 35.977318, 47.411549>,  <40.308186, 35.869965, 48.005482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895191, 35.977318, 47.411549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118126, 36.308735, 47.390015>,  <40.251888, 36.507584, 47.377094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118126, 36.308735, 47.390015>,  <39.895191, 35.977318, 47.411549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118126, 36.308735, 47.390015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025561, -0.081934, -0.996310,
		-0.829893, 0.553904, -0.066843,
		0.557337, 0.828539, -0.053838,
		40.285328, 36.557297, 47.373863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510460, 36.328293, 46.877449>,  <39.895191, 35.977318, 47.411549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510460, 36.328293, 46.877449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882736, 36.464130, 46.931843>,  <40.106102, 36.545635, 46.964478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882736, 36.464130, 46.931843>,  <39.510460, 36.328293, 46.877449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882736, 36.464130, 46.931843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053563, 0.241223, -0.968991,
		-0.361868, 0.909113, 0.206314,
		0.930689, 0.339596, 0.135985,
		40.161942, 36.566010, 46.972637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555176, 36.956512, 46.425991>,  <39.510460, 36.328293, 46.877449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555176, 36.956512, 46.425991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925579, 36.828552, 46.506165>,  <40.147820, 36.751774, 46.554268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925579, 36.828552, 46.506165>,  <39.555176, 36.956512, 46.425991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925579, 36.828552, 46.506165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226380, 0.045681, -0.972967,
		0.302101, 0.946348, 0.114721,
		0.926006, -0.319905, 0.200434,
		40.203381, 36.732582, 46.566296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027401, 37.342155, 45.943993>,  <39.555176, 36.956512, 46.425991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027401, 37.342155, 45.943993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217159, 37.017574, 46.080521>,  <40.331013, 36.822826, 46.162437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217159, 37.017574, 46.080521>,  <40.027401, 37.342155, 45.943993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217159, 37.017574, 46.080521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394545, -0.150614, -0.906449,
		0.786945, 0.564681, 0.248703,
		0.474397, -0.811450, 0.341317,
		40.359478, 36.774139, 46.182915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687054, 37.428291, 45.644230>,  <40.027401, 37.342155, 45.943993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687054, 37.428291, 45.644230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682636, 37.037613, 45.729965>,  <40.679985, 36.803207, 45.781406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682636, 37.037613, 45.729965>,  <40.687054, 37.428291, 45.644230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682636, 37.037613, 45.729965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291984, -0.208159, -0.933496,
		0.956360, 0.052272, 0.287479,
		-0.011045, -0.976697, 0.214337,
		40.679321, 36.744602, 45.794266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325260, 37.150635, 45.386978>,  <40.687054, 37.428291, 45.644230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325260, 37.150635, 45.386978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107414, 36.818245, 45.432373>,  <40.976707, 36.618813, 45.459610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107414, 36.818245, 45.432373>,  <41.325260, 37.150635, 45.386978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107414, 36.818245, 45.432373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367453, -0.358059, -0.858354,
		0.753903, -0.425772, 0.500348,
		-0.544618, -0.830970, 0.113491,
		40.944031, 36.568954, 45.466419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724361, 36.444130, 45.237370>,  <41.325260, 37.150635, 45.386978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724361, 36.444130, 45.237370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341702, 36.344311, 45.177311>,  <41.112106, 36.284420, 45.141277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341702, 36.344311, 45.177311>,  <41.724361, 36.444130, 45.237370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341702, 36.344311, 45.177311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231469, -0.338597, -0.912017,
		0.176756, -0.907235, 0.381682,
		-0.956650, -0.249552, -0.150148,
		41.054707, 36.269444, 45.132267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780190, 35.780487, 44.923672>,  <41.724361, 36.444130, 45.237370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780190, 35.780487, 44.923672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402069, 35.894699, 44.860580>,  <41.175198, 35.963226, 44.822727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402069, 35.894699, 44.860580>,  <41.780190, 35.780487, 44.923672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402069, 35.894699, 44.860580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062934, -0.314809, -0.947066,
		-0.320084, -0.905185, 0.279618,
		-0.945296, 0.285543, -0.157732,
		41.118477, 35.980358, 44.813263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373844, 35.196785, 44.699482>,  <41.780190, 35.780487, 44.923672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373844, 35.196785, 44.699482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197472, 35.522732, 44.548977>,  <41.091648, 35.718300, 44.458675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197472, 35.522732, 44.548977>,  <41.373844, 35.196785, 44.699482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197472, 35.522732, 44.548977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181107, -0.491367, -0.851914,
		-0.879081, -0.307489, 0.364236,
		-0.440928, 0.814867, -0.376263,
		41.065193, 35.767193, 44.436096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051823, 34.916969, 44.176731>,  <41.373844, 35.196785, 44.699482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051823, 34.916969, 44.176731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992893, 35.304031, 44.094822>,  <40.957535, 35.536270, 44.045677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992893, 35.304031, 44.094822>,  <41.051823, 34.916969, 44.176731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992893, 35.304031, 44.094822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226206, -0.234505, -0.945430,
		-0.962874, -0.092966, 0.253439,
		-0.147326, 0.967659, -0.204769,
		40.948696, 35.594330, 44.033390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457024, 34.890869, 43.833797>,  <41.051823, 34.916969, 44.176731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457024, 34.890869, 43.833797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613804, 35.233601, 43.699799>,  <40.707870, 35.439240, 43.619400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613804, 35.233601, 43.699799>,  <40.457024, 34.890869, 43.833797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613804, 35.233601, 43.699799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024986, -0.354082, -0.934881,
		-0.919647, 0.374796, -0.117373,
		0.391949, 0.856828, -0.334995,
		40.731388, 35.490650, 43.599300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130516, 34.994228, 43.160465>,  <40.457024, 34.890869, 43.833797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130516, 34.994228, 43.160465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463036, 35.216557, 43.161663>,  <40.662548, 35.349953, 43.162384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463036, 35.216557, 43.161663>,  <40.130516, 34.994228, 43.160465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463036, 35.216557, 43.161663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191615, -0.281514, -0.940230,
		-0.521753, 0.782187, -0.340526,
		0.831299, 0.555818, 0.002998,
		40.712425, 35.383301, 43.162563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111729, 35.468990, 42.554001>,  <40.130516, 34.994228, 43.160465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111729, 35.468990, 42.554001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489861, 35.455070, 42.683708>,  <40.716740, 35.446720, 42.761532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489861, 35.455070, 42.683708>,  <40.111729, 35.468990, 42.554001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489861, 35.455070, 42.683708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319932, -0.093909, -0.942775,
		0.063256, 0.994972, -0.077643,
		0.945326, -0.034796, 0.324264,
		40.773457, 35.444633, 42.780987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467419, 35.835720, 42.108459>,  <40.111729, 35.468990, 42.554001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467419, 35.835720, 42.108459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760296, 35.631516, 42.288803>,  <40.936024, 35.508991, 42.397011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760296, 35.631516, 42.288803>,  <40.467419, 35.835720, 42.108459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760296, 35.631516, 42.288803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403424, -0.208278, -0.890993,
		0.548766, 0.834265, 0.053453,
		0.732192, -0.510511, 0.450858,
		40.979954, 35.478363, 42.424061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029301, 36.170059, 41.891479>,  <40.467419, 35.835720, 42.108459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029301, 36.170059, 41.891479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145939, 35.807327, 42.013222>,  <41.215923, 35.589687, 42.086266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145939, 35.807327, 42.013222>,  <41.029301, 36.170059, 41.891479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145939, 35.807327, 42.013222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520181, -0.116687, -0.846047,
		0.802735, 0.405025, 0.437689,
		0.291597, -0.906829, 0.304355,
		41.233418, 35.535278, 42.104527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724682, 36.188454, 41.854576>,  <41.029301, 36.170059, 41.891479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724682, 36.188454, 41.854576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618591, 35.803417, 41.832424>,  <41.554935, 35.572395, 41.819134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618591, 35.803417, 41.832424>,  <41.724682, 36.188454, 41.854576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618591, 35.803417, 41.832424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470512, -0.079084, -0.878843,
		0.841590, -0.259148, 0.473888,
		-0.265227, -0.962595, -0.055376,
		41.539024, 35.514637, 41.815811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265911, 35.851894, 41.530319>,  <41.724682, 36.188454, 41.854576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265911, 35.851894, 41.530319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973957, 35.588299, 41.457653>,  <41.798786, 35.430141, 41.414055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973957, 35.588299, 41.457653>,  <42.265911, 35.851894, 41.530319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973957, 35.588299, 41.457653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418407, -0.220531, -0.881080,
		0.540557, -0.719098, 0.436688,
		-0.729886, -0.658987, -0.181666,
		41.754990, 35.390602, 41.403152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615669, 35.409035, 41.159229>,  <42.265911, 35.851894, 41.530319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615669, 35.409035, 41.159229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232780, 35.306019, 41.106464>,  <42.003048, 35.244209, 41.074806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232780, 35.306019, 41.106464>,  <42.615669, 35.409035, 41.159229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232780, 35.306019, 41.106464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228064, -0.390935, -0.891715,
		0.178079, -0.883654, 0.432947,
		-0.957222, -0.257535, -0.131913,
		41.945614, 35.228760, 41.066891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568432, 34.745365, 40.927361>,  <42.615669, 35.409035, 41.159229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568432, 34.745365, 40.927361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229034, 34.905746, 40.789204>,  <42.025398, 35.001976, 40.706310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229034, 34.905746, 40.789204>,  <42.568432, 34.745365, 40.927361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229034, 34.905746, 40.789204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329326, -0.110839, -0.937688,
		-0.414257, -0.909366, -0.038000,
		-0.848490, 0.400958, -0.345394,
		41.974487, 35.026035, 40.685585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300182, 34.263615, 40.310890>,  <42.568432, 34.745365, 40.927361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300182, 34.263615, 40.310890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102333, 34.608742, 40.269127>,  <41.983624, 34.815819, 40.244068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102333, 34.608742, 40.269127>,  <42.300182, 34.263615, 40.310890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102333, 34.608742, 40.269127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225231, 0.011222, -0.974241,
		-0.839417, -0.505397, -0.199882,
		-0.494622, 0.862814, -0.104411,
		41.953945, 34.867584, 40.237804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971748, 34.245865, 39.693924>,  <42.300182, 34.263615, 40.310890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971748, 34.245865, 39.693924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956192, 34.638245, 39.770054>,  <41.946857, 34.873672, 39.815731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956192, 34.638245, 39.770054>,  <41.971748, 34.245865, 39.693924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956192, 34.638245, 39.770054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315914, 0.192771, -0.928998,
		-0.947990, 0.023999, -0.317393,
		-0.038889, 0.980950, 0.190327,
		41.944527, 34.932529, 39.827152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399921, 34.563324, 39.281708>,  <41.971748, 34.245865, 39.693924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399921, 34.563324, 39.281708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665154, 34.847912, 39.374771>,  <41.824291, 35.018665, 39.430611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665154, 34.847912, 39.374771>,  <41.399921, 34.563324, 39.281708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665154, 34.847912, 39.374771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055835, 0.262936, -0.963196,
		-0.746464, 0.651666, 0.134622,
		0.663080, 0.711474, 0.232658,
		41.864079, 35.061356, 39.444569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090252, 35.160942, 38.991322>,  <41.399921, 34.563324, 39.281708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090252, 35.160942, 38.991322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479156, 35.239662, 39.041889>,  <41.712498, 35.286896, 39.072231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479156, 35.239662, 39.041889>,  <41.090252, 35.160942, 38.991322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479156, 35.239662, 39.041889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052469, 0.343202, -0.937795,
		-0.227948, 0.918412, 0.323355,
		0.972258, 0.196803, 0.126420,
		41.770836, 35.298702, 39.079815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199345, 35.915970, 39.066975>,  <41.090252, 35.160942, 38.991322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199345, 35.915970, 39.066975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528896, 35.734707, 38.930809>,  <41.726627, 35.625950, 38.849110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528896, 35.734707, 38.930809>,  <41.199345, 35.915970, 39.066975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528896, 35.734707, 38.930809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063599, 0.522904, -0.850015,
		0.563191, 0.721957, 0.401988,
		0.823875, -0.453155, -0.340411,
		41.776058, 35.598759, 38.828686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493595, 36.420269, 38.834873>,  <41.199345, 35.915970, 39.066975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493595, 36.420269, 38.834873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719082, 36.138657, 38.662106>,  <41.854374, 35.969688, 38.558445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719082, 36.138657, 38.662106>,  <41.493595, 36.420269, 38.834873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719082, 36.138657, 38.662106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093407, 0.573912, -0.813572,
		0.820666, 0.418284, 0.389288,
		0.563721, -0.704033, -0.431920,
		41.888199, 35.927448, 38.532528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057770, 36.761734, 38.514980>,  <41.493595, 36.420269, 38.834873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057770, 36.761734, 38.514980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043694, 36.410957, 38.323257>,  <42.035248, 36.200493, 38.208221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043694, 36.410957, 38.323257>,  <42.057770, 36.761734, 38.514980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043694, 36.410957, 38.323257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160938, 0.468376, -0.868748,
		0.986337, -0.107711, 0.124651,
		-0.035190, -0.876939, -0.479312,
		42.033138, 36.147877, 38.179462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527084, 36.802040, 37.893093>,  <42.057770, 36.761734, 38.514980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527084, 36.802040, 37.893093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305027, 36.480804, 37.806496>,  <42.171791, 36.288063, 37.754539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305027, 36.480804, 37.806496>,  <42.527084, 36.802040, 37.893093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305027, 36.480804, 37.806496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039642, 0.285531, -0.957549,
		0.830809, -0.522995, -0.190347,
		-0.555143, -0.803087, -0.216489,
		42.138485, 36.239880, 37.741550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880554, 36.484200, 37.430668>,  <42.527084, 36.802040, 37.893093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880554, 36.484200, 37.430668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504974, 36.363388, 37.364754>,  <42.279625, 36.290901, 37.325203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504974, 36.363388, 37.364754>,  <42.880554, 36.484200, 37.430668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504974, 36.363388, 37.364754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100579, 0.217084, -0.970957,
		0.329030, -0.928253, -0.173453,
		-0.938948, -0.302028, -0.164790,
		42.223289, 36.272781, 37.315315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904377, 35.881947, 36.843891>,  <42.880554, 36.484200, 37.430668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904377, 35.881947, 36.843891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548058, 36.063553, 36.851345>,  <42.334267, 36.172516, 36.855816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548058, 36.063553, 36.851345>,  <42.904377, 35.881947, 36.843891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548058, 36.063553, 36.851345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080108, 0.197272, -0.977071,
		-0.447282, -0.868880, -0.212099,
		-0.890798, 0.454017, 0.018632,
		42.280819, 36.199757, 36.856934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993286, 36.708557, 36.751446>,  <42.904377, 35.881947, 36.843891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993286, 36.708557, 36.751446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216236, 36.786503, 36.428616>,  <43.350006, 36.833271, 36.234917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216236, 36.786503, 36.428616>,  <42.993286, 36.708557, 36.751446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216236, 36.786503, 36.428616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783706, 0.197459, 0.588910,
		0.274122, -0.960748, -0.042659,
		0.557371, 0.194865, -0.807072,
		43.383446, 36.844963, 36.186493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611408, 36.255833, 36.743645>,  <42.993286, 36.708557, 36.751446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611408, 36.255833, 36.743645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656746, 36.619774, 36.583984>,  <43.683949, 36.838139, 36.488190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656746, 36.619774, 36.583984>,  <43.611408, 36.255833, 36.743645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656746, 36.619774, 36.583984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753611, 0.183074, 0.631311,
		0.647474, -0.372361, -0.664924,
		0.113345, 0.909852, -0.399151,
		43.690750, 36.892731, 36.464237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295017, 36.332027, 36.543858>,  <43.611408, 36.255833, 36.743645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295017, 36.332027, 36.543858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136284, 36.692028, 36.615990>,  <44.041042, 36.908028, 36.659267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136284, 36.692028, 36.615990>,  <44.295017, 36.332027, 36.543858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136284, 36.692028, 36.615990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713845, 0.179103, 0.677014,
		0.577018, 0.397387, -0.713537,
		-0.396833, 0.900003, 0.180327,
		44.017235, 36.962029, 36.670086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858898, 36.785629, 36.665092>,  <44.295017, 36.332027, 36.543858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858898, 36.785629, 36.665092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538345, 36.942284, 36.845940>,  <44.346012, 37.036278, 36.954449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538345, 36.942284, 36.845940>,  <44.858898, 36.785629, 36.665092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538345, 36.942284, 36.845940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536768, 0.137320, 0.832480,
		0.263948, 0.909814, -0.320265,
		-0.801381, 0.391639, 0.452114,
		44.297932, 37.059776, 36.981575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158184, 37.306118, 37.124695>,  <44.858898, 36.785629, 36.665092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158184, 37.306118, 37.124695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796627, 37.237507, 37.281441>,  <44.579693, 37.196339, 37.375488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796627, 37.237507, 37.281441>,  <45.158184, 37.306118, 37.124695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796627, 37.237507, 37.281441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350294, 0.228978, 0.908220,
		-0.245514, 0.958200, -0.146886,
		-0.903890, -0.171527, 0.391869,
		44.525459, 37.186050, 37.399002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878952, 37.885593, 37.508926>,  <45.158184, 37.306118, 37.124695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878952, 37.885593, 37.508926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754089, 37.528458, 37.638783>,  <44.679173, 37.314175, 37.716694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754089, 37.528458, 37.638783>,  <44.878952, 37.885593, 37.508926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754089, 37.528458, 37.638783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451935, 0.161018, 0.877398,
		-0.835652, 0.420598, 0.353245,
		-0.312153, -0.892844, 0.324638,
		44.660442, 37.260605, 37.736176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404472, 37.984119, 38.086437>,  <44.878952, 37.885593, 37.508926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404472, 37.984119, 38.086437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596981, 37.633492, 38.087254>,  <44.712486, 37.423115, 38.087746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596981, 37.633492, 38.087254>,  <44.404472, 37.984119, 38.086437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596981, 37.633492, 38.087254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284083, 0.158178, 0.945662,
		-0.829260, -0.454542, 0.325145,
		0.481274, -0.876568, 0.002043,
		44.741364, 37.370522, 38.087868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121742, 37.459835, 38.583019>,  <44.404472, 37.984119, 38.086437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121742, 37.459835, 38.583019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516750, 37.413223, 38.540653>,  <44.753757, 37.385258, 38.515232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516750, 37.413223, 38.540653>,  <44.121742, 37.459835, 38.583019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516750, 37.413223, 38.540653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124000, 0.160867, 0.979156,
		-0.097063, -0.980073, 0.173310,
		0.987524, -0.116530, -0.105915,
		44.813007, 37.378265, 38.508877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302959, 36.877872, 39.015690>,  <44.121742, 37.459835, 38.583019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302959, 36.877872, 39.015690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643028, 37.084518, 38.975063>,  <44.847069, 37.208508, 38.950687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643028, 37.084518, 38.975063>,  <44.302959, 36.877872, 39.015690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643028, 37.084518, 38.975063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120260, -0.002739, 0.992739,
		0.512589, -0.856212, -0.064458,
		0.850171, 0.516618, -0.101564,
		44.898079, 37.239502, 38.944595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850037, 36.584652, 39.415962>,  <44.302959, 36.877872, 39.015690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850037, 36.584652, 39.415962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994793, 36.951889, 39.351276>,  <45.081646, 37.172230, 39.312466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994793, 36.951889, 39.351276>,  <44.850037, 36.584652, 39.415962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994793, 36.951889, 39.351276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197580, 0.093991, 0.975771,
		0.911044, -0.385069, -0.147382,
		0.361886, 0.918089, -0.161712,
		45.103359, 37.227314, 39.302761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511150, 36.528858, 39.739189>,  <44.850037, 36.584652, 39.415962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511150, 36.528858, 39.739189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392502, 36.910282, 39.718243>,  <45.321312, 37.139137, 39.705673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392502, 36.910282, 39.718243>,  <45.511150, 36.528858, 39.739189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392502, 36.910282, 39.718243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019355, 0.048819, 0.998620,
		0.954799, 0.297224, 0.003976,
		-0.296620, 0.953559, -0.052366,
		45.303516, 37.196350, 39.702534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960793, 36.909130, 40.185902>,  <45.511150, 36.528858, 39.739189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960793, 36.909130, 40.185902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640633, 37.147106, 40.156502>,  <45.448536, 37.289894, 40.138863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640633, 37.147106, 40.156502>,  <45.960793, 36.909130, 40.185902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640633, 37.147106, 40.156502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036888, 0.171251, 0.984537,
		0.598331, 0.785312, -0.159016,
		-0.800400, 0.594944, -0.073496,
		45.400513, 37.325588, 40.134453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097546, 37.530109, 40.532166>,  <45.960793, 36.909130, 40.185902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097546, 37.530109, 40.532166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699585, 37.504868, 40.500706>,  <45.460808, 37.489723, 40.481831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699585, 37.504868, 40.500706>,  <46.097546, 37.530109, 40.532166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699585, 37.504868, 40.500706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086005, 0.123791, 0.988574,
		-0.052649, 0.990300, -0.128588,
		-0.994902, -0.063107, -0.078654,
		45.401115, 37.485935, 40.477108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878345, 38.137222, 40.915604>,  <46.097546, 37.530109, 40.532166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878345, 38.137222, 40.915604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573013, 37.878849, 40.919701>,  <45.389812, 37.723827, 40.922157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.573013, 37.878849, 40.919701>,  <45.878345, 38.137222, 40.915604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573013, 37.878849, 40.919701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025784, 0.046298, 0.998595,
		-0.645495, 0.761993, -0.051995,
		-0.763329, -0.645929, 0.010238,
		45.344013, 37.685070, 40.922771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624226, 38.253857, 41.536266>,  <45.878345, 38.137222, 40.915604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624226, 38.253857, 41.536266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409946, 37.933586, 41.428974>,  <45.281380, 37.741425, 41.364597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409946, 37.933586, 41.428974>,  <45.624226, 38.253857, 41.536266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409946, 37.933586, 41.428974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213242, -0.179085, 0.960446,
		-0.817043, 0.571703, -0.074803,
		-0.535694, -0.800677, -0.268231,
		45.249237, 37.693382, 41.348503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006874, 38.334442, 41.870396>,  <45.624226, 38.253857, 41.536266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006874, 38.334442, 41.870396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093784, 37.950005, 41.802174>,  <45.145931, 37.719341, 41.761238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093784, 37.950005, 41.802174>,  <45.006874, 38.334442, 41.870396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093784, 37.950005, 41.802174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266632, -0.226523, 0.936800,
		-0.938988, -0.158065, -0.305476,
		0.217273, -0.961094, -0.170557,
		45.158966, 37.661674, 41.751007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513283, 37.947121, 42.232349>,  <45.006874, 38.334442, 41.870396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513283, 37.947121, 42.232349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809898, 37.688824, 42.159534>,  <44.987865, 37.533844, 42.115845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809898, 37.688824, 42.159534>,  <44.513283, 37.947121, 42.232349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809898, 37.688824, 42.159534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014147, -0.256217, 0.966516,
		-0.670764, -0.719281, -0.180859,
		0.741535, -0.645745, -0.182037,
		45.032360, 37.495102, 42.104923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297962, 37.277756, 42.470055>,  <44.513283, 37.947121, 42.232349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297962, 37.277756, 42.470055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697933, 37.282093, 42.467869>,  <44.937916, 37.284695, 42.466557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697933, 37.282093, 42.467869>,  <44.297962, 37.277756, 42.470055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697933, 37.282093, 42.467869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009512, -0.419987, 0.907481,
		0.007543, -0.907466, -0.420059,
		0.999926, 0.010840, -0.005464,
		44.997910, 37.285343, 42.466228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478767, 36.683224, 42.862190>,  <44.297962, 37.277756, 42.470055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478767, 36.683224, 42.862190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828457, 36.877289, 42.854759>,  <45.038273, 36.993729, 42.850300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828457, 36.877289, 42.854759>,  <44.478767, 36.683224, 42.862190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828457, 36.877289, 42.854759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245073, -0.407925, 0.879509,
		0.419127, -0.773443, -0.475519,
		0.874227, 0.485163, -0.018578,
		45.090725, 37.022839, 42.849186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958298, 36.181046, 43.116592>,  <44.478767, 36.683224, 42.862190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958298, 36.181046, 43.116592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132771, 36.537075, 43.169537>,  <45.237453, 36.750690, 43.201302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132771, 36.537075, 43.169537>,  <44.958298, 36.181046, 43.116592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132771, 36.537075, 43.169537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213411, -0.245214, 0.945688,
		0.874186, -0.384244, -0.296909,
		0.436181, 0.890071, 0.132361,
		45.263626, 36.804096, 43.209244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551266, 35.971458, 43.399010>,  <44.958298, 36.181046, 43.116592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551266, 35.971458, 43.399010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553436, 36.360180, 43.493298>,  <45.554737, 36.593414, 43.549870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553436, 36.360180, 43.493298>,  <45.551266, 35.971458, 43.399010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553436, 36.360180, 43.493298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474696, -0.209973, 0.854737,
		0.880133, 0.107260, -0.462451,
		0.005423, 0.971806, 0.235720,
		45.555061, 36.651722, 43.564014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179317, 36.094715, 43.662113>,  <45.551266, 35.971458, 43.399010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179317, 36.094715, 43.662113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926067, 36.371216, 43.801434>,  <45.774117, 36.537117, 43.885025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926067, 36.371216, 43.801434>,  <46.179317, 36.094715, 43.662113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.926067, 36.371216, 43.801434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319729, -0.176244, 0.930973,
		0.704927, 0.700788, -0.109429,
		-0.633129, 0.691256, 0.348301,
		45.736130, 36.578594, 43.905926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534443, 36.550289, 44.073238>,  <46.179317, 36.094715, 43.662113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534443, 36.550289, 44.073238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155170, 36.603992, 44.188431>,  <45.927608, 36.636215, 44.257545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155170, 36.603992, 44.188431>,  <46.534443, 36.550289, 44.073238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155170, 36.603992, 44.188431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269337, -0.141239, 0.952633,
		0.168577, 0.980829, 0.097758,
		-0.948177, 0.134262, 0.287983,
		45.870716, 36.644272, 44.274826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656296, 36.908165, 44.674572>,  <46.534443, 36.550289, 44.073238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656296, 36.908165, 44.674572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284721, 36.762783, 44.702766>,  <46.061775, 36.675552, 44.719685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284721, 36.762783, 44.702766>,  <46.656296, 36.908165, 44.674572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284721, 36.762783, 44.702766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148550, -0.191509, 0.970184,
		-0.339119, 0.911715, 0.231892,
		-0.928941, -0.363456, 0.070491,
		46.006039, 36.653748, 44.723915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475174, 37.189419, 45.267483>,  <46.656296, 36.908165, 44.674572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475174, 37.189419, 45.267483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238922, 36.872295, 45.207329>,  <46.097172, 36.682022, 45.171238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238922, 36.872295, 45.207329>,  <46.475174, 37.189419, 45.267483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238922, 36.872295, 45.207329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277046, -0.374256, 0.884973,
		-0.757896, 0.481026, 0.440690,
		-0.590626, -0.792809, -0.150381,
		46.061733, 36.634453, 45.162216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176723, 37.103691, 45.924641>,  <46.475174, 37.189419, 45.267483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176723, 37.103691, 45.924641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133919, 36.752827, 45.737392>,  <46.108234, 36.542309, 45.625042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133919, 36.752827, 45.737392>,  <46.176723, 37.103691, 45.924641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133919, 36.752827, 45.737392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168077, -0.480008, 0.861012,
		-0.979948, 0.013459, 0.198798,
		-0.107013, -0.877161, -0.468121,
		46.101814, 36.489677, 45.596954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765148, 36.673931, 46.415337>,  <46.176723, 37.103691, 45.924641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765148, 36.673931, 46.415337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.931313, 36.428326, 46.146881>,  <46.031010, 36.280964, 45.985809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.931313, 36.428326, 46.146881>,  <45.765148, 36.673931, 46.415337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.931313, 36.428326, 46.146881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224681, -0.645686, 0.729800,
		-0.881450, -0.453956, -0.130266,
		0.415408, -0.614015, -0.671135,
		46.055935, 36.244122, 45.945541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746101, 36.180134, 46.821556>,  <45.765148, 36.673931, 46.415337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746101, 36.180134, 46.821556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973648, 36.049347, 46.519703>,  <46.110176, 35.970875, 46.338589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973648, 36.049347, 46.519703>,  <45.746101, 36.180134, 46.821556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973648, 36.049347, 46.519703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290201, -0.778748, 0.556178,
		-0.769521, -0.535393, -0.348127,
		0.568877, -0.326964, -0.754635,
		46.144310, 35.951256, 46.293312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723164, 35.492565, 46.996223>,  <45.746101, 36.180134, 46.821556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723164, 35.492565, 46.996223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050083, 35.519878, 46.767361>,  <46.246235, 35.536266, 46.630043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050083, 35.519878, 46.767361>,  <45.723164, 35.492565, 46.996223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050083, 35.519878, 46.767361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416689, -0.755873, 0.505002,
		-0.397994, -0.651148, -0.646226,
		0.817295, 0.068287, -0.572159,
		46.295273, 35.540363, 46.595715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.880512, 34.806000, 46.832775>,  <45.723164, 35.492565, 46.996223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.880512, 34.806000, 46.832775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204094, 35.041077, 46.838524>,  <46.398243, 35.182121, 46.841972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204094, 35.041077, 46.838524>,  <45.880512, 34.806000, 46.832775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204094, 35.041077, 46.838524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502648, -0.704164, 0.501497,
		0.304846, -0.398465, -0.865040,
		0.808959, 0.587689, 0.014373,
		46.446781, 35.217384, 46.842834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545982, 34.557846, 46.436066>,  <45.880512, 34.806000, 46.832775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.545982, 34.557846, 46.436066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578743, 34.773804, 46.771160>,  <46.598400, 34.903378, 46.972218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578743, 34.773804, 46.771160>,  <46.545982, 34.557846, 46.436066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578743, 34.773804, 46.771160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727867, -0.606593, 0.319772,
		0.680810, 0.583575, -0.442649,
		0.081897, 0.539894, 0.837739,
		46.603313, 34.935772, 47.022484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.866940, 33.959446, 46.572132>,  <46.545982, 34.557846, 46.436066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.866940, 33.959446, 46.572132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.235268, 34.100208, 46.504902>,  <47.456264, 34.184666, 46.464565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.235268, 34.100208, 46.504902>,  <46.866940, 33.959446, 46.572132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.235268, 34.100208, 46.504902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279628, -0.295366, 0.913546,
		0.271841, -0.888211, -0.370383,
		0.920821, 0.351909, -0.168076,
		47.511513, 34.205780, 46.454479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492840, 33.569534, 46.577557>,  <46.866940, 33.959446, 46.572132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492840, 33.569534, 46.577557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616829, 33.925800, 46.710598>,  <47.691223, 34.139561, 46.790424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616829, 33.925800, 46.710598>,  <47.492840, 33.569534, 46.577557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616829, 33.925800, 46.710598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447081, -0.445295, 0.775778,
		0.839068, -0.091769, -0.536230,
		0.309973, 0.890669, 0.332605,
		47.709820, 34.193001, 46.810379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.297421, 32.811291, 46.374111>,  <47.492840, 33.569534, 46.577557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.297421, 32.811291, 46.374111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009346, 32.620853, 46.172256>,  <46.836502, 32.506592, 46.051144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009346, 32.620853, 46.172256>,  <47.297421, 32.811291, 46.374111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009346, 32.620853, 46.172256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377885, 0.340820, -0.860839,
		0.581834, -0.810662, -0.065545,
		-0.720189, -0.476097, -0.504638,
		46.793289, 32.478024, 46.020866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.575562, 32.231716, 45.994728>,  <47.297421, 32.811291, 46.374111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.575562, 32.231716, 45.994728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246677, 32.387589, 45.828773>,  <47.049347, 32.481110, 45.729202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246677, 32.387589, 45.828773>,  <47.575562, 32.231716, 45.994728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.246677, 32.387589, 45.828773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519448, 0.215709, -0.826827,
		-0.232704, -0.895332, -0.379775,
		-0.822206, 0.389679, -0.414883,
		47.000015, 32.504494, 45.704308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.745293, 32.000469, 45.297138>,  <47.575562, 32.231716, 45.994728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.745293, 32.000469, 45.297138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493423, 32.311169, 45.291889>,  <47.342300, 32.497589, 45.288738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493423, 32.311169, 45.291889>,  <47.745293, 32.000469, 45.297138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.493423, 32.311169, 45.291889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359963, 0.276750, -0.890975,
		-0.688432, -0.565747, -0.453863,
		-0.629673, 0.776750, -0.013124,
		47.304523, 32.544193, 45.287952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.227913, 32.125420, 44.692863>,  <47.745293, 32.000469, 45.297138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.227913, 32.125420, 44.692863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294044, 32.491398, 44.840126>,  <47.333725, 32.710983, 44.928486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294044, 32.491398, 44.840126>,  <47.227913, 32.125420, 44.692863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.294044, 32.491398, 44.840126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279350, 0.314565, -0.907200,
		-0.945849, 0.252832, -0.203583,
		0.165329, 0.914945, 0.368160,
		47.343643, 32.765881, 44.950573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.247959, 32.458832, 44.019859>,  <47.227913, 32.125420, 44.692863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.247959, 32.458832, 44.019859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858620, 32.478352, 44.109497>,  <46.625015, 32.490063, 44.163280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858620, 32.478352, 44.109497>,  <47.247959, 32.458832, 44.019859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.858620, 32.478352, 44.109497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226443, -0.049529, -0.972764,
		-0.036350, -0.997581, 0.059254,
		-0.973346, 0.048778, 0.224095,
		46.566616, 32.492992, 44.176723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.828064, 31.991575, 43.501072>,  <47.247959, 32.458832, 44.019859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.828064, 31.991575, 43.501072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.635818, 32.311604, 43.644680>,  <46.520470, 32.503620, 43.730846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.635818, 32.311604, 43.644680>,  <46.828064, 31.991575, 43.501072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635818, 32.311604, 43.644680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393738, 0.168942, -0.903565,
		-0.783570, -0.575627, 0.233822,
		-0.480614, 0.800070, 0.359024,
		46.491634, 32.551624, 43.752388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.117237, 31.936733, 43.254280>,  <46.828064, 31.991575, 43.501072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.117237, 31.936733, 43.254280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187256, 32.319096, 43.348598>,  <46.229267, 32.548512, 43.405190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187256, 32.319096, 43.348598>,  <46.117237, 31.936733, 43.254280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187256, 32.319096, 43.348598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396026, 0.287628, -0.872028,
		-0.901400, 0.059263, 0.428912,
		0.175046, 0.955907, 0.235798,
		46.239769, 32.605869, 43.419338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545135, 32.234665, 42.985207>,  <46.117237, 31.936733, 43.254280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545135, 32.234665, 42.985207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782112, 32.550201, 43.050621>,  <45.924297, 32.739521, 43.089870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782112, 32.550201, 43.050621>,  <45.545135, 32.234665, 42.985207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782112, 32.550201, 43.050621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267970, 0.384401, -0.883418,
		-0.759739, 0.479552, 0.439121,
		0.592443, 0.788838, 0.163539,
		45.959846, 32.786854, 43.099682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117119, 32.755417, 42.740379>,  <45.545135, 32.234665, 42.985207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117119, 32.755417, 42.740379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488316, 32.903927, 42.752884>,  <45.711033, 32.993034, 42.760387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488316, 32.903927, 42.752884>,  <45.117119, 32.755417, 42.740379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488316, 32.903927, 42.752884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144803, 0.436697, -0.887879,
		-0.343303, 0.819420, 0.459014,
		0.927995, 0.371278, 0.031265,
		45.766716, 33.015312, 42.762264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096016, 33.456203, 42.507576>,  <45.117119, 32.755417, 42.740379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096016, 33.456203, 42.507576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484737, 33.375538, 42.458694>,  <45.717968, 33.327137, 42.429363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484737, 33.375538, 42.458694>,  <45.096016, 33.456203, 42.507576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484737, 33.375538, 42.458694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003527, 0.530628, -0.847597,
		0.235778, 0.823264, 0.516376,
		0.971801, -0.201666, -0.122207,
		45.776279, 33.315037, 42.422031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434593, 34.093876, 42.489567>,  <45.096016, 33.456203, 42.507576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434593, 34.093876, 42.489567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.687382, 33.822029, 42.340580>,  <45.839054, 33.658920, 42.251186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.687382, 33.822029, 42.340580>,  <45.434593, 34.093876, 42.489567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.687382, 33.822029, 42.340580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182027, 0.597330, -0.781065,
		0.753314, 0.425809, 0.501203,
		0.631968, -0.679620, -0.372468,
		45.876972, 33.618141, 42.228840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061466, 34.433914, 42.439568>,  <45.434593, 34.093876, 42.489567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061466, 34.433914, 42.439568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071064, 34.130161, 42.179485>,  <46.076824, 33.947910, 42.023438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071064, 34.130161, 42.179485>,  <46.061466, 34.433914, 42.439568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071064, 34.130161, 42.179485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180239, 0.643022, -0.744336,
		0.983330, -0.099330, 0.152301,
		0.023998, -0.759379, -0.650206,
		46.078262, 33.902348, 41.984425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.743797, 34.473076, 41.965313>,  <46.061466, 34.433914, 42.439568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.743797, 34.473076, 41.965313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454384, 34.255283, 41.795593>,  <46.280735, 34.124607, 41.693760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454384, 34.255283, 41.795593>,  <46.743797, 34.473076, 41.965313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454384, 34.255283, 41.795593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081140, 0.543329, -0.835590,
		0.685500, -0.639008, -0.348939,
		-0.723537, -0.544484, -0.424301,
		46.237324, 34.091938, 41.668304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981030, 34.434044, 41.212551>,  <46.743797, 34.473076, 41.965313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981030, 34.434044, 41.212551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.613483, 34.281898, 41.170586>,  <46.392956, 34.190613, 41.145409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.613483, 34.281898, 41.170586>,  <46.981030, 34.434044, 41.212551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613483, 34.281898, 41.170586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026467, 0.324707, -0.945444,
		0.393682, -0.865960, -0.308429,
		-0.918866, -0.380368, -0.104912,
		46.337822, 34.167789, 41.139111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088181, 33.993958, 40.786392>,  <46.981030, 34.434044, 41.212551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088181, 33.993958, 40.786392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706215, 34.111340, 40.768368>,  <46.477036, 34.181770, 40.757553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706215, 34.111340, 40.768368>,  <47.088181, 33.993958, 40.786392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706215, 34.111340, 40.768368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176556, 0.439270, -0.880835,
		-0.238691, -0.849074, -0.471275,
		-0.954911, 0.293454, -0.045059,
		46.419743, 34.199375, 40.754848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781376, 33.748566, 40.117157>,  <47.088181, 33.993958, 40.786392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781376, 33.748566, 40.117157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548584, 34.052013, 40.234318>,  <46.408909, 34.234081, 40.304615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548584, 34.052013, 40.234318>,  <46.781376, 33.748566, 40.117157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548584, 34.052013, 40.234318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119512, 0.436062, -0.891945,
		-0.804370, -0.484093, -0.344445,
		-0.581984, 0.758620, 0.292901,
		46.373989, 34.279598, 40.322189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488605, 33.866531, 39.542721>,  <46.781376, 33.748566, 40.117157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488605, 33.866531, 39.542721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398827, 34.189224, 39.761375>,  <46.344959, 34.382839, 39.892567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398827, 34.189224, 39.761375>,  <46.488605, 33.866531, 39.542721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398827, 34.189224, 39.761375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046541, 0.569180, -0.820895,
		-0.973374, -0.158809, -0.165298,
		-0.224450, 0.806730, 0.546633,
		46.331493, 34.431244, 39.925365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890465, 34.111652, 39.222507>,  <46.488605, 33.866531, 39.542721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890465, 34.111652, 39.222507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081554, 34.394924, 39.430454>,  <46.196209, 34.564888, 39.555222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081554, 34.394924, 39.430454>,  <45.890465, 34.111652, 39.222507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081554, 34.394924, 39.430454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058893, 0.564613, -0.823252,
		-0.876536, 0.423900, 0.228020,
		0.477720, 0.708181, 0.519869,
		46.224869, 34.607380, 39.586414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555840, 34.733395, 38.936996>,  <45.890465, 34.111652, 39.222507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555840, 34.733395, 38.936996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893372, 34.856075, 39.113129>,  <46.095890, 34.929684, 39.218807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893372, 34.856075, 39.113129>,  <45.555840, 34.733395, 38.936996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893372, 34.856075, 39.113129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173272, 0.620887, -0.764510,
		-0.507868, 0.721412, 0.470780,
		0.843828, 0.306698, 0.440330,
		46.146519, 34.948086, 39.245228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.554436, 35.465813, 38.820282>,  <45.555840, 34.733395, 38.936996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.554436, 35.465813, 38.820282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930939, 35.378521, 38.923355>,  <46.156841, 35.326145, 38.985199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930939, 35.378521, 38.923355>,  <45.554436, 35.465813, 38.820282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930939, 35.378521, 38.923355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334173, 0.711666, -0.617949,
		-0.048531, 0.667763, 0.742790,
		0.941262, -0.218231, 0.257686,
		46.213318, 35.313053, 39.000660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938175, 36.154278, 38.960636>,  <45.554436, 35.465813, 38.820282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938175, 36.154278, 38.960636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217991, 35.882500, 38.872086>,  <46.385880, 35.719433, 38.818954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217991, 35.882500, 38.872086>,  <45.938175, 36.154278, 38.960636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217991, 35.882500, 38.872086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384621, 0.619078, -0.684697,
		0.602260, 0.393826, 0.694395,
		0.699536, -0.679444, -0.221372,
		46.427853, 35.678665, 38.805676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646904, 36.494308, 38.920067>,  <45.938175, 36.154278, 38.960636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646904, 36.494308, 38.920067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716393, 36.143166, 38.741547>,  <46.758083, 35.932480, 38.634434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716393, 36.143166, 38.741547>,  <46.646904, 36.494308, 38.920067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.716393, 36.143166, 38.741547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558960, 0.461013, -0.689224,
		0.810793, -0.129735, 0.570774,
		0.173718, -0.877859, -0.446303,
		46.768509, 35.879807, 38.607655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.371948, 36.483932, 38.832493>,  <46.646904, 36.494308, 38.920067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.371948, 36.483932, 38.832493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204350, 36.245560, 38.558468>,  <47.103790, 36.102535, 38.394054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204350, 36.245560, 38.558468>,  <47.371948, 36.483932, 38.832493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.204350, 36.245560, 38.558468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511985, 0.468036, -0.720287,
		0.749874, -0.652539, 0.109002,
		-0.418998, -0.595932, -0.685059,
		47.078651, 36.066780, 38.352951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.910564, 36.263134, 38.352798>,  <47.371948, 36.483932, 38.832493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.910564, 36.263134, 38.352798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584415, 36.203041, 38.129154>,  <47.388725, 36.166985, 37.994968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584415, 36.203041, 38.129154>,  <47.910564, 36.263134, 38.352798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.584415, 36.203041, 38.129154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456326, 0.427558, -0.780360,
		0.356289, -0.891417, -0.280061,
		-0.815368, -0.150234, -0.559110,
		47.339806, 36.157970, 37.961422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.159893, 36.077858, 37.640892>,  <47.910564, 36.263134, 38.352798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.159893, 36.077858, 37.640892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.779148, 36.184910, 37.581120>,  <47.550701, 36.249142, 37.545258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.779148, 36.184910, 37.581120>,  <48.159893, 36.077858, 37.640892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.779148, 36.184910, 37.581120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286479, 0.603381, -0.744219,
		-0.109014, -0.751203, -0.651007,
		-0.951864, 0.267630, -0.149427,
		47.493587, 36.265198, 37.536293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.928135, 36.113434, 36.911705>,  <48.159893, 36.077858, 37.640892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.928135, 36.113434, 36.911705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631187, 36.332077, 37.066677>,  <47.453018, 36.463264, 37.159660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631187, 36.332077, 37.066677>,  <47.928135, 36.113434, 36.911705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631187, 36.332077, 37.066677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157858, 0.704683, -0.691739,
		-0.651126, -0.452369, -0.609423,
		-0.742372, 0.546612, 0.387427,
		47.408478, 36.496059, 37.182907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.972633, 36.103573, 36.118649>,  <47.928135, 36.113434, 36.911705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.972633, 36.103573, 36.118649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645592, 35.921360, 35.977783>,  <47.449368, 35.812031, 35.893265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645592, 35.921360, 35.977783>,  <47.972633, 36.103573, 36.118649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.645592, 35.921360, 35.977783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540112, -0.394830, -0.743228,
		0.199518, -0.797872, 0.568852,
		-0.817601, -0.455531, -0.352165,
		47.400311, 35.784702, 35.872135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.036289, 35.306545, 36.043900>,  <47.972633, 36.103573, 36.118649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.036289, 35.306545, 36.043900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.776875, 35.462158, 35.782196>,  <47.621223, 35.555527, 35.625175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.776875, 35.462158, 35.782196>,  <48.036289, 35.306545, 36.043900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.776875, 35.462158, 35.782196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440874, -0.508696, -0.739499,
		-0.620505, -0.768040, 0.158396,
		-0.648540, 0.389029, -0.654257,
		47.582314, 35.578865, 35.585918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.715591, 34.744133, 35.600662>,  <48.036289, 35.306545, 36.043900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.715591, 34.744133, 35.600662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.711998, 35.073761, 35.374096>,  <47.709843, 35.271538, 35.238155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.711998, 35.073761, 35.374096>,  <47.715591, 34.744133, 35.600662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.711998, 35.073761, 35.374096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380617, -0.520986, -0.764006,
		-0.924689, -0.222448, -0.308976,
		-0.008980, 0.824069, -0.566418,
		47.709305, 35.320980, 35.204170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.225475, 34.709835, 34.909512>,  <47.715591, 34.744133, 35.600662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.225475, 34.709835, 34.909512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555412, 34.935978, 34.908070>,  <47.753372, 35.071663, 34.907204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555412, 34.935978, 34.908070>,  <47.225475, 34.709835, 34.909512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555412, 34.935978, 34.908070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367267, -0.540662, -0.756836,
		-0.429834, 0.622942, -0.653595,
		0.824838, 0.565357, -0.003609,
		47.802864, 35.105587, 34.906986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.044033, 37.191849, 45.200302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904045, 36.817471, 45.184696>,  <35.820053, 36.592842, 45.175331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904045, 36.817471, 45.184696>,  <36.044033, 37.191849, 45.200302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904045, 36.817471, 45.184696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029536, 0.052657, -0.998176,
		0.936296, -0.348177, -0.046073,
		-0.349968, -0.935949, -0.039019,
		35.799053, 36.536686, 45.172989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359940, 36.902229, 44.668980>,  <36.044033, 37.191849, 45.200302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359940, 36.902229, 44.668980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034737, 36.672611, 44.707954>,  <35.839615, 36.534840, 44.731339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034737, 36.672611, 44.707954>,  <36.359940, 36.902229, 44.668980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034737, 36.672611, 44.707954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083636, -0.050470, -0.995218,
		0.576217, -0.817267, -0.006978,
		-0.813006, -0.574045, 0.097435,
		35.790836, 36.500397, 44.737186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572838, 36.254772, 44.283916>,  <36.359940, 36.902229, 44.668980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572838, 36.254772, 44.283916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172916, 36.258411, 44.290913>,  <35.932964, 36.260593, 44.295109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172916, 36.258411, 44.290913>,  <36.572838, 36.254772, 44.283916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172916, 36.258411, 44.290913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018597, -0.141121, -0.989818,
		-0.006536, -0.989951, 0.141263,
		-0.999806, 0.009096, 0.017488,
		35.872974, 36.261143, 44.296158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412464, 35.715946, 43.971287>,  <36.572838, 36.254772, 44.283916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412464, 35.715946, 43.971287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070061, 35.922310, 43.958134>,  <35.864620, 36.046127, 43.950241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070061, 35.922310, 43.958134>,  <36.412464, 35.715946, 43.971287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070061, 35.922310, 43.958134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105416, -0.236470, -0.965903,
		-0.506099, -0.823356, 0.256806,
		-0.856009, 0.515914, -0.032882,
		35.813259, 36.077084, 43.948269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999020, 35.294785, 43.600655>,  <36.412464, 35.715946, 43.971287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999020, 35.294785, 43.600655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.831116, 35.657581, 43.587017>,  <35.730373, 35.875259, 43.578835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.831116, 35.657581, 43.587017>,  <35.999020, 35.294785, 43.600655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831116, 35.657581, 43.587017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192644, -0.125733, -0.973180,
		-0.886955, -0.401936, 0.227505,
		-0.419761, 0.906994, -0.034089,
		35.705189, 35.929680, 43.576790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356163, 35.139503, 43.346786>,  <35.999020, 35.294785, 43.600655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356163, 35.139503, 43.346786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457596, 35.514393, 43.251038>,  <35.518456, 35.739326, 43.193588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457596, 35.514393, 43.251038>,  <35.356163, 35.139503, 43.346786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457596, 35.514393, 43.251038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196403, -0.192423, -0.961457,
		-0.947165, 0.290823, 0.135279,
		0.253583, 0.937227, -0.239375,
		35.533672, 35.795563, 43.179226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883453, 35.345367, 42.824501>,  <35.356163, 35.139503, 43.346786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883453, 35.345367, 42.824501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101170, 35.677696, 42.778069>,  <35.231800, 35.877094, 42.750210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101170, 35.677696, 42.778069>,  <34.883453, 35.345367, 42.824501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101170, 35.677696, 42.778069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078738, -0.087172, -0.993077,
		-0.835194, 0.549662, 0.017971,
		0.544290, 0.830827, -0.116085,
		35.264458, 35.926945, 42.743244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603237, 35.596939, 42.234818>,  <34.883453, 35.345367, 42.824501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603237, 35.596939, 42.234818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966427, 35.761921, 42.264412>,  <35.184341, 35.860909, 42.282169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966427, 35.761921, 42.264412>,  <34.603237, 35.596939, 42.234818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966427, 35.761921, 42.264412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110344, -0.065014, -0.991765,
		-0.404244, 0.908657, -0.104542,
		0.907971, 0.412451, 0.073983,
		35.238819, 35.885654, 42.286606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699886, 36.146622, 41.732971>,  <34.603237, 35.596939, 42.234818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699886, 36.146622, 41.732971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074249, 36.025234, 41.804508>,  <35.298866, 35.952400, 41.847431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074249, 36.025234, 41.804508>,  <34.699886, 36.146622, 41.732971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074249, 36.025234, 41.804508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190824, 0.010026, -0.981573,
		0.296087, 0.952788, 0.067293,
		0.935905, -0.303472, 0.178846,
		35.355022, 35.934193, 41.858162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187786, 36.682705, 41.413353>,  <34.699886, 36.146622, 41.732971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187786, 36.682705, 41.413353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365425, 36.328835, 41.470089>,  <35.472008, 36.116512, 41.504131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365425, 36.328835, 41.470089>,  <35.187786, 36.682705, 41.413353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365425, 36.328835, 41.470089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328797, 0.013655, -0.944302,
		0.833466, 0.466003, 0.296944,
		0.444102, -0.884678, 0.141840,
		35.498657, 36.063431, 41.512642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926632, 36.737755, 41.255363>,  <35.187786, 36.682705, 41.413353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926632, 36.737755, 41.255363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834846, 36.349739, 41.223442>,  <35.779778, 36.116928, 41.204288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834846, 36.349739, 41.223442>,  <35.926632, 36.737755, 41.255363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834846, 36.349739, 41.223442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464113, -0.036977, -0.885004,
		0.855539, -0.240110, 0.458693,
		-0.229459, -0.970041, -0.079803,
		35.766010, 36.058727, 41.199501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566319, 36.451199, 41.122505>,  <35.926632, 36.737755, 41.255363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566319, 36.451199, 41.122505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305767, 36.166599, 41.017067>,  <36.149437, 35.995838, 40.953804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305767, 36.166599, 41.017067>,  <36.566319, 36.451199, 41.122505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305767, 36.166599, 41.017067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510285, -0.153681, -0.846163,
		0.561533, -0.685678, 0.463170,
		-0.651376, -0.711497, -0.263594,
		36.110355, 35.953152, 40.937988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005997, 35.959934, 40.828979>,  <36.566319, 36.451199, 41.122505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005997, 35.959934, 40.828979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649029, 35.843914, 40.690735>,  <36.434849, 35.774300, 40.607788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649029, 35.843914, 40.690735>,  <37.005997, 35.959934, 40.828979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649029, 35.843914, 40.690735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374779, -0.050011, -0.925764,
		0.251238, -0.955703, 0.153337,
		-0.892424, -0.290055, -0.345613,
		36.381302, 35.756897, 40.587051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091423, 35.296024, 40.382248>,  <37.005997, 35.959934, 40.828979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091423, 35.296024, 40.382248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757435, 35.486721, 40.272305>,  <36.557041, 35.601139, 40.206341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757435, 35.486721, 40.272305>,  <37.091423, 35.296024, 40.382248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757435, 35.486721, 40.272305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295422, -0.033065, -0.954794,
		-0.464279, -0.878421, -0.113231,
		-0.834968, 0.476742, -0.274856,
		36.506943, 35.629742, 40.189846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849438, 34.867729, 39.795982>,  <37.091423, 35.296024, 40.382248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849438, 34.867729, 39.795982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717503, 35.240860, 39.737953>,  <36.638340, 35.464737, 39.703136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717503, 35.240860, 39.737953>,  <36.849438, 34.867729, 39.795982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717503, 35.240860, 39.737953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339502, -0.026181, -0.940241,
		-0.880876, -0.359384, -0.308059,
		-0.329842, 0.932823, -0.145073,
		36.618549, 35.520706, 39.694431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902130, 35.076477, 39.092667>,  <36.849438, 34.867729, 39.795982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902130, 35.076477, 39.092667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836334, 35.448185, 39.224976>,  <36.796856, 35.671207, 39.304359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836334, 35.448185, 39.224976>,  <36.902130, 35.076477, 39.092667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836334, 35.448185, 39.224976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467505, 0.368729, -0.803417,
		-0.868552, 0.022484, -0.495087,
		-0.164489, 0.929265, 0.330772,
		36.786987, 35.726963, 39.324207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570618, 35.402107, 38.590702>,  <36.902130, 35.076477, 39.092667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570618, 35.402107, 38.590702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726299, 35.709831, 38.793358>,  <36.819706, 35.894466, 38.914951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726299, 35.709831, 38.793358>,  <36.570618, 35.402107, 38.590702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726299, 35.709831, 38.793358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392347, 0.359174, -0.846793,
		-0.833419, 0.528349, -0.162047,
		0.389200, 0.769312, 0.506639,
		36.843060, 35.940624, 38.945351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472107, 36.014629, 38.141747>,  <36.570618, 35.402107, 38.590702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472107, 36.014629, 38.141747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749817, 36.130974, 38.405071>,  <36.916443, 36.200779, 38.563068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749817, 36.130974, 38.405071>,  <36.472107, 36.014629, 38.141747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749817, 36.130974, 38.405071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444771, 0.545725, -0.710185,
		-0.565822, 0.785866, 0.249519,
		0.694279, 0.290860, 0.658314,
		36.958099, 36.218231, 38.602566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647106, 36.777885, 37.991356>,  <36.472107, 36.014629, 38.141747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647106, 36.777885, 37.991356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954781, 36.626549, 38.197350>,  <37.139385, 36.535748, 38.320946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954781, 36.626549, 38.197350>,  <36.647106, 36.777885, 37.991356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954781, 36.626549, 38.197350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636357, 0.527067, -0.563250,
		-0.058328, 0.760957, 0.646175,
		0.769186, -0.378345, 0.514983,
		37.185535, 36.513046, 38.351845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090641, 37.314976, 38.245842>,  <36.647106, 36.777885, 37.991356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090641, 37.314976, 38.245842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298962, 36.978619, 38.186958>,  <37.423954, 36.776806, 38.151630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298962, 36.978619, 38.186958>,  <37.090641, 37.314976, 38.245842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298962, 36.978619, 38.186958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561588, 0.467342, -0.682796,
		0.642953, 0.272931, 0.715626,
		0.520798, -0.840893, -0.147204,
		37.455200, 36.726353, 38.142796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864098, 37.501347, 38.064274>,  <37.090641, 37.314976, 38.245842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864098, 37.501347, 38.064274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829269, 37.121300, 37.944473>,  <37.808372, 36.893272, 37.872593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829269, 37.121300, 37.944473>,  <37.864098, 37.501347, 38.064274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829269, 37.121300, 37.944473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701617, 0.154946, -0.695504,
		0.707215, -0.270695, 0.653125,
		-0.087071, -0.950114, -0.299504,
		37.803146, 36.836266, 37.854622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574963, 37.231010, 37.953587>,  <37.864098, 37.501347, 38.064274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574963, 37.231010, 37.953587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311493, 37.006729, 37.752880>,  <38.153412, 36.872162, 37.632458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311493, 37.006729, 37.752880>,  <38.574963, 37.231010, 37.953587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311493, 37.006729, 37.752880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624510, -0.035423, -0.780213,
		0.419691, -0.827261, 0.373495,
		-0.658671, -0.560700, -0.501766,
		38.113892, 36.838520, 37.602352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984459, 36.960297, 37.349277>,  <38.574963, 37.231010, 37.953587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984459, 36.960297, 37.349277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295681, 37.188698, 37.454029>,  <39.482414, 37.325737, 37.516880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295681, 37.188698, 37.454029>,  <38.984459, 36.960297, 37.349277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295681, 37.188698, 37.454029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157752, -0.225921, 0.961288,
		0.608063, -0.789249, -0.085703,
		0.778058, 0.571004, 0.261880,
		39.529099, 37.360001, 37.532593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496262, 36.542542, 37.683037>,  <38.984459, 36.960297, 37.349277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496262, 36.542542, 37.683037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572910, 36.920876, 37.787868>,  <39.618900, 37.147877, 37.850765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572910, 36.920876, 37.787868>,  <39.496262, 36.542542, 37.683037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572910, 36.920876, 37.787868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095880, -0.247708, 0.964079,
		0.976775, -0.209865, 0.043221,
		0.191620, 0.945832, 0.262076,
		39.630398, 37.204624, 37.866493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818462, 36.418671, 38.274879>,  <39.496262, 36.542542, 37.683037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818462, 36.418671, 38.274879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756771, 36.812786, 38.304337>,  <39.719757, 37.049255, 38.322010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756771, 36.812786, 38.304337>,  <39.818462, 36.418671, 38.274879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756771, 36.812786, 38.304337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069035, -0.085097, 0.993978,
		0.985621, 0.148212, 0.081143,
		-0.154225, 0.985288, 0.073641,
		39.710503, 37.108372, 38.326427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189995, 36.669823, 38.888607>,  <39.818462, 36.418671, 38.274879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189995, 36.669823, 38.888607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.960594, 36.991985, 38.828709>,  <39.822952, 37.185284, 38.792770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.960594, 36.991985, 38.828709>,  <40.189995, 36.669823, 38.888607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960594, 36.991985, 38.828709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031549, 0.204368, 0.978386,
		0.818598, 0.556380, -0.142615,
		-0.573500, 0.805403, -0.149742,
		39.788544, 37.233608, 38.783787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561913, 37.300179, 39.216820>,  <40.189995, 36.669823, 38.888607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561913, 37.300179, 39.216820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.168217, 37.365112, 39.188774>,  <39.931999, 37.404072, 39.171947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.168217, 37.365112, 39.188774>,  <40.561913, 37.300179, 39.216820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168217, 37.365112, 39.188774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035624, 0.206355, 0.977828,
		0.173202, 0.964917, -0.197320,
		-0.984242, 0.162333, -0.070116,
		39.872944, 37.413811, 39.167740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357231, 38.011402, 39.476982>,  <40.561913, 37.300179, 39.216820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357231, 38.011402, 39.476982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.011208, 37.810734, 39.477642>,  <39.803593, 37.690334, 39.478039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.011208, 37.810734, 39.477642>,  <40.357231, 38.011402, 39.476982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011208, 37.810734, 39.477642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156697, 0.273325, 0.949073,
		-0.476572, 0.820745, -0.315052,
		-0.865058, -0.501669, 0.001651,
		39.751690, 37.660233, 39.478138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046211, 38.252659, 40.018963>,  <40.357231, 38.011402, 39.476982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046211, 38.252659, 40.018963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.814365, 37.930958, 39.966465>,  <39.675259, 37.737938, 39.934967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.814365, 37.930958, 39.966465>,  <40.046211, 38.252659, 40.018963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814365, 37.930958, 39.966465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235939, 0.011472, 0.971700,
		-0.779986, 0.594178, -0.196404,
		-0.579616, -0.804252, -0.131242,
		39.640480, 37.689682, 39.927094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363453, 38.371704, 40.257183>,  <40.046211, 38.252659, 40.018963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363453, 38.371704, 40.257183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.425644, 37.977165, 40.278900>,  <39.462959, 37.740440, 40.291931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.425644, 37.977165, 40.278900>,  <39.363453, 38.371704, 40.257183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425644, 37.977165, 40.278900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134250, 0.033352, 0.990386,
		-0.978675, -0.161269, -0.127231,
		0.155475, -0.986347, 0.054291,
		39.472286, 37.681263, 40.295189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789272, 38.075264, 40.609425>,  <39.363453, 38.371704, 40.257183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789272, 38.075264, 40.609425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085831, 37.811497, 40.659225>,  <39.263767, 37.653236, 40.689106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085831, 37.811497, 40.659225>,  <38.789272, 38.075264, 40.609425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085831, 37.811497, 40.659225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214262, -0.056796, 0.975124,
		-0.635939, -0.749632, -0.183395,
		0.741400, -0.659414, 0.124499,
		39.308250, 37.613674, 40.696575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457344, 37.638630, 41.060905>,  <38.789272, 38.075264, 40.609425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457344, 37.638630, 41.060905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852345, 37.576874, 41.073589>,  <39.089344, 37.539822, 41.081200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852345, 37.576874, 41.073589>,  <38.457344, 37.638630, 41.060905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852345, 37.576874, 41.073589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045261, -0.085073, 0.995346,
		-0.150970, -0.984341, -0.090997,
		0.987502, -0.154386, 0.031709,
		39.148594, 37.530556, 41.083103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620506, 37.053524, 41.437843>,  <38.457344, 37.638630, 41.060905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620506, 37.053524, 41.437843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977581, 37.231850, 41.464252>,  <39.191826, 37.338844, 41.480099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977581, 37.231850, 41.464252>,  <38.620506, 37.053524, 41.437843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977581, 37.231850, 41.464252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083032, -0.306678, 0.948185,
		0.442967, -0.840948, -0.310784,
		0.892685, 0.445819, 0.066023,
		39.245388, 37.365597, 41.484058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908966, 36.648632, 41.876270>,  <38.620506, 37.053524, 41.437843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908966, 36.648632, 41.876270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107994, 36.995594, 41.874001>,  <39.227409, 37.203770, 41.872639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107994, 36.995594, 41.874001>,  <38.908966, 36.648632, 41.876270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107994, 36.995594, 41.874001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036871, 0.027691, 0.998936,
		0.866640, -0.496831, 0.045760,
		0.497570, 0.867406, -0.005679,
		39.257263, 37.255817, 41.872295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462540, 36.588154, 42.447296>,  <38.908966, 36.648632, 41.876270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462540, 36.588154, 42.447296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.409309, 36.980835, 42.392826>,  <39.377373, 37.216446, 42.360142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.409309, 36.980835, 42.392826>,  <39.462540, 36.588154, 42.447296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409309, 36.980835, 42.392826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156053, 0.114932, 0.981039,
		0.978743, 0.151803, 0.137903,
		-0.133076, 0.981706, -0.136178,
		39.369389, 37.275345, 42.351971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855965, 37.021194, 43.006985>,  <39.462540, 36.588154, 42.447296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855965, 37.021194, 43.006985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.603859, 37.299259, 42.868702>,  <39.452595, 37.466099, 42.785732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.603859, 37.299259, 42.868702>,  <39.855965, 37.021194, 43.006985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603859, 37.299259, 42.868702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251644, 0.238325, 0.938017,
		0.734468, 0.678192, 0.024726,
		-0.630263, 0.695166, -0.345705,
		39.414780, 37.507809, 42.764992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888199, 37.633099, 43.414513>,  <39.855965, 37.021194, 43.006985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888199, 37.633099, 43.414513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.526257, 37.664940, 43.247231>,  <39.309090, 37.684044, 43.146862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.526257, 37.664940, 43.247231>,  <39.888199, 37.633099, 43.414513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526257, 37.664940, 43.247231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388526, 0.247111, 0.887684,
		0.174001, 0.965712, -0.192674,
		-0.904859, 0.079599, -0.418202,
		39.254799, 37.688820, 43.121769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692513, 38.373043, 43.531307>,  <39.888199, 37.633099, 43.414513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692513, 38.373043, 43.531307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363407, 38.150566, 43.484463>,  <39.165943, 38.017082, 43.456356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363407, 38.150566, 43.484463>,  <39.692513, 38.373043, 43.531307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363407, 38.150566, 43.484463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404194, 0.427682, 0.808527,
		-0.399610, 0.712560, -0.576689,
		-0.822763, -0.556189, -0.117107,
		39.116577, 37.983707, 43.449329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175377, 38.757782, 43.885704>,  <39.692513, 38.373043, 43.531307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175377, 38.757782, 43.885704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955826, 38.427456, 43.833923>,  <38.824093, 38.229259, 43.802856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955826, 38.427456, 43.833923>,  <39.175377, 38.757782, 43.885704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955826, 38.427456, 43.833923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601301, 0.282497, 0.747417,
		-0.580660, 0.488082, -0.651621,
		-0.548882, -0.825816, -0.129449,
		38.791161, 38.179710, 43.795090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406612, 38.925323, 43.819031>,  <39.175377, 38.757782, 43.885704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406612, 38.925323, 43.819031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408501, 38.534164, 43.902637>,  <38.409634, 38.299469, 43.952801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408501, 38.534164, 43.902637>,  <38.406612, 38.925323, 43.819031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408501, 38.534164, 43.902637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841143, 0.109154, 0.529683,
		-0.540793, -0.178309, -0.822040,
		0.004719, -0.977902, 0.209013,
		38.409916, 38.240795, 43.965340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.469635, 38.439953, 43.967529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758640, 38.219528, 44.134529>,  <37.932041, 38.087273, 44.234730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758640, 38.219528, 44.134529>,  <37.469635, 38.439953, 43.967529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758640, 38.219528, 44.134529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408024, 0.147616, 0.900958,
		-0.558117, -0.821301, -0.118194,
		0.722511, -0.551066, 0.417498,
		37.975395, 38.054207, 44.259777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117340, 37.963810, 44.322868>,  <37.469635, 38.439953, 43.967529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117340, 37.963810, 44.322868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483414, 37.937893, 44.481987>,  <37.703056, 37.922344, 44.577457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483414, 37.937893, 44.481987>,  <37.117340, 37.963810, 44.322868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483414, 37.937893, 44.481987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396697, 0.029583, 0.917473,
		-0.071215, -0.997460, 0.001371,
		0.915184, -0.064794, 0.397796,
		37.757969, 37.918453, 44.601326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267361, 37.219200, 44.696995>,  <37.117340, 37.963810, 44.322868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267361, 37.219200, 44.696995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497444, 37.499462, 44.865860>,  <37.635494, 37.667618, 44.967178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497444, 37.499462, 44.865860>,  <37.267361, 37.219200, 44.696995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497444, 37.499462, 44.865860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295813, -0.302994, 0.905919,
		0.762648, -0.645973, 0.032978,
		0.575207, 0.700652, 0.422165,
		37.670006, 37.709660, 44.992508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500694, 36.918030, 45.280331>,  <37.267361, 37.219200, 44.696995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500694, 36.918030, 45.280331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542812, 37.312138, 45.334229>,  <37.568085, 37.548603, 45.366570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542812, 37.312138, 45.334229>,  <37.500694, 36.918030, 45.280331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542812, 37.312138, 45.334229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172673, -0.115328, 0.978204,
		0.979335, -0.126270, 0.157986,
		0.105297, 0.985269, 0.134748,
		37.574402, 37.607719, 45.374653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898579, 36.852100, 45.785786>,  <37.500694, 36.918030, 45.280331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898579, 36.852100, 45.785786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751610, 37.224110, 45.782684>,  <37.663429, 37.447315, 45.780823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751610, 37.224110, 45.782684>,  <37.898579, 36.852100, 45.785786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751610, 37.224110, 45.782684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103388, -0.032552, 0.994108,
		0.924291, 0.366056, 0.108114,
		-0.367419, 0.930023, -0.007758,
		37.641384, 37.503117, 45.780357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195488, 37.188335, 46.314133>,  <37.898579, 36.852100, 45.785786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195488, 37.188335, 46.314133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.892776, 37.443615, 46.257591>,  <37.711151, 37.596783, 46.223667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.892776, 37.443615, 46.257591>,  <38.195488, 37.188335, 46.314133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892776, 37.443615, 46.257591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135240, 0.058701, 0.989072,
		0.639527, 0.767627, 0.041887,
		-0.756780, 0.638203, -0.141355,
		37.665741, 37.635075, 46.215183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240517, 37.848972, 46.744671>,  <38.195488, 37.188335, 46.314133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240517, 37.848972, 46.744671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846245, 37.831768, 46.679459>,  <37.609680, 37.821445, 46.640331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846245, 37.831768, 46.679459>,  <38.240517, 37.848972, 46.744671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846245, 37.831768, 46.679459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163823, 0.015514, 0.986368,
		-0.039893, 0.998954, -0.022338,
		-0.985683, -0.043009, -0.163033,
		37.550541, 37.818867, 46.630550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023422, 38.418934, 47.055241>,  <38.240517, 37.848972, 46.744671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023422, 38.418934, 47.055241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692719, 38.202957, 46.992085>,  <37.494297, 38.073372, 46.954193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692719, 38.202957, 46.992085>,  <38.023422, 38.418934, 47.055241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692719, 38.202957, 46.992085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302566, 0.190183, 0.933962,
		-0.474258, 0.819934, -0.320604,
		-0.826761, -0.539943, -0.157889,
		37.444691, 38.040974, 46.944717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404167, 38.874451, 47.219505>,  <38.023422, 38.418934, 47.055241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404167, 38.874451, 47.219505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267204, 38.500980, 47.261467>,  <37.185028, 38.276897, 47.286644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267204, 38.500980, 47.261467>,  <37.404167, 38.874451, 47.219505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267204, 38.500980, 47.261467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255613, 0.200018, 0.945862,
		-0.904113, 0.297052, -0.307147,
		-0.342405, -0.933677, 0.104909,
		37.164482, 38.220879, 47.292938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890175, 38.988441, 47.750851>,  <37.404167, 38.874451, 47.219505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890175, 38.988441, 47.750851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969913, 38.597694, 47.719883>,  <37.017757, 38.363247, 47.701302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969913, 38.597694, 47.719883>,  <36.890175, 38.988441, 47.750851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969913, 38.597694, 47.719883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208188, -0.119420, 0.970771,
		-0.957559, -0.177400, -0.227178,
		0.199344, -0.976867, -0.077419,
		37.029716, 38.304634, 47.696659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406033, 38.695690, 48.029747>,  <36.890175, 38.988441, 47.750851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406033, 38.695690, 48.029747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675121, 38.401955, 48.065956>,  <36.836575, 38.225716, 48.087681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675121, 38.401955, 48.065956>,  <36.406033, 38.695690, 48.029747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675121, 38.401955, 48.065956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177524, -0.041418, 0.983244,
		-0.718282, -0.677521, -0.158225,
		0.672723, -0.734336, 0.090527,
		36.876938, 38.181652, 48.093113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085335, 38.178993, 48.514015>,  <36.406033, 38.695690, 48.029747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085335, 38.178993, 48.514015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479160, 38.109703, 48.504078>,  <36.715458, 38.068127, 48.498116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479160, 38.109703, 48.504078>,  <36.085335, 38.178993, 48.514015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479160, 38.109703, 48.504078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036327, 0.063413, 0.997326,
		-0.171190, -0.982838, 0.068727,
		0.984568, -0.173229, -0.024848,
		36.774532, 38.057735, 48.496624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171200, 37.637550, 48.935165>,  <36.085335, 38.178993, 48.514015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171200, 37.637550, 48.935165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528046, 37.817142, 48.914963>,  <36.742153, 37.924896, 48.902840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528046, 37.817142, 48.914963>,  <36.171200, 37.637550, 48.935165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528046, 37.817142, 48.914963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080421, -0.047787, 0.995615,
		0.444599, -0.892262, -0.078739,
		0.892112, 0.448982, -0.050510,
		36.795681, 37.951836, 48.899811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625347, 37.203953, 49.210907>,  <36.171200, 37.637550, 48.935165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625347, 37.203953, 49.210907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776131, 37.571159, 49.260132>,  <36.866600, 37.791485, 49.289669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776131, 37.571159, 49.260132>,  <36.625347, 37.203953, 49.210907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776131, 37.571159, 49.260132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226451, -0.220180, 0.948810,
		0.898122, -0.329792, -0.290884,
		0.376957, 0.918018, 0.123066,
		36.889217, 37.846565, 49.297050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204678, 37.125137, 49.641731>,  <36.625347, 37.203953, 49.210907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204678, 37.125137, 49.641731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127270, 37.514961, 49.686962>,  <37.080826, 37.748856, 49.714100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127270, 37.514961, 49.686962>,  <37.204678, 37.125137, 49.641731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127270, 37.514961, 49.686962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268152, -0.058322, 0.961610,
		0.943739, 0.216415, -0.250043,
		-0.193523, 0.974558, 0.113073,
		37.069214, 37.807327, 49.720882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688595, 37.293816, 50.028954>,  <37.204678, 37.125137, 49.641731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688595, 37.293816, 50.028954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415375, 37.583534, 50.066574>,  <37.251442, 37.757366, 50.089146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415375, 37.583534, 50.066574>,  <37.688595, 37.293816, 50.028954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415375, 37.583534, 50.066574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140805, 0.004231, 0.990028,
		0.716672, 0.689480, -0.104874,
		-0.683049, 0.724292, 0.094050,
		37.210461, 37.800823, 50.094788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059082, 37.833073, 50.379696>,  <37.688595, 37.293816, 50.028954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059082, 37.833073, 50.379696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663776, 37.868374, 50.429569>,  <37.426594, 37.889557, 50.459492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663776, 37.868374, 50.429569>,  <38.059082, 37.833073, 50.379696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663776, 37.868374, 50.429569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119290, -0.063967, 0.990797,
		0.095418, 0.994042, 0.052688,
		-0.988264, 0.088255, 0.124683,
		37.367298, 37.894852, 50.466972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052341, 38.255733, 50.874619>,  <38.059082, 37.833073, 50.379696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052341, 38.255733, 50.874619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684219, 38.099319, 50.870140>,  <37.463345, 38.005470, 50.867455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684219, 38.099319, 50.870140>,  <38.052341, 38.255733, 50.874619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684219, 38.099319, 50.870140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026017, -0.089733, 0.995626,
		-0.390331, 0.915990, 0.092756,
		-0.920307, -0.391037, -0.011194,
		37.408127, 37.982010, 50.866783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826000, 38.494022, 51.530430>,  <38.052341, 38.255733, 50.874619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826000, 38.494022, 51.530430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.557625, 38.213585, 51.433830>,  <37.396599, 38.045322, 51.375870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.557625, 38.213585, 51.433830>,  <37.826000, 38.494022, 51.530430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557625, 38.213585, 51.433830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039286, -0.291611, 0.955730,
		-0.740475, 0.650720, 0.168110,
		-0.670935, -0.701089, -0.241495,
		37.356346, 38.003258, 51.361382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233166, 38.541969, 51.990364>,  <37.826000, 38.494022, 51.530430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233166, 38.541969, 51.990364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201256, 38.165371, 51.859386>,  <37.182110, 37.939411, 51.780800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201256, 38.165371, 51.859386>,  <37.233166, 38.541969, 51.990364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201256, 38.165371, 51.859386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035015, -0.325643, 0.944844,
		-0.996198, 0.086840, -0.006989,
		-0.079775, -0.941496, -0.327445,
		37.177322, 37.882923, 51.761154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677830, 38.350906, 52.316296>,  <37.233166, 38.541969, 51.990364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677830, 38.350906, 52.316296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873142, 38.012348, 52.231262>,  <36.990330, 37.809212, 52.180244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873142, 38.012348, 52.231262>,  <36.677830, 38.350906, 52.316296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873142, 38.012348, 52.231262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250603, -0.369327, 0.894872,
		-0.835928, -0.383679, -0.392447,
		0.488285, -0.846397, -0.212579,
		37.019627, 37.758430, 52.167488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307964, 37.884132, 52.681824>,  <36.677830, 38.350906, 52.316296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307964, 37.884132, 52.681824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664345, 37.724743, 52.594719>,  <36.878174, 37.629108, 52.542454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664345, 37.724743, 52.594719>,  <36.307964, 37.884132, 52.681824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664345, 37.724743, 52.594719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063593, -0.584326, 0.809024,
		-0.449620, -0.706954, -0.545947,
		0.890954, -0.398472, -0.217767,
		36.931629, 37.605202, 52.529388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189735, 37.264225, 52.701042>,  <36.307964, 37.884132, 52.681824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189735, 37.264225, 52.701042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573410, 37.328659, 52.793999>,  <36.803616, 37.367321, 52.849773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573410, 37.328659, 52.793999>,  <36.189735, 37.264225, 52.701042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573410, 37.328659, 52.793999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098407, -0.580304, 0.808433,
		0.265087, -0.798309, -0.540770,
		0.959190, 0.161090, 0.232390,
		36.861168, 37.376987, 52.863716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662720, 36.628937, 52.798359>,  <36.189735, 37.264225, 52.701042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662720, 36.628937, 52.798359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798706, 36.917034, 53.040241>,  <36.880299, 37.089893, 53.185371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798706, 36.917034, 53.040241>,  <36.662720, 36.628937, 52.798359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798706, 36.917034, 53.040241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084694, -0.616942, 0.782438,
		0.936618, -0.317214, -0.148737,
		0.339963, 0.720248, 0.604705,
		36.900696, 37.133110, 53.221653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121223, 36.174915, 53.126633>,  <36.662720, 36.628937, 52.798359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121223, 36.174915, 53.126633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914719, 35.832611, 53.113079>,  <35.790813, 35.627228, 53.104946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914719, 35.832611, 53.113079>,  <36.121223, 36.174915, 53.126633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914719, 35.832611, 53.113079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248628, 0.187624, -0.950253,
		0.819545, -0.482157, -0.309630,
		-0.516266, -0.855758, -0.033888,
		35.759838, 35.575882, 53.102913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349579, 35.912212, 52.562122>,  <36.121223, 36.174915, 53.126633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349579, 35.912212, 52.562122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991192, 35.740932, 52.609261>,  <35.776161, 35.638165, 52.637543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991192, 35.740932, 52.609261>,  <36.349579, 35.912212, 52.562122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991192, 35.740932, 52.609261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244493, 0.254051, -0.935779,
		0.370763, -0.867239, -0.332313,
		-0.895968, -0.428200, 0.117841,
		35.722401, 35.612473, 52.644611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315903, 35.486061, 51.931614>,  <36.349579, 35.912212, 52.562122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315903, 35.486061, 51.931614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947884, 35.479237, 52.088192>,  <35.727074, 35.475143, 52.182137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947884, 35.479237, 52.088192>,  <36.315903, 35.486061, 51.931614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947884, 35.479237, 52.088192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387468, 0.188023, -0.902506,
		-0.058201, -0.982017, -0.179600,
		-0.920044, -0.017062, 0.391443,
		35.671871, 35.474117, 52.205624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872574, 34.930023, 51.577835>,  <36.315903, 35.486061, 51.931614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872574, 34.930023, 51.577835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652805, 35.239952, 51.702915>,  <35.520947, 35.425911, 51.777966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652805, 35.239952, 51.702915>,  <35.872574, 34.930023, 51.577835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652805, 35.239952, 51.702915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361112, 0.117297, -0.925116,
		-0.753484, -0.621196, 0.215354,
		-0.549418, 0.774827, 0.312703,
		35.487980, 35.472401, 51.796726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275562, 34.771339, 51.203224>,  <35.872574, 34.930023, 51.577835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275562, 34.771339, 51.203224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258442, 35.154198, 51.317802>,  <35.248169, 35.383911, 51.386547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258442, 35.154198, 51.317802>,  <35.275562, 34.771339, 51.203224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258442, 35.154198, 51.317802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254913, 0.266754, -0.929442,
		-0.966016, -0.112799, 0.232571,
		-0.042801, 0.957141, 0.286442,
		35.245602, 35.441341, 51.403736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647209, 35.005840, 51.003365>,  <35.275562, 34.771339, 51.203224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647209, 35.005840, 51.003365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857723, 35.342064, 51.054710>,  <34.984032, 35.543800, 51.085518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857723, 35.342064, 51.054710>,  <34.647209, 35.005840, 51.003365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857723, 35.342064, 51.054710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115473, 0.220217, -0.968592,
		-0.842429, 0.494936, 0.212959,
		0.526288, 0.840561, 0.128365,
		35.015610, 35.594231, 51.093220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300823, 35.465855, 50.547813>,  <34.647209, 35.005840, 51.003365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300823, 35.465855, 50.547813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.660572, 35.625881, 50.618332>,  <34.876419, 35.721897, 50.660645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.660572, 35.625881, 50.618332>,  <34.300823, 35.465855, 50.547813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660572, 35.625881, 50.618332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133831, 0.131967, -0.982178,
		-0.416204, 0.906935, 0.065145,
		0.899369, 0.400068, 0.176301,
		34.930382, 35.745903, 50.671223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253998, 35.956200, 50.071045>,  <34.300823, 35.465855, 50.547813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253998, 35.956200, 50.071045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640980, 35.922623, 50.166534>,  <34.873169, 35.902477, 50.223827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640980, 35.922623, 50.166534>,  <34.253998, 35.956200, 50.071045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640980, 35.922623, 50.166534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244056, 0.060221, -0.967890,
		0.066874, 0.994649, 0.078748,
		0.967453, -0.083946, 0.238722,
		34.931217, 35.897438, 50.238152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515160, 36.425659, 49.618687>,  <34.253998, 35.956200, 50.071045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515160, 36.425659, 49.618687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802593, 36.176544, 49.742477>,  <34.975056, 36.027077, 49.816750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802593, 36.176544, 49.742477>,  <34.515160, 36.425659, 49.618687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802593, 36.176544, 49.742477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413592, 0.024958, -0.910120,
		0.559085, 0.781995, 0.275513,
		0.718586, -0.622785, 0.309473,
		35.018169, 35.989708, 49.835320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124680, 36.710106, 49.687725>,  <34.515160, 36.425659, 49.618687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124680, 36.710106, 49.687725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173107, 36.319981, 49.613850>,  <35.202164, 36.085907, 49.569527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173107, 36.319981, 49.613850>,  <35.124680, 36.710106, 49.687725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173107, 36.319981, 49.613850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432350, 0.219292, -0.874634,
		0.893541, 0.026041, 0.448226,
		0.121069, -0.975312, -0.184687,
		35.209427, 36.027386, 49.558445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826435, 36.709591, 49.395443>,  <35.124680, 36.710106, 49.687725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826435, 36.709591, 49.395443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690388, 36.351643, 49.279842>,  <35.608757, 36.136875, 49.210480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690388, 36.351643, 49.279842>,  <35.826435, 36.709591, 49.395443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690388, 36.351643, 49.279842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424030, 0.128367, -0.896505,
		0.839355, -0.427466, 0.335792,
		-0.340121, -0.894871, -0.289004,
		35.588352, 36.083179, 49.193142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340935, 36.462738, 48.892582>,  <35.826435, 36.709591, 49.395443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340935, 36.462738, 48.892582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021526, 36.231388, 48.825821>,  <35.829884, 36.092579, 48.785763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021526, 36.231388, 48.825821>,  <36.340935, 36.462738, 48.892582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021526, 36.231388, 48.825821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205963, -0.001975, -0.978558,
		0.565639, -0.815772, 0.120700,
		-0.798518, -0.578370, -0.166902,
		35.781971, 36.057877, 48.775749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526966, 35.859367, 48.472084>,  <36.340935, 36.462738, 48.892582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526966, 35.859367, 48.472084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135799, 35.910347, 48.405834>,  <35.901100, 35.940933, 48.366085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135799, 35.910347, 48.405834>,  <36.526966, 35.859367, 48.472084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135799, 35.910347, 48.405834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157377, -0.072343, -0.984885,
		-0.137505, -0.989204, 0.050688,
		-0.977919, 0.127450, -0.165626,
		35.842422, 35.948582, 48.356148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387890, 35.400887, 47.918816>,  <36.526966, 35.859367, 48.472084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387890, 35.400887, 47.918816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048115, 35.611618, 47.930832>,  <35.844250, 35.738056, 47.938042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048115, 35.611618, 47.930832>,  <36.387890, 35.400887, 47.918816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048115, 35.611618, 47.930832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108303, -0.118346, -0.987049,
		-0.516453, -0.841691, 0.157585,
		-0.849439, 0.526831, 0.030037,
		35.793282, 35.769669, 47.939842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087250, 35.204060, 47.304146>,  <36.387890, 35.400887, 47.918816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087250, 35.204060, 47.304146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894615, 35.539104, 47.407284>,  <35.779034, 35.740131, 47.469166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894615, 35.539104, 47.407284>,  <36.087250, 35.204060, 47.304146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894615, 35.539104, 47.407284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166743, 0.201266, -0.965240,
		-0.860392, -0.507838, 0.042739,
		-0.481584, 0.837611, 0.257846,
		35.750141, 35.790386, 47.484638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343727, 35.165798, 47.070549>,  <36.087250, 35.204060, 47.304146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343727, 35.165798, 47.070549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478905, 35.541576, 47.093281>,  <35.560013, 35.767044, 47.106918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478905, 35.541576, 47.093281>,  <35.343727, 35.165798, 47.070549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478905, 35.541576, 47.093281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118957, 0.102529, -0.987592,
		-0.933619, 0.326989, 0.146403,
		0.337943, 0.939450, 0.056826,
		35.580288, 35.823410, 47.110329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901157, 35.580231, 46.643707>,  <35.343727, 35.165798, 47.070549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901157, 35.580231, 46.643707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231403, 35.799786, 46.696003>,  <35.429550, 35.931519, 46.727379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231403, 35.799786, 46.696003>,  <34.901157, 35.580231, 46.643707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231403, 35.799786, 46.696003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025867, 0.194647, -0.980532,
		-0.563645, 0.812921, 0.146505,
		0.825612, 0.548883, 0.130739,
		35.479088, 35.964451, 46.735226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718559, 36.213028, 46.393436>,  <34.901157, 35.580231, 46.643707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718559, 36.213028, 46.393436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117710, 36.200569, 46.370575>,  <35.357201, 36.193096, 46.356857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117710, 36.200569, 46.370575>,  <34.718559, 36.213028, 46.393436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117710, 36.200569, 46.370575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051400, 0.161707, -0.985499,
		0.039935, 0.986347, 0.159763,
		0.997879, -0.031144, -0.057156,
		35.417072, 36.191227, 46.353428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886150, 36.761578, 45.849392>,  <34.718559, 36.213028, 46.393436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886150, 36.761578, 45.849392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240479, 36.583275, 45.900967>,  <35.453075, 36.476295, 45.931911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240479, 36.583275, 45.900967>,  <34.886150, 36.761578, 45.849392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240479, 36.583275, 45.900967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209142, 0.135481, -0.968455,
		0.414224, 0.884843, 0.213238,
		0.885821, -0.445755, 0.128938,
		35.506226, 36.449547, 45.939648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394665, 37.186100, 45.516739>,  <34.886150, 36.761578, 45.849392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394665, 37.186100, 45.516739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523018, 36.807625, 45.533550>,  <35.600029, 36.580540, 45.543636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523018, 36.807625, 45.533550>,  <35.394665, 37.186100, 45.516739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523018, 36.807625, 45.533550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122806, -0.002439, -0.992428,
		0.939123, 0.323616, 0.115415,
		0.320884, -0.946185, 0.042032,
		35.619282, 36.523769, 45.546162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.181095, 35.855156, 44.586613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962364, 35.633232, 44.335800>,  <45.831127, 35.500076, 44.185314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962364, 35.633232, 44.335800>,  <46.181095, 35.855156, 44.586613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962364, 35.633232, 44.335800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765182, -0.027203, -0.643239,
		0.339818, -0.831532, 0.439406,
		-0.546826, -0.554810, -0.627030,
		45.798317, 35.466789, 44.147690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.619205, 35.408829, 45.081188>,  <46.181095, 35.855156, 44.586613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.619205, 35.408829, 45.081188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.422550, 35.636280, 45.344990>,  <46.304558, 35.772751, 45.503269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.422550, 35.636280, 45.344990>,  <46.619205, 35.408829, 45.081188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422550, 35.636280, 45.344990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430950, 0.499226, -0.751702,
		-0.756683, -0.653781, -0.000389,
		-0.491643, 0.568633, 0.659503,
		46.275059, 35.806870, 45.542839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814083, 35.342712, 45.067242>,  <46.619205, 35.408829, 45.081188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814083, 35.342712, 45.067242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.892071, 35.703609, 45.221092>,  <45.938862, 35.920147, 45.313404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.892071, 35.703609, 45.221092>,  <45.814083, 35.342712, 45.067242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892071, 35.703609, 45.221092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490047, 0.429307, -0.758650,
		-0.849612, -0.040572, 0.525845,
		0.194969, 0.902246, 0.384627,
		45.950562, 35.974285, 45.336479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292721, 35.627960, 44.769089>,  <45.814083, 35.342712, 45.067242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292721, 35.627960, 44.769089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481754, 35.946087, 44.920952>,  <45.595177, 36.136963, 45.012070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481754, 35.946087, 44.920952>,  <45.292721, 35.627960, 44.769089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481754, 35.946087, 44.920952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303128, 0.551205, -0.777358,
		-0.827512, 0.252284, 0.501574,
		0.472586, 0.795314, 0.379655,
		45.623531, 36.184681, 45.034847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825218, 36.172050, 44.820385>,  <45.292721, 35.627960, 44.769089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825218, 36.172050, 44.820385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.187904, 36.336868, 44.784420>,  <45.405518, 36.435760, 44.762840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.187904, 36.336868, 44.784420>,  <44.825218, 36.172050, 44.820385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187904, 36.336868, 44.784420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308599, 0.502909, -0.807372,
		-0.287455, 0.759805, 0.583152,
		0.906717, 0.412043, -0.089911,
		45.459919, 36.460480, 44.757446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718750, 36.935768, 44.781849>,  <44.825218, 36.172050, 44.820385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718750, 36.935768, 44.781849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.069077, 36.844624, 44.611660>,  <45.279270, 36.789936, 44.509544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.069077, 36.844624, 44.611660>,  <44.718750, 36.935768, 44.781849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069077, 36.844624, 44.611660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208054, 0.617195, -0.758805,
		0.435505, 0.753093, 0.493140,
		0.875813, -0.227864, -0.425475,
		45.331821, 36.776264, 44.484016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086067, 37.527203, 44.600101>,  <44.718750, 36.935768, 44.781849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086067, 37.527203, 44.600101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.243050, 37.252811, 44.355019>,  <45.337238, 37.088177, 44.207970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.243050, 37.252811, 44.355019>,  <45.086067, 37.527203, 44.600101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243050, 37.252811, 44.355019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164293, 0.603156, -0.780519,
		0.904980, 0.406981, 0.124009,
		0.392453, -0.685981, -0.612708,
		45.360786, 37.047016, 44.171207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285118, 37.872852, 43.936897>,  <45.086067, 37.527203, 44.600101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285118, 37.872852, 43.936897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408585, 37.515461, 43.806408>,  <45.482662, 37.301025, 43.728115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408585, 37.515461, 43.806408>,  <45.285118, 37.872852, 43.936897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408585, 37.515461, 43.806408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239057, 0.259087, -0.935802,
		0.920640, 0.366833, -0.133622,
		0.308663, -0.893481, -0.326219,
		45.501183, 37.247417, 43.708542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822891, 37.966450, 43.414726>,  <45.285118, 37.872852, 43.936897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822891, 37.966450, 43.414726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662800, 37.604881, 43.354397>,  <45.566746, 37.387939, 43.318199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662800, 37.604881, 43.354397>,  <45.822891, 37.966450, 43.414726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662800, 37.604881, 43.354397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026087, 0.175749, -0.984089,
		0.916043, -0.389929, -0.093921,
		-0.400232, -0.903918, -0.150821,
		45.542728, 37.333706, 43.309151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271404, 37.621922, 42.865875>,  <45.822891, 37.966450, 43.414726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271404, 37.621922, 42.865875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.916069, 37.438263, 42.868416>,  <45.702869, 37.328068, 42.869942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.916069, 37.438263, 42.868416>,  <46.271404, 37.621922, 42.865875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916069, 37.438263, 42.868416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042520, 0.068475, -0.996746,
		0.457219, -0.885717, -0.080351,
		-0.888337, -0.459147, 0.006353,
		45.649567, 37.300518, 42.870323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.315193, 37.112415, 42.251907>,  <46.271404, 37.621922, 42.865875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.315193, 37.112415, 42.251907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921936, 37.143452, 42.318127>,  <45.685982, 37.162071, 42.357861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921936, 37.143452, 42.318127>,  <46.315193, 37.112415, 42.251907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921936, 37.143452, 42.318127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169687, -0.050104, -0.984224,
		-0.068073, -0.995726, 0.062426,
		-0.983144, 0.077591, 0.165551,
		45.626991, 37.166729, 42.367790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904545, 36.558281, 41.902725>,  <46.315193, 37.112415, 42.251907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904545, 36.558281, 41.902725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639542, 36.851753, 41.963116>,  <45.480541, 37.027836, 41.999352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639542, 36.851753, 41.963116>,  <45.904545, 36.558281, 41.902725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639542, 36.851753, 41.963116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186217, 0.033914, -0.981923,
		-0.725542, -0.678643, 0.114157,
		-0.662504, 0.733685, 0.150981,
		45.440792, 37.071857, 42.008411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390331, 36.373707, 41.549717>,  <45.904545, 36.558281, 41.902725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390331, 36.373707, 41.549717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313915, 36.763474, 41.597057>,  <45.268066, 36.997334, 41.625462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313915, 36.763474, 41.597057>,  <45.390331, 36.373707, 41.549717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313915, 36.763474, 41.597057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285970, 0.060092, -0.956352,
		-0.939001, -0.216551, 0.267175,
		-0.191044, 0.974420, 0.118354,
		45.256603, 37.055801, 41.632565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853382, 36.511536, 41.201008>,  <45.390331, 36.373707, 41.549717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853382, 36.511536, 41.201008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962273, 36.894054, 41.243702>,  <45.027607, 37.123566, 41.269318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962273, 36.894054, 41.243702>,  <44.853382, 36.511536, 41.201008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962273, 36.894054, 41.243702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281951, 0.185332, -0.941358,
		-0.919999, 0.226166, 0.320081,
		0.272225, 0.956295, 0.106737,
		45.043941, 37.180943, 41.275723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340595, 36.884090, 40.927071>,  <44.853382, 36.511536, 41.201008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340595, 36.884090, 40.927071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652706, 37.133987, 40.915241>,  <44.839973, 37.283924, 40.908142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652706, 37.133987, 40.915241>,  <44.340595, 36.884090, 40.927071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652706, 37.133987, 40.915241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228122, 0.240254, -0.943524,
		-0.582351, 0.742954, 0.329981,
		0.780274, 0.624738, -0.029572,
		44.886787, 37.321407, 40.906368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104469, 37.525921, 40.456329>,  <44.340595, 36.884090, 40.927071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104469, 37.525921, 40.456329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504173, 37.511822, 40.462517>,  <44.743996, 37.503361, 40.466228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504173, 37.511822, 40.462517>,  <44.104469, 37.525921, 40.456329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504173, 37.511822, 40.462517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022298, 0.202362, -0.979057,
		0.031380, 0.978676, 0.202998,
		0.999259, -0.035249, 0.015472,
		44.803951, 37.501247, 40.467159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313377, 38.036781, 39.958309>,  <44.104469, 37.525921, 40.456329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313377, 38.036781, 39.958309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.639141, 37.815617, 40.028759>,  <44.834599, 37.682919, 40.071030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.639141, 37.815617, 40.028759>,  <44.313377, 38.036781, 39.958309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639141, 37.815617, 40.028759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205707, -0.008725, -0.978575,
		0.542601, 0.833195, 0.106632,
		0.814414, -0.552910, 0.176128,
		44.883465, 37.649742, 40.081596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922684, 38.440735, 39.642303>,  <44.313377, 38.036781, 39.958309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922684, 38.440735, 39.642303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043564, 38.060299, 39.667931>,  <45.116093, 37.832039, 39.683308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043564, 38.060299, 39.667931>,  <44.922684, 38.440735, 39.642303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043564, 38.060299, 39.667931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003024, -0.068169, -0.997669,
		0.953241, 0.301298, -0.023476,
		0.302196, -0.951090, 0.064070,
		45.134224, 37.774971, 39.687153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511726, 38.418358, 39.308956>,  <44.922684, 38.440735, 39.642303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511726, 38.418358, 39.308956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361183, 38.047932, 39.297966>,  <45.270855, 37.825676, 39.291370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361183, 38.047932, 39.297966>,  <45.511726, 38.418358, 39.308956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361183, 38.047932, 39.297966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201943, -0.053053, -0.977959,
		0.904197, -0.373615, 0.206980,
		-0.376361, -0.926065, -0.027478,
		45.248276, 37.770111, 39.289722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899609, 38.129307, 38.772778>,  <45.511726, 38.418358, 39.308956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899609, 38.129307, 38.772778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587105, 37.881023, 38.799179>,  <45.399601, 37.732052, 38.815018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587105, 37.881023, 38.799179>,  <45.899609, 38.129307, 38.772778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587105, 37.881023, 38.799179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066991, -0.188499, -0.979786,
		0.620603, -0.761044, 0.188848,
		-0.781258, -0.620709, 0.066000,
		45.352726, 37.694809, 38.818977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098919, 37.455490, 38.446915>,  <45.899609, 38.129307, 38.772778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098919, 37.455490, 38.446915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.699520, 37.444801, 38.466064>,  <45.459881, 37.438389, 38.477554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.699520, 37.444801, 38.466064>,  <46.098919, 37.455490, 38.446915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699520, 37.444801, 38.466064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038942, -0.268950, -0.962367,
		0.038592, -0.962783, 0.267505,
		-0.998496, -0.026722, 0.047872,
		45.399971, 37.436783, 38.480427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.577049, 37.109760, 38.023552>,  <46.098919, 37.455490, 38.446915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.577049, 37.109760, 38.023552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.823517, 36.939663, 37.758373>,  <46.971397, 36.837605, 37.599266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.823517, 36.939663, 37.758373>,  <46.577049, 37.109760, 38.023552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.823517, 36.939663, 37.758373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248340, -0.903680, 0.348841,
		-0.747437, -0.050308, -0.662426,
		0.616170, -0.425243, -0.662950,
		47.008369, 36.812092, 37.559486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212234, 36.605667, 37.569637>,  <46.577049, 37.109760, 38.023552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212234, 36.605667, 37.569637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.599056, 36.505131, 37.585815>,  <46.831150, 36.444809, 37.595520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.599056, 36.505131, 37.585815>,  <46.212234, 36.605667, 37.569637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.599056, 36.505131, 37.585815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241723, -0.856728, 0.455618,
		-0.079868, -0.450382, -0.889256,
		0.967053, -0.251343, 0.040442,
		46.889172, 36.429729, 37.597946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238651, 35.862617, 37.364521>,  <46.212234, 36.605667, 37.569637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238651, 35.862617, 37.364521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.597248, 35.932148, 37.527534>,  <46.812408, 35.973866, 37.625343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.597248, 35.932148, 37.527534>,  <46.238651, 35.862617, 37.364521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597248, 35.932148, 37.527534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122606, -0.786564, 0.605214,
		0.425754, -0.592537, -0.683838,
		0.896494, 0.173830, 0.407531,
		46.866196, 35.984299, 37.649796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.671841, 35.223877, 37.431313>,  <46.238651, 35.862617, 37.364521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.671841, 35.223877, 37.431313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.798111, 35.471470, 37.718979>,  <46.873875, 35.620026, 37.891579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.798111, 35.471470, 37.718979>,  <46.671841, 35.223877, 37.431313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.798111, 35.471470, 37.718979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318985, -0.644585, 0.694808,
		0.893643, -0.448738, -0.006031,
		0.315674, 0.618987, 0.719170,
		46.892815, 35.657166, 37.934731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921551, 34.788349, 37.924957>,  <46.671841, 35.223877, 37.431313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921551, 34.788349, 37.924957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877979, 35.124493, 38.137348>,  <46.851837, 35.326180, 38.264782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877979, 35.124493, 38.137348>,  <46.921551, 34.788349, 37.924957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877979, 35.124493, 38.137348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259414, -0.539678, 0.800907,
		0.959603, -0.050499, 0.276788,
		-0.108932, 0.840355, 0.530977,
		46.845299, 35.376598, 38.296642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381275, 34.844128, 38.525043>,  <46.921551, 34.788349, 37.924957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381275, 34.844128, 38.525043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.077770, 35.090431, 38.610008>,  <46.895668, 35.238213, 38.660988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.077770, 35.090431, 38.610008>,  <47.381275, 34.844128, 38.525043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.077770, 35.090431, 38.610008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142110, -0.474743, 0.868576,
		0.635675, 0.628857, 0.447723,
		-0.758763, 0.615758, 0.212415,
		46.850140, 35.275158, 38.673733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.511093, 35.082653, 39.226749>,  <47.381275, 34.844128, 38.525043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.511093, 35.082653, 39.226749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.120888, 35.153645, 39.174782>,  <46.886765, 35.196239, 39.143600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.120888, 35.153645, 39.174782>,  <47.511093, 35.082653, 39.226749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120888, 35.153645, 39.174782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204368, -0.513020, 0.833694,
		0.081310, 0.839829, 0.536727,
		-0.975511, 0.177478, -0.129920,
		46.828236, 35.206886, 39.135807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242989, 35.263248, 39.863720>,  <47.511093, 35.082653, 39.226749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242989, 35.263248, 39.863720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.916996, 35.156868, 39.657776>,  <46.721401, 35.093040, 39.534210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.916996, 35.156868, 39.657776>,  <47.242989, 35.263248, 39.863720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.916996, 35.156868, 39.657776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333577, -0.511201, 0.792085,
		-0.473855, 0.817277, 0.327902,
		-0.814977, -0.265953, -0.514860,
		46.672504, 35.077084, 39.503319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727303, 35.544106, 40.318069>,  <47.242989, 35.263248, 39.863720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727303, 35.544106, 40.318069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.564762, 35.261208, 40.086662>,  <46.467239, 35.091469, 39.947819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.564762, 35.261208, 40.086662>,  <46.727303, 35.544106, 40.318069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564762, 35.261208, 40.086662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369530, -0.451859, 0.811955,
		-0.835661, 0.543717, -0.077736,
		-0.406348, -0.707245, -0.578521,
		46.442860, 35.049034, 39.913105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101891, 35.475517, 40.608189>,  <46.727303, 35.544106, 40.318069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101891, 35.475517, 40.608189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.163956, 35.149364, 40.385090>,  <46.201195, 34.953674, 40.251232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.163956, 35.149364, 40.385090>,  <46.101891, 35.475517, 40.608189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163956, 35.149364, 40.385090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431632, -0.563797, 0.704150,
		-0.888605, 0.131485, -0.439422,
		0.155160, -0.815380, -0.557746,
		46.210503, 34.904751, 40.217766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.465916, 35.151649, 40.593021>,  <46.101891, 35.475517, 40.608189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.465916, 35.151649, 40.593021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.759865, 34.885731, 40.539349>,  <45.936234, 34.726181, 40.507145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.759865, 34.885731, 40.539349>,  <45.465916, 35.151649, 40.593021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759865, 34.885731, 40.539349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328119, -0.521665, 0.787530,
		-0.593547, -0.534707, -0.601491,
		0.734874, -0.664796, -0.134185,
		45.980328, 34.686291, 40.499092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103851, 34.499607, 40.629963>,  <45.465916, 35.151649, 40.593021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103851, 34.499607, 40.629963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493130, 34.447994, 40.706120>,  <45.726696, 34.417027, 40.751812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493130, 34.447994, 40.706120>,  <45.103851, 34.499607, 40.629963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493130, 34.447994, 40.706120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215077, -0.803853, 0.554582,
		0.081484, -0.580663, -0.810056,
		0.973192, -0.129035, 0.190388,
		45.785088, 34.409283, 40.763237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137215, 33.858444, 40.910770>,  <45.103851, 34.499607, 40.629963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137215, 33.858444, 40.910770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.508621, 33.968075, 41.010956>,  <45.731464, 34.033855, 41.071068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.508621, 33.968075, 41.010956>,  <45.137215, 33.858444, 40.910770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508621, 33.968075, 41.010956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043281, -0.749888, 0.660148,
		0.368753, -0.602120, -0.708148,
		0.928520, 0.274081, 0.250463,
		45.787178, 34.050301, 41.086094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416916, 33.303909, 41.081341>,  <45.137215, 33.858444, 40.910770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416916, 33.303909, 41.081341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673862, 33.563457, 41.244476>,  <45.828030, 33.719185, 41.342358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673862, 33.563457, 41.244476>,  <45.416916, 33.303909, 41.081341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673862, 33.563457, 41.244476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184748, -0.647560, 0.739280,
		0.743795, -0.399543, -0.535849,
		0.642369, 0.648869, 0.407837,
		45.866573, 33.758118, 41.366829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067936, 32.915466, 41.123215>,  <45.416916, 33.303909, 41.081341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067936, 32.915466, 41.123215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.065014, 33.210735, 41.393044>,  <46.063263, 33.387897, 41.554939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.065014, 33.210735, 41.393044>,  <46.067936, 32.915466, 41.123215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065014, 33.210735, 41.393044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110261, -0.669883, 0.734234,
		0.993876, 0.079740, -0.076500,
		-0.007301, 0.738172, 0.674572,
		46.062824, 33.432186, 41.595417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.403427, 32.555214, 41.717323>,  <46.067936, 32.915466, 41.123215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.403427, 32.555214, 41.717323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.248413, 32.891472, 41.868656>,  <46.155403, 33.093227, 41.959457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.248413, 32.891472, 41.868656>,  <46.403427, 32.555214, 41.717323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248413, 32.891472, 41.868656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227005, -0.310742, 0.922989,
		0.893467, 0.443575, -0.070406,
		-0.387537, 0.840643, 0.378332,
		46.132153, 33.143665, 41.982155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987022, 32.923946, 42.166882>,  <46.403427, 32.555214, 41.717323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987022, 32.923946, 42.166882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.611572, 33.028545, 42.256863>,  <46.386303, 33.091305, 42.310852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.611572, 33.028545, 42.256863>,  <46.987022, 32.923946, 42.166882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.611572, 33.028545, 42.256863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179449, -0.186760, 0.965877,
		0.294589, 0.946962, 0.128371,
		-0.938624, 0.261501, 0.224949,
		46.329987, 33.106995, 42.324348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988483, 33.444695, 42.746162>,  <46.987022, 32.923946, 42.166882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988483, 33.444695, 42.746162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613827, 33.305164, 42.758938>,  <46.389034, 33.221447, 42.766602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613827, 33.305164, 42.758938>,  <46.988483, 33.444695, 42.746162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613827, 33.305164, 42.758938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068496, -0.092981, 0.993309,
		-0.343523, 0.932564, 0.110983,
		-0.936643, -0.348826, 0.031936,
		46.332832, 33.200516, 42.768520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838703, 33.729160, 43.318966>,  <46.988483, 33.444695, 42.746162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838703, 33.729160, 43.318966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553505, 33.452496, 43.272923>,  <46.382385, 33.286499, 43.245296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553505, 33.452496, 43.272923>,  <46.838703, 33.729160, 43.318966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553505, 33.452496, 43.272923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121169, -0.283235, 0.951365,
		-0.690623, 0.664369, 0.285752,
		-0.712993, -0.691659, -0.115107,
		46.339607, 33.244999, 43.238392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.378593, 33.810486, 43.876461>,  <46.838703, 33.729160, 43.318966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.378593, 33.810486, 43.876461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365181, 33.441257, 43.723198>,  <46.357136, 33.219719, 43.631241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365181, 33.441257, 43.723198>,  <46.378593, 33.810486, 43.876461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365181, 33.441257, 43.723198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038537, -0.384285, 0.922410,
		-0.998695, 0.016160, 0.048456,
		-0.033527, -0.923073, -0.383161,
		46.355122, 33.164337, 43.608250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794434, 33.576290, 44.133480>,  <46.378593, 33.810486, 43.876461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794434, 33.576290, 44.133480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.028904, 33.264862, 44.043846>,  <46.169586, 33.078003, 43.990067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.028904, 33.264862, 44.043846>,  <45.794434, 33.576290, 44.133480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028904, 33.264862, 44.043846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084940, -0.334123, 0.938694,
		-0.805716, -0.531210, -0.261988,
		0.586180, -0.778574, -0.224087,
		46.204758, 33.031288, 43.976620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.954876, 38.383396, 42.041851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745895, 38.045723, 41.993862>,  <39.620506, 37.843117, 41.965069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745895, 38.045723, 41.993862>,  <39.954876, 38.383396, 42.041851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745895, 38.045723, 41.993862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156043, 0.043671, -0.986784,
		0.838271, -0.534266, 0.108913,
		-0.522449, -0.844188, -0.119977,
		39.589161, 37.792465, 41.957870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361446, 37.998085, 41.516945>,  <39.954876, 38.383396, 42.041851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361446, 37.998085, 41.516945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000511, 37.825676, 41.518429>,  <39.783951, 37.722229, 41.519318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000511, 37.825676, 41.518429>,  <40.361446, 37.998085, 41.516945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000511, 37.825676, 41.518429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053082, -0.119653, -0.991396,
		0.427756, -0.894374, 0.130846,
		-0.902334, -0.431021, 0.003708,
		39.729813, 37.696369, 41.519543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447948, 37.405449, 41.119991>,  <40.361446, 37.998085, 41.516945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447948, 37.405449, 41.119991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053478, 37.471325, 41.112701>,  <39.816795, 37.510853, 41.108326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053478, 37.471325, 41.112701>,  <40.447948, 37.405449, 41.119991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053478, 37.471325, 41.112701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017697, -0.214070, -0.976658,
		-0.164747, -0.962835, 0.214025,
		-0.986177, 0.164689, -0.018228,
		39.757626, 37.520733, 41.107231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215824, 36.739136, 40.838543>,  <40.447948, 37.405449, 41.119991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215824, 36.739136, 40.838543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923027, 37.009247, 40.802349>,  <39.747349, 37.171314, 40.780632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923027, 37.009247, 40.802349>,  <40.215824, 36.739136, 40.838543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923027, 37.009247, 40.802349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122167, -0.260752, -0.957645,
		-0.670270, -0.689935, 0.273365,
		-0.731993, 0.675276, -0.090487,
		39.703430, 37.211830, 40.775204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637108, 36.390751, 40.352406>,  <40.215824, 36.739136, 40.838543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637108, 36.390751, 40.352406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584400, 36.787193, 40.344902>,  <39.552776, 37.025059, 40.340401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584400, 36.787193, 40.344902>,  <39.637108, 36.390751, 40.352406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584400, 36.787193, 40.344902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221337, -0.047860, -0.974022,
		-0.966254, -0.124198, 0.225674,
		-0.131772, 0.991103, -0.018755,
		39.544868, 37.084522, 40.339275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053909, 36.576878, 39.882248>,  <39.637108, 36.390751, 40.352406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053909, 36.576878, 39.882248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241402, 36.929588, 39.903294>,  <39.353897, 37.141212, 39.915920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241402, 36.929588, 39.903294>,  <39.053909, 36.576878, 39.882248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241402, 36.929588, 39.903294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006319, 0.056215, -0.998399,
		-0.883319, 0.468312, 0.020777,
		0.468730, 0.881773, 0.052615,
		39.382019, 37.194118, 39.919079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569695, 37.111950, 39.626244>,  <39.053909, 36.576878, 39.882248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569695, 37.111950, 39.626244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945770, 37.235119, 39.567974>,  <39.171417, 37.309021, 39.533012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945770, 37.235119, 39.567974>,  <38.569695, 37.111950, 39.626244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945770, 37.235119, 39.567974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199170, 0.149981, -0.968420,
		-0.276348, 0.939516, 0.202339,
		0.940193, 0.307921, -0.145676,
		39.227829, 37.327496, 39.524273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553234, 37.324265, 39.017204>,  <38.569695, 37.111950, 39.626244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553234, 37.324265, 39.017204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933475, 37.422924, 39.092587>,  <39.161621, 37.482121, 39.137814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933475, 37.422924, 39.092587>,  <38.553234, 37.324265, 39.017204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933475, 37.422924, 39.092587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135305, 0.217148, -0.966716,
		-0.279359, 0.944464, 0.173050,
		0.950606, 0.246646, 0.188453,
		39.218658, 37.496918, 39.149124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841038, 38.017921, 38.727280>,  <38.553234, 37.324265, 39.017204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841038, 38.017921, 38.727280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142185, 37.754780, 38.735477>,  <39.322872, 37.596893, 38.740395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142185, 37.754780, 38.735477>,  <38.841038, 38.017921, 38.727280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142185, 37.754780, 38.735477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222600, 0.225202, -0.948542,
		0.619388, 0.718687, 0.315986,
		0.752866, -0.657855, 0.020492,
		39.368046, 37.557423, 38.741627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310299, 38.385143, 38.392811>,  <38.841038, 38.017921, 38.727280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310299, 38.385143, 38.392811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443027, 38.008133, 38.377110>,  <39.522663, 37.781925, 38.367691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443027, 38.008133, 38.377110>,  <39.310299, 38.385143, 38.392811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443027, 38.008133, 38.377110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450997, 0.195044, -0.870953,
		0.828551, 0.271299, 0.489796,
		0.331820, -0.942526, -0.039249,
		39.542572, 37.725376, 38.365334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970840, 38.441879, 38.042007>,  <39.310299, 38.385143, 38.392811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970840, 38.441879, 38.042007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885921, 38.052094, 38.012756>,  <39.834969, 37.818222, 37.995205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885921, 38.052094, 38.012756>,  <39.970840, 38.441879, 38.042007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885921, 38.052094, 38.012756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490562, -0.041557, -0.870415,
		0.845150, -0.220661, 0.486858,
		-0.212299, -0.974465, -0.073127,
		39.822231, 37.759754, 37.990818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609585, 38.026230, 37.799843>,  <39.970840, 38.441879, 38.042007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609585, 38.026230, 37.799843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278996, 37.824726, 37.699306>,  <40.080643, 37.703823, 37.638985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278996, 37.824726, 37.699306>,  <40.609585, 38.026230, 37.799843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278996, 37.824726, 37.699306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370966, -0.151489, -0.916207,
		0.423478, -0.850454, 0.312080,
		-0.826469, -0.503764, -0.251337,
		40.031055, 37.673595, 37.623905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794010, 37.434132, 37.423832>,  <40.609585, 38.026230, 37.799843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794010, 37.434132, 37.423832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426636, 37.560738, 37.328926>,  <40.206211, 37.636700, 37.271984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426636, 37.560738, 37.328926>,  <40.794010, 37.434132, 37.423832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426636, 37.560738, 37.328926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277146, 0.086911, -0.956889,
		-0.282250, -0.944597, -0.167543,
		-0.918436, 0.316516, -0.237261,
		40.151104, 37.655693, 37.257748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576893, 37.094002, 36.799744>,  <40.794010, 37.434132, 37.423832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576893, 37.094002, 36.799744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385899, 37.442039, 36.848633>,  <40.271301, 37.650864, 36.877968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385899, 37.442039, 36.848633>,  <40.576893, 37.094002, 36.799744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385899, 37.442039, 36.848633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509878, 0.387679, -0.767938,
		-0.715564, -0.304360, -0.628755,
		-0.477485, 0.870097, 0.122223,
		40.242653, 37.703068, 36.885300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018681, 36.550358, 36.988884>,  <40.576893, 37.094002, 36.799744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018681, 36.550358, 36.988884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398087, 36.433392, 36.940208>,  <41.625732, 36.363213, 36.911003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398087, 36.433392, 36.940208>,  <41.018681, 36.550358, 36.988884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398087, 36.433392, 36.940208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010887, -0.414070, 0.910180,
		-0.316536, -0.861997, -0.395936,
		0.948518, -0.292415, -0.121684,
		41.682640, 36.345665, 36.903702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980614, 35.924000, 37.096218>,  <41.018681, 36.550358, 36.988884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980614, 35.924000, 37.096218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358311, 36.027767, 37.177315>,  <41.584930, 36.090027, 37.225971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358311, 36.027767, 37.177315>,  <40.980614, 35.924000, 37.096218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358311, 36.027767, 37.177315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039728, -0.521499, 0.852327,
		0.326840, -0.812859, -0.482116,
		0.944245, 0.259421, 0.202740,
		41.641582, 36.105595, 37.238136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400166, 35.294186, 37.269886>,  <40.980614, 35.924000, 37.096218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400166, 35.294186, 37.269886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618561, 35.576855, 37.449890>,  <41.749599, 35.746456, 37.557892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618561, 35.576855, 37.449890>,  <41.400166, 35.294186, 37.269886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618561, 35.576855, 37.449890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052666, -0.507127, 0.860261,
		0.836136, -0.493392, -0.239668,
		0.545988, 0.706672, 0.450012,
		41.782356, 35.788857, 37.584892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015713, 34.971718, 37.635483>,  <41.400166, 35.294186, 37.269886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015713, 34.971718, 37.635483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997398, 35.333645, 37.804817>,  <41.986408, 35.550800, 37.906418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997398, 35.333645, 37.804817>,  <42.015713, 34.971718, 37.635483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997398, 35.333645, 37.804817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196852, -0.407298, 0.891828,
		0.979364, 0.124166, -0.159467,
		-0.045785, 0.904815, 0.423335,
		41.983662, 35.605091, 37.931816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731186, 35.080322, 38.019371>,  <42.015713, 34.971718, 37.635483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731186, 35.080322, 38.019371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474312, 35.339382, 38.183392>,  <42.320187, 35.494820, 38.281803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474312, 35.339382, 38.183392>,  <42.731186, 35.080322, 38.019371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474312, 35.339382, 38.183392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310170, -0.269638, 0.911641,
		0.700993, 0.712629, -0.027725,
		-0.642186, 0.647654, 0.410051,
		42.281654, 35.533680, 38.306408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041275, 35.257797, 38.726948>,  <42.731186, 35.080322, 38.019371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041275, 35.257797, 38.726948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653934, 35.357460, 38.720966>,  <42.421532, 35.417255, 38.717377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653934, 35.357460, 38.720966>,  <43.041275, 35.257797, 38.726948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653934, 35.357460, 38.720966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011499, 0.015309, 0.999817,
		0.249336, 0.968343, -0.011959,
		-0.968349, 0.249153, -0.014952,
		42.363430, 35.432205, 38.716480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038971, 35.606869, 39.342091>,  <43.041275, 35.257797, 38.726948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038971, 35.606869, 39.342091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658073, 35.528492, 39.248425>,  <42.429535, 35.481464, 39.192226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658073, 35.528492, 39.248425>,  <43.038971, 35.606869, 39.342091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658073, 35.528492, 39.248425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235358, -0.017506, 0.971751,
		-0.194506, 0.980459, -0.029447,
		-0.952247, -0.195942, -0.234164,
		42.372398, 35.469707, 39.178177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713425, 35.929508, 39.882214>,  <43.038971, 35.606869, 39.342091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713425, 35.929508, 39.882214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456509, 35.660694, 39.734787>,  <42.302361, 35.499405, 39.646332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456509, 35.660694, 39.734787>,  <42.713425, 35.929508, 39.882214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456509, 35.660694, 39.734787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436237, -0.074857, 0.896713,
		-0.630211, 0.736727, -0.245087,
		-0.642286, -0.672034, -0.368563,
		42.263824, 35.459084, 39.624218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031357, 36.226902, 39.972622>,  <42.713425, 35.929508, 39.882214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031357, 36.226902, 39.972622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991695, 35.832642, 39.917976>,  <41.967899, 35.596085, 39.885189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991695, 35.832642, 39.917976>,  <42.031357, 36.226902, 39.972622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991695, 35.832642, 39.917976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424014, -0.082351, 0.901904,
		-0.900212, 0.147351, -0.409764,
		-0.099152, -0.985650, -0.136612,
		41.961948, 35.536945, 39.876991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314751, 36.001125, 40.106167>,  <42.031357, 36.226902, 39.972622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314751, 36.001125, 40.106167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521931, 35.662106, 40.152451>,  <41.646240, 35.458694, 40.180222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521931, 35.662106, 40.152451>,  <41.314751, 36.001125, 40.106167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521931, 35.662106, 40.152451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501865, -0.191545, 0.843470,
		-0.692718, -0.494947, -0.524566,
		0.517951, -0.847548, 0.115710,
		41.677315, 35.407841, 40.187164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874680, 35.448967, 40.296940>,  <41.314751, 36.001125, 40.106167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874680, 35.448967, 40.296940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232361, 35.330101, 40.430862>,  <41.446968, 35.258781, 40.511215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232361, 35.330101, 40.430862>,  <40.874680, 35.448967, 40.296940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232361, 35.330101, 40.430862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378534, -0.102670, 0.919876,
		-0.238983, -0.949289, -0.204295,
		0.894203, -0.297168, 0.334802,
		41.500622, 35.240952, 40.531303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694981, 34.816360, 40.690311>,  <40.874680, 35.448967, 40.296940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694981, 34.816360, 40.690311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045353, 34.969479, 40.807755>,  <41.255577, 35.061348, 40.878220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045353, 34.969479, 40.807755>,  <40.694981, 34.816360, 40.690311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045353, 34.969479, 40.807755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203242, -0.259158, 0.944208,
		0.437527, -0.886740, -0.149207,
		0.875935, 0.382792, 0.293612,
		41.308132, 35.084316, 40.895840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897816, 34.444862, 41.273785>,  <40.694981, 34.816360, 40.690311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897816, 34.444862, 41.273785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157845, 34.743595, 41.329845>,  <41.313862, 34.922836, 41.363480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157845, 34.743595, 41.329845>,  <40.897816, 34.444862, 41.273785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157845, 34.743595, 41.329845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064191, -0.129804, 0.989460,
		0.757153, -0.652220, -0.036443,
		0.650076, 0.746833, 0.140148,
		41.352867, 34.967644, 41.371891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221142, 34.242142, 41.796955>,  <40.897816, 34.444862, 41.273785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221142, 34.242142, 41.796955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346512, 34.621971, 41.800373>,  <41.421734, 34.849869, 41.802425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346512, 34.621971, 41.800373>,  <41.221142, 34.242142, 41.796955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346512, 34.621971, 41.800373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044620, 0.005734, 0.998988,
		0.948565, -0.313486, 0.044167,
		0.313422, 0.949575, 0.008549,
		41.440540, 34.906845, 41.802937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559273, 33.696529, 41.883202>,  <41.221142, 34.242142, 41.796955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559273, 33.696529, 41.883202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392784, 33.355354, 42.009216>,  <41.292889, 33.150650, 42.084824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392784, 33.355354, 42.009216>,  <41.559273, 33.696529, 41.883202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392784, 33.355354, 42.009216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480032, -0.088126, -0.872813,
		0.772220, -0.514516, -0.372759,
		-0.416226, -0.852940, 0.315037,
		41.267918, 33.099472, 42.103729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725483, 33.121052, 41.371197>,  <41.559273, 33.696529, 41.883202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725483, 33.121052, 41.371197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400543, 33.042496, 41.590843>,  <41.205582, 32.995361, 41.722630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400543, 33.042496, 41.590843>,  <41.725483, 33.121052, 41.371197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400543, 33.042496, 41.590843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533519, -0.129929, -0.835749,
		0.235479, -0.971879, 0.000769,
		-0.812347, -0.196391, 0.549112,
		41.156837, 32.983578, 41.755577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514698, 32.552731, 41.010372>,  <41.725483, 33.121052, 41.371197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514698, 32.552731, 41.010372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185925, 32.661682, 41.210464>,  <40.988659, 32.727055, 41.330521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185925, 32.661682, 41.210464>,  <41.514698, 32.552731, 41.010372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185925, 32.661682, 41.210464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479935, 0.141748, -0.865777,
		-0.306726, -0.951691, 0.014217,
		-0.821937, 0.272380, 0.500228,
		40.939342, 32.743397, 41.360535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913780, 32.015240, 40.765270>,  <41.514698, 32.552731, 41.010372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913780, 32.015240, 40.765270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745316, 32.334400, 40.937767>,  <40.644238, 32.525898, 41.041264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745316, 32.334400, 40.937767>,  <40.913780, 32.015240, 40.765270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745316, 32.334400, 40.937767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585503, 0.123937, -0.801141,
		-0.692681, -0.589904, 0.414978,
		-0.421164, 0.797905, 0.431239,
		40.618965, 32.573772, 41.067139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209660, 31.955339, 40.676163>,  <40.913780, 32.015240, 40.765270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209660, 31.955339, 40.676163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234745, 32.346149, 40.757633>,  <40.249798, 32.580635, 40.806515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234745, 32.346149, 40.757633>,  <40.209660, 31.955339, 40.676163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234745, 32.346149, 40.757633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746308, 0.181410, -0.640402,
		-0.662639, -0.111844, 0.740541,
		0.062717, 0.977027, 0.203679,
		40.253559, 32.639259, 40.818737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520546, 32.211044, 40.614597>,  <40.209660, 31.955339, 40.676163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520546, 32.211044, 40.614597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755405, 32.530605, 40.562420>,  <39.896320, 32.722340, 40.531113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755405, 32.530605, 40.562420>,  <39.520546, 32.211044, 40.614597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755405, 32.530605, 40.562420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656436, 0.375619, -0.654218,
		-0.473657, 0.469753, 0.744971,
		0.587146, 0.798901, -0.130448,
		39.931549, 32.770275, 40.523285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065247, 32.802650, 40.630470>,  <39.520546, 32.211044, 40.614597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065247, 32.802650, 40.630470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396820, 32.957840, 40.469299>,  <39.595764, 33.050953, 40.372597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396820, 32.957840, 40.469299>,  <39.065247, 32.802650, 40.630470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396820, 32.957840, 40.469299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515996, 0.252316, -0.818587,
		-0.215927, 0.886460, 0.409347,
		0.828929, 0.387976, -0.402928,
		39.645500, 33.074234, 40.348419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841587, 33.397991, 40.362480>,  <39.065247, 32.802650, 40.630470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841587, 33.397991, 40.362480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173595, 33.302254, 40.160973>,  <39.372799, 33.244812, 40.040070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173595, 33.302254, 40.160973>,  <38.841587, 33.397991, 40.362480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173595, 33.302254, 40.160973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449561, 0.247474, -0.858284,
		0.330091, 0.938868, 0.097810,
		0.830021, -0.239340, -0.503767,
		39.422604, 33.230453, 40.009842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881134, 33.905403, 39.810379>,  <38.841587, 33.397991, 40.362480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881134, 33.905403, 39.810379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150661, 33.629929, 39.703285>,  <39.312378, 33.464645, 39.639030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150661, 33.629929, 39.703285>,  <38.881134, 33.905403, 39.810379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150661, 33.629929, 39.703285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347988, 0.023872, -0.937195,
		0.651825, 0.724666, -0.223570,
		0.673816, -0.688687, -0.267736,
		39.352806, 33.423321, 39.622963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189407, 34.175377, 39.127529>,  <38.881134, 33.905403, 39.810379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189407, 34.175377, 39.127529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309933, 33.794697, 39.151093>,  <39.382248, 33.566288, 39.165230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309933, 33.794697, 39.151093>,  <39.189407, 34.175377, 39.127529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309933, 33.794697, 39.151093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065689, -0.082349, -0.994437,
		0.951259, 0.295770, -0.087330,
		0.301316, -0.951703, 0.058906,
		39.400326, 33.509186, 39.168766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710037, 34.080460, 38.586582>,  <39.189407, 34.175377, 39.127529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710037, 34.080460, 38.586582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596382, 33.705128, 38.665371>,  <39.528187, 33.479927, 38.712643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596382, 33.705128, 38.665371>,  <39.710037, 34.080460, 38.586582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596382, 33.705128, 38.665371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105683, -0.173537, -0.979140,
		0.952940, -0.299030, -0.049857,
		-0.284141, -0.938331, 0.196973,
		39.511139, 33.423630, 38.724464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094559, 33.640236, 38.084972>,  <39.710037, 34.080460, 38.586582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094559, 33.640236, 38.084972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752773, 33.475872, 38.212120>,  <39.547703, 33.377254, 38.288406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752773, 33.475872, 38.212120>,  <40.094559, 33.640236, 38.084972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752773, 33.475872, 38.212120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291856, -0.126485, -0.948062,
		0.429773, -0.902859, -0.011849,
		-0.854467, -0.410910, 0.317865,
		39.496433, 33.352600, 38.307480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.510025, 33.269684, 45.617294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.160721, 33.083401, 45.674603>,  <41.951138, 32.971630, 45.708988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.160721, 33.083401, 45.674603>,  <42.510025, 33.269684, 45.617294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160721, 33.083401, 45.674603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014734, -0.319151, -0.947589,
		0.487028, -0.825382, 0.285565,
		-0.873262, -0.465711, 0.143274,
		41.898743, 32.943687, 45.717587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543713, 32.593235, 45.365910>,  <42.510025, 33.269684, 45.617294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543713, 32.593235, 45.365910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.151089, 32.669266, 45.373966>,  <41.915512, 32.714886, 45.378799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.151089, 32.669266, 45.373966>,  <42.543713, 32.593235, 45.365910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151089, 32.669266, 45.373966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068667, -0.252324, -0.965203,
		-0.178386, -0.948789, 0.260724,
		-0.981562, 0.190082, 0.020140,
		41.856621, 32.726292, 45.380009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286655, 32.021549, 44.986637>,  <42.543713, 32.593235, 45.365910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286655, 32.021549, 44.986637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.033897, 32.329754, 44.953136>,  <41.882244, 32.514679, 44.933037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.033897, 32.329754, 44.953136>,  <42.286655, 32.021549, 44.986637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033897, 32.329754, 44.953136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152387, -0.229463, -0.961314,
		-0.759925, -0.594688, 0.262413,
		-0.631896, 0.770516, -0.083752,
		41.844330, 32.560909, 44.928009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645103, 31.723518, 44.721588>,  <42.286655, 32.021549, 44.986637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645103, 31.723518, 44.721588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.657234, 32.117146, 44.651512>,  <41.664513, 32.353321, 44.609467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.657234, 32.117146, 44.651512>,  <41.645103, 31.723518, 44.721588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657234, 32.117146, 44.651512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217500, -0.164577, -0.962086,
		-0.975589, 0.067285, 0.209043,
		0.030330, 0.984067, -0.175194,
		41.666332, 32.412365, 44.598953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164444, 31.869476, 44.225925>,  <41.645103, 31.723518, 44.721588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164444, 31.869476, 44.225925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.361458, 32.217056, 44.206585>,  <41.479664, 32.425606, 44.194981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.361458, 32.217056, 44.206585>,  <41.164444, 31.869476, 44.225925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361458, 32.217056, 44.206585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150801, 0.030493, -0.988094,
		-0.857129, 0.493960, 0.146057,
		0.492533, 0.868949, -0.048354,
		41.509216, 32.477741, 44.192078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791508, 32.173370, 43.732243>,  <41.164444, 31.869476, 44.225925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791508, 32.173370, 43.732243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.115070, 32.407139, 43.757915>,  <41.309208, 32.547398, 43.773319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.115070, 32.407139, 43.757915>,  <40.791508, 32.173370, 43.732243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115070, 32.407139, 43.757915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030092, 0.150184, -0.988200,
		-0.587161, 0.797434, 0.139072,
		0.808911, 0.584417, 0.064186,
		41.357742, 32.582462, 43.777172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615879, 32.932926, 43.630024>,  <40.791508, 32.173370, 43.732243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615879, 32.932926, 43.630024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.990353, 32.854740, 43.513165>,  <41.215038, 32.807827, 43.443047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.990353, 32.854740, 43.513165>,  <40.615879, 32.932926, 43.630024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990353, 32.854740, 43.513165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226827, 0.299002, -0.926902,
		0.268530, 0.934019, 0.235584,
		0.936184, -0.195465, -0.292152,
		41.271210, 32.796101, 43.425518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759472, 33.425426, 43.127052>,  <40.615879, 32.932926, 43.630024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759472, 33.425426, 43.127052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.075260, 33.192188, 43.050392>,  <41.264732, 33.052246, 43.004395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.075260, 33.192188, 43.050392>,  <40.759472, 33.425426, 43.127052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075260, 33.192188, 43.050392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098964, 0.187232, -0.977318,
		0.605753, 0.790534, 0.090109,
		0.789474, -0.583096, -0.191651,
		41.312103, 33.017258, 42.992897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112457, 33.895710, 42.652981>,  <40.759472, 33.425426, 43.127052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112457, 33.895710, 42.652981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.220699, 33.512291, 42.617283>,  <41.285645, 33.282242, 42.595863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.220699, 33.512291, 42.617283>,  <41.112457, 33.895710, 42.652981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220699, 33.512291, 42.617283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279291, 0.010550, -0.960149,
		0.921287, 0.284747, -0.264858,
		0.270605, -0.958545, -0.089246,
		41.301880, 33.224728, 42.590508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754158, 34.289543, 42.437840>,  <41.112457, 33.895710, 42.652981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754158, 34.289543, 42.437840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.612938, 34.649670, 42.336021>,  <41.528206, 34.865746, 42.274929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.612938, 34.649670, 42.336021>,  <41.754158, 34.289543, 42.437840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612938, 34.649670, 42.336021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107940, 0.231055, 0.966935,
		0.929358, 0.368850, 0.015606,
		-0.353048, 0.900313, -0.254547,
		41.507023, 34.919762, 42.259659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780788, 34.717209, 43.059147>,  <41.754158, 34.289543, 42.437840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780788, 34.717209, 43.059147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559353, 34.960232, 42.831314>,  <41.426491, 35.106045, 42.694614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559353, 34.960232, 42.831314>,  <41.780788, 34.717209, 43.059147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559353, 34.960232, 42.831314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185558, 0.576762, 0.795558,
		0.811857, 0.546099, -0.206551,
		-0.553585, 0.607553, -0.569582,
		41.393276, 35.142498, 42.660439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011959, 35.432053, 43.168221>,  <41.780788, 34.717209, 43.059147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011959, 35.432053, 43.168221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.631710, 35.422672, 43.044430>,  <41.403561, 35.417046, 42.970154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.631710, 35.422672, 43.044430>,  <42.011959, 35.432053, 43.168221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631710, 35.422672, 43.044430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284702, 0.462900, 0.839445,
		0.123572, 0.886101, -0.446717,
		-0.950618, -0.023450, -0.309476,
		41.346523, 35.415638, 42.951588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729107, 36.163300, 43.315517>,  <42.011959, 35.432053, 43.168221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729107, 36.163300, 43.315517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.428768, 35.902599, 43.272717>,  <41.248566, 35.746178, 43.247036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.428768, 35.902599, 43.272717>,  <41.729107, 36.163300, 43.315517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428768, 35.902599, 43.272717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543340, 0.517406, 0.661115,
		-0.375518, 0.554536, -0.742615,
		-0.750845, -0.651752, -0.107006,
		41.203514, 35.707073, 43.240616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311749, 36.580532, 43.210796>,  <41.729107, 36.163300, 43.315517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311749, 36.580532, 43.210796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.147427, 36.240921, 43.343697>,  <41.048836, 36.037155, 43.423435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.147427, 36.240921, 43.343697>,  <41.311749, 36.580532, 43.210796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147427, 36.240921, 43.343697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405717, 0.496584, 0.767332,
		-0.816478, 0.180421, -0.548463,
		-0.410800, -0.849031, 0.332250,
		41.024185, 35.986214, 43.443371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813713, 36.793621, 43.572075>,  <41.311749, 36.580532, 43.210796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813713, 36.793621, 43.572075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.825035, 36.430767, 43.740025>,  <40.831829, 36.213055, 43.840794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.825035, 36.430767, 43.740025>,  <40.813713, 36.793621, 43.572075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825035, 36.430767, 43.740025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339117, 0.386420, 0.857718,
		-0.940318, -0.166668, -0.296687,
		0.028309, -0.907139, 0.419878,
		40.833527, 36.158627, 43.865990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282810, 36.775509, 44.121685>,  <40.813713, 36.793621, 43.572075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282810, 36.775509, 44.121685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512726, 36.463284, 44.219948>,  <40.650673, 36.275948, 44.278904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512726, 36.463284, 44.219948>,  <40.282810, 36.775509, 44.121685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512726, 36.463284, 44.219948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237707, 0.127990, 0.962868,
		-0.783017, -0.611838, -0.111978,
		0.574787, -0.780560, 0.245656,
		40.685162, 36.229115, 44.293644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940144, 36.465996, 44.598885>,  <40.282810, 36.775509, 44.121685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940144, 36.465996, 44.598885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300194, 36.302563, 44.659325>,  <40.516224, 36.204502, 44.695587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300194, 36.302563, 44.659325>,  <39.940144, 36.465996, 44.598885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300194, 36.302563, 44.659325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134625, 0.068969, 0.988494,
		-0.414307, -0.910110, 0.007075,
		0.900126, -0.408587, 0.151098,
		40.570232, 36.179985, 44.704655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819817, 35.864513, 44.990528>,  <39.940144, 36.465996, 44.598885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819817, 35.864513, 44.990528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190804, 36.003021, 45.046967>,  <40.413395, 36.086124, 45.080830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190804, 36.003021, 45.046967>,  <39.819817, 35.864513, 44.990528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190804, 36.003021, 45.046967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180778, 0.084943, 0.979849,
		0.327308, -0.934281, 0.141380,
		0.927463, 0.346270, 0.141095,
		40.469044, 36.106903, 45.089294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117966, 35.530018, 45.660797>,  <39.819817, 35.864513, 44.990528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117966, 35.530018, 45.660797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.382885, 35.824303, 45.604092>,  <40.541836, 36.000874, 45.570068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.382885, 35.824303, 45.604092>,  <40.117966, 35.530018, 45.660797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382885, 35.824303, 45.604092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049663, 0.231898, 0.971472,
		0.747596, -0.636359, 0.190122,
		0.662294, 0.735711, -0.141762,
		40.581573, 36.045017, 45.561562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610046, 35.471382, 46.102341>,  <40.117966, 35.530018, 45.660797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610046, 35.471382, 46.102341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.625301, 35.859547, 46.006977>,  <40.634453, 36.092445, 45.949760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.625301, 35.859547, 46.006977>,  <40.610046, 35.471382, 46.102341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625301, 35.859547, 46.006977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009555, 0.238219, 0.971164,
		0.999227, -0.039314, -0.000188,
		0.038135, 0.970415, -0.238411,
		40.636742, 36.150673, 45.935455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033009, 35.732784, 46.553780>,  <40.610046, 35.471382, 46.102341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033009, 35.732784, 46.553780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811863, 36.045132, 46.437450>,  <40.679176, 36.232540, 46.367653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811863, 36.045132, 46.437450>,  <41.033009, 35.732784, 46.553780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811863, 36.045132, 46.437450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105586, 0.280556, 0.954013,
		0.826556, 0.558145, -0.072660,
		-0.552863, 0.780873, -0.290827,
		40.646004, 36.279392, 46.350201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363430, 36.247383, 46.865639>,  <41.033009, 35.732784, 46.553780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363430, 36.247383, 46.865639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.013729, 36.418438, 46.773720>,  <40.803909, 36.521072, 46.718567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.013729, 36.418438, 46.773720>,  <41.363430, 36.247383, 46.865639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013729, 36.418438, 46.773720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053813, 0.385073, 0.921316,
		0.482483, 0.817827, -0.313637,
		-0.874250, 0.427642, -0.229801,
		40.751453, 36.546730, 46.704781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386555, 36.931839, 47.046413>,  <41.363430, 36.247383, 46.865639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386555, 36.931839, 47.046413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.998302, 36.835640, 47.048786>,  <40.765350, 36.777920, 47.050209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.998302, 36.835640, 47.048786>,  <41.386555, 36.931839, 47.046413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998302, 36.835640, 47.048786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093897, 0.401433, 0.911062,
		-0.221492, 0.883748, -0.412226,
		-0.970631, -0.240500, 0.005933,
		40.707111, 36.763489, 47.050568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.174217, 33.459034, 46.883881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567104, 33.507359, 46.941376>,  <34.802837, 33.536354, 46.975872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567104, 33.507359, 46.941376>,  <34.174217, 33.459034, 46.883881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567104, 33.507359, 46.941376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114415, 0.221868, -0.968341,
		-0.148880, 0.967563, 0.204099,
		0.982214, 0.120814, 0.143735,
		34.861767, 33.543602, 46.984497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367352, 34.019485, 46.489227>,  <34.174217, 33.459034, 46.883881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367352, 34.019485, 46.489227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.716663, 33.833565, 46.547657>,  <34.926250, 33.722012, 46.582714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.716663, 33.833565, 46.547657>,  <34.367352, 34.019485, 46.489227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716663, 33.833565, 46.547657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196974, 0.062584, -0.978409,
		0.445625, 0.883200, 0.146207,
		0.873281, -0.464803, 0.146078,
		34.978649, 33.694122, 46.591480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849556, 34.371979, 46.166714>,  <34.367352, 34.019485, 46.489227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849556, 34.371979, 46.166714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041264, 34.023521, 46.209454>,  <35.156288, 33.814449, 46.235100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041264, 34.023521, 46.209454>,  <34.849556, 34.371979, 46.166714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041264, 34.023521, 46.209454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271009, 0.031092, -0.962075,
		0.834780, 0.490048, 0.250988,
		0.479267, -0.871140, 0.106852,
		35.185043, 33.762180, 46.241508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438099, 34.501942, 45.808727>,  <34.849556, 34.371979, 46.166714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438099, 34.501942, 45.808727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406357, 34.103561, 45.825626>,  <35.387310, 33.864532, 45.835766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406357, 34.103561, 45.825626>,  <35.438099, 34.501942, 45.808727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406357, 34.103561, 45.825626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309765, -0.064924, -0.948594,
		0.947496, -0.062187, 0.313663,
		-0.079354, -0.995951, 0.042252,
		35.382549, 33.804775, 45.838303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880417, 34.353329, 45.279686>,  <35.438099, 34.501942, 45.808727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880417, 34.353329, 45.279686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739742, 33.988419, 45.363655>,  <35.655338, 33.769470, 45.414036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739742, 33.988419, 45.363655>,  <35.880417, 34.353329, 45.279686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739742, 33.988419, 45.363655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240972, -0.304916, -0.921389,
		0.904572, -0.273452, 0.327068,
		-0.351684, -0.912277, 0.209924,
		35.634235, 33.714737, 45.426632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420700, 33.932316, 45.134319>,  <35.880417, 34.353329, 45.279686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420700, 33.932316, 45.134319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.083862, 33.716648, 45.129112>,  <35.881760, 33.587246, 45.125988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.083862, 33.716648, 45.129112>,  <36.420700, 33.932316, 45.134319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083862, 33.716648, 45.129112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222826, -0.325826, -0.918796,
		0.491145, -0.776616, 0.394518,
		-0.842096, -0.539171, -0.013022,
		35.831234, 33.554897, 45.125206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565475, 33.216099, 44.873127>,  <36.420700, 33.932316, 45.134319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565475, 33.216099, 44.873127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.177910, 33.292339, 44.810047>,  <35.945370, 33.338081, 44.772198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.177910, 33.292339, 44.810047>,  <36.565475, 33.216099, 44.873127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177910, 33.292339, 44.810047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104319, -0.263238, -0.959074,
		-0.224305, -0.945717, 0.235174,
		-0.968920, 0.190592, -0.157702,
		35.887234, 33.349518, 44.762737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420414, 32.813663, 44.424702>,  <36.565475, 33.216099, 44.873127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420414, 32.813663, 44.424702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.126125, 33.077263, 44.362183>,  <35.949551, 33.235424, 44.324673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.126125, 33.077263, 44.362183>,  <36.420414, 32.813663, 44.424702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126125, 33.077263, 44.362183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135504, -0.082882, -0.987304,
		-0.663589, -0.747562, -0.028319,
		-0.735724, 0.659001, -0.156297,
		35.905407, 33.274963, 44.315292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045311, 32.464745, 43.935734>,  <36.420414, 32.813663, 44.424702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045311, 32.464745, 43.935734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952503, 32.853504, 43.919846>,  <35.896816, 33.086761, 43.910313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952503, 32.853504, 43.919846>,  <36.045311, 32.464745, 43.935734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952503, 32.853504, 43.919846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000849, -0.040637, -0.999174,
		-0.972710, -0.231865, 0.008603,
		-0.232023, 0.971899, -0.039725,
		35.882896, 33.145073, 43.907928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617107, 32.556973, 43.367992>,  <36.045311, 32.464745, 43.935734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617107, 32.556973, 43.367992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671501, 32.952202, 43.396889>,  <35.704140, 33.189339, 43.414227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671501, 32.952202, 43.396889>,  <35.617107, 32.556973, 43.367992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671501, 32.952202, 43.396889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035617, 0.077743, -0.996337,
		-0.990070, 0.132917, 0.045764,
		0.135988, 0.988073, 0.072237,
		35.712296, 33.248623, 43.418560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135750, 32.850803, 43.001049>,  <35.617107, 32.556973, 43.367992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135750, 32.850803, 43.001049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417038, 33.133533, 43.031712>,  <35.585812, 33.303173, 43.050110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417038, 33.133533, 43.031712>,  <35.135750, 32.850803, 43.001049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417038, 33.133533, 43.031712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072965, 0.178998, -0.981140,
		-0.707219, 0.684364, 0.177448,
		0.703220, 0.706828, 0.076656,
		35.628002, 33.345581, 43.054707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839428, 33.503807, 42.752518>,  <35.135750, 32.850803, 43.001049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839428, 33.503807, 42.752518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238209, 33.487831, 42.725685>,  <35.477478, 33.478245, 42.709587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238209, 33.487831, 42.725685>,  <34.839428, 33.503807, 42.752518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238209, 33.487831, 42.725685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043516, 0.429060, -0.902227,
		0.064820, 0.902392, 0.426012,
		0.996948, -0.039944, -0.067081,
		35.537292, 33.475849, 42.705563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992546, 34.077614, 42.283703>,  <34.839428, 33.503807, 42.752518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992546, 34.077614, 42.283703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326809, 33.857983, 42.289154>,  <35.527367, 33.726204, 42.292423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326809, 33.857983, 42.289154>,  <34.992546, 34.077614, 42.283703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326809, 33.857983, 42.289154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124310, 0.164911, -0.978443,
		0.534995, 0.819339, 0.206066,
		0.835660, -0.549079, 0.013626,
		35.577507, 33.693260, 42.293243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533680, 34.431633, 41.844112>,  <34.992546, 34.077614, 42.283703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533680, 34.431633, 41.844112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641682, 34.050251, 41.897808>,  <35.706482, 33.821423, 41.930027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641682, 34.050251, 41.897808>,  <35.533680, 34.431633, 41.844112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641682, 34.050251, 41.897808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002766, -0.138649, -0.990338,
		0.962856, 0.267765, -0.034798,
		0.270003, -0.953456, 0.134239,
		35.722683, 33.764214, 41.938080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111122, 34.940865, 41.816601>,  <35.533680, 34.431633, 41.844112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111122, 34.940865, 41.816601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954269, 35.292210, 41.707268>,  <35.860157, 35.503017, 41.641666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954269, 35.292210, 41.707268>,  <36.111122, 34.940865, 41.816601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954269, 35.292210, 41.707268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237780, 0.190257, 0.952503,
		0.888649, 0.438497, 0.134252,
		-0.392127, 0.878364, -0.273337,
		35.836632, 35.555717, 41.625267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556187, 35.510166, 42.096901>,  <36.111122, 34.940865, 41.816601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556187, 35.510166, 42.096901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190010, 35.655613, 42.027916>,  <35.970303, 35.742882, 41.986526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190010, 35.655613, 42.027916>,  <36.556187, 35.510166, 42.096901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190010, 35.655613, 42.027916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088175, 0.236907, 0.967523,
		0.392663, 0.900922, -0.184814,
		-0.915446, 0.363614, -0.172463,
		35.915375, 35.764698, 41.976177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546291, 36.213417, 42.315674>,  <36.556187, 35.510166, 42.096901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546291, 36.213417, 42.315674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156422, 36.124332, 42.307590>,  <35.922501, 36.070881, 42.302738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156422, 36.124332, 42.307590>,  <36.546291, 36.213417, 42.315674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156422, 36.124332, 42.307590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099791, 0.352277, 0.930560,
		-0.200124, 0.909011, -0.365580,
		-0.974675, -0.222709, -0.020212,
		35.864017, 36.057518, 42.301525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142551, 36.885033, 42.516792>,  <36.546291, 36.213417, 42.315674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142551, 36.885033, 42.516792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906624, 36.574375, 42.605282>,  <35.765068, 36.387981, 42.658375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906624, 36.574375, 42.605282>,  <36.142551, 36.885033, 42.516792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906624, 36.574375, 42.605282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044416, 0.242338, 0.969174,
		-0.806314, 0.581462, -0.108440,
		-0.589817, -0.776643, 0.221227,
		35.729679, 36.341381, 42.671650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779892, 37.105160, 43.034744>,  <36.142551, 36.885033, 42.516792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779892, 37.105160, 43.034744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.710976, 36.712299, 43.064915>,  <35.669624, 36.476582, 43.083015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.710976, 36.712299, 43.064915>,  <35.779892, 37.105160, 43.034744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710976, 36.712299, 43.064915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119170, 0.096789, 0.988145,
		-0.977811, 0.161260, -0.133719,
		-0.172290, -0.982154, 0.075424,
		35.659290, 36.417652, 43.087543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177486, 37.134254, 43.482971>,  <35.779892, 37.105160, 43.034744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177486, 37.134254, 43.482971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.324837, 36.762917, 43.502888>,  <35.413246, 36.540115, 43.514839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.324837, 36.762917, 43.502888>,  <35.177486, 37.134254, 43.482971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324837, 36.762917, 43.502888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272644, -0.056671, 0.960445,
		-0.888800, -0.367380, -0.273983,
		0.368375, -0.928343, 0.049795,
		35.435349, 36.484413, 43.517826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715546, 36.802895, 43.929165>,  <35.177486, 37.134254, 43.482971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715546, 36.802895, 43.929165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031670, 36.557831, 43.925987>,  <35.221344, 36.410793, 43.924080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031670, 36.557831, 43.925987>,  <34.715546, 36.802895, 43.929165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031670, 36.557831, 43.925987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143578, -0.197780, 0.969674,
		-0.595652, -0.765200, -0.244271,
		0.790306, -0.612660, -0.007942,
		35.268761, 36.374031, 43.923603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590149, 36.177151, 44.387733>,  <34.715546, 36.802895, 43.929165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590149, 36.177151, 44.387733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.988159, 36.202831, 44.357277>,  <35.226967, 36.218239, 44.339005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.988159, 36.202831, 44.357277>,  <34.590149, 36.177151, 44.387733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988159, 36.202831, 44.357277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083350, -0.118387, 0.989463,
		0.054514, -0.990890, -0.123150,
		0.995028, 0.064204, -0.076136,
		35.286667, 36.222092, 44.334435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858398, 35.647293, 44.730198>,  <34.590149, 36.177151, 44.387733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858398, 35.647293, 44.730198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.146194, 35.925079, 44.733097>,  <35.318871, 36.091751, 44.734837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.146194, 35.925079, 44.733097>,  <34.858398, 35.647293, 44.730198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146194, 35.925079, 44.733097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066728, -0.079518, 0.994598,
		0.691294, -0.715115, -0.103553,
		0.719486, 0.694470, 0.007252,
		35.362041, 36.133419, 44.735271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338005, 35.357510, 45.121372>,  <34.858398, 35.647293, 44.730198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338005, 35.357510, 45.121372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464542, 35.736748, 45.134262>,  <35.540466, 35.964291, 45.141998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464542, 35.736748, 45.134262>,  <35.338005, 35.357510, 45.121372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464542, 35.736748, 45.134262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291663, -0.129532, 0.947710,
		0.902696, -0.290401, -0.317501,
		0.316343, 0.948098, 0.032228,
		35.559444, 36.021175, 45.143932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933350, 35.285320, 45.624176>,  <35.338005, 35.357510, 45.121372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933350, 35.285320, 45.624176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819042, 35.666847, 45.587147>,  <35.750458, 35.895763, 45.564930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819042, 35.666847, 45.587147>,  <35.933350, 35.285320, 45.624176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819042, 35.666847, 45.587147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057834, 0.113595, 0.991842,
		0.956553, 0.278079, -0.087625,
		-0.285765, 0.953818, -0.092577,
		35.733315, 35.952991, 45.559372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469776, 35.576874, 45.922585>,  <35.933350, 35.285320, 45.624176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469776, 35.576874, 45.922585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.157780, 35.826893, 45.934792>,  <35.970581, 35.976906, 45.942116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.157780, 35.826893, 45.934792>,  <36.469776, 35.576874, 45.922585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157780, 35.826893, 45.934792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177498, 0.174210, 0.968579,
		0.600092, 0.760898, -0.246826,
		-0.779990, 0.625048, 0.030516,
		35.923782, 36.014408, 45.943947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710693, 36.227188, 46.206879>,  <36.469776, 35.576874, 45.922585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710693, 36.227188, 46.206879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317062, 36.213768, 46.276703>,  <36.080883, 36.205715, 46.318600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317062, 36.213768, 46.276703>,  <36.710693, 36.227188, 46.206879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317062, 36.213768, 46.276703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173864, 0.022787, 0.984506,
		-0.037006, 0.999177, -0.016591,
		-0.984074, -0.033548, 0.174564,
		36.021839, 36.203705, 46.329071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546299, 36.668980, 46.787045>,  <36.710693, 36.227188, 46.206879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546299, 36.668980, 46.787045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.205147, 36.460651, 46.772461>,  <36.000454, 36.335655, 46.763710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.205147, 36.460651, 46.772461>,  <36.546299, 36.668980, 46.787045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205147, 36.460651, 46.772461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110837, 0.112369, 0.987466,
		-0.510198, 0.846236, -0.153564,
		-0.852885, -0.520823, -0.036464,
		35.949280, 36.304405, 46.761520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327923, 37.389507, 46.668427>,  <36.546299, 36.668980, 46.787045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327923, 37.389507, 46.668427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.668892, 37.578331, 46.758343>,  <36.873474, 37.691624, 46.812290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.668892, 37.578331, 46.758343>,  <36.327923, 37.389507, 46.668427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668892, 37.578331, 46.758343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087124, 0.295676, -0.951307,
		-0.515536, 0.830504, 0.210915,
		0.852427, 0.472058, 0.224789,
		36.924622, 37.719948, 46.825779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344563, 37.877151, 46.183758>,  <36.327923, 37.389507, 46.668427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344563, 37.877151, 46.183758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713036, 37.850292, 46.337078>,  <36.934120, 37.834175, 46.429070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713036, 37.850292, 46.337078>,  <36.344563, 37.877151, 46.183758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713036, 37.850292, 46.337078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387394, 0.251388, -0.886978,
		-0.036796, 0.965554, 0.257587,
		0.921180, -0.067150, 0.383300,
		36.989391, 37.830147, 46.452068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637470, 38.464462, 46.009624>,  <36.344563, 37.877151, 46.183758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637470, 38.464462, 46.009624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938744, 38.209152, 46.073277>,  <37.119507, 38.055965, 46.111469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938744, 38.209152, 46.073277>,  <36.637470, 38.464462, 46.009624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938744, 38.209152, 46.073277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286212, 0.100157, -0.952917,
		0.592285, 0.763266, 0.258118,
		0.753181, -0.638274, 0.159134,
		37.164700, 38.017670, 46.121017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272949, 38.753578, 45.834415>,  <36.637470, 38.464462, 46.009624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272949, 38.753578, 45.834415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391140, 38.372292, 45.808884>,  <37.462055, 38.143520, 45.793564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391140, 38.372292, 45.808884>,  <37.272949, 38.753578, 45.834415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391140, 38.372292, 45.808884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444153, 0.196220, -0.874200,
		0.845825, 0.229958, 0.481352,
		0.295480, -0.953214, -0.063831,
		37.479786, 38.086327, 45.789734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845474, 38.823708, 45.490627>,  <37.272949, 38.753578, 45.834415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845474, 38.823708, 45.490627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751137, 38.435787, 45.465748>,  <37.694534, 38.203033, 45.450821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751137, 38.435787, 45.465748>,  <37.845474, 38.823708, 45.490627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751137, 38.435787, 45.465748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552288, -0.081091, -0.829700,
		0.799599, -0.230029, 0.554733,
		-0.235839, -0.969799, -0.062201,
		37.680386, 38.144848, 45.447086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507782, 38.544357, 45.469910>,  <37.845474, 38.823708, 45.490627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507782, 38.544357, 45.469910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258553, 38.260792, 45.337719>,  <38.109013, 38.090652, 45.258404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258553, 38.260792, 45.337719>,  <38.507782, 38.544357, 45.469910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258553, 38.260792, 45.337719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669739, -0.265315, -0.693583,
		0.404013, -0.653487, 0.640100,
		-0.623076, -0.708916, -0.330475,
		38.071629, 38.048119, 45.238575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983593, 38.032993, 45.136387>,  <38.507782, 38.544357, 45.469910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983593, 38.032993, 45.136387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.615280, 37.988651, 44.986790>,  <38.394291, 37.962048, 44.897030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.615280, 37.988651, 44.986790>,  <38.983593, 38.032993, 45.136387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615280, 37.988651, 44.986790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390006, -0.280121, -0.877170,
		-0.007527, -0.953543, 0.301163,
		-0.920781, -0.110853, -0.373996,
		38.339046, 37.955395, 44.874592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907688, 37.329483, 44.832428>,  <38.983593, 38.032993, 45.136387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907688, 37.329483, 44.832428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.634682, 37.555656, 44.647194>,  <38.470879, 37.691360, 44.536053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.634682, 37.555656, 44.647194>,  <38.907688, 37.329483, 44.832428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634682, 37.555656, 44.647194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275879, -0.387423, -0.879656,
		-0.676801, -0.728137, 0.108431,
		-0.682519, 0.565438, -0.463086,
		38.429928, 37.725288, 44.508266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468052, 36.931637, 44.335667>,  <38.907688, 37.329483, 44.832428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468052, 36.931637, 44.335667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434029, 37.310898, 44.213181>,  <38.413616, 37.538456, 44.139690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434029, 37.310898, 44.213181>,  <38.468052, 36.931637, 44.335667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434029, 37.310898, 44.213181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277811, -0.272570, -0.921155,
		-0.956863, -0.163419, -0.240225,
		-0.085057, 0.948156, -0.306212,
		38.408512, 37.595345, 44.121319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220978, 37.023285, 43.692783>,  <38.468052, 36.931637, 44.335667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220978, 37.023285, 43.692783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.393776, 37.383949, 43.700714>,  <38.497456, 37.600346, 43.705471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.393776, 37.383949, 43.700714>,  <38.220978, 37.023285, 43.692783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393776, 37.383949, 43.700714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397126, -0.170438, -0.901799,
		-0.809734, 0.397449, -0.431700,
		0.431998, 0.901657, 0.019828,
		38.523376, 37.654446, 43.706661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053665, 37.285992, 43.121143>,  <38.220978, 37.023285, 43.692783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053665, 37.285992, 43.121143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.370747, 37.510715, 43.215794>,  <38.560997, 37.645550, 43.272583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.370747, 37.510715, 43.215794>,  <38.053665, 37.285992, 43.121143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370747, 37.510715, 43.215794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276391, 0.014744, -0.960932,
		-0.543345, 0.827139, -0.143590,
		0.792707, 0.561805, 0.236624,
		38.608559, 37.679256, 43.286781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134003, 37.875191, 42.604042>,  <38.053665, 37.285992, 43.121143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134003, 37.875191, 42.604042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493572, 37.791286, 42.757893>,  <38.709312, 37.740944, 42.850204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493572, 37.791286, 42.757893>,  <38.134003, 37.875191, 42.604042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493572, 37.791286, 42.757893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398032, 0.024215, -0.917052,
		0.183046, 0.977453, 0.105258,
		0.898924, -0.209758, 0.384626,
		38.763248, 37.728359, 42.873280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563568, 38.458290, 42.380783>,  <38.134003, 37.875191, 42.604042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563568, 38.458290, 42.380783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770523, 38.127514, 42.468853>,  <38.894695, 37.929047, 42.521694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770523, 38.127514, 42.468853>,  <38.563568, 38.458290, 42.380783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770523, 38.127514, 42.468853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574188, 0.144696, -0.805835,
		0.634522, 0.543349, 0.549685,
		0.517387, -0.826943, 0.220172,
		38.925739, 37.879433, 42.534904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269573, 38.589294, 42.315907>,  <38.563568, 38.458290, 42.380783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269573, 38.589294, 42.315907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280609, 38.189533, 42.307667>,  <39.287231, 37.949677, 42.302723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280609, 38.189533, 42.307667>,  <39.269573, 38.589294, 42.315907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280609, 38.189533, 42.307667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513166, 0.031839, -0.857699,
		0.857846, 0.013092, 0.513740,
		0.027586, -0.999407, -0.020595,
		39.288883, 37.889709, 42.301487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.203453, 41.969879, 37.304089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.576025, 41.889675, 37.182610>,  <29.799568, 41.841553, 37.109722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.576025, 41.889675, 37.182610>,  <29.203453, 41.969879, 37.304089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576025, 41.889675, 37.182610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232547, -0.969851, -0.072884,
		-0.279928, 0.138511, -0.949977,
		0.931430, -0.200512, -0.303699,
		29.855453, 41.829521, 37.091499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112415, 41.694347, 36.545578>,  <29.203453, 41.969879, 37.304089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112415, 41.694347, 36.545578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461267, 41.595238, 36.714336>,  <29.670580, 41.535770, 36.815590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461267, 41.595238, 36.714336>,  <29.112415, 41.694347, 36.545578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461267, 41.595238, 36.714336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163116, -0.960202, -0.226725,
		0.461280, 0.128917, -0.877839,
		0.872132, -0.247774, 0.421894,
		29.722906, 41.520905, 36.840904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386711, 41.277679, 36.098156>,  <29.112415, 41.694347, 36.545578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386711, 41.277679, 36.098156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.623983, 41.178139, 36.404411>,  <29.766346, 41.118412, 36.588165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.623983, 41.178139, 36.404411>,  <29.386711, 41.277679, 36.098156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623983, 41.178139, 36.404411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107589, -0.966999, -0.230948,
		0.797847, 0.054620, -0.600380,
		0.593181, -0.248856, 0.765641,
		29.801937, 41.103481, 36.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866142, 40.893894, 35.812428>,  <29.386711, 41.277679, 36.098156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866142, 40.893894, 35.812428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.868557, 40.788586, 36.198307>,  <29.870005, 40.725399, 36.429836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.868557, 40.788586, 36.198307>,  <29.866142, 40.893894, 35.812428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868557, 40.788586, 36.198307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146692, -0.954517, -0.259574,
		0.989164, -0.139948, -0.044380,
		0.006035, -0.263271, 0.964703,
		29.870367, 40.709602, 36.487717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165354, 40.279537, 35.772945>,  <29.866142, 40.893894, 35.812428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165354, 40.279537, 35.772945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052477, 40.287655, 36.156605>,  <29.984751, 40.292526, 36.386799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052477, 40.287655, 36.156605>,  <30.165354, 40.279537, 35.772945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052477, 40.287655, 36.156605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225312, -0.973214, -0.045700,
		0.932525, -0.229002, 0.279204,
		-0.282190, 0.020291, 0.959144,
		29.967819, 40.293743, 36.444347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491562, 39.774807, 36.027122>,  <30.165354, 40.279537, 35.772945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491562, 39.774807, 36.027122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173512, 39.826973, 36.264023>,  <29.982681, 39.858273, 36.406162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173512, 39.826973, 36.264023>,  <30.491562, 39.774807, 36.027122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173512, 39.826973, 36.264023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230372, -0.968349, -0.096061,
		0.560981, -0.212820, 0.800005,
		-0.795128, 0.130410, 0.592254,
		29.934973, 39.866096, 36.441700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508450, 39.226334, 36.535461>,  <30.491562, 39.774807, 36.027122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508450, 39.226334, 36.535461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.128420, 39.344864, 36.496361>,  <29.900402, 39.415981, 36.472900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.128420, 39.344864, 36.496361>,  <30.508450, 39.226334, 36.535461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128420, 39.344864, 36.496361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269701, -0.937400, -0.220323,
		-0.156923, -0.182958, 0.970516,
		-0.950072, 0.296323, -0.097755,
		29.843399, 39.433762, 36.467033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189430, 38.701614, 36.842316>,  <30.508450, 39.226334, 36.535461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189430, 38.701614, 36.842316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908836, 38.884922, 36.623993>,  <29.740480, 38.994907, 36.493000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908836, 38.884922, 36.623993>,  <30.189430, 38.701614, 36.842316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908836, 38.884922, 36.623993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391236, -0.887754, -0.242544,
		-0.595695, 0.043399, 0.802037,
		-0.701486, 0.458268, -0.545810,
		29.698391, 39.022404, 36.460251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618238, 38.303246, 36.845207>,  <30.189430, 38.701614, 36.842316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618238, 38.303246, 36.845207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482019, 38.537247, 36.550781>,  <29.400288, 38.677647, 36.374126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482019, 38.537247, 36.550781>,  <29.618238, 38.303246, 36.845207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482019, 38.537247, 36.550781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509745, -0.772699, -0.378282,
		-0.790056, 0.246385, 0.561343,
		-0.340546, 0.585005, -0.736068,
		29.379856, 38.712749, 36.329960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925203, 38.374645, 36.873646>,  <29.618238, 38.303246, 36.845207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925203, 38.374645, 36.873646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996214, 38.447788, 36.486855>,  <29.038820, 38.491673, 36.254780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996214, 38.447788, 36.486855>,  <28.925203, 38.374645, 36.873646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996214, 38.447788, 36.486855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566416, -0.784535, -0.252343,
		-0.804772, 0.592510, -0.035702,
		0.177525, 0.182856, -0.966979,
		29.049471, 38.502644, 36.196762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204012, 38.444439, 36.416023>,  <28.925203, 38.374645, 36.873646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204012, 38.444439, 36.416023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484554, 38.354122, 36.145580>,  <28.652880, 38.299934, 35.983315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484554, 38.354122, 36.145580>,  <28.204012, 38.444439, 36.416023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484554, 38.354122, 36.145580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488091, -0.843382, -0.224665,
		-0.519490, 0.487572, -0.701715,
		0.701354, -0.225789, -0.676108,
		28.694960, 38.286385, 35.942749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805483, 38.160149, 35.876682>,  <28.204012, 38.444439, 36.416023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805483, 38.160149, 35.876682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184231, 38.055805, 35.801434>,  <28.411480, 37.993198, 35.756287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184231, 38.055805, 35.801434>,  <27.805483, 38.160149, 35.876682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184231, 38.055805, 35.801434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304326, -0.915905, -0.261731,
		-0.104024, 0.305075, -0.946630,
		0.946871, -0.260858, -0.188119,
		28.468292, 37.977547, 35.744999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766777, 37.823650, 35.262505>,  <27.805483, 38.160149, 35.876682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766777, 37.823650, 35.262505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106373, 37.694519, 35.429832>,  <28.310131, 37.617039, 35.530231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106373, 37.694519, 35.429832>,  <27.766777, 37.823650, 35.262505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106373, 37.694519, 35.429832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175449, -0.918978, -0.353125,
		0.498429, 0.226406, -0.836844,
		0.848991, -0.322831, 0.418323,
		28.361071, 37.597672, 35.555328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219419, 37.514317, 34.709854>,  <27.766777, 37.823650, 35.262505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219419, 37.514317, 34.709854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.315771, 37.365631, 35.068474>,  <28.373583, 37.276421, 35.283646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.315771, 37.365631, 35.068474>,  <28.219419, 37.514317, 34.709854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315771, 37.365631, 35.068474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156626, -0.926531, -0.342066,
		0.957833, -0.058027, -0.281404,
		0.240880, -0.371717, 0.896551,
		28.388035, 37.254116, 35.337440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816343, 37.054276, 34.597515>,  <28.219419, 37.514317, 34.709854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816343, 37.054276, 34.597515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642185, 36.953743, 34.943295>,  <28.537691, 36.893421, 35.150761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642185, 36.953743, 34.943295>,  <28.816343, 37.054276, 34.597515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642185, 36.953743, 34.943295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152696, -0.925705, -0.346055,
		0.887196, -0.282667, 0.364668,
		-0.435393, -0.251335, 0.864444,
		28.511568, 36.878342, 35.202629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108967, 36.466301, 34.667355>,  <28.816343, 37.054276, 34.597515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108967, 36.466301, 34.667355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791571, 36.450336, 34.910263>,  <28.601131, 36.440758, 35.056007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791571, 36.450336, 34.910263>,  <29.108967, 36.466301, 34.667355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791571, 36.450336, 34.910263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229236, -0.904752, -0.358991,
		0.563755, -0.424065, 0.708765,
		-0.793493, -0.039909, 0.607270,
		28.553522, 36.438362, 35.092445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200502, 35.868195, 35.125526>,  <29.108967, 36.466301, 34.667355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200502, 35.868195, 35.125526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813183, 35.968102, 35.127048>,  <28.580791, 36.028046, 35.127964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813183, 35.968102, 35.127048>,  <29.200502, 35.868195, 35.125526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813183, 35.968102, 35.127048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231173, -0.890223, -0.392509,
		-0.094646, -0.380946, 0.919740,
		-0.968298, 0.249768, 0.003808,
		28.522694, 36.043034, 35.128189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923021, 35.269588, 35.399757>,  <29.200502, 35.868195, 35.125526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923021, 35.269588, 35.399757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626970, 35.477707, 35.229343>,  <28.449339, 35.602577, 35.127094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626970, 35.477707, 35.229343>,  <28.923021, 35.269588, 35.399757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626970, 35.477707, 35.229343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369285, -0.843933, -0.389109,
		-0.561993, -0.130664, 0.816756,
		-0.740130, 0.520293, -0.426032,
		28.404932, 35.633793, 35.101532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182524, 34.594997, 35.432415>,  <28.923021, 35.269588, 35.399757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182524, 34.594997, 35.432415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.079319, 34.361809, 35.740593>,  <29.017397, 34.221897, 35.925499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.079319, 34.361809, 35.740593>,  <29.182524, 34.594997, 35.432415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079319, 34.361809, 35.740593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922944, 0.087062, 0.374959,
		-0.285665, 0.807818, 0.515584,
		-0.258011, -0.582968, 0.770441,
		29.001915, 34.186920, 35.971725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790655, 34.463245, 35.642262>,  <29.182524, 34.594997, 35.432415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790655, 34.463245, 35.642262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565636, 34.357903, 35.955742>,  <29.430624, 34.294697, 36.143829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565636, 34.357903, 35.955742>,  <29.790655, 34.463245, 35.642262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565636, 34.357903, 35.955742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824795, -0.113361, 0.553952,
		-0.057045, 0.958015, 0.280984,
		-0.562547, -0.263355, 0.783700,
		29.396872, 34.278896, 36.190853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483042, 34.427956, 35.333023>,  <29.790655, 34.463245, 35.642262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483042, 34.427956, 35.333023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792929, 34.220055, 35.188984>,  <30.978861, 34.095314, 35.102562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792929, 34.220055, 35.188984>,  <30.483042, 34.427956, 35.333023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792929, 34.220055, 35.188984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095853, 0.659453, -0.745610,
		0.624998, 0.543122, 0.560710,
		0.774719, -0.519751, -0.360097,
		31.025345, 34.064129, 35.080956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926836, 34.931774, 35.431175>,  <30.483042, 34.427956, 35.333023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926836, 34.931774, 35.431175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041937, 34.685101, 35.138081>,  <31.110998, 34.537098, 34.962223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041937, 34.685101, 35.138081>,  <30.926836, 34.931774, 35.431175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041937, 34.685101, 35.138081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212836, 0.787141, -0.578886,
		0.933755, 0.010623, 0.357754,
		0.287753, -0.616681, -0.732737,
		31.128263, 34.500095, 34.918259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583582, 34.993546, 35.344395>,  <30.926836, 34.931774, 35.431175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583582, 34.993546, 35.344395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.453199, 34.847115, 34.995743>,  <31.374969, 34.759254, 34.786552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.453199, 34.847115, 34.995743>,  <31.583582, 34.993546, 35.344395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453199, 34.847115, 34.995743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346791, 0.811414, -0.470471,
		0.879483, -0.455626, -0.137531,
		-0.325954, -0.366077, -0.871631,
		31.355413, 34.737293, 34.734253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113007, 35.197212, 34.962917>,  <31.583582, 34.993546, 35.344395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113007, 35.197212, 34.962917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.813593, 35.100418, 34.715969>,  <31.633945, 35.042343, 34.567799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.813593, 35.100418, 34.715969>,  <32.113007, 35.197212, 34.962917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813593, 35.100418, 34.715969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194420, 0.810029, -0.553221,
		0.633956, -0.534133, -0.559287,
		-0.748533, -0.241981, -0.617369,
		31.589033, 35.027824, 34.530758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351677, 35.270924, 34.276337>,  <32.113007, 35.197212, 34.962917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351677, 35.270924, 34.276337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.953699, 35.289352, 34.240646>,  <31.714912, 35.300411, 34.219231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.953699, 35.289352, 34.240646>,  <32.351677, 35.270924, 34.276337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953699, 35.289352, 34.240646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089023, 0.815838, -0.571387,
		0.046467, -0.576442, -0.815816,
		-0.994945, 0.046076, -0.089226,
		31.655216, 35.303177, 34.213879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330441, 35.491417, 33.680370>,  <32.351677, 35.270924, 34.276337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330441, 35.491417, 33.680370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975372, 35.578178, 33.842846>,  <31.762331, 35.630234, 33.940331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975372, 35.578178, 33.842846>,  <32.330441, 35.491417, 33.680370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975372, 35.578178, 33.842846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008383, 0.889578, -0.456705,
		-0.460400, -0.402000, -0.791472,
		-0.887672, 0.216902, 0.406192,
		31.709070, 35.643250, 33.964703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982733, 35.766727, 33.113602>,  <32.330441, 35.491417, 33.680370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982733, 35.766727, 33.113602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.807867, 35.883369, 33.453918>,  <31.702948, 35.953354, 33.658108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.807867, 35.883369, 33.453918>,  <31.982733, 35.766727, 33.113602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807867, 35.883369, 33.453918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068902, 0.932340, -0.354957,
		-0.896738, -0.213797, -0.387495,
		-0.437165, 0.291604, 0.850796,
		31.676718, 35.970852, 33.709156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464436, 36.245113, 32.915501>,  <31.982733, 35.766727, 33.113602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464436, 36.245113, 32.915501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.517305, 36.327248, 33.303391>,  <31.549028, 36.376530, 33.536125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.517305, 36.327248, 33.303391>,  <31.464436, 36.245113, 32.915501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517305, 36.327248, 33.303391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061433, 0.974731, -0.214769,
		-0.989321, 0.087961, 0.116221,
		0.132176, 0.205335, 0.969725,
		31.556957, 36.388847, 33.594307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876852, 36.728279, 33.182964>,  <31.464436, 36.245113, 32.915501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876852, 36.728279, 33.182964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221519, 36.774200, 33.380692>,  <31.428320, 36.801754, 33.499329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221519, 36.774200, 33.380692>,  <30.876852, 36.728279, 33.182964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221519, 36.774200, 33.380692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043344, 0.953866, -0.297086,
		-0.505618, 0.277416, 0.816940,
		0.861668, 0.114803, 0.494316,
		31.480021, 36.808640, 33.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899479, 37.368908, 33.280926>,  <30.876852, 36.728279, 33.182964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899479, 37.368908, 33.280926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.278034, 37.288494, 33.382069>,  <31.505167, 37.240246, 33.442753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.278034, 37.288494, 33.382069>,  <30.899479, 37.368908, 33.280926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278034, 37.288494, 33.382069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212442, 0.977002, -0.018337,
		-0.243355, 0.071071, 0.967330,
		0.946386, -0.201039, 0.252857,
		31.561951, 37.228184, 33.457924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053139, 37.775734, 33.806713>,  <30.899479, 37.368908, 33.280926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053139, 37.775734, 33.806713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.411287, 37.666397, 33.666092>,  <31.626177, 37.600796, 33.581718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.411287, 37.666397, 33.666092>,  <31.053139, 37.775734, 33.806713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411287, 37.666397, 33.666092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237771, 0.960948, -0.141578,
		0.376527, 0.043175, 0.925399,
		0.895373, -0.273341, -0.351557,
		31.679899, 37.584396, 33.560623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431683, 38.153625, 34.366108>,  <31.053139, 37.775734, 33.806713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431683, 38.153625, 34.366108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692369, 38.042824, 34.083679>,  <31.848782, 37.976341, 33.914223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692369, 38.042824, 34.083679>,  <31.431683, 38.153625, 34.366108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692369, 38.042824, 34.083679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487141, 0.866402, 0.109734,
		0.581343, -0.415471, 0.699589,
		0.651716, -0.277005, -0.706069,
		31.887884, 37.959721, 33.871857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148952, 38.121239, 34.631134>,  <31.431683, 38.153625, 34.366108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148952, 38.121239, 34.631134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.160751, 38.194363, 34.238052>,  <32.167831, 38.238235, 34.002201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.160751, 38.194363, 34.238052>,  <32.148952, 38.121239, 34.631134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160751, 38.194363, 34.238052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560168, 0.811222, 0.167722,
		0.827854, -0.555428, -0.078473,
		0.029498, 0.182807, -0.982706,
		32.169601, 38.249207, 33.943241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874119, 38.399258, 34.476017>,  <32.148952, 38.121239, 34.631134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874119, 38.399258, 34.476017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.665955, 38.533516, 34.161942>,  <32.541054, 38.614071, 33.973495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.665955, 38.533516, 34.161942>,  <32.874119, 38.399258, 34.476017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665955, 38.533516, 34.161942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451869, 0.888463, 0.080296,
		0.724558, -0.313014, -0.614033,
		-0.520413, 0.335642, -0.785185,
		32.509830, 38.634209, 33.926388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291855, 38.732891, 34.078213>,  <32.874119, 38.399258, 34.476017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291855, 38.732891, 34.078213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947514, 38.904701, 33.969074>,  <32.740910, 39.007790, 33.903591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947514, 38.904701, 33.969074>,  <33.291855, 38.732891, 34.078213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947514, 38.904701, 33.969074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400895, 0.902704, 0.156233,
		0.313405, 0.025112, -0.949288,
		-0.860849, 0.429529, -0.272844,
		32.689259, 39.033558, 33.887222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477795, 39.357090, 33.782455>,  <33.291855, 38.732891, 34.078213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477795, 39.357090, 33.782455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.082829, 39.419430, 33.793240>,  <32.845848, 39.456833, 33.799709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.082829, 39.419430, 33.793240>,  <33.477795, 39.357090, 33.782455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082829, 39.419430, 33.793240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157215, 0.985786, 0.059247,
		-0.017340, 0.062739, -0.997879,
		-0.987412, 0.155854, 0.026957,
		32.786606, 39.466187, 33.801327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310406, 39.922798, 33.321095>,  <33.477795, 39.357090, 33.782455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310406, 39.922798, 33.321095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.988319, 39.901001, 33.557281>,  <32.795067, 39.887924, 33.698994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.988319, 39.901001, 33.557281>,  <33.310406, 39.922798, 33.321095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988319, 39.901001, 33.557281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017646, 0.993126, 0.115716,
		-0.592717, 0.103596, -0.798720,
		-0.805217, -0.054493, 0.590471,
		32.746754, 39.884655, 33.734421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839676, 40.472488, 33.133755>,  <33.310406, 39.922798, 33.321095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839676, 40.472488, 33.133755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.731865, 40.380047, 33.507694>,  <32.667179, 40.324581, 33.732059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.731865, 40.380047, 33.507694>,  <32.839676, 40.472488, 33.133755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731865, 40.380047, 33.507694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018390, 0.969366, 0.244933,
		-0.962818, 0.083207, -0.257019,
		-0.269526, -0.231100, 0.934852,
		32.651009, 40.310719, 33.788151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205025, 40.912033, 33.301289>,  <32.839676, 40.472488, 33.133755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205025, 40.912033, 33.301289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.350548, 40.791664, 33.653900>,  <32.437862, 40.719444, 33.865467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.350548, 40.791664, 33.653900>,  <32.205025, 40.912033, 33.301289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350548, 40.791664, 33.653900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123702, 0.922389, 0.365919,
		-0.923223, -0.242172, 0.298350,
		0.363810, -0.300918, 0.881527,
		32.459690, 40.701389, 33.918358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792444, 41.294498, 33.795628>,  <32.205025, 40.912033, 33.301289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792444, 41.294498, 33.795628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.123306, 41.195221, 33.997307>,  <32.321823, 41.135654, 34.118317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.123306, 41.195221, 33.997307>,  <31.792444, 41.294498, 33.795628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123306, 41.195221, 33.997307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004782, 0.900268, 0.435310,
		-0.561956, -0.357657, 0.745847,
		0.827153, -0.248192, 0.504200,
		32.371452, 41.120762, 34.148567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703959, 41.561508, 34.531193>,  <31.792444, 41.294498, 33.795628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703959, 41.561508, 34.531193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094585, 41.511959, 34.460800>,  <32.328960, 41.482227, 34.418564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094585, 41.511959, 34.460800>,  <31.703959, 41.561508, 34.531193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094585, 41.511959, 34.460800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178795, 0.922141, 0.343057,
		0.119785, -0.366484, 0.922682,
		0.976568, -0.123877, -0.175984,
		32.387554, 41.474796, 34.408005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046112, 41.675194, 35.171379>,  <31.703959, 41.561508, 34.531193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046112, 41.675194, 35.171379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323116, 41.696632, 34.883614>,  <32.489319, 41.709496, 34.710957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323116, 41.696632, 34.883614>,  <32.046112, 41.675194, 35.171379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323116, 41.696632, 34.883614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340726, 0.854697, 0.391660,
		0.635867, -0.516353, 0.573631,
		0.692516, 0.053593, -0.719409,
		32.530872, 41.712711, 34.667789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.060883, 37.560852, 47.297443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.788677, 37.268288, 47.315105>,  <40.625355, 37.092751, 47.325703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.788677, 37.268288, 47.315105>,  <41.060883, 37.560852, 47.297443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788677, 37.268288, 47.315105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277111, 0.312671, 0.908541,
		-0.678319, 0.606035, -0.415456,
		-0.680509, -0.731408, 0.044152,
		40.584526, 37.048866, 47.328350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456879, 37.797920, 47.579758>,  <41.060883, 37.560852, 47.297443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456879, 37.797920, 47.579758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.394051, 37.409008, 47.649029>,  <40.356354, 37.175659, 47.690594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.394051, 37.409008, 47.649029>,  <40.456879, 37.797920, 47.579758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394051, 37.409008, 47.649029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251983, 0.209009, 0.944891,
		-0.954899, 0.104779, -0.277829,
		-0.157074, -0.972284, 0.173180,
		40.346928, 37.117321, 47.700981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834270, 37.853325, 47.863209>,  <40.456879, 37.797920, 47.579758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834270, 37.853325, 47.863209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.027378, 37.521091, 47.974251>,  <40.143242, 37.321751, 48.040878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.027378, 37.521091, 47.974251>,  <39.834270, 37.853325, 47.863209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027378, 37.521091, 47.974251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176458, 0.218235, 0.959811,
		-0.857785, -0.512355, -0.041205,
		0.482771, -0.830582, 0.277607,
		40.172211, 37.271915, 48.057533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355034, 37.472679, 48.307507>,  <39.834270, 37.853325, 47.863209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355034, 37.472679, 48.307507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724480, 37.346779, 48.395020>,  <39.946148, 37.271240, 48.447529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724480, 37.346779, 48.395020>,  <39.355034, 37.472679, 48.307507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724480, 37.346779, 48.395020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211771, 0.056758, 0.975670,
		-0.319511, -0.947476, -0.014233,
		0.923616, -0.314752, 0.218783,
		40.001564, 37.252354, 48.460655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282524, 36.919018, 48.687557>,  <39.355034, 37.472679, 48.307507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282524, 36.919018, 48.687557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.661068, 37.013939, 48.775280>,  <39.888195, 37.070892, 48.827915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.661068, 37.013939, 48.775280>,  <39.282524, 36.919018, 48.687557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661068, 37.013939, 48.775280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158273, -0.251276, 0.954887,
		0.281706, -0.938374, -0.200238,
		0.946357, 0.237306, 0.219306,
		39.944977, 37.085129, 48.841072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508938, 36.335400, 49.078232>,  <39.282524, 36.919018, 48.687557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508938, 36.335400, 49.078232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.746262, 36.649014, 49.151203>,  <39.888657, 36.837181, 49.194984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.746262, 36.649014, 49.151203>,  <39.508938, 36.335400, 49.078232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746262, 36.649014, 49.151203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144624, -0.119117, 0.982291,
		0.791879, -0.609182, 0.042718,
		0.593306, 0.784033, 0.182429,
		39.924252, 36.884224, 49.205933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043575, 36.096546, 49.514191>,  <39.508938, 36.335400, 49.078232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043575, 36.096546, 49.514191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.034454, 36.493626, 49.561569>,  <40.028980, 36.731873, 49.589996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.034454, 36.493626, 49.561569>,  <40.043575, 36.096546, 49.514191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034454, 36.493626, 49.561569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085691, -0.116100, 0.989534,
		0.996061, 0.032715, -0.082417,
		-0.022804, 0.992699, 0.118446,
		40.027615, 36.791435, 49.597103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634033, 36.319542, 50.022457>,  <40.043575, 36.096546, 49.514191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634033, 36.319542, 50.022457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.349457, 36.600170, 50.038723>,  <40.178711, 36.768547, 50.048485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.349457, 36.600170, 50.038723>,  <40.634033, 36.319542, 50.022457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349457, 36.600170, 50.038723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089374, 0.032928, 0.995454,
		0.697042, 0.711839, -0.086129,
		-0.711439, 0.701571, 0.040668,
		40.136024, 36.810642, 50.050922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759018, 36.628754, 50.635147>,  <40.634033, 36.319542, 50.022457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759018, 36.628754, 50.635147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.399834, 36.794346, 50.575436>,  <40.184322, 36.893703, 50.539608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.399834, 36.794346, 50.575436>,  <40.759018, 36.628754, 50.635147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399834, 36.794346, 50.575436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160867, 0.006954, 0.986952,
		0.409621, 0.910257, 0.060352,
		-0.897960, 0.413985, -0.149279,
		40.130447, 36.918541, 50.530651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664558, 37.229603, 51.044727>,  <40.759018, 36.628754, 50.635147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664558, 37.229603, 51.044727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.289074, 37.134266, 50.945118>,  <40.063782, 37.077065, 50.885353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.289074, 37.134266, 50.945118>,  <40.664558, 37.229603, 51.044727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289074, 37.134266, 50.945118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288845, 0.149611, 0.945614,
		-0.188123, 0.959588, -0.209285,
		-0.938711, -0.238342, -0.249027,
		40.007462, 37.062763, 50.870411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332474, 37.776711, 51.254288>,  <40.664558, 37.229603, 51.044727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332474, 37.776711, 51.254288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.085594, 37.462086, 51.246513>,  <39.937466, 37.273312, 51.241848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.085594, 37.462086, 51.246513>,  <40.332474, 37.776711, 51.254288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085594, 37.462086, 51.246513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313393, 0.223099, 0.923045,
		-0.721699, 0.575795, -0.384201,
		-0.617199, -0.786566, -0.019440,
		39.900433, 37.226116, 51.240681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678696, 38.046295, 51.480900>,  <40.332474, 37.776711, 51.254288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678696, 38.046295, 51.480900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670078, 37.648472, 51.521671>,  <39.664909, 37.409779, 51.546135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670078, 37.648472, 51.521671>,  <39.678696, 38.046295, 51.480900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670078, 37.648472, 51.521671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178629, 0.104138, 0.978390,
		-0.983680, 0.002872, -0.179901,
		-0.021545, -0.994559, 0.101925,
		39.663616, 37.350105, 51.552250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148186, 37.802528, 51.950249>,  <39.678696, 38.046295, 51.480900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148186, 37.802528, 51.950249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384464, 37.487877, 52.022141>,  <39.526230, 37.299088, 52.065277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384464, 37.487877, 52.022141>,  <39.148186, 37.802528, 51.950249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384464, 37.487877, 52.022141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306240, -0.012475, 0.951873,
		-0.746524, -0.617306, -0.248265,
		0.590693, -0.786625, 0.179731,
		39.561672, 37.251888, 52.076061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777313, 37.198925, 52.058846>,  <39.148186, 37.802528, 51.950249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777313, 37.198925, 52.058846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121956, 37.168804, 52.259632>,  <39.328743, 37.150730, 52.380104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121956, 37.168804, 52.259632>,  <38.777313, 37.198925, 52.058846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121956, 37.168804, 52.259632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507286, -0.094107, 0.856624,
		-0.017265, -0.992710, -0.119281,
		0.861605, -0.075299, 0.501963,
		39.380436, 37.146214, 52.410221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155937, 37.047974, 52.502720>,  <38.777313, 37.198925, 52.058846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155937, 37.047974, 52.502720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778938, 37.179035, 52.476368>,  <37.552738, 37.257671, 52.460556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778938, 37.179035, 52.476368>,  <38.155937, 37.047974, 52.502720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778938, 37.179035, 52.476368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119644, 0.146713, -0.981917,
		-0.312061, -0.933338, -0.177478,
		-0.942499, 0.327652, -0.065885,
		37.496189, 37.277332, 52.456604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818451, 36.728542, 51.913658>,  <38.155937, 37.047974, 52.502720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818451, 36.728542, 51.913658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.578693, 37.044868, 51.963207>,  <37.434841, 37.234665, 51.992939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.578693, 37.044868, 51.963207>,  <37.818451, 36.728542, 51.913658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578693, 37.044868, 51.963207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024081, 0.136873, -0.990296,
		-0.800095, -0.596556, -0.062997,
		-0.599389, 0.790814, 0.123877,
		37.398876, 37.282112, 52.000370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223091, 36.691124, 51.372940>,  <37.818451, 36.728542, 51.913658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223091, 36.691124, 51.372940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210171, 37.070889, 51.497890>,  <37.202419, 37.298748, 51.572861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210171, 37.070889, 51.497890>,  <37.223091, 36.691124, 51.372940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210171, 37.070889, 51.497890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182373, 0.301691, -0.935801,
		-0.982699, -0.087194, 0.163402,
		-0.032300, 0.949410, 0.312373,
		37.200481, 37.355713, 51.591602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550774, 36.994034, 51.189064>,  <37.223091, 36.691124, 51.372940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550774, 36.994034, 51.189064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802860, 37.302834, 51.222153>,  <36.954113, 37.488113, 51.242008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802860, 37.302834, 51.222153>,  <36.550774, 36.994034, 51.189064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802860, 37.302834, 51.222153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325880, 0.359721, -0.874301,
		-0.704716, 0.524044, 0.478281,
		0.630220, 0.771997, 0.082726,
		36.991928, 37.534431, 51.246971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218800, 37.505608, 50.825169>,  <36.550774, 36.994034, 51.189064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218800, 37.505608, 50.825169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594189, 37.642719, 50.841969>,  <36.819424, 37.724987, 50.852047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594189, 37.642719, 50.841969>,  <36.218800, 37.505608, 50.825169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594189, 37.642719, 50.841969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133945, 0.473378, -0.870616,
		-0.318312, 0.811427, 0.490168,
		0.938476, 0.342783, 0.041995,
		36.875732, 37.745556, 50.854568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108940, 38.220909, 50.591766>,  <36.218800, 37.505608, 50.825169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108940, 38.220909, 50.591766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495903, 38.129593, 50.547951>,  <36.728081, 38.074802, 50.521660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495903, 38.129593, 50.547951>,  <36.108940, 38.220909, 50.591766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495903, 38.129593, 50.547951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031020, 0.536187, -0.843529,
		0.251304, 0.812641, 0.525795,
		0.967411, -0.228292, -0.109538,
		36.786125, 38.061104, 50.515091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360584, 38.833035, 50.188816>,  <36.108940, 38.220909, 50.591766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360584, 38.833035, 50.188816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631645, 38.539280, 50.173492>,  <36.794281, 38.363029, 50.164299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631645, 38.539280, 50.173492>,  <36.360584, 38.833035, 50.188816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631645, 38.539280, 50.173492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073175, -0.015509, -0.997199,
		0.731732, 0.678558, -0.064248,
		0.677653, -0.734383, -0.038305,
		36.834942, 38.318966, 50.162003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916100, 39.068092, 49.711685>,  <36.360584, 38.833035, 50.188816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916100, 39.068092, 49.711685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951008, 38.669674, 49.718372>,  <36.971954, 38.430622, 49.722385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951008, 38.669674, 49.718372>,  <36.916100, 39.068092, 49.711685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951008, 38.669674, 49.718372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048245, -0.012537, -0.998757,
		0.995015, 0.087973, 0.046960,
		0.087275, -0.996044, 0.016719,
		36.977192, 38.370861, 49.723389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501034, 38.948959, 49.325020>,  <36.916100, 39.068092, 49.711685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501034, 38.948959, 49.325020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272469, 38.621346, 49.345676>,  <37.135330, 38.424778, 49.358070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272469, 38.621346, 49.345676>,  <37.501034, 38.948959, 49.325020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272469, 38.621346, 49.345676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044555, -0.031878, -0.998498,
		0.819453, -0.572854, -0.018277,
		-0.571411, -0.819037, 0.051646,
		37.101044, 38.375633, 49.361172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960621, 38.549847, 48.917858>,  <37.501034, 38.948959, 49.325020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960621, 38.549847, 48.917858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603333, 38.370193, 48.909561>,  <37.388958, 38.262402, 48.904583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603333, 38.370193, 48.909561>,  <37.960621, 38.549847, 48.917858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603333, 38.370193, 48.909561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049818, -0.053011, -0.997350,
		0.446842, -0.891892, 0.069725,
		-0.893225, -0.449131, -0.020745,
		37.335365, 38.235455, 48.903339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039532, 38.050957, 48.461033>,  <37.960621, 38.549847, 48.917858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039532, 38.050957, 48.461033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639893, 38.057659, 48.476639>,  <37.400108, 38.061680, 48.486004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639893, 38.057659, 48.476639>,  <38.039532, 38.050957, 48.461033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639893, 38.057659, 48.476639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042416, -0.351851, -0.935094,
		-0.001937, -0.935906, 0.352244,
		-0.999098, 0.016752, 0.039016,
		37.340164, 38.062687, 48.488342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888432, 37.396873, 48.188950>,  <38.039532, 38.050957, 48.461033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888432, 37.396873, 48.188950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566963, 37.631050, 48.146305>,  <37.374081, 37.771557, 48.120720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566963, 37.631050, 48.146305>,  <37.888432, 37.396873, 48.188950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566963, 37.631050, 48.146305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096141, -0.304544, -0.947634,
		-0.587257, -0.751335, 0.301039,
		-0.803670, 0.585447, -0.106612,
		37.325863, 37.806683, 48.114323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338188, 37.053043, 47.812309>,  <37.888432, 37.396873, 48.188950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338188, 37.053043, 47.812309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222389, 37.432941, 47.764694>,  <37.152912, 37.660881, 47.736126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222389, 37.432941, 47.764694>,  <37.338188, 37.053043, 47.812309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222389, 37.432941, 47.764694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057794, -0.141476, -0.988253,
		-0.955434, -0.279213, 0.095847,
		-0.289493, 0.949750, -0.119034,
		37.135540, 37.717865, 47.728985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748291, 37.026138, 47.451317>,  <37.338188, 37.053043, 47.812309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748291, 37.026138, 47.451317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864063, 37.403423, 47.386097>,  <36.933525, 37.629795, 47.346966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864063, 37.403423, 47.386097>,  <36.748291, 37.026138, 47.451317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864063, 37.403423, 47.386097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068797, -0.149399, -0.986381,
		-0.954723, 0.296706, 0.021650,
		0.289431, 0.943210, -0.163048,
		36.950893, 37.686386, 47.337181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028347, 37.051876, 47.230854>,  <36.748291, 37.026138, 47.451317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028347, 37.051876, 47.230854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921322, 36.668354, 47.192688>,  <35.857105, 36.438240, 47.169788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.921322, 36.668354, 47.192688>,  <36.028347, 37.051876, 47.230854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921322, 36.668354, 47.192688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158167, -0.053979, 0.985936,
		-0.950470, 0.278893, -0.137208,
		-0.267564, -0.958804, -0.095417,
		35.841053, 36.380714, 47.164062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421501, 37.001308, 47.646587>,  <36.028347, 37.051876, 47.230854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421501, 37.001308, 47.646587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.502911, 36.612774, 47.597477>,  <35.551758, 36.379654, 47.568008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.502911, 36.612774, 47.597477>,  <35.421501, 37.001308, 47.646587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502911, 36.612774, 47.597477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030942, -0.118959, 0.992417,
		-0.978580, -0.205783, 0.005844,
		0.203527, -0.971340, -0.122778,
		35.563969, 36.321373, 47.560642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918858, 36.705456, 47.999321>,  <35.421501, 37.001308, 47.646587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918858, 36.705456, 47.999321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172245, 36.397270, 47.970757>,  <35.324280, 36.212360, 47.953617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172245, 36.397270, 47.970757>,  <34.918858, 36.705456, 47.999321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172245, 36.397270, 47.970757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171152, -0.229530, 0.958135,
		-0.754601, -0.594728, -0.277267,
		0.633471, -0.770464, -0.071415,
		35.362286, 36.166130, 47.949333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554016, 36.054050, 48.231777>,  <34.918858, 36.705456, 47.999321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554016, 36.054050, 48.231777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949150, 35.998859, 48.260487>,  <35.186230, 35.965744, 48.277710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949150, 35.998859, 48.260487>,  <34.554016, 36.054050, 48.231777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949150, 35.998859, 48.260487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125695, -0.436504, 0.890878,
		-0.091589, -0.889060, -0.448536,
		0.987832, -0.137973, 0.071772,
		35.245499, 35.957466, 48.282017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668453, 35.496986, 48.456345>,  <34.554016, 36.054050, 48.231777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668453, 35.496986, 48.456345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016281, 35.647816, 48.583885>,  <35.224976, 35.738312, 48.660412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016281, 35.647816, 48.583885>,  <34.668453, 35.496986, 48.456345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016281, 35.647816, 48.583885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162119, -0.391922, 0.905602,
		0.466444, -0.839174, -0.279672,
		0.869567, 0.377073, 0.318856,
		35.277153, 35.760937, 48.679543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980560, 34.960987, 48.875423>,  <34.668453, 35.496986, 48.456345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980560, 34.960987, 48.875423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153797, 35.307095, 48.976414>,  <35.257740, 35.514759, 49.037006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153797, 35.307095, 48.976414>,  <34.980560, 34.960987, 48.875423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153797, 35.307095, 48.976414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037160, -0.262725, 0.964155,
		0.900585, -0.426946, -0.081630,
		0.433088, 0.865270, 0.252472,
		35.283722, 35.566677, 49.052155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320450, 34.784500, 49.460995>,  <34.980560, 34.960987, 48.875423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320450, 34.784500, 49.460995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298599, 35.183842, 49.468063>,  <35.285488, 35.423447, 49.472305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298599, 35.183842, 49.468063>,  <35.320450, 34.784500, 49.460995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298599, 35.183842, 49.468063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026952, -0.019162, 0.999453,
		0.998143, 0.054120, 0.027954,
		-0.054626, 0.998351, 0.017667,
		35.282211, 35.483345, 49.473362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910080, 34.365337, 49.715145>,  <35.320450, 34.784500, 49.460995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910080, 34.365337, 49.715145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753529, 33.999485, 49.755684>,  <35.659599, 33.779972, 49.780006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753529, 33.999485, 49.755684>,  <35.910080, 34.365337, 49.715145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753529, 33.999485, 49.755684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090600, -0.071297, -0.993332,
		0.915760, -0.397948, -0.054962,
		-0.391376, -0.914633, 0.101345,
		35.636116, 33.725094, 49.786087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339325, 33.927853, 49.256542>,  <35.910080, 34.365337, 49.715145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339325, 33.927853, 49.256542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990242, 33.741444, 49.314781>,  <35.780792, 33.629597, 49.349724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990242, 33.741444, 49.314781>,  <36.339325, 33.927853, 49.256542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990242, 33.741444, 49.314781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076074, -0.164770, -0.983394,
		0.482275, -0.869294, 0.108344,
		-0.872710, -0.466025, 0.145595,
		35.728428, 33.601635, 49.358459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553886, 33.430878, 48.787113>,  <36.339325, 33.927853, 49.256542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553886, 33.430878, 48.787113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159504, 33.425331, 48.853676>,  <35.922874, 33.422005, 48.893612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159504, 33.425331, 48.853676>,  <36.553886, 33.430878, 48.787113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159504, 33.425331, 48.853676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166440, 0.001310, -0.986051,
		0.013474, -0.999903, -0.003603,
		-0.985959, -0.013886, 0.166406,
		35.863716, 33.421173, 48.903599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272560, 32.865730, 48.414124>,  <36.553886, 33.430878, 48.787113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272560, 32.865730, 48.414124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965664, 33.117496, 48.463402>,  <35.781525, 33.268555, 48.492970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965664, 33.117496, 48.463402>,  <36.272560, 32.865730, 48.414124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965664, 33.117496, 48.463402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245291, -0.110488, -0.963133,
		-0.592597, -0.769175, 0.239161,
		-0.767242, 0.629414, 0.123197,
		35.735493, 33.306320, 48.500362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749390, 32.606926, 48.053261>,  <36.272560, 32.865730, 48.414124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749390, 32.606926, 48.053261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614216, 32.980381, 48.100803>,  <35.533112, 33.204453, 48.129330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614216, 32.980381, 48.100803>,  <35.749390, 32.606926, 48.053261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614216, 32.980381, 48.100803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409986, -0.032357, -0.911518,
		-0.847179, -0.356761, 0.393712,
		-0.337933, 0.933635, 0.118855,
		35.512836, 33.260471, 48.136459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992844, 32.646774, 47.981873>,  <35.749390, 32.606926, 48.053261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992844, 32.646774, 47.981873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139786, 33.005909, 47.884758>,  <35.227951, 33.221390, 47.826488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139786, 33.005909, 47.884758>,  <34.992844, 32.646774, 47.981873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139786, 33.005909, 47.884758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487366, -0.036504, -0.872435,
		-0.792164, 0.438819, 0.424164,
		0.367357, 0.897834, -0.242782,
		35.249992, 33.275261, 47.811924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425163, 32.939789, 47.588131>,  <34.992844, 32.646774, 47.981873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425163, 32.939789, 47.588131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752888, 33.156490, 47.513042>,  <34.949520, 33.286510, 47.467987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752888, 33.156490, 47.513042>,  <34.425163, 32.939789, 47.588131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752888, 33.156490, 47.513042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298302, 0.123160, -0.946492,
		-0.489644, 0.831466, 0.262511,
		0.819308, 0.541752, -0.187724,
		34.998680, 33.319016, 47.456726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.475651, 33.746193, 52.600601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.398621, 34.082684, 52.398514>,  <40.352402, 34.284580, 52.277260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.398621, 34.082684, 52.398514>,  <40.475651, 33.746193, 52.600601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398621, 34.082684, 52.398514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230658, -0.539235, -0.809952,
		-0.953788, -0.039443, 0.297880,
		-0.192574, 0.841231, -0.505218,
		40.340847, 34.335052, 52.246948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892288, 33.563709, 52.182907>,  <40.475651, 33.746193, 52.600601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892288, 33.563709, 52.182907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.034588, 33.903126, 52.026237>,  <40.119968, 34.106777, 51.932236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.034588, 33.903126, 52.026237>,  <39.892288, 33.563709, 52.182907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034588, 33.903126, 52.026237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125543, -0.371906, -0.919742,
		-0.926110, 0.376373, -0.025777,
		0.355752, 0.848546, -0.391676,
		40.141315, 34.157688, 51.908733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495102, 33.546993, 51.521255>,  <39.892288, 33.563709, 52.182907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495102, 33.546993, 51.521255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.752113, 33.848713, 51.467293>,  <39.906319, 34.029743, 51.434917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.752113, 33.848713, 51.467293>,  <39.495102, 33.546993, 51.521255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752113, 33.848713, 51.467293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098924, -0.092929, -0.990746,
		-0.759853, 0.649924, 0.014909,
		0.642525, 0.754296, -0.134905,
		39.944870, 34.075001, 51.426823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195393, 34.062145, 50.974281>,  <39.495102, 33.546993, 51.521255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195393, 34.062145, 50.974281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.594646, 34.063660, 50.998661>,  <39.834198, 34.064568, 51.013287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.594646, 34.063660, 50.998661>,  <39.195393, 34.062145, 50.974281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594646, 34.063660, 50.998661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060566, -0.188513, -0.980201,
		0.007778, 0.982063, -0.188391,
		0.998134, 0.003786, 0.060946,
		39.894085, 34.064796, 51.016945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459934, 34.624466, 50.503998>,  <39.195393, 34.062145, 50.974281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459934, 34.624466, 50.503998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.767212, 34.372627, 50.550434>,  <39.951580, 34.221523, 50.578297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.767212, 34.372627, 50.550434>,  <39.459934, 34.624466, 50.503998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767212, 34.372627, 50.550434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191094, 0.052424, -0.980171,
		0.611028, 0.775149, 0.160585,
		0.768197, -0.629599, 0.116094,
		39.997673, 34.183746, 50.585262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962723, 34.908573, 50.096066>,  <39.459934, 34.624466, 50.503998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962723, 34.908573, 50.096066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.036064, 34.515739, 50.113483>,  <40.080070, 34.280041, 50.123936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.036064, 34.515739, 50.113483>,  <39.962723, 34.908573, 50.096066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036064, 34.515739, 50.113483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286514, 0.011013, -0.958013,
		0.940368, 0.188131, 0.283399,
		0.183353, -0.982082, 0.043545,
		40.091068, 34.221115, 50.126549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667000, 34.849545, 49.811718>,  <39.962723, 34.908573, 50.096066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667000, 34.849545, 49.811718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.508659, 34.482483, 49.825592>,  <40.413654, 34.262245, 49.833916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.508659, 34.482483, 49.825592>,  <40.667000, 34.849545, 49.811718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508659, 34.482483, 49.825592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196344, -0.121471, -0.972982,
		0.897077, -0.378351, 0.228262,
		-0.395856, -0.917658, 0.034682,
		40.389904, 34.207184, 49.835995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056721, 34.476532, 49.411278>,  <40.667000, 34.849545, 49.811718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056721, 34.476532, 49.411278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.760086, 34.210442, 49.445957>,  <40.582104, 34.050789, 49.466766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.760086, 34.210442, 49.445957>,  <41.056721, 34.476532, 49.411278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760086, 34.210442, 49.445957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121019, -0.259774, -0.958056,
		0.659846, -0.699994, 0.273152,
		-0.741591, -0.665226, 0.086698,
		40.537609, 34.010872, 49.471966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395485, 33.902088, 49.309155>,  <41.056721, 34.476532, 49.411278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395485, 33.902088, 49.309155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.011192, 33.877167, 49.200993>,  <40.780617, 33.862213, 49.136093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.011192, 33.877167, 49.200993>,  <41.395485, 33.902088, 49.309155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011192, 33.877167, 49.200993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269401, -0.443042, -0.855065,
		-0.066530, -0.894333, 0.442428,
		-0.960727, -0.062303, -0.270409,
		40.722973, 33.858475, 49.119869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291512, 33.239338, 49.221790>,  <41.395485, 33.902088, 49.309155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291512, 33.239338, 49.221790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.002834, 33.419151, 49.011238>,  <40.829628, 33.527039, 48.884907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.002834, 33.419151, 49.011238>,  <41.291512, 33.239338, 49.221790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002834, 33.419151, 49.011238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248029, -0.542008, -0.802938,
		-0.646254, -0.710031, 0.279664,
		-0.721691, 0.449537, -0.526383,
		40.786327, 33.554012, 48.853325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117348, 32.749615, 48.705784>,  <41.291512, 33.239338, 49.221790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117348, 32.749615, 48.705784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.920235, 33.053379, 48.535858>,  <40.801968, 33.235638, 48.433903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.920235, 33.053379, 48.535858>,  <41.117348, 32.749615, 48.705784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920235, 33.053379, 48.535858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258220, -0.338595, -0.904807,
		-0.830958, -0.555566, -0.029242,
		-0.492779, 0.759408, -0.424817,
		40.772400, 33.281200, 48.408413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565071, 32.494003, 48.235073>,  <41.117348, 32.749615, 48.705784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565071, 32.494003, 48.235073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.662991, 32.866512, 48.127144>,  <40.721741, 33.090019, 48.062386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.662991, 32.866512, 48.127144>,  <40.565071, 32.494003, 48.235073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662991, 32.866512, 48.127144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200832, -0.320959, -0.925555,
		-0.948547, 0.172382, -0.265598,
		0.244795, 0.931273, -0.269825,
		40.736427, 33.145893, 48.046196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807873, 32.282692, 48.272640>,  <40.565071, 32.494003, 48.235073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807873, 32.282692, 48.272640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.464916, 32.106243, 48.166588>,  <39.259144, 32.000374, 48.102955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.464916, 32.106243, 48.166588>,  <39.807873, 32.282692, 48.272640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464916, 32.106243, 48.166588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202414, -0.184618, 0.961740,
		-0.473197, 0.878250, 0.068999,
		-0.857387, -0.441126, -0.265131,
		39.207699, 31.973906, 48.087048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136162, 32.705936, 48.490543>,  <39.807873, 32.282692, 48.272640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136162, 32.705936, 48.490543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.116005, 32.306507, 48.483402>,  <39.103912, 32.066849, 48.479118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.116005, 32.306507, 48.483402>,  <39.136162, 32.705936, 48.490543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116005, 32.306507, 48.483402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012090, -0.017264, 0.999778,
		-0.998656, 0.050593, -0.011203,
		-0.050389, -0.998570, -0.017853,
		39.100887, 32.006935, 48.478046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691650, 32.483833, 49.047302>,  <39.136162, 32.705936, 48.490543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691650, 32.483833, 49.047302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.867916, 32.138512, 48.948891>,  <38.973675, 31.931320, 48.889843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.867916, 32.138512, 48.948891>,  <38.691650, 32.483833, 49.047302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867916, 32.138512, 48.948891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025682, -0.286083, 0.957861,
		-0.897304, -0.415777, -0.148238,
		0.440664, -0.863300, -0.246025,
		39.000114, 31.879522, 48.875084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218903, 32.062504, 49.314678>,  <38.691650, 32.483833, 49.047302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218903, 32.062504, 49.314678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.559750, 31.856985, 49.274853>,  <38.764259, 31.733675, 49.250957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.559750, 31.856985, 49.274853>,  <38.218903, 32.062504, 49.314678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559750, 31.856985, 49.274853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133708, -0.397648, 0.907743,
		-0.505984, -0.760191, -0.407541,
		0.852116, -0.513795, -0.099560,
		38.815384, 31.702847, 49.244984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096767, 31.537941, 49.624317>,  <38.218903, 32.062504, 49.314678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096767, 31.537941, 49.624317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.494350, 31.511251, 49.659187>,  <38.732899, 31.495237, 49.680107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.494350, 31.511251, 49.659187>,  <38.096767, 31.537941, 49.624317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494350, 31.511251, 49.659187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101851, -0.264221, 0.959069,
		-0.040961, -0.962151, -0.269420,
		0.993956, -0.066725, 0.087173,
		38.792538, 31.491234, 49.685341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186008, 30.886677, 49.966778>,  <38.096767, 31.537941, 49.624317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186008, 30.886677, 49.966778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.524620, 31.088829, 50.033684>,  <38.727787, 31.210119, 50.073826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.524620, 31.088829, 50.033684>,  <38.186008, 30.886677, 49.966778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524620, 31.088829, 50.033684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038015, -0.256012, 0.965926,
		0.530980, -0.824045, -0.197510,
		0.846531, 0.505379, 0.167264,
		38.778580, 31.240442, 50.083862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485954, 30.469776, 50.382614>,  <38.186008, 30.886677, 49.966778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485954, 30.469776, 50.382614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.648926, 30.833275, 50.418800>,  <38.746708, 31.051374, 50.440510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.648926, 30.833275, 50.418800>,  <38.485954, 30.469776, 50.382614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648926, 30.833275, 50.418800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068919, -0.129369, 0.989199,
		0.910634, -0.396790, -0.115338,
		0.407426, 0.908747, 0.090462,
		38.771152, 31.105900, 50.445938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963696, 30.423563, 50.940845>,  <38.485954, 30.469776, 50.382614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963696, 30.423563, 50.940845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.879112, 30.814411, 50.949936>,  <38.828362, 31.048920, 50.955391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.879112, 30.814411, 50.949936>,  <38.963696, 30.423563, 50.940845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879112, 30.814411, 50.949936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087105, -0.042003, 0.995313,
		0.973498, 0.208490, 0.093994,
		-0.211461, 0.977122, 0.022730,
		38.815674, 31.107548, 50.956757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360382, 30.719587, 51.464195>,  <38.963696, 30.423563, 50.940845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360382, 30.719587, 51.464195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.082714, 31.000116, 51.399357>,  <38.916115, 31.168434, 51.360455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.082714, 31.000116, 51.399357>,  <39.360382, 30.719587, 51.464195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082714, 31.000116, 51.399357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195928, 0.032597, 0.980076,
		0.692633, 0.712099, 0.114781,
		-0.694170, 0.701322, -0.162098,
		38.874462, 31.210512, 51.350727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340553, 31.135332, 52.111267>,  <39.360382, 30.719587, 51.464195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340553, 31.135332, 52.111267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.996956, 31.194147, 51.915096>,  <38.790798, 31.229437, 51.797394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.996956, 31.194147, 51.915096>,  <39.340553, 31.135332, 52.111267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996956, 31.194147, 51.915096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479561, 0.104421, 0.871274,
		0.179322, 0.983603, -0.019182,
		-0.858991, 0.147039, -0.490423,
		38.739258, 31.238258, 51.767971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046120, 31.777721, 52.435097>,  <39.340553, 31.135332, 52.111267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046120, 31.777721, 52.435097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.757679, 31.558830, 52.265133>,  <38.584614, 31.427496, 52.163155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.757679, 31.558830, 52.265133>,  <39.046120, 31.777721, 52.435097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757679, 31.558830, 52.265133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579938, 0.141221, 0.802327,
		-0.379051, 0.824983, -0.419194,
		-0.721105, -0.547229, -0.424909,
		38.541348, 31.394661, 52.137661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397293, 32.194336, 52.401077>,  <39.046120, 31.777721, 52.435097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397293, 32.194336, 52.401077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.286190, 31.811035, 52.373909>,  <38.219528, 31.581057, 52.357609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.286190, 31.811035, 52.373909>,  <38.397293, 32.194336, 52.401077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286190, 31.811035, 52.373909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726398, 0.163231, 0.667609,
		-0.628648, 0.234771, -0.741407,
		-0.277756, -0.958248, -0.067922,
		38.202862, 31.523561, 52.353531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537945, 32.198425, 52.381241>,  <38.397293, 32.194336, 52.401077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537945, 32.198425, 52.381241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.638199, 31.823870, 52.479511>,  <37.698353, 31.599136, 52.538475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.638199, 31.823870, 52.479511>,  <37.537945, 32.198425, 52.381241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638199, 31.823870, 52.479511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772066, -0.040246, 0.634266,
		-0.584033, -0.348649, -0.733041,
		0.250639, -0.936389, 0.245675,
		37.713390, 31.542953, 52.553215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867336, 31.833094, 52.309971>,  <37.537945, 32.198425, 52.381241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867336, 31.833094, 52.309971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107838, 31.631815, 52.558258>,  <37.252136, 31.511047, 52.707230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107838, 31.631815, 52.558258>,  <36.867336, 31.833094, 52.309971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107838, 31.631815, 52.558258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734012, -0.040809, 0.677909,
		-0.315793, -0.863206, -0.393890,
		0.601250, -0.503199, 0.620717,
		37.288212, 31.480856, 52.744473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694050, 32.294186, 51.692577>,  <36.867336, 31.833094, 52.309971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694050, 32.294186, 51.692577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.452885, 32.438435, 51.977238>,  <36.308186, 32.524986, 52.148033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.452885, 32.438435, 51.977238>,  <36.694050, 32.294186, 51.692577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452885, 32.438435, 51.977238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492729, 0.533233, -0.687663,
		-0.627463, -0.765252, -0.143803,
		-0.602916, 0.360627, 0.711646,
		36.272011, 32.546623, 52.190731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053951, 32.090561, 51.710541>,  <36.694050, 32.294186, 51.692577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053951, 32.090561, 51.710541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.072441, 32.461185, 51.859856>,  <36.083534, 32.683559, 51.949444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.072441, 32.461185, 51.859856>,  <36.053951, 32.090561, 51.710541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072441, 32.461185, 51.859856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494892, 0.345850, -0.797164,
		-0.867724, -0.147886, 0.474537,
		0.046229, 0.926562, 0.373289,
		36.086311, 32.739155, 51.971844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450230, 32.347137, 51.579884>,  <36.053951, 32.090561, 51.710541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450230, 32.347137, 51.579884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644482, 32.688744, 51.654522>,  <35.761032, 32.893707, 51.699303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644482, 32.688744, 51.654522>,  <35.450230, 32.347137, 51.579884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644482, 32.688744, 51.654522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435273, 0.421348, -0.795615,
		-0.758090, 0.305157, 0.576350,
		0.485631, 0.854017, 0.186593,
		35.790173, 32.944950, 51.710499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996090, 32.832844, 51.509605>,  <35.450230, 32.347137, 51.579884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996090, 32.832844, 51.509605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361076, 32.986526, 51.453339>,  <35.580070, 33.078735, 51.419579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361076, 32.986526, 51.453339>,  <34.996090, 32.832844, 51.509605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361076, 32.986526, 51.453339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233941, 0.207868, -0.949770,
		-0.335666, 0.899543, 0.279554,
		0.912469, 0.384205, -0.140666,
		35.634819, 33.101788, 51.411140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873928, 33.400871, 51.248600>,  <34.996090, 32.832844, 51.509605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873928, 33.400871, 51.248600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.259670, 33.363052, 51.149742>,  <35.491116, 33.340363, 51.090427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.259670, 33.363052, 51.149742>,  <34.873928, 33.400871, 51.248600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259670, 33.363052, 51.149742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193160, 0.386812, -0.901701,
		0.180849, 0.917299, 0.354762,
		0.964356, -0.094545, -0.247140,
		35.548977, 33.334690, 51.075600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958927, 34.021404, 50.904110>,  <34.873928, 33.400871, 51.248600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958927, 34.021404, 50.904110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.250500, 33.771271, 50.792671>,  <35.425446, 33.621193, 50.725807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.250500, 33.771271, 50.792671>,  <34.958927, 34.021404, 50.904110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250500, 33.771271, 50.792671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151762, 0.249222, -0.956482,
		0.667549, 0.739493, 0.086766,
		0.728936, -0.625330, -0.278595,
		35.469181, 33.583672, 50.709091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309612, 34.400623, 50.402847>,  <34.958927, 34.021404, 50.904110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309612, 34.400623, 50.402847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429199, 34.024151, 50.339855>,  <35.500950, 33.798267, 50.302059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429199, 34.024151, 50.339855>,  <35.309612, 34.400623, 50.402847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429199, 34.024151, 50.339855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126475, 0.124488, -0.984127,
		0.945846, 0.314135, -0.081819,
		0.298964, -0.941181, -0.157477,
		35.518887, 33.741798, 50.292610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736099, 34.996983, 50.168362>,  <35.309612, 34.400623, 50.402847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736099, 34.996983, 50.168362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.511822, 35.312984, 50.069157>,  <35.377254, 35.502586, 50.009632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.511822, 35.312984, 50.069157>,  <35.736099, 34.996983, 50.168362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511822, 35.312984, 50.069157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177860, 0.177629, 0.967891,
		0.808693, 0.586806, 0.040914,
		-0.560698, 0.790004, -0.248017,
		35.343613, 35.549984, 49.994751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138069, 35.593094, 50.507149>,  <35.736099, 34.996983, 50.168362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138069, 35.593094, 50.507149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.768093, 35.715309, 50.416698>,  <35.546108, 35.788639, 50.362431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.768093, 35.715309, 50.416698>,  <36.138069, 35.593094, 50.507149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768093, 35.715309, 50.416698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053028, 0.485348, 0.872712,
		0.376394, 0.819198, -0.432716,
		-0.924941, 0.305537, -0.226122,
		35.490612, 35.806969, 50.348862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056629, 36.324547, 50.837814>,  <36.138069, 35.593094, 50.507149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056629, 36.324547, 50.837814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.699039, 36.150818, 50.793671>,  <35.484486, 36.046581, 50.767185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.699039, 36.150818, 50.793671>,  <36.056629, 36.324547, 50.837814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699039, 36.150818, 50.793671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180917, 0.124500, 0.975586,
		-0.409980, 0.892112, -0.189876,
		-0.893972, -0.434323, -0.110356,
		35.430847, 36.020519, 50.760563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734917, 36.667530, 51.353813>,  <36.056629, 36.324547, 50.837814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734917, 36.667530, 51.353813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531849, 36.335144, 51.262794>,  <35.410007, 36.135712, 51.208183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531849, 36.335144, 51.262794>,  <35.734917, 36.667530, 51.353813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531849, 36.335144, 51.262794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143356, -0.178953, 0.973357,
		-0.849542, 0.526763, -0.028274,
		-0.507669, -0.830961, -0.227543,
		35.379547, 36.085857, 51.194530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232826, 36.695129, 51.802963>,  <35.734917, 36.667530, 51.353813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232826, 36.695129, 51.802963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.244019, 36.317387, 51.671875>,  <35.250732, 36.090740, 51.593220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.244019, 36.317387, 51.671875>,  <35.232826, 36.695129, 51.802963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244019, 36.317387, 51.671875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171703, -0.327519, 0.929112,
		-0.984751, 0.030274, -0.171313,
		0.027980, -0.944359, -0.327723,
		35.252411, 36.034081, 51.573559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781002, 36.446972, 52.303055>,  <35.232826, 36.695129, 51.802963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781002, 36.446972, 52.303055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990131, 36.152473, 52.131191>,  <35.115608, 35.975777, 52.028072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990131, 36.152473, 52.131191>,  <34.781002, 36.446972, 52.303055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990131, 36.152473, 52.131191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144100, -0.420442, 0.895803,
		-0.840174, -0.530259, -0.113723,
		0.522822, -0.736243, -0.429655,
		35.146976, 35.931599, 52.002296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432846, 35.824360, 52.649071>,  <34.781002, 36.446972, 52.303055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432846, 35.824360, 52.649071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777618, 35.686646, 52.500187>,  <34.984482, 35.604015, 52.410858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777618, 35.686646, 52.500187>,  <34.432846, 35.824360, 52.649071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777618, 35.686646, 52.500187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245758, -0.358416, 0.900634,
		-0.443485, -0.867757, -0.224317,
		0.861930, -0.344290, -0.372211,
		35.036198, 35.583359, 52.388523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529369, 35.106792, 52.878773>,  <34.432846, 35.824360, 52.649071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529369, 35.106792, 52.878773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895596, 35.249630, 52.804771>,  <35.115330, 35.335331, 52.760372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895596, 35.249630, 52.804771>,  <34.529369, 35.106792, 52.878773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895596, 35.249630, 52.804771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314284, -0.348265, 0.883140,
		0.250933, -0.866716, -0.431088,
		0.915564, 0.357093, -0.185004,
		35.170265, 35.356758, 52.749271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896088, 34.633831, 53.132324>,  <34.529369, 35.106792, 52.878773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896088, 34.633831, 53.132324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.142376, 34.948784, 53.144424>,  <35.290150, 35.137756, 53.151684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.142376, 34.948784, 53.144424>,  <34.896088, 34.633831, 53.132324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142376, 34.948784, 53.144424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379816, -0.330208, 0.864119,
		0.690384, -0.520564, -0.502377,
		0.615718, 0.787385, 0.030252,
		35.327091, 35.184998, 53.153500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.302826, 35.915745, 37.227211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571671, 36.194096, 37.328419>,  <37.732979, 36.361107, 37.389145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571671, 36.194096, 37.328419>,  <37.302826, 35.915745, 37.227211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571671, 36.194096, 37.328419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176894, -0.180916, 0.967459,
		0.719007, -0.695001, 0.001500,
		0.672114, 0.695875, 0.253021,
		37.773304, 36.402859, 37.404324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784321, 35.564461, 37.569698>,  <37.302826, 35.915745, 37.227211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784321, 35.564461, 37.569698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800983, 35.952377, 37.665840>,  <37.810982, 36.185127, 37.723526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800983, 35.952377, 37.665840>,  <37.784321, 35.564461, 37.569698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800983, 35.952377, 37.665840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479602, -0.191632, 0.856306,
		0.876497, -0.150944, 0.457131,
		0.041654, 0.969790, 0.240358,
		37.813480, 36.243313, 37.737946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154934, 35.619659, 38.292717>,  <37.784321, 35.564461, 37.569698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154934, 35.619659, 38.292717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930271, 35.943634, 38.225132>,  <37.795475, 36.138020, 38.184582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930271, 35.943634, 38.225132>,  <38.154934, 35.619659, 38.292717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930271, 35.943634, 38.225132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388235, -0.077660, 0.918283,
		0.730629, 0.581354, 0.358063,
		-0.561654, 0.809936, -0.168961,
		37.761776, 36.186615, 38.174442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133614, 35.891098, 38.961838>,  <38.154934, 35.619659, 38.292717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133614, 35.891098, 38.961838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840378, 36.087936, 38.774040>,  <37.664436, 36.206039, 38.661362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840378, 36.087936, 38.774040>,  <38.133614, 35.891098, 38.961838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840378, 36.087936, 38.774040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563189, -0.052191, 0.824679,
		0.381320, 0.868974, 0.315405,
		-0.733085, 0.492099, -0.469495,
		37.620453, 36.235565, 38.633190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891602, 36.516113, 39.449333>,  <38.133614, 35.891098, 38.961838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891602, 36.516113, 39.449333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597210, 36.440056, 39.189430>,  <37.420574, 36.394421, 39.033489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597210, 36.440056, 39.189430>,  <37.891602, 36.516113, 39.449333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597210, 36.440056, 39.189430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661175, -0.004468, 0.750218,
		-0.145555, 0.981746, -0.122432,
		-0.735977, -0.190146, -0.649756,
		37.376415, 36.383011, 38.994503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335384, 37.009212, 39.528858>,  <37.891602, 36.516113, 39.449333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335384, 37.009212, 39.528858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188034, 36.675163, 39.365463>,  <37.099625, 36.474731, 39.267426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188034, 36.675163, 39.365463>,  <37.335384, 37.009212, 39.528858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188034, 36.675163, 39.365463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591077, -0.128758, 0.796272,
		-0.717585, 0.534774, -0.446194,
		-0.368374, -0.835128, -0.408487,
		37.077522, 36.424625, 39.242916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640877, 36.999352, 39.639988>,  <37.335384, 37.009212, 39.528858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640877, 36.999352, 39.639988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689671, 36.606743, 39.581009>,  <36.718948, 36.371178, 39.545620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689671, 36.606743, 39.581009>,  <36.640877, 36.999352, 39.639988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689671, 36.606743, 39.581009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666867, -0.191082, 0.720261,
		-0.735124, 0.010465, -0.677852,
		0.121988, -0.981518, -0.147448,
		36.726269, 36.312286, 39.536774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969330, 36.710098, 39.785061>,  <36.640877, 36.999352, 39.639988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969330, 36.710098, 39.785061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190620, 36.378094, 39.756741>,  <36.323395, 36.178890, 39.739750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190620, 36.378094, 39.756741>,  <35.969330, 36.710098, 39.785061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190620, 36.378094, 39.756741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519595, -0.410259, 0.749472,
		-0.651120, -0.377842, -0.658239,
		0.553231, -0.830014, -0.070803,
		36.356590, 36.129089, 39.735500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443218, 36.193405, 39.820698>,  <35.969330, 36.710098, 39.785061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443218, 36.193405, 39.820698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779263, 36.013336, 39.941738>,  <35.980888, 35.905296, 40.014362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779263, 36.013336, 39.941738>,  <35.443218, 36.193405, 39.820698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779263, 36.013336, 39.941738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476749, -0.346728, 0.807769,
		-0.258711, -0.822878, -0.505906,
		0.840106, -0.450169, 0.302604,
		36.031296, 35.878284, 40.032520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259712, 35.495068, 40.015442>,  <35.443218, 36.193405, 39.820698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259712, 35.495068, 40.015442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602966, 35.589214, 40.197960>,  <35.808918, 35.645702, 40.307468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602966, 35.589214, 40.197960>,  <35.259712, 35.495068, 40.015442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602966, 35.589214, 40.197960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362449, -0.351734, 0.863084,
		0.363639, -0.906026, -0.216525,
		0.858136, 0.235372, 0.456292,
		35.860409, 35.659824, 40.334846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463612, 34.948460, 40.439312>,  <35.259712, 35.495068, 40.015442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463612, 34.948460, 40.439312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639412, 35.274120, 40.591099>,  <35.744892, 35.469517, 40.682171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639412, 35.274120, 40.591099>,  <35.463612, 34.948460, 40.439312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639412, 35.274120, 40.591099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362650, -0.225659, 0.904192,
		0.821779, -0.535009, 0.196074,
		0.439505, 0.814152, 0.379463,
		35.771263, 35.518368, 40.704937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563961, 34.784081, 41.152771>,  <35.463612, 34.948460, 40.439312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563961, 34.784081, 41.152771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628448, 35.178463, 41.170235>,  <35.667141, 35.415092, 41.180714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628448, 35.178463, 41.170235>,  <35.563961, 34.784081, 41.152771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628448, 35.178463, 41.170235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341210, 0.014170, 0.939880,
		0.926059, -0.166420, 0.338701,
		0.161215, 0.985953, 0.043662,
		35.676811, 35.474251, 41.183334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127781, 34.388279, 41.356430>,  <35.563961, 34.784081, 41.152771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127781, 34.388279, 41.356430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971230, 34.028900, 41.436047>,  <35.877296, 33.813274, 41.483814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971230, 34.028900, 41.436047>,  <36.127781, 34.388279, 41.356430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971230, 34.028900, 41.436047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225581, -0.303364, -0.925788,
		0.892151, -0.317437, 0.321403,
		-0.391382, -0.898445, 0.199039,
		35.853813, 33.759365, 41.495758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606392, 33.940498, 41.025650>,  <36.127781, 34.388279, 41.356430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606392, 33.940498, 41.025650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246304, 33.772758, 41.072552>,  <36.030251, 33.672115, 41.100693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246304, 33.772758, 41.072552>,  <36.606392, 33.940498, 41.025650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246304, 33.772758, 41.072552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000773, -0.267738, -0.963491,
		0.435432, -0.867446, 0.240700,
		-0.900221, -0.419349, 0.117253,
		35.976238, 33.646954, 41.107727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607620, 33.393684, 40.634338>,  <36.606392, 33.940498, 41.025650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607620, 33.393684, 40.634338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211475, 33.397057, 40.689648>,  <35.973789, 33.399082, 40.722832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211475, 33.397057, 40.689648>,  <36.607620, 33.393684, 40.634338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211475, 33.397057, 40.689648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134297, -0.303241, -0.943403,
		0.033973, -0.952876, 0.301450,
		-0.990359, 0.008434, 0.138270,
		35.914368, 33.399586, 40.731129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268440, 32.692295, 40.442471>,  <36.607620, 33.393684, 40.634338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268440, 32.692295, 40.442471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980591, 32.966251, 40.396744>,  <35.807880, 33.130623, 40.369308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980591, 32.966251, 40.396744>,  <36.268440, 32.692295, 40.442471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980591, 32.966251, 40.396744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171288, -0.334646, -0.926646,
		-0.672904, -0.647257, 0.358133,
		-0.719625, 0.684888, -0.114317,
		35.764702, 33.171719, 40.362450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814720, 32.315014, 39.986019>,  <36.268440, 32.692295, 40.442471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814720, 32.315014, 39.986019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692986, 32.695881, 39.996964>,  <35.619946, 32.924400, 40.003529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692986, 32.695881, 39.996964>,  <35.814720, 32.315014, 39.986019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692986, 32.695881, 39.996964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330357, -0.078565, -0.940581,
		-0.893444, -0.295294, 0.338466,
		-0.304339, 0.952171, 0.027359,
		35.601685, 32.981533, 40.005173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056950, 32.374241, 39.685059>,  <35.814720, 32.315014, 39.986019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056950, 32.374241, 39.685059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210590, 32.741364, 39.644863>,  <35.302776, 32.961636, 39.620747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210590, 32.741364, 39.644863>,  <35.056950, 32.374241, 39.685059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210590, 32.741364, 39.644863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279752, 0.011964, -0.959998,
		-0.879888, 0.396851, 0.261354,
		0.384103, 0.917805, -0.100493,
		35.325821, 33.016705, 39.614716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590141, 32.888809, 39.358120>,  <35.056950, 32.374241, 39.685059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590141, 32.888809, 39.358120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940434, 33.063885, 39.276611>,  <35.150608, 33.168930, 39.227707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940434, 33.063885, 39.276611>,  <34.590141, 32.888809, 39.358120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940434, 33.063885, 39.276611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331091, 0.237258, -0.913284,
		-0.351389, 0.867258, 0.352689,
		0.875731, 0.437690, -0.203771,
		35.203152, 33.195190, 39.215481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493008, 33.664856, 39.215263>,  <34.590141, 32.888809, 39.358120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493008, 33.664856, 39.215263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844753, 33.568832, 39.050781>,  <35.055801, 33.511219, 38.952091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844753, 33.568832, 39.050781>,  <34.493008, 33.664856, 39.215263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844753, 33.568832, 39.050781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311411, 0.363329, -0.878075,
		0.360193, 0.900201, 0.244742,
		0.879366, -0.240061, -0.411201,
		35.108562, 33.496815, 38.927422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761723, 34.232883, 38.883953>,  <34.493008, 33.664856, 39.215263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761723, 34.232883, 38.883953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936882, 33.915928, 38.714077>,  <35.041977, 33.725754, 38.612152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936882, 33.915928, 38.714077>,  <34.761723, 34.232883, 38.883953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936882, 33.915928, 38.714077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295190, 0.319476, -0.900443,
		0.849179, 0.519670, -0.094006,
		0.437901, -0.792387, -0.424694,
		35.068253, 33.678211, 38.586670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121929, 34.479347, 38.252544>,  <34.761723, 34.232883, 38.883953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121929, 34.479347, 38.252544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080494, 34.088375, 38.178894>,  <35.055634, 33.853790, 38.134705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080494, 34.088375, 38.178894>,  <35.121929, 34.479347, 38.252544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080494, 34.088375, 38.178894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413008, 0.210676, -0.886025,
		0.904817, -0.015738, -0.425510,
		-0.103589, -0.977429, -0.184123,
		35.049416, 33.795147, 38.123657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383583, 34.507912, 37.528454>,  <35.121929, 34.479347, 38.252544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383583, 34.507912, 37.528454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201488, 34.156166, 37.584282>,  <35.092232, 33.945118, 37.617779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201488, 34.156166, 37.584282>,  <35.383583, 34.507912, 37.528454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201488, 34.156166, 37.584282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340966, 0.027371, -0.939677,
		0.822495, -0.475369, -0.312293,
		-0.455241, -0.879361, 0.139572,
		35.064915, 33.892357, 37.626152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605652, 34.057533, 36.994358>,  <35.383583, 34.507912, 37.528454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605652, 34.057533, 36.994358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246605, 33.947113, 37.131805>,  <35.031178, 33.880859, 37.214275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246605, 33.947113, 37.131805>,  <35.605652, 34.057533, 36.994358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246605, 33.947113, 37.131805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338756, -0.066712, -0.938506,
		0.282000, -0.958825, -0.033633,
		-0.897619, -0.276052, 0.343621,
		34.977318, 33.864296, 37.234890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014725, 34.156433, 36.298565>,  <35.605652, 34.057533, 36.994358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014725, 34.156433, 36.298565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119789, 34.059765, 36.672218>,  <36.182827, 34.001762, 36.896412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119789, 34.059765, 36.672218>,  <36.014725, 34.156433, 36.298565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119789, 34.059765, 36.672218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150150, -0.966570, -0.207841,
		0.953134, -0.085668, -0.290166,
		0.262660, -0.241669, 0.934134,
		36.198586, 33.987263, 36.952457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529549, 33.646809, 36.259979>,  <36.014725, 34.156433, 36.298565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529549, 33.646809, 36.259979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306171, 33.621422, 36.590824>,  <36.172146, 33.606190, 36.789330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306171, 33.621422, 36.590824>,  <36.529549, 33.646809, 36.259979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306171, 33.621422, 36.590824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200099, -0.957321, -0.208558,
		0.805047, -0.281972, 0.521912,
		-0.558445, -0.063465, 0.827110,
		36.138638, 33.602383, 36.838959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729733, 33.078800, 36.894932>,  <36.529549, 33.646809, 36.259979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729733, 33.078800, 36.894932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348179, 33.164146, 36.810474>,  <36.119247, 33.215355, 36.759800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348179, 33.164146, 36.810474>,  <36.729733, 33.078800, 36.894932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348179, 33.164146, 36.810474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258549, -0.941361, 0.216774,
		-0.152510, 0.261369, 0.953114,
		-0.953883, 0.213367, -0.211144,
		36.062016, 33.228157, 36.747131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628006, 33.169701, 37.569569>,  <36.729733, 33.078800, 36.894932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628006, 33.169701, 37.569569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952454, 32.935997, 37.558697>,  <37.147121, 32.795776, 37.552174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952454, 32.935997, 37.558697>,  <36.628006, 33.169701, 37.569569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952454, 32.935997, 37.558697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160140, -0.266538, 0.950428,
		-0.562538, -0.766553, -0.309756,
		0.811114, -0.584256, -0.027182,
		37.195789, 32.760719, 37.550541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573017, 32.347301, 37.651402>,  <36.628006, 33.169701, 37.569569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573017, 32.347301, 37.651402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907825, 32.516708, 37.789986>,  <37.108711, 32.618351, 37.873138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907825, 32.516708, 37.789986>,  <36.573017, 32.347301, 37.651402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907825, 32.516708, 37.789986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173139, -0.395656, 0.901931,
		0.519060, -0.814919, -0.257845,
		0.837018, 0.423513, 0.346464,
		37.158932, 32.643761, 37.893925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657856, 32.010639, 38.261967>,  <36.573017, 32.347301, 37.651402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657856, 32.010639, 38.261967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952477, 32.274117, 38.323433>,  <37.129250, 32.432205, 38.360313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952477, 32.274117, 38.323433>,  <36.657856, 32.010639, 38.261967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952477, 32.274117, 38.323433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241398, -0.468228, 0.849993,
		0.631839, -0.588968, -0.503882,
		0.736550, 0.658695, 0.153669,
		37.173443, 32.471725, 38.369534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284939, 31.588263, 38.468304>,  <36.657856, 32.010639, 38.261967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284939, 31.588263, 38.468304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295944, 31.967999, 38.593525>,  <37.302547, 32.195839, 38.668655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295944, 31.967999, 38.593525>,  <37.284939, 31.588263, 38.468304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295944, 31.967999, 38.593525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422429, -0.294872, 0.857091,
		0.905978, 0.108662, -0.409140,
		0.027510, 0.949338, 0.313050,
		37.304199, 32.252800, 38.687439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984844, 31.796556, 38.627197>,  <37.284939, 31.588263, 38.468304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984844, 31.796556, 38.627197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782749, 32.067699, 38.840832>,  <37.661491, 32.230385, 38.969013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782749, 32.067699, 38.840832>,  <37.984844, 31.796556, 38.627197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782749, 32.067699, 38.840832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487757, -0.286245, 0.824716,
		0.711920, 0.677178, -0.186010,
		-0.505236, 0.677860, 0.534082,
		37.631180, 32.271057, 39.001057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365200, 31.950129, 39.256870>,  <37.984844, 31.796556, 38.627197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365200, 31.950129, 39.256870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014038, 32.118164, 39.348793>,  <37.803341, 32.218987, 39.403946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014038, 32.118164, 39.348793>,  <38.365200, 31.950129, 39.256870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014038, 32.118164, 39.348793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247823, -0.012031, 0.968731,
		0.409718, 0.907403, -0.093545,
		-0.877904, 0.420089, 0.229804,
		37.750668, 32.244190, 39.417736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522919, 32.468781, 39.703281>,  <38.365200, 31.950129, 39.256870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522919, 32.468781, 39.703281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136543, 32.383247, 39.761562>,  <37.904716, 32.331928, 39.796532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136543, 32.383247, 39.761562>,  <38.522919, 32.468781, 39.703281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136543, 32.383247, 39.761562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142900, 0.028586, 0.989324,
		-0.215717, 0.976451, 0.002944,
		-0.965943, -0.213835, 0.145701,
		37.846760, 32.319096, 39.805271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321724, 32.835735, 40.278912>,  <38.522919, 32.468781, 39.703281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321724, 32.835735, 40.278912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032578, 32.559341, 40.279366>,  <37.859089, 32.393505, 40.279636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032578, 32.559341, 40.279366>,  <38.321724, 32.835735, 40.278912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032578, 32.559341, 40.279366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052839, -0.053643, 0.997161,
		-0.688963, 0.720876, 0.075288,
		-0.722868, -0.690985, 0.001132,
		37.815716, 32.352047, 40.279705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719658, 33.044697, 40.861439>,  <38.321724, 32.835735, 40.278912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719658, 33.044697, 40.861439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681007, 32.651234, 40.800659>,  <37.657818, 32.415157, 40.764191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681007, 32.651234, 40.800659>,  <37.719658, 33.044697, 40.861439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681007, 32.651234, 40.800659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051627, -0.157407, 0.986183,
		-0.993981, 0.087442, 0.065992,
		-0.096622, -0.983655, -0.151945,
		37.652020, 32.356136, 40.755077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128056, 32.817459, 41.287022>,  <37.719658, 33.044697, 40.861439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128056, 32.817459, 41.287022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316422, 32.468899, 41.232033>,  <37.429440, 32.259762, 41.199039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316422, 32.468899, 41.232033>,  <37.128056, 32.817459, 41.287022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316422, 32.468899, 41.232033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081877, -0.198333, 0.976709,
		-0.878372, -0.448688, -0.164745,
		0.470912, -0.871403, -0.137473,
		37.457695, 32.207478, 41.190792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809391, 32.315266, 41.752533>,  <37.128056, 32.817459, 41.287022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809391, 32.315266, 41.752533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162849, 32.149361, 41.665684>,  <37.374924, 32.049816, 41.613575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162849, 32.149361, 41.665684>,  <36.809391, 32.315266, 41.752533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162849, 32.149361, 41.665684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141272, -0.205930, 0.968315,
		-0.446334, -0.886321, -0.123375,
		0.883645, -0.414763, -0.217126,
		37.427944, 32.024933, 41.600548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796452, 31.649548, 42.059254>,  <36.809391, 32.315266, 41.752533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796452, 31.649548, 42.059254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178692, 31.742615, 41.986935>,  <37.408035, 31.798454, 41.943542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178692, 31.742615, 41.986935>,  <36.796452, 31.649548, 42.059254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178692, 31.742615, 41.986935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215384, -0.132837, 0.967452,
		0.201078, -0.963442, -0.177052,
		0.955603, 0.232667, -0.180800,
		37.465374, 31.812414, 41.932693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192795, 31.171404, 42.345600>,  <36.796452, 31.649548, 42.059254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192795, 31.171404, 42.345600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452206, 31.475163, 42.324711>,  <37.607853, 31.657417, 42.312180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452206, 31.475163, 42.324711>,  <37.192795, 31.171404, 42.345600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452206, 31.475163, 42.324711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239132, -0.138128, 0.961112,
		0.722652, -0.635797, -0.271176,
		0.648529, 0.759396, -0.052221,
		37.646763, 31.702982, 42.309044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796810, 30.939457, 42.667988>,  <37.192795, 31.171404, 42.345600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796810, 30.939457, 42.667988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806355, 31.339304, 42.673550>,  <37.812080, 31.579212, 42.676888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806355, 31.339304, 42.673550>,  <37.796810, 30.939457, 42.667988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806355, 31.339304, 42.673550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397921, -0.022260, 0.917150,
		0.917109, -0.016350, -0.398300,
		0.023861, 0.999618, 0.013909,
		37.813515, 31.639189, 42.677723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493870, 31.201130, 42.936493>,  <37.796810, 30.939457, 42.667988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493870, 31.201130, 42.936493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237270, 31.502619, 42.993607>,  <38.083313, 31.683512, 43.027874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237270, 31.502619, 42.993607>,  <38.493870, 31.201130, 42.936493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237270, 31.502619, 42.993607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367952, 0.138999, 0.919397,
		0.673122, 0.642327, -0.366501,
		-0.641497, 0.753721, 0.142783,
		38.044823, 31.728735, 43.036442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860596, 31.638752, 43.259773>,  <38.493870, 31.201130, 42.936493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860596, 31.638752, 43.259773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486008, 31.746632, 43.349472>,  <38.261253, 31.811359, 43.403290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486008, 31.746632, 43.349472>,  <38.860596, 31.638752, 43.259773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486008, 31.746632, 43.349472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285671, 0.215525, 0.933778,
		0.203510, 0.938515, -0.278879,
		-0.936470, 0.269701, 0.224245,
		38.205067, 31.827541, 43.416744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952400, 32.179199, 43.647976>,  <38.860596, 31.638752, 43.259773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952400, 32.179199, 43.647976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570446, 32.088085, 43.724197>,  <38.341274, 32.033417, 43.769928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570446, 32.088085, 43.724197>,  <38.952400, 32.179199, 43.647976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570446, 32.088085, 43.724197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152335, 0.175099, 0.972694,
		-0.254933, 0.957838, -0.132499,
		-0.954884, -0.227787, 0.190550,
		38.283981, 32.019749, 43.781361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723770, 32.703449, 44.116459>,  <38.952400, 32.179199, 43.647976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723770, 32.703449, 44.116459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466171, 32.404079, 44.179863>,  <38.311611, 32.224457, 44.217903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466171, 32.404079, 44.179863>,  <38.723770, 32.703449, 44.116459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466171, 32.404079, 44.179863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123675, 0.102614, 0.987003,
		-0.754963, 0.655233, 0.026478,
		-0.644000, -0.748425, 0.158506,
		38.272972, 32.179550, 44.227413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161533, 32.948189, 44.557117>,  <38.723770, 32.703449, 44.116459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161533, 32.948189, 44.557117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182919, 32.551891, 44.607029>,  <38.195751, 32.314114, 44.636978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182919, 32.551891, 44.607029>,  <38.161533, 32.948189, 44.557117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182919, 32.551891, 44.607029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169169, 0.132142, 0.976689,
		-0.984136, -0.031110, 0.174668,
		0.053466, -0.990743, 0.124783,
		38.198959, 32.254669, 44.644463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884838, 32.863701, 45.263515>,  <38.161533, 32.948189, 44.557117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884838, 32.863701, 45.263515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064602, 32.513851, 45.190788>,  <38.172459, 32.303940, 45.147152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064602, 32.513851, 45.190788>,  <37.884838, 32.863701, 45.263515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064602, 32.513851, 45.190788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235139, -0.080539, 0.968619,
		-0.861825, -0.478059, 0.169464,
		0.449409, -0.874627, -0.181821,
		38.199425, 32.251465, 45.136242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550476, 32.361050, 45.642246>,  <37.884838, 32.863701, 45.263515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550476, 32.361050, 45.642246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899540, 32.187592, 45.552441>,  <38.108978, 32.083515, 45.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899540, 32.187592, 45.552441>,  <37.550476, 32.361050, 45.642246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899540, 32.187592, 45.552441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157168, -0.185879, 0.969921,
		-0.462338, -0.881701, -0.094054,
		0.872663, -0.433649, -0.224514,
		38.161339, 32.057495, 45.485085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539425, 31.749817, 46.046890>,  <37.550476, 32.361050, 45.642246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539425, 31.749817, 46.046890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927368, 31.778711, 45.953808>,  <38.160133, 31.796047, 45.897957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927368, 31.778711, 45.953808>,  <37.539425, 31.749817, 46.046890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927368, 31.778711, 45.953808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242309, -0.386318, 0.889969,
		-0.025609, -0.919533, -0.392178,
		0.969861, 0.072237, -0.232705,
		38.218327, 31.800383, 45.883995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881866, 31.259766, 46.355686>,  <37.539425, 31.749817, 46.046890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881866, 31.259766, 46.355686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188019, 31.507832, 46.286880>,  <38.371712, 31.656672, 46.245598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188019, 31.507832, 46.286880>,  <37.881866, 31.259766, 46.355686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188019, 31.507832, 46.286880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332635, -0.152384, 0.930663,
		0.550949, -0.769531, -0.322920,
		0.765381, 0.620163, -0.172017,
		38.417633, 31.693880, 46.235275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529797, 30.894527, 46.627472>,  <37.881866, 31.259766, 46.355686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529797, 30.894527, 46.627472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592903, 31.288673, 46.601658>,  <38.630768, 31.525162, 46.586170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592903, 31.288673, 46.601658>,  <38.529797, 30.894527, 46.627472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592903, 31.288673, 46.601658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444494, -0.012506, 0.895694,
		0.881780, -0.169993, -0.439963,
		0.157764, 0.985366, -0.064534,
		38.640232, 31.584284, 46.582298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289795, 31.014942, 46.852585>,  <38.529797, 30.894527, 46.627472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289795, 31.014942, 46.852585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108459, 31.370024, 46.884762>,  <38.999660, 31.583073, 46.904068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108459, 31.370024, 46.884762>,  <39.289795, 31.014942, 46.852585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108459, 31.370024, 46.884762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338346, 0.087882, 0.936909,
		0.824627, 0.451952, -0.340190,
		-0.453335, 0.887703, 0.080447,
		38.972458, 31.636335, 46.908897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762466, 31.389530, 47.118080>,  <39.289795, 31.014942, 46.852585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762466, 31.389530, 47.118080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426781, 31.589670, 47.203285>,  <39.225368, 31.709755, 47.254410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426781, 31.589670, 47.203285>,  <39.762466, 31.389530, 47.118080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426781, 31.589670, 47.203285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233817, -0.021654, 0.972039,
		0.490972, 0.865553, -0.098818,
		-0.839212, 0.500349, 0.213013,
		39.175018, 31.739775, 47.267189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968746, 32.020615, 47.539356>,  <39.762466, 31.389530, 47.118080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968746, 32.020615, 47.539356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579659, 31.960052, 47.609673>,  <39.346207, 31.923716, 47.651863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579659, 31.960052, 47.609673>,  <39.968746, 32.020615, 47.539356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579659, 31.960052, 47.609673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165894, 0.075765, 0.983229,
		-0.162186, 0.985564, -0.048580,
		-0.972715, -0.151407, 0.175787,
		39.287846, 31.914631, 47.662407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121368, 32.689369, 47.449947>,  <39.968746, 32.020615, 47.539356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121368, 32.689369, 47.449947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390488, 32.979397, 47.508755>,  <40.551960, 33.153412, 47.544041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390488, 32.979397, 47.508755>,  <40.121368, 32.689369, 47.449947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390488, 32.979397, 47.508755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298938, -0.084652, -0.950510,
		-0.676740, 0.683453, -0.273705,
		0.672799, 0.725069, 0.147023,
		40.592327, 33.196918, 47.552860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114552, 33.034782, 46.793251>,  <40.121368, 32.689369, 47.449947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114552, 33.034782, 46.793251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465477, 33.123081, 46.963707>,  <40.676033, 33.176060, 47.065979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465477, 33.123081, 46.963707>,  <40.114552, 33.034782, 46.793251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465477, 33.123081, 46.963707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462103, -0.148863, -0.874243,
		-0.129553, 0.963903, -0.232609,
		0.877312, 0.220750, 0.426137,
		40.728672, 33.189304, 47.091549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423542, 33.508186, 46.340446>,  <40.114552, 33.034782, 46.793251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423542, 33.508186, 46.340446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730507, 33.375221, 46.559746>,  <40.914688, 33.295444, 46.691326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730507, 33.375221, 46.559746>,  <40.423542, 33.508186, 46.340446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730507, 33.375221, 46.559746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596828, 0.057960, -0.800273,
		0.234241, 0.941353, 0.242870,
		0.767416, -0.332408, 0.548249,
		40.960732, 33.275497, 46.724220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976147, 34.002937, 46.287979>,  <40.423542, 33.508186, 46.340446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976147, 34.002937, 46.287979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112293, 33.636021, 46.370663>,  <41.193981, 33.415871, 46.420273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112293, 33.636021, 46.370663>,  <40.976147, 34.002937, 46.287979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112293, 33.636021, 46.370663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387523, -0.063454, -0.919674,
		0.856725, 0.393129, 0.333874,
		0.340364, -0.917291, 0.206709,
		41.214401, 33.360832, 46.432674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667324, 34.009865, 46.245888>,  <40.976147, 34.002937, 46.287979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667324, 34.009865, 46.245888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569263, 33.625965, 46.191063>,  <41.510426, 33.395626, 46.158169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569263, 33.625965, 46.191063>,  <41.667324, 34.009865, 46.245888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569263, 33.625965, 46.191063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548350, -0.020678, -0.835993,
		0.799507, -0.280106, 0.531346,
		-0.245154, -0.959746, -0.137064,
		41.495716, 33.338039, 46.149944>
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
