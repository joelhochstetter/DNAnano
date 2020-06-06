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
	<24.133425, 34.506935, 34.690029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.059986, 34.755280, 34.994877>,  <24.015923, 34.904285, 35.177784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.059986, 34.755280, 34.994877>,  <24.133425, 34.506935, 34.690029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.059986, 34.755280, 34.994877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924507, -0.154395, 0.348495,
		0.334034, 0.768566, -0.545644,
		-0.183597, 0.620861, 0.762118,
		24.004908, 34.941536, 35.223511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811985, 34.290257, 35.006336>,  <24.133425, 34.506935, 34.690029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811985, 34.290257, 35.006336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100103, 34.026489, 34.920231>,  <25.272974, 33.868229, 34.868568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100103, 34.026489, 34.920231>,  <24.811985, 34.290257, 35.006336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100103, 34.026489, 34.920231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140955, 0.442997, -0.885373,
		0.679196, 0.607386, 0.412037,
		0.720294, -0.659421, -0.215268,
		25.316193, 33.828663, 34.855652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492552, 34.707241, 34.762791>,  <24.811985, 34.290257, 35.006336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492552, 34.707241, 34.762791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449976, 34.340576, 34.608704>,  <25.424431, 34.120575, 34.516251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449976, 34.340576, 34.608704>,  <25.492552, 34.707241, 34.762791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449976, 34.340576, 34.608704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286927, 0.342623, -0.894584,
		0.952020, -0.205750, 0.226547,
		-0.106441, -0.916666, -0.385220,
		25.418043, 34.065575, 34.493137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179056, 34.499786, 34.444042>,  <25.492552, 34.707241, 34.762791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179056, 34.499786, 34.444042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911949, 34.255714, 34.273510>,  <25.751684, 34.109272, 34.171188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911949, 34.255714, 34.273510>,  <26.179056, 34.499786, 34.444042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911949, 34.255714, 34.273510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375846, 0.217988, -0.900678,
		0.642515, -0.761680, 0.083769,
		-0.667768, -0.610184, -0.426335,
		25.711618, 34.072659, 34.145611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575542, 34.093338, 33.902691>,  <26.179056, 34.499786, 34.444042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575542, 34.093338, 33.902691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197464, 34.081028, 33.772675>,  <25.970615, 34.073643, 33.694664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197464, 34.081028, 33.772675>,  <26.575542, 34.093338, 33.902691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197464, 34.081028, 33.772675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315537, 0.169681, -0.933619,
		0.083881, -0.985019, -0.150673,
		-0.945199, -0.030770, -0.325043,
		25.913904, 34.071796, 33.675163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533798, 33.608589, 33.281696>,  <26.575542, 34.093338, 33.902691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533798, 33.608589, 33.281696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286240, 33.922318, 33.264687>,  <26.137703, 34.110554, 33.254482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286240, 33.922318, 33.264687>,  <26.533798, 33.608589, 33.281696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286240, 33.922318, 33.264687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380910, 0.252348, -0.889510,
		-0.686929, -0.566714, -0.454933,
		-0.618899, 0.784319, -0.042522,
		26.100571, 34.157612, 33.251930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196459, 33.669743, 32.638474>,  <26.533798, 33.608589, 33.281696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196459, 33.669743, 32.638474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181980, 34.045334, 32.775307>,  <26.173292, 34.270687, 32.857407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181980, 34.045334, 32.775307>,  <26.196459, 33.669743, 32.638474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181980, 34.045334, 32.775307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340071, 0.333448, -0.879297,
		-0.939703, 0.084503, -0.331388,
		-0.036198, 0.938974, 0.342079,
		26.171122, 34.327026, 32.877930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951677, 34.134251, 32.084709>,  <26.196459, 33.669743, 32.638474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951677, 34.134251, 32.084709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189850, 34.309708, 32.353947>,  <26.332754, 34.414982, 32.515488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189850, 34.309708, 32.353947>,  <25.951677, 34.134251, 32.084709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189850, 34.309708, 32.353947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441891, 0.520878, -0.730355,
		-0.670965, 0.732310, 0.116315,
		0.595432, 0.438643, 0.673092,
		26.368479, 34.441299, 32.555874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016045, 34.890644, 31.958551>,  <25.951677, 34.134251, 32.084709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016045, 34.890644, 31.958551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342354, 34.773579, 32.158096>,  <26.538139, 34.703339, 32.277824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342354, 34.773579, 32.158096>,  <26.016045, 34.890644, 31.958551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342354, 34.773579, 32.158096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576071, 0.488034, -0.655717,
		-0.051558, 0.822296, 0.566719,
		0.815772, -0.292663, 0.498863,
		26.587086, 34.685780, 32.307755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508614, 35.439945, 32.161247>,  <26.016045, 34.890644, 31.958551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508614, 35.439945, 32.161247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774004, 35.140690, 32.157631>,  <26.933239, 34.961136, 32.155460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774004, 35.140690, 32.157631>,  <26.508614, 35.439945, 32.161247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774004, 35.140690, 32.157631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559938, 0.504510, -0.657222,
		0.496255, 0.430990, 0.753643,
		0.663476, -0.748143, -0.009038,
		26.973047, 34.916248, 32.154919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293411, 35.654629, 32.154453>,  <26.508614, 35.439945, 32.161247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293411, 35.654629, 32.154453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316805, 35.297153, 31.976511>,  <27.330841, 35.082668, 31.869745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316805, 35.297153, 31.976511>,  <27.293411, 35.654629, 32.154453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316805, 35.297153, 31.976511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556230, 0.399210, -0.728862,
		0.828968, -0.204814, 0.520446,
		0.058486, -0.893691, -0.444855,
		27.334351, 35.029045, 31.843054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016817, 35.272583, 32.155430>,  <27.293411, 35.654629, 32.154453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016817, 35.272583, 32.155430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748413, 35.272228, 31.858852>,  <27.587370, 35.272015, 31.680904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748413, 35.272228, 31.858852>,  <28.016817, 35.272583, 32.155430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748413, 35.272228, 31.858852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648677, 0.483638, -0.587632,
		0.359110, -0.875267, -0.323955,
		-0.671012, -0.000882, -0.741446,
		27.547110, 35.271965, 31.636419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520653, 35.405083, 31.462444>,  <28.016817, 35.272583, 32.155430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520653, 35.405083, 31.462444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224009, 35.659264, 31.376448>,  <28.046022, 35.811771, 31.324850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224009, 35.659264, 31.376448>,  <28.520653, 35.405083, 31.462444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224009, 35.659264, 31.376448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460457, -0.715253, -0.525731,
		-0.487848, -0.290892, 0.823035,
		-0.741608, 0.635449, -0.214992,
		28.001526, 35.849899, 31.311951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576872, 34.974613, 30.977043>,  <28.520653, 35.405083, 31.462444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576872, 34.974613, 30.977043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539207, 34.593506, 31.092541>,  <28.516609, 34.364841, 31.161840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539207, 34.593506, 31.092541>,  <28.576872, 34.974613, 30.977043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539207, 34.593506, 31.092541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662850, 0.276398, 0.695869,
		-0.742808, -0.125873, -0.657565,
		-0.094159, -0.952765, 0.288746,
		28.510960, 34.307678, 31.179165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826872, 34.921001, 31.018106>,  <28.576872, 34.974613, 30.977043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826872, 34.921001, 31.018106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028210, 34.672264, 31.258091>,  <28.149012, 34.523022, 31.402082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028210, 34.672264, 31.258091>,  <27.826872, 34.921001, 31.018106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028210, 34.672264, 31.258091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737997, 0.051778, 0.672815,
		-0.449451, -0.781427, -0.432857,
		0.503343, -0.621844, 0.599963,
		28.179213, 34.485710, 31.438080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332205, 34.363659, 31.185452>,  <27.826872, 34.921001, 31.018106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332205, 34.363659, 31.185452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596987, 34.451801, 31.472019>,  <27.755856, 34.504688, 31.643959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596987, 34.451801, 31.472019>,  <27.332205, 34.363659, 31.185452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596987, 34.451801, 31.472019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745104, 0.089609, 0.660901,
		0.081417, -0.971301, 0.223484,
		0.661961, 0.220327, 0.716425,
		27.795574, 34.517910, 31.686945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381979, 33.872063, 31.733696>,  <27.332205, 34.363659, 31.185452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381979, 33.872063, 31.733696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470379, 34.231079, 31.886314>,  <27.523418, 34.446491, 31.977884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470379, 34.231079, 31.886314>,  <27.381979, 33.872063, 31.733696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470379, 34.231079, 31.886314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729977, -0.107207, 0.675012,
		0.646756, -0.427695, 0.631493,
		0.220998, 0.897543, 0.381544,
		27.536678, 34.500343, 32.000778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594072, 33.897667, 32.514923>,  <27.381979, 33.872063, 31.733696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594072, 33.897667, 32.514923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435390, 34.249771, 32.410797>,  <27.340181, 34.461033, 32.348320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435390, 34.249771, 32.410797>,  <27.594072, 33.897667, 32.514923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435390, 34.249771, 32.410797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670139, -0.083920, 0.737476,
		0.627327, 0.467007, 0.623190,
		-0.396704, 0.880262, -0.260314,
		27.316380, 34.513851, 32.332703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581106, 34.366661, 33.091465>,  <27.594072, 33.897667, 32.514923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581106, 34.366661, 33.091465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285543, 34.473080, 32.843842>,  <27.108206, 34.536930, 32.695267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285543, 34.473080, 32.843842>,  <27.581106, 34.366661, 33.091465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285543, 34.473080, 32.843842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646148, -0.019228, 0.762970,
		0.191082, 0.963768, 0.186113,
		-0.738905, 0.266046, -0.619063,
		27.063871, 34.552895, 32.658123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233713, 34.923409, 33.372581>,  <27.581106, 34.366661, 33.091465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233713, 34.923409, 33.372581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973507, 34.732700, 33.136101>,  <26.817383, 34.618275, 32.994213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973507, 34.732700, 33.136101>,  <27.233713, 34.923409, 33.372581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973507, 34.732700, 33.136101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659511, -0.031447, 0.751037,
		-0.376665, 0.878465, -0.293979,
		-0.650515, -0.476771, -0.591202,
		26.778353, 34.589668, 32.958740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607771, 35.192303, 33.609734>,  <27.233713, 34.923409, 33.372581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607771, 35.192303, 33.609734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572107, 34.835979, 33.431515>,  <26.550709, 34.622185, 33.324585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572107, 34.835979, 33.431515>,  <26.607771, 35.192303, 33.609734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572107, 34.835979, 33.431515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662786, -0.280846, 0.694147,
		-0.743482, 0.357187, -0.565377,
		-0.089157, -0.890810, -0.445543,
		26.545361, 34.568737, 33.297852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076067, 35.583160, 33.291622>,  <26.607771, 35.192303, 33.609734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076067, 35.583160, 33.291622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069195, 35.208923, 33.150558>,  <26.065071, 34.984383, 33.065918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069195, 35.208923, 33.150558>,  <26.076067, 35.583160, 33.291622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069195, 35.208923, 33.150558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571166, -0.280316, 0.771487,
		-0.820655, 0.214682, -0.529563,
		-0.017179, -0.935593, -0.352662,
		26.064041, 34.928246, 33.044762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378185, 35.230385, 33.402710>,  <26.076067, 35.583160, 33.291622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378185, 35.230385, 33.402710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584633, 34.896896, 33.324192>,  <25.708502, 34.696804, 33.277081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584633, 34.896896, 33.324192>,  <25.378185, 35.230385, 33.402710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584633, 34.896896, 33.324192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600275, -0.515561, 0.611447,
		-0.610977, -0.197749, -0.766552,
		0.516118, -0.833722, -0.196292,
		25.739468, 34.646778, 33.265305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905178, 34.713951, 33.314987>,  <25.378185, 35.230385, 33.402710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905178, 34.713951, 33.314987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258905, 34.544117, 33.392662>,  <25.471142, 34.442219, 33.439266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258905, 34.544117, 33.392662>,  <24.905178, 34.713951, 33.314987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258905, 34.544117, 33.392662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418642, -0.536976, 0.732390,
		-0.206683, -0.728963, -0.652606,
		0.884320, -0.424581, 0.194191,
		25.524200, 34.416744, 33.450920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629070, 34.118183, 33.358646>,  <24.905178, 34.713951, 33.314987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629070, 34.118183, 33.358646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013266, 34.088371, 33.465908>,  <25.243782, 34.070484, 33.530266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013266, 34.088371, 33.465908>,  <24.629070, 34.118183, 33.358646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013266, 34.088371, 33.465908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262250, -0.564988, 0.782313,
		0.093202, -0.821727, -0.562209,
		0.960488, -0.074526, 0.268156,
		25.301413, 34.066013, 33.546356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822660, 33.377666, 33.517799>,  <24.629070, 34.118183, 33.358646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822660, 33.377666, 33.517799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093630, 33.599785, 33.710773>,  <25.256212, 33.733055, 33.826557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093630, 33.599785, 33.710773>,  <24.822660, 33.377666, 33.517799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.093630, 33.599785, 33.710773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206665, -0.485752, 0.849314,
		0.705966, -0.675047, -0.214298,
		0.677422, 0.555299, 0.482433,
		25.296856, 33.766373, 33.855503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352495, 32.911633, 33.872452>,  <24.822660, 33.377666, 33.517799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352495, 32.911633, 33.872452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325510, 33.254177, 34.077232>,  <25.309319, 33.459702, 34.200100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325510, 33.254177, 34.077232>,  <25.352495, 32.911633, 33.872452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325510, 33.254177, 34.077232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076434, -0.516052, 0.853140,
		0.994790, 0.018425, 0.100270,
		-0.067464, 0.856359, 0.511955,
		25.305271, 33.511086, 34.230820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898745, 32.945095, 34.401550>,  <25.352495, 32.911633, 33.872452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898745, 32.945095, 34.401550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574844, 33.159916, 34.496113>,  <25.380505, 33.288807, 34.552849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574844, 33.159916, 34.496113>,  <25.898745, 32.945095, 34.401550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574844, 33.159916, 34.496113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130397, -0.557510, 0.819866,
		0.572105, 0.633059, 0.521472,
		-0.809749, 0.537048, 0.236405,
		25.331921, 33.321030, 34.567036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624418, 32.927719, 34.144386>,  <25.898745, 32.945095, 34.401550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624418, 32.927719, 34.144386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922598, 33.189999, 34.096439>,  <27.101505, 33.347366, 34.067673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922598, 33.189999, 34.096439>,  <26.624418, 32.927719, 34.144386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922598, 33.189999, 34.096439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002521, -0.182602, -0.983184,
		-0.666560, 0.732609, -0.137773,
		0.745447, 0.655698, -0.119869,
		27.146233, 33.386707, 34.060478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068901, 32.969875, 33.528164>,  <26.624418, 32.927719, 34.144386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068901, 32.969875, 33.528164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899025, 32.618263, 33.614834>,  <26.797098, 32.407295, 33.666836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899025, 32.618263, 33.614834>,  <27.068901, 32.969875, 33.528164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899025, 32.618263, 33.614834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012571, -0.245032, -0.969433,
		0.905251, -0.408986, 0.115113,
		-0.424691, -0.879028, 0.216674,
		26.771618, 32.354553, 33.679836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521585, 32.449120, 33.297684>,  <27.068901, 32.969875, 33.528164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521585, 32.449120, 33.297684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147738, 32.306889, 33.294712>,  <26.923429, 32.221550, 33.292927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147738, 32.306889, 33.294712>,  <27.521585, 32.449120, 33.297684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147738, 32.306889, 33.294712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143136, -0.356936, -0.923097,
		0.325578, -0.863807, 0.384495,
		-0.934618, -0.355575, -0.007431,
		26.867352, 32.200214, 33.292484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728590, 31.761837, 32.976784>,  <27.521585, 32.449120, 33.297684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728590, 31.761837, 32.976784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337755, 31.827709, 32.922855>,  <27.103254, 31.867233, 32.890499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337755, 31.827709, 32.922855>,  <27.728590, 31.761837, 32.976784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337755, 31.827709, 32.922855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088811, -0.260196, -0.961463,
		-0.193412, -0.951409, 0.239609,
		-0.977090, 0.164678, -0.134821,
		27.044628, 31.877113, 32.882408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570881, 31.366673, 32.323219>,  <27.728590, 31.761837, 32.976784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570881, 31.366673, 32.323219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232084, 31.564911, 32.400146>,  <27.028805, 31.683853, 32.446304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232084, 31.564911, 32.400146>,  <27.570881, 31.366673, 32.323219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232084, 31.564911, 32.400146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268111, -0.085849, -0.959555,
		-0.459041, -0.864300, 0.205588,
		-0.846993, 0.495595, 0.192320,
		26.977985, 31.713589, 32.457844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040701, 30.885912, 32.099449>,  <27.570881, 31.366673, 32.323219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040701, 30.885912, 32.099449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953241, 31.273674, 32.054825>,  <26.900766, 31.506330, 32.028049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953241, 31.273674, 32.054825>,  <27.040701, 30.885912, 32.099449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953241, 31.273674, 32.054825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237847, -0.163825, -0.957387,
		-0.946372, -0.182798, 0.266391,
		-0.218650, 0.969405, -0.111561,
		26.887646, 31.564495, 32.021355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367186, 30.959139, 31.814310>,  <27.040701, 30.885912, 32.099449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367186, 30.959139, 31.814310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561981, 31.299654, 31.736181>,  <26.678858, 31.503963, 31.689304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561981, 31.299654, 31.736181>,  <26.367186, 30.959139, 31.814310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561981, 31.299654, 31.736181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222135, -0.095559, -0.970322,
		-0.844688, 0.515924, 0.142565,
		0.486988, 0.851288, -0.195323,
		26.708078, 31.555040, 31.677584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905500, 31.333019, 31.428339>,  <26.367186, 30.959139, 31.814310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905500, 31.333019, 31.428339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270683, 31.473251, 31.344818>,  <26.489794, 31.557390, 31.294706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270683, 31.473251, 31.344818>,  <25.905500, 31.333019, 31.428339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270683, 31.473251, 31.344818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147564, -0.193413, -0.969957,
		-0.380434, 0.916343, -0.124845,
		0.912959, 0.350582, -0.208800,
		26.544571, 31.578426, 31.282179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325939, 31.680916, 31.642914>,  <25.905500, 31.333019, 31.428339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325939, 31.680916, 31.642914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685326, 31.786636, 31.502684>,  <25.900957, 31.850069, 31.418545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685326, 31.786636, 31.502684>,  <25.325939, 31.680916, 31.642914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685326, 31.786636, 31.502684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372044, 0.034367, -0.927579,
		-0.233110, 0.963828, 0.129208,
		0.898467, 0.264299, -0.350575,
		25.954866, 31.865927, 31.397511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220474, 32.207088, 31.089012>,  <25.325939, 31.680916, 31.642914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220474, 32.207088, 31.089012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592754, 32.081741, 31.013542>,  <25.816122, 32.006535, 30.968260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592754, 32.081741, 31.013542>,  <25.220474, 32.207088, 31.089012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592754, 32.081741, 31.013542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202777, -0.012719, -0.979142,
		0.304430, 0.949547, -0.075381,
		0.930701, -0.313366, -0.188675,
		25.871965, 31.987732, 30.956940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444277, 32.671463, 30.562952>,  <25.220474, 32.207088, 31.089012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444277, 32.671463, 30.562952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587769, 32.298103, 30.559584>,  <25.673864, 32.074085, 30.557562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587769, 32.298103, 30.559584>,  <25.444277, 32.671463, 30.562952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587769, 32.298103, 30.559584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304829, -0.108616, -0.946194,
		0.882266, 0.341995, -0.323492,
		0.358729, -0.933404, -0.008422,
		25.695387, 32.018082, 30.557056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904491, 32.569939, 30.057858>,  <25.444277, 32.671463, 30.562952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904491, 32.569939, 30.057858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757406, 32.201145, 30.106411>,  <25.669155, 31.979870, 30.135544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757406, 32.201145, 30.106411>,  <25.904491, 32.569939, 30.057858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757406, 32.201145, 30.106411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101638, -0.089902, -0.990751,
		0.924368, -0.376649, -0.060650,
		-0.367713, -0.921983, 0.121385,
		25.647093, 31.924551, 30.142826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134924, 31.881260, 29.820528>,  <25.904491, 32.569939, 30.057858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134924, 31.881260, 29.820528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038031, 31.884430, 29.432453>,  <25.979895, 31.886332, 29.199608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038031, 31.884430, 29.432453>,  <26.134924, 31.881260, 29.820528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038031, 31.884430, 29.432453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644881, 0.745792, 0.167103,
		0.724881, 0.666132, -0.175544,
		-0.242233, 0.007925, -0.970186,
		25.965361, 31.886806, 29.141397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769207, 32.058319, 30.123507>,  <26.134924, 31.881260, 29.820528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769207, 32.058319, 30.123507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686705, 32.279655, 29.800701>,  <26.637203, 32.412457, 29.607018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686705, 32.279655, 29.800701>,  <26.769207, 32.058319, 30.123507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686705, 32.279655, 29.800701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361260, -0.723418, -0.588352,
		-0.909368, -0.412893, -0.050690,
		-0.206257, 0.553340, -0.807015,
		26.624828, 32.445656, 29.558598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081638, 31.353100, 30.006041>,  <26.769207, 32.058319, 30.123507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081638, 31.353100, 30.006041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018398, 31.405373, 29.614546>,  <26.980453, 31.436737, 29.379648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018398, 31.405373, 29.614546>,  <27.081638, 31.353100, 30.006041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018398, 31.405373, 29.614546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720914, 0.662056, 0.204854,
		0.674749, 0.737973, -0.010461,
		-0.158102, 0.130684, -0.978737,
		26.970968, 31.444578, 29.320925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054056, 31.410332, 30.732349>,  <27.081638, 31.353100, 30.006041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054056, 31.410332, 30.732349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715157, 31.614872, 30.789885>,  <26.511816, 31.737597, 30.824406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715157, 31.614872, 30.789885>,  <27.054056, 31.410332, 30.732349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715157, 31.614872, 30.789885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272282, 0.185562, 0.944155,
		0.456103, 0.839100, -0.296449,
		-0.847250, 0.511349, 0.143836,
		26.460981, 31.768276, 30.833035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162313, 32.123089, 30.920622>,  <27.054056, 31.410332, 30.732349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162313, 32.123089, 30.920622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801334, 32.039692, 31.071415>,  <26.584747, 31.989655, 31.161892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801334, 32.039692, 31.071415>,  <27.162313, 32.123089, 30.920622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801334, 32.039692, 31.071415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335673, 0.208176, 0.918687,
		-0.270019, 0.955611, -0.117883,
		-0.902449, -0.208493, 0.376984,
		26.530600, 31.977144, 31.184511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943399, 32.715023, 31.377186>,  <27.162313, 32.123089, 30.920622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943399, 32.715023, 31.377186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749226, 32.386204, 31.496239>,  <26.632721, 32.188911, 31.567671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749226, 32.386204, 31.496239>,  <26.943399, 32.715023, 31.377186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749226, 32.386204, 31.496239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312458, 0.154824, 0.937230,
		-0.816530, 0.547964, 0.181699,
		-0.485436, -0.822049, 0.297635,
		26.603594, 32.139587, 31.585529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420013, 32.759480, 31.920815>,  <26.943399, 32.715023, 31.377186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420013, 32.759480, 31.920815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545944, 32.382122, 31.962549>,  <26.621504, 32.155708, 31.987589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545944, 32.382122, 31.962549>,  <26.420013, 32.759480, 31.920815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545944, 32.382122, 31.962549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080831, 0.136174, 0.987382,
		-0.945700, -0.302423, 0.119127,
		0.314829, -0.943396, 0.104335,
		26.640392, 32.099102, 31.993849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108496, 32.620945, 32.502705>,  <26.420013, 32.759480, 31.920815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108496, 32.620945, 32.502705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360867, 32.310970, 32.487705>,  <26.512289, 32.124985, 32.478706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360867, 32.310970, 32.487705>,  <26.108496, 32.620945, 32.502705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360867, 32.310970, 32.487705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010476, -0.056836, 0.998329,
		-0.775770, -0.629481, -0.043978,
		0.630929, -0.774934, -0.037497,
		26.550146, 32.078491, 32.476456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772915, 32.071045, 32.795750>,  <26.108496, 32.620945, 32.502705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.772915, 32.071045, 32.795750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166973, 32.007191, 32.821072>,  <26.403408, 31.968878, 32.836266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166973, 32.007191, 32.821072>,  <25.772915, 32.071045, 32.795750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166973, 32.007191, 32.821072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062880, 0.007687, 0.997992,
		-0.159805, -0.987146, -0.002465,
		0.985144, -0.159639, 0.063300,
		26.462517, 31.959299, 32.840061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790276, 31.590975, 33.232853>,  <25.772915, 32.071045, 32.795750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790276, 31.590975, 33.232853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157072, 31.749361, 33.252182>,  <26.377150, 31.844393, 33.263779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157072, 31.749361, 33.252182>,  <25.790276, 31.590975, 33.232853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157072, 31.749361, 33.252182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037400, -0.035252, 0.998678,
		0.397148, -0.917587, -0.017517,
		0.916993, 0.395968, 0.048318,
		26.432169, 31.868151, 33.266678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084728, 31.288713, 33.841457>,  <25.790276, 31.590975, 33.232853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084728, 31.288713, 33.841457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297565, 31.620337, 33.772705>,  <26.425268, 31.819309, 33.731453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297565, 31.620337, 33.772705>,  <26.084728, 31.288713, 33.841457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297565, 31.620337, 33.772705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133818, 0.282800, 0.949798,
		0.836045, -0.482379, 0.261418,
		0.532092, 0.829056, -0.171882,
		26.457193, 31.869053, 33.721142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568138, 31.395874, 34.313290>,  <26.084728, 31.288713, 33.841457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568138, 31.395874, 34.313290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437813, 31.760818, 34.214138>,  <26.359617, 31.979786, 34.154648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437813, 31.760818, 34.214138>,  <26.568138, 31.395874, 34.313290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437813, 31.760818, 34.214138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108798, 0.224265, 0.968436,
		0.939154, 0.342497, 0.026195,
		-0.325811, 0.912360, -0.247882,
		26.340069, 32.034527, 34.139774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936640, 31.866064, 34.794376>,  <26.568138, 31.395874, 34.313290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936640, 31.866064, 34.794376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567745, 31.964737, 34.675293>,  <26.346409, 32.023941, 34.603844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567745, 31.964737, 34.675293>,  <26.936640, 31.866064, 34.794376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567745, 31.964737, 34.675293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323141, -0.069040, 0.943829,
		0.212272, 0.966634, 0.143384,
		-0.922237, 0.246682, -0.297704,
		26.291075, 32.038742, 34.585983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653305, 31.902353, 34.580601>,  <26.936640, 31.866064, 34.794376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653305, 31.902353, 34.580601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937025, 31.637829, 34.678223>,  <28.107256, 31.479115, 34.736797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937025, 31.637829, 34.678223>,  <27.653305, 31.902353, 34.580601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937025, 31.637829, 34.678223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635706, 0.450501, -0.626839,
		0.304589, 0.599763, 0.739939,
		0.709298, -0.661312, 0.244056,
		28.149815, 31.439436, 34.751438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307415, 32.236721, 34.731533>,  <27.653305, 31.902353, 34.580601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307415, 32.236721, 34.731533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301521, 31.871780, 34.567875>,  <28.297985, 31.652817, 34.469681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301521, 31.871780, 34.567875>,  <28.307415, 32.236721, 34.731533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301521, 31.871780, 34.567875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734416, 0.267805, -0.623629,
		0.678540, -0.309668, 0.666100,
		-0.014733, -0.912352, -0.409142,
		28.297102, 31.598074, 34.445133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824560, 31.716309, 34.854534>,  <28.307415, 32.236721, 34.731533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824560, 31.716309, 34.854534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693653, 31.703957, 34.476765>,  <28.615108, 31.696545, 34.250103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693653, 31.703957, 34.476765>,  <28.824560, 31.716309, 34.854534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693653, 31.703957, 34.476765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925475, 0.191302, -0.326956,
		0.190768, -0.981045, -0.034026,
		-0.327268, -0.030882, -0.944427,
		28.595472, 31.694693, 34.193436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146194, 31.230898, 34.316826>,  <28.824560, 31.716309, 34.854534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146194, 31.230898, 34.316826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013571, 31.545895, 34.109009>,  <28.933996, 31.734894, 33.984318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013571, 31.545895, 34.109009>,  <29.146194, 31.230898, 34.316826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013571, 31.545895, 34.109009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892360, 0.083035, -0.443620,
		-0.306208, -0.610704, -0.730258,
		-0.331558, 0.787493, -0.519542,
		28.914103, 31.782143, 33.953148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206106, 31.114603, 33.605064>,  <29.146194, 31.230898, 34.316826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206106, 31.114603, 33.605064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235670, 31.507687, 33.672970>,  <29.253408, 31.743536, 33.713715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235670, 31.507687, 33.672970>,  <29.206106, 31.114603, 33.605064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235670, 31.507687, 33.672970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577709, 0.096567, -0.810511,
		-0.812890, 0.157980, -0.560582,
		0.073911, 0.982709, 0.169765,
		29.257843, 31.802500, 33.723900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807795, 30.521736, 33.441288>,  <29.206106, 31.114603, 33.605064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807795, 30.521736, 33.441288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969902, 30.875921, 33.350327>,  <30.067167, 31.088432, 33.295750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969902, 30.875921, 33.350327>,  <29.807795, 30.521736, 33.441288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969902, 30.875921, 33.350327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553210, -0.039497, 0.832105,
		0.727816, -0.463029, -0.505854,
		0.405268, 0.885462, -0.227406,
		30.091482, 31.141560, 33.282104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602087, 30.516399, 33.220604>,  <29.807795, 30.521736, 33.441288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602087, 30.516399, 33.220604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454784, 30.841805, 33.400642>,  <30.366402, 31.037048, 33.508663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454784, 30.841805, 33.400642>,  <30.602087, 30.516399, 33.220604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454784, 30.841805, 33.400642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607650, -0.155804, 0.778772,
		0.703667, 0.560288, -0.436955,
		-0.368257, 0.813513, 0.450093,
		30.344307, 31.085857, 33.535671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141413, 31.035412, 33.276970>,  <30.602087, 30.516399, 33.220604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141413, 31.035412, 33.276970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857811, 31.069025, 33.557041>,  <30.687651, 31.089193, 33.725086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857811, 31.069025, 33.557041>,  <31.141413, 31.035412, 33.276970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857811, 31.069025, 33.557041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705186, 0.076990, 0.704830,
		0.005323, 0.993484, -0.113846,
		-0.709003, 0.084034, 0.700181,
		30.645109, 31.094234, 33.767094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185917, 31.674049, 33.655144>,  <31.141413, 31.035412, 33.276970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185917, 31.674049, 33.655144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056629, 31.356894, 33.861774>,  <30.979055, 31.166599, 33.985752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056629, 31.356894, 33.861774>,  <31.185917, 31.674049, 33.655144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056629, 31.356894, 33.861774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711118, 0.156658, 0.685397,
		-0.624371, 0.588882, 0.513204,
		-0.323221, -0.792891, 0.516578,
		30.959663, 31.119026, 34.016747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903818, 31.537348, 33.589874>,  <31.185917, 31.674049, 33.655144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903818, 31.537348, 33.589874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869049, 31.671213, 33.965202>,  <31.848188, 31.751532, 34.190399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869049, 31.671213, 33.965202>,  <31.903818, 31.537348, 33.589874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869049, 31.671213, 33.965202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709677, -0.640215, 0.294081,
		0.699145, 0.691467, -0.181852,
		-0.086923, 0.334661, 0.938321,
		31.842972, 31.771612, 34.246700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572876, 31.748915, 33.855171>,  <31.903818, 31.537348, 33.589874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572876, 31.748915, 33.855171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349590, 31.621664, 34.161686>,  <32.215618, 31.545315, 34.345596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349590, 31.621664, 34.161686>,  <32.572876, 31.748915, 33.855171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349590, 31.621664, 34.161686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656042, -0.734650, 0.172911,
		0.507947, 0.599238, 0.618792,
		-0.558210, -0.318124, 0.766289,
		32.182129, 31.526226, 34.391571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840954, 31.843693, 34.500702>,  <32.572876, 31.748915, 33.855171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840954, 31.843693, 34.500702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600197, 31.524944, 34.479855>,  <32.455742, 31.333694, 34.467346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600197, 31.524944, 34.479855>,  <32.840954, 31.843693, 34.500702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600197, 31.524944, 34.479855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760655, -0.591967, 0.266420,
		-0.243158, 0.120711, 0.962447,
		-0.601896, -0.796871, -0.052122,
		32.419628, 31.285883, 34.464218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917778, 31.376520, 35.094257>,  <32.840954, 31.843693, 34.500702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917778, 31.376520, 35.094257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801491, 31.182148, 34.764565>,  <32.731716, 31.065525, 34.566750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801491, 31.182148, 34.764565>,  <32.917778, 31.376520, 35.094257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801491, 31.182148, 34.764565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885969, -0.462005, -0.040120,
		-0.361302, -0.741904, 0.564836,
		-0.290722, -0.485932, -0.824228,
		32.714275, 31.036369, 34.517296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483936, 30.896151, 35.100124>,  <32.917778, 31.376520, 35.094257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483936, 30.896151, 35.100124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371143, 30.912161, 34.716690>,  <33.303467, 30.921768, 34.486629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371143, 30.912161, 34.716690>,  <33.483936, 30.896151, 35.100124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371143, 30.912161, 34.716690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940707, -0.184837, -0.284438,
		-0.188567, -0.981954, 0.014468,
		-0.281979, 0.040026, -0.958585,
		33.286549, 30.924170, 34.429115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684715, 30.328957, 34.802807>,  <33.483936, 30.896151, 35.100124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684715, 30.328957, 34.802807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652641, 30.567486, 34.483315>,  <33.633396, 30.710604, 34.291618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652641, 30.567486, 34.483315>,  <33.684715, 30.328957, 34.802807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652641, 30.567486, 34.483315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796553, -0.443384, -0.410991,
		-0.599227, -0.669187, -0.439449,
		-0.080185, 0.596322, -0.798731,
		33.628586, 30.746382, 34.243694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560612, 29.879032, 34.143604>,  <33.684715, 30.328957, 34.802807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560612, 29.879032, 34.143604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699604, 30.238300, 34.035870>,  <33.783001, 30.453861, 33.971230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699604, 30.238300, 34.035870>,  <33.560612, 29.879032, 34.143604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699604, 30.238300, 34.035870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729439, -0.439413, -0.524248,
		-0.589215, -0.014298, -0.807850,
		0.347484, 0.898171, -0.269338,
		33.803848, 30.507751, 33.955067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660828, 29.956610, 33.373817>,  <33.560612, 29.879032, 34.143604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660828, 29.956610, 33.373817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877098, 30.268959, 33.498974>,  <34.006863, 30.456369, 33.574066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877098, 30.268959, 33.498974>,  <33.660828, 29.956610, 33.373817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877098, 30.268959, 33.498974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759151, -0.292674, -0.581405,
		-0.362429, 0.551886, -0.751044,
		0.540680, 0.780874, 0.312892,
		34.039303, 30.503222, 33.592842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890007, 30.242609, 32.794502>,  <33.660828, 29.956610, 33.373817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890007, 30.242609, 32.794502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147362, 30.382086, 33.067112>,  <34.301773, 30.465773, 33.230679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147362, 30.382086, 33.067112>,  <33.890007, 30.242609, 32.794502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147362, 30.382086, 33.067112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752308, -0.123160, -0.647197,
		-0.141738, 0.929110, -0.341564,
		0.643384, 0.348694, 0.681520,
		34.340378, 30.486694, 33.271568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408604, 30.602442, 32.395779>,  <33.890007, 30.242609, 32.794502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408604, 30.602442, 32.395779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589233, 30.551102, 32.748959>,  <34.697613, 30.520298, 32.960869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589233, 30.551102, 32.748959>,  <34.408604, 30.602442, 32.395779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589233, 30.551102, 32.748959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872904, -0.141319, -0.466978,
		0.184716, 0.981608, 0.048223,
		0.451575, -0.128352, 0.882953,
		34.724705, 30.512596, 33.013844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949211, 31.097063, 32.407082>,  <34.408604, 30.602442, 32.395779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949211, 31.097063, 32.407082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033524, 30.801884, 32.663517>,  <35.084110, 30.624775, 32.817379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033524, 30.801884, 32.663517>,  <34.949211, 31.097063, 32.407082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033524, 30.801884, 32.663517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888066, -0.129531, -0.441089,
		0.408543, 0.662307, 0.628046,
		0.210785, -0.737950, 0.641092,
		35.096760, 30.580498, 32.855846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684105, 31.185143, 32.442112>,  <34.949211, 31.097063, 32.407082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684105, 31.185143, 32.442112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582897, 30.816090, 32.558548>,  <35.522171, 30.594658, 32.628410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582897, 30.816090, 32.558548>,  <35.684105, 31.185143, 32.442112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582897, 30.816090, 32.558548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884217, -0.342636, -0.317430,
		0.392609, 0.177070, 0.902499,
		-0.253021, -0.922630, 0.291090,
		35.506992, 30.539301, 32.645874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250896, 30.932688, 32.907692>,  <35.684105, 31.185143, 32.442112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250896, 30.932688, 32.907692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056664, 30.622168, 32.746910>,  <35.940125, 30.435856, 32.650440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056664, 30.622168, 32.746910>,  <36.250896, 30.932688, 32.907692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056664, 30.622168, 32.746910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861870, -0.348202, -0.368695,
		0.146255, -0.525467, 0.838149,
		-0.485582, -0.776299, -0.401958,
		35.910988, 30.389278, 32.626324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804302, 30.414995, 32.786816>,  <36.250896, 30.932688, 32.907692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804302, 30.414995, 32.786816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492500, 30.273857, 32.579788>,  <36.305420, 30.189175, 32.455570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492500, 30.273857, 32.579788>,  <36.804302, 30.414995, 32.786816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492500, 30.273857, 32.579788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626093, -0.413000, -0.661391,
		0.019612, -0.839602, 0.542848,
		-0.779502, -0.352844, -0.517570,
		36.258648, 30.168003, 32.424519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916138, 29.664761, 32.569588>,  <36.804302, 30.414995, 32.786816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916138, 29.664761, 32.569588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646286, 29.805256, 32.309891>,  <36.484375, 29.889553, 32.154072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646286, 29.805256, 32.309891>,  <36.916138, 29.664761, 32.569588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646286, 29.805256, 32.309891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535910, -0.371791, -0.758005,
		-0.507622, -0.859303, 0.062587,
		-0.674626, 0.351239, -0.649239,
		36.443897, 29.910627, 32.115120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829128, 29.172667, 32.143135>,  <36.916138, 29.664761, 32.569588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829128, 29.172667, 32.143135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677399, 29.471371, 31.924606>,  <36.586361, 29.650593, 31.793489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677399, 29.471371, 31.924606>,  <36.829128, 29.172667, 32.143135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677399, 29.471371, 31.924606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449291, -0.367507, -0.814295,
		-0.808860, -0.554334, -0.196110,
		-0.379320, 0.746761, -0.546319,
		36.563602, 29.695398, 31.760710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606972, 28.838007, 31.526106>,  <36.829128, 29.172667, 32.143135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606972, 28.838007, 31.526106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614792, 29.229248, 31.443228>,  <36.619484, 29.463993, 31.393501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614792, 29.229248, 31.443228>,  <36.606972, 28.838007, 31.526106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614792, 29.229248, 31.443228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326538, -0.202117, -0.923321,
		-0.944982, -0.049602, -0.323341,
		0.019554, 0.978104, -0.207194,
		36.620659, 29.522680, 31.381069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145504, 28.962479, 30.879198>,  <36.606972, 28.838007, 31.526106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145504, 28.962479, 30.879198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423843, 29.248730, 30.903418>,  <36.590847, 29.420481, 30.917950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423843, 29.248730, 30.903418>,  <36.145504, 28.962479, 30.879198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423843, 29.248730, 30.903418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135893, -0.048413, -0.989540,
		-0.705212, 0.696801, -0.130937,
		0.695851, 0.715629, 0.060549,
		36.632599, 29.463419, 30.921581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142754, 29.284153, 30.240658>,  <36.145504, 28.962479, 30.879198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142754, 29.284153, 30.240658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475952, 29.470182, 30.360542>,  <36.675869, 29.581800, 30.432472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475952, 29.470182, 30.360542>,  <36.142754, 29.284153, 30.240658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475952, 29.470182, 30.360542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299085, 0.077231, -0.951096,
		-0.465477, 0.881896, -0.074764,
		0.832994, 0.465074, 0.299711,
		36.725849, 29.609705, 30.450457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145042, 29.798096, 29.712315>,  <36.142754, 29.284153, 30.240658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145042, 29.798096, 29.712315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495037, 29.736439, 29.895899>,  <36.705032, 29.699446, 30.006050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495037, 29.736439, 29.895899>,  <36.145042, 29.798096, 29.712315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495037, 29.736439, 29.895899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475835, 0.098813, -0.873966,
		0.089362, 0.983095, 0.159805,
		0.874983, -0.154141, 0.458961,
		36.757530, 29.690197, 30.033587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535744, 30.242813, 29.473156>,  <36.145042, 29.798096, 29.712315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535744, 30.242813, 29.473156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823101, 30.003170, 29.614569>,  <36.995514, 29.859385, 29.699417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823101, 30.003170, 29.614569>,  <36.535744, 30.242813, 29.473156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823101, 30.003170, 29.614569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509549, 0.107212, -0.853736,
		0.473577, 0.793458, 0.382295,
		0.718390, -0.599108, 0.353533,
		37.038620, 29.823439, 29.720629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130074, 30.594465, 29.338247>,  <36.535744, 30.242813, 29.473156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130074, 30.594465, 29.338247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224136, 30.208637, 29.386086>,  <37.280575, 29.977140, 29.414789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224136, 30.208637, 29.386086>,  <37.130074, 30.594465, 29.338247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224136, 30.208637, 29.386086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590929, 0.044189, -0.805513,
		0.771690, 0.260095, 0.580384,
		0.235156, -0.964571, 0.119597,
		37.294682, 29.919266, 29.421965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850101, 30.661579, 29.210081>,  <37.130074, 30.594465, 29.338247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850101, 30.661579, 29.210081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737499, 30.281277, 29.158203>,  <37.669937, 30.053095, 29.127077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737499, 30.281277, 29.158203>,  <37.850101, 30.661579, 29.210081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737499, 30.281277, 29.158203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574126, -0.058586, -0.816668,
		0.768853, -0.304354, 0.562346,
		-0.281502, -0.950755, -0.129693,
		37.653049, 29.996050, 29.119295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423443, 30.289089, 28.857853>,  <37.850101, 30.661579, 29.210081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423443, 30.289089, 28.857853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134083, 30.019985, 28.795763>,  <37.960468, 29.858522, 28.758509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134083, 30.019985, 28.795763>,  <38.423443, 30.289089, 28.857853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134083, 30.019985, 28.795763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486899, -0.337686, -0.805542,
		0.489518, -0.658304, 0.571846,
		-0.723396, -0.672758, -0.155224,
		37.917065, 29.818157, 28.749195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803604, 29.616362, 28.822336>,  <38.423443, 30.289089, 28.857853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803604, 29.616362, 28.822336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458961, 29.593153, 28.620634>,  <38.252178, 29.579227, 28.499613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458961, 29.593153, 28.620634>,  <38.803604, 29.616362, 28.822336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458961, 29.593153, 28.620634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483434, -0.396585, -0.780392,
		-0.154698, -0.916162, 0.369750,
		-0.861603, -0.058024, -0.504255,
		38.200481, 29.575747, 28.469357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839622, 28.986294, 28.436604>,  <38.803604, 29.616362, 28.822336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839622, 28.986294, 28.436604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554569, 29.211018, 28.268543>,  <38.383537, 29.345852, 28.167707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554569, 29.211018, 28.268543>,  <38.839622, 28.986294, 28.436604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554569, 29.211018, 28.268543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376834, -0.198616, -0.904737,
		-0.591738, -0.803071, -0.070168,
		-0.712631, 0.561808, -0.420153,
		38.340778, 29.379560, 28.142498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604538, 28.565256, 27.921288>,  <38.839622, 28.986294, 28.436604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604538, 28.565256, 27.921288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456219, 28.924931, 27.828356>,  <38.367229, 29.140736, 27.772596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456219, 28.924931, 27.828356>,  <38.604538, 28.565256, 27.921288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456219, 28.924931, 27.828356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190712, -0.171107, -0.966618,
		-0.908923, -0.402723, -0.108041,
		-0.370793, 0.899186, -0.232328,
		38.344982, 29.194687, 27.758657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011513, 28.525284, 27.446695>,  <38.604538, 28.565256, 27.921288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011513, 28.525284, 27.446695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196911, 28.878353, 27.415562>,  <38.308151, 29.090195, 27.396881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196911, 28.878353, 27.415562>,  <38.011513, 28.525284, 27.446695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196911, 28.878353, 27.415562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133149, -0.156221, -0.978706,
		-0.876039, 0.443260, -0.189935,
		0.463494, 0.882675, -0.077836,
		38.335960, 29.143156, 27.392210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810001, 28.823805, 26.810406>,  <38.011513, 28.525284, 27.446695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810001, 28.823805, 26.810406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119247, 29.056370, 26.911795>,  <38.304794, 29.195908, 26.972628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119247, 29.056370, 26.911795>,  <37.810001, 28.823805, 26.810406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119247, 29.056370, 26.911795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366128, -0.082767, -0.926876,
		-0.517917, 0.809389, -0.276860,
		0.773119, 0.581411, 0.253474,
		38.351185, 29.230793, 26.987837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815498, 29.239429, 26.347839>,  <37.810001, 28.823805, 26.810406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815498, 29.239429, 26.347839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190681, 29.230751, 26.486265>,  <38.415791, 29.225544, 26.569321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190681, 29.230751, 26.486265>,  <37.815498, 29.239429, 26.347839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190681, 29.230751, 26.486265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339707, -0.142577, -0.929662,
		0.069512, 0.989546, -0.126360,
		0.937959, -0.021697, 0.346067,
		38.472069, 29.224241, 26.590086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171131, 29.735481, 25.950325>,  <37.815498, 29.239429, 26.347839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171131, 29.735481, 25.950325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433254, 29.480238, 26.112011>,  <38.590530, 29.327093, 26.209023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433254, 29.480238, 26.112011>,  <38.171131, 29.735481, 25.950325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433254, 29.480238, 26.112011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365607, -0.200322, -0.908957,
		0.660985, 0.743432, 0.102023,
		0.655310, -0.638107, 0.404214,
		38.629848, 29.288805, 26.233274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673244, 29.722713, 25.476431>,  <38.171131, 29.735481, 25.950325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673244, 29.722713, 25.476431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786064, 29.395086, 25.676260>,  <38.853756, 29.198509, 25.796158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786064, 29.395086, 25.676260>,  <38.673244, 29.722713, 25.476431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786064, 29.395086, 25.676260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314191, -0.413141, -0.854751,
		0.906494, 0.398045, 0.140817,
		0.282052, -0.819070, 0.499571,
		38.870678, 29.149364, 25.826132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392891, 29.633987, 25.311979>,  <38.673244, 29.722713, 25.476431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392891, 29.633987, 25.311979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238708, 29.285141, 25.432537>,  <39.146198, 29.075834, 25.504871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238708, 29.285141, 25.432537>,  <39.392891, 29.633987, 25.311979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238708, 29.285141, 25.432537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323708, -0.433682, -0.840912,
		0.864080, -0.226574, 0.449477,
		-0.385459, -0.872115, 0.301393,
		39.123070, 29.023506, 25.522955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905262, 29.187551, 25.194357>,  <39.392891, 29.633987, 25.311979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905262, 29.187551, 25.194357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586994, 28.949631, 25.240185>,  <39.396034, 28.806879, 25.267681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586994, 28.949631, 25.240185>,  <39.905262, 29.187551, 25.194357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586994, 28.949631, 25.240185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294641, -0.545297, -0.784754,
		0.529246, -0.590646, 0.609127,
		-0.795667, -0.594801, 0.114568,
		39.348293, 28.771191, 25.274555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201054, 28.561985, 25.054361>,  <39.905262, 29.187551, 25.194357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201054, 28.561985, 25.054361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805531, 28.530996, 25.003351>,  <39.568218, 28.512403, 24.972744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805531, 28.530996, 25.003351>,  <40.201054, 28.561985, 25.054361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805531, 28.530996, 25.003351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146622, -0.663065, -0.734062,
		-0.027689, -0.744542, 0.667001,
		-0.988805, -0.077472, -0.127526,
		39.508888, 28.507755, 24.965094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007294, 27.807707, 24.786856>,  <40.201054, 28.561985, 25.054361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007294, 27.807707, 24.786856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667397, 27.998648, 24.697344>,  <39.463459, 28.113213, 24.643637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667397, 27.998648, 24.697344>,  <40.007294, 27.807707, 24.786856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667397, 27.998648, 24.697344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003975, -0.430258, -0.902697,
		-0.527190, -0.766167, 0.367504,
		-0.849738, 0.477354, -0.223782,
		39.412476, 28.141853, 24.630209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587833, 27.262913, 24.567316>,  <40.007294, 27.807707, 24.786856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587833, 27.262913, 24.567316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471325, 27.603708, 24.393293>,  <39.401421, 27.808186, 24.288879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471325, 27.603708, 24.393293>,  <39.587833, 27.262913, 24.567316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471325, 27.603708, 24.393293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045374, -0.441958, -0.895887,
		-0.955563, -0.280688, 0.090072,
		-0.291273, 0.851990, -0.435055,
		39.383942, 27.859304, 24.262777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029591, 27.090340, 24.252825>,  <39.587833, 27.262913, 24.567316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029591, 27.090340, 24.252825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208130, 27.406055, 24.084162>,  <39.315254, 27.595486, 23.982964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208130, 27.406055, 24.084162>,  <39.029591, 27.090340, 24.252825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208130, 27.406055, 24.084162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087075, -0.507271, -0.857376,
		-0.890612, 0.345974, -0.295148,
		0.446350, 0.789289, -0.421656,
		39.342033, 27.642843, 23.957664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726391, 27.017204, 23.570673>,  <39.029591, 27.090340, 24.252825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726391, 27.017204, 23.570673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033867, 27.269911, 23.530697>,  <39.218353, 27.421535, 23.506712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033867, 27.269911, 23.530697>,  <38.726391, 27.017204, 23.570673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033867, 27.269911, 23.530697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172831, -0.355587, -0.918524,
		-0.615831, 0.688787, -0.382525,
		0.768689, 0.631768, -0.099938,
		39.264473, 27.459440, 23.500715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627773, 27.324434, 22.909014>,  <38.726391, 27.017204, 23.570673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627773, 27.324434, 22.909014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013580, 27.350744, 23.011297>,  <39.245064, 27.366529, 23.072668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013580, 27.350744, 23.011297>,  <38.627773, 27.324434, 22.909014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013580, 27.350744, 23.011297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263534, -0.180295, -0.947652,
		-0.016228, 0.981411, -0.191231,
		0.964514, 0.065774, 0.255709,
		39.302933, 27.370476, 23.088011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959946, 27.681271, 22.464939>,  <38.627773, 27.324434, 22.909014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959946, 27.681271, 22.464939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285622, 27.522320, 22.634260>,  <39.481026, 27.426949, 22.735853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285622, 27.522320, 22.634260>,  <38.959946, 27.681271, 22.464939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285622, 27.522320, 22.634260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379587, -0.187352, -0.905987,
		0.439325, 0.898327, -0.001702,
		0.814191, -0.397377, 0.423302,
		39.529881, 27.403107, 22.761251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378151, 27.863466, 21.930550>,  <38.959946, 27.681271, 22.464939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378151, 27.863466, 21.930550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577168, 27.580303, 22.131077>,  <39.696579, 27.410406, 22.251392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577168, 27.580303, 22.131077>,  <39.378151, 27.863466, 21.930550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577168, 27.580303, 22.131077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329874, -0.380099, -0.864123,
		0.802269, 0.595309, 0.044405,
		0.497542, -0.707907, 0.501318,
		39.726429, 27.367931, 22.281473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119976, 27.889414, 21.645443>,  <39.378151, 27.863466, 21.930550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119976, 27.889414, 21.645443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025585, 27.533144, 21.800886>,  <39.968948, 27.319382, 21.894152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025585, 27.533144, 21.800886>,  <40.119976, 27.889414, 21.645443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025585, 27.533144, 21.800886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366700, -0.451953, -0.813185,
		0.899913, -0.049395, 0.433262,
		-0.235981, -0.890673, 0.388606,
		39.954792, 27.265942, 21.917467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703060, 27.552727, 21.590042>,  <40.119976, 27.889414, 21.645443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703060, 27.552727, 21.590042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459393, 27.242136, 21.654543>,  <40.313194, 27.055782, 21.693243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459393, 27.242136, 21.654543>,  <40.703060, 27.552727, 21.590042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459393, 27.242136, 21.654543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410988, -0.482998, -0.773177,
		0.678236, -0.404722, 0.613348,
		-0.609167, -0.776475, 0.161251,
		40.276642, 27.009193, 21.702919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115196, 27.007963, 21.509689>,  <40.703060, 27.552727, 21.590042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115196, 27.007963, 21.509689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744255, 26.861925, 21.476881>,  <40.521690, 26.774302, 21.457195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744255, 26.861925, 21.476881>,  <41.115196, 27.007963, 21.509689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744255, 26.861925, 21.476881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295917, -0.581359, -0.757928,
		0.229033, -0.727136, 0.647161,
		-0.927349, -0.365097, -0.082021,
		40.466049, 26.752396, 21.452274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206211, 26.300285, 21.348961>,  <41.115196, 27.007963, 21.509689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206211, 26.300285, 21.348961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833344, 26.364689, 21.219259>,  <40.609623, 26.403332, 21.141438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833344, 26.364689, 21.219259>,  <41.206211, 26.300285, 21.348961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833344, 26.364689, 21.219259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170989, -0.593658, -0.786341,
		-0.319104, -0.788445, 0.525858,
		-0.932167, 0.161009, -0.324255,
		40.553692, 26.412992, 21.121983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949554, 25.608477, 21.372396>,  <41.206211, 26.300285, 21.348961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949554, 25.608477, 21.372396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752914, 25.857393, 21.128731>,  <40.634930, 26.006742, 20.982531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752914, 25.857393, 21.128731>,  <40.949554, 25.608477, 21.372396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752914, 25.857393, 21.128731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256981, -0.564706, -0.784262,
		-0.832038, -0.542089, 0.117694,
		-0.491602, 0.622291, -0.609164,
		40.605434, 26.044081, 20.945982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543633, 25.120745, 20.991892>,  <40.949554, 25.608477, 21.372396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543633, 25.120745, 20.991892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639729, 25.454977, 20.794270>,  <40.697388, 25.655516, 20.675697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639729, 25.454977, 20.794270>,  <40.543633, 25.120745, 20.991892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639729, 25.454977, 20.794270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079037, -0.524109, -0.847976,
		-0.967489, 0.164673, -0.191956,
		0.240245, 0.835579, -0.494055,
		40.711803, 25.705650, 20.646053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198433, 25.200483, 20.418776>,  <40.543633, 25.120745, 20.991892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198433, 25.200483, 20.418776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521709, 25.421366, 20.336901>,  <40.715675, 25.553894, 20.287777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521709, 25.421366, 20.336901>,  <40.198433, 25.200483, 20.418776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521709, 25.421366, 20.336901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048205, -0.408424, -0.911519,
		-0.586944, 0.726815, -0.356704,
		0.808191, 0.552205, -0.204685,
		40.764168, 25.587027, 20.275496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107265, 25.508738, 19.844986>,  <40.198433, 25.200483, 20.418776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107265, 25.508738, 19.844986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490360, 25.401039, 19.885483>,  <40.720215, 25.336420, 19.909781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490360, 25.401039, 19.885483>,  <40.107265, 25.508738, 19.844986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490360, 25.401039, 19.885483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089334, -0.612963, -0.785045,
		0.273430, 0.742820, -0.611109,
		0.957734, -0.269248, 0.101244,
		40.777679, 25.320265, 19.915855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116680, 25.815884, 19.197083>,  <40.107265, 25.508738, 19.844986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116680, 25.815884, 19.197083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381927, 25.517145, 19.177076>,  <40.541077, 25.337902, 19.165073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381927, 25.517145, 19.177076>,  <40.116680, 25.815884, 19.197083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381927, 25.517145, 19.177076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325145, 0.347590, -0.879466,
		0.674210, 0.566925, 0.473326,
		0.663115, -0.746845, -0.050016,
		40.580860, 25.293091, 19.162071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552155, 25.917358, 18.561722>,  <40.116680, 25.815884, 19.197083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552155, 25.917358, 18.561722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663795, 25.546638, 18.662235>,  <40.730778, 25.324205, 18.722544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663795, 25.546638, 18.662235>,  <40.552155, 25.917358, 18.561722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663795, 25.546638, 18.662235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525841, -0.071449, -0.847577,
		0.803490, 0.368692, 0.467409,
		0.279099, -0.926802, 0.251282,
		40.747524, 25.268599, 18.737619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292732, 25.874716, 18.435846>,  <40.552155, 25.917358, 18.561722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292732, 25.874716, 18.435846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131298, 25.508852, 18.426764>,  <41.034439, 25.289333, 18.421314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131298, 25.508852, 18.426764>,  <41.292732, 25.874716, 18.435846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131298, 25.508852, 18.426764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714847, -0.299734, -0.631786,
		0.571063, -0.271212, 0.774810,
		-0.403585, -0.914661, -0.022708,
		41.010223, 25.234453, 18.419950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616432, 26.456076, 18.748915>,  <41.292732, 25.874716, 18.435846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616432, 26.456076, 18.748915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474438, 26.742479, 18.508476>,  <41.389240, 26.914322, 18.364212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474438, 26.742479, 18.508476>,  <41.616432, 26.456076, 18.748915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474438, 26.742479, 18.508476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799022, 0.101427, 0.592686,
		0.485336, 0.690683, 0.536102,
		-0.354983, 0.716009, -0.601097,
		41.367943, 26.957283, 18.328148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331650, 26.997356, 19.233818>,  <41.616432, 26.456076, 18.748915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331650, 26.997356, 19.233818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179626, 27.078064, 18.872744>,  <41.088413, 27.126488, 18.656099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179626, 27.078064, 18.872744>,  <41.331650, 26.997356, 19.233818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179626, 27.078064, 18.872744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798568, 0.420872, 0.430297,
		0.466735, 0.884396, 0.001168,
		-0.380062, 0.201768, -0.902687,
		41.065609, 27.138594, 18.601938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980465, 27.748749, 19.125839>,  <41.331650, 26.997356, 19.233818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980465, 27.748749, 19.125839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814072, 27.489492, 18.870693>,  <40.714237, 27.333939, 18.717606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814072, 27.489492, 18.870693>,  <40.980465, 27.748749, 19.125839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814072, 27.489492, 18.870693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905344, 0.361118, 0.223485,
		0.085495, 0.670454, -0.737009,
		-0.415984, -0.648140, -0.637865,
		40.689278, 27.295050, 18.679333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572250, 28.113636, 18.533295>,  <40.980465, 27.748749, 19.125839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572250, 28.113636, 18.533295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440659, 27.769344, 18.688690>,  <40.361706, 27.562769, 18.781927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440659, 27.769344, 18.688690>,  <40.572250, 28.113636, 18.533295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440659, 27.769344, 18.688690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786452, 0.477444, 0.391842,
		-0.522751, -0.176621, -0.833988,
		-0.328975, -0.860728, 0.388488,
		40.341965, 27.511126, 18.805237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869129, 27.910151, 18.388992>,  <40.572250, 28.113636, 18.533295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869129, 27.910151, 18.388992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964561, 27.736549, 18.736492>,  <40.021820, 27.632389, 18.944992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964561, 27.736549, 18.736492>,  <39.869129, 27.910151, 18.388992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964561, 27.736549, 18.736492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639539, 0.602983, 0.476865,
		-0.730801, -0.669367, -0.133705,
		0.238576, -0.434003, 0.868748,
		40.036133, 27.606348, 18.997116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206932, 27.732096, 18.693136>,  <39.869129, 27.910151, 18.388992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206932, 27.732096, 18.693136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485241, 27.760790, 18.979004>,  <39.652225, 27.778006, 19.150524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485241, 27.760790, 18.979004>,  <39.206932, 27.732096, 18.693136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485241, 27.760790, 18.979004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602034, 0.600908, 0.525798,
		-0.391733, -0.796092, 0.461283,
		0.695773, 0.071736, 0.714670,
		39.693974, 27.782310, 19.193405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843369, 27.610140, 19.344318>,  <39.206932, 27.732096, 18.693136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843369, 27.610140, 19.344318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175266, 27.804405, 19.454340>,  <39.374405, 27.920965, 19.520353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175266, 27.804405, 19.454340>,  <38.843369, 27.610140, 19.344318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175266, 27.804405, 19.454340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533527, 0.545405, 0.646438,
		0.163935, -0.683128, 0.711662,
		0.829744, 0.485664, 0.275056,
		39.424191, 27.950104, 19.536858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541698, 27.897152, 19.866783>,  <38.843369, 27.610140, 19.344318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541698, 27.897152, 19.866783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914032, 28.031309, 19.924837>,  <39.137432, 28.111803, 19.959669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914032, 28.031309, 19.924837>,  <38.541698, 27.897152, 19.866783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914032, 28.031309, 19.924837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323169, 0.570025, 0.755403,
		0.170625, -0.750056, 0.638986,
		0.930832, 0.335391, 0.145135,
		39.193283, 28.131927, 19.968378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705559, 27.793821, 20.469151>,  <38.541698, 27.897152, 19.866783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705559, 27.793821, 20.469151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950005, 28.093565, 20.367170>,  <39.096672, 28.273411, 20.305983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950005, 28.093565, 20.367170>,  <38.705559, 27.793821, 20.469151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950005, 28.093565, 20.367170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309810, 0.522843, 0.794136,
		0.728392, -0.406323, 0.551676,
		0.611116, 0.749357, -0.254952,
		39.133339, 28.318373, 20.290686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057640, 27.974676, 21.104109>,  <38.705559, 27.793821, 20.469151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057640, 27.974676, 21.104109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084091, 28.283989, 20.851866>,  <39.099964, 28.469576, 20.700520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084091, 28.283989, 20.851866>,  <39.057640, 27.974676, 21.104109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084091, 28.283989, 20.851866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392006, 0.601308, 0.696247,
		0.917583, 0.201158, 0.342895,
		0.066130, 0.773281, -0.630605,
		39.103931, 28.515974, 20.662683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339870, 28.521425, 21.496380>,  <39.057640, 27.974676, 21.104109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339870, 28.521425, 21.496380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156704, 28.695284, 21.186180>,  <39.046806, 28.799599, 21.000061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156704, 28.695284, 21.186180>,  <39.339870, 28.521425, 21.496380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156704, 28.695284, 21.186180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312814, 0.737766, 0.598205,
		0.832144, 0.516513, -0.201869,
		-0.457913, 0.434645, -0.775499,
		39.019329, 28.825678, 20.953529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692154, 29.160046, 21.513403>,  <39.339870, 28.521425, 21.496380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692154, 29.160046, 21.513403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354675, 29.202509, 21.302917>,  <39.152187, 29.227987, 21.176626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354675, 29.202509, 21.302917>,  <39.692154, 29.160046, 21.513403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354675, 29.202509, 21.302917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234204, 0.809245, 0.538768,
		0.483032, 0.577800, -0.657896,
		-0.843699, 0.106160, -0.526215,
		39.101566, 29.234358, 21.145054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658730, 29.869061, 21.170839>,  <39.692154, 29.160046, 21.513403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658730, 29.869061, 21.170839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285812, 29.727211, 21.199345>,  <39.062061, 29.642101, 21.216448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285812, 29.727211, 21.199345>,  <39.658730, 29.869061, 21.170839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285812, 29.727211, 21.199345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299173, 0.866717, 0.399120,
		-0.203303, 0.350776, -0.914125,
		-0.932289, -0.354624, 0.071263,
		39.006126, 29.620823, 21.220724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270187, 30.490143, 21.169500>,  <39.658730, 29.869061, 21.170839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270187, 30.490143, 21.169500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010525, 30.214905, 21.299192>,  <38.854729, 30.049763, 21.377008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010525, 30.214905, 21.299192>,  <39.270187, 30.490143, 21.169500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010525, 30.214905, 21.299192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391522, 0.667707, 0.633149,
		-0.652157, 0.284068, -0.702849,
		-0.649155, -0.688093, 0.324231,
		38.815777, 30.008476, 21.396461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619419, 30.832106, 21.214268>,  <39.270187, 30.490143, 21.169500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619419, 30.832106, 21.214268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607166, 30.512291, 21.454203>,  <38.599815, 30.320402, 21.598164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607166, 30.512291, 21.454203>,  <38.619419, 30.832106, 21.214268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607166, 30.512291, 21.454203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421110, 0.554580, 0.717710,
		-0.906492, -0.230616, -0.353678,
		-0.030628, -0.799536, 0.599837,
		38.597977, 30.272430, 21.634153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933544, 30.872042, 21.497383>,  <38.619419, 30.832106, 21.214268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933544, 30.872042, 21.497383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116516, 30.629080, 21.757174>,  <38.226299, 30.483303, 21.913048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116516, 30.629080, 21.757174>,  <37.933544, 30.872042, 21.497383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116516, 30.629080, 21.757174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355396, 0.544625, 0.759656,
		-0.815137, -0.578312, 0.033261,
		0.457434, -0.607403, 0.649474,
		38.253746, 30.446859, 21.952015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432323, 30.647808, 21.940420>,  <37.933544, 30.872042, 21.497383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432323, 30.647808, 21.940420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782230, 30.617807, 22.131901>,  <37.992176, 30.599808, 22.246788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782230, 30.617807, 22.131901>,  <37.432323, 30.647808, 21.940420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782230, 30.617807, 22.131901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329926, 0.631348, 0.701818,
		-0.354863, -0.771864, 0.527540,
		0.874769, -0.075000, 0.478700,
		38.044662, 30.595308, 22.275511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228130, 30.536293, 22.694120>,  <37.432323, 30.647808, 21.940420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228130, 30.536293, 22.694120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599224, 30.680740, 22.656395>,  <37.821880, 30.767408, 22.633759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599224, 30.680740, 22.656395>,  <37.228130, 30.536293, 22.694120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599224, 30.680740, 22.656395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183084, 0.660527, 0.728137,
		0.325241, -0.658254, 0.678911,
		0.927739, 0.361117, -0.094315,
		37.877544, 30.789076, 22.628099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228306, 30.022051, 23.350309>,  <37.228130, 30.536293, 22.694120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228306, 30.022051, 23.350309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575974, 30.217943, 23.377762>,  <37.784573, 30.335478, 23.394234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575974, 30.217943, 23.377762>,  <37.228306, 30.022051, 23.350309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575974, 30.217943, 23.377762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159876, 0.146948, 0.976138,
		0.467960, -0.859401, 0.206019,
		0.869168, 0.489731, 0.068632,
		37.836723, 30.364862, 23.398352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600880, 29.782263, 23.886505>,  <37.228306, 30.022051, 23.350309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600880, 29.782263, 23.886505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738476, 30.154125, 23.833727>,  <37.821033, 30.377243, 23.802059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738476, 30.154125, 23.833727>,  <37.600880, 29.782263, 23.886505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738476, 30.154125, 23.833727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294446, 0.240231, 0.924981,
		0.891614, -0.279330, 0.356370,
		0.343986, 0.929658, -0.131946,
		37.841671, 30.433023, 23.794144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090588, 29.912775, 24.407150>,  <37.600880, 29.782263, 23.886505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090588, 29.912775, 24.407150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962551, 30.270483, 24.282045>,  <37.885731, 30.485107, 24.206982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962551, 30.270483, 24.282045>,  <38.090588, 29.912775, 24.407150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962551, 30.270483, 24.282045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253943, 0.237065, 0.937717,
		0.912719, 0.379578, 0.151212,
		-0.320090, 0.894271, -0.312765,
		37.866524, 30.538765, 24.188215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290321, 30.300163, 24.857494>,  <38.090588, 29.912775, 24.407150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290321, 30.300163, 24.857494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038311, 30.559774, 24.686928>,  <37.887104, 30.715540, 24.584587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038311, 30.559774, 24.686928>,  <38.290321, 30.300163, 24.857494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038311, 30.559774, 24.686928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285064, 0.317485, 0.904401,
		0.722361, 0.691353, -0.015010,
		-0.630026, 0.649025, -0.426419,
		37.849304, 30.754482, 24.559002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391766, 30.917831, 25.126551>,  <38.290321, 30.300163, 24.857494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391766, 30.917831, 25.126551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019230, 30.941435, 24.982811>,  <37.795708, 30.955597, 24.896568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019230, 30.941435, 24.982811>,  <38.391766, 30.917831, 25.126551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019230, 30.941435, 24.982811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332893, 0.262086, 0.905811,
		0.147631, 0.963239, -0.224446,
		-0.931336, 0.059009, -0.359348,
		37.739830, 30.959137, 24.875008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138710, 31.482855, 25.397938>,  <38.391766, 30.917831, 25.126551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138710, 31.482855, 25.397938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816608, 31.272535, 25.288321>,  <37.623348, 31.146343, 25.222551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816608, 31.272535, 25.288321>,  <38.138710, 31.482855, 25.397938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816608, 31.272535, 25.288321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465010, 0.273279, 0.842071,
		-0.367869, 0.805516, -0.464561,
		-0.805257, -0.525797, -0.274042,
		37.575031, 31.114796, 25.206108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597153, 31.964520, 25.454842>,  <38.138710, 31.482855, 25.397938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597153, 31.964520, 25.454842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425556, 31.605186, 25.492708>,  <37.322598, 31.389585, 25.515429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425556, 31.605186, 25.492708>,  <37.597153, 31.964520, 25.454842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425556, 31.605186, 25.492708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402741, 0.284020, 0.870133,
		-0.808557, 0.335155, -0.483638,
		-0.428993, -0.898334, 0.094666,
		37.296860, 31.335686, 25.521109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954681, 32.079544, 25.540966>,  <37.597153, 31.964520, 25.454842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954681, 32.079544, 25.540966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947575, 31.700174, 25.667574>,  <36.943310, 31.472553, 25.743538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947575, 31.700174, 25.667574>,  <36.954681, 32.079544, 25.540966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947575, 31.700174, 25.667574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511216, 0.280675, 0.812329,
		-0.859268, -0.147378, -0.489834,
		-0.017764, -0.948420, 0.316518,
		36.942245, 31.415648, 25.762529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283577, 31.995987, 25.806202>,  <36.954681, 32.079544, 25.540966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283577, 31.995987, 25.806202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515842, 31.715246, 25.971241>,  <36.655201, 31.546803, 26.070265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515842, 31.715246, 25.971241>,  <36.283577, 31.995987, 25.806202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515842, 31.715246, 25.971241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505760, 0.086173, 0.858359,
		-0.637996, -0.707092, -0.304931,
		0.580662, -0.701852, 0.412597,
		36.690041, 31.504690, 26.095020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795811, 31.642349, 26.093321>,  <36.283577, 31.995987, 25.806202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795811, 31.642349, 26.093321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112782, 31.526566, 26.308088>,  <36.302963, 31.457096, 26.436949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112782, 31.526566, 26.308088>,  <35.795811, 31.642349, 26.093321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112782, 31.526566, 26.308088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572638, -0.049802, 0.818295,
		-0.210122, -0.955895, -0.205218,
		0.792424, -0.289457, 0.536917,
		36.350510, 31.439728, 26.469164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582829, 31.096151, 26.550816>,  <35.795811, 31.642349, 26.093321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582829, 31.096151, 26.550816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923954, 31.236664, 26.705379>,  <36.128628, 31.320972, 26.798119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923954, 31.236664, 26.705379>,  <35.582829, 31.096151, 26.550816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923954, 31.236664, 26.705379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453807, 0.132383, 0.881212,
		0.258403, -0.926862, 0.272314,
		0.852811, 0.351286, 0.386408,
		36.179798, 31.342049, 26.821302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732533, 30.712559, 27.127268>,  <35.582829, 31.096151, 26.550816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732533, 30.712559, 27.127268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932812, 31.049322, 27.207760>,  <36.052979, 31.251381, 27.256054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932812, 31.049322, 27.207760>,  <35.732533, 30.712559, 27.127268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932812, 31.049322, 27.207760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427210, 0.038157, 0.903347,
		0.752857, -0.538270, 0.378777,
		0.500698, 0.841908, 0.201228,
		36.083019, 31.301895, 27.268127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991833, 30.616421, 27.796656>,  <35.732533, 30.712559, 27.127268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991833, 30.616421, 27.796656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965061, 31.009872, 27.729727>,  <35.948997, 31.245943, 27.689569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965061, 31.009872, 27.729727>,  <35.991833, 30.616421, 27.796656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965061, 31.009872, 27.729727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377713, 0.130236, 0.916718,
		0.923500, 0.124558, 0.362812,
		-0.066934, 0.983628, -0.167320,
		35.944981, 31.304960, 27.679531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169060, 30.907225, 28.365721>,  <35.991833, 30.616421, 27.796656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169060, 30.907225, 28.365721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991756, 31.218861, 28.188389>,  <35.885372, 31.405842, 28.081989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991756, 31.218861, 28.188389>,  <36.169060, 30.907225, 28.365721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991756, 31.218861, 28.188389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351705, 0.303755, 0.885459,
		0.824514, 0.548410, 0.139367,
		-0.443261, 0.779089, -0.443329,
		35.858780, 31.452587, 28.055389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314117, 31.476053, 28.759312>,  <36.169060, 30.907225, 28.365721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314117, 31.476053, 28.759312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990818, 31.605406, 28.562471>,  <35.796841, 31.683018, 28.444366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990818, 31.605406, 28.562471>,  <36.314117, 31.476053, 28.759312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990818, 31.605406, 28.562471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357484, 0.394604, 0.846459,
		0.467916, 0.860065, -0.203332,
		-0.808245, 0.323383, -0.492100,
		35.748344, 31.702421, 28.414841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234241, 32.128773, 28.965647>,  <36.314117, 31.476053, 28.759312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234241, 32.128773, 28.965647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874962, 32.052406, 28.807264>,  <35.659393, 32.006588, 28.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874962, 32.052406, 28.807264>,  <36.234241, 32.128773, 28.965647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874962, 32.052406, 28.807264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439568, 0.382997, 0.812461,
		-0.003461, 0.903806, -0.427929,
		-0.898203, -0.190916, -0.395958,
		35.605499, 31.995132, 28.688477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876240, 32.807510, 29.014566>,  <36.234241, 32.128773, 28.965647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876240, 32.807510, 29.014566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626617, 32.495613, 28.994377>,  <35.476845, 32.308475, 28.982264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626617, 32.495613, 28.994377>,  <35.876240, 32.807510, 29.014566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626617, 32.495613, 28.994377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503948, 0.352279, 0.788630,
		-0.597151, 0.517586, -0.612794,
		-0.624058, -0.779747, -0.050473,
		35.439400, 32.261688, 28.979235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141029, 33.002846, 29.069397>,  <35.876240, 32.807510, 29.014566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141029, 33.002846, 29.069397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113651, 32.614975, 29.163246>,  <35.097225, 32.382252, 29.219555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113651, 32.614975, 29.163246>,  <35.141029, 33.002846, 29.069397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113651, 32.614975, 29.163246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642982, 0.222693, 0.732790,
		-0.762816, -0.100701, -0.638726,
		-0.068447, -0.969674, 0.234623,
		35.093117, 32.324074, 29.233633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451466, 32.969894, 29.170296>,  <35.141029, 33.002846, 29.069397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451466, 32.969894, 29.170296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616493, 32.639069, 29.323009>,  <34.715508, 32.440575, 29.414639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616493, 32.639069, 29.323009>,  <34.451466, 32.969894, 29.170296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616493, 32.639069, 29.323009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652226, 0.024382, 0.757632,
		-0.635917, -0.561583, -0.529371,
		0.412566, -0.827061, 0.381784,
		34.740265, 32.390949, 29.437544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875202, 32.626015, 29.440248>,  <34.451466, 32.969894, 29.170296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875202, 32.626015, 29.440248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182632, 32.452808, 29.628626>,  <34.367092, 32.348885, 29.741653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182632, 32.452808, 29.628626>,  <33.875202, 32.626015, 29.440248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182632, 32.452808, 29.628626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527756, -0.013042, 0.849296,
		-0.361618, -0.901291, -0.238552,
		0.768574, -0.433018, 0.470945,
		34.413204, 32.322903, 29.769909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645138, 31.997473, 29.915033>,  <33.875202, 32.626015, 29.440248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645138, 31.997473, 29.915033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993172, 32.137913, 30.053415>,  <34.201992, 32.222176, 30.136444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993172, 32.137913, 30.053415>,  <33.645138, 31.997473, 29.915033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993172, 32.137913, 30.053415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375810, 0.018383, 0.926514,
		0.318940, -0.936157, 0.147942,
		0.870083, 0.351101, 0.345954,
		34.254196, 32.243244, 30.157202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905201, 31.508638, 30.417707>,  <33.645138, 31.997473, 29.915033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905201, 31.508638, 30.417707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100266, 31.850378, 30.489567>,  <34.217304, 32.055424, 30.532682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100266, 31.850378, 30.489567>,  <33.905201, 31.508638, 30.417707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100266, 31.850378, 30.489567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211189, -0.084220, 0.973810,
		0.847104, -0.512830, 0.139359,
		0.487662, 0.854349, 0.179647,
		34.246563, 32.106682, 30.543461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353802, 31.328527, 30.962494>,  <33.905201, 31.508638, 30.417707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353802, 31.328527, 30.962494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323868, 31.727301, 30.953362>,  <34.305908, 31.966564, 30.947882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323868, 31.727301, 30.953362>,  <34.353802, 31.328527, 30.962494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323868, 31.727301, 30.953362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164549, 0.010234, 0.986316,
		0.983526, 0.077569, 0.163279,
		-0.074837, 0.996934, -0.022829,
		34.301418, 32.026382, 30.946512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638145, 31.526266, 31.614954>,  <34.353802, 31.328527, 30.962494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638145, 31.526266, 31.614954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439434, 31.864044, 31.534824>,  <34.320210, 32.066711, 31.486746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439434, 31.864044, 31.534824>,  <34.638145, 31.526266, 31.614954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439434, 31.864044, 31.534824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100708, 0.173171, 0.979729,
		0.862016, 0.506879, -0.000985,
		-0.496775, 0.844444, -0.200323,
		34.290401, 32.117378, 31.474728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696472, 31.936749, 32.173496>,  <34.638145, 31.526266, 31.614954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696472, 31.936749, 32.173496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393925, 32.137623, 32.005821>,  <34.212399, 32.258148, 31.905216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393925, 32.137623, 32.005821>,  <34.696472, 31.936749, 32.173496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393925, 32.137623, 32.005821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336267, 0.251176, 0.907654,
		0.561103, 0.827477, -0.021111,
		-0.756365, 0.502188, -0.419188,
		34.167015, 32.288280, 31.880064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801632, 32.575104, 32.394283>,  <34.696472, 31.936749, 32.173496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801632, 32.575104, 32.394283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413128, 32.549419, 32.302597>,  <34.180027, 32.534008, 32.247585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413128, 32.549419, 32.302597>,  <34.801632, 32.575104, 32.394283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413128, 32.549419, 32.302597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237948, 0.235229, 0.942363,
		-0.006589, 0.969817, -0.243746,
		-0.971255, -0.064208, -0.229217,
		34.121750, 32.530155, 32.233833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594223, 32.610886, 32.478977>,  <34.801632, 32.575104, 32.394283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594223, 32.610886, 32.478977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809650, 32.945816, 32.516552>,  <35.938908, 33.146774, 32.539097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809650, 32.945816, 32.516552>,  <35.594223, 32.610886, 32.478977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809650, 32.945816, 32.516552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109999, 0.180407, -0.977422,
		-0.835371, 0.516075, 0.189267,
		0.538568, 0.837329, 0.093940,
		35.971222, 33.197014, 32.544735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239960, 33.095383, 32.127178>,  <35.594223, 32.610886, 32.478977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239960, 33.095383, 32.127178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620251, 33.218174, 32.144543>,  <35.848423, 33.291847, 32.154961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620251, 33.218174, 32.144543>,  <35.239960, 33.095383, 32.127178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620251, 33.218174, 32.144543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017052, 0.088043, -0.995971,
		-0.309565, 0.947635, 0.078470,
		0.950725, 0.306979, 0.043414,
		35.905468, 33.310268, 32.157566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332348, 33.488728, 31.565834>,  <35.239960, 33.095383, 32.127178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332348, 33.488728, 31.565834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720715, 33.487755, 31.661598>,  <35.953735, 33.487171, 31.719057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720715, 33.487755, 31.661598>,  <35.332348, 33.488728, 31.565834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720715, 33.487755, 31.661598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235975, 0.178848, -0.955159,
		-0.040496, 0.983874, 0.174220,
		0.970915, -0.002432, 0.239412,
		36.011990, 33.487026, 31.733421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617546, 34.092674, 31.268860>,  <35.332348, 33.488728, 31.565834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617546, 34.092674, 31.268860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935452, 33.855801, 31.322039>,  <36.126194, 33.713676, 31.353945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935452, 33.855801, 31.322039>,  <35.617546, 34.092674, 31.268860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935452, 33.855801, 31.322039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286880, 0.173508, -0.942123,
		0.534843, 0.786901, 0.307783,
		0.794760, -0.592185, 0.132946,
		36.173878, 33.678146, 31.361923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228245, 34.537785, 30.998516>,  <35.617546, 34.092674, 31.268860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228245, 34.537785, 30.998516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367104, 34.162670, 30.995764>,  <36.450417, 33.937603, 30.994112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367104, 34.162670, 30.995764>,  <36.228245, 34.537785, 30.998516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367104, 34.162670, 30.995764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229562, 0.092089, -0.968928,
		0.909281, 0.334779, 0.247248,
		0.347145, -0.937786, -0.006882,
		36.471249, 33.881332, 30.993700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872837, 34.522144, 30.723690>,  <36.228245, 34.537785, 30.998516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872837, 34.522144, 30.723690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732353, 34.154186, 30.653896>,  <36.648064, 33.933411, 30.612020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732353, 34.154186, 30.653896>,  <36.872837, 34.522144, 30.723690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732353, 34.154186, 30.653896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279958, 0.074655, -0.957105,
		0.893464, -0.384989, 0.231313,
		-0.351207, -0.919897, -0.174482,
		36.626991, 33.878216, 30.601551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432331, 34.189640, 30.438612>,  <36.872837, 34.522144, 30.723690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432331, 34.189640, 30.438612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113148, 33.966225, 30.348013>,  <36.921638, 33.832176, 30.293653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113148, 33.966225, 30.348013>,  <37.432331, 34.189640, 30.438612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113148, 33.966225, 30.348013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431901, -0.267781, -0.861252,
		0.420387, -0.785068, 0.454909,
		-0.797958, -0.558535, -0.226500,
		36.873760, 33.798664, 30.280064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760704, 33.559299, 30.211102>,  <37.432331, 34.189640, 30.438612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760704, 33.559299, 30.211102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385895, 33.589111, 30.074608>,  <37.161011, 33.606998, 29.992712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385895, 33.589111, 30.074608>,  <37.760704, 33.559299, 30.211102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385895, 33.589111, 30.074608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317786, -0.223511, -0.921442,
		-0.144939, -0.971848, 0.185751,
		-0.937019, 0.074524, -0.341235,
		37.104790, 33.611469, 29.972237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691120, 33.017273, 29.697985>,  <37.760704, 33.559299, 30.211102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691120, 33.017273, 29.697985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380432, 33.260281, 29.631493>,  <37.194019, 33.406086, 29.591597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380432, 33.260281, 29.631493>,  <37.691120, 33.017273, 29.697985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380432, 33.260281, 29.631493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060249, -0.191048, -0.979730,
		-0.626961, -0.770989, 0.111788,
		-0.776718, 0.607517, -0.166231,
		37.147415, 33.442535, 29.581623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361534, 32.686981, 29.261616>,  <37.691120, 33.017273, 29.697985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361534, 32.686981, 29.261616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244740, 33.067101, 29.218382>,  <37.174664, 33.295174, 29.192442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244740, 33.067101, 29.218382>,  <37.361534, 32.686981, 29.261616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244740, 33.067101, 29.218382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119407, -0.075904, -0.989940,
		-0.948941, -0.301951, -0.091309,
		-0.291982, 0.950297, -0.108083,
		37.157146, 33.352188, 29.185957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973717, 32.770706, 28.604965>,  <37.361534, 32.686981, 29.261616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973717, 32.770706, 28.604965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073463, 33.155109, 28.652754>,  <37.133312, 33.385754, 28.681427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073463, 33.155109, 28.652754>,  <36.973717, 32.770706, 28.604965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073463, 33.155109, 28.652754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103413, 0.096237, -0.989972,
		-0.962871, 0.259224, -0.075382,
		0.249369, 0.961011, 0.119471,
		37.148273, 33.443413, 28.688595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853500, 33.080242, 27.925747>,  <36.973717, 32.770706, 28.604965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853500, 33.080242, 27.925747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081882, 33.364388, 28.090376>,  <37.218910, 33.534874, 28.189154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081882, 33.364388, 28.090376>,  <36.853500, 33.080242, 27.925747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081882, 33.364388, 28.090376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323051, 0.266482, -0.908089,
		-0.754754, 0.651434, -0.077337,
		0.570951, 0.710367, 0.411575,
		37.253166, 33.577499, 28.213848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843601, 33.694611, 27.432264>,  <36.853500, 33.080242, 27.925747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843601, 33.694611, 27.432264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173141, 33.735142, 27.655338>,  <37.370865, 33.759460, 27.789183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173141, 33.735142, 27.655338>,  <36.843601, 33.694611, 27.432264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173141, 33.735142, 27.655338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538172, 0.168966, -0.825725,
		-0.177901, 0.980399, 0.084669,
		0.823846, 0.101330, 0.557683,
		37.420296, 33.765541, 27.822643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145378, 34.240261, 27.111588>,  <36.843601, 33.694611, 27.432264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145378, 34.240261, 27.111588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424030, 34.037392, 27.314556>,  <37.591221, 33.915668, 27.436338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424030, 34.037392, 27.314556>,  <37.145378, 34.240261, 27.111588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424030, 34.037392, 27.314556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606350, 0.038188, -0.794280,
		0.383460, 0.860998, 0.334127,
		0.696633, -0.507173, 0.507422,
		37.633018, 33.885239, 27.466784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816673, 34.579750, 26.969404>,  <37.145378, 34.240261, 27.111588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816673, 34.579750, 26.969404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906334, 34.213017, 27.101572>,  <37.960129, 33.992977, 27.180872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906334, 34.213017, 27.101572>,  <37.816673, 34.579750, 26.969404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906334, 34.213017, 27.101572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534214, -0.167977, -0.828492,
		0.815091, 0.362221, 0.452132,
		0.224149, -0.916831, 0.330420,
		37.973579, 33.937965, 27.200699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570946, 34.569054, 26.984173>,  <37.816673, 34.579750, 26.969404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570946, 34.569054, 26.984173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429653, 34.195499, 26.961916>,  <38.344879, 33.971367, 26.948561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429653, 34.195499, 26.961916>,  <38.570946, 34.569054, 26.984173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429653, 34.195499, 26.961916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674133, -0.212840, -0.707279,
		0.648671, -0.287342, 0.704741,
		-0.353229, -0.933881, -0.055643,
		38.323685, 33.915337, 26.945223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143391, 34.175564, 26.854248>,  <38.570946, 34.569054, 26.984173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143391, 34.175564, 26.854248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848583, 33.933437, 26.733982>,  <38.671700, 33.788162, 26.661823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848583, 33.933437, 26.733982>,  <39.143391, 34.175564, 26.854248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848583, 33.933437, 26.733982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541542, -0.262713, -0.798570,
		0.404399, -0.751382, 0.521428,
		-0.737017, -0.605316, -0.300664,
		38.627480, 33.751842, 26.643784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512459, 33.608711, 26.583782>,  <39.143391, 34.175564, 26.854248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512459, 33.608711, 26.583782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140072, 33.563358, 26.444958>,  <38.916641, 33.536148, 26.361664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140072, 33.563358, 26.444958>,  <39.512459, 33.608711, 26.583782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140072, 33.563358, 26.444958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363628, -0.373502, -0.853387,
		-0.032873, -0.920674, 0.388945,
		-0.930964, -0.113378, -0.347062,
		38.860783, 33.529346, 26.340839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453285, 32.880096, 26.367485>,  <39.512459, 33.608711, 26.583782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453285, 32.880096, 26.367485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163410, 33.075932, 26.173523>,  <38.989487, 33.193432, 26.057146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163410, 33.075932, 26.173523>,  <39.453285, 32.880096, 26.367485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163410, 33.075932, 26.173523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300115, -0.409206, -0.861673,
		-0.620294, -0.769969, 0.149612,
		-0.724684, 0.489590, -0.484907,
		38.946007, 33.222809, 26.028051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086048, 32.488674, 26.036659>,  <39.453285, 32.880096, 26.367485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086048, 32.488674, 26.036659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984665, 32.815002, 25.828739>,  <38.923836, 33.010799, 25.703987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984665, 32.815002, 25.828739>,  <39.086048, 32.488674, 26.036659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984665, 32.815002, 25.828739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396679, -0.402435, -0.825040,
		-0.882273, -0.415305, -0.221620,
		-0.253455, 0.815823, -0.519801,
		38.908627, 33.059750, 25.672798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756237, 32.224262, 25.368931>,  <39.086048, 32.488674, 26.036659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756237, 32.224262, 25.368931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879910, 32.596798, 25.291965>,  <38.954113, 32.820320, 25.245787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879910, 32.596798, 25.291965>,  <38.756237, 32.224262, 25.368931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879910, 32.596798, 25.291965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318242, -0.291986, -0.901924,
		-0.896175, 0.217623, -0.386666,
		0.309180, 0.931335, -0.192414,
		38.972664, 32.876198, 25.234241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496056, 32.382957, 24.666470>,  <38.756237, 32.224262, 25.368931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496056, 32.382957, 24.666470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780392, 32.656364, 24.732824>,  <38.950993, 32.820408, 24.772638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780392, 32.656364, 24.732824>,  <38.496056, 32.382957, 24.666470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780392, 32.656364, 24.732824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206950, 0.022161, -0.978101,
		-0.672222, 0.729601, -0.125701,
		0.710837, 0.683514, 0.165888,
		38.993645, 32.861420, 24.782591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372894, 32.833252, 24.097614>,  <38.496056, 32.382957, 24.666470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372894, 32.833252, 24.097614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746254, 32.895397, 24.227001>,  <38.970268, 32.932682, 24.304634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746254, 32.895397, 24.227001>,  <38.372894, 32.833252, 24.097614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746254, 32.895397, 24.227001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330696, -0.022461, -0.943470,
		-0.139313, 0.987602, -0.072343,
		0.933398, 0.155361, 0.323467,
		39.026272, 32.942005, 24.324041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652008, 33.280853, 23.609793>,  <38.372894, 32.833252, 24.097614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652008, 33.280853, 23.609793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962017, 33.109516, 23.795635>,  <39.148022, 33.006714, 23.907141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962017, 33.109516, 23.795635>,  <38.652008, 33.280853, 23.609793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962017, 33.109516, 23.795635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488165, -0.061056, -0.870613,
		0.401285, 0.901553, 0.161780,
		0.775026, -0.428339, 0.464607,
		39.194527, 32.981014, 23.935017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402981, 33.626663, 23.332891>,  <38.652008, 33.280853, 23.609793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402981, 33.626663, 23.332891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451225, 33.262543, 23.491287>,  <39.480171, 33.044071, 23.586325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451225, 33.262543, 23.491287>,  <39.402981, 33.626663, 23.332891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451225, 33.262543, 23.491287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421814, -0.314101, -0.850537,
		0.898624, 0.269621, 0.346092,
		0.120615, -0.910300, 0.395988,
		39.487411, 32.989452, 23.610085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955944, 33.500874, 23.034758>,  <39.402981, 33.626663, 23.332891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955944, 33.500874, 23.034758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852749, 33.138435, 23.168886>,  <39.790833, 32.920975, 23.249363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852749, 33.138435, 23.168886>,  <39.955944, 33.500874, 23.034758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852749, 33.138435, 23.168886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484889, -0.421624, -0.766235,
		0.835659, -0.035083, 0.548127,
		-0.257985, -0.906092, 0.335322,
		39.775352, 32.866608, 23.269484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499603, 33.010750, 22.794788>,  <39.955944, 33.500874, 23.034758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499603, 33.010750, 22.794788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202671, 32.766300, 22.904678>,  <40.024513, 32.619629, 22.970612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202671, 32.766300, 22.904678>,  <40.499603, 33.010750, 22.794788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202671, 32.766300, 22.904678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385436, -0.724858, -0.570981,
		0.548079, -0.317966, 0.773632,
		-0.742327, -0.611128, 0.274724,
		39.979973, 32.582962, 22.987095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798660, 32.379467, 22.946323>,  <40.499603, 33.010750, 22.794788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798660, 32.379467, 22.946323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421944, 32.269096, 22.869493>,  <40.195915, 32.202873, 22.823397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421944, 32.269096, 22.869493>,  <40.798660, 32.379467, 22.946323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421944, 32.269096, 22.869493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335973, -0.751679, -0.567539,
		0.012222, -0.599035, 0.800630,
		-0.941792, -0.275926, -0.192073,
		40.139404, 32.186317, 22.811872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691208, 31.645275, 23.176386>,  <40.798660, 32.379467, 22.946323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691208, 31.645275, 23.176386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415203, 31.718616, 22.896311>,  <40.249599, 31.762621, 22.728266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415203, 31.718616, 22.896311>,  <40.691208, 31.645275, 23.176386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415203, 31.718616, 22.896311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319908, -0.790504, -0.522267,
		-0.649259, -0.584367, 0.486803,
		-0.690016, 0.183355, -0.700185,
		40.208199, 31.773623, 22.686255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611923, 31.023247, 22.875061>,  <40.691208, 31.645275, 23.176386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611923, 31.023247, 22.875061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446785, 31.265701, 22.603130>,  <40.347702, 31.411173, 22.439972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446785, 31.265701, 22.603130>,  <40.611923, 31.023247, 22.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446785, 31.265701, 22.603130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340386, -0.589640, -0.732435,
		-0.844806, -0.533784, 0.037110,
		-0.412844, 0.606134, -0.679824,
		40.322933, 31.447542, 22.399183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158379, 30.629860, 22.388153>,  <40.611923, 31.023247, 22.875061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158379, 30.629860, 22.388153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283375, 30.972195, 22.223282>,  <40.358372, 31.177595, 22.124359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283375, 30.972195, 22.223282>,  <40.158379, 30.629860, 22.388153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283375, 30.972195, 22.223282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325322, -0.504090, -0.800037,
		-0.892478, 0.115912, -0.435945,
		0.312489, 0.855838, -0.412180,
		40.377121, 31.228947, 22.099628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079754, 30.411602, 21.679333>,  <40.158379, 30.629860, 22.388153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079754, 30.411602, 21.679333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329357, 30.723877, 21.692873>,  <40.479118, 30.911242, 21.700998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329357, 30.723877, 21.692873>,  <40.079754, 30.411602, 21.679333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329357, 30.723877, 21.692873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666827, -0.509414, -0.543911,
		-0.407378, 0.361978, -0.838460,
		0.624007, 0.780685, 0.033853,
		40.516560, 30.958082, 21.703030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391556, 30.430674, 20.928938>,  <40.079754, 30.411602, 21.679333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391556, 30.430674, 20.928938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628250, 30.643173, 21.171465>,  <40.770267, 30.770674, 21.316982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628250, 30.643173, 21.171465>,  <40.391556, 30.430674, 20.928938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628250, 30.643173, 21.171465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798748, -0.487955, -0.351995,
		0.108860, 0.692585, -0.713075,
		0.591735, 0.531249, 0.606320,
		40.805771, 30.802547, 21.353361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974373, 30.584538, 20.532318>,  <40.391556, 30.430674, 20.928938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974373, 30.584538, 20.532318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088303, 30.598175, 20.915506>,  <41.156662, 30.606358, 21.145420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088303, 30.598175, 20.915506>,  <40.974373, 30.584538, 20.532318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088303, 30.598175, 20.915506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856676, -0.457445, -0.238431,
		0.430091, 0.888584, -0.159501,
		0.284829, 0.034094, 0.957972,
		41.173752, 30.608402, 21.202898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676266, 30.842373, 20.493320>,  <40.974373, 30.584538, 20.532318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676266, 30.842373, 20.493320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642906, 30.655540, 20.845430>,  <41.622890, 30.543442, 21.056696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642906, 30.655540, 20.845430>,  <41.676266, 30.842373, 20.493320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642906, 30.655540, 20.845430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914149, -0.387515, -0.119013,
		0.396708, 0.794777, 0.459296,
		-0.083395, -0.467079, 0.880274,
		41.617889, 30.515417, 21.109512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392899, 30.822506, 20.704615>,  <41.676266, 30.842373, 20.493320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392899, 30.822506, 20.704615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224159, 30.566261, 20.961258>,  <42.122917, 30.412514, 21.115244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224159, 30.566261, 20.961258>,  <42.392899, 30.822506, 20.704615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224159, 30.566261, 20.961258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766207, -0.630224, -0.125479,
		0.484741, 0.438672, 0.756699,
		-0.421845, -0.640613, 0.641609,
		42.097607, 30.374077, 21.153740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798229, 30.709776, 21.331234>,  <42.392899, 30.822506, 20.704615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798229, 30.709776, 21.331234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579803, 30.378792, 21.278881>,  <42.448750, 30.180202, 21.247469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579803, 30.378792, 21.278881>,  <42.798229, 30.709776, 21.331234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579803, 30.378792, 21.278881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835210, -0.525576, -0.161849,
		0.065135, -0.197693, 0.978098,
		-0.546061, -0.827459, -0.130881,
		42.415985, 30.130554, 21.239616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108257, 30.248041, 21.750645>,  <42.798229, 30.709776, 21.331234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108257, 30.248041, 21.750645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878887, 30.006598, 21.529070>,  <42.741264, 29.861732, 21.396126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878887, 30.006598, 21.529070>,  <43.108257, 30.248041, 21.750645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878887, 30.006598, 21.529070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789276, -0.588269, -0.176021,
		-0.219615, -0.538142, 0.813740,
		-0.573422, -0.603608, -0.553935,
		42.706860, 29.825516, 21.362890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428627, 29.585819, 21.950130>,  <43.108257, 30.248041, 21.750645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428627, 29.585819, 21.950130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820606, 29.611111, 22.025717>,  <44.055794, 29.626286, 22.071070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820606, 29.611111, 22.025717>,  <43.428627, 29.585819, 21.950130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820606, 29.611111, 22.025717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197264, 0.441916, 0.875098,
		-0.028176, -0.894825, 0.445527,
		0.979946, 0.063230, 0.188969,
		44.114590, 29.630079, 22.082407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457882, 29.284004, 22.606533>,  <43.428627, 29.585819, 21.950130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457882, 29.284004, 22.606533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790462, 29.497549, 22.544975>,  <43.990009, 29.625677, 22.508041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790462, 29.497549, 22.544975>,  <43.457882, 29.284004, 22.606533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790462, 29.497549, 22.544975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079934, 0.389042, 0.917745,
		0.549822, -0.750757, 0.366142,
		0.831448, 0.533864, -0.153893,
		44.039898, 29.657707, 22.498808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986511, 29.055321, 23.094177>,  <43.457882, 29.284004, 22.606533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986511, 29.055321, 23.094177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082294, 29.426836, 22.981033>,  <44.139763, 29.649746, 22.913147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082294, 29.426836, 22.981033>,  <43.986511, 29.055321, 23.094177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082294, 29.426836, 22.981033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100683, 0.266010, 0.958698,
		0.965672, -0.258048, -0.029815,
		0.239459, 0.928789, -0.282860,
		44.154133, 29.705473, 22.896175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477058, 29.250715, 23.590767>,  <43.986511, 29.055321, 23.094177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477058, 29.250715, 23.590767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339508, 29.590921, 23.431581>,  <44.256977, 29.795046, 23.336071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339508, 29.590921, 23.431581>,  <44.477058, 29.250715, 23.590767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339508, 29.590921, 23.431581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177062, 0.357477, 0.916984,
		0.922172, 0.385789, 0.027668,
		-0.343871, 0.850516, -0.397963,
		44.236347, 29.846077, 23.312193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866508, 29.882059, 23.874044>,  <44.477058, 29.250715, 23.590767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866508, 29.882059, 23.874044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524845, 30.035397, 23.733498>,  <44.319847, 30.127399, 23.649170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524845, 30.035397, 23.733498>,  <44.866508, 29.882059, 23.874044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524845, 30.035397, 23.733498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195585, 0.389245, 0.900130,
		0.481829, 0.837576, -0.257501,
		-0.854159, 0.383345, -0.351367,
		44.268597, 30.150400, 23.628088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807106, 30.357933, 24.395535>,  <44.866508, 29.882059, 23.874044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807106, 30.357933, 24.395535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464989, 30.433430, 24.202518>,  <44.259716, 30.478727, 24.086710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464989, 30.433430, 24.202518>,  <44.807106, 30.357933, 24.395535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464989, 30.433430, 24.202518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339674, 0.499007, 0.797254,
		0.391263, 0.845795, -0.362689,
		-0.855298, 0.188740, -0.482538,
		44.208401, 30.490051, 24.057756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675953, 31.144579, 24.361897>,  <44.807106, 30.357933, 24.395535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675953, 31.144579, 24.361897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333954, 30.943699, 24.310087>,  <44.128754, 30.823172, 24.279001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333954, 30.943699, 24.310087>,  <44.675953, 31.144579, 24.361897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333954, 30.943699, 24.310087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441118, 0.572827, 0.690857,
		-0.272752, 0.647816, -0.711295,
		-0.854998, -0.502198, -0.129524,
		44.077454, 30.793039, 24.271231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071747, 31.696066, 24.168625>,  <44.675953, 31.144579, 24.361897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071747, 31.696066, 24.168625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933903, 31.362005, 24.340096>,  <43.851196, 31.161568, 24.442978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933903, 31.362005, 24.340096>,  <44.071747, 31.696066, 24.168625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933903, 31.362005, 24.340096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617199, 0.545644, 0.566867,
		-0.707326, -0.069231, -0.703490,
		-0.344610, -0.835153, 0.428677,
		43.830521, 31.111460, 24.468699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408104, 31.909952, 24.303417>,  <44.071747, 31.696066, 24.168625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408104, 31.909952, 24.303417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487419, 31.590631, 24.530890>,  <43.535007, 31.399038, 24.667372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487419, 31.590631, 24.530890>,  <43.408104, 31.909952, 24.303417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487419, 31.590631, 24.530890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561765, 0.382882, 0.733363,
		-0.803182, -0.464882, -0.372536,
		0.198290, -0.798302, 0.568678,
		43.546906, 31.351141, 24.701492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727776, 31.773340, 24.523550>,  <43.408104, 31.909952, 24.303417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727776, 31.773340, 24.523550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998486, 31.626085, 24.778563>,  <43.160912, 31.537733, 24.931570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998486, 31.626085, 24.778563>,  <42.727776, 31.773340, 24.523550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998486, 31.626085, 24.778563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612862, 0.198070, 0.764963,
		-0.407887, -0.908429, -0.091567,
		0.676778, -0.368136, 0.637531,
		43.201519, 31.515644, 24.969822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351185, 31.369900, 24.982214>,  <42.727776, 31.773340, 24.523550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351185, 31.369900, 24.982214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678123, 31.364275, 25.212603>,  <42.874287, 31.360899, 25.350836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678123, 31.364275, 25.212603>,  <42.351185, 31.369900, 24.982214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678123, 31.364275, 25.212603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527465, 0.383911, 0.757887,
		-0.231781, -0.923263, 0.306372,
		0.817349, -0.014063, 0.575972,
		42.923328, 31.360056, 25.385395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316319, 30.887148, 25.697905>,  <42.351185, 31.369900, 24.982214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316319, 30.887148, 25.697905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584152, 31.179930, 25.748339>,  <42.744854, 31.355598, 25.778599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584152, 31.179930, 25.748339>,  <42.316319, 30.887148, 25.697905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584152, 31.179930, 25.748339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468589, 0.284600, 0.836318,
		0.576263, -0.619069, 0.533550,
		0.669586, 0.731954, 0.126084,
		42.785027, 31.399515, 25.786163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441097, 30.953619, 26.369568>,  <42.316319, 30.887148, 25.697905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441097, 30.953619, 26.369568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596794, 31.304495, 26.257116>,  <42.690212, 31.515020, 26.189646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596794, 31.304495, 26.257116>,  <42.441097, 30.953619, 26.369568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596794, 31.304495, 26.257116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363704, 0.426756, 0.828009,
		0.846294, -0.220045, 0.485146,
		0.389239, 0.877188, -0.281130,
		42.713566, 31.567652, 26.172777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743732, 31.205822, 26.933052>,  <42.441097, 30.953619, 26.369568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743732, 31.205822, 26.933052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678020, 31.532455, 26.711710>,  <42.638592, 31.728436, 26.578905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678020, 31.532455, 26.711710>,  <42.743732, 31.205822, 26.933052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678020, 31.532455, 26.711710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423799, 0.448134, 0.787128,
		0.890734, 0.363820, 0.272449,
		-0.164279, 0.816585, -0.553355,
		42.628738, 31.777431, 26.545704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857605, 31.732851, 27.505518>,  <42.743732, 31.205822, 26.933052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857605, 31.732851, 27.505518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670364, 31.939676, 27.218874>,  <42.558022, 32.063770, 27.046888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670364, 31.939676, 27.218874>,  <42.857605, 31.732851, 27.505518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670364, 31.939676, 27.218874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453088, 0.555796, 0.696995,
		0.758679, 0.650949, -0.025892,
		-0.468099, 0.517065, -0.716608,
		42.529934, 32.094795, 27.003891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779205, 32.504501, 27.614147>,  <42.857605, 31.732851, 27.505518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779205, 32.504501, 27.614147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479916, 32.406982, 27.367336>,  <42.300343, 32.348469, 27.219250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479916, 32.406982, 27.367336>,  <42.779205, 32.504501, 27.614147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479916, 32.406982, 27.367336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653230, 0.433300, 0.620920,
		0.115976, 0.867647, -0.483464,
		-0.748225, -0.243802, -0.617025,
		42.255447, 32.333843, 27.182228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446651, 33.167732, 27.377630>,  <42.779205, 32.504501, 27.614147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446651, 33.167732, 27.377630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153633, 32.910343, 27.288792>,  <41.977821, 32.755909, 27.235489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153633, 32.910343, 27.288792>,  <42.446651, 33.167732, 27.377630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153633, 32.910343, 27.288792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663224, 0.601154, 0.445811,
		-0.153352, 0.473875, -0.867136,
		-0.732541, -0.643472, -0.222097,
		41.933872, 32.717300, 27.222162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800755, 33.570213, 27.191326>,  <42.446651, 33.167732, 27.377630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800755, 33.570213, 27.191326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624302, 33.211464, 27.204170>,  <41.518433, 32.996216, 27.211878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624302, 33.211464, 27.204170>,  <41.800755, 33.570213, 27.191326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624302, 33.211464, 27.204170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792474, 0.406076, 0.455068,
		-0.421176, 0.175297, -0.889877,
		-0.441130, -0.896869, 0.032111,
		41.491962, 32.942402, 27.213804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122078, 33.624054, 26.827511>,  <41.800755, 33.570213, 27.191326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122078, 33.624054, 26.827511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134033, 33.349140, 27.117821>,  <41.141205, 33.184193, 27.292007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134033, 33.349140, 27.117821>,  <41.122078, 33.624054, 26.827511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134033, 33.349140, 27.117821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830230, 0.387274, 0.400921,
		-0.556620, -0.614542, -0.559028,
		0.029886, -0.687282, 0.725776,
		41.142998, 33.142956, 27.335554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389370, 33.541862, 26.974340>,  <41.122078, 33.624054, 26.827511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389370, 33.541862, 26.974340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543552, 33.314835, 27.265348>,  <40.636063, 33.178619, 27.439953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543552, 33.314835, 27.265348>,  <40.389370, 33.541862, 26.974340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543552, 33.314835, 27.265348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809693, 0.170064, 0.561672,
		-0.442513, -0.805569, -0.394006,
		0.385459, -0.567571, 0.727519,
		40.659191, 33.144562, 27.483604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846050, 33.115559, 27.280687>,  <40.389370, 33.541862, 26.974340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846050, 33.115559, 27.280687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126976, 33.148556, 27.563515>,  <40.295532, 33.168354, 27.733212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126976, 33.148556, 27.563515>,  <39.846050, 33.115559, 27.280687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126976, 33.148556, 27.563515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698029, 0.274683, 0.661290,
		-0.139668, -0.957990, 0.250497,
		0.702316, 0.082493, 0.707069,
		40.337669, 33.173306, 27.775635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484928, 32.967163, 27.919821>,  <39.846050, 33.115559, 27.280687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484928, 32.967163, 27.919821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814926, 33.170170, 28.019266>,  <40.012924, 33.291973, 28.078934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814926, 33.170170, 28.019266>,  <39.484928, 32.967163, 27.919821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814926, 33.170170, 28.019266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501373, 0.454287, 0.736375,
		0.260777, -0.732157, 0.629239,
		0.824997, 0.507513, 0.248616,
		40.062424, 33.322426, 28.093851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411224, 32.909580, 28.647474>,  <39.484928, 32.967163, 27.919821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411224, 32.909580, 28.647474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690968, 33.190517, 28.594397>,  <39.858814, 33.359081, 28.562550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690968, 33.190517, 28.594397>,  <39.411224, 32.909580, 28.647474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690968, 33.190517, 28.594397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404640, 0.542064, 0.736501,
		0.589207, -0.461385, 0.663295,
		0.699358, 0.702347, -0.132693,
		39.900776, 33.401222, 28.554588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735149, 33.116566, 29.307674>,  <39.411224, 32.909580, 28.647474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735149, 33.116566, 29.307674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824181, 33.425331, 29.069477>,  <39.877598, 33.610588, 28.926558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824181, 33.425331, 29.069477>,  <39.735149, 33.116566, 29.307674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824181, 33.425331, 29.069477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324215, 0.634658, 0.701494,
		0.919426, 0.036932, 0.391526,
		0.222578, 0.771910, -0.595495,
		39.890953, 33.656902, 28.890829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203022, 33.553757, 29.670671>,  <39.735149, 33.116566, 29.307674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203022, 33.553757, 29.670671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025219, 33.797592, 29.408127>,  <39.918537, 33.943893, 29.250599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025219, 33.797592, 29.408127>,  <40.203022, 33.553757, 29.670671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025219, 33.797592, 29.408127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300305, 0.588920, 0.750327,
		0.843938, 0.530634, -0.078715,
		-0.444506, 0.609591, -0.656364,
		39.891869, 33.980469, 29.211218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423878, 34.213535, 29.856455>,  <40.203022, 33.553757, 29.670671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423878, 34.213535, 29.856455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100674, 34.279697, 29.630264>,  <39.906754, 34.319397, 29.494549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100674, 34.279697, 29.630264>,  <40.423878, 34.213535, 29.856455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100674, 34.279697, 29.630264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334349, 0.661532, 0.671257,
		0.485114, 0.731447, -0.479218,
		-0.808007, 0.165410, -0.565478,
		39.858273, 34.329319, 29.460621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326481, 34.979591, 29.838648>,  <40.423878, 34.213535, 29.856455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326481, 34.979591, 29.838648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968575, 34.826912, 29.745953>,  <39.753830, 34.735306, 29.690336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968575, 34.826912, 29.745953>,  <40.326481, 34.979591, 29.838648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968575, 34.826912, 29.745953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442375, 0.687014, 0.576468,
		-0.060831, 0.618318, -0.783570,
		-0.894764, -0.381699, -0.231737,
		39.700146, 34.712402, 29.676432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956707, 35.538502, 29.614735>,  <40.326481, 34.979591, 29.838648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956707, 35.538502, 29.614735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669514, 35.276268, 29.708294>,  <39.497196, 35.118927, 29.764429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669514, 35.276268, 29.708294>,  <39.956707, 35.538502, 29.614735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669514, 35.276268, 29.708294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432299, 0.683351, 0.588344,
		-0.545542, 0.321308, -0.774044,
		-0.717984, -0.655585, 0.233896,
		39.454117, 35.079594, 29.778463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265034, 35.924068, 29.554203>,  <39.956707, 35.538502, 29.614735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265034, 35.924068, 29.554203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161129, 35.591057, 29.749924>,  <39.098785, 35.391251, 29.867355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161129, 35.591057, 29.749924>,  <39.265034, 35.924068, 29.554203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161129, 35.591057, 29.749924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590324, 0.537895, 0.601819,
		-0.764226, -0.132517, -0.631188,
		-0.259761, -0.832531, 0.489301,
		39.083202, 35.341297, 29.896713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524387, 36.061508, 29.858810>,  <39.265034, 35.924068, 29.554203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524387, 36.061508, 29.858810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696957, 35.774929, 30.078108>,  <38.800499, 35.602982, 30.209686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696957, 35.774929, 30.078108>,  <38.524387, 36.061508, 29.858810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696957, 35.774929, 30.078108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412562, 0.383757, 0.826149,
		-0.802289, -0.582603, -0.130020,
		0.431421, -0.716452, 0.548245,
		38.826382, 35.559994, 30.242580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921585, 35.827110, 30.275202>,  <38.524387, 36.061508, 29.858810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921585, 35.827110, 30.275202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256069, 35.697830, 30.452423>,  <38.456760, 35.620262, 30.558756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256069, 35.697830, 30.452423>,  <37.921585, 35.827110, 30.275202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256069, 35.697830, 30.452423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414754, 0.155848, 0.896488,
		-0.358794, -0.933409, -0.003727,
		0.836209, -0.323201, 0.443052,
		38.506931, 35.600872, 30.585339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685555, 35.510685, 30.883774>,  <37.921585, 35.827110, 30.275202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685555, 35.510685, 30.883774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076557, 35.543732, 30.961401>,  <38.311157, 35.563560, 31.007977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076557, 35.543732, 30.961401>,  <37.685555, 35.510685, 30.883774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076557, 35.543732, 30.961401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207565, 0.213364, 0.954669,
		0.037463, -0.973473, 0.225712,
		0.977504, 0.082615, 0.194066,
		38.369808, 35.568516, 31.019621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928829, 35.137722, 31.584776>,  <37.685555, 35.510685, 30.883774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928829, 35.137722, 31.584776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198780, 35.427895, 31.530678>,  <38.360752, 35.601997, 31.498219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198780, 35.427895, 31.530678>,  <37.928829, 35.137722, 31.584776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198780, 35.427895, 31.530678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071093, 0.246341, 0.966572,
		0.734497, -0.642703, 0.217823,
		0.674878, 0.725430, -0.135245,
		38.401245, 35.645523, 31.490105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219097, 35.132515, 32.167759>,  <37.928829, 35.137722, 31.584776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219097, 35.132515, 32.167759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347248, 35.492409, 32.049213>,  <38.424141, 35.708347, 31.978086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347248, 35.492409, 32.049213>,  <38.219097, 35.132515, 32.167759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347248, 35.492409, 32.049213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111240, 0.274952, 0.955001,
		0.940735, -0.338930, -0.011998,
		0.320380, 0.899738, -0.296360,
		38.443363, 35.762329, 31.960306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833755, 35.305862, 32.504066>,  <38.219097, 35.132515, 32.167759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833755, 35.305862, 32.504066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673744, 35.658150, 32.402618>,  <38.577740, 35.869522, 32.341751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673744, 35.658150, 32.402618>,  <38.833755, 35.305862, 32.504066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673744, 35.658150, 32.402618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158258, 0.338945, 0.927400,
		0.902737, 0.330847, -0.274967,
		-0.400026, 0.880714, -0.253619,
		38.553738, 35.922363, 32.326534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254299, 35.795078, 32.769817>,  <38.833755, 35.305862, 32.504066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254299, 35.795078, 32.769817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915512, 35.997303, 32.704025>,  <38.712238, 36.118637, 32.664551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915512, 35.997303, 32.704025>,  <39.254299, 35.795078, 32.769817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915512, 35.997303, 32.704025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096262, 0.450108, 0.887770,
		0.522855, 0.736080, -0.429894,
		-0.846969, 0.505558, -0.164484,
		38.661423, 36.148972, 32.654678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431595, 36.448467, 32.971050>,  <39.254299, 35.795078, 32.769817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431595, 36.448467, 32.971050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031708, 36.457180, 32.967293>,  <38.791775, 36.462406, 32.965038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031708, 36.457180, 32.967293>,  <39.431595, 36.448467, 32.971050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031708, 36.457180, 32.967293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002281, 0.482564, 0.875858,
		0.023608, 0.875590, -0.482478,
		-0.999719, 0.021778, -0.009395,
		38.731792, 36.463715, 32.964474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290997, 37.063332, 33.252426>,  <39.431595, 36.448467, 32.971050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290997, 37.063332, 33.252426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941891, 36.876263, 33.308369>,  <38.732426, 36.764019, 33.341934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941891, 36.876263, 33.308369>,  <39.290997, 37.063332, 33.252426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941891, 36.876263, 33.308369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059611, 0.386469, 0.920374,
		-0.484486, 0.794934, -0.365176,
		-0.872766, -0.467676, 0.139852,
		38.680061, 36.735958, 33.350323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721378, 37.586384, 33.342106>,  <39.290997, 37.063332, 33.252426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721378, 37.586384, 33.342106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587822, 37.240139, 33.491356>,  <38.507687, 37.032391, 33.580906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587822, 37.240139, 33.491356>,  <38.721378, 37.586384, 33.342106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587822, 37.240139, 33.491356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332769, 0.478603, 0.812529,
		-0.881920, 0.147129, -0.447851,
		-0.333890, -0.865617, 0.373129,
		38.487656, 36.980453, 33.603294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049042, 37.747089, 33.634151>,  <38.721378, 37.586384, 33.342106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049042, 37.747089, 33.634151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184063, 37.418316, 33.817665>,  <38.265076, 37.221054, 33.927773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184063, 37.418316, 33.817665>,  <38.049042, 37.747089, 33.634151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184063, 37.418316, 33.817665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370283, 0.332154, 0.867505,
		-0.865416, -0.462713, -0.192226,
		0.337557, -0.821931, 0.458786,
		38.285332, 37.171738, 33.955299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568886, 37.588093, 34.137386>,  <38.049042, 37.747089, 33.634151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568886, 37.588093, 34.137386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911228, 37.417793, 34.254856>,  <38.116634, 37.315613, 34.325340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911228, 37.417793, 34.254856>,  <37.568886, 37.588093, 34.137386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911228, 37.417793, 34.254856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099560, 0.421571, 0.901313,
		-0.507542, -0.800632, 0.318416,
		0.855856, -0.425753, 0.293676,
		38.167984, 37.290066, 34.342960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380787, 37.317665, 34.809834>,  <37.568886, 37.588093, 34.137386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380787, 37.317665, 34.809834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780495, 37.325703, 34.796837>,  <38.020321, 37.330524, 34.789040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780495, 37.325703, 34.796837>,  <37.380787, 37.317665, 34.809834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780495, 37.325703, 34.796837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014896, 0.578289, 0.815696,
		0.035180, -0.815585, 0.577567,
		0.999270, 0.020093, -0.032493,
		38.080276, 37.331730, 34.787090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537148, 37.225075, 35.453644>,  <37.380787, 37.317665, 34.809834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537148, 37.225075, 35.453644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883102, 37.363567, 35.308266>,  <38.090675, 37.446663, 35.221039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883102, 37.363567, 35.308266>,  <37.537148, 37.225075, 35.453644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883102, 37.363567, 35.308266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157953, 0.499537, 0.851771,
		0.476457, -0.794096, 0.377359,
		0.864893, 0.346227, -0.363438,
		38.142570, 37.467438, 35.199234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022682, 37.087879, 36.014950>,  <37.537148, 37.225075, 35.453644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022682, 37.087879, 36.014950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225117, 37.334827, 35.774040>,  <38.346577, 37.482994, 35.629494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225117, 37.334827, 35.774040>,  <38.022682, 37.087879, 36.014950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225117, 37.334827, 35.774040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171205, 0.612501, 0.771707,
		0.845322, -0.493661, 0.204280,
		0.506083, 0.617367, -0.602278,
		38.376942, 37.520039, 35.593357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731514, 37.131756, 36.289066>,  <38.022682, 37.087879, 36.014950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731514, 37.131756, 36.289066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626373, 37.454960, 36.078152>,  <38.563290, 37.648880, 35.951603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626373, 37.454960, 36.078152>,  <38.731514, 37.131756, 36.289066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626373, 37.454960, 36.078152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170241, 0.576773, 0.798969,
		0.949700, 0.120240, -0.289159,
		-0.262847, 0.808007, -0.527291,
		38.547520, 37.697361, 35.919964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187538, 37.666843, 36.391354>,  <38.731514, 37.131756, 36.289066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187538, 37.666843, 36.391354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891987, 37.892918, 36.244591>,  <38.714657, 38.028564, 36.156532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891987, 37.892918, 36.244591>,  <39.187538, 37.666843, 36.391354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891987, 37.892918, 36.244591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128441, 0.652651, 0.746693,
		0.661486, 0.504587, -0.554822,
		-0.738877, 0.565189, -0.366910,
		38.670322, 38.062473, 36.134518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502815, 38.403389, 36.438782>,  <39.187538, 37.666843, 36.391354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502815, 38.403389, 36.438782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105759, 38.400497, 36.390423>,  <38.867527, 38.398762, 36.361408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105759, 38.400497, 36.390423>,  <39.502815, 38.403389, 36.438782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105759, 38.400497, 36.390423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096730, 0.647998, 0.755474,
		0.072875, 0.761608, -0.643928,
		-0.992639, -0.007232, -0.120893,
		38.807968, 38.398327, 36.354156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282295, 39.145500, 36.511383>,  <39.502815, 38.403389, 36.438782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282295, 39.145500, 36.511383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972839, 38.907726, 36.599136>,  <38.787167, 38.765060, 36.651787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972839, 38.907726, 36.599136>,  <39.282295, 39.145500, 36.511383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972839, 38.907726, 36.599136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176300, 0.534505, 0.826573,
		-0.608608, 0.600790, -0.518312,
		-0.773637, -0.594438, 0.219385,
		38.740749, 38.729397, 36.664951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697590, 39.526031, 36.737514>,  <39.282295, 39.145500, 36.511383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697590, 39.526031, 36.737514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638279, 39.170162, 36.910252>,  <38.602692, 38.956638, 37.013893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638279, 39.170162, 36.910252>,  <38.697590, 39.526031, 36.737514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638279, 39.170162, 36.910252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291132, 0.456588, 0.840696,
		-0.945122, -0.001062, -0.326717,
		-0.148282, -0.889678, 0.431841,
		38.593796, 38.903259, 37.039803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965714, 39.360744, 36.702888>,  <38.697590, 39.526031, 36.737514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965714, 39.360744, 36.702888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140068, 39.157917, 37.000313>,  <38.244682, 39.036221, 37.178768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140068, 39.157917, 37.000313>,  <37.965714, 39.360744, 36.702888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140068, 39.157917, 37.000313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519142, 0.533224, 0.667955,
		-0.735184, -0.677167, -0.030816,
		0.435885, -0.507068, 0.743564,
		38.270832, 39.005798, 37.223381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527607, 39.742123, 37.075554>,  <37.965714, 39.360744, 36.702888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527607, 39.742123, 37.075554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144955, 39.815464, 36.985012>,  <36.915363, 39.859470, 36.930687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144955, 39.815464, 36.985012>,  <37.527607, 39.742123, 37.075554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144955, 39.815464, 36.985012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159739, 0.979993, 0.118731,
		0.243600, 0.077424, -0.966780,
		-0.956631, 0.183356, -0.226359,
		36.857964, 39.870472, 36.917103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509899, 39.632397, 37.817806>,  <37.527607, 39.742123, 37.075554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509899, 39.632397, 37.817806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813129, 39.455360, 38.009407>,  <37.995068, 39.349140, 38.124367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813129, 39.455360, 38.009407>,  <37.509899, 39.632397, 37.817806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813129, 39.455360, 38.009407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059652, 0.778447, 0.624869,
		-0.649438, -0.445122, 0.616520,
		0.758071, -0.442590, 0.479001,
		38.040550, 39.322582, 38.153107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320938, 39.625057, 38.483284>,  <37.509899, 39.632397, 37.817806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320938, 39.625057, 38.483284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716038, 39.660645, 38.432011>,  <37.953098, 39.681995, 38.401249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716038, 39.660645, 38.432011>,  <37.320938, 39.625057, 38.483284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716038, 39.660645, 38.432011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012779, 0.772616, 0.634745,
		0.155506, -0.628609, 0.762016,
		0.987752, 0.088969, -0.128179,
		38.012363, 39.687336, 38.393559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792881, 39.642532, 39.197041>,  <37.320938, 39.625057, 38.483284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792881, 39.642532, 39.197041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970261, 39.856983, 38.909729>,  <38.076687, 39.985653, 38.737343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970261, 39.856983, 38.909729>,  <37.792881, 39.642532, 39.197041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970261, 39.856983, 38.909729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042821, 0.813137, 0.580495,
		0.895278, -0.226660, 0.383539,
		0.443445, 0.536127, -0.718278,
		38.103294, 40.017822, 38.694244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435532, 39.931190, 39.479458>,  <37.792881, 39.642532, 39.197041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435532, 39.931190, 39.479458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340488, 40.160843, 39.166050>,  <38.283463, 40.298634, 38.978004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340488, 40.160843, 39.166050>,  <38.435532, 39.931190, 39.479458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340488, 40.160843, 39.166050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042010, 0.811945, 0.582221,
		0.970452, 0.105426, -0.217046,
		-0.237611, 0.574135, -0.783524,
		38.269207, 40.333084, 38.930992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954262, 40.454651, 39.456463>,  <38.435532, 39.931190, 39.479458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954262, 40.454651, 39.456463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622696, 40.585796, 39.275173>,  <38.423756, 40.664482, 39.166401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622696, 40.585796, 39.275173>,  <38.954262, 40.454651, 39.456463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622696, 40.585796, 39.275173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058642, 0.856694, 0.512481,
		0.556294, 0.398225, -0.729352,
		-0.828914, 0.327861, -0.453220,
		38.374023, 40.684155, 39.139206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145866, 41.147068, 39.193573>,  <38.954262, 40.454651, 39.456463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145866, 41.147068, 39.193573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746346, 41.161602, 39.180496>,  <38.506634, 41.170322, 39.172649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746346, 41.161602, 39.180496>,  <39.145866, 41.147068, 39.193573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746346, 41.161602, 39.180496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019096, 0.905792, 0.423292,
		0.044990, 0.422162, -0.905403,
		-0.998805, 0.036334, -0.032690,
		38.446705, 41.172501, 39.170689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950230, 41.727295, 38.789345>,  <39.145866, 41.147068, 39.193573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950230, 41.727295, 38.789345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617695, 41.668766, 39.003807>,  <38.418175, 41.633648, 39.132484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617695, 41.668766, 39.003807>,  <38.950230, 41.727295, 38.789345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617695, 41.668766, 39.003807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082299, 0.921670, 0.379145,
		-0.549641, 0.359323, -0.754176,
		-0.831337, -0.146326, 0.536160,
		38.368294, 41.624866, 39.164654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491585, 42.337116, 38.722939>,  <38.950230, 41.727295, 38.789345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491585, 42.337116, 38.722939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375835, 42.161858, 39.063358>,  <38.306385, 42.056702, 39.267612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375835, 42.161858, 39.063358>,  <38.491585, 42.337116, 38.722939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375835, 42.161858, 39.063358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082984, 0.897225, 0.433706,
		-0.953614, 0.054878, -0.295989,
		-0.289369, -0.438150, 0.851052,
		38.289024, 42.030411, 39.318672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028137, 42.816658, 38.888050>,  <38.491585, 42.337116, 38.722939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028137, 42.816658, 38.888050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121189, 42.582790, 39.198933>,  <38.177021, 42.442471, 39.385464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121189, 42.582790, 39.198933>,  <38.028137, 42.816658, 38.888050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121189, 42.582790, 39.198933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019773, 0.801808, 0.597255,
		-0.972365, -0.123569, 0.198082,
		0.232626, -0.584666, 0.777207,
		38.190975, 42.407391, 39.432095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531948, 42.745235, 39.521069>,  <38.028137, 42.816658, 38.888050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531948, 42.745235, 39.521069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914661, 42.737118, 39.637112>,  <38.144287, 42.732246, 39.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914661, 42.737118, 39.637112>,  <37.531948, 42.745235, 39.521069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914661, 42.737118, 39.637112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131561, 0.859449, 0.494003,
		-0.259356, -0.510818, 0.819633,
		0.956779, -0.020291, 0.290107,
		38.201694, 42.731030, 39.724144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831573, 43.419598, 39.663883>,  <37.531948, 42.745235, 39.521069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831573, 43.419598, 39.663883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009201, 43.489803, 40.015335>,  <38.115776, 43.531925, 40.226208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009201, 43.489803, 40.015335>,  <37.831573, 43.419598, 39.663883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009201, 43.489803, 40.015335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229204, -0.970250, 0.077974,
		0.866181, 0.166761, -0.471085,
		0.444068, 0.175515, 0.878635,
		38.142422, 43.542458, 40.278927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642570, 43.408184, 39.737659>,  <37.831573, 43.419598, 39.663883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642570, 43.408184, 39.737659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453114, 43.304012, 40.074192>,  <38.339439, 43.241508, 40.276112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453114, 43.304012, 40.074192>,  <38.642570, 43.408184, 39.737659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453114, 43.304012, 40.074192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215518, -0.960509, -0.175993,
		0.853938, 0.097963, 0.511070,
		-0.473647, -0.260432, 0.841328,
		38.311020, 43.225883, 40.326591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051506, 42.957588, 40.112106>,  <38.642570, 43.408184, 39.737659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051506, 42.957588, 40.112106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673817, 42.895958, 40.228523>,  <38.447205, 42.858982, 40.298374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673817, 42.895958, 40.228523>,  <39.051506, 42.957588, 40.112106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673817, 42.895958, 40.228523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099758, -0.976098, -0.193085,
		0.313833, -0.153282, 0.937024,
		-0.944223, -0.154072, 0.291040,
		38.390549, 42.849735, 40.315834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980930, 42.348793, 40.561890>,  <39.051506, 42.957588, 40.112106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980930, 42.348793, 40.561890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655136, 42.429337, 40.344242>,  <38.459660, 42.477661, 40.213654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655136, 42.429337, 40.344242>,  <38.980930, 42.348793, 40.561890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655136, 42.429337, 40.344242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054519, -0.907128, -0.417307,
		-0.577611, -0.369557, 0.727869,
		-0.814489, 0.201358, -0.544115,
		38.410789, 42.489742, 40.181007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524227, 41.779537, 40.553535>,  <38.980930, 42.348793, 40.561890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524227, 41.779537, 40.553535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383762, 41.981518, 40.238140>,  <38.299484, 42.102707, 40.048904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383762, 41.981518, 40.238140>,  <38.524227, 41.779537, 40.553535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383762, 41.981518, 40.238140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159992, -0.862093, -0.480831,
		-0.922544, -0.042698, 0.383522,
		-0.351162, 0.504948, -0.788488,
		38.278412, 42.133003, 40.001595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879406, 41.419601, 40.337719>,  <38.524227, 41.779537, 40.553535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879406, 41.419601, 40.337719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973312, 41.640369, 40.017651>,  <38.029655, 41.772831, 39.825611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973312, 41.640369, 40.017651>,  <37.879406, 41.419601, 40.337719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973312, 41.640369, 40.017651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185417, -0.782632, -0.594229,
		-0.954205, 0.287867, -0.081397,
		0.234763, 0.551924, -0.800167,
		38.043739, 41.805946, 39.777599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295612, 41.329926, 39.857746>,  <37.879406, 41.419601, 40.337719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295612, 41.329926, 39.857746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635788, 41.412663, 39.664265>,  <37.839893, 41.462303, 39.548176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635788, 41.412663, 39.664265>,  <37.295612, 41.329926, 39.857746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635788, 41.412663, 39.664265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136000, -0.801760, -0.581966,
		-0.508188, 0.560711, -0.653719,
		0.850440, 0.206842, -0.483702,
		37.890919, 41.474716, 39.519154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114803, 41.129120, 39.115990>,  <37.295612, 41.329926, 39.857746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114803, 41.129120, 39.115990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513702, 41.158783, 39.115593>,  <37.753040, 41.176582, 39.115356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513702, 41.158783, 39.115593>,  <37.114803, 41.129120, 39.115990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513702, 41.158783, 39.115593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058143, -0.790017, -0.610321,
		-0.046041, 0.608583, -0.792153,
		0.997246, 0.074158, -0.000988,
		37.812878, 41.181030, 39.115295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439014, 41.240616, 38.418823>,  <37.114803, 41.129120, 39.115990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439014, 41.240616, 38.418823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702797, 41.050987, 38.652191>,  <37.861069, 40.937210, 38.792210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702797, 41.050987, 38.652191>,  <37.439014, 41.240616, 38.418823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702797, 41.050987, 38.652191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001625, -0.776982, -0.629520,
		0.751739, 0.414194, -0.513158,
		0.659458, -0.474069, 0.583415,
		37.900635, 40.908768, 38.827217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943928, 40.981586, 37.897354>,  <37.439014, 41.240616, 38.418823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943928, 40.981586, 37.897354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044796, 40.787895, 38.232479>,  <38.105316, 40.671680, 38.433556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044796, 40.787895, 38.232479>,  <37.943928, 40.981586, 37.897354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044796, 40.787895, 38.232479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338444, -0.766980, -0.545158,
		0.906568, 0.421026, -0.029527,
		0.252172, -0.484229, 0.837813,
		38.120449, 40.642628, 38.483822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596500, 40.631443, 37.651726>,  <37.943928, 40.981586, 37.897354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596500, 40.631443, 37.651726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462425, 40.455399, 37.984940>,  <38.381981, 40.349770, 38.184868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462425, 40.455399, 37.984940>,  <38.596500, 40.631443, 37.651726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462425, 40.455399, 37.984940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248353, -0.894187, -0.372493,
		0.908829, 0.082032, 0.409024,
		-0.335187, -0.440115, 0.833036,
		38.361870, 40.323364, 38.234852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098423, 40.208397, 37.796963>,  <38.596500, 40.631443, 37.651726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098423, 40.208397, 37.796963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758221, 40.066944, 37.952698>,  <38.554100, 39.982071, 38.046139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758221, 40.066944, 37.952698>,  <39.098423, 40.208397, 37.796963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758221, 40.066944, 37.952698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173956, -0.887699, -0.426297,
		0.496368, -0.294840, 0.816509,
		-0.850505, -0.353637, 0.389337,
		38.503071, 39.960854, 38.069500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254005, 39.646244, 38.189426>,  <39.098423, 40.208397, 37.796963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254005, 39.646244, 38.189426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866730, 39.605145, 38.098164>,  <38.634365, 39.580486, 38.043404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866730, 39.605145, 38.098164>,  <39.254005, 39.646244, 38.189426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866730, 39.605145, 38.098164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168795, -0.941283, -0.292395,
		-0.184722, -0.321605, 0.928681,
		-0.968187, -0.102745, -0.228161,
		38.576275, 39.574322, 38.029716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871513, 38.932159, 38.437675>,  <39.254005, 39.646244, 38.189426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871513, 38.932159, 38.437675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670120, 39.075207, 38.123066>,  <38.549286, 39.161034, 37.934299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670120, 39.075207, 38.123066>,  <38.871513, 38.932159, 38.437675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670120, 39.075207, 38.123066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056103, -0.894867, -0.442792,
		-0.862182, -0.267065, 0.430486,
		-0.503482, 0.357616, -0.786522,
		38.519073, 39.182491, 37.887108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804794, 38.265667, 38.116348>,  <38.871513, 38.932159, 38.437675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804794, 38.265667, 38.116348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628376, 38.512943, 37.856098>,  <38.522526, 38.661308, 37.699947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628376, 38.512943, 37.856098>,  <38.804794, 38.265667, 38.116348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628376, 38.512943, 37.856098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029589, -0.714535, -0.698974,
		-0.896996, -0.327532, 0.296852,
		-0.441047, 0.618193, -0.650626,
		38.496063, 38.698402, 37.660912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495491, 37.820408, 37.715637>,  <38.804794, 38.265667, 38.116348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495491, 37.820408, 37.715637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520477, 38.149960, 37.490314>,  <38.535469, 38.347691, 37.355122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520477, 38.149960, 37.490314>,  <38.495491, 37.820408, 37.715637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520477, 38.149960, 37.490314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182194, -0.564339, -0.805187,
		-0.981277, -0.052334, -0.185358,
		0.062466, 0.823882, -0.563308,
		38.539219, 38.397125, 37.321323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005199, 38.352406, 37.291847>,  <38.495491, 37.820408, 37.715637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005199, 38.352406, 37.291847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338428, 38.262535, 37.089653>,  <38.538364, 38.208611, 36.968338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338428, 38.262535, 37.089653>,  <38.005199, 38.352406, 37.291847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338428, 38.262535, 37.089653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462379, 0.218766, -0.859272,
		0.303642, 0.949558, 0.078361,
		0.833071, -0.224679, -0.505482,
		38.588348, 38.195133, 36.938007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573063, 38.114460, 36.793255>,  <38.005199, 38.352406, 37.291847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573063, 38.114460, 36.793255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920433, 38.304291, 36.735832>,  <38.128857, 38.418190, 36.701378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920433, 38.304291, 36.735832>,  <37.573063, 38.114460, 36.793255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920433, 38.304291, 36.735832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025987, -0.332702, -0.942674,
		-0.495132, 0.814915, -0.301261,
		0.868429, 0.474577, -0.143554,
		38.180962, 38.446663, 36.692764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452229, 38.388023, 36.191166>,  <37.573063, 38.114460, 36.793255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452229, 38.388023, 36.191166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843880, 38.365299, 36.269222>,  <38.078869, 38.351665, 36.316055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843880, 38.365299, 36.269222>,  <37.452229, 38.388023, 36.191166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843880, 38.365299, 36.269222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155949, -0.405701, -0.900603,
		0.130336, 0.912238, -0.388374,
		0.979128, -0.056814, 0.195140,
		38.137619, 38.348255, 36.327763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677856, 38.655315, 35.611328>,  <37.452229, 38.388023, 36.191166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677856, 38.655315, 35.611328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983105, 38.447044, 35.764454>,  <38.166252, 38.322083, 35.856327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983105, 38.447044, 35.764454>,  <37.677856, 38.655315, 35.611328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983105, 38.447044, 35.764454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191725, -0.383280, -0.903514,
		0.617163, 0.762884, -0.192661,
		0.763120, -0.520677, 0.382810,
		38.212040, 38.290840, 35.879295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160015, 38.734444, 35.156185>,  <37.677856, 38.655315, 35.611328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160015, 38.734444, 35.156185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309601, 38.429306, 35.367168>,  <38.399353, 38.246223, 35.493759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309601, 38.429306, 35.367168>,  <38.160015, 38.734444, 35.156185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309601, 38.429306, 35.367168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236993, -0.471243, -0.849567,
		0.896651, 0.442715, 0.004560,
		0.373968, -0.762845, 0.527461,
		38.421791, 38.200451, 35.525406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637581, 38.451599, 34.780556>,  <38.160015, 38.734444, 35.156185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637581, 38.451599, 34.780556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620941, 38.159023, 35.052811>,  <38.610958, 37.983479, 35.216164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620941, 38.159023, 35.052811>,  <38.637581, 38.451599, 34.780556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620941, 38.159023, 35.052811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073495, -0.681617, -0.728009,
		0.996428, 0.019738, 0.082113,
		-0.041600, -0.731443, 0.680633,
		38.608459, 37.939590, 35.257000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269508, 37.956314, 34.649086>,  <38.637581, 38.451599, 34.780556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269508, 37.956314, 34.649086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944736, 37.805023, 34.826942>,  <38.749874, 37.714249, 34.933655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944736, 37.805023, 34.826942>,  <39.269508, 37.956314, 34.649086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944736, 37.805023, 34.826942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101991, -0.658066, -0.746020,
		0.574770, -0.651069, 0.495730,
		-0.811934, -0.378230, 0.444640,
		38.701157, 37.691555, 34.960335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355774, 37.322975, 34.742382>,  <39.269508, 37.956314, 34.649086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355774, 37.322975, 34.742382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956001, 37.310184, 34.746769>,  <38.716137, 37.302509, 34.749401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956001, 37.310184, 34.746769>,  <39.355774, 37.322975, 34.742382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956001, 37.310184, 34.746769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017218, -0.760573, -0.649025,
		0.029095, -0.648465, 0.760688,
		-0.999428, -0.031981, 0.010964,
		38.656174, 37.300591, 34.750057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141434, 36.601715, 34.783367>,  <39.355774, 37.322975, 34.742382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141434, 36.601715, 34.783367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836628, 36.815639, 34.637321>,  <38.653744, 36.943993, 34.549694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836628, 36.815639, 34.637321>,  <39.141434, 36.601715, 34.783367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836628, 36.815639, 34.637321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080593, -0.637770, -0.765999,
		-0.642552, -0.554258, 0.529080,
		-0.761992, 0.534834, -0.365131,
		38.608025, 36.976082, 34.527786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858810, 36.701672, 34.977810>,  <39.141434, 36.601715, 34.783367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858810, 36.701672, 34.977810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953735, 36.388020, 35.207184>,  <40.010689, 36.199829, 35.344807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953735, 36.388020, 35.207184>,  <39.858810, 36.701672, 34.977810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953735, 36.388020, 35.207184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970467, 0.165026, -0.175955,
		0.043341, 0.598253, 0.800134,
		0.237309, -0.784130, 0.573432,
		40.024929, 36.152779, 35.379215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326965, 36.948235, 35.391727>,  <39.858810, 36.701672, 34.977810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326965, 36.948235, 35.391727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380623, 36.554314, 35.347595>,  <40.412815, 36.317963, 35.321114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380623, 36.554314, 35.347595>,  <40.326965, 36.948235, 35.391727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380623, 36.554314, 35.347595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979775, 0.148484, -0.134141,
		0.148484, -0.090107, 0.984801,
		0.134141, -0.984801, -0.110332,
		40.420864, 36.258873, 35.314495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775463, 36.529526, 35.900887>,  <40.326965, 36.948235, 35.391727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775463, 36.529526, 35.900887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769093, 36.370335, 35.533981>,  <40.765270, 36.274822, 35.313839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769093, 36.370335, 35.533981>,  <40.775463, 36.529526, 35.900887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769093, 36.370335, 35.533981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975062, 0.196912, -0.102370,
		0.221360, -0.896014, 0.384913,
		-0.015931, -0.397974, -0.917258,
		40.764313, 36.250942, 35.258804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344151, 35.976574, 35.895264>,  <40.775463, 36.529526, 35.900887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344151, 35.976574, 35.895264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282032, 36.195694, 35.566433>,  <41.244762, 36.327164, 35.369137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282032, 36.195694, 35.566433>,  <41.344151, 35.976574, 35.895264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282032, 36.195694, 35.566433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879482, 0.455642, 0.137483,
		0.449883, -0.701648, -0.552536,
		-0.155294, 0.547796, -0.822072,
		41.235443, 36.360031, 35.319813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899960, 35.755497, 35.311081>,  <41.344151, 35.976574, 35.895264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899960, 35.755497, 35.311081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784027, 36.138103, 35.324158>,  <41.714470, 36.367668, 35.332005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784027, 36.138103, 35.324158>,  <41.899960, 35.755497, 35.311081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784027, 36.138103, 35.324158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955687, 0.287396, 0.063758,
		0.051590, 0.049723, -0.997430,
		-0.289827, 0.956520, 0.032693,
		41.697079, 36.425060, 35.333965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096107, 36.109058, 34.711033>,  <41.899960, 35.755497, 35.311081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096107, 36.109058, 34.711033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092865, 36.328949, 35.045155>,  <42.090919, 36.460884, 35.245628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092865, 36.328949, 35.045155>,  <42.096107, 36.109058, 34.711033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092865, 36.328949, 35.045155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955406, 0.250843, -0.155812,
		-0.295184, 0.796796, -0.527241,
		-0.008104, 0.549722, 0.835308,
		42.090435, 36.493866, 35.295746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427654, 36.785759, 34.543049>,  <42.096107, 36.109058, 34.711033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427654, 36.785759, 34.543049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478336, 36.687572, 34.927483>,  <42.508747, 36.628662, 35.158142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478336, 36.687572, 34.927483>,  <42.427654, 36.785759, 34.543049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478336, 36.687572, 34.927483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932543, 0.359720, -0.031072,
		-0.338096, 0.900193, 0.274488,
		0.126710, -0.245467, 0.961088,
		42.516350, 36.613934, 35.215809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601368, 37.423439, 35.008553>,  <42.427654, 36.785759, 34.543049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601368, 37.423439, 35.008553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745270, 37.071411, 35.132523>,  <42.831612, 36.860195, 35.206905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745270, 37.071411, 35.132523>,  <42.601368, 37.423439, 35.008553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745270, 37.071411, 35.132523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927646, 0.373053, -0.017449,
		-0.100264, 0.293781, 0.950600,
		0.359750, -0.880070, 0.309929,
		42.853195, 36.807388, 35.225502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125336, 37.588814, 35.454441>,  <42.601368, 37.423439, 35.008553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125336, 37.588814, 35.454441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193230, 37.203869, 35.369549>,  <43.233967, 36.972900, 35.318615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193230, 37.203869, 35.369549>,  <43.125336, 37.588814, 35.454441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193230, 37.203869, 35.369549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983200, 0.150691, 0.103004,
		-0.067147, -0.226150, 0.971776,
		0.169732, -0.962366, -0.212232,
		43.244148, 36.915157, 35.305878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361595, 37.111992, 36.018169>,  <43.125336, 37.588814, 35.454441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361595, 37.111992, 36.018169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489624, 37.028214, 35.648590>,  <43.566441, 36.977947, 35.426842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489624, 37.028214, 35.648590>,  <43.361595, 37.111992, 36.018169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489624, 37.028214, 35.648590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941602, 0.177992, 0.285840,
		0.104589, -0.961485, 0.254181,
		0.320073, -0.209442, -0.923952,
		43.585648, 36.965382, 35.371403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988651, 36.631004, 36.078583>,  <43.361595, 37.111992, 36.018169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988651, 36.631004, 36.078583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966248, 36.881393, 35.767452>,  <43.952805, 37.031628, 35.580772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966248, 36.881393, 35.767452>,  <43.988651, 36.631004, 36.078583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966248, 36.881393, 35.767452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970200, 0.218066, 0.105635,
		0.235743, -0.748734, -0.619534,
		-0.056007, 0.625975, -0.777829,
		43.949444, 37.069187, 35.534103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130730, 36.377029, 35.369274>,  <43.988651, 36.631004, 36.078583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130730, 36.377029, 35.369274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223801, 36.763447, 35.414211>,  <44.279644, 36.995296, 35.441174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223801, 36.763447, 35.414211>,  <44.130730, 36.377029, 35.369274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223801, 36.763447, 35.414211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970186, -0.222505, -0.096080,
		-0.067821, 0.131348, -0.989014,
		0.232680, 0.966043, 0.112341,
		44.293606, 37.053261, 35.447914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641315, 36.476562, 34.888042>,  <44.130730, 36.377029, 35.369274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641315, 36.476562, 34.888042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677151, 36.789078, 35.135128>,  <44.698650, 36.976585, 35.283379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677151, 36.789078, 35.135128>,  <44.641315, 36.476562, 34.888042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677151, 36.789078, 35.135128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976071, -0.192256, 0.101605,
		0.198141, 0.593826, -0.779815,
		0.089589, 0.781287, 0.617710,
		44.704029, 37.023464, 35.320442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311001, 36.803661, 34.972427>,  <44.641315, 36.476562, 34.888042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311001, 36.803661, 34.972427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568233, 37.052483, 35.151085>,  <45.722572, 37.201775, 35.258278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568233, 37.052483, 35.151085>,  <45.311001, 36.803661, 34.972427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568233, 37.052483, 35.151085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758393, -0.436431, -0.484116,
		-0.106217, 0.650059, -0.752424,
		0.643085, 0.622054, 0.446644,
		45.761158, 37.239098, 35.285076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686893, 37.060120, 34.430325>,  <45.311001, 36.803661, 34.972427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686893, 37.060120, 34.430325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880157, 37.126045, 34.774277>,  <45.996117, 37.165600, 34.980648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880157, 37.126045, 34.774277>,  <45.686893, 37.060120, 34.430325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880157, 37.126045, 34.774277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739312, -0.602917, -0.299847,
		0.469019, 0.780594, -0.413152,
		0.483155, 0.164814, 0.859882,
		46.025105, 37.175491, 35.032242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332230, 37.125656, 34.303562>,  <45.686893, 37.060120, 34.430325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.332230, 37.125656, 34.303562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317955, 36.991936, 34.680279>,  <46.309391, 36.911701, 34.906307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317955, 36.991936, 34.680279>,  <46.332230, 37.125656, 34.303562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.317955, 36.991936, 34.680279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760050, -0.620970, -0.191624,
		0.648884, 0.708970, 0.276246,
		-0.035685, -0.334303, 0.941790,
		46.307251, 36.891644, 34.962814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856598, 37.020782, 34.788452>,  <46.332230, 37.125656, 34.303562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856598, 37.020782, 34.788452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598843, 36.715069, 34.798515>,  <46.444191, 36.531639, 34.804554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598843, 36.715069, 34.798515>,  <46.856598, 37.020782, 34.788452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598843, 36.715069, 34.798515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704147, -0.605872, -0.370265,
		0.298229, -0.220880, 0.928586,
		-0.644388, -0.764285, 0.025157,
		46.405525, 36.485783, 34.806061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.035305, 36.430107, 35.233120>,  <46.856598, 37.020782, 34.788452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.035305, 36.430107, 35.233120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826427, 36.310352, 34.913700>,  <46.701099, 36.238499, 34.722050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826427, 36.310352, 34.913700>,  <47.035305, 36.430107, 35.233120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826427, 36.310352, 34.913700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746361, -0.613467, -0.258078,
		-0.412618, -0.730773, 0.543800,
		-0.522199, -0.299383, -0.798548,
		46.669769, 36.220539, 34.674137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936382, 35.695084, 35.220470>,  <47.035305, 36.430107, 35.233120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936382, 35.695084, 35.220470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982395, 35.858925, 34.858475>,  <47.010002, 35.957230, 34.641277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982395, 35.858925, 34.858475>,  <46.936382, 35.695084, 35.220470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.982395, 35.858925, 34.858475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794423, -0.584876, -0.163741,
		-0.596372, -0.700107, -0.392672,
		0.115028, 0.409599, -0.904985,
		47.016903, 35.981804, 34.586979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.278118, 35.164433, 35.652771>,  <46.936382, 35.695084, 35.220470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.278118, 35.164433, 35.652771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924992, 35.026691, 35.780556>,  <46.713116, 34.944046, 35.857227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924992, 35.026691, 35.780556>,  <47.278118, 35.164433, 35.652771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.924992, 35.026691, 35.780556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391718, 0.164397, -0.905279,
		0.259214, -0.924335, -0.280021,
		-0.882816, -0.344351, 0.319465,
		46.660149, 34.923386, 35.876396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.910412, 35.054180, 35.707191>,  <47.278118, 35.164433, 35.652771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.910412, 35.054180, 35.707191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812122, 35.019608, 35.320999>,  <47.753147, 34.998863, 35.089283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812122, 35.019608, 35.320999>,  <47.910412, 35.054180, 35.707191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812122, 35.019608, 35.320999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148230, -0.980952, 0.125544,
		-0.957939, 0.173962, 0.228231,
		-0.245724, -0.086432, -0.965479,
		47.738403, 34.993679, 35.031357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.448341, 28.381979, 28.562326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.096172, 28.244394, 28.431767>,  <40.884869, 28.161842, 28.353430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.096172, 28.244394, 28.431767>,  <41.448341, 28.381979, 28.562326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096172, 28.244394, 28.431767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412474, 0.215980, 0.884996,
		-0.233910, 0.913806, -0.332030,
		-0.880427, -0.343963, -0.326401,
		40.832043, 28.141205, 28.333847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941803, 28.952723, 28.605844>,  <41.448341, 28.381979, 28.562326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941803, 28.952723, 28.605844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.725414, 28.616413, 28.614332>,  <40.595581, 28.414627, 28.619425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.725414, 28.616413, 28.614332>,  <40.941803, 28.952723, 28.605844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725414, 28.616413, 28.614332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589714, 0.397185, 0.703194,
		-0.599654, 0.367895, -0.710681,
		-0.540973, -0.840772, 0.021221,
		40.563122, 28.364182, 28.620699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339790, 29.188744, 28.500858>,  <40.941803, 28.952723, 28.605844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339790, 29.188744, 28.500858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285816, 28.822153, 28.651520>,  <40.253429, 28.602200, 28.741917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285816, 28.822153, 28.651520>,  <40.339790, 29.188744, 28.500858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285816, 28.822153, 28.651520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583917, 0.380661, 0.717034,
		-0.800520, -0.123177, -0.586511,
		-0.134940, -0.916474, 0.376652,
		40.245335, 28.547211, 28.764515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636398, 29.193884, 28.764717>,  <40.339790, 29.188744, 28.500858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636398, 29.193884, 28.764717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794907, 28.876114, 28.948828>,  <39.890011, 28.685452, 29.059294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794907, 28.876114, 28.948828>,  <39.636398, 29.193884, 28.764717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794907, 28.876114, 28.948828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491483, 0.239895, 0.837194,
		-0.775508, -0.557975, -0.295384,
		0.396272, -0.794427, 0.460276,
		39.913788, 28.637785, 29.086910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076832, 28.993536, 29.110565>,  <39.636398, 29.193884, 28.764717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076832, 28.993536, 29.110565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395794, 28.846884, 29.302284>,  <39.587170, 28.758892, 29.417316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395794, 28.846884, 29.302284>,  <39.076832, 28.993536, 29.110565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395794, 28.846884, 29.302284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432493, 0.206677, 0.877630,
		-0.420827, -0.907119, 0.006240,
		0.797405, -0.366632, 0.479298,
		39.635014, 28.736895, 29.446074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877483, 28.681978, 29.670206>,  <39.076832, 28.993536, 29.110565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877483, 28.681978, 29.670206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254395, 28.715870, 29.799782>,  <39.480541, 28.736206, 29.877527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254395, 28.715870, 29.799782>,  <38.877483, 28.681978, 29.670206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254395, 28.715870, 29.799782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331932, 0.363572, 0.870423,
		-0.044024, -0.927705, 0.370710,
		0.942276, 0.084732, 0.323941,
		39.537079, 28.741289, 29.896965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847805, 28.395109, 30.368027>,  <38.877483, 28.681978, 29.670206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847805, 28.395109, 30.368027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171738, 28.628981, 30.348717>,  <39.366096, 28.769302, 30.337132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171738, 28.628981, 30.348717>,  <38.847805, 28.395109, 30.368027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171738, 28.628981, 30.348717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292466, 0.473680, 0.830717,
		0.508564, -0.658622, 0.554598,
		0.809830, 0.584674, -0.048272,
		39.414684, 28.804384, 30.334234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102612, 28.313745, 31.030323>,  <38.847805, 28.395109, 30.368027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102612, 28.313745, 31.030323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266914, 28.648954, 30.886658>,  <39.365498, 28.850080, 30.800459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266914, 28.648954, 30.886658>,  <39.102612, 28.313745, 31.030323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266914, 28.648954, 30.886658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319494, 0.501250, 0.804159,
		0.853934, -0.215563, 0.473635,
		0.410756, 0.838022, -0.359163,
		39.390141, 28.900360, 30.778910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501610, 28.670973, 31.569685>,  <39.102612, 28.313745, 31.030323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501610, 28.670973, 31.569685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434811, 28.976068, 31.319777>,  <39.394730, 29.159126, 31.169830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434811, 28.976068, 31.319777>,  <39.501610, 28.670973, 31.569685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434811, 28.976068, 31.319777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263893, 0.575975, 0.773702,
		0.949985, 0.294082, 0.105092,
		-0.167001, 0.762738, -0.624773,
		39.384708, 29.204889, 31.132345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782108, 29.263306, 31.879723>,  <39.501610, 28.670973, 31.569685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782108, 29.263306, 31.879723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561230, 29.432182, 31.592159>,  <39.428703, 29.533508, 31.419621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561230, 29.432182, 31.592159>,  <39.782108, 29.263306, 31.879723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561230, 29.432182, 31.592159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309985, 0.696508, 0.647136,
		0.773941, 0.580200, -0.253739,
		-0.552200, 0.422189, -0.718910,
		39.395569, 29.558840, 31.376486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971405, 29.951365, 31.926281>,  <39.782108, 29.263306, 31.879723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971405, 29.951365, 31.926281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611992, 29.952408, 31.750725>,  <39.396343, 29.953033, 31.645391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611992, 29.952408, 31.750725>,  <39.971405, 29.951365, 31.926281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611992, 29.952408, 31.750725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322146, 0.675229, 0.663541,
		0.298081, 0.737603, -0.605879,
		-0.898537, 0.002607, -0.438889,
		39.342430, 29.953190, 31.619059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780666, 30.626400, 31.825075>,  <39.971405, 29.951365, 31.926281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780666, 30.626400, 31.825075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436974, 30.421867, 31.831497>,  <39.230759, 30.299149, 31.835350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436974, 30.421867, 31.831497>,  <39.780666, 30.626400, 31.825075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436974, 30.421867, 31.831497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339953, 0.594140, 0.728993,
		-0.382294, 0.620918, -0.684333,
		-0.859234, -0.511330, 0.016053,
		39.179203, 30.268469, 31.836313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325409, 31.190107, 31.975176>,  <39.780666, 30.626400, 31.825075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325409, 31.190107, 31.975176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.135468, 30.851015, 32.069721>,  <39.021503, 30.647560, 32.126450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.135468, 30.851015, 32.069721>,  <39.325409, 31.190107, 31.975176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135468, 30.851015, 32.069721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297199, 0.407264, 0.863602,
		-0.828363, 0.339839, -0.445336,
		-0.474855, -0.847730, 0.236363,
		38.993011, 30.596697, 32.140629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591171, 31.406031, 32.048794>,  <39.325409, 31.190107, 31.975176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591171, 31.406031, 32.048794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646286, 31.060450, 32.242535>,  <38.679356, 30.853102, 32.358780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646286, 31.060450, 32.242535>,  <38.591171, 31.406031, 32.048794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646286, 31.060450, 32.242535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565722, 0.332754, 0.754476,
		-0.813002, -0.377970, -0.442906,
		0.137790, -0.863952, 0.484356,
		38.687622, 30.801264, 32.387840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929173, 31.183277, 32.230526>,  <38.591171, 31.406031, 32.048794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929173, 31.183277, 32.230526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189358, 30.995937, 32.469704>,  <38.345470, 30.883533, 32.613213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189358, 30.995937, 32.469704>,  <37.929173, 31.183277, 32.230526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189358, 30.995937, 32.469704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350498, 0.513328, 0.783355,
		-0.673828, -0.719126, 0.169746,
		0.650466, -0.468351, 0.597947,
		38.384499, 30.855433, 32.649086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617706, 31.197390, 32.837002>,  <37.929173, 31.183277, 32.230526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617706, 31.197390, 32.837002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986809, 31.096472, 32.953529>,  <38.208271, 31.035921, 33.023445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986809, 31.096472, 32.953529>,  <37.617706, 31.197390, 32.837002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986809, 31.096472, 32.953529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093588, 0.586598, 0.804452,
		-0.373846, -0.769578, 0.517676,
		0.922757, -0.252293, 0.291321,
		38.263638, 31.020784, 33.040924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488941, 31.008991, 33.535534>,  <37.617706, 31.197390, 32.837002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488941, 31.008991, 33.535534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878574, 31.091032, 33.497383>,  <38.112354, 31.140257, 33.474491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878574, 31.091032, 33.497383>,  <37.488941, 31.008991, 33.535534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878574, 31.091032, 33.497383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010027, 0.460414, 0.887648,
		0.225971, -0.863685, 0.450538,
		0.974082, 0.205100, -0.095380,
		38.170799, 31.152563, 33.468769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821487, 30.875742, 34.219322>,  <37.488941, 31.008991, 33.535534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821487, 30.875742, 34.219322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066288, 31.132296, 34.034248>,  <38.213169, 31.286228, 33.923203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066288, 31.132296, 34.034248>,  <37.821487, 30.875742, 34.219322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066288, 31.132296, 34.034248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002827, 0.583269, 0.812274,
		0.790850, -0.498423, 0.355150,
		0.612004, 0.641383, -0.462687,
		38.249889, 31.324711, 33.895443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203957, 31.294304, 34.807220>,  <37.821487, 30.875742, 34.219322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203957, 31.294304, 34.807220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258114, 31.546703, 34.501667>,  <38.290607, 31.698143, 34.318336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258114, 31.546703, 34.501667>,  <38.203957, 31.294304, 34.807220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258114, 31.546703, 34.501667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025159, 0.772919, 0.634006,
		0.990473, -0.066619, 0.120520,
		0.135389, 0.630998, -0.763879,
		38.298729, 31.736002, 34.272503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681377, 31.889687, 35.028912>,  <38.203957, 31.294304, 34.807220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681377, 31.889687, 35.028912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.496708, 32.057919, 34.716511>,  <38.385906, 32.158859, 34.529068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.496708, 32.057919, 34.716511>,  <38.681377, 31.889687, 35.028912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496708, 32.057919, 34.716511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015263, 0.884088, 0.467071,
		0.886917, 0.203715, -0.414582,
		-0.461676, 0.420581, -0.781004,
		38.358204, 32.184093, 34.482208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044018, 32.445690, 34.870575>,  <38.681377, 31.889687, 35.028912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044018, 32.445690, 34.870575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682434, 32.536808, 34.725822>,  <38.465485, 32.591476, 34.638969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682434, 32.536808, 34.725822>,  <39.044018, 32.445690, 34.870575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682434, 32.536808, 34.725822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084646, 0.924874, 0.370733,
		0.419149, 0.304497, -0.855333,
		-0.903963, 0.227793, -0.361886,
		38.411243, 32.605145, 34.617256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074421, 33.199684, 34.756790>,  <39.044018, 32.445690, 34.870575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074421, 33.199684, 34.756790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684170, 33.129436, 34.704159>,  <38.450020, 33.087288, 34.672581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684170, 33.129436, 34.704159>,  <39.074421, 33.199684, 34.756790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684170, 33.129436, 34.704159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212536, 0.905480, 0.367334,
		0.054628, 0.386345, -0.920735,
		-0.975625, -0.175622, -0.131576,
		38.391483, 33.076752, 34.664684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201923, 33.665649, 34.261181>,  <39.074421, 33.199684, 34.756790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201923, 33.665649, 34.261181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374302, 34.022575, 34.207420>,  <39.477730, 34.236729, 34.175163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374302, 34.022575, 34.207420>,  <39.201923, 33.665649, 34.261181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374302, 34.022575, 34.207420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291601, -0.278662, -0.915050,
		-0.853962, 0.355148, -0.380288,
		0.430950, 0.892310, -0.134405,
		39.503586, 34.290268, 34.167099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105343, 33.847725, 33.589104>,  <39.201923, 33.665649, 34.261181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105343, 33.847725, 33.589104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419022, 34.071911, 33.695614>,  <39.607231, 34.206425, 33.759521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419022, 34.071911, 33.695614>,  <39.105343, 33.847725, 33.589104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419022, 34.071911, 33.695614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443487, -0.206112, -0.872260,
		-0.433992, 0.802117, -0.410194,
		0.784200, 0.560470, 0.266278,
		39.654282, 34.240051, 33.775497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226334, 34.289112, 33.029385>,  <39.105343, 33.847725, 33.589104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226334, 34.289112, 33.029385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565990, 34.268047, 33.239594>,  <39.769787, 34.255409, 33.365719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565990, 34.268047, 33.239594>,  <39.226334, 34.289112, 33.029385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565990, 34.268047, 33.239594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480636, -0.335437, -0.810229,
		0.218951, 0.940589, -0.259522,
		0.849146, -0.052665, 0.525526,
		39.820736, 34.252247, 33.397251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739216, 34.627140, 32.587288>,  <39.226334, 34.289112, 33.029385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739216, 34.627140, 32.587288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951145, 34.402519, 32.841515>,  <40.078300, 34.267746, 32.994053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951145, 34.402519, 32.841515>,  <39.739216, 34.627140, 32.587288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951145, 34.402519, 32.841515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706966, -0.121543, -0.696726,
		0.468498, 0.818465, 0.332603,
		0.529820, -0.561554, 0.635569,
		40.110092, 34.234055, 33.032185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459206, 34.846920, 32.490471>,  <39.739216, 34.627140, 32.587288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459206, 34.846920, 32.490471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.459110, 34.481224, 32.652542>,  <40.459053, 34.261806, 32.749786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.459110, 34.481224, 32.652542>,  <40.459206, 34.846920, 32.490471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459110, 34.481224, 32.652542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598204, -0.324817, -0.732561,
		0.801344, 0.242209, 0.546976,
		-0.000234, -0.914237, 0.405180,
		40.459042, 34.206951, 32.774097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117664, 34.588638, 32.390411>,  <40.459206, 34.846920, 32.490471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117664, 34.588638, 32.390411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.919319, 34.256821, 32.493164>,  <40.800312, 34.057732, 32.554813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.919319, 34.256821, 32.493164>,  <41.117664, 34.588638, 32.390411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919319, 34.256821, 32.493164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580137, -0.536548, -0.612827,
		0.646193, -0.154851, 0.747299,
		-0.495859, -0.829541, 0.256878,
		40.770561, 34.007957, 32.570229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632900, 34.017254, 32.684776>,  <41.117664, 34.588638, 32.390411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632900, 34.017254, 32.684776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.301445, 33.854607, 32.530884>,  <41.102573, 33.757019, 32.438549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.301445, 33.854607, 32.530884>,  <41.632900, 34.017254, 32.684776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301445, 33.854607, 32.530884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559783, -0.602667, -0.568713,
		-0.000619, -0.686626, 0.727010,
		-0.828639, -0.406616, -0.384735,
		41.052853, 33.732620, 32.415462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746815, 33.343983, 32.686287>,  <41.632900, 34.017254, 32.684776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746815, 33.343983, 32.686287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.439941, 33.375923, 32.431709>,  <41.255817, 33.395088, 32.278961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.439941, 33.375923, 32.431709>,  <41.746815, 33.343983, 32.686287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439941, 33.375923, 32.431709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388013, -0.732324, -0.559596,
		-0.510765, -0.676259, 0.530842,
		-0.767180, 0.079848, -0.636442,
		41.209789, 33.399879, 32.240776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462219, 32.626102, 32.657391>,  <41.746815, 33.343983, 32.686287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462219, 32.626102, 32.657391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.380077, 32.836254, 32.327106>,  <41.330791, 32.962345, 32.128937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.380077, 32.836254, 32.327106>,  <41.462219, 32.626102, 32.657391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380077, 32.836254, 32.327106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336712, -0.754262, -0.563660,
		-0.918942, -0.393779, -0.022010,
		-0.205356, 0.525382, -0.825713,
		41.318470, 32.993870, 32.079391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033218, 32.154324, 32.275578>,  <41.462219, 32.626102, 32.657391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033218, 32.154324, 32.275578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.187675, 32.427998, 32.028099>,  <41.280350, 32.592201, 31.879610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.187675, 32.427998, 32.028099>,  <41.033218, 32.154324, 32.275578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187675, 32.427998, 32.028099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326470, -0.728673, -0.602041,
		-0.862737, 0.030484, -0.504734,
		0.386138, 0.684184, -0.618700,
		41.303516, 32.633251, 31.842489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046486, 31.814220, 31.690996>,  <41.033218, 32.154324, 32.275578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046486, 31.814220, 31.690996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.232380, 32.144878, 31.564075>,  <41.343918, 32.343273, 31.487923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.232380, 32.144878, 31.564075>,  <41.046486, 31.814220, 31.690996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232380, 32.144878, 31.564075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353980, -0.501918, -0.789162,
		-0.811616, 0.254432, -0.525874,
		0.464734, 0.826645, -0.317301,
		41.371799, 32.392872, 31.468885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766823, 31.883760, 31.009424>,  <41.046486, 31.814220, 31.690996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766823, 31.883760, 31.009424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.129456, 32.042858, 31.065868>,  <41.347034, 32.138317, 31.099735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.129456, 32.042858, 31.065868>,  <40.766823, 31.883760, 31.009424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129456, 32.042858, 31.065868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339935, -0.490041, -0.802685,
		-0.250113, 0.775667, -0.579469,
		0.906580, 0.397744, 0.141111,
		41.401428, 32.162182, 31.108202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970860, 32.327824, 30.325264>,  <40.766823, 31.883760, 31.009424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970860, 32.327824, 30.325264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253357, 32.176815, 30.564829>,  <41.422855, 32.086208, 30.708569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253357, 32.176815, 30.564829>,  <40.970860, 32.327824, 30.325264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253357, 32.176815, 30.564829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409270, -0.472569, -0.780498,
		0.577683, 0.796339, -0.179240,
		0.706244, -0.377523, 0.598912,
		41.465229, 32.063557, 30.744503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514492, 32.407028, 29.972754>,  <40.970860, 32.327824, 30.325264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514492, 32.407028, 29.972754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.651005, 32.126396, 30.222975>,  <41.732914, 31.958017, 30.373108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.651005, 32.126396, 30.222975>,  <41.514492, 32.407028, 29.972754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651005, 32.126396, 30.222975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349617, -0.523015, -0.777318,
		0.872522, 0.483989, 0.066787,
		0.341282, -0.701577, 0.625553,
		41.753391, 31.915922, 30.410641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203194, 32.258675, 29.651114>,  <41.514492, 32.407028, 29.972754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203194, 32.258675, 29.651114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.057507, 31.953716, 29.865070>,  <41.970097, 31.770742, 29.993444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.057507, 31.953716, 29.865070>,  <42.203194, 32.258675, 29.651114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057507, 31.953716, 29.865070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452415, -0.646854, -0.613922,
		0.814045, 0.018393, 0.580510,
		-0.364214, -0.762392, 0.534890,
		41.948242, 31.724998, 30.025537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795826, 31.920771, 29.846127>,  <42.203194, 32.258675, 29.651114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795826, 31.920771, 29.846127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.498627, 31.653509, 29.861765>,  <42.320309, 31.493153, 29.871147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.498627, 31.653509, 29.861765>,  <42.795826, 31.920771, 29.846127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498627, 31.653509, 29.861765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600507, -0.691290, -0.401882,
		0.295545, -0.275119, 0.914856,
		-0.742997, -0.668151, 0.039096,
		42.275726, 31.453064, 29.873493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111595, 31.249817, 30.066277>,  <42.795826, 31.920771, 29.846127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111595, 31.249817, 30.066277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.764107, 31.175415, 29.882654>,  <42.555614, 31.130774, 29.772480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.764107, 31.175415, 29.882654>,  <43.111595, 31.249817, 30.066277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764107, 31.175415, 29.882654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404743, -0.800808, -0.441462,
		-0.285502, -0.569306, 0.770960,
		-0.868718, -0.186002, -0.459055,
		42.503490, 31.119614, 29.744938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047153, 30.547285, 30.115866>,  <43.111595, 31.249817, 30.066277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047153, 30.547285, 30.115866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.826237, 30.662300, 29.802870>,  <42.693687, 30.731310, 29.615072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.826237, 30.662300, 29.802870>,  <43.047153, 30.547285, 30.115866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826237, 30.662300, 29.802870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411720, -0.722090, -0.555943,
		-0.724880, -0.629214, 0.280426,
		-0.552300, 0.287534, -0.782489,
		42.660549, 30.748562, 29.568123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.663937, 29.832758, 29.743738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.614792, 30.124121, 29.474121>,  <42.585304, 30.298939, 29.312351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.614792, 30.124121, 29.474121>,  <42.663937, 29.832758, 29.743738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614792, 30.124121, 29.474121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287208, -0.624026, -0.726707,
		-0.949956, -0.282874, -0.132536,
		-0.122861, 0.728405, -0.674041,
		42.577934, 30.342642, 29.271908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203445, 29.515760, 29.288664>,  <42.663937, 29.832758, 29.743738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203445, 29.515760, 29.288664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.378651, 29.821442, 29.099291>,  <42.483772, 30.004850, 28.985668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.378651, 29.821442, 29.099291>,  <42.203445, 29.515760, 29.288664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378651, 29.821442, 29.099291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268949, -0.613914, -0.742142,
		-0.857795, 0.197739, -0.474434,
		0.438012, 0.764205, -0.473431,
		42.510056, 30.050703, 28.957262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908775, 29.505745, 28.642349>,  <42.203445, 29.515760, 29.288664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908775, 29.505745, 28.642349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.271603, 29.673063, 28.623346>,  <42.489300, 29.773455, 28.611944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.271603, 29.673063, 28.623346>,  <41.908775, 29.505745, 28.642349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271603, 29.673063, 28.623346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247675, -0.621488, -0.743243,
		-0.340419, 0.662406, -0.667333,
		0.907068, 0.418296, -0.047505,
		42.543724, 29.798552, 28.609095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885960, 29.591198, 27.956020>,  <41.908775, 29.505745, 28.642349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885960, 29.591198, 27.956020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252438, 29.638374, 28.109215>,  <42.472324, 29.666679, 28.201132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252438, 29.638374, 28.109215>,  <41.885960, 29.591198, 27.956020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252438, 29.638374, 28.109215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375999, -0.583563, -0.719777,
		0.138605, 0.803458, -0.579003,
		0.916195, 0.117940, 0.382984,
		42.527298, 29.673756, 28.224110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194012, 29.665487, 27.381989>,  <41.885960, 29.591198, 27.956020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194012, 29.665487, 27.381989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483261, 29.582384, 27.645483>,  <42.656811, 29.532522, 27.803579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483261, 29.582384, 27.645483>,  <42.194012, 29.665487, 27.381989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483261, 29.582384, 27.645483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332984, -0.730702, -0.595983,
		0.605160, 0.650316, -0.459206,
		0.723121, -0.207757, 0.658736,
		42.700199, 29.520058, 27.843103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778290, 29.650806, 26.960955>,  <42.194012, 29.665487, 27.381989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778290, 29.650806, 26.960955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.902279, 29.477180, 27.299305>,  <42.976673, 29.373005, 27.502316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.902279, 29.477180, 27.299305>,  <42.778290, 29.650806, 26.960955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902279, 29.477180, 27.299305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519214, -0.668024, -0.533066,
		0.796451, 0.604426, 0.018305,
		0.309971, -0.434065, 0.845875,
		42.995270, 29.346960, 27.553068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544056, 29.610657, 26.887133>,  <42.778290, 29.650806, 26.960955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544056, 29.610657, 26.887133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429924, 29.328669, 27.146858>,  <43.361446, 29.159475, 27.302692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429924, 29.328669, 27.146858>,  <43.544056, 29.610657, 26.887133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429924, 29.328669, 27.146858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453566, -0.696131, -0.556488,
		0.844313, 0.135724, 0.518377,
		-0.285330, -0.704969, 0.649312,
		43.344326, 29.117178, 27.341652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154926, 29.204084, 27.096327>,  <43.544056, 29.610657, 26.887133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154926, 29.204084, 27.096327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.827465, 28.982197, 27.155790>,  <43.630989, 28.849064, 27.191467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.827465, 28.982197, 27.155790>,  <44.154926, 29.204084, 27.096327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827465, 28.982197, 27.155790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352825, -0.690050, -0.631938,
		0.453129, -0.464886, 0.760628,
		-0.818650, -0.554718, 0.148658,
		43.581871, 28.815781, 27.200388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402065, 28.450602, 27.145527>,  <44.154926, 29.204084, 27.096327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402065, 28.450602, 27.145527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.018848, 28.452547, 27.030897>,  <43.788918, 28.453714, 26.962118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.018848, 28.452547, 27.030897>,  <44.402065, 28.450602, 27.145527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018848, 28.452547, 27.030897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193621, -0.726234, -0.659617,
		-0.211329, -0.687430, 0.694823,
		-0.958045, 0.004864, -0.286575,
		43.731434, 28.454006, 26.944925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167763, 27.674728, 27.110071>,  <44.402065, 28.450602, 27.145527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167763, 27.674728, 27.110071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.964199, 27.925741, 26.874372>,  <43.842060, 28.076349, 26.732952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.964199, 27.925741, 26.874372>,  <44.167763, 27.674728, 27.110071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964199, 27.925741, 26.874372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211297, -0.572515, -0.792200,
		-0.834485, -0.527664, 0.158762,
		-0.508909, 0.627533, -0.589249,
		43.811527, 28.114000, 26.697598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084301, 27.225246, 26.537893>,  <44.167763, 27.674728, 27.110071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084301, 27.225246, 26.537893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.939278, 27.568047, 26.391413>,  <43.852264, 27.773727, 26.303524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.939278, 27.568047, 26.391413>,  <44.084301, 27.225246, 26.537893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939278, 27.568047, 26.391413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053228, -0.373253, -0.926201,
		-0.930440, -0.355293, 0.089709,
		-0.362557, 0.857000, -0.366201,
		43.830509, 27.825146, 26.281551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647442, 27.036989, 25.963041>,  <44.084301, 27.225246, 26.537893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647442, 27.036989, 25.963041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.742756, 27.420124, 25.898830>,  <43.799942, 27.650005, 25.860304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.742756, 27.420124, 25.898830>,  <43.647442, 27.036989, 25.963041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742756, 27.420124, 25.898830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118676, -0.192764, -0.974042,
		-0.963918, 0.213045, -0.159605,
		0.238281, 0.957838, -0.160525,
		43.814240, 27.707476, 25.850674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362061, 27.194963, 25.286863>,  <43.647442, 27.036989, 25.963041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362061, 27.194963, 25.286863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.631874, 27.487183, 25.329386>,  <43.793762, 27.662514, 25.354900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.631874, 27.487183, 25.329386>,  <43.362061, 27.194963, 25.286863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631874, 27.487183, 25.329386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208340, -0.050230, -0.976766,
		-0.708233, 0.681013, -0.186084,
		0.674537, 0.730547, 0.106308,
		43.834236, 27.706347, 25.361279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351006, 27.662901, 24.576376>,  <43.362061, 27.194963, 25.286863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351006, 27.662901, 24.576376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.693104, 27.724848, 24.774195>,  <43.898361, 27.762016, 24.892885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.693104, 27.724848, 24.774195>,  <43.351006, 27.662901, 24.576376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693104, 27.724848, 24.774195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516356, -0.173581, -0.838598,
		-0.044029, 0.972566, -0.228422,
		0.855242, 0.154869, 0.494547,
		43.949677, 27.771309, 24.922560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584999, 28.110676, 24.162109>,  <43.351006, 27.662901, 24.576376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584999, 28.110676, 24.162109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.885307, 27.949478, 24.371466>,  <44.065491, 27.852760, 24.497080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.885307, 27.949478, 24.371466>,  <43.584999, 28.110676, 24.162109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885307, 27.949478, 24.371466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509871, -0.150214, -0.847034,
		0.419970, 0.902792, 0.092698,
		0.750771, -0.402993, 0.523393,
		44.110538, 27.828581, 24.528484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163776, 28.525917, 23.948637>,  <43.584999, 28.110676, 24.162109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163776, 28.525917, 23.948637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289867, 28.172573, 24.087378>,  <44.365520, 27.960566, 24.170622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289867, 28.172573, 24.087378>,  <44.163776, 28.525917, 23.948637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289867, 28.172573, 24.087378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534204, -0.136918, -0.834194,
		0.784386, 0.448246, 0.428736,
		0.315223, -0.883362, 0.346851,
		44.384434, 27.907564, 24.191433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779274, 28.400879, 23.611862>,  <44.163776, 28.525917, 23.948637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779274, 28.400879, 23.611862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.700726, 28.029909, 23.739185>,  <44.653595, 27.807327, 23.815578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.700726, 28.029909, 23.739185>,  <44.779274, 28.400879, 23.611862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700726, 28.029909, 23.739185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561377, -0.372498, -0.738987,
		0.803924, 0.033574, 0.593783,
		-0.196372, -0.927426, 0.318308,
		44.641815, 27.751682, 23.834677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420811, 28.100214, 23.704538>,  <44.779274, 28.400879, 23.611862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420811, 28.100214, 23.704538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.146122, 27.812389, 23.663269>,  <44.981308, 27.639694, 23.638508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.146122, 27.812389, 23.663269>,  <45.420811, 28.100214, 23.704538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.146122, 27.812389, 23.663269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448328, -0.307529, -0.839302,
		0.572200, -0.622623, 0.533786,
		-0.686723, -0.719560, -0.103171,
		44.940105, 27.596521, 23.632318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800026, 27.421461, 23.608395>,  <45.420811, 28.100214, 23.704538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800026, 27.421461, 23.608395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.433815, 27.366789, 23.457066>,  <45.214088, 27.333986, 23.366268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.433815, 27.366789, 23.457066>,  <45.800026, 27.421461, 23.608395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433815, 27.366789, 23.457066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400602, -0.395021, -0.826727,
		-0.036449, -0.908448, 0.416407,
		-0.915527, -0.136680, -0.378324,
		45.159157, 27.325785, 23.343569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974064, 26.752340, 23.279737>,  <45.800026, 27.421461, 23.608395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974064, 26.752340, 23.279737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.618191, 26.889280, 23.158894>,  <45.404667, 26.971443, 23.086388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.618191, 26.889280, 23.158894>,  <45.974064, 26.752340, 23.279737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618191, 26.889280, 23.158894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238979, -0.214644, -0.947004,
		-0.389051, -0.914727, 0.109150,
		-0.889678, 0.342349, -0.302108,
		45.351288, 26.991985, 23.068260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598564, 26.189486, 22.950819>,  <45.974064, 26.752340, 23.279737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598564, 26.189486, 22.950819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.461945, 26.534670, 22.801880>,  <45.379971, 26.741781, 22.712517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.461945, 26.534670, 22.801880>,  <45.598564, 26.189486, 22.950819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461945, 26.534670, 22.801880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296840, -0.276847, -0.913915,
		-0.891756, -0.422676, -0.161603,
		-0.341551, 0.862960, -0.372348,
		45.359478, 26.793558, 22.690176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387867, 25.971680, 22.235695>,  <45.598564, 26.189486, 22.950819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387867, 25.971680, 22.235695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.435547, 26.368826, 22.237082>,  <45.464153, 26.607113, 22.237913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.435547, 26.368826, 22.237082>,  <45.387867, 25.971680, 22.235695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435547, 26.368826, 22.237082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275625, -0.029736, -0.960805,
		-0.953847, 0.115479, -0.277203,
		0.119196, 0.992865, 0.003466,
		45.471306, 26.666685, 22.238121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977554, 26.363132, 21.661182>,  <45.387867, 25.971680, 22.235695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977554, 26.363132, 21.661182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.293488, 26.586636, 21.762342>,  <45.483047, 26.720737, 21.823038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.293488, 26.586636, 21.762342>,  <44.977554, 26.363132, 21.661182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293488, 26.586636, 21.762342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202251, 0.151994, -0.967467,
		-0.579020, 0.815283, 0.007039,
		0.789829, 0.558759, 0.252899,
		45.530437, 26.754263, 21.838213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853374, 26.970657, 21.350380>,  <44.977554, 26.363132, 21.661182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853374, 26.970657, 21.350380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.241196, 26.890158, 21.406178>,  <45.473888, 26.841858, 21.439657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.241196, 26.890158, 21.406178>,  <44.853374, 26.970657, 21.350380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241196, 26.890158, 21.406178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158501, 0.081558, -0.983985,
		0.186647, 0.976139, 0.110973,
		0.969557, -0.201247, 0.139496,
		45.532063, 26.829784, 21.448027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133640, 26.826578, 21.379614>,  <44.853374, 26.970657, 21.350380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133640, 26.826578, 21.379614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.835064, 26.592587, 21.252731>,  <43.655918, 26.452192, 21.176601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.835064, 26.592587, 21.252731>,  <44.133640, 26.826578, 21.379614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835064, 26.592587, 21.252731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524522, 0.223875, 0.821436,
		-0.409507, 0.779539, -0.473944,
		-0.746445, -0.584978, -0.317207,
		43.611130, 26.417093, 21.157570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594269, 27.181700, 21.561096>,  <44.133640, 26.826578, 21.379614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594269, 27.181700, 21.561096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.424263, 26.824364, 21.502708>,  <43.322258, 26.609962, 21.467676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.424263, 26.824364, 21.502708>,  <43.594269, 27.181700, 21.561096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424263, 26.824364, 21.502708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628300, 0.175064, 0.758018,
		-0.651613, 0.413884, -0.635690,
		-0.425018, -0.893338, -0.145969,
		43.296757, 26.556362, 21.458918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839741, 27.367653, 21.576269>,  <43.594269, 27.181700, 21.561096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839741, 27.367653, 21.576269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.932362, 26.989298, 21.667206>,  <42.987934, 26.762285, 21.721767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.932362, 26.989298, 21.667206>,  <42.839741, 27.367653, 21.576269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932362, 26.989298, 21.667206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551945, 0.064700, 0.831367,
		-0.801087, -0.317983, -0.507096,
		0.231551, -0.945886, 0.227340,
		43.001827, 26.705532, 21.735407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280468, 27.021345, 21.562647>,  <42.839741, 27.367653, 21.576269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280468, 27.021345, 21.562647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.513496, 26.799986, 21.800758>,  <42.653313, 26.667170, 21.943624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.513496, 26.799986, 21.800758>,  <42.280468, 27.021345, 21.562647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513496, 26.799986, 21.800758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599489, 0.201992, 0.774476,
		-0.548836, -0.808052, -0.214082,
		0.582574, -0.553400, 0.595279,
		42.688267, 26.633966, 21.979342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790417, 26.678240, 21.920668>,  <42.280468, 27.021345, 21.562647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790417, 26.678240, 21.920668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.122833, 26.599033, 22.128572>,  <42.322285, 26.551510, 22.253315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.122833, 26.599033, 22.128572>,  <41.790417, 26.678240, 21.920668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122833, 26.599033, 22.128572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537751, -0.047333, 0.841774,
		-0.142088, -0.979054, -0.145823,
		0.831044, -0.198022, 0.519762,
		42.372147, 26.539629, 22.284502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651787, 26.060862, 22.396950>,  <41.790417, 26.678240, 21.920668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651787, 26.060862, 22.396950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.959000, 26.273045, 22.540478>,  <42.143326, 26.400354, 22.626595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.959000, 26.273045, 22.540478>,  <41.651787, 26.060862, 22.396950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959000, 26.273045, 22.540478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377967, -0.076849, 0.922624,
		0.516986, -0.844222, 0.141472,
		0.768028, 0.530455, 0.358818,
		42.189407, 26.432180, 22.648123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806255, 25.744953, 23.040548>,  <41.651787, 26.060862, 22.396950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806255, 25.744953, 23.040548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.964962, 26.111229, 23.066132>,  <42.060184, 26.330994, 23.081482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.964962, 26.111229, 23.066132>,  <41.806255, 25.744953, 23.040548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964962, 26.111229, 23.066132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071638, -0.038577, 0.996684,
		0.915121, -0.400031, 0.050292,
		0.396764, 0.915689, 0.063960,
		42.083992, 26.385937, 23.085320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309376, 25.650902, 23.578451>,  <41.806255, 25.744953, 23.040548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309376, 25.650902, 23.578451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.242985, 26.042023, 23.527300>,  <42.203152, 26.276695, 23.496609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.242985, 26.042023, 23.527300>,  <42.309376, 25.650902, 23.578451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242985, 26.042023, 23.527300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198957, 0.093805, 0.975509,
		0.965851, 0.187356, 0.178971,
		-0.165979, 0.977803, -0.127877,
		42.193192, 26.335363, 23.488937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636112, 26.021381, 24.223333>,  <42.309376, 25.650902, 23.578451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636112, 26.021381, 24.223333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.388409, 26.292099, 24.064100>,  <42.239788, 26.454529, 23.968561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.388409, 26.292099, 24.064100>,  <42.636112, 26.021381, 24.223333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388409, 26.292099, 24.064100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288150, 0.275731, 0.917029,
		0.730403, 0.682585, 0.024270,
		-0.619258, 0.676794, -0.398082,
		42.202633, 26.495136, 23.944675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903496, 26.583485, 24.417391>,  <42.636112, 26.021381, 24.223333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903496, 26.583485, 24.417391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.521393, 26.683313, 24.353893>,  <42.292130, 26.743210, 24.315794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.521393, 26.683313, 24.353893>,  <42.903496, 26.583485, 24.417391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521393, 26.683313, 24.353893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088482, 0.270999, 0.958504,
		0.282234, 0.929663, -0.236792,
		-0.955257, 0.249570, -0.158744,
		42.234818, 26.758184, 24.306271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837223, 27.162252, 24.691778>,  <42.903496, 26.583485, 24.417391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837223, 27.162252, 24.691778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.458096, 27.037849, 24.663723>,  <42.230621, 26.963207, 24.646891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.458096, 27.037849, 24.663723>,  <42.837223, 27.162252, 24.691778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458096, 27.037849, 24.663723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178905, 0.336749, 0.924442,
		-0.263889, 0.888749, -0.374817,
		-0.947816, -0.311006, -0.070137,
		42.173752, 26.944548, 24.642681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442387, 27.700346, 25.000002>,  <42.837223, 27.162252, 24.691778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442387, 27.700346, 25.000002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.167515, 27.410442, 24.979965>,  <42.002590, 27.236500, 24.967943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.167515, 27.410442, 24.979965>,  <42.442387, 27.700346, 25.000002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167515, 27.410442, 24.979965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439722, 0.360057, 0.822802,
		-0.578296, 0.587441, -0.566116,
		-0.687181, -0.724757, -0.050091,
		41.961361, 27.193016, 24.964937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839321, 28.066813, 25.130285>,  <42.442387, 27.700346, 25.000002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839321, 28.066813, 25.130285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.756550, 27.683603, 25.209650>,  <41.706886, 27.453678, 25.257269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.756550, 27.683603, 25.209650>,  <41.839321, 28.066813, 25.130285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756550, 27.683603, 25.209650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472794, 0.275471, 0.837008,
		-0.856531, 0.079396, -0.509952,
		-0.206932, -0.958025, 0.198412,
		41.694469, 27.396196, 25.269173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077873, 28.001686, 25.238531>,  <41.839321, 28.066813, 25.130285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077873, 28.001686, 25.238531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260574, 27.695532, 25.419889>,  <41.370193, 27.511839, 25.528704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260574, 27.695532, 25.419889>,  <41.077873, 28.001686, 25.238531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260574, 27.695532, 25.419889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587534, 0.123148, 0.799774,
		-0.667969, -0.631681, -0.393441,
		0.456751, -0.765384, 0.453393,
		41.397598, 27.465916, 25.555908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584282, 27.620119, 25.528290>,  <41.077873, 28.001686, 25.238531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584282, 27.620119, 25.528290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.897778, 27.506245, 25.749090>,  <41.085876, 27.437920, 25.881571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.897778, 27.506245, 25.749090>,  <40.584282, 27.620119, 25.528290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897778, 27.506245, 25.749090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554199, 0.080672, 0.828466,
		-0.280385, -0.955220, -0.094548,
		0.783739, -0.284687, 0.552001,
		41.132900, 27.420839, 25.914690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288868, 27.205494, 26.035896>,  <40.584282, 27.620119, 25.528290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288868, 27.205494, 26.035896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.646706, 27.306511, 26.183363>,  <40.861408, 27.367121, 26.271843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.646706, 27.306511, 26.183363>,  <40.288868, 27.205494, 26.035896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646706, 27.306511, 26.183363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405303, 0.111069, 0.907410,
		0.188213, -0.961190, 0.201719,
		0.894598, 0.252544, 0.368668,
		40.915085, 27.382275, 26.293964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321522, 26.821730, 26.627565>,  <40.288868, 27.205494, 26.035896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321522, 26.821730, 26.627565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617702, 27.084307, 26.685276>,  <40.795410, 27.241854, 26.719902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617702, 27.084307, 26.685276>,  <40.321522, 26.821730, 26.627565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617702, 27.084307, 26.685276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160865, -0.035331, 0.986344,
		0.652578, -0.753546, 0.079438,
		0.740449, 0.656444, 0.144276,
		40.839836, 27.281240, 26.728559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714748, 26.540108, 27.174368>,  <40.321522, 26.821730, 26.627565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714748, 26.540108, 27.174368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792271, 26.932371, 27.163401>,  <40.838783, 27.167728, 27.156820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792271, 26.932371, 27.163401>,  <40.714748, 26.540108, 27.174368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792271, 26.932371, 27.163401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147070, 0.056672, 0.987501,
		0.969954, -0.187348, 0.155209,
		0.193802, 0.980657, -0.027416,
		40.850410, 27.226568, 27.155176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028072, 26.630842, 27.747013>,  <40.714748, 26.540108, 27.174368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028072, 26.630842, 27.747013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935566, 27.010225, 27.660347>,  <40.880062, 27.237856, 27.608347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935566, 27.010225, 27.660347>,  <41.028072, 26.630842, 27.747013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935566, 27.010225, 27.660347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204652, 0.170293, 0.963908,
		0.951123, 0.267258, 0.154721,
		-0.231264, 0.948459, -0.216665,
		40.866188, 27.294764, 27.595348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479126, 27.096395, 28.236164>,  <41.028072, 26.630842, 27.747013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479126, 27.096395, 28.236164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162487, 27.303722, 28.106718>,  <40.972504, 27.428118, 28.029051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162487, 27.303722, 28.106718>,  <41.479126, 27.096395, 28.236164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162487, 27.303722, 28.106718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263526, 0.188241, 0.946107,
		0.551300, 0.834215, -0.012421,
		-0.791595, 0.518316, -0.323615,
		40.925007, 27.459217, 28.009634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.574703, 32.723682, 31.189007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201664, 32.588711, 31.137777>,  <41.977840, 32.507729, 31.107040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201664, 32.588711, 31.137777>,  <42.574703, 32.723682, 31.189007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201664, 32.588711, 31.137777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323258, 0.623104, 0.712212,
		-0.160520, 0.705607, -0.690182,
		-0.932597, -0.337432, -0.128072,
		41.921886, 32.487480, 31.099356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147541, 33.322376, 31.021912>,  <42.574703, 32.723682, 31.189007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147541, 33.322376, 31.021912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.894520, 33.043076, 31.155970>,  <41.742706, 32.875496, 31.236404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.894520, 33.043076, 31.155970>,  <42.147541, 33.322376, 31.021912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894520, 33.043076, 31.155970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444676, 0.681703, 0.580985,
		-0.634140, 0.218476, -0.741710,
		-0.632558, -0.698247, 0.335144,
		41.704754, 32.833603, 31.256514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574993, 33.677074, 31.114605>,  <42.147541, 33.322376, 31.021912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574993, 33.677074, 31.114605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501446, 33.344517, 31.324356>,  <41.457317, 33.144981, 31.450207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501446, 33.344517, 31.324356>,  <41.574993, 33.677074, 31.114605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501446, 33.344517, 31.324356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596188, 0.518472, 0.612981,
		-0.781506, -0.199920, -0.591000,
		-0.183870, -0.831396, 0.524379,
		41.446285, 33.095097, 31.481670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843941, 33.660839, 31.048960>,  <41.574993, 33.677074, 31.114605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843941, 33.660839, 31.048960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.991085, 33.457230, 31.360233>,  <41.079372, 33.335064, 31.546997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.991085, 33.457230, 31.360233>,  <40.843941, 33.660839, 31.048960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991085, 33.457230, 31.360233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634450, 0.474421, 0.610243,
		-0.679816, -0.718205, -0.148429,
		0.367862, -0.509024, 0.778185,
		41.101444, 33.304523, 31.593689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185684, 33.271603, 31.384171>,  <40.843941, 33.660839, 31.048960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185684, 33.271603, 31.384171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487370, 33.344021, 31.636642>,  <40.668381, 33.387470, 31.788126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487370, 33.344021, 31.636642>,  <40.185684, 33.271603, 31.384171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487370, 33.344021, 31.636642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653412, 0.301988, 0.694159,
		-0.064936, -0.935963, 0.346059,
		0.754212, 0.181043, 0.631179,
		40.713634, 33.398335, 31.825996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975151, 33.103783, 32.132763>,  <40.185684, 33.271603, 31.384171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975151, 33.103783, 32.132763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.314041, 33.298359, 32.218166>,  <40.517376, 33.415104, 32.269409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.314041, 33.298359, 32.218166>,  <39.975151, 33.103783, 32.132763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314041, 33.298359, 32.218166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416970, 0.359890, 0.834635,
		0.329152, -0.796155, 0.507736,
		0.847228, 0.486433, 0.213514,
		40.568207, 33.444290, 32.282219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108841, 32.957027, 32.837688>,  <39.975151, 33.103783, 32.132763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108841, 32.957027, 32.837688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.330528, 33.280968, 32.760754>,  <40.463539, 33.475330, 32.714592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.330528, 33.280968, 32.760754>,  <40.108841, 32.957027, 32.837688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330528, 33.280968, 32.760754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281294, 0.399697, 0.872420,
		0.783402, -0.429407, 0.449324,
		0.554216, 0.809847, -0.192333,
		40.496792, 33.523922, 32.703053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433487, 33.021591, 33.416573>,  <40.108841, 32.957027, 32.837688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433487, 33.021591, 33.416573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.444801, 33.372551, 33.225006>,  <40.451588, 33.583126, 33.110065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.444801, 33.372551, 33.225006>,  <40.433487, 33.021591, 33.416573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444801, 33.372551, 33.225006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387373, 0.451293, 0.803914,
		0.921489, 0.162782, 0.352647,
		0.028284, 0.877404, -0.478919,
		40.453285, 33.635773, 33.081329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715981, 33.465225, 33.867283>,  <40.433487, 33.021591, 33.416573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715981, 33.465225, 33.867283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.540226, 33.707634, 33.602051>,  <40.434772, 33.853077, 33.442909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.540226, 33.707634, 33.602051>,  <40.715981, 33.465225, 33.867283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540226, 33.707634, 33.602051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358738, 0.558362, 0.748023,
		0.823558, 0.566544, -0.027933,
		-0.439384, 0.606020, -0.663085,
		40.408409, 33.889439, 33.403126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835308, 34.125385, 34.108257>,  <40.715981, 33.465225, 33.867283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835308, 34.125385, 34.108257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.511925, 34.157784, 33.875076>,  <40.317894, 34.177223, 33.735168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.511925, 34.157784, 33.875076>,  <40.835308, 34.125385, 34.108257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511925, 34.157784, 33.875076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424070, 0.606657, 0.672408,
		0.408112, 0.790827, -0.456111,
		-0.808461, 0.080994, -0.582950,
		40.269386, 34.182083, 33.700191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755222, 34.808468, 34.073814>,  <40.835308, 34.125385, 34.108257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755222, 34.808468, 34.073814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.407207, 34.631729, 33.986355>,  <40.198399, 34.525688, 33.933880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.407207, 34.631729, 33.986355>,  <40.755222, 34.808468, 34.073814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407207, 34.631729, 33.986355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424938, 0.447308, 0.786984,
		-0.249920, 0.777618, -0.576931,
		-0.870039, -0.441843, -0.218648,
		40.146194, 34.499176, 33.920761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242218, 35.353783, 34.119671>,  <40.755222, 34.808468, 34.073814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242218, 35.353783, 34.119671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017097, 35.024830, 34.153000>,  <39.882023, 34.827457, 34.172997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017097, 35.024830, 34.153000>,  <40.242218, 35.353783, 34.119671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017097, 35.024830, 34.153000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529667, 0.436188, 0.727456,
		-0.634590, 0.365281, -0.681076,
		-0.562804, -0.822380, 0.083323,
		39.848255, 34.778114, 34.177998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632751, 35.663757, 34.322369>,  <40.242218, 35.353783, 34.119671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632751, 35.663757, 34.322369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650040, 35.279442, 34.431919>,  <39.660412, 35.048851, 34.497650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650040, 35.279442, 34.431919>,  <39.632751, 35.663757, 34.322369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650040, 35.279442, 34.431919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654302, 0.179941, 0.734514,
		-0.754997, -0.210949, -0.620870,
		0.043225, -0.960792, 0.273879,
		39.663006, 34.991203, 34.514084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936119, 35.310493, 34.373516>,  <39.632751, 35.663757, 34.322369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936119, 35.310493, 34.373516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220196, 35.157913, 34.610203>,  <39.390640, 35.066364, 34.752216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220196, 35.157913, 34.610203>,  <38.936119, 35.310493, 34.373516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220196, 35.157913, 34.610203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587890, 0.141084, 0.796543,
		-0.387325, -0.913559, -0.124056,
		0.710187, -0.381452, 0.591717,
		39.433250, 35.043476, 34.787720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699997, 36.036308, 34.398174>,  <38.936119, 35.310493, 34.373516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699997, 36.036308, 34.398174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.544529, 36.383003, 34.273144>,  <38.451248, 36.591019, 34.198124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.544529, 36.383003, 34.273144>,  <38.699997, 36.036308, 34.398174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544529, 36.383003, 34.273144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271792, -0.432007, -0.859941,
		-0.880378, -0.249276, 0.403479,
		-0.388668, 0.866736, -0.312579,
		38.427929, 36.643024, 34.179371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966274, 35.873981, 34.042862>,  <38.699997, 36.036308, 34.398174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966274, 35.873981, 34.042862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151279, 36.208721, 33.925724>,  <38.262283, 36.409565, 33.855442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151279, 36.208721, 33.925724>,  <37.966274, 35.873981, 34.042862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151279, 36.208721, 33.925724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015750, -0.322492, -0.946441,
		-0.886473, 0.442354, -0.135976,
		0.462513, 0.836852, -0.292848,
		38.290031, 36.459778, 33.837872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602165, 36.098736, 33.513264>,  <37.966274, 35.873981, 34.042862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602165, 36.098736, 33.513264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950748, 36.290077, 33.469936>,  <38.159901, 36.404884, 33.443939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950748, 36.290077, 33.469936>,  <37.602165, 36.098736, 33.513264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950748, 36.290077, 33.469936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009192, -0.236743, -0.971529,
		-0.490381, 0.845653, -0.210709,
		0.871460, 0.478356, -0.108321,
		38.212185, 36.433582, 33.437439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460285, 36.480976, 32.854774>,  <37.602165, 36.098736, 33.513264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460285, 36.480976, 32.854774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.858738, 36.468578, 32.887684>,  <38.097809, 36.461140, 32.907429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.858738, 36.468578, 32.887684>,  <37.460285, 36.480976, 32.854774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858738, 36.468578, 32.887684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082301, -0.000492, -0.996607,
		0.030929, 0.999519, 0.002061,
		0.996127, -0.030993, 0.082276,
		38.157578, 36.459282, 32.912365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696182, 37.004387, 32.489986>,  <37.460285, 36.480976, 32.854774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696182, 37.004387, 32.489986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997044, 36.742790, 32.522369>,  <38.177559, 36.585831, 32.541798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997044, 36.742790, 32.522369>,  <37.696182, 37.004387, 32.489986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997044, 36.742790, 32.522369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068081, -0.045071, -0.996661,
		0.655461, 0.755154, 0.010624,
		0.752154, -0.653996, 0.080954,
		38.222691, 36.546593, 32.546654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136997, 37.115555, 31.999599>,  <37.696182, 37.004387, 32.489986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136997, 37.115555, 31.999599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.245529, 36.743225, 32.097530>,  <38.310646, 36.519825, 32.156288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.245529, 36.743225, 32.097530>,  <38.136997, 37.115555, 31.999599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245529, 36.743225, 32.097530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066407, -0.235656, -0.969565,
		0.960194, 0.279326, -0.002126,
		0.271326, -0.930829, 0.244825,
		38.326927, 36.463978, 32.170979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709515, 36.929024, 31.511263>,  <38.136997, 37.115555, 31.999599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709515, 36.929024, 31.511263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640408, 36.558750, 31.645878>,  <38.598946, 36.336586, 31.726646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640408, 36.558750, 31.645878>,  <38.709515, 36.929024, 31.511263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640408, 36.558750, 31.645878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175662, -0.365155, -0.914224,
		0.969172, -0.098829, 0.225694,
		-0.172765, -0.925686, 0.336537,
		38.588577, 36.281044, 31.746840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221481, 36.552708, 31.172209>,  <38.709515, 36.929024, 31.511263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221481, 36.552708, 31.172209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970676, 36.265701, 31.293554>,  <38.820194, 36.093498, 31.366362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970676, 36.265701, 31.293554>,  <39.221481, 36.552708, 31.172209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970676, 36.265701, 31.293554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168535, -0.505140, -0.846422,
		0.760560, -0.479590, 0.437655,
		-0.627012, -0.717515, 0.303362,
		38.782574, 36.050446, 31.384563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607372, 35.972317, 31.180574>,  <39.221481, 36.552708, 31.172209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607372, 35.972317, 31.180574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233452, 35.834526, 31.145979>,  <39.009098, 35.751854, 31.125221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233452, 35.834526, 31.145979>,  <39.607372, 35.972317, 31.180574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233452, 35.834526, 31.145979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282719, -0.574329, -0.768255,
		0.214971, -0.742619, 0.634274,
		-0.934803, -0.344474, -0.086489,
		38.953011, 35.731182, 31.120031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604755, 35.207504, 31.177658>,  <39.607372, 35.972317, 31.180574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604755, 35.207504, 31.177658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259605, 35.309074, 31.002857>,  <39.052517, 35.370018, 30.897976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259605, 35.309074, 31.002857>,  <39.604755, 35.207504, 31.177658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259605, 35.309074, 31.002857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166582, -0.673435, -0.720233,
		-0.477180, -0.694266, 0.538789,
		-0.862873, 0.253929, -0.437002,
		39.000744, 35.385254, 30.871756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276871, 34.595253, 31.014841>,  <39.604755, 35.207504, 31.177658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276871, 34.595253, 31.014841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146244, 34.889496, 30.777441>,  <39.067867, 35.066040, 30.635000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146244, 34.889496, 30.777441>,  <39.276871, 34.595253, 31.014841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146244, 34.889496, 30.777441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137137, -0.584405, -0.799790,
		-0.935174, -0.342573, 0.089966,
		-0.326563, 0.735605, -0.593500,
		39.048275, 35.110176, 30.599392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784523, 34.343639, 30.656788>,  <39.276871, 34.595253, 31.014841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784523, 34.343639, 30.656788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908703, 34.649704, 30.431168>,  <38.983212, 34.833344, 30.295795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908703, 34.649704, 30.431168>,  <38.784523, 34.343639, 30.656788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908703, 34.649704, 30.431168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242755, -0.637508, -0.731200,
		-0.919072, 0.090072, -0.383657,
		0.310445, 0.765161, -0.564051,
		39.001835, 34.879253, 30.261951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552185, 34.159046, 29.959988>,  <38.784523, 34.343639, 30.656788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552185, 34.159046, 29.959988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824997, 34.444050, 29.894053>,  <38.988686, 34.615051, 29.854490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824997, 34.444050, 29.894053>,  <38.552185, 34.159046, 29.959988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824997, 34.444050, 29.894053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379946, -0.537807, -0.752598,
		-0.624883, 0.450663, -0.637514,
		0.682028, 0.712506, -0.164839,
		39.029606, 34.657803, 29.844601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497223, 34.412025, 29.267393>,  <38.552185, 34.159046, 29.959988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497223, 34.412025, 29.267393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.867496, 34.499153, 29.391109>,  <39.089661, 34.551430, 29.465340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.867496, 34.499153, 29.391109>,  <38.497223, 34.412025, 29.267393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867496, 34.499153, 29.391109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377097, -0.466337, -0.800204,
		-0.030063, 0.857371, -0.513820,
		0.925686, 0.217817, 0.309293,
		39.145203, 34.564499, 29.483898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055363, 34.448769, 28.684925>,  <38.497223, 34.412025, 29.267393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055363, 34.448769, 28.684925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.776974, 34.198425, 28.544115>,  <37.609940, 34.048218, 28.459629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.776974, 34.198425, 28.544115>,  <38.055363, 34.448769, 28.684925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776974, 34.198425, 28.544115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423550, -0.038073, 0.905073,
		-0.579849, 0.779007, -0.238584,
		-0.695975, -0.625858, -0.352025,
		37.568180, 34.010670, 28.438507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403515, 34.713070, 28.776110>,  <38.055363, 34.448769, 28.684925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403515, 34.713070, 28.776110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352924, 34.316307, 28.771585>,  <37.322571, 34.078251, 28.768871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352924, 34.316307, 28.771585>,  <37.403515, 34.713070, 28.776110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352924, 34.316307, 28.771585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565598, 0.062744, 0.822291,
		-0.814925, 0.110398, -0.568955,
		-0.126478, -0.991905, -0.011309,
		37.314980, 34.018734, 28.768192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743671, 34.591408, 29.077478>,  <37.403515, 34.713070, 28.776110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743671, 34.591408, 29.077478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.865574, 34.211594, 29.107147>,  <36.938717, 33.983704, 29.124949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.865574, 34.211594, 29.107147>,  <36.743671, 34.591408, 29.077478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865574, 34.211594, 29.107147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389949, -0.053346, 0.919290,
		-0.868943, -0.309086, -0.386529,
		0.304759, -0.949537, 0.074173,
		36.957001, 33.926731, 29.129398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199734, 34.264561, 29.262365>,  <36.743671, 34.591408, 29.077478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199734, 34.264561, 29.262365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477161, 33.998959, 29.374119>,  <36.643620, 33.839596, 29.441170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477161, 33.998959, 29.374119>,  <36.199734, 34.264561, 29.262365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477161, 33.998959, 29.374119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514199, -0.184696, 0.837548,
		-0.504534, -0.724559, -0.469531,
		0.693574, -0.664004, 0.279382,
		36.685234, 33.799759, 29.457933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828678, 33.715179, 29.484531>,  <36.199734, 34.264561, 29.262365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828678, 33.715179, 29.484531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198380, 33.669182, 29.630150>,  <36.420200, 33.641582, 29.717522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198380, 33.669182, 29.630150>,  <35.828678, 33.715179, 29.484531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198380, 33.669182, 29.630150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373177, -0.070893, 0.925048,
		-0.080557, -0.990834, -0.108433,
		0.924256, -0.114984, 0.364046,
		36.475655, 33.634682, 29.739363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783997, 33.194088, 29.991549>,  <35.828678, 33.715179, 29.484531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783997, 33.194088, 29.991549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.127625, 33.371929, 30.092997>,  <36.333801, 33.478634, 30.153866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.127625, 33.371929, 30.092997>,  <35.783997, 33.194088, 29.991549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127625, 33.371929, 30.092997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273088, -0.020961, 0.961761,
		0.432922, -0.895480, 0.103410,
		0.859071, 0.444607, 0.253619,
		36.385345, 33.505310, 30.169083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146595, 32.739792, 30.440437>,  <35.783997, 33.194088, 29.991549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146595, 32.739792, 30.440437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.297565, 33.105717, 30.497938>,  <36.388145, 33.325272, 30.532438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.297565, 33.105717, 30.497938>,  <36.146595, 32.739792, 30.440437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297565, 33.105717, 30.497938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140122, -0.097029, 0.985368,
		0.915378, -0.392045, 0.091565,
		0.377424, 0.914815, 0.143752,
		36.410793, 33.380161, 30.541063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703926, 32.614456, 30.950684>,  <36.146595, 32.739792, 30.440437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703926, 32.614456, 30.950684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621128, 33.004986, 30.975807>,  <36.571449, 33.239304, 30.990881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621128, 33.004986, 30.975807>,  <36.703926, 32.614456, 30.950684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621128, 33.004986, 30.975807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060277, -0.051353, 0.996860,
		0.976484, 0.210130, -0.048220,
		-0.206994, 0.976324, 0.062811,
		36.559029, 33.297882, 30.994650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096062, 32.832432, 31.501936>,  <36.703926, 32.614456, 30.950684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096062, 32.832432, 31.501936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814144, 33.111984, 31.453228>,  <36.644993, 33.279716, 31.424004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814144, 33.111984, 31.453228>,  <37.096062, 32.832432, 31.501936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814144, 33.111984, 31.453228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182387, -0.012635, 0.983145,
		0.685563, 0.715127, 0.136372,
		-0.704797, 0.698881, -0.121768,
		36.602707, 33.321648, 31.416698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295349, 33.412907, 31.923000>,  <37.096062, 32.832432, 31.501936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295349, 33.412907, 31.923000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897087, 33.428509, 31.889179>,  <36.658131, 33.437870, 31.868887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897087, 33.428509, 31.889179>,  <37.295349, 33.412907, 31.923000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897087, 33.428509, 31.889179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079392, 0.118878, 0.989730,
		0.048659, 0.992142, -0.115265,
		-0.995655, 0.039008, -0.084553,
		36.598389, 33.440212, 31.863813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029285, 33.892067, 32.329498>,  <37.295349, 33.412907, 31.923000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029285, 33.892067, 32.329498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.708565, 33.658356, 32.279327>,  <36.516132, 33.518127, 32.249226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.708565, 33.658356, 32.279327>,  <37.029285, 33.892067, 32.329498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708565, 33.658356, 32.279327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164341, 0.013792, 0.986307,
		-0.574549, 0.811436, -0.107079,
		-0.801802, -0.584279, -0.125428,
		36.468025, 33.483070, 32.241699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641506, 34.285942, 32.689972>,  <37.029285, 33.892067, 32.329498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641506, 34.285942, 32.689972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.468399, 33.926670, 32.659023>,  <36.364536, 33.711109, 32.640453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.468399, 33.926670, 32.659023>,  <36.641506, 34.285942, 32.689972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468399, 33.926670, 32.659023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347405, 0.086956, 0.933675,
		-0.831878, 0.430946, -0.349663,
		-0.432769, -0.898178, -0.077376,
		36.338570, 33.657215, 32.635811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.295368, 34.093975, 25.018173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203548, 33.710682, 25.086399>,  <39.148457, 33.480705, 25.127335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203548, 33.710682, 25.086399>,  <39.295368, 34.093975, 25.018173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203548, 33.710682, 25.086399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463642, 0.261739, 0.846480,
		-0.855770, 0.115230, -0.504361,
		-0.229551, -0.958235, 0.170563,
		39.134682, 33.423210, 25.137568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616730, 34.123970, 24.996759>,  <39.295368, 34.093975, 25.018173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616730, 34.123970, 24.996759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709076, 33.794521, 25.203970>,  <38.764484, 33.596851, 25.328297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709076, 33.794521, 25.203970>,  <38.616730, 34.123970, 24.996759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709076, 33.794521, 25.203970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500605, 0.355988, 0.789093,
		-0.834324, -0.441501, -0.330123,
		0.230866, -0.823620, 0.518027,
		38.778336, 33.547436, 25.359379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089676, 34.018742, 25.451200>,  <38.616730, 34.123970, 24.996759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089676, 34.018742, 25.451200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347256, 33.759975, 25.614578>,  <38.501804, 33.604713, 25.712605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347256, 33.759975, 25.614578>,  <38.089676, 34.018742, 25.451200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347256, 33.759975, 25.614578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417612, 0.150101, 0.896142,
		-0.641037, -0.747642, -0.173503,
		0.643950, -0.646917, 0.408444,
		38.540440, 33.565899, 25.737112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681076, 33.509972, 25.843178>,  <38.089676, 34.018742, 25.451200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681076, 33.509972, 25.843178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049435, 33.544964, 25.995121>,  <38.270451, 33.565960, 26.086287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049435, 33.544964, 25.995121>,  <37.681076, 33.509972, 25.843178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049435, 33.544964, 25.995121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386250, 0.073549, 0.919457,
		0.052482, -0.993449, 0.101515,
		0.920900, 0.087465, 0.379859,
		38.325703, 33.571209, 26.109079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791904, 32.895176, 26.224865>,  <37.681076, 33.509972, 25.843178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791904, 32.895176, 26.224865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056519, 33.156429, 26.372265>,  <38.215286, 33.313179, 26.460705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056519, 33.156429, 26.372265>,  <37.791904, 32.895176, 26.224865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056519, 33.156429, 26.372265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479271, -0.009712, 0.877613,
		0.576775, -0.757184, 0.306601,
		0.661537, 0.653130, 0.368497,
		38.254978, 33.352367, 26.482815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952019, 32.651009, 26.896534>,  <37.791904, 32.895176, 26.224865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952019, 32.651009, 26.896534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048500, 33.039165, 26.901592>,  <38.106388, 33.272060, 26.904627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048500, 33.039165, 26.901592>,  <37.952019, 32.651009, 26.896534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048500, 33.039165, 26.901592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301017, 0.062420, 0.951574,
		0.922610, -0.233329, 0.307161,
		0.241202, 0.970393, 0.012647,
		38.120861, 33.330284, 26.905386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297012, 32.768715, 27.583332>,  <37.952019, 32.651009, 26.896534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297012, 32.768715, 27.583332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217030, 33.144867, 27.473282>,  <38.169041, 33.370560, 27.407251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217030, 33.144867, 27.473282>,  <38.297012, 32.768715, 27.583332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217030, 33.144867, 27.473282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163313, 0.244882, 0.955700,
		0.966098, 0.236034, 0.104609,
		-0.199961, 0.940383, -0.275128,
		38.157040, 33.426983, 27.390743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616745, 33.296406, 28.073357>,  <38.297012, 32.768715, 27.583332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616745, 33.296406, 28.073357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302471, 33.459282, 27.887066>,  <38.113907, 33.557007, 27.775291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302471, 33.459282, 27.887066>,  <38.616745, 33.296406, 28.073357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302471, 33.459282, 27.887066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371185, 0.291976, 0.881460,
		0.494901, 0.865418, -0.078258,
		-0.785681, 0.407187, -0.465729,
		38.066769, 33.581440, 27.747347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508327, 33.891720, 28.480005>,  <38.616745, 33.296406, 28.073357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508327, 33.891720, 28.480005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157166, 33.835377, 28.296949>,  <37.946468, 33.801571, 28.187115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157166, 33.835377, 28.296949>,  <38.508327, 33.891720, 28.480005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157166, 33.835377, 28.296949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474497, 0.127684, 0.870947,
		-0.064243, 0.981762, -0.178930,
		-0.877909, -0.140854, -0.457641,
		37.893791, 33.793121, 28.159657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863773, 34.566010, 28.644148>,  <38.508327, 33.891720, 28.480005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863773, 34.566010, 28.644148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170681, 34.506725, 28.893734>,  <39.354824, 34.471157, 29.043486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170681, 34.506725, 28.893734>,  <38.863773, 34.566010, 28.644148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170681, 34.506725, 28.893734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512363, -0.443509, -0.735380,
		0.385722, 0.883931, -0.264355,
		0.767270, -0.148206, 0.623965,
		39.400864, 34.462265, 29.080923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495029, 34.760258, 28.286383>,  <38.863773, 34.566010, 28.644148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495029, 34.760258, 28.286383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638153, 34.533585, 28.583256>,  <39.724030, 34.397579, 28.761379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638153, 34.533585, 28.583256>,  <39.495029, 34.760258, 28.286383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638153, 34.533585, 28.583256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465071, -0.581068, -0.667883,
		0.809740, 0.584146, 0.055635,
		0.357813, -0.566686, 0.742183,
		39.745499, 34.363579, 28.805910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194202, 34.719769, 28.167248>,  <39.495029, 34.760258, 28.286383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194202, 34.719769, 28.167248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110668, 34.394463, 28.384499>,  <40.060547, 34.199280, 28.514849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110668, 34.394463, 28.384499>,  <40.194202, 34.719769, 28.167248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110668, 34.394463, 28.384499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591478, -0.547316, -0.592114,
		0.778809, 0.197596, 0.595325,
		-0.208832, -0.813266, 0.543128,
		40.048019, 34.150482, 28.547438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789619, 34.335629, 28.186995>,  <40.194202, 34.719769, 28.167248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789619, 34.335629, 28.186995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521191, 34.057053, 28.288689>,  <40.360134, 33.889908, 28.349705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521191, 34.057053, 28.288689>,  <40.789619, 34.335629, 28.186995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521191, 34.057053, 28.288689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554021, -0.698940, -0.452265,
		0.492670, -0.162651, 0.854881,
		-0.671072, -0.696440, 0.254234,
		40.319870, 33.848122, 28.364960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159355, 33.843655, 28.598299>,  <40.789619, 34.335629, 28.186995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159355, 33.843655, 28.598299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829704, 33.689030, 28.432707>,  <40.631912, 33.596252, 28.333351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829704, 33.689030, 28.432707>,  <41.159355, 33.843655, 28.598299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829704, 33.689030, 28.432707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535204, -0.770709, -0.345780,
		-0.185393, -0.506531, 0.842054,
		-0.824128, -0.386566, -0.413982,
		40.582466, 33.573059, 28.308512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109703, 33.195480, 28.807068>,  <41.159355, 33.843655, 28.598299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109703, 33.195480, 28.807068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878357, 33.175468, 28.481371>,  <40.739548, 33.163464, 28.285954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878357, 33.175468, 28.481371>,  <41.109703, 33.195480, 28.807068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878357, 33.175468, 28.481371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636988, -0.651255, -0.412448,
		-0.509645, -0.757208, 0.408531,
		-0.578367, -0.050027, -0.814241,
		40.704845, 33.160461, 28.237099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197479, 32.597042, 28.469294>,  <41.109703, 33.195480, 28.807068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197479, 32.597042, 28.469294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009430, 32.765320, 28.158939>,  <40.896599, 32.866287, 27.972727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009430, 32.765320, 28.158939>,  <41.197479, 32.597042, 28.469294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009430, 32.765320, 28.158939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586231, -0.508321, -0.630828,
		-0.659787, -0.751413, -0.007654,
		-0.470122, 0.420699, -0.775885,
		40.868393, 32.891529, 27.926174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796619, 32.077564, 28.014368>,  <41.197479, 32.597042, 28.469294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796619, 32.077564, 28.014368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943710, 32.391407, 27.814699>,  <41.031967, 32.579712, 27.694899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943710, 32.391407, 27.814699>,  <40.796619, 32.077564, 28.014368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943710, 32.391407, 27.814699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619619, -0.606997, -0.497622,
		-0.693432, -0.126306, -0.709366,
		0.367730, 0.784603, -0.499172,
		41.054028, 32.626789, 27.664948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016743, 31.785618, 27.408905>,  <40.796619, 32.077564, 28.014368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016743, 31.785618, 27.408905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168098, 32.152596, 27.359722>,  <41.258911, 32.372780, 27.330212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168098, 32.152596, 27.359722>,  <41.016743, 31.785618, 27.408905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168098, 32.152596, 27.359722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705364, -0.371806, -0.603508,
		-0.599401, 0.141633, -0.787819,
		0.378393, 0.917442, -0.122958,
		41.281616, 32.427830, 27.322834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052540, 31.855104, 26.753836>,  <41.016743, 31.785618, 27.408905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052540, 31.855104, 26.753836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329395, 32.099083, 26.908195>,  <41.495506, 32.245468, 27.000811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329395, 32.099083, 26.908195>,  <41.052540, 31.855104, 26.753836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329395, 32.099083, 26.908195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666390, -0.334637, -0.666291,
		-0.277264, 0.718322, -0.638074,
		0.692134, 0.609944, 0.385899,
		41.537037, 32.282066, 27.023966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367481, 32.238461, 26.216993>,  <41.052540, 31.855104, 26.753836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367481, 32.238461, 26.216993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633923, 32.239082, 26.515337>,  <41.793785, 32.239456, 26.694344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633923, 32.239082, 26.515337>,  <41.367481, 32.238461, 26.216993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633923, 32.239082, 26.515337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708179, -0.315148, -0.631795,
		0.234076, 0.949041, -0.211018,
		0.666102, 0.001550, 0.745859,
		41.833752, 32.239548, 26.739096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868206, 32.626877, 25.982500>,  <41.367481, 32.238461, 26.216993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868206, 32.626877, 25.982500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072002, 32.468380, 26.288025>,  <42.194283, 32.373280, 26.471340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072002, 32.468380, 26.288025>,  <41.868206, 32.626877, 25.982500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072002, 32.468380, 26.288025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665216, -0.381672, -0.641727,
		0.545806, 0.835055, 0.069129,
		0.509493, -0.396245, 0.763811,
		42.224850, 32.349506, 26.517168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465290, 32.864845, 25.882713>,  <41.868206, 32.626877, 25.982500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465290, 32.864845, 25.882713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506001, 32.521477, 26.083809>,  <42.530426, 32.315456, 26.204466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506001, 32.521477, 26.083809>,  <42.465290, 32.864845, 25.882713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506001, 32.521477, 26.083809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580867, -0.358986, -0.730563,
		0.807611, 0.366379, 0.462094,
		0.101778, -0.858426, 0.502739,
		42.536533, 32.263950, 26.234631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152031, 32.704929, 25.702379>,  <42.465290, 32.864845, 25.882713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152031, 32.704929, 25.702379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032707, 32.356564, 25.858599>,  <42.961113, 32.147545, 25.952332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032707, 32.356564, 25.858599>,  <43.152031, 32.704929, 25.702379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032707, 32.356564, 25.858599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693077, -0.478979, -0.538723,
		0.656245, 0.109976, 0.746490,
		-0.298307, -0.870910, 0.390550,
		42.943214, 32.095291, 25.975763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.687557, 27.905661, 25.976036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836086, 28.244617, 25.824221>,  <38.925201, 28.447992, 25.733131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836086, 28.244617, 25.824221>,  <38.687557, 27.905661, 25.976036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836086, 28.244617, 25.824221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026419, 0.398954, 0.916590,
		0.928129, -0.350375, 0.125752,
		0.371319, 0.847392, -0.379538,
		38.947483, 28.498835, 25.710360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125530, 28.042913, 26.490746>,  <38.687557, 27.905661, 25.976036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125530, 28.042913, 26.490746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062332, 28.380482, 26.285677>,  <39.024414, 28.583023, 26.162636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062332, 28.380482, 26.285677>,  <39.125530, 28.042913, 26.490746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062332, 28.380482, 26.285677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012998, 0.517372, 0.855662,
		0.987354, 0.141855, -0.070773,
		-0.157996, 0.843921, -0.512674,
		39.014935, 28.633657, 26.131874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643597, 28.496260, 26.698221>,  <39.125530, 28.042913, 26.490746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643597, 28.496260, 26.698221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.317181, 28.694994, 26.580084>,  <39.121330, 28.814234, 26.509201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.317181, 28.694994, 26.580084>,  <39.643597, 28.496260, 26.698221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317181, 28.694994, 26.580084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023358, 0.482222, 0.875738,
		0.577518, 0.721539, -0.381909,
		-0.816044, 0.496833, -0.295346,
		39.072369, 28.844044, 26.491480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617825, 29.092619, 27.126131>,  <39.643597, 28.496260, 26.698221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617825, 29.092619, 27.126131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263119, 29.136856, 26.946613>,  <39.050297, 29.163399, 26.838902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263119, 29.136856, 26.946613>,  <39.617825, 29.092619, 27.126131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263119, 29.136856, 26.946613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308585, 0.581237, 0.752953,
		0.344128, 0.806184, -0.481293,
		-0.886764, 0.110592, -0.448797,
		38.997089, 29.170034, 26.811974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476410, 29.743496, 27.276773>,  <39.617825, 29.092619, 27.126131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476410, 29.743496, 27.276773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124466, 29.583715, 27.173790>,  <38.913300, 29.487846, 27.112000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124466, 29.583715, 27.173790>,  <39.476410, 29.743496, 27.276773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124466, 29.583715, 27.173790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432116, 0.446979, 0.783253,
		-0.197793, 0.800405, -0.565888,
		-0.879860, -0.399451, -0.257458,
		38.860508, 29.463881, 27.096552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964573, 30.279036, 27.271368>,  <39.476410, 29.743496, 27.276773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964573, 30.279036, 27.271368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.767239, 29.932253, 27.299646>,  <38.648838, 29.724182, 27.316614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.767239, 29.932253, 27.299646>,  <38.964573, 30.279036, 27.271368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767239, 29.932253, 27.299646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541974, 0.369941, 0.754591,
		-0.680353, 0.333955, -0.652376,
		-0.493340, -0.866959, 0.070696,
		38.619236, 29.672165, 27.320854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180561, 30.461277, 27.415968>,  <38.964573, 30.279036, 27.271368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180561, 30.461277, 27.415968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234020, 30.079380, 27.522251>,  <38.266098, 29.850241, 27.586021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234020, 30.079380, 27.522251>,  <38.180561, 30.461277, 27.415968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234020, 30.079380, 27.522251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688028, 0.103577, 0.718254,
		-0.713270, -0.278810, -0.643048,
		0.133651, -0.954744, 0.265707,
		38.274117, 29.792957, 27.601963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451851, 30.108864, 27.516054>,  <38.180561, 30.461277, 27.415968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451851, 30.108864, 27.516054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723888, 29.890097, 27.711342>,  <37.887108, 29.758837, 27.828514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723888, 29.890097, 27.711342>,  <37.451851, 30.108864, 27.516054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723888, 29.890097, 27.711342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580332, 0.005323, 0.814363,
		-0.447990, -0.837169, -0.313774,
		0.680089, -0.546919, 0.488220,
		37.927914, 29.726021, 27.857807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056091, 29.611351, 27.860662>,  <37.451851, 30.108864, 27.516054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056091, 29.611351, 27.860662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413589, 29.581886, 28.037655>,  <37.628090, 29.564207, 28.143850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413589, 29.581886, 28.037655>,  <37.056091, 29.611351, 27.860662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413589, 29.581886, 28.037655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448485, -0.165876, 0.878264,
		0.008704, -0.983392, -0.181286,
		0.893748, -0.073659, 0.442480,
		37.681713, 29.559788, 28.170399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999371, 28.998600, 28.367046>,  <37.056091, 29.611351, 27.860662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999371, 28.998600, 28.367046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297459, 29.240112, 28.480255>,  <37.476311, 29.385019, 28.548182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297459, 29.240112, 28.480255>,  <36.999371, 28.998600, 28.367046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297459, 29.240112, 28.480255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358034, 0.004230, 0.933699,
		0.562553, -0.797139, 0.219327,
		0.745215, 0.603781, 0.283023,
		37.521023, 29.421247, 28.565163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437664, 28.703674, 28.899733>,  <36.999371, 28.998600, 28.367046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437664, 28.703674, 28.899733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.485138, 29.098175, 28.945724>,  <37.513622, 29.334875, 28.973320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.485138, 29.098175, 28.945724>,  <37.437664, 28.703674, 28.899733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485138, 29.098175, 28.945724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211949, -0.087966, 0.973314,
		0.970047, -0.139889, 0.198595,
		0.118686, 0.986252, 0.114981,
		37.520744, 29.394051, 28.980219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510986, 28.635702, 29.528917>,  <37.437664, 28.703674, 28.899733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510986, 28.635702, 29.528917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443596, 29.028566, 29.495518>,  <37.403160, 29.264286, 29.475479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443596, 29.028566, 29.495518>,  <37.510986, 28.635702, 29.528917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443596, 29.028566, 29.495518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398461, 0.009618, 0.917135,
		0.901578, 0.187788, 0.389733,
		-0.168478, 0.982163, -0.083498,
		37.393051, 29.323215, 29.470469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883598, 28.917818, 30.080736>,  <37.510986, 28.635702, 29.528917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883598, 28.917818, 30.080736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623943, 29.197865, 29.961763>,  <37.468151, 29.365892, 29.890381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623943, 29.197865, 29.961763>,  <37.883598, 28.917818, 30.080736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623943, 29.197865, 29.961763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328286, 0.094876, 0.939802,
		0.686187, 0.707700, 0.168250,
		-0.649134, 0.700114, -0.297430,
		37.429203, 29.407898, 29.872534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026150, 29.465548, 30.414606>,  <37.883598, 28.917818, 30.080736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026150, 29.465548, 30.414606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644962, 29.523340, 30.308035>,  <37.416252, 29.558016, 30.244091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644962, 29.523340, 30.308035>,  <38.026150, 29.465548, 30.414606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644962, 29.523340, 30.308035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268830, 0.003006, 0.963183,
		0.139963, 0.989503, 0.035976,
		-0.952964, 0.144481, -0.266429,
		37.359074, 29.566685, 30.228106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469913, 29.996428, 30.566662>,  <38.026150, 29.465548, 30.414606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469913, 29.996428, 30.566662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764214, 29.868084, 30.805231>,  <38.940792, 29.791079, 30.948372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764214, 29.868084, 30.805231>,  <38.469913, 29.996428, 30.566662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764214, 29.868084, 30.805231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377846, -0.536382, -0.754670,
		0.562053, 0.780605, -0.273408,
		0.735750, -0.320859, 0.596423,
		38.984940, 29.771826, 30.984158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063427, 29.939625, 30.179243>,  <38.469913, 29.996428, 30.566662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063427, 29.939625, 30.179243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232502, 29.751205, 30.488939>,  <39.333946, 29.638153, 30.674757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232502, 29.751205, 30.488939>,  <39.063427, 29.939625, 30.179243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232502, 29.751205, 30.488939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436477, -0.642892, -0.629427,
		0.794245, 0.603988, -0.066139,
		0.422686, -0.471051, 0.774240,
		39.359306, 29.609890, 30.721210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857929, 29.968334, 30.169630>,  <39.063427, 29.939625, 30.179243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857929, 29.968334, 30.169630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696896, 29.644640, 30.340775>,  <39.600277, 29.450424, 30.443460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696896, 29.644640, 30.340775>,  <39.857929, 29.968334, 30.169630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696896, 29.644640, 30.340775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526361, -0.587057, -0.615067,
		0.748912, -0.022408, 0.662290,
		-0.402585, -0.809235, 0.427860,
		39.576118, 29.401869, 30.469133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476734, 29.542603, 30.190229>,  <39.857929, 29.968334, 30.169630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476734, 29.542603, 30.190229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153896, 29.315214, 30.254025>,  <39.960194, 29.178782, 30.292301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153896, 29.315214, 30.254025>,  <40.476734, 29.542603, 30.190229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153896, 29.315214, 30.254025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404258, -0.728949, -0.552457,
		0.430312, -0.381413, 0.818142,
		-0.807098, -0.568469, 0.159486,
		39.911766, 29.144674, 30.301870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674870, 28.913994, 30.415514>,  <40.476734, 29.542603, 30.190229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674870, 28.913994, 30.415514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.326347, 28.878792, 30.222397>,  <40.117233, 28.857672, 30.106527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.326347, 28.878792, 30.222397>,  <40.674870, 28.913994, 30.415514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326347, 28.878792, 30.222397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409529, -0.672462, -0.616507,
		-0.270404, -0.734881, 0.621958,
		-0.871302, -0.088004, -0.482791,
		40.064957, 28.852390, 30.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679371, 28.212305, 30.099319>,  <40.674870, 28.913994, 30.415514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679371, 28.212305, 30.099319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.362305, 28.364622, 29.908875>,  <40.172066, 28.456013, 29.794607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.362305, 28.364622, 29.908875>,  <40.679371, 28.212305, 30.099319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362305, 28.364622, 29.908875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315280, -0.412377, -0.854719,
		-0.521810, -0.827611, 0.206819,
		-0.792662, 0.380795, -0.476111,
		40.124508, 28.478861, 29.766041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422699, 27.650852, 29.738443>,  <40.679371, 28.212305, 30.099319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422699, 27.650852, 29.738443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240799, 27.949520, 29.544256>,  <40.131657, 28.128721, 29.427744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240799, 27.949520, 29.544256>,  <40.422699, 27.650852, 29.738443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240799, 27.949520, 29.544256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218440, -0.434933, -0.873566,
		-0.863413, -0.503304, 0.034685,
		-0.454755, 0.746671, -0.485469,
		40.104374, 28.173521, 29.398615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871231, 27.391666, 29.245388>,  <40.422699, 27.650852, 29.738443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871231, 27.391666, 29.245388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992329, 27.742683, 29.096653>,  <40.064987, 27.953295, 29.007412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992329, 27.742683, 29.096653>,  <39.871231, 27.391666, 29.245388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992329, 27.742683, 29.096653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216887, -0.443345, -0.869715,
		-0.928067, 0.182651, -0.324547,
		0.302741, 0.877544, -0.371839,
		40.083153, 28.005947, 28.985102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656364, 27.326626, 28.598698>,  <39.871231, 27.391666, 29.245388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656364, 27.326626, 28.598698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939171, 27.609495, 28.596474>,  <40.108856, 27.779217, 28.595140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939171, 27.609495, 28.596474>,  <39.656364, 27.326626, 28.598698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939171, 27.609495, 28.596474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227066, -0.234447, -0.945238,
		-0.669749, 0.667040, -0.326334,
		0.707020, 0.707172, -0.005559,
		40.151276, 27.821648, 28.594807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690811, 27.662079, 27.970064>,  <39.656364, 27.326626, 28.598698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690811, 27.662079, 27.970064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.056637, 27.773220, 28.087626>,  <40.276131, 27.839905, 28.158163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.056637, 27.773220, 28.087626>,  <39.690811, 27.662079, 27.970064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056637, 27.773220, 28.087626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326049, -0.076517, -0.942251,
		-0.239317, 0.957572, -0.160573,
		0.914560, 0.277852, 0.293903,
		40.331005, 27.856575, 28.175797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991165, 28.224045, 27.513029>,  <39.690811, 27.662079, 27.970064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991165, 28.224045, 27.513029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.272392, 27.992662, 27.678476>,  <40.441128, 27.853832, 27.777744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.272392, 27.992662, 27.678476>,  <39.991165, 28.224045, 27.513029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272392, 27.992662, 27.678476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478042, -0.046151, -0.877124,
		0.526467, 0.814407, 0.244080,
		0.703071, -0.578457, 0.413618,
		40.483315, 27.819126, 27.802561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521019, 28.534822, 27.292078>,  <39.991165, 28.224045, 27.513029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521019, 28.534822, 27.292078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.645256, 28.169212, 27.396458>,  <40.719799, 27.949846, 27.459085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.645256, 28.169212, 27.396458>,  <40.521019, 28.534822, 27.292078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645256, 28.169212, 27.396458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515425, -0.068718, -0.854175,
		0.798668, 0.399797, 0.449768,
		0.310589, -0.914024, 0.260949,
		40.738434, 27.895004, 27.474743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158127, 28.502716, 27.129480>,  <40.521019, 28.534822, 27.292078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158127, 28.502716, 27.129480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.084461, 28.109869, 27.145109>,  <41.040264, 27.874161, 27.154488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.084461, 28.109869, 27.145109>,  <41.158127, 28.502716, 27.129480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084461, 28.109869, 27.145109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587388, -0.141843, -0.796779,
		0.788074, -0.123783, 0.603007,
		-0.184160, -0.982119, 0.039074,
		41.029213, 27.815233, 27.156832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772846, 28.121662, 27.107748>,  <41.158127, 28.502716, 27.129480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772846, 28.121662, 27.107748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507019, 27.850729, 26.981529>,  <41.347523, 27.688169, 26.905798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507019, 27.850729, 26.981529>,  <41.772846, 28.121662, 27.107748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507019, 27.850729, 26.981529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578433, -0.198994, -0.791086,
		0.473036, -0.708253, 0.524037,
		-0.664569, -0.677332, -0.315545,
		41.307648, 27.647530, 26.886866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502522, 28.171366, 27.271765>,  <41.772846, 28.121662, 27.107748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502522, 28.171366, 27.271765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.852562, 28.364151, 27.254284>,  <43.062588, 28.479822, 27.243795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.852562, 28.364151, 27.254284>,  <42.502522, 28.171366, 27.271765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852562, 28.364151, 27.254284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163034, 0.378633, 0.911075,
		0.455655, -0.790155, 0.409918,
		0.875099, 0.481966, -0.043704,
		43.115093, 28.508739, 27.241173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766376, 28.197857, 28.066170>,  <42.502522, 28.171366, 27.271765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766376, 28.197857, 28.066170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.950825, 28.478245, 27.848545>,  <43.061493, 28.646479, 27.717970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.950825, 28.478245, 27.848545>,  <42.766376, 28.197857, 28.066170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950825, 28.478245, 27.848545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149819, 0.665842, 0.730895,
		0.874596, -0.255523, 0.412055,
		0.461124, 0.700972, -0.544061,
		43.089161, 28.688536, 27.685328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271584, 28.533499, 28.483711>,  <42.766376, 28.197857, 28.066170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271584, 28.533499, 28.483711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.215942, 28.782402, 28.175571>,  <43.182556, 28.931744, 27.990686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.215942, 28.782402, 28.175571>,  <43.271584, 28.533499, 28.483711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215942, 28.782402, 28.175571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137521, 0.758238, 0.637308,
		0.980682, 0.194592, -0.019901,
		-0.139105, 0.622260, -0.770351,
		43.174210, 28.969080, 27.944466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565151, 29.080141, 28.701662>,  <43.271584, 28.533499, 28.483711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565151, 29.080141, 28.701662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.312901, 29.223980, 28.426563>,  <43.161549, 29.310284, 28.261505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.312901, 29.223980, 28.426563>,  <43.565151, 29.080141, 28.701662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312901, 29.223980, 28.426563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203045, 0.778861, 0.593421,
		0.749051, 0.513874, -0.418159,
		-0.630631, 0.359597, -0.687746,
		43.123711, 29.331860, 28.220240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751701, 29.776691, 28.656349>,  <43.565151, 29.080141, 28.701662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751701, 29.776691, 28.656349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.377201, 29.737370, 28.521431>,  <43.152500, 29.713778, 28.440479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.377201, 29.737370, 28.521431>,  <43.751701, 29.776691, 28.656349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377201, 29.737370, 28.521431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251801, 0.857270, 0.449092,
		0.245007, 0.505395, -0.827374,
		-0.936252, -0.098303, -0.337296,
		43.096325, 29.707878, 28.420242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575336, 30.468924, 28.447611>,  <43.751701, 29.776691, 28.656349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575336, 30.468924, 28.447611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.221748, 30.284531, 28.478813>,  <43.009594, 30.173895, 28.497536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.221748, 30.284531, 28.478813>,  <43.575336, 30.468924, 28.447611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221748, 30.284531, 28.478813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341537, 0.750633, 0.565599,
		-0.319287, 0.473332, -0.820983,
		-0.883973, -0.460984, 0.078007,
		42.956558, 30.146235, 28.502214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083626, 30.963644, 28.254568>,  <43.575336, 30.468924, 28.447611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083626, 30.963644, 28.254568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.907791, 30.690317, 28.487753>,  <42.802292, 30.526321, 28.627665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.907791, 30.690317, 28.487753>,  <43.083626, 30.963644, 28.254568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907791, 30.690317, 28.487753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406776, 0.730112, 0.549063,
		-0.800812, 0.004223, -0.598901,
		-0.439583, -0.683315, 0.582964,
		42.775917, 30.485323, 28.662642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524658, 31.247599, 28.390921>,  <43.083626, 30.963644, 28.254568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524658, 31.247599, 28.390921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.515408, 30.955093, 28.663601>,  <42.509857, 30.779591, 28.827209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.515408, 30.955093, 28.663601>,  <42.524658, 31.247599, 28.390921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515408, 30.955093, 28.663601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505505, 0.596844, 0.623091,
		-0.862514, -0.330195, -0.383459,
		-0.023124, -0.731265, 0.681701,
		42.508469, 30.735714, 28.868111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856861, 30.964531, 28.623869>,  <42.524658, 31.247599, 28.390921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856861, 30.964531, 28.623869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.080715, 30.889206, 28.946693>,  <42.215027, 30.844011, 29.140388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.080715, 30.889206, 28.946693>,  <41.856861, 30.964531, 28.623869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080715, 30.889206, 28.946693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696620, 0.420631, 0.581197,
		-0.448923, -0.887472, 0.104216,
		0.559633, -0.188314, 0.807062,
		42.248604, 30.832712, 29.188812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415901, 30.713938, 29.184202>,  <41.856861, 30.964531, 28.623869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415901, 30.713938, 29.184202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.747726, 30.819864, 29.380856>,  <41.946819, 30.883421, 29.498848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.747726, 30.819864, 29.380856>,  <41.415901, 30.713938, 29.184202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747726, 30.819864, 29.380856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557527, 0.442481, 0.702406,
		-0.031529, -0.856787, 0.514707,
		0.829560, 0.264817, 0.491632,
		41.996593, 30.899309, 29.528345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329590, 30.520750, 29.932875>,  <41.415901, 30.713938, 29.184202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329590, 30.520750, 29.932875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.600506, 30.814581, 29.916481>,  <41.763054, 30.990879, 29.906645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.600506, 30.814581, 29.916481>,  <41.329590, 30.520750, 29.932875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600506, 30.814581, 29.916481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387097, 0.403173, 0.829221,
		0.625651, -0.545755, 0.557416,
		0.677287, 0.734577, -0.040986,
		41.803692, 31.034954, 29.904186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617474, 30.571321, 30.618073>,  <41.329590, 30.520750, 29.932875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617474, 30.571321, 30.618073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.735706, 30.918512, 30.458448>,  <41.806644, 31.126827, 30.362675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.735706, 30.918512, 30.458448>,  <41.617474, 30.571321, 30.618073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735706, 30.918512, 30.458448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221334, 0.468581, 0.855245,
		0.929323, -0.164470, 0.330617,
		0.295583, 0.867975, -0.399060,
		41.824383, 31.178905, 30.338730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957180, 30.975880, 31.229332>,  <41.617474, 30.571321, 30.618073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957180, 30.975880, 31.229332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.921112, 31.280750, 30.972908>,  <41.899471, 31.463673, 30.819054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.921112, 31.280750, 30.972908>,  <41.957180, 30.975880, 31.229332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921112, 31.280750, 30.972908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147695, 0.626331, 0.765438,
		0.984914, 0.163702, 0.056093,
		-0.090171, 0.762175, -0.641060,
		41.894062, 31.509403, 30.780590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455135, 31.517033, 31.430628>,  <41.957180, 30.975880, 31.229332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455135, 31.517033, 31.430628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.135513, 31.667091, 31.242680>,  <41.943741, 31.757128, 31.129911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.135513, 31.667091, 31.242680>,  <42.455135, 31.517033, 31.430628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135513, 31.667091, 31.242680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285572, 0.450910, 0.845653,
		0.529113, 0.809904, -0.253170,
		-0.799054, 0.375148, -0.469869,
		41.895798, 31.779636, 31.101719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.757084, 32.287605, 25.817699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.455273, 32.025204, 25.825129>,  <43.274185, 31.867764, 25.829586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.455273, 32.025204, 25.825129>,  <43.757084, 32.287605, 25.817699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455273, 32.025204, 25.825129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498024, -0.590798, -0.634768,
		0.427380, -0.469703, 0.772480,
		-0.754532, -0.656000, 0.018572,
		43.228912, 31.828403, 25.830700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053417, 31.689648, 25.846016>,  <43.757084, 32.287605, 25.817699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053417, 31.689648, 25.846016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.694809, 31.572372, 25.713175>,  <43.479645, 31.502008, 25.633471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.694809, 31.572372, 25.713175>,  <44.053417, 31.689648, 25.846016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694809, 31.572372, 25.713175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442909, -0.577776, -0.685570,
		0.009119, -0.761719, 0.647843,
		-0.896520, -0.293187, -0.332103,
		43.425854, 31.484417, 25.613544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999367, 30.915648, 25.754480>,  <44.053417, 31.689648, 25.846016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999367, 30.915648, 25.754480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.760532, 31.106632, 25.496637>,  <43.617233, 31.221224, 25.341930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.760532, 31.106632, 25.496637>,  <43.999367, 30.915648, 25.754480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760532, 31.106632, 25.496637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285111, -0.624792, -0.726875,
		-0.749803, -0.617789, 0.236922,
		-0.597082, 0.477464, -0.644609,
		43.581406, 31.249872, 25.303255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463715, 30.380459, 25.492414>,  <43.999367, 30.915648, 25.754480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463715, 30.380459, 25.492414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543312, 30.692719, 25.255436>,  <43.591068, 30.880074, 25.113249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543312, 30.692719, 25.255436>,  <43.463715, 30.380459, 25.492414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543312, 30.692719, 25.255436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112578, -0.618742, -0.777486,
		-0.973513, 0.088017, -0.211008,
		0.198992, 0.780648, -0.592445,
		43.603008, 30.926912, 25.077702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177277, 30.108936, 24.906338>,  <43.463715, 30.380459, 25.492414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177277, 30.108936, 24.906338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.390228, 30.414221, 24.759869>,  <43.517998, 30.597391, 24.671988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.390228, 30.414221, 24.759869>,  <43.177277, 30.108936, 24.906338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390228, 30.414221, 24.759869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251638, -0.555701, -0.792385,
		-0.808240, 0.329705, -0.487896,
		0.532378, 0.763211, -0.366174,
		43.549942, 30.643185, 24.650017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970390, 30.165649, 24.309542>,  <43.177277, 30.108936, 24.906338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970390, 30.165649, 24.309542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.313843, 30.369431, 24.286892>,  <43.519917, 30.491699, 24.273302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.313843, 30.369431, 24.286892>,  <42.970390, 30.165649, 24.309542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313843, 30.369431, 24.286892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221030, -0.467647, -0.855834,
		-0.462487, 0.722333, -0.514142,
		0.858634, 0.509453, -0.056623,
		43.571434, 30.522266, 24.269905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067986, 30.245287, 23.611242>,  <42.970390, 30.165649, 24.309542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067986, 30.245287, 23.611242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.422535, 30.382483, 23.735626>,  <43.635265, 30.464800, 23.810257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.422535, 30.382483, 23.735626>,  <43.067986, 30.245287, 23.611242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422535, 30.382483, 23.735626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393505, -0.204289, -0.896337,
		-0.243907, 0.916856, -0.316044,
		0.886377, 0.342988, 0.310960,
		43.688446, 30.485378, 23.828915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304783, 30.837446, 23.207050>,  <43.067986, 30.245287, 23.611242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304783, 30.837446, 23.207050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.602352, 30.605534, 23.339975>,  <43.780895, 30.466385, 23.419731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.602352, 30.605534, 23.339975>,  <43.304783, 30.837446, 23.207050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602352, 30.605534, 23.339975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236526, -0.236646, -0.942366,
		0.625009, 0.779647, -0.038912,
		0.743922, -0.579783, 0.332312,
		43.825527, 30.431599, 23.439669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992077, 31.052311, 22.770224>,  <43.304783, 30.837446, 23.207050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992077, 31.052311, 22.770224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.067146, 30.693045, 22.929260>,  <44.112186, 30.477486, 23.024683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.067146, 30.693045, 22.929260>,  <43.992077, 31.052311, 22.770224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067146, 30.693045, 22.929260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240092, -0.350559, -0.905243,
		0.952436, 0.265348, 0.149851,
		0.187673, -0.898164, 0.397593,
		44.123447, 30.423595, 23.048538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717514, 30.845543, 22.748627>,  <43.992077, 31.052311, 22.770224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717514, 30.845543, 22.748627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.521137, 30.497608, 22.768074>,  <44.403313, 30.288847, 22.779741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.521137, 30.497608, 22.768074>,  <44.717514, 30.845543, 22.748627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521137, 30.497608, 22.768074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501106, -0.327593, -0.800984,
		0.712652, -0.368872, 0.596708,
		-0.490938, -0.869837, 0.048616,
		44.373856, 30.236656, 22.782660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093124, 30.398188, 22.373070>,  <44.717514, 30.845543, 22.748627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093124, 30.398188, 22.373070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.758884, 30.181677, 22.410583>,  <44.558342, 30.051771, 22.433092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.758884, 30.181677, 22.410583>,  <45.093124, 30.398188, 22.373070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758884, 30.181677, 22.410583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211421, -0.474440, -0.854522,
		0.507027, -0.694210, 0.510878,
		-0.835599, -0.541276, 0.093783,
		44.508205, 30.019295, 22.438719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369755, 29.715239, 22.401197>,  <45.093124, 30.398188, 22.373070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369755, 29.715239, 22.401197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.988129, 29.693151, 22.283417>,  <44.759151, 29.679899, 22.212748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.988129, 29.693151, 22.283417>,  <45.369755, 29.715239, 22.401197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988129, 29.693151, 22.283417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258614, -0.647939, -0.716445,
		-0.151226, -0.759688, 0.632460,
		-0.954070, -0.055218, -0.294451,
		44.701908, 29.676586, 22.195082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531734, 29.228935, 22.018793>,  <45.369755, 29.715239, 22.401197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531734, 29.228935, 22.018793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.144234, 29.318329, 21.975761>,  <44.911732, 29.371965, 21.949942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.144234, 29.318329, 21.975761>,  <45.531734, 29.228935, 22.018793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144234, 29.318329, 21.975761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064980, -0.647270, -0.759486,
		-0.239366, -0.728764, 0.641567,
		-0.968753, 0.223485, -0.107579,
		44.853607, 29.385374, 21.943487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063103, 28.583353, 21.878670>,  <45.531734, 29.228935, 22.018793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063103, 28.583353, 21.878670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.926476, 28.920441, 21.712223>,  <44.844498, 29.122694, 21.612354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.926476, 28.920441, 21.712223>,  <45.063103, 28.583353, 21.878670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926476, 28.920441, 21.712223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269030, -0.511889, -0.815838,
		-0.900529, -0.166718, 0.401563,
		-0.341571, 0.842719, -0.416119,
		44.824005, 29.173256, 21.587387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603168, 28.032347, 22.299545>,  <45.063103, 28.583353, 21.878670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603168, 28.032347, 22.299545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.533859, 27.639414, 22.271259>,  <45.492271, 27.403654, 22.254288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.533859, 27.639414, 22.271259>,  <45.603168, 28.032347, 22.299545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533859, 27.639414, 22.271259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498089, 0.025465, 0.866752,
		-0.849637, 0.185409, -0.493701,
		-0.173275, -0.982332, -0.070714,
		45.481876, 27.344715, 22.250046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.854485, 27.886869, 22.241091>,  <45.603168, 28.032347, 22.299545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.854485, 27.886869, 22.241091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.039669, 27.571732, 22.403557>,  <45.150780, 27.382648, 22.501038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.039669, 27.571732, 22.403557>,  <44.854485, 27.886869, 22.241091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039669, 27.571732, 22.403557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513207, 0.135360, 0.847524,
		-0.722695, -0.600816, -0.341661,
		0.462959, -0.787844, 0.406167,
		45.178558, 27.335379, 22.525408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323959, 27.545649, 22.451115>,  <44.854485, 27.886869, 22.241091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323959, 27.545649, 22.451115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.640728, 27.400370, 22.647461>,  <44.830788, 27.313202, 22.765268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.640728, 27.400370, 22.647461>,  <44.323959, 27.545649, 22.451115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640728, 27.400370, 22.647461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529625, -0.008462, 0.848189,
		-0.303908, -0.931673, -0.199061,
		0.791920, -0.363199, 0.490866,
		44.878304, 27.291410, 22.794722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039799, 26.954140, 22.864729>,  <44.323959, 27.545649, 22.451115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039799, 26.954140, 22.864729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.382065, 27.089983, 23.020935>,  <44.587425, 27.171488, 23.114658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.382065, 27.089983, 23.020935>,  <44.039799, 26.954140, 22.864729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382065, 27.089983, 23.020935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393364, -0.063560, 0.917183,
		0.336302, -0.938418, 0.079203,
		0.855667, 0.339606, 0.390515,
		44.638763, 27.191864, 23.138090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166965, 26.555956, 23.514784>,  <44.039799, 26.954140, 22.864729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166965, 26.555956, 23.514784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.400303, 26.879778, 23.541115>,  <44.540306, 27.074072, 23.556913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.400303, 26.879778, 23.541115>,  <44.166965, 26.555956, 23.514784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400303, 26.879778, 23.541115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244715, 0.097899, 0.964640,
		0.774486, -0.578821, 0.255219,
		0.583340, 0.809556, 0.065825,
		44.575306, 27.122644, 23.560862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305443, 26.585928, 24.211800>,  <44.166965, 26.555956, 23.514784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305443, 26.585928, 24.211800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.419846, 26.953371, 24.102726>,  <44.488487, 27.173838, 24.037281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.419846, 26.953371, 24.102726>,  <44.305443, 26.585928, 24.211800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419846, 26.953371, 24.102726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033332, 0.293937, 0.955244,
		0.957648, -0.264116, 0.114686,
		0.286006, 0.918610, -0.272685,
		44.505646, 27.228954, 24.020920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852261, 26.749998, 24.673656>,  <44.305443, 26.585928, 24.211800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852261, 26.749998, 24.673656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.711185, 27.097347, 24.534204>,  <44.626541, 27.305756, 24.450533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.711185, 27.097347, 24.534204>,  <44.852261, 26.749998, 24.673656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711185, 27.097347, 24.534204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063944, 0.349334, 0.934814,
		0.933553, 0.351992, -0.067680,
		-0.352689, 0.868371, -0.348630,
		44.605377, 27.357859, 24.429615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975437, 27.146544, 25.237259>,  <44.852261, 26.749998, 24.673656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975437, 27.146544, 25.237259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.721760, 27.371109, 25.024614>,  <44.569553, 27.505848, 24.897028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.721760, 27.371109, 25.024614>,  <44.975437, 27.146544, 25.237259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721760, 27.371109, 25.024614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268541, 0.484826, 0.832364,
		0.725039, 0.670641, -0.156712,
		-0.634196, 0.561413, -0.531612,
		44.531502, 27.539534, 24.865131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119423, 27.858109, 25.429607>,  <44.975437, 27.146544, 25.237259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119423, 27.858109, 25.429607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.746304, 27.844156, 25.286125>,  <44.522430, 27.835785, 25.200035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.746304, 27.844156, 25.286125>,  <45.119423, 27.858109, 25.429607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746304, 27.844156, 25.286125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331393, 0.474203, 0.815665,
		0.141650, 0.879724, -0.453895,
		-0.932799, -0.034879, -0.358706,
		44.466465, 27.833693, 25.178513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798698, 28.519163, 25.416048>,  <45.119423, 27.858109, 25.429607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798698, 28.519163, 25.416048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.502506, 28.250343, 25.418318>,  <44.324791, 28.089050, 25.419680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.502506, 28.250343, 25.418318>,  <44.798698, 28.519163, 25.416048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502506, 28.250343, 25.418318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424995, 0.474776, 0.770692,
		-0.520638, 0.568273, -0.637182,
		-0.740483, -0.672051, 0.005673,
		44.280361, 28.048729, 25.420019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271736, 28.909149, 25.658777>,  <44.798698, 28.519163, 25.416048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271736, 28.909149, 25.658777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.126995, 28.539331, 25.706572>,  <44.040150, 28.317440, 25.735249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.126995, 28.539331, 25.706572>,  <44.271736, 28.909149, 25.658777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126995, 28.539331, 25.706572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356705, 0.255733, 0.898533,
		-0.861293, 0.282514, -0.422328,
		-0.361851, -0.924547, 0.119487,
		44.018440, 28.261967, 25.742418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531422, 28.961613, 25.748549>,  <44.271736, 28.909149, 25.658777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531422, 28.961613, 25.748549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.628750, 28.610102, 25.912766>,  <43.687149, 28.399195, 26.011295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.628750, 28.610102, 25.912766>,  <43.531422, 28.961613, 25.748549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628750, 28.610102, 25.912766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468976, 0.263908, 0.842861,
		-0.849032, -0.397623, -0.347910,
		0.243325, -0.878777, 0.410542,
		43.701748, 28.346468, 26.035929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947815, 28.769268, 26.026901>,  <43.531422, 28.961613, 25.748549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947815, 28.769268, 26.026901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.232994, 28.577534, 26.231623>,  <43.404102, 28.462492, 26.354456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.232994, 28.577534, 26.231623>,  <42.947815, 28.769268, 26.026901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232994, 28.577534, 26.231623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487714, 0.185452, 0.853079,
		-0.503828, -0.857813, -0.101562,
		0.712947, -0.479338, 0.511803,
		43.446877, 28.433733, 26.385164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541603, 28.253454, 26.543509>,  <42.947815, 28.769268, 26.026901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541603, 28.253454, 26.543509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.911533, 28.351313, 26.660027>,  <43.133492, 28.410027, 26.729937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.911533, 28.351313, 26.660027>,  <42.541603, 28.253454, 26.543509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911533, 28.351313, 26.660027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354473, 0.276374, 0.893290,
		0.138031, -0.929391, 0.342316,
		0.924823, 0.244644, 0.291295,
		43.188980, 28.424706, 26.747416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133102, 27.619453, 26.709873>,  <42.541603, 28.253454, 26.543509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133102, 27.619453, 26.709873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.758385, 27.527077, 26.604744>,  <41.533554, 27.471651, 26.541666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.758385, 27.527077, 26.604744>,  <42.133102, 27.619453, 26.709873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758385, 27.527077, 26.604744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349219, -0.571359, -0.742694,
		0.021353, -0.787537, 0.615897,
		-0.936798, -0.230942, -0.262823,
		41.477345, 27.457794, 26.525898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158356, 26.884600, 26.516418>,  <42.133102, 27.619453, 26.709873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158356, 26.884600, 26.516418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.819706, 27.012001, 26.345873>,  <41.616516, 27.088442, 26.243546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.819706, 27.012001, 26.345873>,  <42.158356, 26.884600, 26.516418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819706, 27.012001, 26.345873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330113, -0.314112, -0.890145,
		-0.417445, -0.894363, 0.160790,
		-0.846620, 0.318508, -0.426366,
		41.565720, 27.107552, 26.217964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666252, 26.396799, 26.186678>,  <42.158356, 26.884600, 26.516418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666252, 26.396799, 26.186678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.596512, 26.744669, 26.001955>,  <41.554668, 26.953390, 25.891121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.596512, 26.744669, 26.001955>,  <41.666252, 26.396799, 26.186678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596512, 26.744669, 26.001955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256809, -0.412599, -0.873963,
		-0.950605, -0.270975, -0.151403,
		-0.174354, 0.869675, -0.461807,
		41.544205, 27.005571, 25.863413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517094, 26.096970, 25.570133>,  <41.666252, 26.396799, 26.186678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517094, 26.096970, 25.570133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557369, 26.481339, 25.466990>,  <41.581535, 26.711960, 25.405104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557369, 26.481339, 25.466990>,  <41.517094, 26.096970, 25.570133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557369, 26.481339, 25.466990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222759, -0.274370, -0.935468,
		-0.969660, 0.036747, -0.241679,
		0.100685, 0.960922, -0.257860,
		41.587574, 26.769615, 25.389631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235710, 26.147579, 24.925064>,  <41.517094, 26.096970, 25.570133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235710, 26.147579, 24.925064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455208, 26.481657, 24.939695>,  <41.586906, 26.682104, 24.948473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455208, 26.481657, 24.939695>,  <41.235710, 26.147579, 24.925064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455208, 26.481657, 24.939695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150772, -0.055836, -0.986991,
		-0.822285, 0.547115, -0.156563,
		0.548740, 0.835193, 0.036576,
		41.619831, 26.732214, 24.950668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934391, 26.602047, 24.514315>,  <41.235710, 26.147579, 24.925064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934391, 26.602047, 24.514315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321564, 26.695435, 24.551392>,  <41.553867, 26.751467, 24.573637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321564, 26.695435, 24.551392>,  <40.934391, 26.602047, 24.514315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321564, 26.695435, 24.551392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101572, -0.026272, -0.994481,
		-0.229747, 0.972009, -0.049144,
		0.967936, 0.233470, 0.092693,
		41.611946, 26.765476, 24.579199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975071, 27.031713, 24.028770>,  <40.934391, 26.602047, 24.514315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975071, 27.031713, 24.028770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.350605, 26.925465, 24.116428>,  <41.575928, 26.861715, 24.169024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.350605, 26.925465, 24.116428>,  <40.975071, 27.031713, 24.028770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350605, 26.925465, 24.116428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222210, -0.018849, -0.974817,
		0.263066, 0.963892, 0.041328,
		0.938839, -0.265624, 0.219145,
		41.632256, 26.845778, 24.182173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575699, 27.584017, 23.535910>,  <40.975071, 27.031713, 24.028770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575699, 27.584017, 23.535910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.209087, 27.516489, 23.390871>,  <39.989120, 27.475973, 23.303848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.209087, 27.516489, 23.390871>,  <40.575699, 27.584017, 23.535910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209087, 27.516489, 23.390871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372869, 0.688645, 0.621881,
		0.144715, 0.705173, -0.694110,
		-0.916529, -0.168817, -0.362594,
		39.934128, 27.465843, 23.282093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236828, 28.231554, 23.273151>,  <40.575699, 27.584017, 23.535910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236828, 28.231554, 23.273151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940094, 27.977827, 23.360165>,  <39.762054, 27.825590, 23.412373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940094, 27.977827, 23.360165>,  <40.236828, 28.231554, 23.273151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940094, 27.977827, 23.360165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327333, 0.625651, 0.708105,
		-0.585264, 0.454092, -0.671764,
		-0.741835, -0.634319, 0.217532,
		39.717545, 27.787531, 23.425425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622749, 28.698244, 23.253254>,  <40.236828, 28.231554, 23.273151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622749, 28.698244, 23.253254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.524754, 28.368172, 23.456844>,  <39.465954, 28.170128, 23.578999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.524754, 28.368172, 23.456844>,  <39.622749, 28.698244, 23.253254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524754, 28.368172, 23.456844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345434, 0.564815, 0.749440,
		-0.905900, 0.007789, -0.423421,
		-0.244992, -0.825181, 0.508975,
		39.451256, 28.120617, 23.609537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003162, 28.882219, 23.697660>,  <39.622749, 28.698244, 23.253254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003162, 28.882219, 23.697660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.174690, 28.569960, 23.879519>,  <39.277607, 28.382605, 23.988632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.174690, 28.569960, 23.879519>,  <39.003162, 28.882219, 23.697660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174690, 28.569960, 23.879519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188542, 0.414844, 0.890144,
		-0.883495, -0.467433, 0.030709,
		0.428823, -0.780648, 0.454643,
		39.303337, 28.335766, 24.015911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370399, 28.765036, 24.161407>,  <39.003162, 28.882219, 23.697660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370399, 28.765036, 24.161407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689693, 28.575422, 24.310066>,  <38.881268, 28.461655, 24.399261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689693, 28.575422, 24.310066>,  <38.370399, 28.765036, 24.161407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689693, 28.575422, 24.310066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080128, 0.527948, 0.845489,
		-0.596999, -0.704674, 0.383441,
		0.798231, -0.474032, 0.371648,
		38.929161, 28.433212, 24.421560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179832, 28.417372, 24.765957>,  <38.370399, 28.765036, 24.161407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179832, 28.417372, 24.765957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574947, 28.417128, 24.828272>,  <38.812016, 28.416981, 24.865660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574947, 28.417128, 24.828272>,  <38.179832, 28.417372, 24.765957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574947, 28.417128, 24.828272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150938, 0.243805, 0.958007,
		-0.038566, -0.969824, 0.240737,
		0.987791, -0.000610, 0.155786,
		38.871284, 28.416945, 24.875008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316914, 27.968594, 25.272896>,  <38.179832, 28.417372, 24.765957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316914, 27.968594, 25.272896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624874, 28.223835, 25.276253>,  <38.809650, 28.376980, 25.278267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624874, 28.223835, 25.276253>,  <38.316914, 27.968594, 25.272896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624874, 28.223835, 25.276253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100108, 0.107779, 0.989122,
		0.630257, -0.762370, 0.146859,
		0.769905, 0.638103, 0.008391,
		38.855846, 28.415266, 25.278770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.878170, 29.111012, 20.683733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.135368, 29.330406, 20.897545>,  <42.289688, 29.462044, 21.025831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.135368, 29.330406, 20.897545>,  <41.878170, 29.111012, 20.683733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135368, 29.330406, 20.897545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763784, 0.510709, 0.394727,
		-0.056486, -0.662072, 0.747309,
		0.642995, 0.548486, 0.534528,
		42.328266, 29.494951, 21.057903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598652, 29.131170, 21.332449>,  <41.878170, 29.111012, 20.683733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598652, 29.131170, 21.332449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.845436, 29.444174, 21.298893>,  <41.993507, 29.631977, 21.278759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.845436, 29.444174, 21.298893>,  <41.598652, 29.131170, 21.332449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845436, 29.444174, 21.298893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762060, 0.620630, 0.184616,
		0.196529, -0.049971, 0.979224,
		0.616961, 0.782510, -0.083891,
		42.030525, 29.678926, 21.273726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410465, 29.519766, 21.906044>,  <41.598652, 29.131170, 21.332449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410465, 29.519766, 21.906044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.642059, 29.771263, 21.698404>,  <41.781013, 29.922161, 21.573820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.642059, 29.771263, 21.698404>,  <41.410465, 29.519766, 21.906044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642059, 29.771263, 21.698404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511538, 0.775888, 0.369224,
		0.634908, 0.051764, 0.770851,
		0.578982, 0.628744, -0.519097,
		41.815754, 29.959887, 21.542675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614475, 30.019796, 22.323261>,  <41.410465, 29.519766, 21.906044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614475, 30.019796, 22.323261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.607723, 30.173903, 21.954201>,  <41.603672, 30.266367, 21.732765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.607723, 30.173903, 21.954201>,  <41.614475, 30.019796, 22.323261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607723, 30.173903, 21.954201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669990, 0.680609, 0.296453,
		0.742178, 0.623170, 0.246638,
		-0.016877, 0.385266, -0.922651,
		41.602661, 30.289482, 21.677406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585812, 30.659925, 22.454018>,  <41.614475, 30.019796, 22.323261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585812, 30.659925, 22.454018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467972, 30.648478, 22.071941>,  <41.397266, 30.641609, 21.842695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467972, 30.648478, 22.071941>,  <41.585812, 30.659925, 22.454018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467972, 30.648478, 22.071941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714323, 0.670563, 0.200221,
		0.634786, 0.741300, -0.217991,
		-0.294601, -0.028618, -0.955192,
		41.379593, 30.639893, 21.785383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696651, 31.303068, 22.215185>,  <41.585812, 30.659925, 22.454018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696651, 31.303068, 22.215185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.408211, 31.159452, 21.978172>,  <41.235146, 31.073282, 21.835964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.408211, 31.159452, 21.978172>,  <41.696651, 31.303068, 22.215185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408211, 31.159452, 21.978172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611135, 0.732520, 0.299881,
		0.326374, 0.578364, -0.747646,
		-0.721106, -0.359040, -0.592534,
		41.191879, 31.051741, 21.800411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405285, 31.913151, 21.827959>,  <41.696651, 31.303068, 22.215185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405285, 31.913151, 21.827959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.135204, 31.621187, 21.785383>,  <40.973156, 31.446009, 21.759838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.135204, 31.621187, 21.785383>,  <41.405285, 31.913151, 21.827959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135204, 31.621187, 21.785383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705519, 0.596938, 0.381980,
		-0.215273, 0.333009, -0.918021,
		-0.675205, -0.729910, -0.106440,
		40.932644, 31.402214, 21.753450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804672, 32.288139, 21.556944>,  <41.405285, 31.913151, 21.827959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804672, 32.288139, 21.556944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679371, 31.945515, 21.720980>,  <40.604191, 31.739939, 21.819401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679371, 31.945515, 21.720980>,  <40.804672, 32.288139, 21.556944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679371, 31.945515, 21.720980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678831, 0.503945, 0.534068,
		-0.664125, -0.111082, -0.739323,
		-0.313253, -0.856563, 0.410088,
		40.585396, 31.688545, 21.844006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036057, 32.309742, 21.513376>,  <40.804672, 32.288139, 21.556944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036057, 32.309742, 21.513376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.107166, 32.044952, 21.804634>,  <40.149830, 31.886080, 21.979389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.107166, 32.044952, 21.804634>,  <40.036057, 32.309742, 21.513376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107166, 32.044952, 21.804634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745733, 0.392170, 0.538595,
		-0.642089, -0.638748, -0.423936,
		0.177772, -0.661970, 0.728144,
		40.160500, 31.846361, 22.023077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326000, 32.068531, 21.801165>,  <40.036057, 32.309742, 21.513376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326000, 32.068531, 21.801165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.598377, 31.984045, 22.081654>,  <39.761803, 31.933355, 22.249947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.598377, 31.984045, 22.081654>,  <39.326000, 32.068531, 21.801165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598377, 31.984045, 22.081654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569865, 0.448585, 0.688495,
		-0.459976, -0.868425, 0.185097,
		0.680938, -0.211211, 0.701223,
		39.802658, 31.920681, 22.292021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936584, 31.980810, 22.392801>,  <39.326000, 32.068531, 21.801165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936584, 31.980810, 22.392801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.303150, 32.057823, 22.533155>,  <39.523090, 32.104031, 22.617369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.303150, 32.057823, 22.533155>,  <38.936584, 31.980810, 22.392801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303150, 32.057823, 22.533155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390732, 0.620287, 0.680127,
		-0.086704, -0.760379, 0.643667,
		0.916412, 0.192531, 0.350886,
		39.578075, 32.115582, 22.638422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946644, 31.844759, 23.056219>,  <38.936584, 31.980810, 22.392801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946644, 31.844759, 23.056219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261921, 32.085770, 23.006069>,  <39.451088, 32.230377, 22.975979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261921, 32.085770, 23.006069>,  <38.946644, 31.844759, 23.056219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261921, 32.085770, 23.006069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180483, 0.421057, 0.888896,
		0.588375, -0.677990, 0.440618,
		0.788188, 0.602529, -0.125374,
		39.498379, 32.266529, 22.968456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930126, 31.159811, 22.831324>,  <38.946644, 31.844759, 23.056219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930126, 31.159811, 22.831324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607998, 30.924829, 22.863216>,  <38.414722, 30.783840, 22.882353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607998, 30.924829, 22.863216>,  <38.930126, 31.159811, 22.831324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607998, 30.924829, 22.863216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357970, -0.589056, -0.724480,
		0.472566, -0.554896, 0.684669,
		-0.805319, -0.587456, 0.079732,
		38.366402, 30.748592, 22.887136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144051, 30.455120, 22.865097>,  <38.930126, 31.159811, 22.831324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144051, 30.455120, 22.865097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777664, 30.469852, 22.705275>,  <38.557831, 30.478691, 22.609381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777664, 30.469852, 22.705275>,  <39.144051, 30.455120, 22.865097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777664, 30.469852, 22.705275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265329, -0.691397, -0.671991,
		-0.300998, -0.721536, 0.623527,
		-0.915970, 0.036828, -0.399554,
		38.502872, 30.480902, 22.585409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801144, 29.707090, 22.871012>,  <39.144051, 30.455120, 22.865097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801144, 29.707090, 22.871012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638531, 29.927584, 22.579567>,  <38.540962, 30.059879, 22.404701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638531, 29.927584, 22.579567>,  <38.801144, 29.707090, 22.871012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638531, 29.927584, 22.579567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243644, -0.703195, -0.667948,
		-0.880549, -0.449066, 0.151569,
		-0.406535, 0.551232, -0.728610,
		38.516571, 30.092953, 22.360985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446850, 29.214479, 22.387016>,  <38.801144, 29.707090, 22.871012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446850, 29.214479, 22.387016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.471821, 29.550272, 22.171101>,  <38.486801, 29.751747, 22.041552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.471821, 29.550272, 22.171101>,  <38.446850, 29.214479, 22.387016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471821, 29.550272, 22.171101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033821, -0.538753, -0.841784,
		-0.997477, 0.070803, -0.005238,
		0.062423, 0.839483, -0.539788,
		38.490547, 29.802116, 22.009165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960331, 29.182362, 21.875887>,  <38.446850, 29.214479, 22.387016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960331, 29.182362, 21.875887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254421, 29.421316, 21.747778>,  <38.430874, 29.564690, 21.670912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254421, 29.421316, 21.747778>,  <37.960331, 29.182362, 21.875887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254421, 29.421316, 21.747778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147439, -0.602135, -0.784662,
		-0.661595, 0.529681, -0.530782,
		0.735224, 0.597387, -0.320274,
		38.474987, 29.600533, 21.651695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767998, 29.264174, 21.123959>,  <37.960331, 29.182362, 21.875887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767998, 29.264174, 21.123959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.148945, 29.379906, 21.162491>,  <38.377514, 29.449345, 21.185610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.148945, 29.379906, 21.162491>,  <37.767998, 29.264174, 21.123959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148945, 29.379906, 21.162491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273603, -0.671238, -0.688899,
		-0.134656, 0.682444, -0.718428,
		0.952370, 0.289329, 0.096333,
		38.434654, 29.466703, 21.191391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976959, 29.220400, 20.460226>,  <37.767998, 29.264174, 21.123959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976959, 29.220400, 20.460226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315857, 29.230238, 20.672482>,  <38.519196, 29.236141, 20.799835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315857, 29.230238, 20.672482>,  <37.976959, 29.220400, 20.460226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315857, 29.230238, 20.672482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494097, -0.403303, -0.770204,
		0.195066, 0.914736, -0.353847,
		0.847241, 0.024594, 0.530639,
		38.570030, 29.237616, 20.831673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433453, 29.530201, 19.970432>,  <37.976959, 29.220400, 20.460226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433453, 29.530201, 19.970432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.627190, 29.335096, 20.260948>,  <38.743431, 29.218033, 20.435257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.627190, 29.335096, 20.260948>,  <38.433453, 29.530201, 19.970432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627190, 29.335096, 20.260948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589777, -0.431134, -0.682852,
		0.646197, 0.759086, 0.078852,
		0.484347, -0.487762, 0.726289,
		38.772495, 29.188768, 20.478834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087864, 29.562689, 19.853386>,  <38.433453, 29.530201, 19.970432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087864, 29.562689, 19.853386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.079777, 29.240255, 20.089968>,  <39.074924, 29.046795, 20.231916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.079777, 29.240255, 20.089968>,  <39.087864, 29.562689, 19.853386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079777, 29.240255, 20.089968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718469, -0.423101, -0.552077,
		0.695266, 0.413782, 0.587699,
		-0.020216, -0.806083, 0.591457,
		39.073711, 28.998430, 20.267405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824806, 29.338631, 19.948164>,  <39.087864, 29.562689, 19.853386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824806, 29.338631, 19.948164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.595066, 29.021547, 20.029875>,  <39.457222, 28.831297, 20.078901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.595066, 29.021547, 20.029875>,  <39.824806, 29.338631, 19.948164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595066, 29.021547, 20.029875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650669, -0.593505, -0.473689,
		0.496738, -0.139149, 0.856673,
		-0.574353, -0.792710, 0.204277,
		39.422760, 28.783735, 20.091158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334270, 28.781012, 19.947544>,  <39.824806, 29.338631, 19.948164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334270, 28.781012, 19.947544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.984085, 28.588427, 19.964333>,  <39.773975, 28.472876, 19.974405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.984085, 28.588427, 19.964333>,  <40.334270, 28.781012, 19.947544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984085, 28.588427, 19.964333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361267, -0.709634, -0.604902,
		0.321021, -0.514406, 0.795193,
		-0.875461, -0.481463, 0.041969,
		39.721447, 28.443987, 19.976923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390575, 28.290749, 20.351461>,  <40.334270, 28.781012, 19.947544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390575, 28.290749, 20.351461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.110134, 28.194857, 20.082840>,  <39.941868, 28.137321, 19.921667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.110134, 28.194857, 20.082840>,  <40.390575, 28.290749, 20.351461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110134, 28.194857, 20.082840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650869, -0.599821, -0.465385,
		-0.291243, -0.763376, 0.576571,
		-0.701104, -0.239732, -0.671552,
		39.899803, 28.122936, 19.881374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657108, 27.743019, 20.084217>,  <40.390575, 28.290749, 20.351461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657108, 27.743019, 20.084217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.342644, 27.739805, 19.837029>,  <40.153965, 27.737877, 19.688715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.342644, 27.739805, 19.837029>,  <40.657108, 27.743019, 20.084217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342644, 27.739805, 19.837029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459174, -0.676865, -0.575337,
		-0.413661, -0.736063, 0.535813,
		-0.786158, -0.008037, -0.617973,
		40.106796, 27.737394, 19.651636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503075, 27.082125, 20.089804>,  <40.657108, 27.743019, 20.084217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503075, 27.082125, 20.089804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.355919, 27.238317, 19.752239>,  <40.267628, 27.332033, 19.549700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.355919, 27.238317, 19.752239>,  <40.503075, 27.082125, 20.089804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355919, 27.238317, 19.752239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431973, -0.731916, -0.526970,
		-0.823443, -0.558412, 0.100585,
		-0.367887, 0.390480, -0.843910,
		40.245552, 27.355461, 19.499065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791920, 26.895973, 20.303883>,  <40.503075, 27.082125, 20.089804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791920, 26.895973, 20.303883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.048222, 26.636667, 20.468410>,  <40.202003, 26.481083, 20.567127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.048222, 26.636667, 20.468410>,  <39.791920, 26.895973, 20.303883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048222, 26.636667, 20.468410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337586, 0.243281, 0.909313,
		-0.689543, -0.721503, -0.062962,
		0.640755, -0.648265, 0.411322,
		40.240448, 26.442188, 20.591806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335136, 26.534369, 20.707602>,  <39.791920, 26.895973, 20.303883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335136, 26.534369, 20.707602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.711544, 26.508324, 20.840410>,  <39.937389, 26.492697, 20.920095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.711544, 26.508324, 20.840410>,  <39.335136, 26.534369, 20.707602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711544, 26.508324, 20.840410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309004, 0.234339, 0.921738,
		-0.137823, -0.969972, 0.200398,
		0.941022, -0.065113, 0.332023,
		39.993851, 26.488791, 20.940018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278442, 26.212173, 21.317728>,  <39.335136, 26.534369, 20.707602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278442, 26.212173, 21.317728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.652851, 26.341953, 21.372276>,  <39.877495, 26.419821, 21.405005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.652851, 26.341953, 21.372276>,  <39.278442, 26.212173, 21.317728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652851, 26.341953, 21.372276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236358, 0.292411, 0.926623,
		0.260765, -0.899572, 0.350389,
		0.936021, 0.324448, 0.136370,
		39.933659, 26.439289, 21.413187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479927, 26.021790, 21.988726>,  <39.278442, 26.212173, 21.317728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479927, 26.021790, 21.988726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.720528, 26.323748, 21.884163>,  <39.864887, 26.504923, 21.821424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.720528, 26.323748, 21.884163>,  <39.479927, 26.021790, 21.988726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720528, 26.323748, 21.884163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079160, 0.381932, 0.920794,
		0.794942, -0.533163, 0.289489,
		0.601499, 0.754894, -0.261409,
		39.900978, 26.550217, 21.805740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711800, 26.042086, 22.563507>,  <39.479927, 26.021790, 21.988726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711800, 26.042086, 22.563507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783508, 26.378922, 22.360039>,  <39.826534, 26.581024, 22.237957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783508, 26.378922, 22.360039>,  <39.711800, 26.042086, 22.563507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783508, 26.378922, 22.360039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035099, 0.511244, 0.858719,
		0.983174, -0.171794, 0.062092,
		0.179267, 0.842091, -0.508671,
		39.837288, 26.631548, 22.207438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349674, 26.420256, 22.837616>,  <39.711800, 26.042086, 22.563507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349674, 26.420256, 22.837616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.129910, 26.715897, 22.681732>,  <39.998051, 26.893282, 22.588202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.129910, 26.715897, 22.681732>,  <40.349674, 26.420256, 22.837616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129910, 26.715897, 22.681732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070266, 0.505625, 0.859887,
		0.832593, 0.445048, -0.329729,
		-0.549411, 0.739104, -0.389708,
		39.965088, 26.937628, 22.564819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669842, 26.996929, 23.122992>,  <40.349674, 26.420256, 22.837616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669842, 26.996929, 23.122992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.295895, 27.094748, 23.020063>,  <40.071526, 27.153439, 22.958307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.295895, 27.094748, 23.020063>,  <40.669842, 26.996929, 23.122992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295895, 27.094748, 23.020063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082732, 0.554818, 0.827848,
		0.345212, 0.795220, -0.498451,
		-0.934871, 0.244545, -0.257320,
		40.015434, 27.168112, 22.942867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369949, 27.311182, 23.430702>,  <40.669842, 26.996929, 23.122992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369949, 27.311182, 23.430702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638588, 27.073029, 23.607101>,  <41.799770, 26.930136, 23.712942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638588, 27.073029, 23.607101>,  <41.369949, 27.311182, 23.430702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638588, 27.073029, 23.607101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522662, -0.041175, -0.851545,
		0.525156, 0.802384, 0.283532,
		0.671592, -0.595385, 0.440999,
		41.840065, 26.894413, 23.739401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028442, 27.617670, 23.374434>,  <41.369949, 27.311182, 23.430702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028442, 27.617670, 23.374434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.080608, 27.223461, 23.417767>,  <42.111908, 26.986937, 23.443766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.080608, 27.223461, 23.417767>,  <42.028442, 27.617670, 23.374434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080608, 27.223461, 23.417767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522867, -0.024468, -0.852063,
		0.842378, 0.167769, 0.512107,
		0.130419, -0.985523, 0.108332,
		42.119736, 26.927805, 23.450266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698544, 27.510912, 23.139687>,  <42.028442, 27.617670, 23.374434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698544, 27.510912, 23.139687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.520721, 27.152887, 23.125643>,  <42.414028, 26.938072, 23.117216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.520721, 27.152887, 23.125643>,  <42.698544, 27.510912, 23.139687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520721, 27.152887, 23.125643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432684, -0.180254, -0.883342,
		0.784319, -0.407884, 0.467412,
		-0.444554, -0.895064, -0.035108,
		42.387356, 26.884369, 23.115110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223839, 27.130314, 23.040257>,  <42.698544, 27.510912, 23.139687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223839, 27.130314, 23.040257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.906815, 26.906898, 22.942373>,  <42.716599, 26.772848, 22.883642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.906815, 26.906898, 22.942373>,  <43.223839, 27.130314, 23.040257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906815, 26.906898, 22.942373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442305, -0.250301, -0.861229,
		0.419780, -0.790811, 0.445423,
		-0.792559, -0.558540, -0.244709,
		42.669048, 26.739336, 22.868961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521759, 26.464258, 22.903618>,  <43.223839, 27.130314, 23.040257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521759, 26.464258, 22.903618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.164436, 26.470922, 22.723963>,  <42.950043, 26.474922, 22.616169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.164436, 26.470922, 22.723963>,  <43.521759, 26.464258, 22.903618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164436, 26.470922, 22.723963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427281, -0.278483, -0.860162,
		-0.139411, -0.960297, 0.241651,
		-0.893307, 0.016663, -0.449140,
		42.896446, 26.475922, 22.589220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453072, 25.788315, 22.547411>,  <43.521759, 26.464258, 22.903618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453072, 25.788315, 22.547411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.196178, 26.055689, 22.397358>,  <43.042042, 26.216114, 22.307325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.196178, 26.055689, 22.397358>,  <43.453072, 25.788315, 22.547411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196178, 26.055689, 22.397358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331123, -0.199442, -0.922269,
		-0.691295, -0.716531, -0.093245,
		-0.642237, 0.668436, -0.375133,
		43.003506, 26.256220, 22.284819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952110, 25.442883, 22.043943>,  <43.453072, 25.788315, 22.547411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952110, 25.442883, 22.043943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.988838, 25.829973, 21.950069>,  <43.010876, 26.062227, 21.893745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.988838, 25.829973, 21.950069>,  <42.952110, 25.442883, 22.043943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988838, 25.829973, 21.950069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199403, -0.248776, -0.947813,
		-0.975607, 0.040228, -0.215809,
		0.091817, 0.967725, -0.234686,
		43.016384, 26.120291, 21.879663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732235, 25.383337, 21.343174>,  <42.952110, 25.442883, 22.043943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732235, 25.383337, 21.343174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.897812, 25.745356, 21.382238>,  <42.997158, 25.962566, 21.405678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.897812, 25.745356, 21.382238>,  <42.732235, 25.383337, 21.343174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897812, 25.745356, 21.382238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322012, -0.045236, -0.945654,
		-0.851445, 0.422896, -0.310161,
		0.413944, 0.905048, 0.097662,
		43.021996, 26.016870, 21.411537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500355, 25.763577, 20.866035>,  <42.732235, 25.383337, 21.343174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500355, 25.763577, 20.866035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.846428, 25.946686, 20.947908>,  <43.054073, 26.056551, 20.997032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.846428, 25.946686, 20.947908>,  <42.500355, 25.763577, 20.866035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846428, 25.946686, 20.947908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357521, -0.276913, -0.891907,
		-0.351613, 0.844844, -0.403245,
		0.865186, 0.457775, 0.204683,
		43.105984, 26.084019, 21.009314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.140095, 32.838432, 34.623371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.532471, 32.915348, 34.612144>,  <37.767895, 32.961498, 34.605408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.532471, 32.915348, 34.612144>,  <37.140095, 32.838432, 34.623371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532471, 32.915348, 34.612144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162901, -0.892430, -0.420751,
		-0.105954, 0.408158, -0.906742,
		0.980937, 0.192290, -0.028067,
		37.826752, 32.973034, 34.603725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331753, 32.774590, 33.925976>,  <37.140095, 32.838432, 34.623371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331753, 32.774590, 33.925976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.658737, 32.736061, 34.153126>,  <37.854927, 32.712944, 34.289413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.658737, 32.736061, 34.153126>,  <37.331753, 32.774590, 33.925976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658737, 32.736061, 34.153126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259132, -0.819002, -0.511945,
		0.514399, 0.565649, -0.644542,
		0.817462, -0.096323, 0.567871,
		37.903976, 32.707165, 34.323486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809517, 32.779564, 33.436996>,  <37.331753, 32.774590, 33.925976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809517, 32.779564, 33.436996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.931286, 32.596760, 33.771294>,  <38.004345, 32.487080, 33.971874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.931286, 32.596760, 33.771294>,  <37.809517, 32.779564, 33.436996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931286, 32.596760, 33.771294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072513, -0.885962, -0.458054,
		0.949774, 0.078838, -0.302843,
		0.304419, -0.457008, 0.835746,
		38.022614, 32.459656, 34.022018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467285, 32.497654, 33.272957>,  <37.809517, 32.779564, 33.436996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467285, 32.497654, 33.272957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.424500, 32.257221, 33.589756>,  <38.398830, 32.112961, 33.779835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.424500, 32.257221, 33.589756>,  <38.467285, 32.497654, 33.272957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424500, 32.257221, 33.589756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027013, -0.794519, -0.606639,
		0.993896, -0.086281, 0.068747,
		-0.106962, -0.601079, 0.792000,
		38.392410, 32.076897, 33.827354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077675, 32.099911, 33.230030>,  <38.467285, 32.497654, 33.272957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077675, 32.099911, 33.230030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823441, 31.887850, 33.454517>,  <38.670898, 31.760612, 33.589211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823441, 31.887850, 33.454517>,  <39.077675, 32.099911, 33.230030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823441, 31.887850, 33.454517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193067, -0.812988, -0.549342,
		0.747501, -0.240800, 0.619078,
		-0.635584, -0.530157, 0.561218,
		38.632767, 31.728804, 33.622883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433327, 31.438162, 33.377403>,  <39.077675, 32.099911, 33.230030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433327, 31.438162, 33.377403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.043407, 31.355797, 33.411758>,  <38.809456, 31.306377, 33.432369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.043407, 31.355797, 33.411758>,  <39.433327, 31.438162, 33.377403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043407, 31.355797, 33.411758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116332, -0.797591, -0.591875,
		0.190375, -0.566965, 0.801441,
		-0.974794, -0.205911, 0.085885,
		38.750969, 31.294024, 33.437523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490414, 30.752493, 33.469501>,  <39.433327, 31.438162, 33.377403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490414, 30.752493, 33.469501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.128109, 30.851917, 33.332207>,  <38.910725, 30.911572, 33.249832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.128109, 30.851917, 33.332207>,  <39.490414, 30.752493, 33.469501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128109, 30.851917, 33.332207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047411, -0.745410, -0.664919,
		-0.421123, -0.618532, 0.663380,
		-0.905763, 0.248560, -0.343234,
		38.856380, 30.926485, 33.229237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131561, 30.113846, 33.416290>,  <39.490414, 30.752493, 33.469501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131561, 30.113846, 33.416290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.931095, 30.349886, 33.163113>,  <38.810814, 30.491510, 33.011208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.931095, 30.349886, 33.163113>,  <39.131561, 30.113846, 33.416290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931095, 30.349886, 33.163113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075313, -0.758394, -0.647431,
		-0.862069, -0.276800, 0.424522,
		-0.501163, 0.590101, -0.632941,
		38.780746, 30.526917, 32.973228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554638, 29.738276, 33.136681>,  <39.131561, 30.113846, 33.416290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554638, 29.738276, 33.136681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620792, 30.043633, 32.886921>,  <38.660484, 30.226847, 32.737064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620792, 30.043633, 32.886921>,  <38.554638, 29.738276, 33.136681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620792, 30.043633, 32.886921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136059, -0.644727, -0.752207,
		-0.976798, 0.039452, -0.210498,
		0.165390, 0.763394, -0.624400,
		38.670410, 30.272652, 32.699600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535290, 29.394661, 32.363640>,  <38.554638, 29.738276, 33.136681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535290, 29.394661, 32.363640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633625, 29.776131, 32.294277>,  <38.692627, 30.005013, 32.252659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633625, 29.776131, 32.294277>,  <38.535290, 29.394661, 32.363640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633625, 29.776131, 32.294277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139338, -0.211805, -0.967328,
		-0.959242, 0.213649, -0.184954,
		0.245843, 0.953673, -0.173403,
		38.707378, 30.062233, 32.242256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086201, 29.623962, 31.860130>,  <38.535290, 29.394661, 32.363640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086201, 29.623962, 31.860130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431725, 29.823988, 31.835569>,  <38.639038, 29.944004, 31.820833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431725, 29.823988, 31.835569>,  <38.086201, 29.623962, 31.860130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431725, 29.823988, 31.835569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132452, -0.342983, -0.929957,
		-0.486099, 0.795171, -0.362506,
		0.863808, 0.500065, -0.061402,
		38.690868, 29.974007, 31.817148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138756, 29.750811, 31.189209>,  <38.086201, 29.623962, 31.860130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138756, 29.750811, 31.189209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512619, 29.836758, 31.302519>,  <38.736938, 29.888325, 31.370504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512619, 29.836758, 31.302519>,  <38.138756, 29.750811, 31.189209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512619, 29.836758, 31.302519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355541, -0.560513, -0.747941,
		-0.001927, 0.799786, -0.600282,
		0.934659, 0.214866, 0.283277,
		38.793018, 29.901218, 31.387503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782345, 30.157806, 30.827049>,  <38.138756, 29.750811, 31.189209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782345, 30.157806, 30.827049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442062, 29.976316, 30.720896>,  <37.237892, 29.867422, 30.657204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442062, 29.976316, 30.720896>,  <37.782345, 30.157806, 30.827049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442062, 29.976316, 30.720896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384938, 0.193970, 0.902330,
		-0.357932, 0.869776, -0.339668,
		-0.850710, -0.453724, -0.265382,
		37.186848, 29.840199, 30.641281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466621, 30.491341, 31.262838>,  <37.782345, 30.157806, 30.827049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466621, 30.491341, 31.262838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206570, 30.215425, 31.135384>,  <37.050541, 30.049877, 31.058910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206570, 30.215425, 31.135384>,  <37.466621, 30.491341, 31.262838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206570, 30.215425, 31.135384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688609, 0.357623, 0.630812,
		-0.321174, 0.629524, -0.707493,
		-0.650127, -0.689786, -0.318637,
		37.011532, 30.008490, 31.039793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791630, 30.804548, 31.053974>,  <37.466621, 30.491341, 31.262838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791630, 30.804548, 31.053974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715721, 30.423279, 31.148165>,  <36.670177, 30.194517, 31.204679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715721, 30.423279, 31.148165>,  <36.791630, 30.804548, 31.053974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715721, 30.423279, 31.148165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638449, 0.302003, 0.707939,
		-0.745902, -0.015993, -0.665863,
		-0.189770, -0.953173, 0.235476,
		36.658791, 30.137327, 31.218807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103371, 30.779882, 31.101301>,  <36.791630, 30.804548, 31.053974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103371, 30.779882, 31.101301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230461, 30.461138, 31.306850>,  <36.306713, 30.269892, 31.430180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230461, 30.461138, 31.306850>,  <36.103371, 30.779882, 31.101301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230461, 30.461138, 31.306850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709332, 0.159882, 0.686503,
		-0.629206, -0.582624, -0.514441,
		0.317723, -0.796861, 0.513872,
		36.325779, 30.222080, 31.461012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524971, 30.350883, 31.255861>,  <36.103371, 30.779882, 31.101301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524971, 30.350883, 31.255861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801033, 30.229818, 31.518795>,  <35.966671, 30.157179, 31.676556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801033, 30.229818, 31.518795>,  <35.524971, 30.350883, 31.255861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801033, 30.229818, 31.518795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658998, 0.112474, 0.743688,
		-0.299019, -0.946438, -0.121830,
		0.690152, -0.302662, 0.657332,
		36.008080, 30.139019, 31.715994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192600, 29.926016, 31.727604>,  <35.524971, 30.350883, 31.255861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192600, 29.926016, 31.727604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522430, 29.973751, 31.948812>,  <35.720329, 30.002392, 32.081539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522430, 29.973751, 31.948812>,  <35.192600, 29.926016, 31.727604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522430, 29.973751, 31.948812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565006, 0.123596, 0.815777,
		0.029002, -0.985131, 0.169342,
		0.824577, 0.119338, 0.553021,
		35.769802, 30.009552, 32.114719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271847, 29.348768, 32.262001>,  <35.192600, 29.926016, 31.727604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271847, 29.348768, 32.262001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.477737, 29.675013, 32.367706>,  <35.601273, 29.870758, 32.431129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.477737, 29.675013, 32.367706>,  <35.271847, 29.348768, 32.262001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477737, 29.675013, 32.367706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637626, 0.158119, 0.753944,
		0.573138, -0.556580, 0.601442,
		0.514730, 0.815609, 0.264265,
		35.632156, 29.919695, 32.446987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476547, 29.316864, 32.980923>,  <35.271847, 29.348768, 32.262001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476547, 29.316864, 32.980923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449402, 29.697979, 32.862541>,  <35.433113, 29.926647, 32.791512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449402, 29.697979, 32.862541>,  <35.476547, 29.316864, 32.980923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449402, 29.697979, 32.862541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624757, 0.190693, 0.757175,
		0.777864, 0.236289, 0.582319,
		-0.067868, 0.952787, -0.295956,
		35.429043, 29.983816, 32.773754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381580, 29.634390, 33.629066>,  <35.476547, 29.316864, 32.980923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381580, 29.634390, 33.629066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304241, 29.959785, 33.409664>,  <35.257835, 30.155022, 33.278023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304241, 29.959785, 33.409664>,  <35.381580, 29.634390, 33.629066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304241, 29.959785, 33.409664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704970, 0.273629, 0.654327,
		0.682373, 0.513192, 0.520577,
		-0.193350, 0.813487, -0.548503,
		35.246235, 30.203831, 33.245113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264935, 30.182341, 34.126560>,  <35.381580, 29.634390, 33.629066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264935, 30.182341, 34.126560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124077, 30.328518, 33.781898>,  <35.039562, 30.416224, 33.575100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124077, 30.328518, 33.781898>,  <35.264935, 30.182341, 34.126560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124077, 30.328518, 33.781898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744106, 0.449109, 0.494577,
		0.567716, 0.815324, 0.113776,
		-0.352143, 0.365441, -0.861654,
		35.018433, 30.438150, 33.523403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216339, 30.933617, 34.107704>,  <35.264935, 30.182341, 34.126560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216339, 30.933617, 34.107704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937908, 30.786251, 33.861210>,  <34.770847, 30.697832, 33.713314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.937908, 30.786251, 33.861210>,  <35.216339, 30.933617, 34.107704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937908, 30.786251, 33.861210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701192, 0.533277, 0.473229,
		0.154281, 0.761504, -0.629531,
		-0.696080, -0.368412, -0.616235,
		34.729084, 30.675728, 33.676338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752556, 31.489031, 33.926247>,  <35.216339, 30.933617, 34.107704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752556, 31.489031, 33.926247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532677, 31.163860, 33.849323>,  <34.400749, 30.968758, 33.803169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532677, 31.163860, 33.849323>,  <34.752556, 31.489031, 33.926247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532677, 31.163860, 33.849323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794236, 0.437255, 0.421897,
		-0.258885, 0.384652, -0.886014,
		-0.549697, -0.812928, -0.192305,
		34.367767, 30.919983, 33.791630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143879, 31.714293, 33.606625>,  <34.752556, 31.489031, 33.926247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143879, 31.714293, 33.606625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063732, 31.339569, 33.721340>,  <34.015644, 31.114735, 33.790169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063732, 31.339569, 33.721340>,  <34.143879, 31.714293, 33.606625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063732, 31.339569, 33.721340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887758, 0.297424, 0.351319,
		-0.414415, -0.184203, -0.891252,
		-0.200365, -0.936807, 0.286784,
		34.003624, 31.058527, 33.807377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474628, 31.646730, 33.303608>,  <34.143879, 31.714293, 33.606625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474628, 31.646730, 33.303608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542568, 31.391436, 33.603958>,  <33.583332, 31.238258, 33.784168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542568, 31.391436, 33.603958>,  <33.474628, 31.646730, 33.303608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542568, 31.391436, 33.603958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918518, 0.173528, 0.355264,
		-0.357040, -0.750028, -0.556759,
		0.169845, -0.638236, 0.750871,
		33.593521, 31.199965, 33.829220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817608, 31.566694, 32.624935>,  <33.474628, 31.646730, 33.303608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817608, 31.566694, 32.624935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615025, 31.891787, 32.740147>,  <33.493473, 32.086842, 32.809273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615025, 31.891787, 32.740147>,  <33.817608, 31.566694, 32.624935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615025, 31.891787, 32.740147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137059, 0.253914, -0.957467,
		-0.851300, -0.524398, -0.017206,
		-0.506462, 0.812733, 0.288031,
		33.463085, 32.135605, 32.826557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183224, 31.618124, 32.307156>,  <33.817608, 31.566694, 32.624935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183224, 31.618124, 32.307156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359749, 31.964666, 32.400681>,  <33.465664, 32.172592, 32.456795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359749, 31.964666, 32.400681>,  <33.183224, 31.618124, 32.307156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359749, 31.964666, 32.400681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011637, 0.255015, -0.966867,
		-0.897277, 0.429414, 0.102461,
		0.441316, 0.866355, 0.233816,
		33.492142, 32.224571, 32.470825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852802, 32.143822, 31.876980>,  <33.183224, 31.618124, 32.307156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852802, 32.143822, 31.876980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218422, 32.276703, 31.970066>,  <33.437794, 32.356434, 32.025917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218422, 32.276703, 31.970066>,  <32.852802, 32.143822, 31.876980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218422, 32.276703, 31.970066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177715, 0.187728, -0.966010,
		-0.364602, 0.924336, 0.112554,
		0.914048, 0.332206, 0.232714,
		33.492638, 32.376366, 32.039879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092060, 32.843681, 31.569738>,  <32.852802, 32.143822, 31.876980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092060, 32.843681, 31.569738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431057, 32.644608, 31.643559>,  <33.634457, 32.525162, 31.687851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431057, 32.644608, 31.643559>,  <33.092060, 32.843681, 31.569738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431057, 32.644608, 31.643559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189742, -0.040658, -0.980992,
		0.495732, 0.866402, 0.059975,
		0.847495, -0.497689, 0.184549,
		33.685307, 32.495300, 31.698923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553749, 33.094189, 31.101974>,  <33.092060, 32.843681, 31.569738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553749, 33.094189, 31.101974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796722, 32.803841, 31.231056>,  <33.942505, 32.629631, 31.308504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796722, 32.803841, 31.231056>,  <33.553749, 33.094189, 31.101974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796722, 32.803841, 31.231056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348738, -0.121322, -0.929334,
		0.713727, 0.677048, 0.179444,
		0.607433, -0.725870, 0.322704,
		33.978951, 32.586079, 31.327868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087200, 33.274464, 30.789454>,  <33.553749, 33.094189, 31.101974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087200, 33.274464, 30.789454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171844, 32.892490, 30.872704>,  <34.222630, 32.663307, 30.922653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171844, 32.892490, 30.872704>,  <34.087200, 33.274464, 30.789454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171844, 32.892490, 30.872704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188786, -0.169001, -0.967367,
		0.958948, 0.243993, 0.144517,
		0.211607, -0.954938, 0.208126,
		34.235325, 32.606010, 30.935141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872944, 33.181347, 30.812149>,  <34.087200, 33.274464, 30.789454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872944, 33.181347, 30.812149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690117, 32.835579, 30.728373>,  <34.580421, 32.628117, 30.678106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690117, 32.835579, 30.728373>,  <34.872944, 33.181347, 30.812149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690117, 32.835579, 30.728373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498260, -0.053795, -0.865358,
		0.736765, -0.499886, 0.455293,
		-0.457072, -0.864419, -0.209439,
		34.552994, 32.576252, 30.665541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406013, 32.712494, 30.556086>,  <34.872944, 33.181347, 30.812149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406013, 32.712494, 30.556086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056896, 32.562634, 30.430950>,  <34.847424, 32.472717, 30.355869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056896, 32.562634, 30.430950>,  <35.406013, 32.712494, 30.556086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056896, 32.562634, 30.430950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381374, -0.123474, -0.916138,
		0.304602, -0.918909, 0.250648,
		-0.872796, -0.374648, -0.312837,
		34.795059, 32.450237, 30.337099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518593, 31.943941, 30.373882>,  <35.406013, 32.712494, 30.556086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518593, 31.943941, 30.373882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189327, 32.070656, 30.185392>,  <34.991768, 32.146687, 30.072298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189327, 32.070656, 30.185392>,  <35.518593, 31.943941, 30.373882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189327, 32.070656, 30.185392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324259, -0.418996, -0.848114,
		-0.466114, -0.850933, 0.242179,
		-0.823161, 0.316789, -0.471223,
		34.942379, 32.165691, 30.044025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344669, 31.376575, 29.989664>,  <35.518593, 31.943941, 30.373882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344669, 31.376575, 29.989664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148872, 31.676004, 29.810762>,  <35.031395, 31.855661, 29.703423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148872, 31.676004, 29.810762>,  <35.344669, 31.376575, 29.989664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148872, 31.676004, 29.810762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332309, -0.314063, -0.889345,
		-0.806205, -0.583955, -0.095026,
		-0.489494, 0.748573, -0.447252,
		35.002026, 31.900576, 29.676586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933552, 31.072046, 29.480825>,  <35.344669, 31.376575, 29.989664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933552, 31.072046, 29.480825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961010, 31.462084, 29.396463>,  <34.977486, 31.696106, 29.345846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961010, 31.462084, 29.396463>,  <34.933552, 31.072046, 29.480825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961010, 31.462084, 29.396463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288201, -0.221772, -0.931535,
		-0.955106, 0.003167, -0.296247,
		0.068650, 0.975093, -0.210903,
		34.981606, 31.754612, 29.333193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678089, 31.212788, 28.868357>,  <34.933552, 31.072046, 29.480825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678089, 31.212788, 28.868357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896046, 31.546597, 28.901009>,  <35.026821, 31.746881, 28.920599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896046, 31.546597, 28.901009>,  <34.678089, 31.212788, 28.868357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896046, 31.546597, 28.901009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322895, -0.118987, -0.938925,
		-0.773843, 0.537970, -0.334299,
		0.544891, 0.834524, 0.081630,
		35.059513, 31.796953, 28.925497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511692, 31.558731, 28.156723>,  <34.678089, 31.212788, 28.868357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511692, 31.558731, 28.156723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846176, 31.721426, 28.303869>,  <35.046867, 31.819042, 28.392157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846176, 31.721426, 28.303869>,  <34.511692, 31.558731, 28.156723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846176, 31.721426, 28.303869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449141, -0.123011, -0.884953,
		-0.314692, 0.905226, -0.285545,
		0.836207, 0.406737, 0.367863,
		35.097038, 31.843447, 28.414228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792122, 32.178364, 27.641809>,  <34.511692, 31.558731, 28.156723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792122, 32.178364, 27.641809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078156, 32.036934, 27.883020>,  <35.249775, 31.952078, 28.027746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078156, 32.036934, 27.883020>,  <34.792122, 32.178364, 27.641809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078156, 32.036934, 27.883020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618663, -0.081501, -0.781417,
		0.325433, 0.931851, 0.160460,
		0.715086, -0.353570, 0.603025,
		35.292683, 31.930862, 28.063929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436428, 32.525864, 27.444691>,  <34.792122, 32.178364, 27.641809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436428, 32.525864, 27.444691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554127, 32.192631, 27.632046>,  <35.624744, 31.992691, 27.744459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554127, 32.192631, 27.632046>,  <35.436428, 32.525864, 27.444691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554127, 32.192631, 27.632046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745306, -0.106772, -0.658118,
		0.598279, 0.542743, 0.589485,
		0.294248, -0.833084, 0.468389,
		35.642403, 31.942705, 27.772562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121212, 32.663311, 27.490215>,  <35.436428, 32.525864, 27.444691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121212, 32.663311, 27.490215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092278, 32.270451, 27.559675>,  <36.074917, 32.034737, 27.601351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092278, 32.270451, 27.559675>,  <36.121212, 32.663311, 27.490215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092278, 32.270451, 27.559675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721381, -0.171753, -0.670903,
		0.688750, 0.076736, 0.720927,
		-0.072339, -0.982147, 0.173650,
		36.070576, 31.975807, 27.611771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808510, 32.393784, 27.529108>,  <36.121212, 32.663311, 27.490215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808510, 32.393784, 27.529108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597763, 32.063953, 27.446657>,  <36.471313, 31.866056, 27.397186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597763, 32.063953, 27.446657>,  <36.808510, 32.393784, 27.529108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597763, 32.063953, 27.446657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684268, -0.267653, -0.678335,
		0.504167, -0.498440, 0.705247,
		-0.526871, -0.824572, -0.206125,
		36.439701, 31.816582, 27.384819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319393, 31.816032, 27.255465>,  <36.808510, 32.393784, 27.529108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319393, 31.816032, 27.255465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967636, 31.657253, 27.150322>,  <36.756580, 31.561985, 27.087236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967636, 31.657253, 27.150322>,  <37.319393, 31.816032, 27.255465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967636, 31.657253, 27.150322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389646, -0.282835, -0.876459,
		0.273566, -0.873175, 0.403394,
		-0.879396, -0.396950, -0.262855,
		36.703815, 31.538168, 27.071465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468555, 31.149599, 27.033621>,  <37.319393, 31.816032, 27.255465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468555, 31.149599, 27.033621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120529, 31.237648, 26.857201>,  <36.911713, 31.290478, 26.751348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120529, 31.237648, 26.857201>,  <37.468555, 31.149599, 27.033621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120529, 31.237648, 26.857201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309794, -0.451780, -0.836614,
		-0.383413, -0.864547, 0.324888,
		-0.870070, 0.220120, -0.441050,
		36.859509, 31.303684, 26.724886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370670, 30.551800, 26.730804>,  <37.468555, 31.149599, 27.033621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370670, 30.551800, 26.730804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133133, 30.797592, 26.523048>,  <36.990612, 30.945068, 26.398396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133133, 30.797592, 26.523048>,  <37.370670, 30.551800, 26.730804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133133, 30.797592, 26.523048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385870, -0.348948, -0.854014,
		-0.706016, -0.707565, -0.029891,
		-0.593840, 0.614482, -0.519391,
		36.954983, 30.981937, 26.367231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964149, 30.216814, 26.170767>,  <37.370670, 30.551800, 26.730804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964149, 30.216814, 26.170767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947880, 30.597466, 26.048946>,  <36.938118, 30.825855, 25.975855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947880, 30.597466, 26.048946>,  <36.964149, 30.216814, 26.170767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947880, 30.597466, 26.048946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159232, -0.294735, -0.942219,
		-0.986403, -0.086814, -0.139543,
		-0.040670, 0.951627, -0.304551,
		36.935680, 30.882954, 25.957581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624706, 30.158886, 25.502621>,  <36.964149, 30.216814, 26.170767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624706, 30.158886, 25.502621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.832848, 30.500446, 25.506212>,  <36.957733, 30.705383, 25.508368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.832848, 30.500446, 25.506212>,  <36.624706, 30.158886, 25.502621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832848, 30.500446, 25.506212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289894, -0.166748, -0.942421,
		-0.803238, 0.492996, -0.334309,
		0.520355, 0.853903, 0.008979,
		36.988953, 30.756617, 25.508905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435146, 30.523539, 24.868078>,  <36.624706, 30.158886, 25.502621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435146, 30.523539, 24.868078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773491, 30.698679, 24.989929>,  <36.976498, 30.803764, 25.063040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773491, 30.698679, 24.989929>,  <36.435146, 30.523539, 24.868078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773491, 30.698679, 24.989929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409333, -0.166673, -0.897032,
		-0.341994, 0.883462, -0.320211,
		0.845864, 0.437853, 0.304629,
		37.027248, 30.830034, 25.081318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526375, 31.118801, 24.367077>,  <36.435146, 30.523539, 24.868078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526375, 31.118801, 24.367077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893124, 31.064749, 24.517319>,  <37.113174, 31.032318, 24.607464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893124, 31.064749, 24.517319>,  <36.526375, 31.118801, 24.367077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893124, 31.064749, 24.517319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382059, 0.024532, -0.923812,
		0.115620, 0.990524, 0.074120,
		0.916877, -0.135129, 0.375603,
		37.168186, 31.024210, 24.629999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971764, 31.424660, 23.877808>,  <36.526375, 31.118801, 24.367077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971764, 31.424660, 23.877808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251694, 31.232990, 24.089710>,  <37.419651, 31.117989, 24.216852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251694, 31.232990, 24.089710>,  <36.971764, 31.424660, 23.877808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251694, 31.232990, 24.089710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550138, -0.111490, -0.827597,
		0.455625, 0.870611, 0.185588,
		0.699824, -0.479173, 0.529754,
		37.461639, 31.089239, 24.248636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568798, 31.709078, 23.675251>,  <36.971764, 31.424660, 23.877808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568798, 31.709078, 23.675251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661476, 31.359045, 23.845213>,  <37.717083, 31.149025, 23.947191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661476, 31.359045, 23.845213>,  <37.568798, 31.709078, 23.675251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661476, 31.359045, 23.845213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664177, -0.176837, -0.726359,
		0.710764, 0.450507, 0.540238,
		0.231695, -0.875084, 0.424906,
		37.730984, 31.096519, 23.972685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319893, 31.639801, 23.622780>,  <37.568798, 31.709078, 23.675251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319893, 31.639801, 23.622780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.173576, 31.271687, 23.678301>,  <38.085785, 31.050817, 23.711613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.173576, 31.271687, 23.678301>,  <38.319893, 31.639801, 23.622780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173576, 31.271687, 23.678301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517914, -0.325192, -0.791211,
		0.773280, -0.217530, 0.595583,
		-0.365791, -0.920288, 0.138802,
		38.063839, 30.995600, 23.719942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851093, 31.167892, 23.561192>,  <38.319893, 31.639801, 23.622780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851093, 31.167892, 23.561192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528248, 30.962975, 23.443802>,  <38.334541, 30.840025, 23.373367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528248, 30.962975, 23.443802>,  <38.851093, 31.167892, 23.561192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528248, 30.962975, 23.443802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482355, -0.285535, -0.828133,
		0.340450, -0.809953, 0.477566,
		-0.807111, -0.512294, -0.293474,
		38.286114, 30.809286, 23.355759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303604, 31.703127, 23.658815>,  <38.851093, 31.167892, 23.561192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303604, 31.703127, 23.658815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.447662, 32.061031, 23.553209>,  <39.534096, 32.275772, 23.489845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.447662, 32.061031, 23.553209>,  <39.303604, 31.703127, 23.658815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447662, 32.061031, 23.553209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223691, 0.357576, 0.906698,
		0.905682, -0.267481, 0.328927,
		0.360141, 0.894759, -0.264017,
		39.555706, 32.329460, 23.474005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874683, 31.810528, 24.126064>,  <39.303604, 31.703127, 23.658815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874683, 31.810528, 24.126064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727142, 32.154308, 23.984480>,  <39.638618, 32.360577, 23.899529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727142, 32.154308, 23.984480>,  <39.874683, 31.810528, 24.126064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727142, 32.154308, 23.984480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129957, 0.329387, 0.935209,
		0.920359, 0.390952, -0.009803,
		-0.368851, 0.859454, -0.353961,
		39.616486, 32.412144, 23.878292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181625, 32.457367, 24.542639>,  <39.874683, 31.810528, 24.126064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181625, 32.457367, 24.542639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866489, 32.628716, 24.365637>,  <39.677410, 32.731525, 24.259436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866489, 32.628716, 24.365637>,  <40.181625, 32.457367, 24.542639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866489, 32.628716, 24.365637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220125, 0.475181, 0.851909,
		0.575203, 0.768572, -0.280070,
		-0.787837, 0.428370, -0.442507,
		39.630138, 32.757225, 24.232885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240414, 33.191383, 24.749920>,  <40.181625, 32.457367, 24.542639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240414, 33.191383, 24.749920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870667, 33.107635, 24.622349>,  <39.648819, 33.057384, 24.545807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870667, 33.107635, 24.622349>,  <40.240414, 33.191383, 24.749920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870667, 33.107635, 24.622349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379542, 0.589507, 0.713042,
		0.038717, 0.780156, -0.624385,
		-0.924364, -0.209374, -0.318926,
		39.593357, 33.044823, 24.526670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939228, 33.724442, 25.082489>,  <40.240414, 33.191383, 24.749920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939228, 33.724442, 25.082489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650665, 33.467083, 24.980022>,  <39.477528, 33.312668, 24.918543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650665, 33.467083, 24.980022>,  <39.939228, 33.724442, 25.082489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650665, 33.467083, 24.980022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508199, 0.240561, 0.826961,
		-0.470438, 0.726757, -0.500513,
		-0.721403, -0.643394, -0.256168,
		39.434246, 33.274063, 24.903172>
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
