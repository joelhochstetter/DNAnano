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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.219898, 52.842670, 49.689819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394196, 53.185867, 49.798615>,  <36.498775, 53.391785, 49.863892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394196, 53.185867, 49.798615>,  <36.219898, 52.842670, 49.689819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394196, 53.185867, 49.798615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899868, -0.408859, -0.151897,
		-0.019121, 0.310943, -0.950236,
		0.435744, 0.857991, 0.271989,
		36.524918, 53.443264, 49.880211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564190, 53.244980, 49.085449>,  <36.219898, 52.842670, 49.689819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564190, 53.244980, 49.085449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707470, 53.152870, 49.447372>,  <36.793438, 53.097607, 49.664524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707470, 53.152870, 49.447372>,  <36.564190, 53.244980, 49.085449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707470, 53.152870, 49.447372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638152, -0.647012, -0.417298,
		0.681511, 0.726877, -0.084808,
		0.358196, -0.230272, 0.904804,
		36.814930, 53.083790, 49.718815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297710, 53.298180, 49.062294>,  <36.564190, 53.244980, 49.085449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297710, 53.298180, 49.062294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226940, 53.053623, 49.370811>,  <37.184479, 52.906887, 49.555923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226940, 53.053623, 49.370811>,  <37.297710, 53.298180, 49.062294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226940, 53.053623, 49.370811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746607, -0.593991, -0.299587,
		0.641308, 0.522851, 0.561561,
		-0.176923, -0.611394, 0.771295,
		37.173862, 52.870205, 49.602200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921211, 53.011322, 49.022228>,  <37.297710, 53.298180, 49.062294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921211, 53.011322, 49.022228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652958, 52.771107, 49.196404>,  <37.492004, 52.626980, 49.300911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652958, 52.771107, 49.196404>,  <37.921211, 53.011322, 49.022228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652958, 52.771107, 49.196404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421494, -0.791543, -0.442496,
		0.610406, -0.113216, 0.783956,
		-0.670632, -0.600535, 0.435442,
		37.451767, 52.590946, 49.327038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470798, 53.491451, 48.690411>,  <37.921211, 53.011322, 49.022228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470798, 53.491451, 48.690411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073441, 53.504299, 48.734486>,  <37.835026, 53.512009, 48.760929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073441, 53.504299, 48.734486>,  <38.470798, 53.491451, 48.690411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073441, 53.504299, 48.734486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059930, 0.963938, 0.259290,
		-0.097881, 0.264180, -0.959494,
		-0.993392, 0.032123, 0.110184,
		37.775421, 53.513935, 48.767540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058308, 53.440422, 48.141827>,  <38.470798, 53.491451, 48.690411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058308, 53.440422, 48.141827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426006, 53.327164, 48.032421>,  <38.646626, 53.259209, 47.966778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426006, 53.327164, 48.032421>,  <38.058308, 53.440422, 48.141827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426006, 53.327164, 48.032421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333070, -0.188998, -0.923766,
		0.209867, 0.940271, -0.268043,
		0.919250, -0.283146, -0.273512,
		38.701782, 53.242222, 47.950367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120865, 53.643581, 47.463726>,  <38.058308, 53.440422, 48.141827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120865, 53.643581, 47.463726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420849, 53.383377, 47.511711>,  <38.600838, 53.227253, 47.540504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420849, 53.383377, 47.511711>,  <38.120865, 53.643581, 47.463726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420849, 53.383377, 47.511711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231763, -0.428268, -0.873426,
		0.619552, 0.627231, -0.471949,
		0.749961, -0.650513, 0.119966,
		38.645836, 53.188225, 47.547703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554245, 53.688702, 46.882694>,  <38.120865, 53.643581, 47.463726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554245, 53.688702, 46.882694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550117, 53.333420, 47.066429>,  <38.547642, 53.120251, 47.176670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550117, 53.333420, 47.066429>,  <38.554245, 53.688702, 46.882694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550117, 53.333420, 47.066429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085933, -0.456874, -0.885371,
		0.996248, -0.048610, -0.071610,
		-0.010321, -0.888203, 0.459336,
		38.547020, 53.066959, 47.204231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143265, 53.381760, 46.607132>,  <38.554245, 53.688702, 46.882694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143265, 53.381760, 46.607132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852768, 53.130142, 46.718033>,  <38.678471, 52.979172, 46.784573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852768, 53.130142, 46.718033>,  <39.143265, 53.381760, 46.607132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852768, 53.130142, 46.718033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029543, -0.374381, -0.926804,
		0.686802, -0.681276, 0.253308,
		-0.726243, -0.629048, 0.277253,
		38.634895, 52.941429, 46.801208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130001, 52.583725, 46.446842>,  <39.143265, 53.381760, 46.607132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130001, 52.583725, 46.446842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740795, 52.653595, 46.507156>,  <38.507271, 52.695518, 46.543343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740795, 52.653595, 46.507156>,  <39.130001, 52.583725, 46.446842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740795, 52.653595, 46.507156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230134, -0.686750, -0.689502,
		-0.016890, -0.705594, 0.708415,
		-0.973012, 0.174676, 0.150782,
		38.448891, 52.705997, 46.552391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133026, 52.091446, 47.050709>,  <39.130001, 52.583725, 46.446842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133026, 52.091446, 47.050709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016499, 51.872849, 46.736645>,  <38.946583, 51.741692, 46.548206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016499, 51.872849, 46.736645>,  <39.133026, 52.091446, 47.050709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016499, 51.872849, 46.736645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939801, -0.316748, -0.128234,
		-0.178619, -0.775251, 0.605872,
		-0.291322, -0.546495, -0.785159,
		38.929100, 51.708900, 46.501099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410603, 51.973022, 47.690300>,  <39.133026, 52.091446, 47.050709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410603, 51.973022, 47.690300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722183, 51.724270, 47.722530>,  <39.909130, 51.575016, 47.741867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722183, 51.724270, 47.722530>,  <39.410603, 51.973022, 47.690300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722183, 51.724270, 47.722530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371246, 0.560884, 0.739991,
		-0.505381, -0.546505, 0.667774,
		0.778952, -0.621885, 0.080572,
		39.955868, 51.537704, 47.746700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800922, 52.342178, 48.161018>,  <39.410603, 51.973022, 47.690300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800922, 52.342178, 48.161018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043755, 52.049129, 48.037918>,  <40.189453, 51.873299, 47.964058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043755, 52.049129, 48.037918>,  <39.800922, 52.342178, 48.161018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043755, 52.049129, 48.037918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719035, 0.341583, 0.605236,
		-0.338287, -0.588714, 0.734151,
		0.607084, -0.732624, -0.307752,
		40.225880, 51.829342, 47.945591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981140, 51.908978, 48.672932>,  <39.800922, 52.342178, 48.161018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981140, 51.908978, 48.672932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271942, 51.930153, 48.399094>,  <40.446423, 51.942860, 48.234791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271942, 51.930153, 48.399094>,  <39.981140, 51.908978, 48.672932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271942, 51.930153, 48.399094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611449, 0.403708, 0.680551,
		0.312405, -0.913355, 0.261124,
		0.727003, 0.052944, -0.684591,
		40.490044, 51.946037, 48.193718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495190, 51.529842, 48.941341>,  <39.981140, 51.908978, 48.672932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495190, 51.529842, 48.941341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663124, 51.801498, 48.700508>,  <40.763885, 51.964493, 48.556007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663124, 51.801498, 48.700508>,  <40.495190, 51.529842, 48.941341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663124, 51.801498, 48.700508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568411, 0.320426, 0.757784,
		0.707566, -0.660376, -0.251505,
		0.419834, 0.679140, -0.602087,
		40.789074, 52.005241, 48.519882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129230, 51.367783, 48.663483>,  <40.495190, 51.529842, 48.941341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129230, 51.367783, 48.663483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084869, 51.760502, 48.725147>,  <41.058250, 51.996136, 48.762146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084869, 51.760502, 48.725147>,  <41.129230, 51.367783, 48.663483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084869, 51.760502, 48.725147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680983, -0.037904, 0.731317,
		0.723852, 0.186086, -0.664387,
		-0.110905, 0.981802, 0.154158,
		41.051598, 52.055042, 48.771393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671600, 51.977848, 48.512909>,  <41.129230, 51.367783, 48.663483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671600, 51.977848, 48.512909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444439, 52.038143, 48.836578>,  <41.308144, 52.074322, 49.030781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444439, 52.038143, 48.836578>,  <41.671600, 51.977848, 48.512909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444439, 52.038143, 48.836578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777242, -0.225335, 0.587468,
		0.270891, 0.962549, 0.010806,
		-0.567902, 0.150741, 0.809176,
		41.274067, 52.083366, 49.079330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734962, 52.009323, 49.167805>,  <41.671600, 51.977848, 48.512909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734962, 52.009323, 49.167805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924099, 52.066223, 49.515640>,  <42.037582, 52.100365, 49.724342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924099, 52.066223, 49.515640>,  <41.734962, 52.009323, 49.167805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924099, 52.066223, 49.515640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880884, -0.052201, -0.470444,
		-0.021528, 0.988453, -0.149991,
		0.472841, 0.142252, 0.869589,
		42.065952, 52.108898, 49.776516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314449, 52.541882, 49.174667>,  <41.734962, 52.009323, 49.167805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314449, 52.541882, 49.174667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396378, 52.260742, 49.447151>,  <42.445534, 52.092056, 49.610641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396378, 52.260742, 49.447151>,  <42.314449, 52.541882, 49.174667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396378, 52.260742, 49.447151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907982, -0.123472, -0.400404,
		0.365535, 0.700538, 0.612888,
		0.204823, -0.702853, 0.681209,
		42.457825, 52.049885, 49.651512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993160, 52.645985, 49.278488>,  <42.314449, 52.541882, 49.174667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993160, 52.645985, 49.278488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926662, 52.275726, 49.414455>,  <42.886765, 52.053570, 49.496037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926662, 52.275726, 49.414455>,  <42.993160, 52.645985, 49.278488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926662, 52.275726, 49.414455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883901, -0.292693, -0.364760,
		0.437129, 0.239814, 0.866838,
		-0.166243, -0.925646, 0.339916,
		42.876789, 51.998032, 49.516430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621510, 52.418652, 49.671638>,  <42.993160, 52.645985, 49.278488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621510, 52.418652, 49.671638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436802, 52.123600, 49.474594>,  <43.325977, 51.946568, 49.356365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436802, 52.123600, 49.474594>,  <43.621510, 52.418652, 49.671638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436802, 52.123600, 49.474594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852767, -0.216388, -0.475357,
		0.244043, -0.639590, 0.728950,
		-0.461770, -0.737632, -0.492613,
		43.298271, 51.902309, 49.326809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146969, 52.649197, 50.245522>,  <43.621510, 52.418652, 49.671638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146969, 52.649197, 50.245522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900471, 52.884464, 50.036026>,  <43.752571, 53.025623, 49.910328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900471, 52.884464, 50.036026>,  <44.146969, 52.649197, 50.245522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900471, 52.884464, 50.036026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315299, 0.793651, 0.520294,
		0.721686, 0.155493, -0.674531,
		-0.616244, 0.588167, -0.523740,
		43.715599, 53.060913, 49.878902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497677, 53.200752, 50.018211>,  <44.146969, 52.649197, 50.245522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497677, 53.200752, 50.018211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107117, 53.285587, 50.034485>,  <43.872780, 53.336487, 50.044250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107117, 53.285587, 50.034485>,  <44.497677, 53.200752, 50.018211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107117, 53.285587, 50.034485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179509, 0.692363, 0.698863,
		0.120053, 0.689675, -0.714097,
		-0.976403, 0.212088, 0.040683,
		43.814198, 53.349213, 50.046688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974308, 53.676197, 50.227806>,  <44.497677, 53.200752, 50.018211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974308, 53.676197, 50.227806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033440, 53.280720, 50.237854>,  <45.068916, 53.043434, 50.243881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033440, 53.280720, 50.237854>,  <44.974308, 53.676197, 50.227806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033440, 53.280720, 50.237854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974894, 0.149944, 0.164615,
		-0.166520, 0.000153, 0.986038,
		0.147826, -0.988694, 0.025117,
		45.077785, 52.984112, 50.245388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454369, 53.602676, 50.834148>,  <44.974308, 53.676197, 50.227806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454369, 53.602676, 50.834148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459152, 53.296505, 50.576782>,  <45.462021, 53.112804, 50.422363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459152, 53.296505, 50.576782>,  <45.454369, 53.602676, 50.834148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459152, 53.296505, 50.576782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997819, -0.032637, 0.057370,
		-0.064911, -0.642696, 0.763366,
		0.011957, -0.765426, -0.643413,
		45.462738, 53.066875, 50.383759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720852, 52.987659, 51.157490>,  <45.454369, 53.602676, 50.834148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720852, 52.987659, 51.157490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770962, 53.006359, 50.761082>,  <45.801025, 53.017578, 50.523235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770962, 53.006359, 50.761082>,  <45.720852, 52.987659, 51.157490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770962, 53.006359, 50.761082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991147, -0.050182, 0.122919,
		-0.043985, -0.997645, -0.052620,
		0.125270, 0.046748, -0.991021,
		45.808544, 53.020382, 50.463776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098866, 52.371132, 50.944672>,  <45.720852, 52.987659, 51.157490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098866, 52.371132, 50.944672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129906, 52.630028, 50.641342>,  <46.148529, 52.785366, 50.459343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129906, 52.630028, 50.641342>,  <46.098866, 52.371132, 50.944672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129906, 52.630028, 50.641342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958445, -0.257866, -0.122015,
		-0.274520, -0.717345, -0.640356,
		0.077599, 0.647241, -0.758325,
		46.153187, 52.824200, 50.413845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286907, 51.997524, 50.234245>,  <46.098866, 52.371132, 50.944672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286907, 51.997524, 50.234245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389362, 52.384014, 50.245613>,  <46.450836, 52.615906, 50.252434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389362, 52.384014, 50.245613>,  <46.286907, 51.997524, 50.234245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.389362, 52.384014, 50.245613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926564, -0.237039, -0.292046,
		-0.275445, 0.101138, -0.955982,
		0.256142, 0.966221, 0.028420,
		46.466206, 52.673882, 50.254139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674709, 52.105404, 49.664783>,  <46.286907, 51.997524, 50.234245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674709, 52.105404, 49.664783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767696, 52.379868, 49.940506>,  <46.823490, 52.544544, 50.105942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767696, 52.379868, 49.940506>,  <46.674709, 52.105404, 49.664783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.767696, 52.379868, 49.940506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969531, -0.107198, -0.220271,
		-0.077248, 0.719512, -0.690170,
		0.232472, 0.686157, 0.689308,
		46.837437, 52.585716, 50.147297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.358517, 52.130096, 49.643951>,  <46.674709, 52.105404, 49.664783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.358517, 52.130096, 49.643951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315605, 52.437870, 49.895813>,  <47.289860, 52.622532, 50.046932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315605, 52.437870, 49.895813>,  <47.358517, 52.130096, 49.643951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.315605, 52.437870, 49.895813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987776, 0.154522, -0.020532,
		-0.113094, 0.619759, -0.776601,
		-0.107276, 0.769430, 0.629658,
		47.283421, 52.668697, 50.084709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.035900, 51.413593, 49.885685>,  <47.358517, 52.130096, 49.643951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.035900, 51.413593, 49.885685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.237637, 51.518532, 50.214760>,  <47.358681, 51.581497, 50.412205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.237637, 51.518532, 50.214760>,  <47.035900, 51.413593, 49.885685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.237637, 51.518532, 50.214760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069849, -0.962003, 0.263955,
		0.860673, -0.075660, -0.503506,
		0.504344, 0.262349, 0.822684,
		47.388939, 51.597237, 50.461567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.495895, 50.874092, 50.019531>,  <47.035900, 51.413593, 49.885685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.495895, 50.874092, 50.019531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447582, 51.065281, 50.367546>,  <47.418594, 51.179993, 50.576355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447582, 51.065281, 50.367546>,  <47.495895, 50.874092, 50.019531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.447582, 51.065281, 50.367546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312690, -0.850152, 0.423635,
		0.942145, -0.220883, 0.252140,
		-0.120783, 0.477967, 0.870034,
		47.411346, 51.208672, 50.628555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853455, 50.605835, 50.569134>,  <47.495895, 50.874092, 50.019531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853455, 50.605835, 50.569134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542080, 50.763405, 50.764629>,  <47.355255, 50.857948, 50.881927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542080, 50.763405, 50.764629>,  <47.853455, 50.605835, 50.569134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.542080, 50.763405, 50.764629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239889, -0.906171, 0.348294,
		0.580083, 0.153880, 0.799890,
		-0.778432, 0.393924, 0.488740,
		47.308552, 50.881580, 50.911251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.710140, 51.019196, 51.235794>,  <47.853455, 50.605835, 50.569134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.710140, 51.019196, 51.235794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.954384, 51.260212, 51.441357>,  <48.100929, 51.404823, 51.564693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.954384, 51.260212, 51.441357>,  <47.710140, 51.019196, 51.235794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.954384, 51.260212, 51.441357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142467, -0.721915, 0.677157,
		0.779014, -0.340262, -0.526649,
		0.610606, 0.602545, 0.513906,
		48.137566, 51.440975, 51.595528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.415989, 50.715668, 51.367878>,  <47.710140, 51.019196, 51.235794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.415989, 50.715668, 51.367878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.270447, 50.966465, 51.643410>,  <48.183121, 51.116943, 51.808731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.270447, 50.966465, 51.643410>,  <48.415989, 50.715668, 51.367878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.270447, 50.966465, 51.643410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042356, -0.727620, 0.684672,
		0.930492, 0.278298, 0.238192,
		-0.363856, 0.626993, 0.688832,
		48.161289, 51.154564, 51.850060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.888336, 50.988365, 51.845734>,  <48.415989, 50.715668, 51.367878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.888336, 50.988365, 51.845734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.528381, 50.957466, 52.017426>,  <48.312408, 50.938927, 52.120441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.528381, 50.957466, 52.017426>,  <48.888336, 50.988365, 51.845734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.528381, 50.957466, 52.017426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376110, -0.635716, 0.674097,
		0.220797, 0.768048, 0.601125,
		-0.899883, -0.077251, 0.429234,
		48.258415, 50.934292, 52.146194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.953529, 51.118404, 52.557522>,  <48.888336, 50.988365, 51.845734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.953529, 51.118404, 52.557522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.635948, 50.878082, 52.520294>,  <48.445400, 50.733887, 52.497959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.635948, 50.878082, 52.520294>,  <48.953529, 51.118404, 52.557522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.635948, 50.878082, 52.520294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269908, -0.485484, 0.831538,
		-0.544776, 0.635087, 0.547617,
		-0.793958, -0.600808, -0.093066,
		48.397762, 50.697842, 52.492374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.478279, 51.186115, 53.133636>,  <48.953529, 51.118404, 52.557522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.478279, 51.186115, 53.133636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.482624, 50.821293, 52.969666>,  <48.485229, 50.602402, 52.871281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.482624, 50.821293, 52.969666>,  <48.478279, 51.186115, 53.133636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.482624, 50.821293, 52.969666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275962, -0.391299, 0.877912,
		-0.961107, -0.122658, 0.247443,
		0.010858, -0.912053, -0.409929,
		48.485882, 50.547676, 52.846687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.623959, 50.982132, 53.763920>,  <48.478279, 51.186115, 53.133636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.623959, 50.982132, 53.763920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.667229, 51.294640, 54.009819>,  <48.693192, 51.482143, 54.157360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.667229, 51.294640, 54.009819>,  <48.623959, 50.982132, 53.763920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.667229, 51.294640, 54.009819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862496, -0.381269, 0.332767,
		0.494365, 0.494221, -0.715086,
		0.108180, 0.781268, 0.614750,
		48.699684, 51.529018, 54.194244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.365097, 51.384319, 53.737061>,  <48.623959, 50.982132, 53.763920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.365097, 51.384319, 53.737061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.189377, 51.455025, 54.089371>,  <49.083942, 51.497448, 54.300758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.189377, 51.455025, 54.089371>,  <49.365097, 51.384319, 53.737061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.189377, 51.455025, 54.089371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865689, -0.178627, 0.467626,
		0.239987, 0.967910, -0.074547,
		-0.439304, 0.176759, 0.880777,
		49.057587, 51.508053, 54.353603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.695145, 51.925308, 54.022930>,  <49.365097, 51.384319, 53.737061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.695145, 51.925308, 54.022930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.535252, 51.726452, 54.330971>,  <49.439316, 51.607140, 54.515797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.535252, 51.726452, 54.330971>,  <49.695145, 51.925308, 54.022930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.535252, 51.726452, 54.330971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872468, 0.051281, 0.485972,
		-0.281088, 0.866153, 0.413241,
		-0.399735, -0.497141, 0.770106,
		49.415333, 51.577309, 54.562004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.269157, 52.139954, 54.425499>,  <49.695145, 51.925308, 54.022930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.269157, 52.139954, 54.425499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.208900, 52.510220, 54.564327>,  <50.172749, 52.732380, 54.647625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.208900, 52.510220, 54.564327>,  <50.269157, 52.139954, 54.425499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.208900, 52.510220, 54.564327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977867, 0.191087, -0.085220,
		-0.145205, 0.326550, -0.933960,
		-0.150639, 0.925662, 0.347069,
		50.163708, 52.787918, 54.668449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.606884, 52.582275, 53.967297>,  <50.269157, 52.139954, 54.425499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.606884, 52.582275, 53.967297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.611588, 52.720917, 54.342472>,  <50.614410, 52.804104, 54.567577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.611588, 52.720917, 54.342472>,  <50.606884, 52.582275, 53.967297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.611588, 52.720917, 54.342472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984383, 0.160754, -0.071749,
		-0.175646, 0.924133, -0.339302,
		0.011762, 0.346606, 0.937937,
		50.615116, 52.824898, 54.623852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.896488, 53.258499, 54.020084>,  <50.606884, 52.582275, 53.967297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.896488, 53.258499, 54.020084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.963333, 53.058762, 54.360138>,  <51.003441, 52.938919, 54.564171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.963333, 53.058762, 54.360138>,  <50.896488, 53.258499, 54.020084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.963333, 53.058762, 54.360138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983486, 0.145194, -0.108042,
		-0.069485, 0.854151, 0.515362,
		0.167112, -0.499344, 0.850135,
		51.013466, 52.908958, 54.615177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.388237, 53.697170, 54.569012>,  <50.896488, 53.258499, 54.020084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.388237, 53.697170, 54.569012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.392483, 53.303734, 54.641060>,  <51.395031, 53.067673, 54.684288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.392483, 53.303734, 54.641060>,  <51.388237, 53.697170, 54.569012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.392483, 53.303734, 54.641060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999620, 0.015025, 0.023130,
		-0.025457, 0.179804, 0.983373,
		0.010617, -0.983588, 0.180119,
		51.395668, 53.008659, 54.695095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.912128, 53.729065, 55.053715>,  <51.388237, 53.697170, 54.569012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.912128, 53.729065, 55.053715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861969, 53.373768, 54.876945>,  <51.831871, 53.160587, 54.770885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.861969, 53.373768, 54.876945>,  <51.912128, 53.729065, 55.053715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.861969, 53.373768, 54.876945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991307, -0.130062, -0.019878,
		-0.039821, -0.440570, 0.896834,
		-0.125402, -0.888246, -0.441919,
		51.824348, 53.107292, 54.744370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.254650, 53.151245, 55.465412>,  <51.912128, 53.729065, 55.053715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.254650, 53.151245, 55.465412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.232224, 53.018055, 55.088905>,  <52.218765, 52.938141, 54.863003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.232224, 53.018055, 55.088905>,  <52.254650, 53.151245, 55.465412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.232224, 53.018055, 55.088905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971094, -0.237267, 0.026088,
		-0.232019, -0.912595, 0.336658,
		-0.056070, -0.332979, -0.941266,
		52.215401, 52.918159, 54.806526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.629524, 52.493710, 55.359356>,  <52.254650, 53.151245, 55.465412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.629524, 52.493710, 55.359356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.601078, 52.723785, 55.033386>,  <52.584011, 52.861832, 54.837803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.601078, 52.723785, 55.033386>,  <52.629524, 52.493710, 55.359356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.601078, 52.723785, 55.033386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989874, -0.059928, -0.128675,
		-0.122849, -0.815824, -0.565102,
		-0.071111, 0.575187, -0.814925,
		52.579746, 52.896343, 54.788910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.082539, 52.212112, 54.895515>,  <52.629524, 52.493710, 55.359356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.082539, 52.212112, 54.895515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.004749, 52.586029, 54.776619>,  <52.958076, 52.810379, 54.705280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.004749, 52.586029, 54.776619>,  <53.082539, 52.212112, 54.895515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.004749, 52.586029, 54.776619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965186, 0.128323, -0.227923,
		-0.174917, -0.331217, -0.927200,
		-0.194473, 0.934788, -0.297240,
		52.946407, 52.866467, 54.687447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.244926, 52.283997, 54.177032>,  <53.082539, 52.212112, 54.895515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.244926, 52.283997, 54.177032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.277424, 52.604881, 54.413628>,  <53.296921, 52.797413, 54.555584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.277424, 52.604881, 54.413628>,  <53.244926, 52.283997, 54.177032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.277424, 52.604881, 54.413628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980200, 0.043211, -0.193240,
		-0.180578, 0.595475, -0.782816,
		0.081243, 0.802211, 0.591488,
		53.301796, 52.845543, 54.591072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.458565, 52.953449, 53.775360>,  <53.244926, 52.283997, 54.177032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.458565, 52.953449, 53.775360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.566730, 52.955215, 54.160454>,  <53.631630, 52.956276, 54.391510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.566730, 52.955215, 54.160454>,  <53.458565, 52.953449, 53.775360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.566730, 52.955215, 54.160454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958227, 0.095533, -0.269582,
		-0.093162, 0.995417, 0.021606,
		0.270411, 0.004412, 0.962735,
		53.647854, 52.956539, 54.449276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.882336, 53.510326, 54.011677>,  <53.458565, 52.953449, 53.775360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.882336, 53.510326, 54.011677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.962158, 53.201500, 54.253036>,  <54.010052, 53.016205, 54.397854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.962158, 53.201500, 54.253036>,  <53.882336, 53.510326, 54.011677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.962158, 53.201500, 54.253036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949807, 0.001007, -0.312836,
		0.240923, 0.635540, 0.733515,
		0.199558, -0.772067, 0.603398,
		54.022026, 52.969879, 54.434055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.579182, 53.551815, 54.412766>,  <53.882336, 53.510326, 54.011677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.579182, 53.551815, 54.412766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.495033, 53.165531, 54.351898>,  <54.444546, 52.933762, 54.315376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.495033, 53.165531, 54.351898>,  <54.579182, 53.551815, 54.412766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.495033, 53.165531, 54.351898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972728, -0.222319, 0.066140,
		-0.097703, -0.134107, 0.986139,
		-0.210367, -0.965707, -0.152171,
		54.431923, 52.875820, 54.306248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.762760, 53.147888, 54.954510>,  <54.579182, 53.551815, 54.412766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.762760, 53.147888, 54.954510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.852234, 52.905006, 54.649544>,  <54.905918, 52.759277, 54.466564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.852234, 52.905006, 54.649544>,  <54.762760, 53.147888, 54.954510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.852234, 52.905006, 54.649544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974324, 0.159888, 0.158522,
		0.025645, -0.778294, 0.627376,
		0.223687, -0.607202, -0.762410,
		54.919338, 52.722847, 54.420822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.316673, 52.717861, 55.181740>,  <54.762760, 53.147888, 54.954510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.316673, 52.717861, 55.181740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.336754, 52.713654, 54.782265>,  <55.348801, 52.711128, 54.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.336754, 52.713654, 54.782265>,  <55.316673, 52.717861, 55.181740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.336754, 52.713654, 54.782265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998206, -0.032135, 0.050517,
		-0.032624, -0.999428, 0.008885,
		0.050203, -0.010517, -0.998684,
		55.351814, 52.710499, 54.482658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.734657, 52.117798, 55.151302>,  <55.316673, 52.717861, 55.181740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.734657, 52.117798, 55.151302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.733871, 52.394588, 54.862534>,  <55.733398, 52.560661, 54.689274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.733871, 52.394588, 54.862534>,  <55.734657, 52.117798, 55.151302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.733871, 52.394588, 54.862534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993857, 0.081237, 0.075157,
		0.110653, -0.717336, -0.687884,
		-0.001969, 0.691975, -0.721919,
		55.733280, 52.602180, 54.645958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.425407, 52.438171, 55.029964>,  <55.734657, 52.117798, 55.151302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.425407, 52.438171, 55.029964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.632706, 52.096466, 55.013657>,  <56.757084, 51.891445, 55.003872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.632706, 52.096466, 55.013657>,  <56.425407, 52.438171, 55.029964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.632706, 52.096466, 55.013657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809942, 0.474932, 0.344142,
		-0.274623, -0.211372, 0.938032,
		0.518243, -0.854261, -0.040772,
		56.788177, 51.840187, 55.001427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.608105, 52.209240, 55.706654>,  <56.425407, 52.438171, 55.029964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.608105, 52.209240, 55.706654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.904846, 52.082787, 55.470108>,  <57.082893, 52.006916, 55.328182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.904846, 52.082787, 55.470108>,  <56.608105, 52.209240, 55.706654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.904846, 52.082787, 55.470108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660630, 0.495753, 0.563735,
		0.114955, -0.808882, 0.576624,
		0.741858, -0.316130, -0.591361,
		57.127403, 51.987946, 55.292698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.090542, 51.719475, 55.996838>,  <56.608105, 52.209240, 55.706654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.090542, 51.719475, 55.996838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.276642, 51.960423, 55.737396>,  <57.388302, 52.104992, 55.581730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.276642, 51.960423, 55.737396>,  <57.090542, 51.719475, 55.996838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.276642, 51.960423, 55.737396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441107, 0.477507, 0.759877,
		0.767441, -0.639640, -0.043548,
		0.465253, 0.602369, -0.648607,
		57.416218, 52.141132, 55.542812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.853271, 51.661022, 55.985851>,  <57.090542, 51.719475, 55.996838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.853271, 51.661022, 55.985851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.708984, 52.030025, 55.930923>,  <57.622414, 52.251427, 55.897968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.708984, 52.030025, 55.930923>,  <57.853271, 51.661022, 55.985851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.708984, 52.030025, 55.930923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497090, 0.314733, 0.808606,
		0.789166, 0.223421, -0.572101,
		-0.360719, 0.922511, -0.137316,
		57.600769, 52.306778, 55.889729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.500366, 51.960384, 56.058296>,  <57.853271, 51.661022, 55.985851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.500366, 51.960384, 56.058296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.531731, 52.214031, 55.750595>,  <58.550549, 52.366219, 55.565975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.531731, 52.214031, 55.750595>,  <58.500366, 51.960384, 56.058296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.531731, 52.214031, 55.750595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609686, 0.641002, 0.466260,
		0.788755, 0.432442, 0.436874,
		0.078407, 0.634121, -0.769248,
		58.555252, 52.404266, 55.519821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.726482, 52.719284, 56.239998>,  <58.500366, 51.960384, 56.058296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.726482, 52.719284, 56.239998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.493462, 52.709137, 55.915039>,  <58.353649, 52.703049, 55.720062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.493462, 52.709137, 55.915039>,  <58.726482, 52.719284, 56.239998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.493462, 52.709137, 55.915039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642803, 0.626083, 0.441389,
		0.497434, 0.779344, -0.381030,
		-0.582550, -0.025365, -0.812399,
		58.318695, 52.701527, 55.671318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.579319, 53.416267, 56.106617>,  <58.726482, 52.719284, 56.239998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.579319, 53.416267, 56.106617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.272888, 53.201759, 55.964890>,  <58.089031, 53.073055, 55.879852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.272888, 53.201759, 55.964890>,  <58.579319, 53.416267, 56.106617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.272888, 53.201759, 55.964890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632846, 0.532932, 0.561684,
		-0.112388, 0.654521, -0.747644,
		-0.766077, -0.536270, -0.354316,
		58.043064, 53.040878, 55.858593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.008282, 53.958107, 56.004047>,  <58.579319, 53.416267, 56.106617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.008282, 53.958107, 56.004047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.878777, 53.580879, 56.034515>,  <57.801071, 53.354542, 56.052795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.878777, 53.580879, 56.034515>,  <58.008282, 53.958107, 56.004047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.878777, 53.580879, 56.034515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729292, 0.300040, 0.614906,
		-0.602751, 0.143536, -0.784913,
		-0.323766, -0.943066, 0.076170,
		57.781647, 53.297958, 56.057365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.328011, 54.405178, 56.537746>,  <58.008282, 53.958107, 56.004047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.328011, 54.405178, 56.537746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.650528, 54.636127, 56.589165>,  <58.844040, 54.774696, 56.620014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.650528, 54.636127, 56.589165>,  <58.328011, 54.405178, 56.537746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.650528, 54.636127, 56.589165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350296, -0.641193, 0.682763,
		0.476632, -0.505481, -0.719243,
		0.806297, 0.577374, 0.128545,
		58.892418, 54.809341, 56.627728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.032425, 54.081036, 56.437618>,  <58.328011, 54.405178, 56.537746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.032425, 54.081036, 56.437618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.073807, 54.379795, 56.700356>,  <59.098637, 54.559052, 56.857998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.073807, 54.379795, 56.700356>,  <59.032425, 54.081036, 56.437618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.073807, 54.379795, 56.700356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582490, -0.580791, 0.568672,
		0.806227, 0.323770, -0.495148,
		0.103459, 0.746897, 0.656842,
		59.104843, 54.603863, 56.897408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.731239, 54.270260, 56.583927>,  <59.032425, 54.081036, 56.437618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.731239, 54.270260, 56.583927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.494698, 54.332924, 56.900345>,  <59.352772, 54.370522, 57.090195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.494698, 54.332924, 56.900345>,  <59.731239, 54.270260, 56.583927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.494698, 54.332924, 56.900345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586393, -0.589843, 0.555184,
		0.553568, 0.792176, 0.256943,
		-0.591359, 0.156662, 0.791044,
		59.317291, 54.379921, 57.137657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.119743, 54.642620, 57.186863>,  <59.731239, 54.270260, 56.583927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.119743, 54.642620, 57.186863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.822411, 54.383396, 57.253166>,  <59.644012, 54.227859, 57.292946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.822411, 54.383396, 57.253166>,  <60.119743, 54.642620, 57.186863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.822411, 54.383396, 57.253166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606388, -0.548205, 0.575990,
		-0.282411, 0.528662, 0.800475,
		-0.743329, -0.648064, 0.165755,
		59.599411, 54.188976, 57.302895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.852215, 54.816547, 57.305817>,  <60.119743, 54.642620, 57.186863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.852215, 54.816547, 57.305817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.530365, 54.931404, 57.513710>,  <60.337254, 55.000317, 57.638447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.530365, 54.931404, 57.513710>,  <60.852215, 54.816547, 57.305817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.530365, 54.931404, 57.513710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461366, 0.853335, 0.242821,
		-0.373784, 0.435168, -0.819093,
		-0.804629, 0.287139, 0.519735,
		60.288975, 55.017548, 57.669632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.544121, 55.498375, 56.921364>,  <60.852215, 54.816547, 57.305817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.544121, 55.498375, 56.921364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.494720, 55.442001, 57.314278>,  <60.465080, 55.408176, 57.550026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.494720, 55.442001, 57.314278>,  <60.544121, 55.498375, 56.921364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.494720, 55.442001, 57.314278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586391, 0.788192, 0.186812,
		-0.800557, 0.599076, -0.014705,
		-0.123505, -0.140931, 0.982286,
		60.457668, 55.399723, 57.608963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.194786, 56.061703, 57.152771>,  <60.544121, 55.498375, 56.921364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.194786, 56.061703, 57.152771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.419914, 55.872368, 57.423820>,  <60.554993, 55.758766, 57.586452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.419914, 55.872368, 57.423820>,  <60.194786, 56.061703, 57.152771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.419914, 55.872368, 57.423820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412073, 0.871339, 0.266389,
		-0.716536, 0.129303, 0.685461,
		0.562824, -0.473337, 0.677628,
		60.588760, 55.730366, 57.627110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.167614, 56.310581, 57.848877>,  <60.194786, 56.061703, 57.152771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.167614, 56.310581, 57.848877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.530251, 56.158306, 57.776039>,  <60.747833, 56.066940, 57.732334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.530251, 56.158306, 57.776039>,  <60.167614, 56.310581, 57.848877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.530251, 56.158306, 57.776039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421937, 0.825162, 0.375602,
		0.007271, -0.417353, 0.908715,
		0.906596, -0.380690, -0.182097,
		60.802231, 56.044098, 57.721409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.492294, 56.286030, 58.477592>,  <60.167614, 56.310581, 57.848877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.492294, 56.286030, 58.477592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.778122, 56.311443, 58.198921>,  <60.949619, 56.326691, 58.031719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.778122, 56.311443, 58.198921>,  <60.492294, 56.286030, 58.477592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.778122, 56.311443, 58.198921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504921, 0.642441, 0.576476,
		0.484198, -0.763697, 0.426989,
		0.714568, 0.063533, -0.696675,
		60.992493, 56.330502, 57.989918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.177250, 56.091621, 58.712399>,  <60.492294, 56.286030, 58.477592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.177250, 56.091621, 58.712399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.242676, 56.345768, 58.410522>,  <61.281933, 56.498257, 58.229397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.242676, 56.345768, 58.410522>,  <61.177250, 56.091621, 58.712399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.242676, 56.345768, 58.410522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579243, 0.557393, 0.594803,
		0.798576, -0.534438, -0.276861,
		0.163565, 0.635365, -0.754691,
		61.291744, 56.536377, 58.184116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.913223, 56.139496, 58.628754>,  <61.177250, 56.091621, 58.712399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.913223, 56.139496, 58.628754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.725464, 56.469872, 58.503860>,  <61.612808, 56.668098, 58.428925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.725464, 56.469872, 58.503860>,  <61.913223, 56.139496, 58.628754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.725464, 56.469872, 58.503860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603089, 0.558168, 0.569853,
		0.644943, 0.079182, -0.760117,
		-0.469395, 0.825941, -0.312233,
		61.584644, 56.717655, 58.410191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.183823, 55.722935, 59.242790>,  <61.913223, 56.139496, 58.628754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.183823, 55.722935, 59.242790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.117722, 56.115341, 59.283386>,  <62.078060, 56.350784, 59.307743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.117722, 56.115341, 59.283386>,  <62.183823, 55.722935, 59.242790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.117722, 56.115341, 59.283386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970230, -0.180179, 0.161833,
		0.177047, -0.071724, 0.981586,
		-0.165254, 0.981015, 0.101489,
		62.068146, 56.409645, 59.313831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.880699, 56.049484, 59.242073>,  <62.183823, 55.722935, 59.242790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.880699, 56.049484, 59.242073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.180229, 55.930840, 59.479149>,  <63.359947, 55.859653, 59.621395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.180229, 55.930840, 59.479149>,  <62.880699, 56.049484, 59.242073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.180229, 55.930840, 59.479149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345287, -0.937912, -0.033134,
		0.565716, -0.179835, -0.804751,
		0.748827, -0.296614, 0.592687,
		63.404877, 55.841854, 59.656956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.183037, 55.388939, 59.625549>,  <62.880699, 56.049484, 59.242073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.183037, 55.388939, 59.625549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.360321, 55.487919, 59.280914>,  <63.466690, 55.547310, 59.074135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.360321, 55.487919, 59.280914>,  <63.183037, 55.388939, 59.625549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.360321, 55.487919, 59.280914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587948, 0.645285, 0.487775,
		0.676673, -0.722754, 0.140502,
		0.443205, 0.247456, -0.861588,
		63.493282, 55.562157, 59.022438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.834122, 55.440063, 59.848522>,  <63.183037, 55.388939, 59.625549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.834122, 55.440063, 59.848522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.812798, 55.638008, 59.501587>,  <63.800003, 55.756775, 59.293427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.812798, 55.638008, 59.501587>,  <63.834122, 55.440063, 59.848522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.812798, 55.638008, 59.501587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629639, 0.690808, 0.355442,
		0.775057, -0.527163, -0.348406,
		-0.053306, 0.494858, -0.867338,
		63.796806, 55.786465, 59.241386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.497696, 55.552319, 59.492031>,  <63.834122, 55.440063, 59.848522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.497696, 55.552319, 59.492031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.229935, 55.848648, 59.469849>,  <64.069275, 56.026447, 59.456539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.229935, 55.848648, 59.469849>,  <64.497696, 55.552319, 59.492031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.229935, 55.848648, 59.469849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685002, 0.644403, 0.339878,
		0.287529, 0.189526, -0.938833,
		-0.669402, 0.740827, -0.055459,
		64.029114, 56.070896, 59.453209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.986443, 55.489246, 58.958923>,  <64.497696, 55.552319, 59.492031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.986443, 55.489246, 58.958923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.092117, 55.495155, 59.344666>,  <65.155525, 55.498703, 59.576111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.092117, 55.495155, 59.344666>,  <64.986443, 55.489246, 58.958923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.092117, 55.495155, 59.344666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652263, -0.733812, 0.189929,
		0.710464, -0.679192, -0.184225,
		0.264184, 0.014775, 0.964359,
		65.171371, 55.499588, 59.633972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.685478, 55.519348, 58.640579>,  <64.986443, 55.489246, 58.958923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.685478, 55.519348, 58.640579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.601570, 55.910263, 58.652626>,  <65.551224, 56.144814, 58.659855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.601570, 55.910263, 58.652626>,  <65.685478, 55.519348, 58.640579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.601570, 55.910263, 58.652626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886943, -0.203161, 0.414799,
		0.411496, 0.060298, 0.909415,
		-0.209770, 0.977287, 0.030119,
		65.538643, 56.203449, 58.661663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.347176, 55.691051, 59.048977>,  <65.685478, 55.519348, 58.640579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.347176, 55.691051, 59.048977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.421364, 56.013905, 58.824783>,  <66.465881, 56.207615, 58.690269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.421364, 56.013905, 58.824783>,  <66.347176, 55.691051, 59.048977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.421364, 56.013905, 58.824783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981475, -0.124283, 0.145815,
		0.048033, -0.577143, -0.815229,
		0.185475, 0.807130, -0.560482,
		66.477005, 56.256042, 58.656639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.839050, 55.488098, 58.567310>,  <66.347176, 55.691051, 59.048977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.839050, 55.488098, 58.567310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.869858, 55.880623, 58.637856>,  <66.888344, 56.116138, 58.680183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.869858, 55.880623, 58.637856>,  <66.839050, 55.488098, 58.567310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.869858, 55.880623, 58.637856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979195, -0.107760, 0.171943,
		0.187733, 0.159447, -0.969192,
		0.077024, 0.981307, 0.176360,
		66.892967, 56.175014, 58.690765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.222504, 56.031036, 58.171837>,  <66.839050, 55.488098, 58.567310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.222504, 56.031036, 58.171837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.222481, 56.022842, 58.571754>,  <67.222466, 56.017925, 58.811703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.222481, 56.022842, 58.571754>,  <67.222504, 56.031036, 58.171837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.222481, 56.022842, 58.571754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992955, -0.118470, -0.002373,
		0.118494, 0.992746, 0.020343,
		-0.000054, -0.020480, 0.999790,
		67.222466, 56.016697, 58.871693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.604439, 56.600746, 58.402920>,  <67.222504, 56.031036, 58.171837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.604439, 56.600746, 58.402920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.625542, 56.275311, 58.634537>,  <67.638206, 56.080048, 58.773506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.625542, 56.275311, 58.634537>,  <67.604439, 56.600746, 58.402920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.625542, 56.275311, 58.634537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988303, -0.040547, -0.147012,
		0.143085, 0.580025, 0.801933,
		0.052755, -0.813589, 0.579043,
		67.641365, 56.031235, 58.808250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.956421, 57.122879, 58.754421>,  <67.604439, 56.600746, 58.402920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.956421, 57.122879, 58.754421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.146507, 57.453964, 58.873795>,  <68.260559, 57.652615, 58.945419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.146507, 57.453964, 58.873795>,  <67.956421, 57.122879, 58.754421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.146507, 57.453964, 58.873795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875125, -0.479814, -0.062733,
		0.091267, 0.290976, -0.952367,
		0.475213, 0.827715, 0.298432,
		68.289070, 57.702278, 58.963326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.437157, 57.177315, 58.229431>,  <67.956421, 57.122879, 58.754421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.437157, 57.177315, 58.229431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.754601, 57.389332, 58.109940>,  <68.945068, 57.516544, 58.038246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.754601, 57.389332, 58.109940>,  <68.437157, 57.177315, 58.229431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.754601, 57.389332, 58.109940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444094, -0.169017, 0.879894,
		0.415895, -0.830953, -0.369524,
		0.793607, 0.530047, -0.298728,
		68.992683, 57.548347, 58.020321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.997047, 56.719810, 58.176624>,  <68.437157, 57.177315, 58.229431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.997047, 56.719810, 58.176624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.106071, 57.089752, 58.282722>,  <69.171486, 57.311718, 58.346382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.106071, 57.089752, 58.282722>,  <68.997047, 56.719810, 58.176624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.106071, 57.089752, 58.282722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332007, -0.349151, 0.876279,
		0.903043, -0.150771, -0.402222,
		0.272553, 0.924858, 0.265241,
		69.187836, 57.367210, 58.362293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.774193, 56.997372, 58.276775>,  <68.997047, 56.719810, 58.176624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.774193, 56.997372, 58.276775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.514847, 57.155617, 58.536964>,  <69.359238, 57.250565, 58.693077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.514847, 57.155617, 58.536964>,  <69.774193, 56.997372, 58.276775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.514847, 57.155617, 58.536964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610895, -0.239554, 0.754600,
		0.454352, 0.886627, -0.086359,
		-0.648361, 0.395610, 0.650477,
		69.320335, 57.274300, 58.732109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.051369, 57.423397, 58.775246>,  <69.774193, 56.997372, 58.276775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.051369, 57.423397, 58.775246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.744446, 57.303829, 59.002182>,  <69.560287, 57.232090, 59.138344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.744446, 57.303829, 59.002182>,  <70.051369, 57.423397, 58.775246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.744446, 57.303829, 59.002182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624354, -0.146340, 0.767312,
		-0.146340, 0.942991, 0.298920,
		-0.767312, -0.298920, 0.567345,
		69.514252, 57.214153, 59.172386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.018089, 57.696774, 59.404362>,  <70.051369, 57.423397, 58.775246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.018089, 57.696774, 59.404362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.870827, 57.324928, 59.411003>,  <69.782471, 57.101822, 59.414989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.870827, 57.324928, 59.411003>,  <70.018089, 57.696774, 59.404362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.870827, 57.324928, 59.411003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582166, -0.216560, 0.783699,
		-0.724942, 0.298194, 0.620919,
		-0.368160, -0.929614, 0.016605,
		69.760376, 57.046043, 59.415985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.579651, 57.429932, 59.974277>,  <70.018089, 57.696774, 59.404362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.579651, 57.429932, 59.974277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.802216, 57.145603, 59.802162>,  <69.935753, 56.975006, 59.698895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.802216, 57.145603, 59.802162>,  <69.579651, 57.429932, 59.974277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.802216, 57.145603, 59.802162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476794, -0.150970, 0.865954,
		-0.680495, -0.686984, 0.254913,
		0.556412, -0.710818, -0.430284,
		69.969139, 56.932358, 59.673077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.655167, 56.705967, 60.344883>,  <69.579651, 57.429932, 59.974277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.655167, 56.705967, 60.344883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.007996, 56.769001, 60.167290>,  <70.219696, 56.806824, 60.060734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.007996, 56.769001, 60.167290>,  <69.655167, 56.705967, 60.344883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.007996, 56.769001, 60.167290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458659, -0.071943, 0.885695,
		0.107637, -0.984880, -0.135740,
		0.882069, 0.157592, -0.443980,
		70.272614, 56.816277, 60.034096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.340744, 56.539047, 59.696587>,  <69.655167, 56.705967, 60.344883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.340744, 56.539047, 59.696587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.082603, 56.279552, 59.857910>,  <68.927719, 56.123856, 59.954704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.082603, 56.279552, 59.857910>,  <69.340744, 56.539047, 59.696587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.082603, 56.279552, 59.857910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755000, -0.621981, 0.207643,
		0.116147, 0.438504, 0.891193,
		-0.645357, -0.648733, 0.403311,
		68.889000, 56.084934, 59.978905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.165207, 56.324619, 59.798389>,  <69.340744, 56.539047, 59.696587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.165207, 56.324619, 59.798389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.266945, 56.578510, 60.090263>,  <70.327988, 56.730843, 60.265388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.266945, 56.578510, 60.090263>,  <70.165207, 56.324619, 59.798389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.266945, 56.578510, 60.090263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944493, -0.325253, -0.046296,
		0.207946, 0.700954, -0.682218,
		0.254345, 0.634723, 0.729682,
		70.343246, 56.768929, 60.309166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.701431, 56.849251, 59.504902>,  <70.165207, 56.324619, 59.798389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.701431, 56.849251, 59.504902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.729607, 56.796219, 59.900368>,  <70.746513, 56.764400, 60.137646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.729607, 56.796219, 59.900368>,  <70.701431, 56.849251, 59.504902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.729607, 56.796219, 59.900368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940966, -0.320138, -0.109978,
		0.331091, 0.938048, 0.102200,
		0.070447, -0.132579, 0.988666,
		70.750740, 56.756447, 60.196968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.407318, 57.097580, 59.776970>,  <70.701431, 56.849251, 59.504902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.407318, 57.097580, 59.776970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.318428, 56.797703, 60.026314>,  <71.265099, 56.617775, 60.175919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.318428, 56.797703, 60.026314>,  <71.407318, 57.097580, 59.776970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.318428, 56.797703, 60.026314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916378, -0.378939, -0.129062,
		0.332971, 0.542549, 0.771214,
		-0.222221, -0.749697, 0.623355,
		71.251762, 56.572792, 60.213322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.934654, 56.891350, 60.375824>,  <71.407318, 57.097580, 59.776970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.934654, 56.891350, 60.375824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.330605, 56.890270, 60.432571>,  <72.568176, 56.889622, 60.466618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.330605, 56.890270, 60.432571>,  <71.934654, 56.891350, 60.375824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.330605, 56.890270, 60.432571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109387, 0.651308, -0.750888,
		-0.090374, 0.758809, 0.645013,
		0.989882, -0.002695, 0.141865,
		72.627571, 56.889462, 60.475132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.118843, 57.496311, 60.410442>,  <71.934654, 56.891350, 60.375824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.118843, 57.496311, 60.410442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.474792, 57.355804, 60.294006>,  <72.688362, 57.271500, 60.224144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.474792, 57.355804, 60.294006>,  <72.118843, 57.496311, 60.410442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.474792, 57.355804, 60.294006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005009, 0.645556, -0.763696,
		0.456179, 0.678135, 0.576223,
		0.889874, -0.351268, -0.291092,
		72.741753, 57.250423, 60.206680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
