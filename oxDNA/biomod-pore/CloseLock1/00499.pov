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
	<24.645754, 35.088894, 35.477741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544291, 34.826466, 35.193424>,  <24.483412, 34.669006, 35.022835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544291, 34.826466, 35.193424>,  <24.645754, 35.088894, 35.477741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544291, 34.826466, 35.193424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912145, -0.082334, 0.401512,
		-0.321943, 0.750192, -0.577550,
		-0.253660, -0.656074, -0.710791,
		24.468193, 34.629642, 34.980186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996981, 35.570351, 35.144413>,  <24.645754, 35.088894, 35.477741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996981, 35.570351, 35.144413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927670, 35.323864, 34.837101>,  <24.886084, 35.175972, 34.652714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927670, 35.323864, 34.837101>,  <24.996981, 35.570351, 35.144413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927670, 35.323864, 34.837101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260899, 0.723487, -0.639138,
		0.949688, -0.311190, 0.035408,
		-0.173276, -0.616220, -0.768276,
		24.875687, 35.138996, 34.606617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660595, 35.538097, 34.721294>,  <24.996981, 35.570351, 35.144413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660595, 35.538097, 34.721294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335625, 35.439537, 34.509918>,  <25.140642, 35.380402, 34.383091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335625, 35.439537, 34.509918>,  <25.660595, 35.538097, 34.721294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335625, 35.439537, 34.509918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130775, 0.806223, -0.576977,
		0.568207, -0.537858, -0.622775,
		-0.812428, -0.246399, -0.528440,
		25.091896, 35.365616, 34.351387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749569, 35.458584, 34.032784>,  <25.660595, 35.538097, 34.721294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749569, 35.458584, 34.032784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380154, 35.600376, 34.091335>,  <25.158504, 35.685452, 34.126465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380154, 35.600376, 34.091335>,  <25.749569, 35.458584, 34.032784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380154, 35.600376, 34.091335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254135, 0.851507, -0.458641,
		-0.287222, -0.386371, -0.876482,
		-0.923536, 0.354476, 0.146381,
		25.103092, 35.706718, 34.135250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485909, 35.736141, 33.374893>,  <25.749569, 35.458584, 34.032784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485909, 35.736141, 33.374893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330994, 35.924011, 33.692234>,  <25.238045, 36.036736, 33.882641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330994, 35.924011, 33.692234>,  <25.485909, 35.736141, 33.374893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330994, 35.924011, 33.692234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265779, 0.880855, -0.391734,
		-0.882819, 0.059143, -0.465975,
		-0.387288, 0.469677, 0.793354,
		25.214808, 36.064915, 33.930241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064257, 36.012970, 32.993706>,  <25.485909, 35.736141, 33.374893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064257, 36.012970, 32.993706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452793, 36.022175, 33.088333>,  <26.685915, 36.027699, 33.145107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452793, 36.022175, 33.088333>,  <26.064257, 36.012970, 32.993706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452793, 36.022175, 33.088333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236028, 0.023851, -0.971453,
		-0.027999, 0.999451, 0.017736,
		0.971343, 0.023013, 0.236566,
		26.744196, 36.029079, 33.159302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454235, 36.725021, 32.952431>,  <26.064257, 36.012970, 32.993706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454235, 36.725021, 32.952431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632479, 36.374985, 32.876915>,  <26.739426, 36.164963, 32.831604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632479, 36.374985, 32.876915>,  <26.454235, 36.725021, 32.952431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632479, 36.374985, 32.876915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104050, 0.260086, -0.959963,
		0.889160, 0.408124, 0.206951,
		0.445609, -0.875094, -0.188793,
		26.766161, 36.112457, 32.820278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010853, 36.887402, 32.581486>,  <26.454235, 36.725021, 32.952431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010853, 36.887402, 32.581486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930361, 36.505882, 32.492252>,  <26.882065, 36.276970, 32.438713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930361, 36.505882, 32.492252>,  <27.010853, 36.887402, 32.581486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930361, 36.505882, 32.492252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117156, 0.202672, -0.972213,
		0.972512, -0.221775, 0.070960,
		-0.201231, -0.953803, -0.223083,
		26.869991, 36.219742, 32.425327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504868, 36.553978, 32.211552>,  <27.010853, 36.887402, 32.581486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504868, 36.553978, 32.211552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188740, 36.323128, 32.129261>,  <26.999063, 36.184616, 32.079887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188740, 36.323128, 32.129261>,  <27.504868, 36.553978, 32.211552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188740, 36.323128, 32.129261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215350, 0.052700, -0.975114,
		0.573605, -0.814953, 0.082635,
		-0.790317, -0.577125, -0.205729,
		26.951645, 36.149990, 32.067543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736898, 36.112579, 31.742264>,  <27.504868, 36.553978, 32.211552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736898, 36.112579, 31.742264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339685, 36.128731, 31.697989>,  <27.101357, 36.138420, 31.671423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339685, 36.128731, 31.697989>,  <27.736898, 36.112579, 31.742264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339685, 36.128731, 31.697989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106683, -0.090619, -0.990155,
		-0.050006, -0.995067, 0.085681,
		-0.993035, 0.040373, -0.110688,
		27.041775, 36.140846, 31.664782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574318, 35.637150, 31.271534>,  <27.736898, 36.112579, 31.742264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574318, 35.637150, 31.271534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248795, 35.869164, 31.257261>,  <27.053480, 36.008373, 31.248697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248795, 35.869164, 31.257261>,  <27.574318, 35.637150, 31.271534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248795, 35.869164, 31.257261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110901, 0.094738, -0.989306,
		-0.570451, -0.809064, -0.141425,
		-0.813810, 0.580035, -0.035682,
		27.004652, 36.043175, 31.246557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058702, 35.272861, 30.868998>,  <27.574318, 35.637150, 31.271534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058702, 35.272861, 30.868998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996181, 35.667576, 30.851906>,  <26.958670, 35.904404, 30.841650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996181, 35.667576, 30.851906>,  <27.058702, 35.272861, 30.868998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996181, 35.667576, 30.851906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046893, -0.035800, -0.998258,
		-0.986596, -0.158033, -0.040677,
		-0.156302, 0.986785, -0.042730,
		26.949291, 35.963612, 30.839087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557039, 35.279888, 30.354362>,  <27.058702, 35.272861, 30.868998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557039, 35.279888, 30.354362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692753, 35.654148, 30.393248>,  <26.774181, 35.878704, 30.416578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692753, 35.654148, 30.393248>,  <26.557039, 35.279888, 30.354362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692753, 35.654148, 30.393248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142963, 0.153428, -0.977763,
		-0.929757, 0.317842, 0.185818,
		0.339285, 0.935648, 0.097212,
		26.794538, 35.934841, 30.422411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267471, 35.620655, 29.731077>,  <26.557039, 35.279888, 30.354362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267471, 35.620655, 29.731077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543335, 35.882877, 29.854111>,  <26.708853, 36.040211, 29.927931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543335, 35.882877, 29.854111>,  <26.267471, 35.620655, 29.731077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543335, 35.882877, 29.854111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149742, 0.286475, -0.946314,
		-0.708481, 0.698694, 0.099405,
		0.689661, 0.655560, 0.307586,
		26.750233, 36.079544, 29.946386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035528, 36.229889, 29.475794>,  <26.267471, 35.620655, 29.731077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035528, 36.229889, 29.475794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419329, 36.304668, 29.560087>,  <26.649609, 36.349537, 29.610662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419329, 36.304668, 29.560087>,  <26.035528, 36.229889, 29.475794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419329, 36.304668, 29.560087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109279, 0.442474, -0.890098,
		-0.259644, 0.877079, 0.404125,
		0.959501, 0.186946, 0.210732,
		26.707180, 36.360752, 29.623306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149609, 36.842003, 29.279205>,  <26.035528, 36.229889, 29.475794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149609, 36.842003, 29.279205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523132, 36.698978, 29.274382>,  <26.747248, 36.613163, 29.271488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523132, 36.698978, 29.274382>,  <26.149609, 36.842003, 29.279205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523132, 36.698978, 29.274382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208104, 0.570284, -0.794650,
		0.291015, 0.739543, 0.606948,
		0.933811, -0.357564, -0.012060,
		26.803276, 36.591709, 29.270763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685574, 37.451057, 29.177017>,  <26.149609, 36.842003, 29.279205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685574, 37.451057, 29.177017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857622, 37.105946, 29.070726>,  <26.960852, 36.898880, 29.006952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857622, 37.105946, 29.070726>,  <26.685574, 37.451057, 29.177017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857622, 37.105946, 29.070726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297071, 0.413219, -0.860813,
		0.852493, 0.291314, 0.434041,
		0.430121, -0.862778, -0.265725,
		26.986658, 36.847111, 28.991009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345800, 37.685436, 28.894238>,  <26.685574, 37.451057, 29.177017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345800, 37.685436, 28.894238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294895, 37.318489, 28.743383>,  <27.264353, 37.098320, 28.652870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294895, 37.318489, 28.743383>,  <27.345800, 37.685436, 28.894238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294895, 37.318489, 28.743383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368252, 0.309351, -0.876751,
		0.920975, -0.250460, 0.298456,
		-0.127264, -0.917373, -0.377137,
		27.256716, 37.043278, 28.630243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938353, 37.583248, 28.448097>,  <27.345800, 37.685436, 28.894238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938353, 37.583248, 28.448097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698502, 37.287163, 28.326424>,  <27.554592, 37.109512, 28.253420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698502, 37.287163, 28.326424>,  <27.938353, 37.583248, 28.448097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698502, 37.287163, 28.326424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363677, 0.086540, -0.927497,
		0.712873, -0.666775, 0.217308,
		-0.599626, -0.740217, -0.304183,
		27.518614, 37.065098, 28.235168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361095, 37.120018, 28.010836>,  <27.938353, 37.583248, 28.448097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361095, 37.120018, 28.010836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975023, 37.073631, 27.917049>,  <27.743380, 37.045799, 27.860777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975023, 37.073631, 27.917049>,  <28.361095, 37.120018, 28.010836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975023, 37.073631, 27.917049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219638, 0.127511, -0.967213,
		0.142076, -0.985033, -0.097597,
		-0.965181, -0.115982, -0.234467,
		27.685469, 37.038841, 27.846710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413582, 36.654160, 27.444471>,  <28.361095, 37.120018, 28.010836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413582, 36.654160, 27.444471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074389, 36.865528, 27.427979>,  <27.870872, 36.992348, 27.418083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074389, 36.865528, 27.427979>,  <28.413582, 36.654160, 27.444471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074389, 36.865528, 27.427979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024880, -0.038017, -0.998967,
		-0.529443, -0.848131, 0.019091,
		-0.847981, 0.528421, -0.041230,
		27.819994, 37.024055, 27.415609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118681, 36.479519, 26.786715>,  <28.413582, 36.654160, 27.444471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118681, 36.479519, 26.786715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887167, 36.792442, 26.878798>,  <27.748259, 36.980198, 26.934048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887167, 36.792442, 26.878798>,  <28.118681, 36.479519, 26.786715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887167, 36.792442, 26.878798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110173, 0.204693, -0.972606,
		-0.808004, -0.588291, -0.032283,
		-0.578784, 0.782313, 0.230207,
		27.713531, 37.027138, 26.947859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516644, 36.455624, 26.411018>,  <28.118681, 36.479519, 26.786715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516644, 36.455624, 26.411018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517078, 36.842388, 26.513060>,  <27.517340, 37.074448, 26.574284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517078, 36.842388, 26.513060>,  <27.516644, 36.455624, 26.411018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517078, 36.842388, 26.513060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235012, 0.248204, -0.939768,
		-0.971992, -0.058929, 0.227507,
		0.001089, 0.966914, 0.255101,
		27.517405, 37.132462, 26.589590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884804, 36.853771, 26.054382>,  <27.516644, 36.455624, 26.411018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884804, 36.853771, 26.054382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164923, 37.124344, 26.145615>,  <27.332994, 37.286690, 26.200354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164923, 37.124344, 26.145615>,  <26.884804, 36.853771, 26.054382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164923, 37.124344, 26.145615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131742, 0.436484, -0.890014,
		-0.701591, 0.593225, 0.394783,
		0.700296, 0.676436, 0.228081,
		27.375011, 37.327274, 26.214039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577026, 37.474766, 25.790232>,  <26.884804, 36.853771, 26.054382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577026, 37.474766, 25.790232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970343, 37.540829, 25.820850>,  <27.206333, 37.580467, 25.839222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970343, 37.540829, 25.820850>,  <26.577026, 37.474766, 25.790232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970343, 37.540829, 25.820850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033813, 0.247475, -0.968304,
		-0.178865, 0.954714, 0.237756,
		0.983292, 0.165156, 0.076546,
		27.265331, 37.590374, 25.843815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702839, 38.054485, 25.439331>,  <26.577026, 37.474766, 25.790232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702839, 38.054485, 25.439331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020336, 37.811562, 25.452909>,  <27.210835, 37.665810, 25.461056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020336, 37.811562, 25.452909>,  <26.702839, 38.054485, 25.439331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020336, 37.811562, 25.452909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154267, 0.147013, -0.977031,
		0.588366, 0.780748, 0.210377,
		0.793743, -0.607306, 0.033946,
		27.258459, 37.629372, 25.463093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453634, 38.540462, 24.866236>,  <26.702839, 38.054485, 25.439331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453634, 38.540462, 24.866236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787291, 38.527107, 24.646021>,  <26.987484, 38.519096, 24.513891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787291, 38.527107, 24.646021>,  <26.453634, 38.540462, 24.866236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787291, 38.527107, 24.646021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100332, -0.990697, -0.091938,
		-0.542347, 0.131926, -0.829732,
		0.834142, -0.033386, -0.550538,
		27.037533, 38.517090, 24.480860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430445, 38.108650, 24.251627>,  <26.453634, 38.540462, 24.866236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430445, 38.108650, 24.251627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823635, 38.114155, 24.324919>,  <27.059549, 38.117458, 24.368895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823635, 38.114155, 24.324919>,  <26.430445, 38.108650, 24.251627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823635, 38.114155, 24.324919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078274, -0.933539, -0.349827,
		0.166239, 0.358213, -0.918721,
		0.982974, 0.013757, 0.183230,
		27.118526, 38.118282, 24.379889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947758, 37.511295, 24.146843>,  <26.430445, 38.108650, 24.251627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947758, 37.511295, 24.146843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158779, 37.651508, 23.837311>,  <27.285393, 37.735638, 23.651592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158779, 37.651508, 23.837311>,  <26.947758, 37.511295, 24.146843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158779, 37.651508, 23.837311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811146, 0.062832, 0.581459,
		0.252444, -0.934439, -0.251188,
		0.527556, 0.350536, -0.773828,
		27.317045, 37.756668, 23.605162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632500, 37.176048, 24.033377>,  <26.947758, 37.511295, 24.146843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632500, 37.176048, 24.033377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644598, 37.563931, 23.936411>,  <27.651857, 37.796658, 23.878231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644598, 37.563931, 23.936411>,  <27.632500, 37.176048, 24.033377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644598, 37.563931, 23.936411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893660, 0.082399, 0.441115,
		0.447724, -0.229979, -0.864091,
		0.030247, 0.969701, -0.242415,
		27.653671, 37.854839, 23.863686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299469, 37.399010, 23.601336>,  <27.632500, 37.176048, 24.033377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299469, 37.399010, 23.601336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143425, 37.701588, 23.811329>,  <28.049799, 37.883133, 23.937325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143425, 37.701588, 23.811329>,  <28.299469, 37.399010, 23.601336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143425, 37.701588, 23.811329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886603, 0.154727, 0.435885,
		0.248493, 0.635495, -0.731025,
		-0.390112, 0.756443, 0.524983,
		28.026392, 37.928520, 23.968824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733135, 38.055386, 23.443937>,  <28.299469, 37.399010, 23.601336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733135, 38.055386, 23.443937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558281, 38.020050, 23.801956>,  <28.453369, 37.998848, 24.016768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558281, 38.020050, 23.801956>,  <28.733135, 38.055386, 23.443937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558281, 38.020050, 23.801956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897214, -0.112102, 0.427130,
		0.062605, 0.989763, 0.128260,
		-0.437136, -0.088336, 0.895047,
		28.427141, 37.993549, 24.070471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034323, 38.568626, 23.924351>,  <28.733135, 38.055386, 23.443937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034323, 38.568626, 23.924351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924644, 38.208744, 24.060204>,  <28.858837, 37.992817, 24.141714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924644, 38.208744, 24.060204>,  <29.034323, 38.568626, 23.924351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924644, 38.208744, 24.060204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924661, -0.149618, 0.350166,
		-0.264231, 0.410058, 0.872946,
		-0.274197, -0.899704, 0.339631,
		28.842386, 37.938831, 24.162092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219326, 38.416367, 24.670933>,  <29.034323, 38.568626, 23.924351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219326, 38.416367, 24.670933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186928, 38.074268, 24.466190>,  <29.167488, 37.869011, 24.343346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186928, 38.074268, 24.466190>,  <29.219326, 38.416367, 24.670933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186928, 38.074268, 24.466190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856227, -0.322584, 0.403505,
		-0.510211, -0.405582, 0.758411,
		-0.080997, -0.855245, -0.511856,
		29.162628, 37.817696, 24.312634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494211, 37.877296, 25.060141>,  <29.219326, 38.416367, 24.670933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494211, 37.877296, 25.060141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500280, 37.708366, 24.697613>,  <29.503922, 37.607010, 24.480097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500280, 37.708366, 24.697613>,  <29.494211, 37.877296, 25.060141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500280, 37.708366, 24.697613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850935, -0.470519, 0.233497,
		-0.525051, -0.774762, 0.352229,
		0.015175, -0.422322, -0.906319,
		29.504833, 37.581669, 24.425716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810366, 37.303173, 25.287855>,  <29.494211, 37.877296, 25.060141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810366, 37.303173, 25.287855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854343, 37.635670, 25.505825>,  <29.880730, 37.835167, 25.636606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854343, 37.635670, 25.505825>,  <29.810366, 37.303173, 25.287855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854343, 37.635670, 25.505825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239310, -0.554258, 0.797200,
		0.964698, 0.042757, -0.259864,
		0.109946, 0.831246, 0.544924,
		29.887327, 37.885044, 25.669302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477667, 37.302750, 25.611311>,  <29.810366, 37.303173, 25.287855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477667, 37.302750, 25.611311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283598, 37.565823, 25.841810>,  <30.167156, 37.723667, 25.980110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283598, 37.565823, 25.841810>,  <30.477667, 37.302750, 25.611311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283598, 37.565823, 25.841810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341877, -0.463876, 0.817275,
		0.804816, 0.593525, 0.000213,
		-0.485172, 0.657683, 0.576247,
		30.138046, 37.763126, 26.014685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953224, 37.642925, 26.071539>,  <30.477667, 37.302750, 25.611311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953224, 37.642925, 26.071539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590000, 37.681751, 26.234516>,  <30.372066, 37.705048, 26.332302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590000, 37.681751, 26.234516>,  <30.953224, 37.642925, 26.071539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590000, 37.681751, 26.234516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391742, -0.147412, 0.908189,
		0.148216, 0.984301, 0.095834,
		-0.908058, 0.097066, 0.407441,
		30.317583, 37.710873, 26.356749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159498, 37.903202, 26.693731>,  <30.953224, 37.642925, 26.071539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159498, 37.903202, 26.693731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784807, 37.767624, 26.728741>,  <30.559992, 37.686279, 26.749746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784807, 37.767624, 26.728741>,  <31.159498, 37.903202, 26.693731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784807, 37.767624, 26.728741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195610, -0.299467, 0.933840,
		-0.290308, 0.891873, 0.346819,
		-0.936727, -0.338942, 0.087522,
		30.503790, 37.665939, 26.754997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948500, 38.104160, 27.299597>,  <31.159498, 37.903202, 26.693731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948500, 38.104160, 27.299597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690943, 37.803097, 27.244591>,  <30.536409, 37.622459, 27.211586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690943, 37.803097, 27.244591>,  <30.948500, 38.104160, 27.299597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690943, 37.803097, 27.244591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094442, -0.256542, 0.961908,
		-0.759266, 0.606377, 0.236268,
		-0.643892, -0.752657, -0.137516,
		30.497776, 37.577301, 27.203337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462391, 38.117481, 27.964346>,  <30.948500, 38.104160, 27.299597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462391, 38.117481, 27.964346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453510, 37.748291, 27.810658>,  <30.448181, 37.526779, 27.718445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453510, 37.748291, 27.810658>,  <30.462391, 38.117481, 27.964346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453510, 37.748291, 27.810658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063887, -0.382221, 0.921860,
		-0.997710, 0.045015, -0.050480,
		-0.022204, -0.922974, -0.384222,
		30.446850, 37.471397, 27.695391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986307, 37.749084, 28.367428>,  <30.462391, 38.117481, 27.964346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986307, 37.749084, 28.367428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206720, 37.471390, 28.182217>,  <30.338968, 37.304771, 28.071091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206720, 37.471390, 28.182217>,  <29.986307, 37.749084, 28.367428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206720, 37.471390, 28.182217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012324, -0.548036, 0.836364,
		-0.834393, -0.466570, -0.293430,
		0.551032, -0.694240, -0.463027,
		30.372030, 37.263119, 28.043308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678621, 37.086090, 28.565870>,  <29.986307, 37.749084, 28.367428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678621, 37.086090, 28.565870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040470, 36.982285, 28.430630>,  <30.257580, 36.920002, 28.349485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040470, 36.982285, 28.430630>,  <29.678621, 37.086090, 28.565870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040470, 36.982285, 28.430630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135546, -0.576904, 0.805487,
		-0.404089, -0.774488, -0.486703,
		0.904621, -0.259518, -0.338100,
		30.311857, 36.904430, 28.329199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731483, 36.399940, 28.513384>,  <29.678621, 37.086090, 28.565870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731483, 36.399940, 28.513384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112743, 36.516006, 28.547586>,  <30.341499, 36.585648, 28.568108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112743, 36.516006, 28.547586>,  <29.731483, 36.399940, 28.513384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112743, 36.516006, 28.547586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144657, -0.685457, 0.713599,
		0.265673, -0.667797, -0.695316,
		0.953149, 0.290166, 0.085506,
		30.398687, 36.603058, 28.573238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140995, 35.875797, 28.641125>,  <29.731483, 36.399940, 28.513384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140995, 35.875797, 28.641125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412971, 36.128944, 28.789265>,  <30.576159, 36.280830, 28.878149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412971, 36.128944, 28.789265>,  <30.140995, 35.875797, 28.641125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412971, 36.128944, 28.789265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012811, -0.515246, 0.856946,
		0.733153, -0.577930, -0.358446,
		0.679943, 0.632865, 0.370351,
		30.616955, 36.318806, 28.900370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680634, 35.419029, 28.976763>,  <30.140995, 35.875797, 28.641125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680634, 35.419029, 28.976763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714277, 35.785625, 29.133209>,  <30.734463, 36.005585, 29.227077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714277, 35.785625, 29.133209>,  <30.680634, 35.419029, 28.976763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714277, 35.785625, 29.133209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126951, -0.399165, 0.908048,
		0.988337, -0.026722, -0.149922,
		0.084109, 0.916489, 0.391117,
		30.739510, 36.060574, 29.250544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200357, 35.388012, 29.421503>,  <30.680634, 35.419029, 28.976763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200357, 35.388012, 29.421503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007231, 35.713928, 29.549883>,  <30.891356, 35.909477, 29.626911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007231, 35.713928, 29.549883>,  <31.200357, 35.388012, 29.421503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007231, 35.713928, 29.549883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050618, -0.339918, 0.939092,
		0.874258, 0.469653, 0.122874,
		-0.482815, 0.814789, 0.320949,
		30.862387, 35.958366, 29.646168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479153, 35.581905, 30.052561>,  <31.200357, 35.388012, 29.421503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479153, 35.581905, 30.052561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109156, 35.732037, 30.076263>,  <30.887157, 35.822117, 30.090485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109156, 35.732037, 30.076263>,  <31.479153, 35.581905, 30.052561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109156, 35.732037, 30.076263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046494, -0.266576, 0.962692,
		0.377126, 0.887729, 0.264032,
		-0.924994, 0.375332, 0.059259,
		30.831657, 35.844635, 30.094042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408075, 35.706333, 30.767048>,  <31.479153, 35.581905, 30.052561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408075, 35.706333, 30.767048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030613, 35.785229, 30.660759>,  <30.804136, 35.832565, 30.596987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030613, 35.785229, 30.660759>,  <31.408075, 35.706333, 30.767048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030613, 35.785229, 30.660759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287665, -0.091993, 0.953303,
		0.163588, 0.976029, 0.143550,
		-0.943657, 0.197243, -0.265720,
		30.747517, 35.844402, 30.581043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131235, 36.340317, 31.181170>,  <31.408075, 35.706333, 30.767048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131235, 36.340317, 31.181170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831427, 36.117241, 31.038513>,  <30.651541, 35.983395, 30.952919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831427, 36.117241, 31.038513>,  <31.131235, 36.340317, 31.181170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831427, 36.117241, 31.038513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505295, 0.133939, 0.852489,
		-0.427660, 0.819168, -0.382191,
		-0.749522, -0.557694, -0.356641,
		30.606569, 35.949932, 30.931520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426512, 36.590553, 31.389412>,  <31.131235, 36.340317, 31.181170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426512, 36.590553, 31.389412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353971, 36.202942, 31.322359>,  <30.310448, 35.970375, 31.282127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353971, 36.202942, 31.322359>,  <30.426512, 36.590553, 31.389412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353971, 36.202942, 31.322359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608281, -0.023409, 0.793377,
		-0.772726, 0.245850, -0.585194,
		-0.181353, -0.969025, -0.167634,
		30.299566, 35.912235, 31.272068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705017, 36.488464, 31.122015>,  <30.426512, 36.590553, 31.389412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705017, 36.488464, 31.122015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805294, 36.141262, 31.293467>,  <29.865459, 35.932941, 31.396338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805294, 36.141262, 31.293467>,  <29.705017, 36.488464, 31.122015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805294, 36.141262, 31.293467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864209, -0.001145, 0.503131,
		-0.436229, -0.496556, -0.750424,
		0.250692, -0.868004, 0.428629,
		29.880501, 35.880859, 31.422056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064432, 36.105404, 31.165844>,  <29.705017, 36.488464, 31.122015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064432, 36.105404, 31.165844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295891, 35.892349, 31.412895>,  <29.434767, 35.764515, 31.561125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295891, 35.892349, 31.412895>,  <29.064432, 36.105404, 31.165844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295891, 35.892349, 31.412895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813811, -0.327251, 0.480228,
		-0.053670, -0.780513, -0.622831,
		0.578646, -0.532641, 0.617626,
		29.469484, 35.732555, 31.598183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684372, 35.434357, 31.173809>,  <29.064432, 36.105404, 31.165844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684372, 35.434357, 31.173809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924873, 35.423080, 31.493233>,  <29.069174, 35.416313, 31.684887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924873, 35.423080, 31.493233>,  <28.684372, 35.434357, 31.173809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924873, 35.423080, 31.493233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738328, -0.401763, 0.541718,
		0.305559, -0.915310, -0.262378,
		0.601253, -0.028194, 0.798561,
		29.105249, 35.414623, 31.732801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676733, 34.742081, 31.452860>,  <28.684372, 35.434357, 31.173809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676733, 34.742081, 31.452860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771391, 34.979717, 31.760380>,  <28.828186, 35.122299, 31.944891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771391, 34.979717, 31.760380>,  <28.676733, 34.742081, 31.452860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771391, 34.979717, 31.760380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473675, -0.620327, 0.625161,
		0.848311, -0.512103, 0.134610,
		0.236645, 0.594092, 0.768800,
		28.842384, 35.157944, 31.991020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004244, 34.286304, 31.985796>,  <28.676733, 34.742081, 31.452860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004244, 34.286304, 31.985796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936039, 34.609341, 32.211620>,  <28.895117, 34.803162, 32.347115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936039, 34.609341, 32.211620>,  <29.004244, 34.286304, 31.985796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936039, 34.609341, 32.211620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221505, -0.589702, 0.776651,
		0.960136, 0.007375, 0.279435,
		-0.170512, 0.807587, 0.564560,
		28.884886, 34.851616, 32.380989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263992, 34.147831, 32.664089>,  <29.004244, 34.286304, 31.985796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263992, 34.147831, 32.664089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009727, 34.451256, 32.721390>,  <28.857168, 34.633308, 32.755772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009727, 34.451256, 32.721390>,  <29.263992, 34.147831, 32.664089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009727, 34.451256, 32.721390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388619, -0.474780, 0.789657,
		0.667014, 0.446286, 0.596591,
		-0.635662, 0.758560, 0.143250,
		28.819029, 34.678825, 32.764366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479671, 34.606178, 33.129375>,  <29.263992, 34.147831, 32.664089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479671, 34.606178, 33.129375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080410, 34.626270, 33.115715>,  <28.840853, 34.638325, 33.107517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080410, 34.626270, 33.115715>,  <29.479671, 34.606178, 33.129375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080410, 34.626270, 33.115715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044023, -0.210922, 0.976511,
		0.041844, 0.976212, 0.212744,
		-0.998154, 0.050227, -0.034150,
		28.780964, 34.641338, 33.105469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993370, 34.122341, 33.430252>,  <29.479671, 34.606178, 33.129375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993370, 34.122341, 33.430252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347065, 34.165520, 33.248493>,  <30.559282, 34.191425, 33.139439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347065, 34.165520, 33.248493>,  <29.993370, 34.122341, 33.430252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347065, 34.165520, 33.248493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459521, -0.027212, 0.887750,
		0.083463, -0.993784, -0.073665,
		0.884237, 0.107945, -0.454394,
		30.612335, 34.197903, 33.112175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435564, 33.556534, 33.609612>,  <29.993370, 34.122341, 33.430252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435564, 33.556534, 33.609612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672070, 33.864162, 33.512508>,  <30.813972, 34.048740, 33.454247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672070, 33.864162, 33.512508>,  <30.435564, 33.556534, 33.609612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672070, 33.864162, 33.512508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558491, -0.173314, 0.811203,
		0.581803, -0.615212, -0.531996,
		0.591264, 0.769075, -0.242755,
		30.849449, 34.094887, 33.439682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225672, 33.365238, 33.675186>,  <30.435564, 33.556534, 33.609612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225672, 33.365238, 33.675186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177387, 33.758026, 33.733387>,  <31.148417, 33.993698, 33.768307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177387, 33.758026, 33.733387>,  <31.225672, 33.365238, 33.675186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177387, 33.758026, 33.733387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610414, -0.042164, 0.790960,
		0.782831, 0.184295, -0.594316,
		-0.120712, 0.981966, 0.145503,
		31.141174, 34.052616, 33.777039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910183, 33.737083, 33.636372>,  <31.225672, 33.365238, 33.675186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910183, 33.737083, 33.636372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658577, 33.935894, 33.875473>,  <31.507614, 34.055180, 34.018932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658577, 33.935894, 33.875473>,  <31.910183, 33.737083, 33.636372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658577, 33.935894, 33.875473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667597, -0.048613, 0.742934,
		0.398314, 0.866374, -0.301233,
		-0.629015, 0.497023, 0.597753,
		31.469873, 34.085003, 34.054798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063126, 34.398735, 33.937912>,  <31.910183, 33.737083, 33.636372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063126, 34.398735, 33.937912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794691, 34.243374, 34.190510>,  <31.633631, 34.150158, 34.342068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794691, 34.243374, 34.190510>,  <32.063126, 34.398735, 33.937912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794691, 34.243374, 34.190510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573916, 0.267052, 0.774147,
		-0.469324, 0.881944, 0.043697,
		-0.671086, -0.388404, 0.631495,
		31.593365, 34.126854, 34.379959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646683, 34.814911, 34.237213>,  <32.063126, 34.398735, 33.937912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646683, 34.814911, 34.237213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754374, 34.505375, 34.466537>,  <31.818989, 34.319653, 34.604130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754374, 34.505375, 34.466537>,  <31.646683, 34.814911, 34.237213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754374, 34.505375, 34.466537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619115, 0.595051, 0.512456,
		-0.737709, 0.216976, 0.639302,
		0.269226, -0.773845, 0.573308,
		31.835142, 34.273220, 34.638531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572021, 34.998096, 34.975185>,  <31.646683, 34.814911, 34.237213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572021, 34.998096, 34.975185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856171, 34.731270, 34.885391>,  <32.026661, 34.571175, 34.831512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856171, 34.731270, 34.885391>,  <31.572021, 34.998096, 34.975185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856171, 34.731270, 34.885391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640094, 0.479681, 0.600155,
		-0.292659, -0.570027, 0.767737,
		0.710374, -0.667064, -0.224488,
		32.069283, 34.531151, 34.818047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869349, 34.811478, 35.616528>,  <31.572021, 34.998096, 34.975185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869349, 34.811478, 35.616528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132202, 34.711060, 35.332230>,  <32.289913, 34.650810, 35.161652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132202, 34.711060, 35.332230>,  <31.869349, 34.811478, 35.616528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132202, 34.711060, 35.332230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709252, 0.525196, 0.470246,
		0.255224, -0.813108, 0.523179,
		0.657132, -0.251047, -0.710741,
		32.329342, 34.635746, 35.119007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496334, 34.480499, 36.006100>,  <31.869349, 34.811478, 35.616528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496334, 34.480499, 36.006100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601521, 34.623062, 35.647476>,  <32.664631, 34.708599, 35.432301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601521, 34.623062, 35.647476>,  <32.496334, 34.480499, 36.006100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601521, 34.623062, 35.647476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720629, 0.545331, 0.428146,
		0.641516, -0.758677, -0.113430,
		0.262968, 0.356404, -0.896563,
		32.680412, 34.729984, 35.378506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153908, 34.393867, 35.853859>,  <32.496334, 34.480499, 36.006100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153908, 34.393867, 35.853859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072697, 34.727203, 35.648209>,  <33.023972, 34.927204, 35.524818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072697, 34.727203, 35.648209>,  <33.153908, 34.393867, 35.853859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072697, 34.727203, 35.648209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647487, 0.508136, 0.567942,
		0.734534, -0.217579, -0.642744,
		-0.203029, 0.833341, -0.514122,
		33.011787, 34.977207, 35.493973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517475, 34.754318, 36.220989>,  <33.153908, 34.393867, 35.853859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517475, 34.754318, 36.220989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392487, 35.014252, 35.943840>,  <33.317493, 35.170212, 35.777550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392487, 35.014252, 35.943840>,  <33.517475, 34.754318, 36.220989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392487, 35.014252, 35.943840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498750, 0.733006, 0.462547,
		0.808463, -0.201041, -0.553146,
		-0.312468, 0.649834, -0.692878,
		33.298744, 35.209202, 35.735977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052643, 35.283401, 36.219501>,  <33.517475, 34.754318, 36.220989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052643, 35.283401, 36.219501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726231, 35.459454, 36.069630>,  <33.530384, 35.565083, 35.979706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726231, 35.459454, 36.069630>,  <34.052643, 35.283401, 36.219501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726231, 35.459454, 36.069630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166248, 0.799546, 0.577138,
		0.553585, 0.408673, -0.725624,
		-0.816030, 0.440128, -0.374675,
		33.481422, 35.591492, 35.957226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237324, 35.986618, 36.117241>,  <34.052643, 35.283401, 36.219501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237324, 35.986618, 36.117241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841301, 35.958706, 36.166092>,  <33.603687, 35.941959, 36.195400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841301, 35.958706, 36.166092>,  <34.237324, 35.986618, 36.117241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841301, 35.958706, 36.166092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040987, 0.687435, 0.725089,
		-0.134551, 0.722886, -0.677741,
		-0.990059, -0.069782, 0.122124,
		33.544285, 35.937771, 36.202728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971195, 36.661076, 35.981476>,  <34.237324, 35.986618, 36.117241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971195, 36.661076, 35.981476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688362, 36.489269, 36.206173>,  <33.518661, 36.386185, 36.340992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688362, 36.489269, 36.206173>,  <33.971195, 36.661076, 35.981476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688362, 36.489269, 36.206173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063692, 0.752483, 0.655525,
		-0.704260, 0.499286, -0.504708,
		-0.707079, -0.429515, 0.561744,
		33.476238, 36.360416, 36.374695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413204, 37.147266, 36.209732>,  <33.971195, 36.661076, 35.981476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413204, 37.147266, 36.209732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354362, 36.853420, 36.474670>,  <33.319057, 36.677113, 36.633633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354362, 36.853420, 36.474670>,  <33.413204, 37.147266, 36.209732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354362, 36.853420, 36.474670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097672, 0.677143, 0.729340,
		-0.984287, 0.042599, -0.171363,
		-0.147106, -0.734617, 0.662342,
		33.310230, 36.633034, 36.673374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783882, 37.383854, 36.712658>,  <33.413204, 37.147266, 36.209732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783882, 37.383854, 36.712658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995937, 37.090229, 36.882420>,  <33.123169, 36.914055, 36.984276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995937, 37.090229, 36.882420>,  <32.783882, 37.383854, 36.712658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995937, 37.090229, 36.882420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230259, 0.357082, 0.905248,
		-0.816051, -0.577624, 0.020277,
		0.530134, -0.734059, 0.424400,
		33.154976, 36.870010, 37.009739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419163, 37.396179, 37.325649>,  <32.783882, 37.383854, 36.712658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419163, 37.396179, 37.325649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756081, 37.187519, 37.379944>,  <32.958233, 37.062325, 37.412521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756081, 37.187519, 37.379944>,  <32.419163, 37.396179, 37.325649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756081, 37.187519, 37.379944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012206, 0.233300, 0.972328,
		-0.538881, -0.820643, 0.190140,
		0.842294, -0.521648, 0.135738,
		33.008770, 37.031025, 37.420666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346577, 37.030209, 37.985348>,  <32.419163, 37.396179, 37.325649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346577, 37.030209, 37.985348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741787, 37.040169, 37.924435>,  <32.978912, 37.046146, 37.887886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741787, 37.040169, 37.924435>,  <32.346577, 37.030209, 37.985348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741787, 37.040169, 37.924435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140579, 0.261587, 0.954887,
		0.063609, -0.964859, 0.254954,
		0.988024, 0.024898, -0.152278,
		33.038193, 37.047638, 37.878750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637608, 36.750248, 38.552132>,  <32.346577, 37.030209, 37.985348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637608, 36.750248, 38.552132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933819, 36.956085, 38.379246>,  <33.111546, 37.079586, 38.275513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933819, 36.956085, 38.379246>,  <32.637608, 36.750248, 38.552132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933819, 36.956085, 38.379246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422057, 0.144364, 0.895001,
		0.522956, -0.845195, -0.110280,
		0.740530, 0.514591, -0.432217,
		33.155979, 37.110462, 38.249580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108307, 36.475597, 38.867523>,  <32.637608, 36.750248, 38.552132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108307, 36.475597, 38.867523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209354, 36.839394, 38.735458>,  <33.269981, 37.057671, 38.656219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209354, 36.839394, 38.735458>,  <33.108307, 36.475597, 38.867523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209354, 36.839394, 38.735458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308786, 0.247610, 0.918336,
		0.916970, -0.333940, -0.218287,
		0.252619, 0.909491, -0.330167,
		33.285141, 37.112240, 38.636410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753941, 36.545944, 39.070587>,  <33.108307, 36.475597, 38.867523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753941, 36.545944, 39.070587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635586, 36.920227, 38.993740>,  <33.564571, 37.144794, 38.947632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635586, 36.920227, 38.993740>,  <33.753941, 36.545944, 39.070587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635586, 36.920227, 38.993740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367333, 0.297120, 0.881355,
		0.881768, 0.190212, -0.431629,
		-0.295890, 0.935703, -0.192120,
		33.546818, 37.200939, 38.936104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172855, 36.871201, 39.456966>,  <33.753941, 36.545944, 39.070587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172855, 36.871201, 39.456966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927658, 37.176422, 39.375000>,  <33.780540, 37.359554, 39.325821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927658, 37.176422, 39.375000>,  <34.172855, 36.871201, 39.456966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927658, 37.176422, 39.375000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211672, 0.408486, 0.887882,
		0.761209, 0.500886, -0.411915,
		-0.612990, 0.763054, -0.204920,
		33.743763, 37.405338, 39.313522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523228, 37.484970, 39.620800>,  <34.172855, 36.871201, 39.456966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523228, 37.484970, 39.620800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132790, 37.571617, 39.627964>,  <33.898529, 37.623608, 39.632263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132790, 37.571617, 39.627964>,  <34.523228, 37.484970, 39.620800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132790, 37.571617, 39.627964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111076, 0.426274, 0.897749,
		0.186835, 0.878275, -0.440144,
		-0.976092, 0.216621, 0.017913,
		33.839962, 37.636604, 39.633339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468685, 38.080536, 39.849899>,  <34.523228, 37.484970, 39.620800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468685, 38.080536, 39.849899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098560, 37.953606, 39.932945>,  <33.876484, 37.877449, 39.982773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098560, 37.953606, 39.932945>,  <34.468685, 38.080536, 39.849899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098560, 37.953606, 39.932945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005978, 0.535228, 0.844687,
		-0.379161, 0.782839, -0.493355,
		-0.925312, -0.317323, 0.207617,
		33.820969, 37.858410, 39.995232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213642, 38.594269, 40.221237>,  <34.468685, 38.080536, 39.849899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213642, 38.594269, 40.221237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955708, 38.296894, 40.292213>,  <33.800945, 38.118469, 40.334797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955708, 38.296894, 40.292213>,  <34.213642, 38.594269, 40.221237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955708, 38.296894, 40.292213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017616, 0.217635, 0.975871,
		-0.764118, 0.632403, -0.127242,
		-0.644836, -0.743439, 0.177439,
		33.762257, 38.073864, 40.345444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630741, 38.826271, 40.535732>,  <34.213642, 38.594269, 40.221237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630741, 38.826271, 40.535732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640686, 38.445385, 40.657501>,  <33.646652, 38.216854, 40.730564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640686, 38.445385, 40.657501>,  <33.630741, 38.826271, 40.535732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640686, 38.445385, 40.657501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306924, 0.282543, 0.908827,
		-0.951409, -0.116028, -0.285233,
		0.024859, -0.952211, 0.304426,
		33.648144, 38.159721, 40.748829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063805, 38.796249, 40.880737>,  <33.630741, 38.826271, 40.535732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063805, 38.796249, 40.880737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228420, 38.452934, 41.003357>,  <33.327190, 38.246944, 41.076931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228420, 38.452934, 41.003357>,  <33.063805, 38.796249, 40.880737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228420, 38.452934, 41.003357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530546, 0.047883, 0.846303,
		-0.741053, -0.510924, -0.435657,
		0.411536, -0.858291, 0.306552,
		33.351883, 38.195446, 41.095322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485046, 38.377033, 41.282795>,  <33.063805, 38.796249, 40.880737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485046, 38.377033, 41.282795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838326, 38.230526, 41.399971>,  <33.050293, 38.142620, 41.470276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838326, 38.230526, 41.399971>,  <32.485046, 38.377033, 41.282795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838326, 38.230526, 41.399971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299218, 0.040934, 0.953306,
		-0.361160, -0.929607, -0.073442,
		0.883194, -0.366272, 0.292939,
		33.103283, 38.120644, 41.487854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226967, 37.968952, 41.854931>,  <32.485046, 38.377033, 41.282795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226967, 37.968952, 41.854931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614868, 38.045406, 41.915653>,  <32.847610, 38.091278, 41.952087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614868, 38.045406, 41.915653>,  <32.226967, 37.968952, 41.854931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614868, 38.045406, 41.915653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188188, 0.189371, 0.963703,
		0.155452, -0.963122, 0.219613,
		0.969753, 0.191138, 0.151810,
		32.905792, 38.102749, 41.961197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406109, 37.605007, 42.432610>,  <32.226967, 37.968952, 41.854931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406109, 37.605007, 42.432610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668316, 37.903664, 42.387291>,  <32.825638, 38.082855, 42.360100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668316, 37.903664, 42.387291>,  <32.406109, 37.605007, 42.432610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668316, 37.903664, 42.387291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100199, 0.234691, 0.966892,
		0.748507, -0.622458, 0.228655,
		0.655513, 0.746637, -0.113299,
		32.864971, 38.127655, 42.353302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872795, 37.553123, 42.970459>,  <32.406109, 37.605007, 42.432610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872795, 37.553123, 42.970459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931816, 37.930733, 42.852436>,  <32.967228, 38.157299, 42.781624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931816, 37.930733, 42.852436>,  <32.872795, 37.553123, 42.970459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931816, 37.930733, 42.852436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193559, 0.320113, 0.927395,
		0.969930, -0.079726, 0.229955,
		0.147549, 0.944019, -0.295056,
		32.976082, 38.213940, 42.763920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283127, 37.879364, 43.516415>,  <32.872795, 37.553123, 42.970459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283127, 37.879364, 43.516415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119217, 38.190327, 43.325535>,  <33.020870, 38.376904, 43.211006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119217, 38.190327, 43.325535>,  <33.283127, 37.879364, 43.516415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119217, 38.190327, 43.325535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116673, 0.474174, 0.872666,
		0.904695, 0.413273, -0.103602,
		-0.409774, 0.777409, -0.477201,
		32.996284, 38.423550, 43.182373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613270, 38.407478, 43.855907>,  <33.283127, 37.879364, 43.516415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613270, 38.407478, 43.855907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284229, 38.556053, 43.683693>,  <33.086803, 38.645199, 43.580364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284229, 38.556053, 43.683693>,  <33.613270, 38.407478, 43.855907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284229, 38.556053, 43.683693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209827, 0.505438, 0.836962,
		0.528487, 0.778825, -0.337837,
		-0.822602, 0.371436, -0.430536,
		33.037449, 38.667484, 43.554531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593712, 39.190689, 43.976002>,  <33.613270, 38.407478, 43.855907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593712, 39.190689, 43.976002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227825, 39.050461, 43.895615>,  <33.008293, 38.966324, 43.847382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227825, 39.050461, 43.895615>,  <33.593712, 39.190689, 43.976002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227825, 39.050461, 43.895615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366392, 0.509793, 0.778375,
		-0.170425, 0.785627, -0.594765,
		-0.914720, -0.350572, -0.200966,
		32.953407, 38.945290, 43.835323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050964, 39.747189, 44.076752>,  <33.593712, 39.190689, 43.976002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050964, 39.747189, 44.076752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870247, 39.391151, 44.100826>,  <32.761814, 39.177528, 44.115273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870247, 39.391151, 44.100826>,  <33.050964, 39.747189, 44.076752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870247, 39.391151, 44.100826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540478, 0.326765, 0.775312,
		-0.709763, 0.317752, -0.628705,
		-0.451795, -0.890089, 0.060187,
		32.734707, 39.124126, 44.118881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376961, 40.033703, 44.353344>,  <33.050964, 39.747189, 44.076752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376961, 40.033703, 44.353344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419598, 39.638180, 44.395115>,  <32.445179, 39.400867, 44.420177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419598, 39.638180, 44.395115>,  <32.376961, 40.033703, 44.353344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419598, 39.638180, 44.395115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457311, 0.044504, 0.888192,
		-0.882896, -0.142429, -0.447448,
		0.106591, -0.988804, 0.104426,
		32.451576, 39.341537, 44.426441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682003, 39.829491, 44.592823>,  <32.376961, 40.033703, 44.353344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682003, 39.829491, 44.592823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900557, 39.509289, 44.691334>,  <32.031689, 39.317165, 44.750439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900557, 39.509289, 44.691334>,  <31.682003, 39.829491, 44.592823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900557, 39.509289, 44.691334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345882, 0.052133, 0.936829,
		-0.762779, -0.597049, -0.248397,
		0.546382, -0.800509, 0.246275,
		32.064472, 39.269135, 44.765217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215811, 39.449242, 45.017441>,  <31.682003, 39.829491, 44.592823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215811, 39.449242, 45.017441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577904, 39.294518, 45.087788>,  <31.795160, 39.201683, 45.129997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577904, 39.294518, 45.087788>,  <31.215811, 39.449242, 45.017441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577904, 39.294518, 45.087788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227082, -0.090564, 0.969656,
		-0.359150, -0.917699, -0.169820,
		0.905232, -0.386815, 0.175867,
		31.849474, 39.178474, 45.140549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028193, 38.880264, 45.536774>,  <31.215811, 39.449242, 45.017441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028193, 38.880264, 45.536774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415499, 38.979557, 45.548382>,  <31.647882, 39.039135, 45.555347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415499, 38.979557, 45.548382>,  <31.028193, 38.880264, 45.536774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415499, 38.979557, 45.548382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006758, -0.090060, 0.995913,
		0.249833, -0.964505, -0.085524,
		0.968265, 0.248234, 0.029018,
		31.705978, 39.054028, 45.557087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218338, 38.552860, 46.147629>,  <31.028193, 38.880264, 45.536774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218338, 38.552860, 46.147629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502506, 38.826389, 46.081070>,  <31.673008, 38.990505, 46.041134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502506, 38.826389, 46.081070>,  <31.218338, 38.552860, 46.147629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502506, 38.826389, 46.081070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028566, 0.208219, 0.977665,
		0.703197, -0.699307, 0.128389,
		0.710421, 0.683823, -0.166395,
		31.715633, 39.031536, 46.031151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619921, 38.479282, 46.623539>,  <31.218338, 38.552860, 46.147629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619921, 38.479282, 46.623539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728136, 38.846645, 46.508064>,  <31.793066, 39.067062, 46.438782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728136, 38.846645, 46.508064>,  <31.619921, 38.479282, 46.623539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728136, 38.846645, 46.508064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007486, 0.297850, 0.954583,
		0.962680, -0.260413, 0.073705,
		0.270539, 0.918406, -0.288683,
		31.809298, 39.122166, 46.421459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152229, 38.747044, 47.128025>,  <31.619921, 38.479282, 46.623539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152229, 38.747044, 47.128025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970200, 39.064285, 46.966091>,  <31.860981, 39.254631, 46.868931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970200, 39.064285, 46.966091>,  <32.152229, 38.747044, 47.128025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970200, 39.064285, 46.966091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049358, 0.431469, 0.900777,
		0.889083, 0.429905, -0.157205,
		-0.455077, 0.793106, -0.404831,
		31.833677, 39.302216, 46.844643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565041, 39.291859, 47.382992>,  <32.152229, 38.747044, 47.128025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565041, 39.291859, 47.382992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195900, 39.414345, 47.289547>,  <31.974415, 39.487839, 47.233479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195900, 39.414345, 47.289547>,  <32.565041, 39.291859, 47.382992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195900, 39.414345, 47.289547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157439, 0.253640, 0.954400,
		0.351510, 0.917549, -0.185862,
		-0.922851, 0.306219, -0.233615,
		31.919044, 39.506210, 47.219463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556442, 39.929291, 47.678009>,  <32.565041, 39.291859, 47.382992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556442, 39.929291, 47.678009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173191, 39.829498, 47.621796>,  <31.943241, 39.769623, 47.588070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173191, 39.829498, 47.621796>,  <32.556442, 39.929291, 47.678009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173191, 39.829498, 47.621796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232448, 0.391092, 0.890514,
		-0.167209, 0.885892, -0.432709,
		-0.958128, -0.249484, -0.140529,
		31.885754, 39.754654, 47.579636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166462, 40.476650, 47.766979>,  <32.556442, 39.929291, 47.678009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166462, 40.476650, 47.766979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920591, 40.170166, 47.841923>,  <31.773069, 39.986275, 47.886887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920591, 40.170166, 47.841923>,  <32.166462, 40.476650, 47.766979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920591, 40.170166, 47.841923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208782, 0.387095, 0.898091,
		-0.760650, 0.512916, -0.397907,
		-0.614673, -0.766208, 0.187356,
		31.736189, 39.940304, 47.898129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499899, 40.736725, 48.023975>,  <32.166462, 40.476650, 47.766979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499899, 40.736725, 48.023975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479452, 40.350605, 48.126415>,  <31.467184, 40.118935, 48.187878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479452, 40.350605, 48.126415>,  <31.499899, 40.736725, 48.023975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479452, 40.350605, 48.126415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408631, 0.254200, 0.876586,
		-0.911267, -0.059842, -0.407445,
		-0.051116, -0.965299, 0.256097,
		31.464117, 40.061016, 48.203243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897633, 40.687847, 48.434902>,  <31.499899, 40.736725, 48.023975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897633, 40.687847, 48.434902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103310, 40.364159, 48.548580>,  <31.226715, 40.169945, 48.616787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103310, 40.364159, 48.548580>,  <30.897633, 40.687847, 48.434902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103310, 40.364159, 48.548580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362001, 0.095625, 0.927260,
		-0.777535, -0.579669, -0.243770,
		0.514193, -0.809222, 0.284193,
		31.257568, 40.121391, 48.633839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423866, 40.376888, 48.753231>,  <30.897633, 40.687847, 48.434902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423866, 40.376888, 48.753231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781322, 40.237129, 48.865894>,  <30.995796, 40.153275, 48.933491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781322, 40.237129, 48.865894>,  <30.423866, 40.376888, 48.753231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781322, 40.237129, 48.865894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302687, -0.005884, 0.953072,
		-0.331342, -0.936957, -0.111016,
		0.893641, -0.349395, 0.281655,
		31.049416, 40.132313, 48.950390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781132, 40.794872, 48.926449>,  <30.423866, 40.376888, 48.753231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781132, 40.794872, 48.926449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492413, 40.554031, 49.062965>,  <29.319181, 40.409527, 49.144875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492413, 40.554031, 49.062965>,  <29.781132, 40.794872, 48.926449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492413, 40.554031, 49.062965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471473, -0.066760, 0.879350,
		-0.506676, 0.795622, 0.332063,
		-0.721798, -0.602104, 0.341289,
		29.275873, 40.373402, 49.165352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445282, 41.088356, 49.556419>,  <29.781132, 40.794872, 48.926449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445282, 41.088356, 49.556419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445293, 40.688488, 49.546139>,  <29.445301, 40.448566, 49.539970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445293, 40.688488, 49.546139>,  <29.445282, 41.088356, 49.556419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445293, 40.688488, 49.546139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575596, -0.021003, 0.817465,
		-0.817734, -0.014820, 0.575405,
		0.000030, -0.999670, -0.025705,
		29.445303, 40.388588, 49.538425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160856, 40.882027, 50.158623>,  <29.445282, 41.088356, 49.556419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160856, 40.882027, 50.158623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412096, 40.617180, 49.995113>,  <29.562840, 40.458271, 49.897007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412096, 40.617180, 49.995113>,  <29.160856, 40.882027, 50.158623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412096, 40.617180, 49.995113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614086, 0.099133, 0.782989,
		-0.477904, -0.742818, 0.468860,
		0.628097, -0.662114, -0.408778,
		29.600525, 40.418545, 49.872478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188347, 40.371788, 50.604294>,  <29.160856, 40.882027, 50.158623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188347, 40.371788, 50.604294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533606, 40.409683, 50.405899>,  <29.740761, 40.432419, 50.286861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533606, 40.409683, 50.405899>,  <29.188347, 40.371788, 50.604294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533606, 40.409683, 50.405899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488178, 0.094513, 0.867611,
		0.129072, -0.991006, 0.035330,
		0.863147, 0.094737, -0.495986,
		29.792549, 40.438103, 50.257103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563761, 39.748520, 50.728226>,  <29.188347, 40.371788, 50.604294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563761, 39.748520, 50.728226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788233, 40.073910, 50.667114>,  <29.922916, 40.269142, 50.630447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788233, 40.073910, 50.667114>,  <29.563761, 39.748520, 50.728226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788233, 40.073910, 50.667114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540576, -0.220442, 0.811901,
		0.626781, -0.538208, -0.563451,
		0.561180, 0.813473, -0.152774,
		29.956587, 40.317951, 50.621281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342985, 39.608398, 50.728897>,  <29.563761, 39.748520, 50.728226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342985, 39.608398, 50.728897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268572, 39.986324, 50.836761>,  <30.223923, 40.213081, 50.901478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268572, 39.986324, 50.836761>,  <30.342985, 39.608398, 50.728897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268572, 39.986324, 50.836761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549195, -0.127582, 0.825899,
		0.814725, 0.301741, -0.495153,
		-0.186035, 0.944815, 0.269658,
		30.212761, 40.269768, 50.917660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883356, 39.924988, 50.864075>,  <30.342985, 39.608398, 50.728897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883356, 39.924988, 50.864075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591478, 40.059258, 51.102360>,  <30.416351, 40.139820, 51.245331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591478, 40.059258, 51.102360>,  <30.883356, 39.924988, 50.864075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591478, 40.059258, 51.102360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544245, -0.242284, 0.803178,
		0.413939, 0.910285, -0.005897,
		-0.729693, 0.335677, 0.595709,
		30.372570, 40.159962, 51.281075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227825, 39.199566, 50.982540>,  <30.883356, 39.924988, 50.864075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227825, 39.199566, 50.982540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931015, 39.041782, 50.765728>,  <30.752928, 38.947113, 50.635639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931015, 39.041782, 50.765728>,  <31.227825, 39.199566, 50.982540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931015, 39.041782, 50.765728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600230, -0.751006, -0.275162,
		-0.298531, -0.529523, 0.794031,
		-0.742027, -0.394457, -0.542034,
		30.708406, 38.923447, 50.603119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263123, 38.449871, 51.106815>,  <31.227825, 39.199566, 50.982540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263123, 38.449871, 51.106815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058079, 38.528660, 50.772526>,  <30.935053, 38.575932, 50.571953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058079, 38.528660, 50.772526>,  <31.263123, 38.449871, 51.106815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058079, 38.528660, 50.772526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485295, -0.736486, -0.471250,
		-0.708321, -0.647141, 0.281942,
		-0.512612, 0.196971, -0.835723,
		30.904297, 38.587753, 50.521809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798698, 37.847836, 50.958008>,  <31.263123, 38.449871, 51.106815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798698, 37.847836, 50.958008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937731, 38.067764, 50.654198>,  <31.021151, 38.199722, 50.471912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937731, 38.067764, 50.654198>,  <30.798698, 37.847836, 50.958008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937731, 38.067764, 50.654198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318197, -0.831129, -0.456043,
		-0.882009, -0.083169, -0.463836,
		0.347579, 0.549825, -0.759527,
		31.042004, 38.232712, 50.426338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840843, 37.247601, 50.586060>,  <30.798698, 37.847836, 50.958008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840843, 37.247601, 50.586060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966459, 37.536201, 50.339218>,  <31.041828, 37.709362, 50.191113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966459, 37.536201, 50.339218>,  <30.840843, 37.247601, 50.586060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966459, 37.536201, 50.339218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037610, -0.658928, -0.751266,
		-0.948665, 0.212718, -0.234065,
		0.314040, 0.721502, -0.617101,
		31.060671, 37.752651, 50.154087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538651, 37.198788, 49.905373>,  <30.840843, 37.247601, 50.586060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538651, 37.198788, 49.905373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865276, 37.422276, 49.847336>,  <31.061253, 37.556370, 49.812515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865276, 37.422276, 49.847336>,  <30.538651, 37.198788, 49.905373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865276, 37.422276, 49.847336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214025, -0.526465, -0.822817,
		-0.536111, 0.640831, -0.549474,
		0.816565, 0.558722, -0.145089,
		31.110247, 37.589893, 49.803810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500467, 37.494961, 49.254871>,  <30.538651, 37.198788, 49.905373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500467, 37.494961, 49.254871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888388, 37.497112, 49.352409>,  <31.121140, 37.498405, 49.410931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888388, 37.497112, 49.352409>,  <30.500467, 37.494961, 49.254871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888388, 37.497112, 49.352409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225583, -0.399957, -0.888339,
		0.092746, 0.916518, -0.389092,
		0.969799, 0.005382, 0.243846,
		31.179327, 37.498726, 49.425564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831629, 37.636879, 48.655392>,  <30.500467, 37.494961, 49.254871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831629, 37.636879, 48.655392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137356, 37.473106, 48.854664>,  <31.320791, 37.374844, 48.974228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137356, 37.473106, 48.854664>,  <30.831629, 37.636879, 48.655392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137356, 37.473106, 48.854664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395124, -0.313173, -0.863597,
		0.509602, 0.856905, -0.077586,
		0.764318, -0.409435, 0.498177,
		31.366652, 37.350277, 49.004116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418209, 37.826454, 48.342365>,  <30.831629, 37.636879, 48.655392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418209, 37.826454, 48.342365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537432, 37.515339, 48.563709>,  <31.608965, 37.328671, 48.696514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537432, 37.515339, 48.563709>,  <31.418209, 37.826454, 48.342365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537432, 37.515339, 48.563709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380158, -0.435029, -0.816229,
		0.875581, 0.453648, 0.166019,
		0.298057, -0.777788, 0.553361,
		31.626848, 37.282001, 48.729717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050491, 37.721027, 48.093307>,  <31.418209, 37.826454, 48.342365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050491, 37.721027, 48.093307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928978, 37.389385, 48.281055>,  <31.856070, 37.190399, 48.393703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928978, 37.389385, 48.281055>,  <32.050491, 37.721027, 48.093307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928978, 37.389385, 48.281055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486311, -0.558575, -0.671934,
		0.819280, 0.024138, 0.572886,
		-0.303781, -0.829103, 0.469368,
		31.837843, 37.140656, 48.421867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636154, 37.485237, 48.201958>,  <32.050491, 37.721027, 48.093307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636154, 37.485237, 48.201958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360306, 37.195587, 48.204948>,  <32.194798, 37.021797, 48.206745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360306, 37.195587, 48.204948>,  <32.636154, 37.485237, 48.201958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360306, 37.195587, 48.204948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473406, -0.458618, -0.752035,
		0.548000, -0.515081, 0.659081,
		-0.689625, -0.724128, 0.007480,
		32.153419, 36.978348, 48.207191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904831, 36.725407, 48.162270>,  <32.636154, 37.485237, 48.201958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904831, 36.725407, 48.162270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541538, 36.603165, 48.047924>,  <32.323563, 36.529819, 47.979317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541538, 36.603165, 48.047924>,  <32.904831, 36.725407, 48.162270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541538, 36.603165, 48.047924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416022, -0.585735, -0.695586,
		0.045138, -0.750679, 0.659123,
		-0.908233, -0.305608, -0.285860,
		32.269070, 36.511482, 47.962166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928814, 36.046120, 48.085678>,  <32.904831, 36.725407, 48.162270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928814, 36.046120, 48.085678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601112, 36.128086, 47.871452>,  <32.404491, 36.177265, 47.742916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601112, 36.128086, 47.871452>,  <32.928814, 36.046120, 48.085678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601112, 36.128086, 47.871452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353152, -0.555531, -0.752774,
		-0.451775, -0.805851, 0.382757,
		-0.819257, 0.204913, -0.535563,
		32.355335, 36.189560, 47.710785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750282, 35.366924, 47.816856>,  <32.928814, 36.046120, 48.085678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750282, 35.366924, 47.816856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573532, 35.614872, 47.557468>,  <32.467484, 35.763641, 47.401836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573532, 35.614872, 47.557468>,  <32.750282, 35.366924, 47.816856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573532, 35.614872, 47.557468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413491, -0.500761, -0.760436,
		-0.796097, -0.604154, -0.035034,
		-0.441877, 0.619867, -0.648467,
		32.440968, 35.800831, 47.362926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528763, 34.897743, 47.248817>,  <32.750282, 35.366924, 47.816856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528763, 34.897743, 47.248817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548161, 35.270073, 47.103924>,  <32.559799, 35.493473, 47.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548161, 35.270073, 47.103924>,  <32.528763, 34.897743, 47.248817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548161, 35.270073, 47.103924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530303, -0.331315, -0.780391,
		-0.846420, -0.154249, -0.509686,
		0.048492, 0.930827, -0.362230,
		32.562710, 35.549320, 46.995255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260433, 34.853683, 46.529476>,  <32.528763, 34.897743, 47.248817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260433, 34.853683, 46.529476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504173, 35.166241, 46.583313>,  <32.650417, 35.353775, 46.615616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504173, 35.166241, 46.583313>,  <32.260433, 34.853683, 46.529476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504173, 35.166241, 46.583313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510000, -0.256281, -0.821109,
		-0.607116, 0.568986, -0.554675,
		0.609353, 0.781393, 0.134591,
		32.686977, 35.400658, 46.623692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271999, 35.025860, 45.941242>,  <32.260433, 34.853683, 46.529476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271999, 35.025860, 45.941242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569691, 35.257378, 46.074585>,  <32.748306, 35.396290, 46.154591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569691, 35.257378, 46.074585>,  <32.271999, 35.025860, 45.941242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569691, 35.257378, 46.074585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498993, -0.150023, -0.853521,
		-0.444000, 0.801556, -0.400465,
		0.744224, 0.578793, 0.333361,
		32.792957, 35.431015, 46.174595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367065, 35.588856, 45.527657>,  <32.271999, 35.025860, 45.941242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367065, 35.588856, 45.527657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708458, 35.462154, 45.693176>,  <32.913296, 35.386131, 45.792488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708458, 35.462154, 45.693176>,  <32.367065, 35.588856, 45.527657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708458, 35.462154, 45.693176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401372, -0.106880, -0.909658,
		0.332366, 0.942466, 0.035917,
		0.853483, -0.316756, 0.413803,
		32.964504, 35.367126, 45.817318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844147, 36.083248, 45.266853>,  <32.367065, 35.588856, 45.527657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844147, 36.083248, 45.266853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038315, 35.757580, 45.394287>,  <33.154816, 35.562180, 45.470749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038315, 35.757580, 45.394287>,  <32.844147, 36.083248, 45.266853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038315, 35.757580, 45.394287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471613, -0.062988, -0.879553,
		0.736171, 0.577203, 0.353396,
		0.485421, -0.814168, 0.318587,
		33.183941, 35.513329, 45.489864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459850, 36.191334, 44.920471>,  <32.844147, 36.083248, 45.266853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459850, 36.191334, 44.920471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485497, 35.812065, 45.044964>,  <33.500885, 35.584503, 45.119659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485497, 35.812065, 45.044964>,  <33.459850, 36.191334, 44.920471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485497, 35.812065, 45.044964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375469, -0.266037, -0.887833,
		0.924615, 0.173780, 0.338951,
		0.064114, -0.948169, 0.311230,
		33.504730, 35.527615, 45.138332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163979, 35.910370, 44.745365>,  <33.459850, 36.191334, 44.920471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163979, 35.910370, 44.745365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929432, 35.588707, 44.784355>,  <33.788704, 35.395710, 44.807747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929432, 35.588707, 44.784355>,  <34.163979, 35.910370, 44.745365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929432, 35.588707, 44.784355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289248, -0.320255, -0.902093,
		0.756641, -0.500767, 0.420389,
		-0.586370, -0.804157, 0.097473,
		33.753521, 35.347458, 44.813599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624954, 35.284813, 44.529953>,  <34.163979, 35.910370, 44.745365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624954, 35.284813, 44.529953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239113, 35.187496, 44.489273>,  <34.007607, 35.129105, 44.464867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239113, 35.187496, 44.489273>,  <34.624954, 35.284813, 44.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239113, 35.187496, 44.489273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224780, -0.557019, -0.799502,
		0.137867, -0.794065, 0.591991,
		-0.964607, -0.243293, -0.101696,
		33.949730, 35.114510, 44.458763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541630, 34.461922, 44.413982>,  <34.624954, 35.284813, 44.529953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541630, 34.461922, 44.413982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213169, 34.640209, 44.271404>,  <34.016094, 34.747181, 44.185860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213169, 34.640209, 44.271404>,  <34.541630, 34.461922, 44.413982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213169, 34.640209, 44.271404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061247, -0.552129, -0.831506,
		-0.567427, -0.704616, 0.426078,
		-0.821143, 0.445723, -0.356448,
		33.966824, 34.773922, 44.164471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052311, 33.968311, 44.163303>,  <34.541630, 34.461922, 44.413982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052311, 33.968311, 44.163303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973866, 34.310661, 43.971882>,  <33.926796, 34.516071, 43.857029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973866, 34.310661, 43.971882>,  <34.052311, 33.968311, 44.163303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973866, 34.310661, 43.971882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030663, -0.482438, -0.875393,
		-0.980101, -0.186353, 0.068371,
		-0.196117, 0.855877, -0.478552,
		33.915031, 34.567425, 43.828316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576931, 33.696770, 43.701511>,  <34.052311, 33.968311, 44.163303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576931, 33.696770, 43.701511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693333, 34.044979, 43.542759>,  <33.763172, 34.253902, 43.447510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693333, 34.044979, 43.542759>,  <33.576931, 33.696770, 43.701511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693333, 34.044979, 43.542759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099767, -0.384957, -0.917526,
		-0.951506, 0.306597, -0.025174,
		0.291002, 0.870521, -0.396877,
		33.780632, 34.306137, 43.423695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171021, 33.835300, 43.107033>,  <33.576931, 33.696770, 43.701511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171021, 33.835300, 43.107033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465309, 34.094971, 43.029800>,  <33.641884, 34.250774, 42.983463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465309, 34.094971, 43.029800>,  <33.171021, 33.835300, 43.107033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465309, 34.094971, 43.029800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099647, -0.178221, -0.978932,
		-0.669911, 0.739464, -0.066433,
		0.735724, 0.649177, -0.193077,
		33.686028, 34.289722, 42.971878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927563, 34.201756, 42.581966>,  <33.171021, 33.835300, 43.107033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927563, 34.201756, 42.581966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308666, 34.322502, 42.568474>,  <33.537327, 34.394951, 42.560379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308666, 34.322502, 42.568474>,  <32.927563, 34.201756, 42.581966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308666, 34.322502, 42.568474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056600, 0.067338, -0.996123,
		-0.298423, 0.950970, 0.081242,
		0.952754, 0.301864, -0.033730,
		33.594494, 34.413063, 42.558353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874939, 34.741486, 42.134884>,  <32.927563, 34.201756, 42.581966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874939, 34.741486, 42.134884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259911, 34.632889, 42.132832>,  <33.490894, 34.567730, 42.131599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259911, 34.632889, 42.132832>,  <32.874939, 34.741486, 42.134884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259911, 34.632889, 42.132832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034987, -0.105233, -0.993832,
		0.269278, 0.956670, -0.110778,
		0.962427, -0.271492, -0.005134,
		33.548637, 34.551441, 42.131290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257908, 35.212116, 41.647102>,  <32.874939, 34.741486, 42.134884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257908, 35.212116, 41.647102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449345, 34.861176, 41.660946>,  <33.564209, 34.650612, 41.669250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449345, 34.861176, 41.660946>,  <33.257908, 35.212116, 41.647102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449345, 34.861176, 41.660946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084383, -0.085189, -0.992785,
		0.873972, 0.472221, -0.114805,
		0.478594, -0.877354, 0.034606,
		33.592922, 34.597969, 41.671329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855846, 35.294334, 41.167339>,  <33.257908, 35.212116, 41.647102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855846, 35.294334, 41.167339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795879, 34.901001, 41.208462>,  <33.759899, 34.665001, 41.233135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795879, 34.901001, 41.208462>,  <33.855846, 35.294334, 41.167339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795879, 34.901001, 41.208462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089213, -0.117014, -0.989115,
		0.984665, -0.139118, 0.105269,
		-0.149922, -0.983338, 0.102808,
		33.750904, 34.605999, 41.239304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443882, 34.955433, 40.740505>,  <33.855846, 35.294334, 41.167339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443882, 34.955433, 40.740505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131817, 34.708942, 40.783592>,  <33.944576, 34.561047, 40.809444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131817, 34.708942, 40.783592>,  <34.443882, 34.955433, 40.740505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131817, 34.708942, 40.783592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069753, -0.256813, -0.963940,
		0.621671, -0.744520, 0.243341,
		-0.780166, -0.616228, 0.107721,
		33.897766, 34.524075, 40.815907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591175, 34.322033, 40.450169>,  <34.443882, 34.955433, 40.740505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591175, 34.322033, 40.450169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193493, 34.284988, 40.471996>,  <33.954884, 34.262760, 40.485092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193493, 34.284988, 40.471996>,  <34.591175, 34.322033, 40.450169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193493, 34.284988, 40.471996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030840, -0.240572, -0.970141,
		0.102976, -0.966203, 0.236322,
		-0.994206, -0.092613, 0.054570,
		33.895229, 34.257206, 40.488369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495159, 33.681732, 40.135975>,  <34.591175, 34.322033, 40.450169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495159, 33.681732, 40.135975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141819, 33.869057, 40.143661>,  <33.929813, 33.981453, 40.148273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141819, 33.869057, 40.143661>,  <34.495159, 33.681732, 40.135975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141819, 33.869057, 40.143661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177902, -0.297076, -0.938135,
		-0.433632, -0.832123, 0.345737,
		-0.883354, 0.468312, 0.019215,
		33.876812, 34.009548, 40.149426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011765, 33.238228, 39.870110>,  <34.495159, 33.681732, 40.135975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011765, 33.238228, 39.870110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823620, 33.588169, 39.823811>,  <33.710732, 33.798134, 39.796032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823620, 33.588169, 39.823811>,  <34.011765, 33.238228, 39.870110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823620, 33.588169, 39.823811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080680, -0.173240, -0.981569,
		-0.878777, -0.452356, 0.152069,
		-0.470363, 0.874849, -0.115743,
		33.682510, 33.850624, 39.789089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267593, 33.035763, 39.674728>,  <34.011765, 33.238228, 39.870110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267593, 33.035763, 39.674728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338886, 33.399925, 39.525387>,  <33.381660, 33.618423, 39.435783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338886, 33.399925, 39.525387>,  <33.267593, 33.035763, 39.674728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338886, 33.399925, 39.525387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186157, -0.341376, -0.921308,
		-0.966219, 0.233708, 0.108635,
		0.178231, 0.910408, -0.373351,
		33.392357, 33.673046, 39.413383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701675, 33.084694, 39.203564>,  <33.267593, 33.035763, 39.674728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701675, 33.084694, 39.203564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972031, 33.358883, 39.095268>,  <33.134243, 33.523396, 39.030289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972031, 33.358883, 39.095268>,  <32.701675, 33.084694, 39.203564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972031, 33.358883, 39.095268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066505, -0.309129, -0.948692,
		-0.733997, 0.659216, -0.163350,
		0.675889, 0.685473, -0.270741,
		33.174797, 33.564526, 39.014046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380787, 33.310455, 38.574081>,  <32.701675, 33.084694, 39.203564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380787, 33.310455, 38.574081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770901, 33.394550, 38.601257>,  <33.004971, 33.445007, 38.617561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770901, 33.394550, 38.601257>,  <32.380787, 33.310455, 38.574081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770901, 33.394550, 38.601257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080108, -0.049926, -0.995535,
		-0.205903, 0.976376, -0.065534,
		0.975288, 0.210234, 0.067935,
		33.063488, 33.457619, 38.621639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517628, 33.881599, 38.040283>,  <32.380787, 33.310455, 38.574081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517628, 33.881599, 38.040283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871311, 33.712055, 38.118778>,  <33.083523, 33.610329, 38.165874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871311, 33.712055, 38.118778>,  <32.517628, 33.881599, 38.040283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871311, 33.712055, 38.118778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219197, 0.005561, -0.975665,
		0.412458, 0.905709, 0.097826,
		0.884212, -0.423864, 0.196235,
		33.136574, 33.584896, 38.177650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894077, 34.096352, 37.479168>,  <32.517628, 33.881599, 38.040283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894077, 34.096352, 37.479168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157951, 33.836170, 37.629757>,  <33.316277, 33.680061, 37.720112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157951, 33.836170, 37.629757>,  <32.894077, 34.096352, 37.479168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157951, 33.836170, 37.629757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410714, -0.107500, -0.905405,
		0.629391, 0.751904, 0.196233,
		0.659683, -0.650449, 0.376477,
		33.355858, 33.641037, 37.742699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470734, 34.241535, 37.118763>,  <32.894077, 34.096352, 37.479168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470734, 34.241535, 37.118763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545673, 33.875023, 37.260368>,  <33.590637, 33.655113, 37.345329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545673, 33.875023, 37.260368>,  <33.470734, 34.241535, 37.118763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545673, 33.875023, 37.260368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316045, -0.285003, -0.904925,
		0.930063, 0.281417, 0.236193,
		0.187345, -0.916285, 0.354011,
		33.601875, 33.600136, 37.366573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144318, 34.046925, 36.808922>,  <33.470734, 34.241535, 37.118763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144318, 34.046925, 36.808922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953747, 33.709724, 36.908813>,  <33.839405, 33.507404, 36.968750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953747, 33.709724, 36.908813>,  <34.144318, 34.046925, 36.808922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953747, 33.709724, 36.908813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242199, -0.398884, -0.884439,
		0.845199, -0.360882, 0.394212,
		-0.476422, -0.843004, 0.249731,
		33.810822, 33.456821, 36.983734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611225, 33.502598, 36.835842>,  <34.144318, 34.046925, 36.808922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611225, 33.502598, 36.835842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242752, 33.356983, 36.780865>,  <34.021667, 33.269615, 36.747879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242752, 33.356983, 36.780865>,  <34.611225, 33.502598, 36.835842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242752, 33.356983, 36.780865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235838, -0.241367, -0.941341,
		0.309511, -0.899565, 0.308199,
		-0.921186, -0.364040, -0.137446,
		33.966396, 33.247772, 36.739632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751873, 32.939186, 36.453224>,  <34.611225, 33.502598, 36.835842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751873, 32.939186, 36.453224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361881, 33.000065, 36.388405>,  <34.127888, 33.036591, 36.349514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361881, 33.000065, 36.388405>,  <34.751873, 32.939186, 36.453224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361881, 33.000065, 36.388405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097028, -0.364499, -0.926135,
		-0.200020, -0.918682, 0.340611,
		-0.974976, 0.152196, -0.162045,
		34.069389, 33.045723, 36.339790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813892, 32.922646, 37.239555>,  <34.751873, 32.939186, 36.453224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813892, 32.922646, 37.239555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207619, 32.892715, 37.303459>,  <35.443855, 32.874756, 37.341801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207619, 32.892715, 37.303459>,  <34.813892, 32.922646, 37.239555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207619, 32.892715, 37.303459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149015, 0.132060, 0.979977,
		-0.094425, -0.988414, 0.118838,
		0.984316, -0.074826, 0.159758,
		35.502914, 32.870270, 37.351387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771614, 32.590923, 37.807873>,  <34.813892, 32.922646, 37.239555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771614, 32.590923, 37.807873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144131, 32.736629, 37.808842>,  <35.367641, 32.824055, 37.809422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144131, 32.736629, 37.808842>,  <34.771614, 32.590923, 37.807873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144131, 32.736629, 37.808842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006543, -0.023373, 0.999705,
		0.364215, -0.931002, -0.024150,
		0.931292, 0.364265, 0.002421,
		35.423519, 32.845909, 37.809566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101372, 32.103874, 38.335480>,  <34.771614, 32.590923, 37.807873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101372, 32.103874, 38.335480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339470, 32.423775, 38.304295>,  <35.482327, 32.615715, 38.285583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339470, 32.423775, 38.304295>,  <35.101372, 32.103874, 38.335480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339470, 32.423775, 38.304295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240554, -0.084777, 0.966926,
		0.766695, -0.594309, -0.242847,
		0.595241, 0.799756, -0.077965,
		35.518044, 32.663700, 38.280907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514759, 32.028221, 38.853992>,  <35.101372, 32.103874, 38.335480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514759, 32.028221, 38.853992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638771, 32.397968, 38.765064>,  <35.713177, 32.619816, 38.711708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638771, 32.397968, 38.765064>,  <35.514759, 32.028221, 38.853992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638771, 32.397968, 38.765064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234193, 0.152385, 0.960173,
		0.921432, -0.349746, -0.169237,
		0.310028, 0.924368, -0.222320,
		35.731781, 32.675278, 38.698368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283337, 32.125244, 39.162083>,  <35.514759, 32.028221, 38.853992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283337, 32.125244, 39.162083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087624, 32.469971, 39.108601>,  <35.970196, 32.676807, 39.076511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087624, 32.469971, 39.108601>,  <36.283337, 32.125244, 39.162083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087624, 32.469971, 39.108601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095504, 0.205337, 0.974020,
		0.866880, 0.463803, -0.182775,
		-0.489284, 0.861814, -0.133708,
		35.940838, 32.728516, 39.068489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730972, 32.711834, 39.402672>,  <36.283337, 32.125244, 39.162083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730972, 32.711834, 39.402672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351788, 32.836128, 39.430439>,  <36.124279, 32.910706, 39.447102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351788, 32.836128, 39.430439>,  <36.730972, 32.711834, 39.402672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351788, 32.836128, 39.430439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200262, 0.412393, 0.888722,
		0.247528, 0.856374, -0.453160,
		-0.947958, 0.310734, 0.069420,
		36.067402, 32.929348, 39.451263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765450, 33.453552, 39.447781>,  <36.730972, 32.711834, 39.402672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765450, 33.453552, 39.447781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449677, 33.280045, 39.621510>,  <36.260212, 33.175938, 39.725746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449677, 33.280045, 39.621510>,  <36.765450, 33.453552, 39.447781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449677, 33.280045, 39.621510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207467, 0.477367, 0.853861,
		-0.577712, 0.764174, -0.286856,
		-0.789434, -0.433773, 0.434321,
		36.212845, 33.149914, 39.751804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598976, 33.933876, 39.982323>,  <36.765450, 33.453552, 39.447781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598976, 33.933876, 39.982323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365559, 33.628513, 40.093094>,  <36.225510, 33.445297, 40.159557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365559, 33.628513, 40.093094>,  <36.598976, 33.933876, 39.982323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365559, 33.628513, 40.093094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010930, 0.333597, 0.942652,
		-0.812011, 0.553102, -0.186323,
		-0.583540, -0.763407, 0.276930,
		36.190498, 33.399490, 40.176174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152336, 34.181595, 40.427799>,  <36.598976, 33.933876, 39.982323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152336, 34.181595, 40.427799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083679, 33.794739, 40.502815>,  <36.042484, 33.562626, 40.547825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083679, 33.794739, 40.502815>,  <36.152336, 34.181595, 40.427799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083679, 33.794739, 40.502815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057056, 0.180285, 0.981958,
		-0.983506, 0.179246, 0.024237,
		-0.171642, -0.967144, 0.187539,
		36.032188, 33.504597, 40.559078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497738, 34.092960, 40.887211>,  <36.152336, 34.181595, 40.427799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497738, 34.092960, 40.887211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746189, 33.784874, 40.945129>,  <35.895260, 33.600021, 40.979881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746189, 33.784874, 40.945129>,  <35.497738, 34.092960, 40.887211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746189, 33.784874, 40.945129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050395, 0.223627, 0.973371,
		-0.782090, -0.597287, 0.177716,
		0.621124, -0.770220, 0.144796,
		35.932526, 33.553806, 40.988567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318062, 33.711159, 41.586197>,  <35.497738, 34.092960, 40.887211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318062, 33.711159, 41.586197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691532, 33.585331, 41.517735>,  <35.915615, 33.509834, 41.476658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691532, 33.585331, 41.517735>,  <35.318062, 33.711159, 41.586197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691532, 33.585331, 41.517735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238376, 0.189260, 0.952553,
		-0.267250, -0.930177, 0.251693,
		0.933678, -0.314567, -0.171152,
		35.971634, 33.490959, 41.466389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428253, 33.114616, 42.093628>,  <35.318062, 33.711159, 41.586197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428253, 33.114616, 42.093628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765572, 33.291744, 41.971798>,  <35.967964, 33.398022, 41.898701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765572, 33.291744, 41.971798>,  <35.428253, 33.114616, 42.093628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765572, 33.291744, 41.971798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228020, 0.218382, 0.948850,
		0.486683, -0.869609, 0.083188,
		0.843295, 0.442820, -0.304571,
		36.018559, 33.424591, 41.880428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921822, 32.913849, 42.595695>,  <35.428253, 33.114616, 42.093628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921822, 32.913849, 42.595695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066967, 33.243179, 42.421131>,  <36.154057, 33.440777, 42.316391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066967, 33.243179, 42.421131>,  <35.921822, 32.913849, 42.595695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066967, 33.243179, 42.421131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247180, 0.366513, 0.896978,
		0.898459, -0.433358, -0.070515,
		0.362868, 0.823328, -0.436415,
		36.175827, 33.490177, 42.290207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636497, 32.950455, 42.966339>,  <35.921822, 32.913849, 42.595695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636497, 32.950455, 42.966339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519951, 33.296799, 42.803669>,  <36.450024, 33.504604, 42.706066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519951, 33.296799, 42.803669>,  <36.636497, 32.950455, 42.966339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519951, 33.296799, 42.803669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091409, 0.448377, 0.889158,
		0.952235, 0.221895, -0.209788,
		-0.291364, 0.865864, -0.406677,
		36.432541, 33.556557, 42.681667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163887, 33.416176, 43.244469>,  <36.636497, 32.950455, 42.966339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163887, 33.416176, 43.244469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857128, 33.638943, 43.116898>,  <36.673073, 33.772602, 43.040356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857128, 33.638943, 43.116898>,  <37.163887, 33.416176, 43.244469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857128, 33.638943, 43.116898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005997, 0.503145, 0.864181,
		0.641745, 0.660823, -0.389199,
		-0.766894, 0.556918, -0.318928,
		36.627060, 33.806019, 43.021217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358372, 34.063076, 43.358807>,  <37.163887, 33.416176, 43.244469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358372, 34.063076, 43.358807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959450, 34.079723, 43.334660>,  <36.720097, 34.089710, 43.320171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959450, 34.079723, 43.334660>,  <37.358372, 34.063076, 43.358807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959450, 34.079723, 43.334660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019815, 0.639721, 0.768351,
		0.070597, 0.767479, -0.637175,
		-0.997308, 0.041618, -0.060370,
		36.660255, 34.092209, 43.316547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236336, 34.759605, 43.612682>,  <37.358372, 34.063076, 43.358807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236336, 34.759605, 43.612682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904545, 34.539570, 43.651390>,  <36.705471, 34.407547, 43.674614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904545, 34.539570, 43.651390>,  <37.236336, 34.759605, 43.612682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904545, 34.539570, 43.651390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174762, 0.420166, 0.890460,
		-0.530492, 0.721707, -0.444654,
		-0.829480, -0.550090, 0.096768,
		36.655701, 34.374542, 43.680420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752529, 35.205669, 43.913055>,  <37.236336, 34.759605, 43.612682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752529, 35.205669, 43.913055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572529, 34.868610, 44.031334>,  <36.464531, 34.666374, 44.102303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572529, 34.868610, 44.031334>,  <36.752529, 35.205669, 43.913055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572529, 34.868610, 44.031334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170882, 0.406253, 0.897640,
		-0.876527, 0.353407, -0.326808,
		-0.449999, -0.842652, 0.295701,
		36.437531, 34.615814, 44.120045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101688, 35.367085, 44.229557>,  <36.752529, 35.205669, 43.913055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101688, 35.367085, 44.229557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153706, 34.995026, 44.366913>,  <36.184917, 34.771790, 44.449326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153706, 34.995026, 44.366913>,  <36.101688, 35.367085, 44.229557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153706, 34.995026, 44.366913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413300, 0.263954, 0.871500,
		-0.901261, -0.255256, -0.350103,
		0.130045, -0.930147, 0.343389,
		36.192719, 34.715981, 44.469929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488121, 35.112198, 44.511070>,  <36.101688, 35.367085, 44.229557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488121, 35.112198, 44.511070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767429, 34.886986, 44.687897>,  <35.935013, 34.751858, 44.793991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767429, 34.886986, 44.687897>,  <35.488121, 35.112198, 44.511070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767429, 34.886986, 44.687897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432396, 0.160417, 0.887300,
		-0.570490, -0.810719, -0.131437,
		0.698266, -0.563028, 0.442068,
		35.976910, 34.718079, 44.820518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126945, 34.770592, 44.956539>,  <35.488121, 35.112198, 44.511070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126945, 34.770592, 44.956539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504581, 34.713955, 45.075638>,  <35.731163, 34.679974, 45.147099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504581, 34.713955, 45.075638>,  <35.126945, 34.770592, 44.956539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504581, 34.713955, 45.075638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230249, 0.363235, 0.902799,
		-0.235980, -0.920876, 0.310324,
		0.944086, -0.141590, 0.297747,
		35.787807, 34.671478, 45.164963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051331, 34.443123, 45.576321>,  <35.126945, 34.770592, 44.956539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051331, 34.443123, 45.576321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412003, 34.615753, 45.565594>,  <35.628407, 34.719334, 45.559158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412003, 34.615753, 45.565594>,  <35.051331, 34.443123, 45.576321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412003, 34.615753, 45.565594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175679, 0.422304, 0.889267,
		0.395105, -0.797124, 0.456601,
		0.901681, 0.431569, -0.026817,
		35.682507, 34.745228, 45.557549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402573, 34.195187, 46.198700>,  <35.051331, 34.443123, 45.576321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402573, 34.195187, 46.198700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561417, 34.536186, 46.062729>,  <35.656723, 34.740784, 45.981144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561417, 34.536186, 46.062729>,  <35.402573, 34.195187, 46.198700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561417, 34.536186, 46.062729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099664, 0.408254, 0.907411,
		0.912343, -0.326465, 0.247086,
		0.397112, 0.852496, -0.339931,
		35.680550, 34.791935, 45.960751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488121, 34.582413, 46.856632>,  <35.402573, 34.195187, 46.198700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488121, 34.582413, 46.856632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530556, 34.858028, 46.569866>,  <35.556015, 35.023396, 46.397804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530556, 34.858028, 46.569866>,  <35.488121, 34.582413, 46.856632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530556, 34.858028, 46.569866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203185, 0.720797, 0.662697,
		0.973376, 0.075363, 0.216470,
		0.106088, 0.689037, -0.716919,
		35.562382, 35.064739, 46.354790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970970, 34.937328, 47.099998>,  <35.488121, 34.582413, 46.856632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970970, 34.937328, 47.099998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786636, 35.153431, 46.818359>,  <35.676037, 35.283092, 46.649376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786636, 35.153431, 46.818359>,  <35.970970, 34.937328, 47.099998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786636, 35.153431, 46.818359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115282, 0.750203, 0.651080,
		0.879966, 0.381211, -0.283440,
		-0.460836, 0.540253, -0.704100,
		35.648384, 35.315506, 46.607128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246799, 35.673702, 47.106171>,  <35.970970, 34.937328, 47.099998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246799, 35.673702, 47.106171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881653, 35.700089, 46.945015>,  <35.662563, 35.715919, 46.848320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881653, 35.700089, 46.945015>,  <36.246799, 35.673702, 47.106171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881653, 35.700089, 46.945015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236717, 0.718513, 0.653991,
		0.332622, 0.692379, -0.640293,
		-0.912868, 0.065964, -0.402890,
		35.607792, 35.719879, 46.824146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176445, 36.351921, 47.084923>,  <36.246799, 35.673702, 47.106171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176445, 36.351921, 47.084923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802380, 36.216255, 47.044060>,  <35.577942, 36.134857, 47.019543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802380, 36.216255, 47.044060>,  <36.176445, 36.351921, 47.084923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802380, 36.216255, 47.044060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348011, 0.826009, 0.443393,
		-0.066003, 0.450196, -0.890487,
		-0.935164, -0.339164, -0.102154,
		35.521832, 36.114506, 47.013412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768261, 36.918983, 46.990604>,  <36.176445, 36.351921, 47.084923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768261, 36.918983, 46.990604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489857, 36.662907, 47.120670>,  <35.322815, 36.509262, 47.198708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489857, 36.662907, 47.120670>,  <35.768261, 36.918983, 46.990604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489857, 36.662907, 47.120670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324276, 0.684290, 0.653141,
		-0.640639, 0.349149, -0.683869,
		-0.696008, -0.640189, 0.325162,
		35.281055, 36.470848, 47.218220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181561, 37.338875, 47.092480>,  <35.768261, 36.918983, 46.990604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181561, 37.338875, 47.092480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149708, 37.016346, 47.326916>,  <35.130596, 36.822826, 47.467575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149708, 37.016346, 47.326916>,  <35.181561, 37.338875, 47.092480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149708, 37.016346, 47.326916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394440, 0.565454, 0.724347,
		-0.915465, -0.173493, -0.363076,
		-0.079634, -0.806326, 0.586086,
		35.125816, 36.774448, 47.502743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512627, 37.326679, 47.266624>,  <35.181561, 37.338875, 47.092480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512627, 37.326679, 47.266624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718750, 37.139492, 47.553806>,  <34.842422, 37.027180, 47.726116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718750, 37.139492, 47.553806>,  <34.512627, 37.326679, 47.266624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718750, 37.139492, 47.553806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391933, 0.616324, 0.683032,
		-0.762134, -0.633362, 0.134181,
		0.515306, -0.467972, 0.717957,
		34.873341, 36.999100, 47.769192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019295, 37.354542, 47.753685>,  <34.512627, 37.326679, 47.266624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019295, 37.354542, 47.753685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358322, 37.272053, 47.949272>,  <34.561741, 37.222561, 48.066624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358322, 37.272053, 47.949272>,  <34.019295, 37.354542, 47.753685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358322, 37.272053, 47.949272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281285, 0.606744, 0.743465,
		-0.449999, -0.767681, 0.456252,
		0.847573, -0.206222, 0.488971,
		34.612595, 37.210186, 48.095963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910126, 37.141018, 48.426792>,  <34.019295, 37.354542, 47.753685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910126, 37.141018, 48.426792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286095, 37.267231, 48.478931>,  <34.511677, 37.342960, 48.510216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286095, 37.267231, 48.478931>,  <33.910126, 37.141018, 48.426792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286095, 37.267231, 48.478931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320715, 0.685202, 0.653942,
		0.117021, -0.656459, 0.745230,
		0.939919, 0.315531, 0.130353,
		34.568069, 37.361889, 48.518036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885342, 37.212910, 49.113972>,  <33.910126, 37.141018, 48.426792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885342, 37.212910, 49.113972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195129, 37.405869, 48.950272>,  <34.381001, 37.521645, 48.852051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195129, 37.405869, 48.950272>,  <33.885342, 37.212910, 49.113972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195129, 37.405869, 48.950272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245127, 0.825222, 0.508843,
		0.583188, -0.293766, 0.757359,
		0.774470, 0.482401, -0.409250,
		34.427471, 37.550591, 48.827496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958763, 37.738983, 49.623718>,  <33.885342, 37.212910, 49.113972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958763, 37.738983, 49.623718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188778, 37.868217, 49.323067>,  <34.326786, 37.945759, 49.142677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188778, 37.868217, 49.323067>,  <33.958763, 37.738983, 49.623718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188778, 37.868217, 49.323067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109417, 0.940836, 0.320711,
		0.810778, -0.102180, 0.576367,
		0.575037, 0.323089, -0.751629,
		34.361290, 37.965145, 49.097580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521473, 38.109180, 49.911533>,  <33.958763, 37.738983, 49.623718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521473, 38.109180, 49.911533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447952, 38.251038, 49.544830>,  <34.403839, 38.336151, 49.324810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447952, 38.251038, 49.544830>,  <34.521473, 38.109180, 49.911533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447952, 38.251038, 49.544830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149505, 0.911711, 0.382664,
		0.971527, 0.207394, -0.114554,
		-0.183802, 0.354642, -0.916758,
		34.392811, 38.357430, 49.269802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690186, 38.675518, 50.005802>,  <34.521473, 38.109180, 49.911533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690186, 38.675518, 50.005802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508896, 38.721943, 49.652279>,  <34.400124, 38.749798, 49.440166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508896, 38.721943, 49.652279>,  <34.690186, 38.675518, 50.005802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508896, 38.721943, 49.652279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257962, 0.931985, 0.254676,
		0.853255, 0.343414, -0.392458,
		-0.453224, 0.116065, -0.883808,
		34.372929, 38.756763, 49.387138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863747, 39.367107, 49.806660>,  <34.690186, 38.675518, 50.005802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863747, 39.367107, 49.806660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533138, 39.259560, 49.608845>,  <34.334774, 39.195030, 49.490154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533138, 39.259560, 49.608845>,  <34.863747, 39.367107, 49.806660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533138, 39.259560, 49.608845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421594, 0.877817, 0.227367,
		0.372984, 0.396420, -0.838889,
		-0.826523, -0.268866, -0.494540,
		34.285183, 39.178898, 49.460484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739365, 39.869427, 49.363552>,  <34.863747, 39.367107, 49.806660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739365, 39.869427, 49.363552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383972, 39.693188, 49.414879>,  <34.170734, 39.587444, 49.445675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383972, 39.693188, 49.414879>,  <34.739365, 39.869427, 49.363552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383972, 39.693188, 49.414879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377579, 0.860795, 0.341271,
		-0.260820, 0.254763, -0.931165,
		-0.888486, -0.440599, 0.128320,
		34.117428, 39.561008, 49.453373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513958, 40.448677, 49.706825>,  <34.739365, 39.869427, 49.363552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513958, 40.448677, 49.706825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706604, 40.753181, 49.533150>,  <34.822193, 40.935886, 49.428944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706604, 40.753181, 49.533150>,  <34.513958, 40.448677, 49.706825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706604, 40.753181, 49.533150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142716, -0.420695, -0.895906,
		-0.864683, 0.493451, -0.093969,
		0.481618, 0.761264, -0.434191,
		34.851089, 40.981560, 49.402893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098507, 40.490936, 49.132004>,  <34.513958, 40.448677, 49.706825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098507, 40.490936, 49.132004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423019, 40.699207, 49.025631>,  <34.617725, 40.824169, 48.961807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423019, 40.699207, 49.025631>,  <34.098507, 40.490936, 49.132004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423019, 40.699207, 49.025631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036695, -0.499292, -0.865657,
		-0.583506, 0.692531, -0.424171,
		0.811279, 0.520681, -0.265927,
		34.666405, 40.855412, 48.945854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042042, 40.601994, 48.420513>,  <34.098507, 40.490936, 49.132004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042042, 40.601994, 48.420513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434895, 40.650814, 48.477806>,  <34.670609, 40.680107, 48.512184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434895, 40.650814, 48.477806>,  <34.042042, 40.601994, 48.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434895, 40.650814, 48.477806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182716, -0.436341, -0.881034,
		-0.045035, 0.891464, -0.450847,
		0.982134, 0.122054, 0.143235,
		34.729534, 40.687431, 48.520775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240891, 40.812069, 47.805393>,  <34.042042, 40.601994, 48.420513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240891, 40.812069, 47.805393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586514, 40.726025, 47.987442>,  <34.793888, 40.674397, 48.096672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586514, 40.726025, 47.987442>,  <34.240891, 40.812069, 47.805393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586514, 40.726025, 47.987442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335624, -0.427664, -0.839321,
		0.375189, 0.877969, -0.297327,
		0.864054, -0.215114, 0.455123,
		34.845730, 40.661491, 48.123978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756077, 40.981491, 47.261532>,  <34.240891, 40.812069, 47.805393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756077, 40.981491, 47.261532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939651, 40.742207, 47.524292>,  <35.049797, 40.598637, 47.681950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939651, 40.742207, 47.524292>,  <34.756077, 40.981491, 47.261532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939651, 40.742207, 47.524292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511408, -0.426733, -0.745896,
		0.726523, 0.678266, 0.110084,
		0.458940, -0.598209, 0.656902,
		35.077332, 40.562744, 47.721363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394543, 40.893871, 46.983940>,  <34.756077, 40.981491, 47.261532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394543, 40.893871, 46.983940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365402, 40.579945, 47.230114>,  <35.347919, 40.391590, 47.377819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365402, 40.579945, 47.230114>,  <35.394543, 40.893871, 46.983940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365402, 40.579945, 47.230114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513302, -0.558576, -0.651548,
		0.855111, 0.268441, 0.443536,
		-0.072847, -0.784813, 0.615436,
		35.343548, 40.344501, 47.414745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067467, 40.469635, 46.849293>,  <35.394543, 40.893871, 46.983940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067467, 40.469635, 46.849293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813301, 40.215508, 47.024849>,  <35.660801, 40.063030, 47.130184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813301, 40.215508, 47.024849>,  <36.067467, 40.469635, 46.849293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813301, 40.215508, 47.024849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140570, -0.654056, -0.743271,
		0.759272, -0.410587, 0.504901,
		-0.635411, -0.635318, 0.438889,
		35.622677, 40.024914, 47.156517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388206, 39.791504, 46.800198>,  <36.067467, 40.469635, 46.849293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388206, 39.791504, 46.800198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992664, 39.751038, 46.843895>,  <35.755341, 39.726757, 46.870113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992664, 39.751038, 46.843895>,  <36.388206, 39.791504, 46.800198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992664, 39.751038, 46.843895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021090, -0.631144, -0.775379,
		0.147394, -0.769040, 0.621975,
		-0.988853, -0.101169, 0.109246,
		35.696007, 39.720688, 46.876667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411934, 39.059757, 46.786797>,  <36.388206, 39.791504, 46.800198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411934, 39.059757, 46.786797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056381, 39.219109, 46.696304>,  <35.843048, 39.314720, 46.642010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056381, 39.219109, 46.696304>,  <36.411934, 39.059757, 46.786797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056381, 39.219109, 46.696304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079421, -0.620327, -0.780312,
		-0.451195, -0.675639, 0.583039,
		-0.888884, 0.398378, -0.226229,
		35.789715, 39.338623, 46.628437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028481, 38.508865, 46.456501>,  <36.411934, 39.059757, 46.786797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028481, 38.508865, 46.456501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751053, 38.781136, 46.362144>,  <35.584599, 38.944496, 46.305531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751053, 38.781136, 46.362144>,  <36.028481, 38.508865, 46.456501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751053, 38.781136, 46.362144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136729, -0.445882, -0.884587,
		-0.707299, -0.581266, 0.402316,
		-0.693566, 0.680676, -0.235896,
		35.542984, 38.985340, 46.291374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355118, 38.225475, 46.277889>,  <36.028481, 38.508865, 46.456501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355118, 38.225475, 46.277889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389385, 38.567467, 46.073273>,  <35.409946, 38.772663, 45.950504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389385, 38.567467, 46.073273>,  <35.355118, 38.225475, 46.277889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389385, 38.567467, 46.073273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278262, -0.472464, -0.836271,
		-0.956677, 0.213987, 0.197431,
		0.085672, 0.854978, -0.511539,
		35.415089, 38.823959, 45.919811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831734, 38.250435, 45.764050>,  <35.355118, 38.225475, 46.277889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831734, 38.250435, 45.764050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068909, 38.540218, 45.623432>,  <35.211216, 38.714088, 45.539062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068909, 38.540218, 45.623432>,  <34.831734, 38.250435, 45.764050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068909, 38.540218, 45.623432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155388, -0.325420, -0.932714,
		-0.790111, 0.607669, -0.080383,
		0.592940, 0.724458, -0.351543,
		35.246792, 38.757557, 45.517971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507328, 38.410603, 45.108200>,  <34.831734, 38.250435, 45.764050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507328, 38.410603, 45.108200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885384, 38.540810, 45.097237>,  <35.112217, 38.618935, 45.090656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885384, 38.540810, 45.097237>,  <34.507328, 38.410603, 45.108200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885384, 38.540810, 45.097237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102620, -0.375521, -0.921115,
		-0.310133, 0.867768, -0.388324,
		0.945138, 0.325518, -0.027411,
		35.168926, 38.638466, 45.089012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497128, 38.687626, 44.520504>,  <34.507328, 38.410603, 45.108200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497128, 38.687626, 44.520504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880936, 38.616249, 44.607655>,  <35.111221, 38.573421, 44.659946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880936, 38.616249, 44.607655>,  <34.497128, 38.687626, 44.520504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880936, 38.616249, 44.607655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179906, -0.206843, -0.961691,
		0.216677, 0.961963, -0.166367,
		0.959523, -0.178446, 0.217881,
		35.168793, 38.562714, 44.673019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918259, 38.920856, 43.908039>,  <34.497128, 38.687626, 44.520504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918259, 38.920856, 43.908039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151485, 38.670654, 44.115417>,  <35.291420, 38.520535, 44.239845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151485, 38.670654, 44.115417>,  <34.918259, 38.920856, 43.908039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151485, 38.670654, 44.115417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376693, -0.357254, -0.854677,
		0.719817, 0.693627, 0.027319,
		0.583066, -0.625502, 0.518442,
		35.326405, 38.483006, 44.270950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600365, 38.947002, 43.460033>,  <34.918259, 38.920856, 43.908039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600365, 38.947002, 43.460033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616768, 38.630848, 43.704529>,  <35.626610, 38.441154, 43.851227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616768, 38.630848, 43.704529>,  <35.600365, 38.947002, 43.460033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616768, 38.630848, 43.704529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541139, -0.496691, -0.678577,
		0.839933, 0.358591, 0.407340,
		0.041009, -0.790386, 0.611235,
		35.629070, 38.393730, 43.887897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244183, 38.621395, 43.374901>,  <35.600365, 38.947002, 43.460033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244183, 38.621395, 43.374901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992950, 38.347599, 43.522945>,  <35.842209, 38.183319, 43.611771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992950, 38.347599, 43.522945>,  <36.244183, 38.621395, 43.374901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992950, 38.347599, 43.522945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368855, -0.680689, -0.632936,
		0.685169, -0.261021, 0.680009,
		-0.628084, -0.684493, 0.370108,
		35.804523, 38.142250, 43.633976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562187, 38.000523, 43.311653>,  <36.244183, 38.621395, 43.374901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562187, 38.000523, 43.311653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182896, 37.882595, 43.358902>,  <35.955322, 37.811840, 43.387253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182896, 37.882595, 43.358902>,  <36.562187, 38.000523, 43.311653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182896, 37.882595, 43.358902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153961, -0.751994, -0.640938,
		0.277788, -0.589567, 0.758449,
		-0.948225, -0.294816, 0.118124,
		35.898430, 37.794151, 43.394341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638451, 37.394882, 43.506588>,  <36.562187, 38.000523, 43.311653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638451, 37.394882, 43.506588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271404, 37.375538, 43.348785>,  <36.051174, 37.363930, 43.254105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271404, 37.375538, 43.348785>,  <36.638451, 37.394882, 43.506588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271404, 37.375538, 43.348785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232885, -0.869761, -0.435064,
		-0.322087, -0.491098, 0.809372,
		-0.917619, -0.048362, -0.394508,
		35.996120, 37.361031, 43.230434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452293, 36.707848, 43.617970>,  <36.638451, 37.394882, 43.506588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452293, 36.707848, 43.617970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209904, 36.851349, 43.333973>,  <36.064468, 36.937450, 43.163574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209904, 36.851349, 43.333973>,  <36.452293, 36.707848, 43.617970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209904, 36.851349, 43.333973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124652, -0.838678, -0.530171,
		-0.785656, -0.409773, 0.463499,
		-0.605976, 0.358756, -0.709991,
		36.028111, 36.958977, 43.120975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277237, 36.165310, 43.291599>,  <36.452293, 36.707848, 43.617970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277237, 36.165310, 43.291599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139084, 36.410324, 43.007202>,  <36.056194, 36.557331, 42.836563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139084, 36.410324, 43.007202>,  <36.277237, 36.165310, 43.291599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139084, 36.410324, 43.007202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308134, -0.641597, -0.702429,
		-0.886435, -0.461686, 0.032851,
		-0.345379, 0.612535, -0.710995,
		36.035469, 36.594086, 42.793903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753208, 35.778664, 42.868267>,  <36.277237, 36.165310, 43.291599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753208, 35.778664, 42.868267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949100, 36.069530, 42.675858>,  <36.066635, 36.244053, 42.560410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949100, 36.069530, 42.675858>,  <35.753208, 35.778664, 42.868267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949100, 36.069530, 42.675858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369247, -0.672778, -0.641114,
		-0.789822, 0.136357, -0.597986,
		0.489732, 0.727170, -0.481026,
		36.096020, 36.287682, 42.531551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683979, 35.606495, 42.222252>,  <35.753208, 35.778664, 42.868267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683979, 35.606495, 42.222252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984901, 35.869980, 42.217567>,  <36.165455, 36.028069, 42.214756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984901, 35.869980, 42.217567>,  <35.683979, 35.606495, 42.222252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984901, 35.869980, 42.217567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482194, -0.562650, -0.671502,
		-0.448914, 0.499528, -0.740910,
		0.752307, 0.658709, -0.011712,
		36.210594, 36.067593, 42.214054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786499, 35.930969, 41.517796>,  <35.683979, 35.606495, 42.222252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786499, 35.930969, 41.517796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139793, 36.028248, 41.678165>,  <36.351772, 36.086617, 41.774387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139793, 36.028248, 41.678165>,  <35.786499, 35.930969, 41.517796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139793, 36.028248, 41.678165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458708, -0.270613, -0.846378,
		-0.097343, 0.931463, -0.350574,
		0.883239, 0.243199, 0.400927,
		36.404766, 36.101208, 41.798443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232056, 36.281525, 41.001225>,  <35.786499, 35.930969, 41.517796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232056, 36.281525, 41.001225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468540, 36.104576, 41.270973>,  <36.610432, 35.998405, 41.432823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468540, 36.104576, 41.270973>,  <36.232056, 36.281525, 41.001225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468540, 36.104576, 41.270973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514242, -0.437373, -0.737740,
		0.621305, 0.782951, -0.031095,
		0.591214, -0.442371, 0.674369,
		36.645905, 35.971863, 41.473286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914516, 36.394367, 40.802353>,  <36.232056, 36.281525, 41.001225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914516, 36.394367, 40.802353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975868, 36.098236, 41.064159>,  <37.012680, 35.920555, 41.221241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975868, 36.098236, 41.064159>,  <36.914516, 36.394367, 40.802353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975868, 36.098236, 41.064159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749153, -0.344810, -0.565576,
		0.644395, 0.577076, 0.501736,
		0.153377, -0.740331, 0.654512,
		37.021881, 35.876137, 41.260513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600414, 36.441238, 40.906662>,  <36.914516, 36.394367, 40.802353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600414, 36.441238, 40.906662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518131, 36.063732, 41.010197>,  <37.468761, 35.837231, 41.072319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518131, 36.063732, 41.010197>,  <37.600414, 36.441238, 40.906662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518131, 36.063732, 41.010197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625186, -0.330219, -0.707176,
		0.752880, 0.016355, 0.657954,
		-0.205703, -0.943763, 0.258840,
		37.456421, 35.780602, 41.087849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192337, 36.179138, 40.986881>,  <37.600414, 36.441238, 40.906662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192337, 36.179138, 40.986881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964256, 35.854671, 40.934929>,  <37.827408, 35.659992, 40.903759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964256, 35.854671, 40.934929>,  <38.192337, 36.179138, 40.986881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964256, 35.854671, 40.934929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659466, -0.357703, -0.661175,
		0.489868, -0.462656, 0.738904,
		-0.570205, -0.811171, -0.129879,
		37.793194, 35.611320, 40.895966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652523, 35.607479, 41.083939>,  <38.192337, 36.179138, 40.986881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652523, 35.607479, 41.083939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338219, 35.501770, 40.860245>,  <38.149635, 35.438343, 40.726028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338219, 35.501770, 40.860245>,  <38.652523, 35.607479, 41.083939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338219, 35.501770, 40.860245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617508, -0.283182, -0.733820,
		0.035563, -0.921937, 0.385703,
		-0.785760, -0.264271, -0.559233,
		38.102489, 35.422489, 40.692474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853138, 34.961334, 40.747402>,  <38.652523, 35.607479, 41.083939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853138, 34.961334, 40.747402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528324, 35.050331, 40.531590>,  <38.333435, 35.103729, 40.402100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528324, 35.050331, 40.531590>,  <38.853138, 34.961334, 40.747402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528324, 35.050331, 40.531590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382891, -0.494594, -0.780238,
		-0.440445, -0.840163, 0.316439,
		-0.812036, 0.222490, -0.539533,
		38.284714, 35.117077, 40.369728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709465, 34.373882, 40.360020>,  <38.853138, 34.961334, 40.747402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709465, 34.373882, 40.360020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558952, 34.683506, 40.156357>,  <38.468647, 34.869282, 40.034157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558952, 34.683506, 40.156357>,  <38.709465, 34.373882, 40.360020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558952, 34.683506, 40.156357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515282, -0.281880, -0.809338,
		-0.769999, -0.566898, -0.292794,
		-0.376279, 0.774061, -0.509159,
		38.446068, 34.915726, 40.003609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327862, 34.112755, 39.731983>,  <38.709465, 34.373882, 40.360020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327862, 34.112755, 39.731983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417828, 34.491730, 39.640976>,  <38.471809, 34.719116, 39.586372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417828, 34.491730, 39.640976>,  <38.327862, 34.112755, 39.731983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417828, 34.491730, 39.640976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580165, -0.317819, -0.749933,
		-0.782828, 0.036674, -0.621156,
		0.224919, 0.947442, -0.227521,
		38.485302, 34.775963, 39.572720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288277, 34.186451, 38.995956>,  <38.327862, 34.112755, 39.731983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288277, 34.186451, 38.995956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488682, 34.519806, 39.089302>,  <38.608925, 34.719818, 39.145309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488682, 34.519806, 39.089302>,  <38.288277, 34.186451, 38.995956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488682, 34.519806, 39.089302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465020, -0.031813, -0.884728,
		-0.729893, 0.551780, -0.403479,
		0.501011, 0.833383, 0.233369,
		38.638985, 34.769821, 39.159313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364178, 34.474331, 38.299011>,  <38.288277, 34.186451, 38.995956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364178, 34.474331, 38.299011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619106, 34.677383, 38.530922>,  <38.772064, 34.799213, 38.670067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619106, 34.677383, 38.530922>,  <38.364178, 34.474331, 38.299011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619106, 34.677383, 38.530922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627804, 0.094253, -0.772644,
		-0.446862, 0.856405, -0.258622,
		0.637320, 0.507629, 0.579772,
		38.810303, 34.829674, 38.704853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618767, 35.025505, 37.900867>,  <38.364178, 34.474331, 38.299011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618767, 35.025505, 37.900867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893276, 34.967892, 38.186043>,  <39.057983, 34.933323, 38.357147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893276, 34.967892, 38.186043>,  <38.618767, 35.025505, 37.900867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893276, 34.967892, 38.186043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726496, 0.088462, -0.681453,
		0.035083, 0.985611, 0.165347,
		0.686275, -0.144031, 0.712939,
		39.099159, 34.924683, 38.399925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099140, 35.616367, 37.831062>,  <38.618767, 35.025505, 37.900867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099140, 35.616367, 37.831062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273170, 35.321407, 38.037727>,  <39.377590, 35.144432, 38.161728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273170, 35.321407, 38.037727>,  <39.099140, 35.616367, 37.831062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273170, 35.321407, 38.037727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576185, -0.212929, -0.789096,
		0.691895, 0.641014, 0.332239,
		0.435078, -0.737402, 0.516667,
		39.403694, 35.100185, 38.192726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810383, 35.754932, 37.630871>,  <39.099140, 35.616367, 37.831062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810383, 35.754932, 37.630871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810528, 35.394783, 37.804916>,  <39.810616, 35.178692, 37.909344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810528, 35.394783, 37.804916>,  <39.810383, 35.754932, 37.630871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810528, 35.394783, 37.804916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836806, -0.237952, -0.493087,
		0.547500, 0.364282, 0.753354,
		0.000361, -0.900376, 0.435112,
		39.810635, 35.124672, 37.935452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407391, 35.724640, 38.103642>,  <39.810383, 35.754932, 37.630871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407391, 35.724640, 38.103642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297710, 35.354298, 37.999634>,  <40.231903, 35.132092, 37.937229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297710, 35.354298, 37.999634>,  <40.407391, 35.724640, 38.103642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297710, 35.354298, 37.999634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767327, -0.047660, -0.639482,
		0.579673, -0.374869, 0.723500,
		-0.274204, -0.925852, -0.260020,
		40.215450, 35.076542, 37.921627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047947, 35.312267, 38.186707>,  <40.407391, 35.724640, 38.103642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047947, 35.312267, 38.186707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821121, 35.097523, 37.936836>,  <40.685024, 34.968678, 37.786915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821121, 35.097523, 37.936836>,  <41.047947, 35.312267, 38.186707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821121, 35.097523, 37.936836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690463, 0.103683, -0.715899,
		0.449105, -0.837276, 0.311887,
		-0.567068, -0.536860, -0.624672,
		40.651001, 34.936466, 37.749435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497147, 34.914505, 37.709358>,  <41.047947, 35.312267, 38.186707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497147, 34.914505, 37.709358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141800, 34.898766, 37.526379>,  <40.928593, 34.889324, 37.416592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141800, 34.898766, 37.526379>,  <41.497147, 34.914505, 37.709358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141800, 34.898766, 37.526379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455725, 0.045699, -0.888947,
		0.055901, -0.998179, -0.022656,
		-0.888363, -0.039368, -0.457450,
		40.875290, 34.886963, 37.389145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606144, 34.363300, 37.197510>,  <41.497147, 34.914505, 37.709358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606144, 34.363300, 37.197510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341381, 34.642895, 37.089222>,  <41.182522, 34.810654, 37.024250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341381, 34.642895, 37.089222>,  <41.606144, 34.363300, 37.197510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341381, 34.642895, 37.089222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502394, 0.145648, -0.852283,
		-0.556307, -0.700142, -0.447574,
		-0.661908, 0.698990, -0.270723,
		41.142807, 34.852592, 37.008003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185368, 34.206833, 36.514107>,  <41.606144, 34.363300, 37.197510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185368, 34.206833, 36.514107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292610, 34.584339, 36.591484>,  <41.356956, 34.810844, 36.637913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292610, 34.584339, 36.591484>,  <41.185368, 34.206833, 36.514107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292610, 34.584339, 36.591484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598008, -0.005606, -0.801471,
		-0.755317, 0.330563, -0.565883,
		0.268109, 0.943767, 0.193445,
		41.373043, 34.867470, 36.649517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096779, 34.692116, 35.984344>,  <41.185368, 34.206833, 36.514107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096779, 34.692116, 35.984344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402756, 34.819893, 36.208065>,  <41.586342, 34.896557, 36.342297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402756, 34.819893, 36.208065>,  <41.096779, 34.692116, 35.984344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402756, 34.819893, 36.208065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570824, 0.066014, -0.818414,
		-0.298356, 0.945304, -0.131847,
		0.764947, 0.319440, 0.559298,
		41.632240, 34.915726, 36.375854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353264, 35.367081, 35.930077>,  <41.096779, 34.692116, 35.984344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353264, 35.367081, 35.930077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659470, 35.117413, 35.992554>,  <41.843193, 34.967613, 36.030041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659470, 35.117413, 35.992554>,  <41.353264, 35.367081, 35.930077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659470, 35.117413, 35.992554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396820, 0.266905, -0.878234,
		0.506476, 0.734285, 0.452003,
		0.765516, -0.624169, 0.156198,
		41.889126, 34.930161, 36.039413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935150, 35.808289, 35.830173>,  <41.353264, 35.367081, 35.930077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935150, 35.808289, 35.830173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983864, 35.417358, 35.760883>,  <42.013092, 35.182800, 35.719311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983864, 35.417358, 35.760883>,  <41.935150, 35.808289, 35.830173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983864, 35.417358, 35.760883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069922, 0.182536, -0.980710,
		0.990090, 0.107327, 0.090567,
		0.121788, -0.977324, -0.173222,
		42.020401, 35.124161, 35.708916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458515, 35.729126, 35.265507>,  <41.935150, 35.808289, 35.830173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458515, 35.729126, 35.265507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233940, 35.398380, 35.278645>,  <42.099194, 35.199932, 35.286526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233940, 35.398380, 35.278645>,  <42.458515, 35.729126, 35.265507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233940, 35.398380, 35.278645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087435, -0.098738, -0.991265,
		0.822885, -0.553665, 0.127733,
		-0.561441, -0.826865, 0.032840,
		42.065506, 35.150322, 35.288498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856991, 35.389824, 34.811176>,  <42.458515, 35.729126, 35.265507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856991, 35.389824, 34.811176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500774, 35.209354, 34.834419>,  <42.287045, 35.101074, 34.848366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500774, 35.209354, 34.834419>,  <42.856991, 35.389824, 34.811176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500774, 35.209354, 34.834419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047863, -0.034097, -0.998272,
		0.452376, -0.891784, 0.008770,
		-0.890542, -0.451174, 0.058109,
		42.233612, 35.074001, 34.851852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348495, 34.937771, 34.791145>,  <42.856991, 35.389824, 34.811176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348495, 34.937771, 34.791145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490402, 34.563797, 34.788727>,  <43.575546, 34.339413, 34.787277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490402, 34.563797, 34.788727>,  <43.348495, 34.937771, 34.791145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490402, 34.563797, 34.788727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802383, -0.301139, -0.515265,
		0.479920, 0.187647, -0.857010,
		0.354767, -0.934935, -0.006042,
		43.596832, 34.283318, 34.786915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047878, 34.754707, 34.168785>,  <43.348495, 34.937771, 34.791145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047878, 34.754707, 34.168785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122952, 34.424995, 34.382450>,  <43.167995, 34.227169, 34.510651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122952, 34.424995, 34.382450>,  <43.047878, 34.754707, 34.168785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122952, 34.424995, 34.382450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753574, -0.469650, -0.459951,
		0.630000, -0.316204, -0.709306,
		0.187688, -0.824284, 0.534162,
		43.179256, 34.177711, 34.542698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864777, 34.174126, 33.754589>,  <43.047878, 34.754707, 34.168785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864777, 34.174126, 33.754589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900120, 34.006466, 34.116032>,  <42.921326, 33.905869, 34.332897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900120, 34.006466, 34.116032>,  <42.864777, 34.174126, 33.754589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900120, 34.006466, 34.116032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748995, -0.625986, -0.217136,
		0.656658, -0.657613, -0.369250,
		0.088353, -0.419151, 0.903608,
		42.926624, 33.880722, 34.387115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858768, 33.439693, 33.609417>,  <42.864777, 34.174126, 33.754589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858768, 33.439693, 33.609417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752903, 33.503181, 33.989891>,  <42.689384, 33.541275, 34.218178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752903, 33.503181, 33.989891>,  <42.858768, 33.439693, 33.609417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752903, 33.503181, 33.989891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715971, -0.693112, -0.083559,
		0.646016, -0.703138, 0.297087,
		-0.264668, 0.158725, 0.951187,
		42.673504, 33.550800, 34.275246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681557, 32.781349, 33.975475>,  <42.858768, 33.439693, 33.609417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681557, 32.781349, 33.975475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496265, 33.054211, 34.201778>,  <42.385090, 33.217930, 34.337559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496265, 33.054211, 34.201778>,  <42.681557, 32.781349, 33.975475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496265, 33.054211, 34.201778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821172, -0.570470, 0.015488,
		0.333313, -0.457410, 0.824426,
		-0.463226, 0.682158, 0.565757,
		42.357296, 33.258858, 34.371506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382198, 32.361851, 34.400986>,  <42.681557, 32.781349, 33.975475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382198, 32.361851, 34.400986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195068, 32.714970, 34.383980>,  <42.082790, 32.926842, 34.373775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195068, 32.714970, 34.383980>,  <42.382198, 32.361851, 34.400986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195068, 32.714970, 34.383980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883820, -0.467363, 0.020853,
		-0.001463, 0.047335, 0.998878,
		-0.467826, 0.882797, -0.042520,
		42.054722, 32.979809, 34.371223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832958, 32.365215, 34.876602>,  <42.382198, 32.361851, 34.400986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832958, 32.365215, 34.876602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718918, 32.672668, 34.647545>,  <41.650494, 32.857140, 34.510109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718918, 32.672668, 34.647545>,  <41.832958, 32.365215, 34.876602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718918, 32.672668, 34.647545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915651, -0.395036, -0.074361,
		-0.283371, 0.503142, 0.816425,
		-0.285103, 0.768632, -0.572644,
		41.633389, 32.903259, 34.475750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103676, 32.395744, 34.932873>,  <41.832958, 32.365215, 34.876602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103676, 32.395744, 34.932873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153782, 32.629311, 34.612034>,  <41.183846, 32.769451, 34.419533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153782, 32.629311, 34.612034>,  <41.103676, 32.395744, 34.932873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153782, 32.629311, 34.612034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800137, -0.418542, -0.429657,
		-0.586591, 0.695606, 0.414780,
		0.125269, 0.583914, -0.802093,
		41.191364, 32.804485, 34.371407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461525, 32.675060, 34.808132>,  <41.103676, 32.395744, 34.932873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461525, 32.675060, 34.808132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654892, 32.711212, 34.459846>,  <40.770912, 32.732903, 34.250877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654892, 32.711212, 34.459846>,  <40.461525, 32.675060, 34.808132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654892, 32.711212, 34.459846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821166, -0.297807, -0.486824,
		-0.303302, 0.950338, -0.069750,
		0.483419, 0.090378, -0.870711,
		40.799919, 32.738327, 34.198631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058468, 33.110016, 34.315586>,  <40.461525, 32.675060, 34.808132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058468, 33.110016, 34.315586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304890, 32.916412, 34.067001>,  <40.452744, 32.800251, 33.917850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304890, 32.916412, 34.067001>,  <40.058468, 33.110016, 34.315586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304890, 32.916412, 34.067001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751765, -0.125680, -0.647344,
		0.235214, 0.865992, -0.441285,
		0.616055, -0.484007, -0.621461,
		40.489708, 32.771210, 33.880562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033966, 33.429745, 33.611374>,  <40.058468, 33.110016, 34.315586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033966, 33.429745, 33.611374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148785, 33.051506, 33.550117>,  <40.217674, 32.824562, 33.513363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148785, 33.051506, 33.550117>,  <40.033966, 33.429745, 33.611374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148785, 33.051506, 33.550117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539362, -0.027423, -0.841627,
		0.791640, 0.324185, -0.517891,
		0.287045, -0.945596, -0.153144,
		40.234898, 32.767826, 33.504173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592743, 33.322338, 33.053726>,  <40.033966, 33.429745, 33.611374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592743, 33.322338, 33.053726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755127, 32.959419, 33.097561>,  <39.852558, 32.741669, 33.123859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755127, 32.959419, 33.097561>,  <39.592743, 33.322338, 33.053726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755127, 32.959419, 33.097561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480121, -0.313762, -0.819169,
		0.777614, 0.279934, -0.562986,
		0.405957, -0.907298, 0.109583,
		39.876915, 32.687229, 33.130436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812508, 33.146858, 32.400345>,  <39.592743, 33.322338, 33.053726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812508, 33.146858, 32.400345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751671, 32.808712, 32.605179>,  <39.715168, 32.605824, 32.728077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751671, 32.808712, 32.605179>,  <39.812508, 33.146858, 32.400345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751671, 32.808712, 32.605179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575716, -0.345362, -0.741132,
		0.803379, -0.407535, -0.434163,
		-0.152094, -0.845365, 0.512081,
		39.706043, 32.555103, 32.758804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091473, 32.590630, 32.045597>,  <39.812508, 33.146858, 32.400345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091473, 32.590630, 32.045597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804966, 32.445587, 32.284084>,  <39.633060, 32.358562, 32.427177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804966, 32.445587, 32.284084>,  <40.091473, 32.590630, 32.045597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804966, 32.445587, 32.284084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506417, -0.317720, -0.801620,
		0.480101, -0.876112, 0.043945,
		-0.716271, -0.362605, 0.596216,
		39.590084, 32.336807, 32.462948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881687, 32.078613, 31.663292>,  <40.091473, 32.590630, 32.045597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881687, 32.078613, 31.663292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598274, 32.065830, 31.945274>,  <39.428226, 32.058159, 32.114464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598274, 32.065830, 31.945274>,  <39.881687, 32.078613, 31.663292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598274, 32.065830, 31.945274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633022, -0.412718, -0.654940,
		0.311879, -0.910298, 0.272192,
		-0.708530, -0.031958, 0.704957,
		39.385715, 32.056244, 32.156761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584553, 31.454100, 31.581913>,  <39.881687, 32.078613, 31.663292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584553, 31.454100, 31.581913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314430, 31.687510, 31.762339>,  <39.152355, 31.827555, 31.870594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314430, 31.687510, 31.762339>,  <39.584553, 31.454100, 31.581913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314430, 31.687510, 31.762339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679502, -0.254451, -0.688136,
		-0.286780, -0.771194, 0.568345,
		-0.675303, 0.583536, 0.451057,
		39.111839, 31.862566, 31.897657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093224, 31.018412, 31.725124>,  <39.584553, 31.454100, 31.581913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093224, 31.018412, 31.725124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923195, 31.380424, 31.731222>,  <38.821178, 31.597631, 31.734880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923195, 31.380424, 31.731222>,  <39.093224, 31.018412, 31.725124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923195, 31.380424, 31.731222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765559, -0.350476, -0.539523,
		-0.482943, -0.241006, 0.841833,
		-0.425071, 0.905032, 0.015245,
		38.795673, 31.651934, 31.735796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435799, 30.879515, 31.721838>,  <39.093224, 31.018412, 31.725124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435799, 30.879515, 31.721838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419453, 31.267315, 31.625175>,  <38.409645, 31.499994, 31.567177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419453, 31.267315, 31.625175>,  <38.435799, 30.879515, 31.721838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419453, 31.267315, 31.625175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776679, -0.182976, -0.602735,
		-0.628570, 0.163060, 0.760468,
		-0.040866, 0.969500, -0.241658,
		38.407192, 31.558165, 31.552677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768738, 31.025492, 31.749859>,  <38.435799, 30.879515, 31.721838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768738, 31.025492, 31.749859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960823, 31.262508, 31.491158>,  <38.076073, 31.404718, 31.335938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960823, 31.262508, 31.491158>,  <37.768738, 31.025492, 31.749859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960823, 31.262508, 31.491158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651191, -0.253157, -0.715445,
		-0.587661, 0.764726, 0.264289,
		0.480213, 0.592542, -0.646753,
		38.104885, 31.440271, 31.297132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243313, 31.392235, 31.459785>,  <37.768738, 31.025492, 31.749859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243313, 31.392235, 31.459785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542175, 31.445461, 31.199308>,  <37.721493, 31.477396, 31.043022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542175, 31.445461, 31.199308>,  <37.243313, 31.392235, 31.459785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542175, 31.445461, 31.199308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637621, -0.133066, -0.758771,
		-0.187617, 0.982134, -0.014576,
		0.747154, 0.133064, -0.651195,
		37.766323, 31.485380, 31.003950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031189, 31.957767, 31.008169>,  <37.243313, 31.392235, 31.459785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031189, 31.957767, 31.008169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291599, 31.728397, 30.809235>,  <37.447845, 31.590775, 30.689875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291599, 31.728397, 30.809235>,  <37.031189, 31.957767, 31.008169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291599, 31.728397, 30.809235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480754, 0.195539, -0.854775,
		0.587400, 0.795579, -0.148376,
		0.651028, -0.573427, -0.497337,
		37.486908, 31.556370, 30.660034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144829, 32.307873, 30.283850>,  <37.031189, 31.957767, 31.008169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144829, 32.307873, 30.283850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263943, 31.927145, 30.254538>,  <37.335411, 31.698709, 30.236950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263943, 31.927145, 30.254538>,  <37.144829, 32.307873, 30.283850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263943, 31.927145, 30.254538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366886, -0.043239, -0.929261,
		0.881317, 0.303603, -0.362084,
		0.297783, -0.951817, -0.073280,
		37.353279, 31.641600, 30.232553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772343, 32.172913, 29.641096>,  <37.144829, 32.307873, 30.283850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772343, 32.172913, 29.641096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836647, 32.407593, 29.323622>,  <36.875229, 32.548401, 29.133137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836647, 32.407593, 29.323622>,  <36.772343, 32.172913, 29.641096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836647, 32.407593, 29.323622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894815, 0.425966, 0.133635,
		0.416488, 0.688720, 0.593467,
		0.160760, 0.586701, -0.793687,
		36.884876, 32.583603, 29.085516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634716, 32.863155, 29.871620>,  <36.772343, 32.172913, 29.641096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634716, 32.863155, 29.871620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589817, 32.830185, 29.475517>,  <36.562878, 32.810402, 29.237856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589817, 32.830185, 29.475517>,  <36.634716, 32.863155, 29.871620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589817, 32.830185, 29.475517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879357, 0.472321, 0.060366,
		0.462743, 0.877565, -0.125496,
		-0.112249, -0.082422, -0.990256,
		36.556141, 32.805458, 29.178440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306671, 33.131760, 29.706579>,  <36.634716, 32.863155, 29.871620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306671, 33.131760, 29.706579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325459, 33.384109, 30.016365>,  <37.336731, 33.535519, 30.202236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325459, 33.384109, 30.016365>,  <37.306671, 33.131760, 29.706579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325459, 33.384109, 30.016365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166665, 0.759503, -0.628791,
		-0.984894, 0.158608, -0.069473,
		0.046966, 0.630872, 0.774464,
		37.339550, 33.573372, 30.248705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605598, 33.816910, 29.764977>,  <37.306671, 33.131760, 29.706579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605598, 33.816910, 29.764977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571873, 34.150887, 29.982513>,  <37.551640, 34.351273, 30.113035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571873, 34.150887, 29.982513>,  <37.605598, 33.816910, 29.764977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571873, 34.150887, 29.982513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842256, 0.351352, -0.408849,
		-0.532445, 0.423582, -0.732858,
		-0.084310, 0.834943, 0.543840,
		37.546581, 34.401371, 30.145666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690716, 34.441212, 29.307798>,  <37.605598, 33.816910, 29.764977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690716, 34.441212, 29.307798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802658, 34.555187, 29.674513>,  <37.869823, 34.623573, 29.894541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802658, 34.555187, 29.674513>,  <37.690716, 34.441212, 29.307798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802658, 34.555187, 29.674513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741691, 0.542165, -0.394908,
		-0.609572, 0.790486, -0.059609,
		0.279852, 0.284936, 0.916785,
		37.886612, 34.640667, 29.949549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758984, 35.161171, 29.280859>,  <37.690716, 34.441212, 29.307798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758984, 35.161171, 29.280859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988682, 35.065731, 29.594114>,  <38.126503, 35.008465, 29.782068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988682, 35.065731, 29.594114>,  <37.758984, 35.161171, 29.280859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988682, 35.065731, 29.594114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716821, 0.608641, -0.340182,
		-0.395482, 0.756720, 0.520547,
		0.574249, -0.238603, 0.783139,
		38.160957, 34.994148, 29.829056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191528, 35.747066, 29.573551>,  <37.758984, 35.161171, 29.280859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191528, 35.747066, 29.573551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379124, 35.435268, 29.739655>,  <38.491680, 35.248188, 29.839315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379124, 35.435268, 29.739655>,  <38.191528, 35.747066, 29.573551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379124, 35.435268, 29.739655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881471, 0.442549, -0.164803,
		-0.055309, 0.443328, 0.894652,
		0.468989, -0.779494, 0.415257,
		38.519821, 35.201420, 29.864231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709881, 36.032375, 29.934687>,  <38.191528, 35.747066, 29.573551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709881, 36.032375, 29.934687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828201, 35.664146, 29.832663>,  <38.899193, 35.443211, 29.771448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828201, 35.664146, 29.832663>,  <38.709881, 36.032375, 29.934687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828201, 35.664146, 29.832663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854666, 0.374305, -0.359780,
		0.426674, -0.111571, 0.897497,
		0.295797, -0.920569, -0.255062,
		38.916939, 35.387974, 29.756144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517815, 36.342117, 30.039059>,  <38.709881, 36.032375, 29.934687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517815, 36.342117, 30.039059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329426, 36.196415, 30.360430>,  <39.216393, 36.108994, 30.553253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329426, 36.196415, 30.360430>,  <39.517815, 36.342117, 30.039059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329426, 36.196415, 30.360430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828071, -0.496527, 0.260307,
		0.304105, 0.787895, 0.535483,
		-0.470976, -0.364257, 0.803429,
		39.188133, 36.087139, 30.601460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906799, 36.566338, 30.636951>,  <39.517815, 36.342117, 30.039059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906799, 36.566338, 30.636951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770721, 36.190243, 30.630966>,  <39.689075, 35.964588, 30.627375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770721, 36.190243, 30.630966>,  <39.906799, 36.566338, 30.636951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770721, 36.190243, 30.630966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880924, -0.324223, 0.344749,
		-0.328997, 0.104101, 0.938575,
		-0.340197, -0.940235, -0.014963,
		39.668663, 35.908173, 30.626478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229767, 36.209988, 31.208662>,  <39.906799, 36.566338, 30.636951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229767, 36.209988, 31.208662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121628, 35.936237, 30.937798>,  <40.056744, 35.771988, 30.775278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121628, 35.936237, 30.937798>,  <40.229767, 36.209988, 31.208662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121628, 35.936237, 30.937798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893050, -0.441029, 0.089190,
		-0.359687, -0.580627, 0.730409,
		-0.270346, -0.684373, -0.677161,
		40.040524, 35.730927, 30.734650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272114, 35.549255, 31.539097>,  <40.229767, 36.209988, 31.208662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272114, 35.549255, 31.539097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306652, 35.500854, 31.143541>,  <40.327374, 35.471813, 30.906208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306652, 35.500854, 31.143541>,  <40.272114, 35.549255, 31.539097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306652, 35.500854, 31.143541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938267, -0.323852, 0.121550,
		-0.334962, -0.938338, 0.085572,
		0.086343, -0.121004, -0.988890,
		40.332554, 35.464554, 30.846874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592987, 34.851322, 31.441067>,  <40.272114, 35.549255, 31.539097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592987, 34.851322, 31.441067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674774, 35.018158, 31.086840>,  <40.723846, 35.118259, 30.874304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674774, 35.018158, 31.086840>,  <40.592987, 34.851322, 31.441067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674774, 35.018158, 31.086840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952704, -0.292583, 0.082163,
		-0.224833, -0.860484, -0.457184,
		0.204464, 0.417088, -0.885569,
		40.736115, 35.143284, 30.821169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770580, 34.338005, 30.898140>,  <40.592987, 34.851322, 31.441067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770580, 34.338005, 30.898140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950352, 34.678715, 30.790440>,  <41.058216, 34.883141, 30.725821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950352, 34.678715, 30.790440>,  <40.770580, 34.338005, 30.898140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950352, 34.678715, 30.790440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873974, -0.481631, -0.064818,
		-0.184889, -0.206186, -0.960887,
		0.449428, 0.851774, -0.269249,
		41.085178, 34.934246, 30.709665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403458, 34.106583, 30.615131>,  <40.770580, 34.338005, 30.898140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403458, 34.106583, 30.615131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457474, 34.502918, 30.613945>,  <41.489883, 34.740719, 30.613234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457474, 34.502918, 30.613945>,  <41.403458, 34.106583, 30.615131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457474, 34.502918, 30.613945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979395, -0.133024, 0.151957,
		0.150170, -0.023426, -0.988383,
		0.135038, 0.990836, -0.002968,
		41.497986, 34.800171, 30.613054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002686, 34.256485, 30.172468>,  <41.403458, 34.106583, 30.615131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002686, 34.256485, 30.172468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965839, 34.566322, 30.422752>,  <41.943733, 34.752224, 30.572924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965839, 34.566322, 30.422752>,  <42.002686, 34.256485, 30.172468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965839, 34.566322, 30.422752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980847, -0.037722, 0.191094,
		0.171623, 0.631330, -0.756285,
		-0.092115, 0.774596, 0.625712,
		41.938206, 34.798702, 30.610466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542679, 34.567776, 29.953432>,  <42.002686, 34.256485, 30.172468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542679, 34.567776, 29.953432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457272, 34.722832, 30.312128>,  <42.406029, 34.815865, 30.527346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457272, 34.722832, 30.312128>,  <42.542679, 34.567776, 29.953432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457272, 34.722832, 30.312128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976620, 0.061228, 0.206068,
		0.024974, 0.919775, -0.391651,
		-0.213516, 0.387641, 0.896742,
		42.393215, 34.839123, 30.581150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077248, 35.191265, 30.127644>,  <42.542679, 34.567776, 29.953432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077248, 35.191265, 30.127644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933395, 35.030365, 30.464418>,  <42.847084, 34.933823, 30.666483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933395, 35.030365, 30.464418>,  <43.077248, 35.191265, 30.127644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933395, 35.030365, 30.464418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906561, 0.063011, 0.417344,
		-0.220930, 0.913357, 0.342006,
		-0.359634, -0.402253, 0.841936,
		42.825504, 34.909691, 30.716999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601624, 35.505951, 30.614508>,  <43.077248, 35.191265, 30.127644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601624, 35.505951, 30.614508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406342, 35.222534, 30.818317>,  <43.289173, 35.052483, 30.940603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406342, 35.222534, 30.818317>,  <43.601624, 35.505951, 30.614508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406342, 35.222534, 30.818317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756824, -0.052994, 0.651467,
		-0.434593, 0.703671, 0.562117,
		-0.488208, -0.708547, 0.509524,
		43.259880, 35.009972, 30.971174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608109, 35.712788, 31.280098>,  <43.601624, 35.505951, 30.614508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608109, 35.712788, 31.280098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520985, 35.323170, 31.304735>,  <43.468712, 35.089397, 31.319517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520985, 35.323170, 31.304735>,  <43.608109, 35.712788, 31.280098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520985, 35.323170, 31.304735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742989, -0.124558, 0.657611,
		-0.632871, 0.188999, 0.750835,
		-0.217810, -0.974046, 0.061595,
		43.455643, 35.030956, 31.323214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530628, 35.591034, 32.005730>,  <43.608109, 35.712788, 31.280098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530628, 35.591034, 32.005730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613289, 35.258575, 31.799236>,  <43.662884, 35.059101, 31.675341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613289, 35.258575, 31.799236>,  <43.530628, 35.591034, 32.005730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613289, 35.258575, 31.799236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761999, -0.194238, 0.617761,
		-0.613720, -0.521030, 0.593191,
		0.206652, -0.831143, -0.516232,
		43.675285, 35.009232, 31.644367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510094, 35.139992, 32.529762>,  <43.530628, 35.591034, 32.005730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510094, 35.139992, 32.529762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745312, 34.971912, 32.253319>,  <43.886444, 34.871063, 32.087452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745312, 34.971912, 32.253319>,  <43.510094, 35.139992, 32.529762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745312, 34.971912, 32.253319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602926, -0.341829, 0.720855,
		-0.539146, -0.840585, 0.052339,
		0.588049, -0.420203, -0.691106,
		43.921726, 34.845852, 32.045986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693447, 34.458397, 32.845860>,  <43.510094, 35.139992, 32.529762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693447, 34.458397, 32.845860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953350, 34.546955, 32.554985>,  <44.109291, 34.600090, 32.380463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953350, 34.546955, 32.554985>,  <43.693447, 34.458397, 32.845860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953350, 34.546955, 32.554985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755146, -0.078539, 0.650835,
		0.086978, -0.972017, -0.218215,
		0.649761, 0.221393, -0.727183,
		44.148277, 34.613373, 32.336830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140507, 33.916428, 32.908436>,  <43.693447, 34.458397, 32.845860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140507, 33.916428, 32.908436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363689, 34.174023, 32.699066>,  <44.497601, 34.328579, 32.573444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363689, 34.174023, 32.699066>,  <44.140507, 33.916428, 32.908436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363689, 34.174023, 32.699066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767211, -0.159855, 0.621156,
		0.316343, -0.748151, -0.583264,
		0.557956, 0.643985, -0.523421,
		44.531075, 34.367218, 32.542042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764297, 33.562828, 32.698635>,  <44.140507, 33.916428, 32.908436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764297, 33.562828, 32.698635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860622, 33.951038, 32.694862>,  <44.918415, 34.183964, 32.692596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860622, 33.951038, 32.694862>,  <44.764297, 33.562828, 32.698635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860622, 33.951038, 32.694862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842774, -0.204268, 0.498002,
		0.481397, -0.127874, -0.867124,
		0.240808, 0.970527, -0.009435,
		44.932865, 34.242195, 32.692032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503708, 33.568634, 32.462555>,  <44.764297, 33.562828, 32.698635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503708, 33.568634, 32.462555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420223, 33.928707, 32.615456>,  <45.370132, 34.144749, 32.707195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420223, 33.928707, 32.615456>,  <45.503708, 33.568634, 32.462555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420223, 33.928707, 32.615456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858573, -0.018498, 0.512357,
		0.468284, 0.435124, -0.769010,
		-0.208714, 0.900180, 0.382248,
		45.357609, 34.198761, 32.730129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085907, 34.030659, 32.305721>,  <45.503708, 33.568634, 32.462555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085907, 34.030659, 32.305721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883663, 34.181526, 32.616104>,  <45.762318, 34.272045, 32.802334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883663, 34.181526, 32.616104>,  <46.085907, 34.030659, 32.305721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883663, 34.181526, 32.616104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861860, 0.261942, 0.434263,
		-0.039464, 0.888330, -0.457507,
		-0.505609, 0.377169, 0.775953,
		45.731979, 34.294678, 32.848888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501335, 34.611202, 32.555279>,  <46.085907, 34.030659, 32.305721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501335, 34.611202, 32.555279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248707, 34.514744, 32.850021>,  <46.097130, 34.456867, 33.026867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248707, 34.514744, 32.850021>,  <46.501335, 34.611202, 32.555279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248707, 34.514744, 32.850021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742420, 0.085798, 0.664418,
		-0.223443, 0.966689, 0.124844,
		-0.631574, -0.241146, 0.736860,
		46.059235, 34.442402, 33.071079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651657, 35.127087, 33.044125>,  <46.501335, 34.611202, 32.555279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.651657, 35.127087, 33.044125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481407, 34.819199, 33.234440>,  <46.379257, 34.634468, 33.348629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481407, 34.819199, 33.234440>,  <46.651657, 35.127087, 33.044125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481407, 34.819199, 33.234440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717146, 0.033730, 0.696106,
		-0.551853, 0.637493, 0.537644,
		-0.425628, -0.769718, 0.475789,
		46.353718, 34.588284, 33.377178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333771, 35.275646, 33.726051>,  <46.651657, 35.127087, 33.044125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333771, 35.275646, 33.726051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.461689, 34.896667, 33.729568>,  <46.538441, 34.669281, 33.731678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.461689, 34.896667, 33.729568>,  <46.333771, 35.275646, 33.726051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.461689, 34.896667, 33.729568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591303, 0.206816, 0.779480,
		-0.740334, -0.244073, 0.626366,
		0.319793, -0.947447, 0.008792,
		46.557629, 34.612434, 33.732204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824074, 35.889629, 33.886993>,  <46.333771, 35.275646, 33.726051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824074, 35.889629, 33.886993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192680, 35.905041, 34.041557>,  <47.413845, 35.914288, 34.134296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192680, 35.905041, 34.041557>,  <46.824074, 35.889629, 33.886993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192680, 35.905041, 34.041557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169557, -0.855278, 0.489642,
		0.349357, -0.516734, -0.781624,
		0.921521, 0.038530, 0.386413,
		47.469135, 35.916599, 34.157482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.102428, 35.270557, 33.764526>,  <46.824074, 35.889629, 33.886993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.102428, 35.270557, 33.764526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278236, 35.459408, 34.070183>,  <47.383720, 35.572720, 34.253578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278236, 35.459408, 34.070183>,  <47.102428, 35.270557, 33.764526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278236, 35.459408, 34.070183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294010, -0.728239, 0.619052,
		0.848752, -0.496752, -0.181265,
		0.439520, 0.472128, 0.764145,
		47.410091, 35.601048, 34.299427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492558, 34.760048, 34.090359>,  <47.102428, 35.270557, 33.764526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492558, 34.760048, 34.090359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.438671, 35.058315, 34.351383>,  <47.406342, 35.237274, 34.507996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.438671, 35.058315, 34.351383>,  <47.492558, 34.760048, 34.090359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.438671, 35.058315, 34.351383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271041, -0.661174, 0.699561,
		0.953095, -0.082631, 0.291175,
		-0.134712, 0.745668, 0.652558,
		47.398258, 35.282017, 34.547150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.922375, 34.918468, 34.843193>,  <47.492558, 34.760048, 34.090359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.922375, 34.918468, 34.843193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541550, 35.038364, 34.867607>,  <47.313053, 35.110302, 34.882256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541550, 35.038364, 34.867607>,  <47.922375, 34.918468, 34.843193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.541550, 35.038364, 34.867607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074258, -0.420032, 0.904466,
		0.296738, 0.856581, 0.422156,
		-0.952067, 0.299738, 0.061031,
		47.255928, 35.128284, 34.885918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.915565, 41.128323, 41.125671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552299, 40.966850, 41.169991>,  <34.334339, 40.869968, 41.196583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552299, 40.966850, 41.169991>,  <34.915565, 41.128323, 41.125671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552299, 40.966850, 41.169991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122107, -0.508634, -0.852280,
		0.400407, -0.760482, 0.511216,
		-0.908165, -0.403682, 0.110801,
		34.279850, 40.845745, 41.203232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996689, 40.450191, 41.021667>,  <34.915565, 41.128323, 41.125671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996689, 40.450191, 41.021667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604843, 40.501747, 40.960037>,  <34.369736, 40.532681, 40.923058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604843, 40.501747, 40.960037>,  <34.996689, 40.450191, 41.021667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604843, 40.501747, 40.960037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044908, -0.607100, -0.793355,
		-0.195793, -0.784103, 0.588937,
		-0.979617, 0.128885, -0.154078,
		34.310959, 40.540413, 40.913815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779606, 39.850113, 40.665382>,  <34.996689, 40.450191, 41.021667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779606, 39.850113, 40.665382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465225, 40.083706, 40.584156>,  <34.276596, 40.223862, 40.535419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465225, 40.083706, 40.584156>,  <34.779606, 39.850113, 40.665382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465225, 40.083706, 40.584156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024964, -0.358148, -0.933331,
		-0.617778, -0.728488, 0.296067,
		-0.785956, 0.583982, -0.203071,
		34.229439, 40.258900, 40.523235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283306, 39.396343, 40.391075>,  <34.779606, 39.850113, 40.665382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283306, 39.396343, 40.391075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.218571, 39.772476, 40.271347>,  <34.179729, 39.998154, 40.199509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.218571, 39.772476, 40.271347>,  <34.283306, 39.396343, 40.391075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218571, 39.772476, 40.271347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088185, -0.288325, -0.953463,
		-0.982870, -0.180699, -0.036262,
		-0.161834, 0.940328, -0.299321,
		34.170021, 40.054573, 40.181549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742947, 39.353931, 40.030037>,  <34.283306, 39.396343, 40.391075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742947, 39.353931, 40.030037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930046, 39.687325, 39.912388>,  <34.042305, 39.887360, 39.841797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930046, 39.687325, 39.912388>,  <33.742947, 39.353931, 40.030037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930046, 39.687325, 39.912388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073385, -0.294997, -0.952676,
		-0.880808, 0.467201, -0.076820,
		0.467753, 0.833487, -0.294121,
		34.070374, 39.937370, 39.824150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481377, 39.523407, 39.205952>,  <33.742947, 39.353931, 40.030037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481377, 39.523407, 39.205952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.815456, 39.738125, 39.253769>,  <34.015903, 39.866955, 39.282459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.815456, 39.738125, 39.253769>,  <33.481377, 39.523407, 39.205952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815456, 39.738125, 39.253769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251395, -0.179334, -0.951125,
		-0.489118, 0.824435, -0.284727,
		0.835203, 0.536792, 0.119544,
		34.066017, 39.899162, 39.289631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490517, 39.906582, 38.540714>,  <33.481377, 39.523407, 39.205952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490517, 39.906582, 38.540714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862022, 39.920174, 38.688358>,  <34.084927, 39.928329, 38.776943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862022, 39.920174, 38.688358>,  <33.490517, 39.906582, 38.540714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862022, 39.920174, 38.688358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369396, -0.167354, -0.914079,
		0.030713, 0.985311, -0.167984,
		0.928764, 0.033979, 0.369110,
		34.140652, 39.930367, 38.799091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781307, 40.133198, 37.964195>,  <33.490517, 39.906582, 38.540714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781307, 40.133198, 37.964195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.085941, 39.983044, 38.175503>,  <34.268723, 39.892952, 38.302288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.085941, 39.983044, 38.175503>,  <33.781307, 40.133198, 37.964195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085941, 39.983044, 38.175503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432926, -0.311890, -0.845754,
		0.482248, 0.872817, -0.075016,
		0.761585, -0.375386, 0.528274,
		34.314419, 39.870426, 38.333984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415829, 40.307804, 37.615993>,  <33.781307, 40.133198, 37.964195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415829, 40.307804, 37.615993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.520199, 39.996368, 37.844280>,  <34.582821, 39.809505, 37.981255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.520199, 39.996368, 37.844280>,  <34.415829, 40.307804, 37.615993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520199, 39.996368, 37.844280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562131, -0.358089, -0.745507,
		0.784811, 0.515338, 0.344235,
		0.260921, -0.778588, 0.570720,
		34.598476, 39.762791, 38.015495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192593, 40.225525, 37.601250>,  <34.415829, 40.307804, 37.615993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192593, 40.225525, 37.601250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043972, 39.867798, 37.700970>,  <34.954800, 39.653164, 37.760803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043972, 39.867798, 37.700970>,  <35.192593, 40.225525, 37.601250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043972, 39.867798, 37.700970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556342, -0.429442, -0.711381,
		0.743260, -0.125617, 0.657104,
		-0.371550, -0.894315, 0.249301,
		34.932507, 39.599503, 37.775761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785290, 39.815361, 37.737167>,  <35.192593, 40.225525, 37.601250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785290, 39.815361, 37.737167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.480824, 39.562408, 37.679588>,  <35.298145, 39.410637, 37.645042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.480824, 39.562408, 37.679588>,  <35.785290, 39.815361, 37.737167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480824, 39.562408, 37.679588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546674, -0.506165, -0.667042,
		0.348966, -0.586419, 0.730982,
		-0.761164, -0.632384, -0.143946,
		35.252476, 39.372692, 37.636406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071362, 39.170654, 37.544788>,  <35.785290, 39.815361, 37.737167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071362, 39.170654, 37.544788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699005, 39.054806, 37.455746>,  <35.475590, 38.985298, 37.402321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699005, 39.054806, 37.455746>,  <36.071362, 39.170654, 37.544788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699005, 39.054806, 37.455746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364615, -0.699807, -0.614269,
		0.022120, -0.652987, 0.757046,
		-0.930896, -0.289618, -0.222610,
		35.419735, 38.967922, 37.388962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995605, 38.490925, 37.618771>,  <36.071362, 39.170654, 37.544788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995605, 38.490925, 37.618771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723766, 38.607704, 37.349575>,  <35.560661, 38.677773, 37.188057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723766, 38.607704, 37.349575>,  <35.995605, 38.490925, 37.618771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723766, 38.607704, 37.349575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321317, -0.706243, -0.630854,
		-0.659466, -0.644971, 0.386157,
		-0.679603, 0.291948, -0.672983,
		35.519886, 38.695290, 37.147678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672333, 37.883415, 37.435452>,  <35.995605, 38.490925, 37.618771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672333, 37.883415, 37.435452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.606777, 38.149769, 37.144321>,  <35.567444, 38.309582, 36.969643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.606777, 38.149769, 37.144321>,  <35.672333, 37.883415, 37.435452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606777, 38.149769, 37.144321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357673, -0.647490, -0.672924,
		-0.919353, -0.370610, -0.132052,
		-0.163890, 0.665886, -0.727829,
		35.557610, 38.349533, 36.925972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463333, 37.496994, 36.836105>,  <35.672333, 37.883415, 37.435452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463333, 37.496994, 36.836105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594822, 37.850475, 36.702831>,  <35.673717, 38.062565, 36.622868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594822, 37.850475, 36.702831>,  <35.463333, 37.496994, 36.836105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594822, 37.850475, 36.702831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527640, -0.464445, -0.711257,
		-0.783285, 0.058006, -0.618950,
		0.328726, 0.883700, -0.333187,
		35.693439, 38.115585, 36.602875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336765, 37.516594, 36.116764>,  <35.463333, 37.496994, 36.836105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336765, 37.516594, 36.116764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628120, 37.782639, 36.182594>,  <35.802933, 37.942265, 36.222092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628120, 37.782639, 36.182594>,  <35.336765, 37.516594, 36.116764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628120, 37.782639, 36.182594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555880, -0.433216, -0.709451,
		-0.400568, 0.608236, -0.685270,
		0.728383, 0.665111, 0.164574,
		35.846634, 37.982170, 36.231968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531322, 37.831455, 35.416542>,  <35.336765, 37.516594, 36.116764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531322, 37.831455, 35.416542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.835373, 37.886528, 35.670551>,  <36.017803, 37.919571, 35.822956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.835373, 37.886528, 35.670551>,  <35.531322, 37.831455, 35.416542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835373, 37.886528, 35.670551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649297, -0.198465, -0.734183,
		0.024944, 0.970389, -0.240257,
		0.760126, 0.137684, 0.635021,
		36.063412, 37.927834, 35.861057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045460, 38.155529, 35.023216>,  <35.531322, 37.831455, 35.416542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045460, 38.155529, 35.023216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249893, 38.020370, 35.339348>,  <36.372551, 37.939274, 35.529026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249893, 38.020370, 35.339348>,  <36.045460, 38.155529, 35.023216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249893, 38.020370, 35.339348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715031, -0.343133, -0.609090,
		0.476998, 0.876405, 0.066238,
		0.511081, -0.337896, 0.790331,
		36.403217, 37.919003, 35.576447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685722, 38.376137, 34.882023>,  <36.045460, 38.155529, 35.023216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685722, 38.376137, 34.882023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691189, 38.052326, 35.116791>,  <36.694469, 37.858040, 35.257652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691189, 38.052326, 35.116791>,  <36.685722, 38.376137, 34.882023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691189, 38.052326, 35.116791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630031, -0.448829, -0.633729,
		0.776449, 0.378440, 0.503894,
		0.013666, -0.809528, 0.586922,
		36.695290, 37.809467, 35.292866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387550, 38.194851, 34.890343>,  <36.685722, 38.376137, 34.882023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387550, 38.194851, 34.890343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209343, 37.862000, 35.022453>,  <37.102417, 37.662289, 35.101719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209343, 37.862000, 35.022453>,  <37.387550, 38.194851, 34.890343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209343, 37.862000, 35.022453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625915, -0.553275, -0.549652,
		0.640112, -0.038156, 0.767333,
		-0.445519, -0.832124, 0.330276,
		37.075687, 37.612362, 35.121536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906387, 37.831524, 35.027130>,  <37.387550, 38.194851, 34.890343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906387, 37.831524, 35.027130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596287, 37.587715, 34.960842>,  <37.410225, 37.441429, 34.921070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.596287, 37.587715, 34.960842>,  <37.906387, 37.831524, 35.027130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596287, 37.587715, 34.960842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590504, -0.606215, -0.532736,
		0.224252, -0.510865, 0.829896,
		-0.775252, -0.609525, -0.165723,
		37.363712, 37.404858, 34.911125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062725, 37.071075, 35.133934>,  <37.906387, 37.831524, 35.027130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062725, 37.071075, 35.133934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823654, 37.160999, 34.826107>,  <37.680210, 37.214954, 34.641411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823654, 37.160999, 34.826107>,  <38.062725, 37.071075, 35.133934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823654, 37.160999, 34.826107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625786, -0.469217, -0.623079,
		-0.501168, -0.853989, 0.139761,
		-0.597681, 0.224807, -0.769571,
		37.644348, 37.228443, 34.595234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701080, 37.144794, 35.583462>,  <38.062725, 37.071075, 35.133934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701080, 37.144794, 35.583462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041348, 36.965321, 35.693035>,  <39.245510, 36.857635, 35.758778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041348, 36.965321, 35.693035>,  <38.701080, 37.144794, 35.583462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041348, 36.965321, 35.693035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173907, 0.251553, 0.952091,
		-0.496100, -0.857555, 0.135959,
		0.850671, -0.448688, 0.273930,
		39.296551, 36.830715, 35.775215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546078, 36.848389, 36.196011>,  <38.701080, 37.144794, 35.583462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546078, 36.848389, 36.196011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938698, 36.915569, 36.159451>,  <39.174271, 36.955879, 36.137512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938698, 36.915569, 36.159451>,  <38.546078, 36.848389, 36.196011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938698, 36.915569, 36.159451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001132, 0.472904, 0.881113,
		0.191207, -0.864959, 0.463988,
		0.981549, 0.167950, -0.091402,
		39.233162, 36.965954, 36.132030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901070, 36.591866, 36.908779>,  <38.546078, 36.848389, 36.196011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901070, 36.591866, 36.908779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165470, 36.831314, 36.727787>,  <39.324108, 36.974983, 36.619190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165470, 36.831314, 36.727787>,  <38.901070, 36.591866, 36.908779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165470, 36.831314, 36.727787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013183, 0.593637, 0.804625,
		0.750272, -0.537820, 0.384501,
		0.660997, 0.598619, -0.452479,
		39.363770, 37.010899, 36.592045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412907, 36.699692, 37.493553>,  <38.901070, 36.591866, 36.908779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412907, 36.699692, 37.493553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439899, 37.006760, 37.238640>,  <39.456097, 37.191002, 37.085693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439899, 37.006760, 37.238640>,  <39.412907, 36.699692, 37.493553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439899, 37.006760, 37.238640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137034, 0.625551, 0.768055,
		0.988265, -0.139162, -0.062981,
		0.067486, 0.767672, -0.637279,
		39.460144, 37.237061, 37.047455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763168, 37.139992, 37.853710>,  <39.412907, 36.699692, 37.493553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763168, 37.139992, 37.853710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629814, 37.379177, 37.562153>,  <39.549801, 37.522690, 37.387218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629814, 37.379177, 37.562153>,  <39.763168, 37.139992, 37.853710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629814, 37.379177, 37.562153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026141, 0.778692, 0.626862,
		0.942428, 0.189933, -0.275237,
		-0.333386, 0.597967, -0.728896,
		39.529797, 37.558567, 37.343483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170586, 37.687263, 37.832161>,  <39.763168, 37.139992, 37.853710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170586, 37.687263, 37.832161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824398, 37.817230, 37.679642>,  <39.616684, 37.895210, 37.588131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824398, 37.817230, 37.679642>,  <40.170586, 37.687263, 37.832161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824398, 37.817230, 37.679642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066597, 0.679754, 0.730410,
		0.496511, 0.657543, -0.566669,
		-0.865472, 0.324918, -0.381296,
		39.564758, 37.914707, 37.565254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270157, 38.318035, 37.859486>,  <40.170586, 37.687263, 37.832161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270157, 38.318035, 37.859486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873299, 38.283478, 37.823303>,  <39.635185, 38.262741, 37.801594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873299, 38.283478, 37.823303>,  <40.270157, 38.318035, 37.859486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873299, 38.283478, 37.823303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121722, 0.500149, 0.857342,
		-0.028829, 0.861619, -0.506737,
		-0.992145, -0.086398, -0.090459,
		39.575653, 38.257557, 37.796165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082314, 38.908077, 38.060383>,  <40.270157, 38.318035, 37.859486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082314, 38.908077, 38.060383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729534, 38.719769, 38.069775>,  <39.517868, 38.606785, 38.075409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729534, 38.719769, 38.069775>,  <40.082314, 38.908077, 38.060383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729534, 38.719769, 38.069775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195778, 0.411183, 0.890281,
		-0.428772, 0.780580, -0.454806,
		-0.881944, -0.470769, 0.023484,
		39.464951, 38.578537, 38.076820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516800, 39.474052, 38.193790>,  <40.082314, 38.908077, 38.060383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516800, 39.474052, 38.193790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411690, 39.113243, 38.330788>,  <39.348621, 38.896759, 38.412987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411690, 39.113243, 38.330788>,  <39.516800, 39.474052, 38.193790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411690, 39.113243, 38.330788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279340, 0.410893, 0.867834,
		-0.923535, 0.132376, -0.359945,
		-0.262779, -0.902022, 0.342496,
		39.332855, 38.842636, 38.433537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818478, 39.549175, 38.274132>,  <39.516800, 39.474052, 38.193790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818478, 39.549175, 38.274132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980289, 39.262424, 38.501266>,  <39.077377, 39.090374, 38.637547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980289, 39.262424, 38.501266>,  <38.818478, 39.549175, 38.274132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980289, 39.262424, 38.501266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369853, 0.439629, 0.818496,
		-0.836402, -0.541120, -0.087298,
		0.404525, -0.716879, 0.567841,
		39.101646, 39.047359, 38.671619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279671, 39.428875, 38.840874>,  <38.818478, 39.549175, 38.274132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279671, 39.428875, 38.840874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584297, 39.226936, 39.003429>,  <38.767071, 39.105774, 39.100964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584297, 39.226936, 39.003429>,  <38.279671, 39.428875, 38.840874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584297, 39.226936, 39.003429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357802, 0.195317, 0.913142,
		-0.540371, -0.840822, -0.031888,
		0.761562, -0.504845, 0.406392,
		38.812767, 39.075481, 39.125347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017593, 38.849716, 39.336781>,  <38.279671, 39.428875, 38.840874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017593, 38.849716, 39.336781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391560, 38.915268, 39.462685>,  <38.615940, 38.954597, 39.538227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391560, 38.915268, 39.462685>,  <38.017593, 38.849716, 39.336781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391560, 38.915268, 39.462685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346824, 0.234177, 0.908226,
		0.075126, -0.958283, 0.275772,
		0.934917, 0.163876, 0.314763,
		38.672035, 38.964432, 39.557114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129162, 38.438866, 40.014809>,  <38.017593, 38.849716, 39.336781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129162, 38.438866, 40.014809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387371, 38.743500, 39.991909>,  <38.542297, 38.926281, 39.978168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387371, 38.743500, 39.991909>,  <38.129162, 38.438866, 40.014809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387371, 38.743500, 39.991909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260259, 0.289829, 0.921012,
		0.718026, -0.579638, 0.385303,
		0.645526, 0.761590, -0.057249,
		38.581028, 38.971977, 39.974735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428047, 38.462646, 40.659843>,  <38.129162, 38.438866, 40.014809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428047, 38.462646, 40.659843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480736, 38.821011, 40.490143>,  <38.512348, 39.036030, 40.388325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480736, 38.821011, 40.490143>,  <38.428047, 38.462646, 40.659843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480736, 38.821011, 40.490143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372837, 0.441329, 0.816224,
		0.918500, 0.050661, 0.392163,
		0.131722, 0.895914, -0.424248,
		38.520252, 39.089787, 40.362869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755840, 38.898106, 41.218185>,  <38.428047, 38.462646, 40.659843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755840, 38.898106, 41.218185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640621, 39.175499, 40.954033>,  <38.571487, 39.341934, 40.795540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640621, 39.175499, 40.954033>,  <38.755840, 38.898106, 41.218185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640621, 39.175499, 40.954033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339092, 0.571064, 0.747597,
		0.895568, 0.439278, 0.070659,
		-0.288053, 0.693484, -0.660383,
		38.554207, 39.383545, 40.755917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957111, 39.569832, 41.495907>,  <38.755840, 38.898106, 41.218185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957111, 39.569832, 41.495907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679691, 39.671452, 41.226257>,  <38.513241, 39.732422, 41.064468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679691, 39.671452, 41.226257>,  <38.957111, 39.569832, 41.495907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679691, 39.671452, 41.226257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470513, 0.548870, 0.690912,
		0.545533, 0.796368, -0.261137,
		-0.693550, 0.254047, -0.674128,
		38.471626, 39.747665, 41.024017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920372, 40.328609, 41.447178>,  <38.957111, 39.569832, 41.495907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920372, 40.328609, 41.447178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570423, 40.183876, 41.318378>,  <38.360455, 40.097034, 41.241100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570423, 40.183876, 41.318378>,  <38.920372, 40.328609, 41.447178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570423, 40.183876, 41.318378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475613, 0.515965, 0.712441,
		-0.091644, 0.776439, -0.623494,
		-0.874868, -0.361833, -0.321999,
		38.307964, 40.075325, 41.221779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563980, 40.860592, 41.257999>,  <38.920372, 40.328609, 41.447178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563980, 40.860592, 41.257999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.286251, 40.584213, 41.338512>,  <38.119614, 40.418385, 41.386818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.286251, 40.584213, 41.338512>,  <38.563980, 40.860592, 41.257999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286251, 40.584213, 41.338512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446324, 0.632821, 0.632718,
		-0.564548, 0.349473, -0.747766,
		-0.694320, -0.690946, 0.201280,
		38.077953, 40.376930, 41.398895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.828289, 41.225250, 41.148457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743286, 40.892666, 41.353790>,  <37.692284, 40.693115, 41.476990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743286, 40.892666, 41.353790>,  <37.828289, 41.225250, 41.148457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743286, 40.892666, 41.353790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627871, 0.518720, 0.580265,
		-0.748746, -0.198999, -0.632281,
		-0.212505, -0.831462, 0.513335,
		37.679535, 40.643227, 41.507790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169888, 41.197689, 41.204052>,  <37.828289, 41.225250, 41.148457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169888, 41.197689, 41.204052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268536, 40.948944, 41.501362>,  <37.327724, 40.799698, 41.679749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268536, 40.948944, 41.501362>,  <37.169888, 41.197689, 41.204052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268536, 40.948944, 41.501362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677969, 0.437333, 0.590845,
		-0.692487, -0.649632, -0.313752,
		0.246617, -0.621867, 0.743277,
		37.342522, 40.762383, 41.724346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601486, 41.071701, 41.584286>,  <37.169888, 41.197689, 41.204052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601486, 41.071701, 41.584286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870251, 40.944973, 41.852066>,  <37.031509, 40.868938, 42.012733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870251, 40.944973, 41.852066>,  <36.601486, 41.071701, 41.584286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870251, 40.944973, 41.852066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583565, 0.330114, 0.741941,
		-0.456054, -0.889186, 0.036925,
		0.671913, -0.316817, 0.669447,
		37.071823, 40.849930, 42.052902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187714, 40.611340, 41.938351>,  <36.601486, 41.071701, 41.584286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187714, 40.611340, 41.938351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496716, 40.706196, 42.173977>,  <36.682117, 40.763111, 42.315353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496716, 40.706196, 42.173977>,  <36.187714, 40.611340, 41.938351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496716, 40.706196, 42.173977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625463, 0.123926, 0.770349,
		0.109669, -0.963542, 0.244048,
		0.772508, 0.237126, 0.589069,
		36.728466, 40.777340, 42.350697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121193, 40.312965, 42.627739>,  <36.187714, 40.611340, 41.938351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121193, 40.312965, 42.627739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358158, 40.632755, 42.667511>,  <36.500336, 40.824631, 42.691372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358158, 40.632755, 42.667511>,  <36.121193, 40.312965, 42.627739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358158, 40.632755, 42.667511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530403, 0.294148, 0.795078,
		0.606400, -0.523750, 0.598301,
		0.592412, 0.799476, 0.099428,
		36.535881, 40.872597, 42.697338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232941, 40.424118, 43.332382>,  <36.121193, 40.312965, 42.627739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232941, 40.424118, 43.332382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327999, 40.770557, 43.156471>,  <36.385033, 40.978420, 43.050926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327999, 40.770557, 43.156471>,  <36.232941, 40.424118, 43.332382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327999, 40.770557, 43.156471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467702, 0.498832, 0.729671,
		0.851340, 0.032281, 0.523621,
		0.237645, 0.866097, -0.439774,
		36.399292, 41.030388, 43.024540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593094, 40.761051, 43.825531>,  <36.232941, 40.424118, 43.332382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593094, 40.761051, 43.825531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.463207, 41.045074, 43.575611>,  <36.385273, 41.215488, 43.425659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.463207, 41.045074, 43.575611>,  <36.593094, 40.761051, 43.825531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463207, 41.045074, 43.575611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374537, 0.510063, 0.774311,
		0.868493, 0.485446, 0.100314,
		-0.324720, 0.710055, -0.624803,
		36.365791, 41.258091, 43.388168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759132, 41.357632, 44.108166>,  <36.593094, 40.761051, 43.825531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759132, 41.357632, 44.108166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.474564, 41.481159, 43.855652>,  <36.303822, 41.555275, 43.704144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.474564, 41.481159, 43.855652>,  <36.759132, 41.357632, 44.108166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474564, 41.481159, 43.855652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372636, 0.595840, 0.711419,
		0.595840, 0.741355, -0.308816,
		-0.711419, 0.308816, -0.631281,
		36.261139, 41.573803, 43.666267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615044, 42.161602, 44.044304>,  <36.759132, 41.357632, 44.108166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615044, 42.161602, 44.044304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266476, 42.015373, 43.913475>,  <36.057335, 41.927635, 43.834980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266476, 42.015373, 43.913475>,  <36.615044, 42.161602, 44.044304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266476, 42.015373, 43.913475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464812, 0.402330, 0.788720,
		-0.156747, 0.839336, -0.520524,
		-0.871424, -0.365576, -0.327070,
		36.005047, 41.905701, 43.815353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231773, 42.730179, 43.863861>,  <36.615044, 42.161602, 44.044304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231773, 42.730179, 43.863861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000599, 42.413929, 43.944759>,  <35.861897, 42.224178, 43.993298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000599, 42.413929, 43.944759>,  <36.231773, 42.730179, 43.863861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000599, 42.413929, 43.944759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486326, 0.532675, 0.692636,
		-0.655349, 0.301938, -0.692352,
		-0.577931, -0.790627, 0.202247,
		35.827221, 42.176743, 44.005432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695900, 43.013481, 44.052097>,  <36.231773, 42.730179, 43.863861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695900, 43.013481, 44.052097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649078, 42.648426, 44.208755>,  <35.620983, 42.429394, 44.302750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649078, 42.648426, 44.208755>,  <35.695900, 43.013481, 44.052097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649078, 42.648426, 44.208755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377644, 0.405638, 0.832372,
		-0.918522, -0.050466, -0.392136,
		-0.117059, -0.912640, 0.391646,
		35.613960, 42.374634, 44.326248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003670, 42.975773, 44.426369>,  <35.695900, 43.013481, 44.052097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003670, 42.975773, 44.426369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.202389, 42.664387, 44.579823>,  <35.321621, 42.477554, 44.671894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.202389, 42.664387, 44.579823>,  <35.003670, 42.975773, 44.426369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202389, 42.664387, 44.579823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267139, 0.283416, 0.921039,
		-0.825728, -0.560056, -0.067158,
		0.496799, -0.778469, 0.383637,
		35.351429, 42.430847, 44.694912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584244, 42.758095, 44.948406>,  <35.003670, 42.975773, 44.426369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584244, 42.758095, 44.948406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.950291, 42.616497, 45.025612>,  <35.169918, 42.531540, 45.071938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.950291, 42.616497, 45.025612>,  <34.584244, 42.758095, 44.948406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950291, 42.616497, 45.025612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158781, 0.123635, 0.979542,
		-0.370614, -0.927041, 0.056933,
		0.915114, -0.353992, 0.193017,
		35.224827, 42.510300, 45.083515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469753, 42.302071, 45.463291>,  <34.584244, 42.758095, 44.948406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469753, 42.302071, 45.463291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856071, 42.392395, 45.514282>,  <35.087864, 42.446590, 45.544876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856071, 42.392395, 45.514282>,  <34.469753, 42.302071, 45.463291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856071, 42.392395, 45.514282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119393, -0.049149, 0.991630,
		0.230187, -0.972930, -0.020507,
		0.965794, 0.225812, 0.127474,
		35.145809, 42.460140, 45.552525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586136, 42.002838, 46.007599>,  <34.469753, 42.302071, 45.463291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586136, 42.002838, 46.007599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903336, 42.244152, 45.973671>,  <35.093655, 42.388943, 45.953312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903336, 42.244152, 45.973671>,  <34.586136, 42.002838, 46.007599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903336, 42.244152, 45.973671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004884, 0.145522, 0.989343,
		0.609204, -0.784133, 0.118345,
		0.792998, 0.603290, -0.084822,
		35.141235, 42.425140, 45.948223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221161, 41.858158, 46.559048>,  <34.586136, 42.002838, 46.007599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221161, 41.858158, 46.559048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271206, 42.232540, 46.427387>,  <35.301231, 42.457169, 46.348392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271206, 42.232540, 46.427387>,  <35.221161, 41.858158, 46.559048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271206, 42.232540, 46.427387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019836, 0.334047, 0.942348,
		0.991945, -0.111366, 0.060358,
		0.125108, 0.935954, -0.329147,
		35.308739, 42.513325, 46.328644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646763, 42.091934, 46.971634>,  <35.221161, 41.858158, 46.559048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646763, 42.091934, 46.971634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462498, 42.403362, 46.801163>,  <35.351940, 42.590218, 46.698879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462498, 42.403362, 46.801163>,  <35.646763, 42.091934, 46.971634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462498, 42.403362, 46.801163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123386, 0.419321, 0.899414,
		0.878960, 0.466907, -0.097100,
		-0.460658, 0.778568, -0.426176,
		35.324299, 42.636932, 46.673309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889915, 42.709614, 47.298233>,  <35.646763, 42.091934, 46.971634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889915, 42.709614, 47.298233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542137, 42.833210, 47.144047>,  <35.333469, 42.907368, 47.051537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542137, 42.833210, 47.144047>,  <35.889915, 42.709614, 47.298233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542137, 42.833210, 47.144047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190951, 0.509428, 0.839059,
		0.455625, 0.803125, -0.383921,
		-0.869450, 0.308986, -0.385466,
		35.281303, 42.925907, 47.028408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854004, 43.475784, 47.546150>,  <35.889915, 42.709614, 47.298233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854004, 43.475784, 47.546150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495174, 43.334293, 47.440220>,  <35.279877, 43.249401, 47.376663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495174, 43.334293, 47.440220>,  <35.854004, 43.475784, 47.546150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495174, 43.334293, 47.440220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422881, 0.513433, 0.746698,
		-0.128156, 0.781834, -0.610173,
		-0.897077, -0.353724, -0.264824,
		35.226051, 43.228176, 47.360771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394341, 44.064014, 47.608208>,  <35.854004, 43.475784, 47.546150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394341, 44.064014, 47.608208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172745, 43.731251, 47.621025>,  <35.039787, 43.531593, 47.628716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172745, 43.731251, 47.621025>,  <35.394341, 44.064014, 47.608208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172745, 43.731251, 47.621025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571332, 0.407901, 0.712177,
		-0.605535, 0.376231, -0.701268,
		-0.553991, -0.831905, 0.032046,
		35.006546, 43.481678, 47.630638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740654, 44.300293, 47.858009>,  <35.394341, 44.064014, 47.608208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740654, 44.300293, 47.858009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654171, 43.911636, 47.896286>,  <34.602280, 43.678440, 47.919250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654171, 43.911636, 47.896286>,  <34.740654, 44.300293, 47.858009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654171, 43.911636, 47.896286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757748, 0.228799, 0.611121,
		-0.615687, 0.059621, -0.785732,
		-0.216210, -0.971646, 0.095691,
		34.589310, 43.620144, 47.924992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060287, 44.296841, 48.104599>,  <34.740654, 44.300293, 47.858009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060287, 44.296841, 48.104599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158241, 43.921272, 48.201313>,  <34.217014, 43.695930, 48.259342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158241, 43.921272, 48.201313>,  <34.060287, 44.296841, 48.104599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158241, 43.921272, 48.201313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643759, 0.029018, 0.764678,
		-0.724987, -0.342910, -0.597332,
		0.244882, -0.938920, 0.241789,
		34.231705, 43.639595, 48.273849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530262, 43.768669, 48.357563>,  <34.060287, 44.296841, 48.104599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530262, 43.768669, 48.357563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.869164, 43.656212, 48.537838>,  <34.072506, 43.588737, 48.646004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.869164, 43.656212, 48.537838>,  <33.530262, 43.768669, 48.357563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869164, 43.656212, 48.537838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471477, -0.007210, 0.881849,
		-0.244677, -0.959639, -0.138662,
		0.847256, -0.281144, 0.450683,
		34.123341, 43.571869, 48.673042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805614, 43.741283, 48.265114>,  <33.530262, 43.768669, 48.357563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805614, 43.741283, 48.265114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611568, 43.858658, 47.935616>,  <32.495140, 43.929081, 47.737915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611568, 43.858658, 47.935616>,  <32.805614, 43.741283, 48.265114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611568, 43.858658, 47.935616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859872, 0.011228, 0.510386,
		0.159014, 0.955913, 0.246870,
		-0.485112, 0.293435, -0.823749,
		32.466034, 43.946690, 47.688492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555161, 43.142792, 48.658531>,  <32.805614, 43.741283, 48.265114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555161, 43.142792, 48.658531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199600, 42.969604, 48.598667>,  <31.986265, 42.865692, 48.562748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199600, 42.969604, 48.598667>,  <32.555161, 43.142792, 48.658531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199600, 42.969604, 48.598667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340124, -0.404897, -0.848749,
		0.306886, -0.805354, 0.507175,
		-0.888896, -0.432972, -0.149663,
		31.932932, 42.839714, 48.553768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676659, 42.368698, 48.455437>,  <32.555161, 43.142792, 48.658531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676659, 42.368698, 48.455437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306366, 42.449741, 48.327705>,  <32.084190, 42.498367, 48.251068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306366, 42.449741, 48.327705>,  <32.676659, 42.368698, 48.455437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306366, 42.449741, 48.327705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248578, -0.310357, -0.917544,
		-0.285004, -0.928779, 0.236944,
		-0.925733, 0.202605, -0.319327,
		32.028648, 42.510525, 48.231907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463581, 41.741196, 48.125263>,  <32.676659, 42.368698, 48.455437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463581, 41.741196, 48.125263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216648, 42.023365, 47.985966>,  <32.068489, 42.192665, 47.902386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216648, 42.023365, 47.985966>,  <32.463581, 41.741196, 48.125263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216648, 42.023365, 47.985966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067204, -0.393764, -0.916752,
		-0.783825, -0.589346, 0.195677,
		-0.617335, 0.705422, -0.348248,
		32.031448, 42.234993, 47.881493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929482, 41.376362, 47.749527>,  <32.463581, 41.741196, 48.125263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929482, 41.376362, 47.749527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.969273, 41.751934, 47.617760>,  <31.993147, 41.977276, 47.538700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.969273, 41.751934, 47.617760>,  <31.929482, 41.376362, 47.749527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969273, 41.751934, 47.617760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004077, -0.331439, -0.943468,
		-0.995032, 0.092509, -0.036798,
		0.099476, 0.938930, -0.329415,
		31.999115, 42.033611, 47.518936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531103, 41.419811, 47.155388>,  <31.929482, 41.376362, 47.749527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531103, 41.419811, 47.155388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747141, 41.754395, 47.118217>,  <31.876764, 41.955143, 47.095913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747141, 41.754395, 47.118217>,  <31.531103, 41.419811, 47.155388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747141, 41.754395, 47.118217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225188, -0.250021, -0.941690,
		-0.810918, 0.487675, -0.323396,
		0.540095, 0.836458, -0.092928,
		31.909170, 42.005333, 47.090340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292889, 41.677753, 46.535221>,  <31.531103, 41.419811, 47.155388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292889, 41.677753, 46.535221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642557, 41.865906, 46.583500>,  <31.852358, 41.978798, 46.612469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642557, 41.865906, 46.583500>,  <31.292889, 41.677753, 46.535221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642557, 41.865906, 46.583500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255509, -0.234150, -0.938024,
		-0.412966, 0.850833, -0.324873,
		0.874171, 0.470380, 0.120699,
		31.904808, 42.007019, 46.619709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470512, 42.118923, 45.921936>,  <31.292889, 41.677753, 46.535221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470512, 42.118923, 45.921936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.826584, 42.060272, 46.094486>,  <32.040226, 42.025082, 46.198017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.826584, 42.060272, 46.094486>,  <31.470512, 42.118923, 45.921936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826584, 42.060272, 46.094486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430384, -0.040077, -0.901756,
		0.149514, 0.988379, 0.027432,
		0.890177, -0.146632, 0.431374,
		32.093636, 42.016281, 46.223900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942411, 42.233177, 45.439709>,  <31.470512, 42.118923, 45.921936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942411, 42.233177, 45.439709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200119, 42.054283, 45.687870>,  <32.354744, 41.946949, 45.836765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200119, 42.054283, 45.687870>,  <31.942411, 42.233177, 45.439709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200119, 42.054283, 45.687870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492784, -0.377610, -0.783948,
		0.584877, 0.810799, -0.022894,
		0.644269, -0.447232, 0.620404,
		32.393398, 41.920113, 45.873993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583515, 42.455116, 45.204792>,  <31.942411, 42.233177, 45.439709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583515, 42.455116, 45.204792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639797, 42.104950, 45.389767>,  <32.673569, 41.894852, 45.500751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639797, 42.104950, 45.389767>,  <32.583515, 42.455116, 45.204792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639797, 42.104950, 45.389767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427931, -0.367422, -0.825758,
		0.892792, 0.314081, 0.322919,
		0.140708, -0.875417, 0.462436,
		32.682011, 41.842323, 45.528496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323322, 42.185741, 45.143490>,  <32.583515, 42.455116, 45.204792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323322, 42.185741, 45.143490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.099693, 41.864895, 45.227440>,  <32.965515, 41.672386, 45.277809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.099693, 41.864895, 45.227440>,  <33.323322, 42.185741, 45.143490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099693, 41.864895, 45.227440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397418, -0.481411, -0.781219,
		0.727663, -0.353351, 0.587919,
		-0.559075, -0.802114, 0.209877,
		32.931973, 41.624260, 45.290401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817226, 41.620403, 45.256821>,  <33.323322, 42.185741, 45.143490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817226, 41.620403, 45.256821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470741, 41.480022, 45.114552>,  <33.262852, 41.395794, 45.029190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470741, 41.480022, 45.114552>,  <33.817226, 41.620403, 45.256821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470741, 41.480022, 45.114552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455498, -0.261979, -0.850816,
		0.205420, -0.898997, 0.386790,
		-0.866213, -0.350957, -0.355676,
		33.210876, 41.374737, 45.007851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012470, 41.132179, 44.973434>,  <33.817226, 41.620403, 45.256821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012470, 41.132179, 44.973434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.640625, 41.146538, 44.826721>,  <33.417519, 41.155151, 44.738693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.640625, 41.146538, 44.826721>,  <34.012470, 41.132179, 44.973434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640625, 41.146538, 44.826721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336729, -0.321768, -0.884918,
		-0.149784, -0.946138, 0.287033,
		-0.929612, 0.035894, -0.366787,
		33.361740, 41.157307, 44.716686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864258, 40.558933, 44.528004>,  <34.012470, 41.132179, 44.973434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864258, 40.558933, 44.528004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579197, 40.809013, 44.400723>,  <33.408161, 40.959061, 44.324352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579197, 40.809013, 44.400723>,  <33.864258, 40.558933, 44.528004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579197, 40.809013, 44.400723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260084, -0.185798, -0.947542,
		-0.651524, -0.758026, -0.030196,
		-0.712651, 0.625200, -0.318203,
		33.365402, 40.996574, 44.305264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559467, 40.274551, 43.918667>,  <33.864258, 40.558933, 44.528004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559467, 40.274551, 43.918667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485920, 40.666992, 43.894539>,  <33.441792, 40.902454, 43.880062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485920, 40.666992, 43.894539>,  <33.559467, 40.274551, 43.918667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485920, 40.666992, 43.894539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170709, -0.028557, -0.984908,
		-0.968014, -0.191388, -0.162231,
		-0.183867, 0.981099, -0.060316,
		33.430759, 40.961323, 43.876446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180744, 40.300781, 43.332718>,  <33.559467, 40.274551, 43.918667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180744, 40.300781, 43.332718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.320923, 40.673508, 43.370464>,  <33.405029, 40.897144, 43.393112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.320923, 40.673508, 43.370464>,  <33.180744, 40.300781, 43.332718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320923, 40.673508, 43.370464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226608, 0.013403, -0.973894,
		-0.908757, 0.362677, -0.206460,
		0.350442, 0.931818, 0.094366,
		33.426056, 40.953053, 43.398773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982208, 40.622856, 42.764214>,  <33.180744, 40.300781, 43.332718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982208, 40.622856, 42.764214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.248455, 40.883144, 42.910378>,  <33.408203, 41.039318, 42.998074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.248455, 40.883144, 42.910378>,  <32.982208, 40.622856, 42.764214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248455, 40.883144, 42.910378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232900, 0.284053, -0.930092,
		-0.709021, 0.704188, 0.037519,
		0.665617, 0.650717, 0.365405,
		33.448139, 41.078358, 43.020000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786610, 41.277096, 42.476547>,  <32.982208, 40.622856, 42.764214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786610, 41.277096, 42.476547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173065, 41.260571, 42.578423>,  <33.404938, 41.250656, 42.639549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173065, 41.260571, 42.578423>,  <32.786610, 41.277096, 42.476547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173065, 41.260571, 42.578423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254627, -0.006816, -0.967015,
		0.041688, 0.999123, 0.003935,
		0.966140, -0.041315, 0.254688,
		33.462906, 41.248177, 42.654827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092251, 41.681580, 42.003426>,  <32.786610, 41.277096, 42.476547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092251, 41.681580, 42.003426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.386955, 41.445324, 42.135082>,  <33.563778, 41.303570, 42.214077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.386955, 41.445324, 42.135082>,  <33.092251, 41.681580, 42.003426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386955, 41.445324, 42.135082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228525, -0.240629, -0.943331,
		0.636368, 0.770224, -0.042311,
		0.736758, -0.590637, 0.329144,
		33.607983, 41.268131, 42.233826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674423, 41.926582, 41.597408>,  <33.092251, 41.681580, 42.003426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674423, 41.926582, 41.597408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.757050, 41.562016, 41.739758>,  <33.806625, 41.343273, 41.825169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.757050, 41.562016, 41.739758>,  <33.674423, 41.926582, 41.597408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757050, 41.562016, 41.739758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398898, -0.253672, -0.881210,
		0.893427, 0.323982, 0.311165,
		0.206563, -0.911420, 0.355873,
		33.819019, 41.288589, 41.846519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368271, 41.797089, 41.405289>,  <33.674423, 41.926582, 41.597408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368271, 41.797089, 41.405289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178722, 41.449032, 41.459408>,  <34.064995, 41.240200, 41.491879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178722, 41.449032, 41.459408>,  <34.368271, 41.797089, 41.405289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178722, 41.449032, 41.459408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251272, -0.280867, -0.926270,
		0.843985, -0.404932, 0.351736,
		-0.473867, -0.870140, 0.135299,
		34.036564, 41.187988, 41.499996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.541492, 31.088163, 29.912088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.234234, 31.251812, 30.109093>,  <38.049877, 31.350002, 30.227295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.234234, 31.251812, 30.109093>,  <38.541492, 31.088163, 29.912088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234234, 31.251812, 30.109093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630833, 0.351996, 0.691483,
		0.109540, 0.841853, -0.528473,
		-0.768147, 0.409124, 0.492511,
		38.003788, 31.374550, 30.256845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789860, 31.619469, 30.253246>,  <38.541492, 31.088163, 29.912088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789860, 31.619469, 30.253246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462814, 31.581490, 30.480402>,  <38.266586, 31.558702, 30.616695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462814, 31.581490, 30.480402>,  <38.789860, 31.619469, 30.253246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462814, 31.581490, 30.480402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455564, 0.496482, 0.738896,
		-0.352104, 0.862838, -0.362674,
		-0.817609, -0.094947, 0.567891,
		38.217533, 31.553005, 30.650770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658813, 32.344265, 30.493698>,  <38.789860, 31.619469, 30.253246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658813, 32.344265, 30.493698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511173, 32.059223, 30.732346>,  <38.422588, 31.888197, 30.875534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511173, 32.059223, 30.732346>,  <38.658813, 32.344265, 30.493698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511173, 32.059223, 30.732346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353274, 0.486188, 0.799261,
		-0.859630, 0.505776, 0.072295,
		-0.369098, -0.712609, 0.596619,
		38.400444, 31.845440, 30.911331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464931, 32.755817, 31.093611>,  <38.658813, 32.344265, 30.493698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464931, 32.755817, 31.093611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431229, 32.382576, 31.233448>,  <38.411007, 32.158630, 31.317350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431229, 32.382576, 31.233448>,  <38.464931, 32.755817, 31.093611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431229, 32.382576, 31.233448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325448, 0.305830, 0.894735,
		-0.941799, 0.189161, 0.277910,
		-0.084255, -0.933106, 0.349592,
		38.405952, 32.102646, 31.338326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293526, 32.863991, 31.820309>,  <38.464931, 32.755817, 31.093611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293526, 32.863991, 31.820309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436146, 32.492348, 31.781054>,  <38.521717, 32.269363, 31.757500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436146, 32.492348, 31.781054>,  <38.293526, 32.863991, 31.820309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436146, 32.492348, 31.781054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446574, 0.077220, 0.891409,
		-0.820636, -0.361658, 0.442448,
		0.356551, -0.929107, -0.098138,
		38.543110, 32.213615, 31.751612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133171, 32.559258, 32.388607>,  <38.293526, 32.863991, 31.820309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133171, 32.559258, 32.388607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452778, 32.373154, 32.236233>,  <38.644543, 32.261494, 32.144810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452778, 32.373154, 32.236233>,  <38.133171, 32.559258, 32.388607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452778, 32.373154, 32.236233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475191, 0.100364, 0.874140,
		-0.368466, -0.879469, 0.301277,
		0.799016, -0.465255, -0.380935,
		38.692482, 32.233578, 32.121952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341812, 32.115181, 32.908302>,  <38.133171, 32.559258, 32.388607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341812, 32.115181, 32.908302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.673641, 32.105476, 32.685154>,  <38.872738, 32.099655, 32.551266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.673641, 32.105476, 32.685154>,  <38.341812, 32.115181, 32.908302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673641, 32.105476, 32.685154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557536, 0.091571, 0.825087,
		0.031066, -0.995503, 0.089492,
		0.829571, -0.024263, -0.557874,
		38.922512, 32.098198, 32.517792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783222, 31.661764, 33.272305>,  <38.341812, 32.115181, 32.908302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783222, 31.661764, 33.272305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007309, 31.878483, 33.021671>,  <39.141762, 32.008514, 32.871292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007309, 31.878483, 33.021671>,  <38.783222, 31.661764, 33.272305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007309, 31.878483, 33.021671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641670, 0.194519, 0.741904,
		0.523846, -0.817690, -0.238683,
		0.560219, 0.541799, -0.626585,
		39.175373, 32.041023, 32.833694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523396, 31.564789, 33.533077>,  <38.783222, 31.661764, 33.272305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523396, 31.564789, 33.533077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.597538, 31.862570, 33.276505>,  <39.642025, 32.041237, 33.122562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.597538, 31.862570, 33.276505>,  <39.523396, 31.564789, 33.533077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597538, 31.862570, 33.276505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811734, 0.251890, 0.526914,
		0.553833, -0.618338, -0.557608,
		0.185355, 0.744452, -0.641432,
		39.653145, 32.085907, 33.084076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182770, 31.491976, 33.403549>,  <39.523396, 31.564789, 33.533077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182770, 31.491976, 33.403549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.085484, 31.872231, 33.326469>,  <40.027111, 32.100384, 33.280220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.085484, 31.872231, 33.326469>,  <40.182770, 31.491976, 33.403549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085484, 31.872231, 33.326469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808861, 0.308423, 0.500619,
		0.535341, -0.034112, -0.843947,
		-0.243216, 0.950637, -0.192703,
		40.012520, 32.157421, 33.268658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707462, 31.602612, 33.141434>,  <40.182770, 31.491976, 33.403549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707462, 31.602612, 33.141434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.549553, 31.945173, 33.274532>,  <40.454807, 32.150711, 33.354393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.549553, 31.945173, 33.274532>,  <40.707462, 31.602612, 33.141434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549553, 31.945173, 33.274532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847299, 0.199295, 0.492306,
		0.355299, 0.476287, -0.804309,
		-0.394774, 0.856407, 0.332749,
		40.431122, 32.202095, 33.374355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146034, 32.130314, 33.046093>,  <40.707462, 31.602612, 33.141434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146034, 32.130314, 33.046093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.936390, 32.285183, 33.349514>,  <40.810604, 32.378105, 33.531567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.936390, 32.285183, 33.349514>,  <41.146034, 32.130314, 33.046093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936390, 32.285183, 33.349514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834815, 0.409771, 0.367658,
		-0.168486, 0.825946, -0.537982,
		-0.524115, 0.387170, 0.758553,
		40.779156, 32.401333, 33.577080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407948, 32.737156, 33.077183>,  <41.146034, 32.130314, 33.046093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407948, 32.737156, 33.077183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223816, 32.728188, 33.432171>,  <41.113338, 32.722805, 33.645164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223816, 32.728188, 33.432171>,  <41.407948, 32.737156, 33.077183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223816, 32.728188, 33.432171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577619, 0.751566, 0.318598,
		-0.674132, 0.659277, -0.333016,
		-0.460328, -0.022421, 0.887466,
		41.085716, 32.721462, 33.698410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240734, 33.414391, 33.186859>,  <41.407948, 32.737156, 33.077183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240734, 33.414391, 33.186859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239597, 33.242668, 33.548122>,  <41.238914, 33.139637, 33.764881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239597, 33.242668, 33.548122>,  <41.240734, 33.414391, 33.186859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239597, 33.242668, 33.548122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696460, 0.647252, 0.309852,
		-0.717590, 0.629893, 0.297153,
		-0.002841, -0.429302, 0.903156,
		41.238747, 33.113876, 33.819069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325768, 33.912540, 33.721294>,  <41.240734, 33.414391, 33.186859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325768, 33.912540, 33.721294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412437, 33.609730, 33.967857>,  <41.464439, 33.428043, 34.115795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412437, 33.609730, 33.967857>,  <41.325768, 33.912540, 33.721294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412437, 33.609730, 33.967857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649738, 0.583080, 0.487708,
		-0.728625, 0.294833, 0.618206,
		0.216671, -0.757028, 0.616411,
		41.477440, 33.382622, 34.152782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364418, 34.149338, 34.422779>,  <41.325768, 33.912540, 33.721294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364418, 34.149338, 34.422779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570045, 33.806553, 34.408112>,  <41.693424, 33.600883, 34.399311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570045, 33.806553, 34.408112>,  <41.364418, 34.149338, 34.422779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570045, 33.806553, 34.408112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780093, 0.449333, 0.435379,
		-0.356628, -0.252419, 0.899500,
		0.514073, -0.856962, -0.036666,
		41.724266, 33.549465, 34.397110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713318, 34.159199, 35.039047>,  <41.364418, 34.149338, 34.422779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713318, 34.159199, 35.039047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912216, 33.881393, 34.831047>,  <42.031555, 33.714710, 34.706245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912216, 33.881393, 34.831047>,  <41.713318, 34.159199, 35.039047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912216, 33.881393, 34.831047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864598, 0.446558, 0.230338,
		0.072238, -0.564126, 0.822523,
		0.497244, -0.694513, -0.520000,
		42.061390, 33.673038, 34.675045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305653, 34.018063, 35.395622>,  <41.713318, 34.159199, 35.039047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305653, 34.018063, 35.395622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407898, 33.856380, 35.044334>,  <42.469246, 33.759369, 34.833561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407898, 33.856380, 35.044334>,  <42.305653, 34.018063, 35.395622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407898, 33.856380, 35.044334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963261, 0.183918, 0.195712,
		0.082413, -0.895985, 0.436370,
		0.255611, -0.404209, -0.878224,
		42.484581, 33.735119, 34.780869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808178, 33.455463, 35.554062>,  <42.305653, 34.018063, 35.395622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808178, 33.455463, 35.554062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832745, 33.572498, 35.172356>,  <42.847485, 33.642719, 34.943333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832745, 33.572498, 35.172356>,  <42.808178, 33.455463, 35.554062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832745, 33.572498, 35.172356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986898, 0.125111, 0.101876,
		0.149196, -0.948018, -0.281072,
		0.061416, 0.292589, -0.954264,
		42.851170, 33.660275, 34.886078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323971, 33.180374, 35.282192>,  <42.808178, 33.455463, 35.554062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323971, 33.180374, 35.282192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297733, 33.493824, 35.035091>,  <43.281990, 33.681896, 34.886829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297733, 33.493824, 35.035091>,  <43.323971, 33.180374, 35.282192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297733, 33.493824, 35.035091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939002, 0.257929, 0.227482,
		0.337599, -0.565153, -0.752748,
		-0.065594, 0.783629, -0.617756,
		43.278057, 33.728912, 34.849766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860760, 33.066612, 34.874226>,  <43.323971, 33.180374, 35.282192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860760, 33.066612, 34.874226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767448, 33.455574, 34.874107>,  <43.711460, 33.688953, 34.874035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767448, 33.455574, 34.874107>,  <43.860760, 33.066612, 34.874226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767448, 33.455574, 34.874107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945564, 0.226912, 0.233282,
		0.226912, 0.054141, -0.972409,
		-0.233282, 0.972409, -0.000295,
		43.697464, 33.747295, 34.874020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313015, 33.418171, 34.359291>,  <43.860760, 33.066612, 34.874226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313015, 33.418171, 34.359291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.185730, 33.646290, 34.662209>,  <44.109360, 33.783161, 34.843960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.185730, 33.646290, 34.662209>,  <44.313015, 33.418171, 34.359291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185730, 33.646290, 34.662209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923612, 0.366597, 0.112017,
		-0.213740, 0.735093, -0.643392,
		-0.318208, 0.570302, 0.757297,
		44.090267, 33.817379, 34.889397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734451, 34.106544, 34.568214>,  <44.313015, 33.418171, 34.359291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734451, 34.106544, 34.568214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.759357, 34.052025, 34.963699>,  <44.774300, 34.019314, 35.200989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.759357, 34.052025, 34.963699>,  <44.734451, 34.106544, 34.568214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759357, 34.052025, 34.963699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226594, 0.966693, 0.118992,
		-0.971997, 0.216627, 0.091074,
		0.062264, -0.136297, 0.988709,
		44.778038, 34.011135, 35.260311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334427, 34.370808, 34.140690>,  <44.734451, 34.106544, 34.568214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334427, 34.370808, 34.140690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558170, 34.389446, 33.809643>,  <45.692417, 34.400631, 33.611015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558170, 34.389446, 33.809643>,  <45.334427, 34.370808, 34.140690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558170, 34.389446, 33.809643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813928, 0.219931, -0.537727,
		0.156961, 0.974402, 0.160949,
		0.559360, 0.046599, -0.827614,
		45.725979, 34.403427, 33.561359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091934, 34.988560, 33.800278>,  <45.334427, 34.370808, 34.140690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091934, 34.988560, 33.800278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273548, 34.762398, 33.524837>,  <45.382515, 34.626701, 33.359573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273548, 34.762398, 33.524837>,  <45.091934, 34.988560, 33.800278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273548, 34.762398, 33.524837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789734, 0.102440, -0.604836,
		0.412519, 0.818426, -0.400010,
		0.454036, -0.565407, -0.688597,
		45.409760, 34.592777, 33.318260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110691, 35.400940, 33.180664>,  <45.091934, 34.988560, 33.800278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110691, 35.400940, 33.180664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198112, 35.033291, 33.049545>,  <45.250565, 34.812702, 32.970875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198112, 35.033291, 33.049545>,  <45.110691, 35.400940, 33.180664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198112, 35.033291, 33.049545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696873, 0.088137, -0.711758,
		0.683082, 0.383993, -0.621247,
		0.218555, -0.919119, -0.327799,
		45.263680, 34.757553, 32.951206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226692, 35.463497, 32.513508>,  <45.110691, 35.400940, 33.180664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226692, 35.463497, 32.513508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.144695, 35.075089, 32.562656>,  <45.095497, 34.842045, 32.592148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.144695, 35.075089, 32.562656>,  <45.226692, 35.463497, 32.513508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144695, 35.075089, 32.562656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628207, 0.034263, -0.777291,
		0.750555, -0.236532, -0.617025,
		-0.204995, -0.971020, 0.122875,
		45.083199, 34.783783, 32.599518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212662, 35.256157, 31.886969>,  <45.226692, 35.463497, 32.513508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212662, 35.256157, 31.886969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.009800, 34.969711, 32.078789>,  <44.888081, 34.797844, 32.193882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.009800, 34.969711, 32.078789>,  <45.212662, 35.256157, 31.886969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009800, 34.969711, 32.078789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613900, -0.090368, -0.784194,
		0.604910, -0.692106, -0.393793,
		-0.507159, -0.716117, 0.479548,
		44.857651, 34.754875, 32.222652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102455, 34.773754, 31.437140>,  <45.212662, 35.256157, 31.886969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102455, 34.773754, 31.437140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802799, 34.711613, 31.694714>,  <44.623005, 34.674328, 31.849258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802799, 34.711613, 31.694714>,  <45.102455, 34.773754, 31.437140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802799, 34.711613, 31.694714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643930, -0.057231, -0.762941,
		0.155377, -0.986200, -0.057161,
		-0.749141, -0.155351, 0.643936,
		44.578056, 34.665009, 31.887894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616070, 34.452263, 30.984348>,  <45.102455, 34.773754, 31.437140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616070, 34.452263, 30.984348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.412411, 34.547131, 31.315290>,  <44.290215, 34.604053, 31.513857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.412411, 34.547131, 31.315290>,  <44.616070, 34.452263, 30.984348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412411, 34.547131, 31.315290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859996, -0.101877, -0.500029,
		-0.034305, -0.966111, 0.255837,
		-0.509147, 0.237172, 0.827356,
		44.259666, 34.618282, 31.563498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032753, 33.906631, 31.000860>,  <44.616070, 34.452263, 30.984348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032753, 33.906631, 31.000860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918152, 34.222050, 31.218527>,  <43.849392, 34.411301, 31.349127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918152, 34.222050, 31.218527>,  <44.032753, 33.906631, 31.000860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918152, 34.222050, 31.218527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921224, -0.070719, -0.382552,
		-0.263175, -0.610902, 0.746684,
		-0.286507, 0.788541, 0.544166,
		43.832199, 34.458611, 31.381777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351810, 33.729649, 31.243423>,  <44.032753, 33.906631, 31.000860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351810, 33.729649, 31.243423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.381176, 34.128117, 31.262396>,  <43.398796, 34.367199, 31.273779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.381176, 34.128117, 31.262396>,  <43.351810, 33.729649, 31.243423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381176, 34.128117, 31.262396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952580, 0.084125, -0.292429,
		-0.295300, -0.023715, 0.955110,
		0.073414, 0.996173, 0.047432,
		43.403202, 34.426968, 31.276625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833309, 33.999771, 31.717733>,  <43.351810, 33.729649, 31.243423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833309, 33.999771, 31.717733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943542, 34.292572, 31.468502>,  <43.009682, 34.468254, 31.318962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943542, 34.292572, 31.468502>,  <42.833309, 33.999771, 31.717733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943542, 34.292572, 31.468502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954003, 0.287858, -0.083763,
		0.118044, 0.617503, 0.777660,
		0.275579, 0.732002, -0.623080,
		43.026215, 34.512173, 31.281578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334846, 34.626717, 31.879042>,  <42.833309, 33.999771, 31.717733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334846, 34.626717, 31.879042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495262, 34.712757, 31.522861>,  <42.591511, 34.764381, 31.309155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495262, 34.712757, 31.522861>,  <42.334846, 34.626717, 31.879042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495262, 34.712757, 31.522861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876266, 0.373468, -0.304432,
		0.267069, 0.902359, 0.338264,
		0.401038, 0.215105, -0.890448,
		42.615574, 34.777290, 31.255728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206318, 35.284828, 31.773655>,  <42.334846, 34.626717, 31.879042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206318, 35.284828, 31.773655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247585, 35.153084, 31.398235>,  <42.272346, 35.074036, 31.172983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247585, 35.153084, 31.398235>,  <42.206318, 35.284828, 31.773655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247585, 35.153084, 31.398235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892058, 0.386754, -0.233782,
		0.439987, 0.861360, -0.253910,
		0.103170, -0.329363, -0.938550,
		42.278538, 35.054276, 31.116671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942772, 35.824390, 31.359798>,  <42.206318, 35.284828, 31.773655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942772, 35.824390, 31.359798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.932060, 35.508011, 31.115280>,  <41.925632, 35.318184, 30.968569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.932060, 35.508011, 31.115280>,  <41.942772, 35.824390, 31.359798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932060, 35.508011, 31.115280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909564, 0.272967, -0.313341,
		0.414700, 0.547619, -0.726731,
		-0.026782, -0.790950, -0.611294,
		41.924026, 35.270725, 30.931892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528172, 36.067211, 30.852110>,  <41.942772, 35.824390, 31.359798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528172, 36.067211, 30.852110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.542076, 35.679863, 30.753275>,  <41.550419, 35.447453, 30.693974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.542076, 35.679863, 30.753275>,  <41.528172, 36.067211, 30.852110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542076, 35.679863, 30.753275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933819, 0.056611, -0.353237,
		0.356052, 0.243012, -0.902315,
		0.034760, -0.968370, -0.247086,
		41.552505, 35.389351, 30.679150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335232, 36.054615, 30.123766>,  <41.528172, 36.067211, 30.852110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335232, 36.054615, 30.123766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.275520, 35.693722, 30.285604>,  <41.239693, 35.477188, 30.382708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.275520, 35.693722, 30.285604>,  <41.335232, 36.054615, 30.123766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275520, 35.693722, 30.285604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946741, 0.012356, -0.321757,
		0.285299, -0.431081, -0.856022,
		-0.149281, -0.902229, 0.404597,
		41.230736, 35.423054, 30.406984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880112, 35.790436, 29.637548>,  <41.335232, 36.054615, 30.123766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880112, 35.790436, 29.637548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821922, 35.564323, 29.962337>,  <40.787010, 35.428658, 30.157211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821922, 35.564323, 29.962337>,  <40.880112, 35.790436, 29.637548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821922, 35.564323, 29.962337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986493, 0.020416, -0.162529,
		0.075297, -0.824646, -0.560616,
		-0.145474, -0.565281, 0.811970,
		40.778278, 35.394741, 30.205929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348629, 35.220345, 29.562355>,  <40.880112, 35.790436, 29.637548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348629, 35.220345, 29.562355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.361450, 35.281982, 29.957369>,  <40.369141, 35.318966, 30.194378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.361450, 35.281982, 29.957369>,  <40.348629, 35.220345, 29.562355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361450, 35.281982, 29.957369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998089, 0.057158, 0.023473,
		-0.052829, -0.986402, 0.155628,
		0.032049, 0.154091, 0.987536,
		40.371063, 35.328209, 30.253630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806244, 34.837597, 29.782059>,  <40.348629, 35.220345, 29.562355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806244, 34.837597, 29.782059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.882645, 35.090450, 30.082439>,  <39.928486, 35.242161, 30.262667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.882645, 35.090450, 30.082439>,  <39.806244, 34.837597, 29.782059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882645, 35.090450, 30.082439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980459, 0.086161, 0.176853,
		0.047092, -0.770056, 0.636236,
		0.191006, 0.632131, 0.750951,
		39.939945, 35.280090, 30.307724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405270, 34.600769, 30.387808>,  <39.806244, 34.837597, 29.782059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405270, 34.600769, 30.387808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.468079, 34.992706, 30.437206>,  <39.505764, 35.227867, 30.466845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.468079, 34.992706, 30.437206>,  <39.405270, 34.600769, 30.387808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468079, 34.992706, 30.437206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975573, 0.134439, 0.173731,
		0.153627, -0.147754, 0.977019,
		0.157019, 0.979844, 0.123492,
		39.515186, 35.286659, 30.474255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.886589, 39.355179, 39.830017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513653, 39.225998, 39.764969>,  <39.289890, 39.148491, 39.725941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513653, 39.225998, 39.764969>,  <39.886589, 39.355179, 39.830017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513653, 39.225998, 39.764969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310099, -0.482863, -0.818951,
		0.185957, -0.813969, 0.550339,
		-0.932340, -0.322950, -0.162619,
		39.233952, 39.129112, 39.716183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880207, 38.617996, 39.757862>,  <39.886589, 39.355179, 39.830017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880207, 38.617996, 39.757862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563591, 38.756130, 39.556187>,  <39.373619, 38.839012, 39.435181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563591, 38.756130, 39.556187>,  <39.880207, 38.617996, 39.757862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563591, 38.756130, 39.556187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299543, -0.499874, -0.812650,
		-0.532666, -0.794273, 0.292229,
		-0.791543, 0.345336, -0.504185,
		39.326130, 38.859730, 39.404930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376755, 38.027699, 39.452419>,  <39.880207, 38.617996, 39.757862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376755, 38.027699, 39.452419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298298, 38.345272, 39.222218>,  <39.251225, 38.535816, 39.084099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298298, 38.345272, 39.222218>,  <39.376755, 38.027699, 39.452419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298298, 38.345272, 39.222218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096729, -0.568373, -0.817066,
		-0.975793, -0.215927, 0.034685,
		-0.196141, 0.793932, -0.575500,
		39.239456, 38.583450, 39.049568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938213, 37.699249, 38.942474>,  <39.376755, 38.027699, 39.452419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938213, 37.699249, 38.942474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037384, 38.052193, 38.782486>,  <39.096886, 38.263958, 38.686493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037384, 38.052193, 38.782486>,  <38.938213, 37.699249, 38.942474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037384, 38.052193, 38.782486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098540, -0.387755, -0.916480,
		-0.963754, 0.266632, -0.009187,
		0.247925, 0.882356, -0.399975,
		39.111763, 38.316898, 38.662495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503601, 37.743904, 38.359055>,  <38.938213, 37.699249, 38.942474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503601, 37.743904, 38.359055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772614, 38.020962, 38.254784>,  <38.934021, 38.187195, 38.192219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772614, 38.020962, 38.254784>,  <38.503601, 37.743904, 38.359055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772614, 38.020962, 38.254784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093366, -0.428826, -0.898549,
		-0.734160, 0.579960, -0.353066,
		0.672526, 0.692643, -0.260679,
		38.974373, 38.228756, 38.176579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262173, 38.049423, 37.770527>,  <38.503601, 37.743904, 38.359055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262173, 38.049423, 37.770527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659321, 38.087814, 37.798805>,  <38.897610, 38.110851, 37.815773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659321, 38.087814, 37.798805>,  <38.262173, 38.049423, 37.770527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659321, 38.087814, 37.798805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106943, -0.455125, -0.883982,
		-0.052669, 0.885240, -0.462144,
		0.992869, 0.095982, 0.070699,
		38.957180, 38.116608, 37.820015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419315, 38.295086, 37.116703>,  <38.262173, 38.049423, 37.770527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419315, 38.295086, 37.116703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772961, 38.170074, 37.255657>,  <38.985146, 38.095066, 37.339027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772961, 38.170074, 37.255657>,  <38.419315, 38.295086, 37.116703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772961, 38.170074, 37.255657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111232, -0.581290, -0.806058,
		0.453847, 0.751284, -0.479161,
		0.884110, -0.312528, 0.347384,
		39.038193, 38.076317, 37.359871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868191, 38.278969, 36.455929>,  <38.419315, 38.295086, 37.116703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868191, 38.278969, 36.455929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086681, 38.057568, 36.707409>,  <39.217777, 37.924728, 36.858299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086681, 38.057568, 36.707409>,  <38.868191, 38.278969, 36.455929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086681, 38.057568, 36.707409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170310, -0.661505, -0.730347,
		0.820139, 0.506012, -0.267067,
		0.546230, -0.553501, 0.628705,
		39.250549, 37.891518, 36.896019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563412, 38.215557, 36.157764>,  <38.868191, 38.278969, 36.455929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563412, 38.215557, 36.157764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523762, 37.914139, 36.417717>,  <39.499973, 37.733288, 36.573689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523762, 37.914139, 36.417717>,  <39.563412, 38.215557, 36.157764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523762, 37.914139, 36.417717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047632, -0.655943, -0.753306,
		0.993935, -0.043715, 0.100912,
		-0.099123, -0.753544, 0.649882,
		39.494026, 37.688076, 36.612682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260361, 37.749256, 36.089355>,  <39.563412, 38.215557, 36.157764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260361, 37.749256, 36.089355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981396, 37.523144, 36.265572>,  <39.814018, 37.387478, 36.371304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981396, 37.523144, 36.265572>,  <40.260361, 37.749256, 36.089355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981396, 37.523144, 36.265572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177569, -0.731833, -0.657944,
		0.694326, -0.380630, 0.610763,
		-0.697410, -0.565280, 0.440543,
		39.772171, 37.353561, 36.397736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483639, 37.144127, 36.359112>,  <40.260361, 37.749256, 36.089355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483639, 37.144127, 36.359112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099842, 37.083549, 36.264088>,  <39.869564, 37.047203, 36.207073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099842, 37.083549, 36.264088>,  <40.483639, 37.144127, 36.359112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099842, 37.083549, 36.264088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279480, -0.617934, -0.734880,
		-0.035500, -0.771506, 0.635230,
		-0.959495, -0.151446, -0.237558,
		39.811993, 37.038116, 36.192822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483913, 36.482880, 36.188427>,  <40.483639, 37.144127, 36.359112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483913, 36.482880, 36.188427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134243, 36.606472, 36.038574>,  <39.924442, 36.680626, 35.948662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134243, 36.606472, 36.038574>,  <40.483913, 36.482880, 36.188427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134243, 36.606472, 36.038574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169020, -0.529643, -0.831211,
		-0.455248, -0.789944, 0.410777,
		-0.874174, 0.308978, -0.374635,
		39.871990, 36.699165, 35.926182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608120, 35.736801, 36.319721>,  <40.483913, 36.482880, 36.188427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608120, 35.736801, 36.319721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732574, 35.372837, 36.429455>,  <40.807247, 35.154457, 36.495296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732574, 35.372837, 36.429455>,  <40.608120, 35.736801, 36.319721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732574, 35.372837, 36.429455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630448, 0.018388, 0.776013,
		-0.711146, -0.414400, -0.567930,
		0.311137, -0.909910, 0.274334,
		40.825916, 35.099865, 36.511753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030972, 35.329712, 36.312244>,  <40.608120, 35.736801, 36.319721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030972, 35.329712, 36.312244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322739, 35.189705, 36.547340>,  <40.497799, 35.105701, 36.688396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322739, 35.189705, 36.547340>,  <40.030972, 35.329712, 36.312244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322739, 35.189705, 36.547340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586571, 0.122049, 0.800649,
		-0.351974, -0.928758, -0.116285,
		0.729417, -0.350017, 0.587741,
		40.541565, 35.084702, 36.723663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798241, 34.742699, 36.720760>,  <40.030972, 35.329712, 36.312244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798241, 34.742699, 36.720760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133633, 34.794449, 36.932503>,  <40.334869, 34.825500, 37.059547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133633, 34.794449, 36.932503>,  <39.798241, 34.742699, 36.720760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133633, 34.794449, 36.932503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451133, -0.380085, 0.807474,
		0.305667, -0.915859, -0.260328,
		0.838479, 0.129375, 0.529354,
		40.385178, 34.833260, 37.091309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763783, 34.187935, 37.149422>,  <39.798241, 34.742699, 36.720760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763783, 34.187935, 37.149422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030758, 34.436466, 37.313606>,  <40.190945, 34.585587, 37.412117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030758, 34.436466, 37.313606>,  <39.763783, 34.187935, 37.149422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030758, 34.436466, 37.313606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370778, -0.200728, 0.906770,
		0.645792, -0.757403, 0.096401,
		0.667440, 0.621328, 0.410457,
		40.230991, 34.622864, 37.436745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891193, 33.891537, 37.694695>,  <39.763783, 34.187935, 37.149422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891193, 33.891537, 37.694695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973511, 34.279770, 37.744686>,  <40.022903, 34.512711, 37.774681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973511, 34.279770, 37.744686>,  <39.891193, 33.891537, 37.694695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973511, 34.279770, 37.744686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437233, -0.023064, 0.899052,
		0.875486, -0.239668, 0.419624,
		0.205795, 0.970581, 0.124983,
		40.035248, 34.570946, 37.782181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977753, 33.912098, 38.436153>,  <39.891193, 33.891537, 37.694695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977753, 33.912098, 38.436153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915707, 34.282089, 38.297382>,  <39.878479, 34.504082, 38.214119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915707, 34.282089, 38.297382>,  <39.977753, 33.912098, 38.436153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915707, 34.282089, 38.297382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501858, 0.228713, 0.834163,
		0.850928, 0.303499, 0.428730,
		-0.155111, 0.924975, -0.346932,
		39.869175, 34.559582, 38.193302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228981, 34.343803, 38.964359>,  <39.977753, 33.912098, 38.436153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228981, 34.343803, 38.964359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953758, 34.526203, 38.738567>,  <39.788624, 34.635643, 38.603092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953758, 34.526203, 38.738567>,  <40.228981, 34.343803, 38.964359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953758, 34.526203, 38.738567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503284, 0.260515, 0.823916,
		0.522760, 0.850998, 0.050247,
		-0.688060, 0.455999, -0.564481,
		39.747341, 34.663002, 38.569221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008160, 34.846489, 39.406895>,  <40.228981, 34.343803, 38.964359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008160, 34.846489, 39.406895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732956, 34.869637, 39.117538>,  <39.567833, 34.883526, 38.943924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732956, 34.869637, 39.117538>,  <40.008160, 34.846489, 39.406895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732956, 34.869637, 39.117538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680188, 0.296025, 0.670607,
		0.252947, 0.953426, -0.164308,
		-0.688013, 0.057868, -0.723387,
		39.526550, 34.886997, 38.900524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654922, 35.477173, 39.488369>,  <40.008160, 34.846489, 39.406895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654922, 35.477173, 39.488369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413307, 35.280411, 39.237556>,  <39.268337, 35.162354, 39.087070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413307, 35.280411, 39.237556>,  <39.654922, 35.477173, 39.488369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413307, 35.280411, 39.237556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779826, 0.202564, 0.592317,
		-0.164351, 0.846756, -0.505958,
		-0.604037, -0.491907, -0.627030,
		39.232098, 35.132839, 39.049446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154621, 35.905869, 39.536568>,  <39.654922, 35.477173, 39.488369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154621, 35.905869, 39.536568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010857, 35.558098, 39.400970>,  <38.924599, 35.349434, 39.319614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010857, 35.558098, 39.400970>,  <39.154621, 35.905869, 39.536568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010857, 35.558098, 39.400970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745284, 0.048823, 0.664958,
		-0.561585, 0.491635, -0.665520,
		-0.359410, -0.869431, -0.338989,
		38.903034, 35.297268, 39.299274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554722, 36.100163, 39.333286>,  <39.154621, 35.905869, 39.536568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554722, 36.100163, 39.333286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549473, 35.706161, 39.402103>,  <38.546322, 35.469761, 39.443394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549473, 35.706161, 39.402103>,  <38.554722, 36.100163, 39.333286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549473, 35.706161, 39.402103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745509, 0.124302, 0.654802,
		-0.666367, -0.119661, -0.735960,
		-0.013127, -0.985003, 0.172039,
		38.545536, 35.410660, 39.453716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889225, 35.904346, 39.390034>,  <38.554722, 36.100163, 39.333286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889225, 35.904346, 39.390034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059479, 35.600010, 39.585976>,  <38.161633, 35.417408, 39.703541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059479, 35.600010, 39.585976>,  <37.889225, 35.904346, 39.390034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059479, 35.600010, 39.585976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630265, 0.139174, 0.763804,
		-0.649310, -0.633836, -0.420296,
		0.425633, -0.760843, 0.489851,
		38.187168, 35.371758, 39.732933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298618, 35.481796, 39.655663>,  <37.889225, 35.904346, 39.390034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298618, 35.481796, 39.655663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615860, 35.365971, 39.869999>,  <37.806206, 35.296474, 39.998600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615860, 35.365971, 39.869999>,  <37.298618, 35.481796, 39.655663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615860, 35.365971, 39.869999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530238, 0.104656, 0.841365,
		-0.299711, -0.951419, -0.070535,
		0.793108, -0.289566, 0.535845,
		37.853794, 35.279102, 40.030754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974384, 35.048244, 40.128853>,  <37.298618, 35.481796, 39.655663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974384, 35.048244, 40.128853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326168, 35.156998, 40.285122>,  <37.537239, 35.222248, 40.378883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326168, 35.156998, 40.285122>,  <36.974384, 35.048244, 40.128853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326168, 35.156998, 40.285122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443829, 0.171939, 0.879461,
		0.171939, -0.946845, 0.271884,
		-0.879461, -0.271884, -0.390675,
		37.590008, 35.238564, 40.402325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080513, 34.523197, 40.723087>,  <36.974384, 35.048244, 40.128853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080513, 34.523197, 40.723087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295235, 34.857285, 40.770840>,  <37.424068, 35.057735, 40.799492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295235, 34.857285, 40.770840>,  <37.080513, 34.523197, 40.723087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295235, 34.857285, 40.770840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368044, 0.104487, 0.923919,
		0.759199, -0.539903, 0.363486,
		0.536806, 0.835217, 0.119381,
		37.456276, 35.107849, 40.806656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238823, 34.520573, 41.369934>,  <37.080513, 34.523197, 40.723087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238823, 34.520573, 41.369934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291965, 34.907406, 41.283131>,  <37.323853, 35.139507, 41.231049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291965, 34.907406, 41.283131>,  <37.238823, 34.520573, 41.369934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291965, 34.907406, 41.283131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596147, 0.252892, 0.762007,
		0.791807, 0.028132, 0.610124,
		0.132859, 0.967085, -0.217012,
		37.331821, 35.197533, 41.218025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141449, 33.737392, 41.398388>,  <37.238823, 34.520573, 41.369934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141449, 33.737392, 41.398388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797779, 33.618336, 41.564873>,  <36.591579, 33.546902, 41.664764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797779, 33.618336, 41.564873>,  <37.141449, 33.737392, 41.398388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797779, 33.618336, 41.564873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254827, -0.456475, -0.852463,
		0.443722, -0.838474, 0.316343,
		-0.859171, -0.297644, 0.416214,
		36.540028, 33.529041, 41.689735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108311, 32.993458, 41.225433>,  <37.141449, 33.737392, 41.398388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108311, 32.993458, 41.225433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744274, 33.136551, 41.309109>,  <36.525852, 33.222408, 41.359314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744274, 33.136551, 41.309109>,  <37.108311, 32.993458, 41.225433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744274, 33.136551, 41.309109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321478, -0.290902, -0.901126,
		-0.261504, -0.887359, 0.379750,
		-0.910092, 0.357729, 0.209195,
		36.471249, 33.243870, 41.371868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641899, 32.508739, 41.144680>,  <37.108311, 32.993458, 41.225433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641899, 32.508739, 41.144680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426445, 32.839958, 41.082436>,  <36.297173, 33.038689, 41.045090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426445, 32.839958, 41.082436>,  <36.641899, 32.508739, 41.144680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426445, 32.839958, 41.082436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328822, -0.376649, -0.866032,
		-0.775726, -0.415304, 0.475155,
		-0.538633, 0.828045, -0.155615,
		36.264854, 33.088371, 41.035751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041134, 32.268562, 40.861855>,  <36.641899, 32.508739, 41.144680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041134, 32.268562, 40.861855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040272, 32.660988, 40.784389>,  <36.039757, 32.896442, 40.737911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040272, 32.660988, 40.784389>,  <36.041134, 32.268562, 40.861855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040272, 32.660988, 40.784389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319094, -0.184209, -0.929648,
		-0.947721, 0.059793, 0.313449,
		-0.002153, 0.981067, -0.193658,
		36.039627, 32.955307, 40.726292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397732, 32.453587, 40.522488>,  <36.041134, 32.268562, 40.861855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397732, 32.453587, 40.522488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649090, 32.747887, 40.421459>,  <35.799904, 32.924469, 40.360844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649090, 32.747887, 40.421459>,  <35.397732, 32.453587, 40.522488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649090, 32.747887, 40.421459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306756, -0.063996, -0.949634,
		-0.714860, 0.674219, 0.185482,
		0.628392, 0.735753, -0.252569,
		35.837608, 32.968613, 40.345688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960175, 33.108658, 40.253391>,  <35.397732, 32.453587, 40.522488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960175, 33.108658, 40.253391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327850, 33.109306, 40.095863>,  <35.548454, 33.109695, 40.001347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327850, 33.109306, 40.095863>,  <34.960175, 33.108658, 40.253391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327850, 33.109306, 40.095863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392688, -0.071967, -0.916852,
		-0.029828, 0.997406, -0.065515,
		0.919188, 0.001621, -0.393816,
		35.603607, 33.109791, 39.977718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863415, 33.355011, 39.573635>,  <34.960175, 33.108658, 40.253391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863415, 33.355011, 39.573635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240242, 33.230946, 39.522556>,  <35.466339, 33.156506, 39.491909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240242, 33.230946, 39.522556>,  <34.863415, 33.355011, 39.573635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240242, 33.230946, 39.522556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166937, -0.103362, -0.980535,
		0.290931, 0.945047, -0.149152,
		0.942068, -0.310167, -0.127692,
		35.522861, 33.137894, 39.484249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100994, 33.730152, 38.976910>,  <34.863415, 33.355011, 39.573635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100994, 33.730152, 38.976910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360615, 33.426327, 38.993870>,  <35.516388, 33.244030, 39.004047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360615, 33.426327, 38.993870>,  <35.100994, 33.730152, 38.976910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360615, 33.426327, 38.993870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073118, 0.006803, -0.997300,
		0.757224, 0.650398, 0.059953,
		0.649050, -0.759563, 0.042404,
		35.555328, 33.198460, 39.006592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570679, 33.909767, 38.523407>,  <35.100994, 33.730152, 38.976910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570679, 33.909767, 38.523407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637695, 33.518139, 38.569618>,  <35.677906, 33.283161, 38.597343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637695, 33.518139, 38.569618>,  <35.570679, 33.909767, 38.523407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637695, 33.518139, 38.569618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129506, -0.094308, -0.987084,
		0.977322, 0.180337, 0.110996,
		0.167540, -0.979073, 0.115524,
		35.687958, 33.224419, 38.604275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184418, 33.755596, 38.147423>,  <35.570679, 33.909767, 38.523407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184418, 33.755596, 38.147423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994667, 33.406212, 38.191292>,  <35.880817, 33.196579, 38.217613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994667, 33.406212, 38.191292>,  <36.184418, 33.755596, 38.147423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994667, 33.406212, 38.191292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091336, -0.172749, -0.980722,
		0.875571, -0.455215, 0.161727,
		-0.474377, -0.873463, 0.109676,
		35.852352, 33.144173, 38.224194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667721, 33.251389, 37.862473>,  <36.184418, 33.755596, 38.147423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667721, 33.251389, 37.862473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286205, 33.132130, 37.847523>,  <36.057297, 33.060574, 37.838551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286205, 33.132130, 37.847523>,  <36.667721, 33.251389, 37.862473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286205, 33.132130, 37.847523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048412, -0.029709, -0.998386,
		0.296554, -0.954058, 0.042770,
		-0.953788, -0.298146, -0.037377,
		36.000069, 33.042686, 37.836311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713547, 32.584061, 37.554409>,  <36.667721, 33.251389, 37.862473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713547, 32.584061, 37.554409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351074, 32.742924, 37.496307>,  <36.133591, 32.838242, 37.461445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351074, 32.742924, 37.496307>,  <36.713547, 32.584061, 37.554409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351074, 32.742924, 37.496307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064894, -0.208821, -0.975799,
		-0.417876, -0.893679, 0.163457,
		-0.906184, 0.397156, -0.145255,
		36.079220, 32.862072, 37.452732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.007164, 34.615650, 45.559528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626415, 34.618759, 45.436970>,  <36.397964, 34.620625, 45.363434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626415, 34.618759, 45.436970>,  <37.007164, 34.615650, 45.559528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626415, 34.618759, 45.436970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240546, -0.600579, -0.762524,
		-0.189946, -0.799527, 0.569804,
		-0.951871, 0.007774, -0.306400,
		36.340855, 34.621090, 45.345051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899162, 33.921104, 45.330097>,  <37.007164, 34.615650, 45.559528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899162, 33.921104, 45.330097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618366, 34.163597, 45.180595>,  <36.449890, 34.309093, 45.090893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618366, 34.163597, 45.180595>,  <36.899162, 33.921104, 45.330097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618366, 34.163597, 45.180595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133637, -0.403352, -0.905234,
		-0.699539, -0.685410, 0.202133,
		-0.701987, 0.606234, -0.373757,
		36.407768, 34.345467, 45.068470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582191, 33.515213, 44.869667>,  <36.899162, 33.921104, 45.330097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582191, 33.515213, 44.869667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484261, 33.887150, 44.759789>,  <36.425503, 34.110310, 44.693859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484261, 33.887150, 44.759789>,  <36.582191, 33.515213, 44.869667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484261, 33.887150, 44.759789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007684, -0.281452, -0.959545,
		-0.969536, -0.237034, 0.061763,
		-0.244828, 0.929839, -0.274699,
		36.410812, 34.166100, 44.677380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053829, 33.412994, 44.383724>,  <36.582191, 33.515213, 44.869667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053829, 33.412994, 44.383724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176640, 33.782928, 44.293911>,  <36.250324, 34.004890, 44.240025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176640, 33.782928, 44.293911>,  <36.053829, 33.412994, 44.383724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176640, 33.782928, 44.293911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265137, -0.143464, -0.953478,
		-0.914022, 0.352275, 0.201160,
		0.307027, 0.924835, -0.224531,
		36.268749, 34.060379, 44.226551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582397, 33.751045, 43.965321>,  <36.053829, 33.412994, 44.383724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582397, 33.751045, 43.965321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.922741, 33.940277, 43.873901>,  <36.126945, 34.053818, 43.819050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.922741, 33.940277, 43.873901>,  <35.582397, 33.751045, 43.965321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922741, 33.940277, 43.873901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116824, -0.253749, -0.960189,
		-0.512242, 0.843684, -0.160636,
		0.850858, 0.473083, -0.228544,
		36.177998, 34.082203, 43.805340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356327, 34.105934, 43.321255>,  <35.582397, 33.751045, 43.965321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356327, 34.105934, 43.321255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756062, 34.096241, 43.332081>,  <35.995903, 34.090424, 43.338577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756062, 34.096241, 43.332081>,  <35.356327, 34.105934, 43.321255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756062, 34.096241, 43.332081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016456, -0.362335, -0.931903,
		0.032390, 0.931733, -0.361697,
		0.999340, -0.024232, 0.027069,
		36.055862, 34.088970, 43.340202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590748, 34.605453, 42.750385>,  <35.356327, 34.105934, 43.321255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590748, 34.605453, 42.750385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.878716, 34.334679, 42.811668>,  <36.051495, 34.172215, 42.848438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.878716, 34.334679, 42.811668>,  <35.590748, 34.605453, 42.750385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878716, 34.334679, 42.811668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068043, -0.150842, -0.986213,
		0.690717, 0.720416, -0.062533,
		0.719917, -0.676940, 0.153209,
		36.094692, 34.131596, 42.857632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055557, 34.684303, 42.219593>,  <35.590748, 34.605453, 42.750385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055557, 34.684303, 42.219593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.121788, 34.314255, 42.356262>,  <36.161526, 34.092228, 42.438263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.121788, 34.314255, 42.356262>,  <36.055557, 34.684303, 42.219593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121788, 34.314255, 42.356262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088289, -0.331160, -0.939435,
		0.982236, 0.185717, 0.026844,
		0.165580, -0.925117, 0.341675,
		36.171463, 34.036720, 42.458763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655396, 34.554459, 41.797718>,  <36.055557, 34.684303, 42.219593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655396, 34.554459, 41.797718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495888, 34.216404, 41.940113>,  <36.400185, 34.013573, 42.025551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495888, 34.216404, 41.940113>,  <36.655396, 34.554459, 41.797718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495888, 34.216404, 41.940113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142669, -0.440635, -0.886277,
		0.905887, -0.302628, 0.296285,
		-0.398766, -0.845137, 0.355990,
		36.376259, 33.962864, 42.046909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282913, 34.906769, 42.113655>,  <36.655396, 34.554459, 41.797718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282913, 34.906769, 42.113655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207005, 35.192596, 41.844322>,  <37.161461, 35.364094, 41.682724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207005, 35.192596, 41.844322>,  <37.282913, 34.906769, 42.113655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207005, 35.192596, 41.844322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511437, 0.513459, 0.689052,
		0.838105, 0.475126, 0.268021,
		-0.189768, 0.714574, -0.673330,
		37.150074, 35.406967, 41.642323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423664, 35.599548, 42.435287>,  <37.282913, 34.906769, 42.113655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423664, 35.599548, 42.435287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203274, 35.713810, 42.121643>,  <37.071037, 35.782368, 41.933456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203274, 35.713810, 42.121643>,  <37.423664, 35.599548, 42.435287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203274, 35.713810, 42.121643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292473, 0.813899, 0.502025,
		0.781590, 0.505935, -0.364894,
		-0.550978, 0.285656, -0.784107,
		37.037979, 35.799507, 41.886410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494263, 36.382103, 42.443001>,  <37.423664, 35.599548, 42.435287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494263, 36.382103, 42.443001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173077, 36.260445, 42.237968>,  <36.980366, 36.187450, 42.114948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173077, 36.260445, 42.237968>,  <37.494263, 36.382103, 42.443001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173077, 36.260445, 42.237968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544652, 0.723714, 0.423784,
		0.242075, 0.619464, -0.746769,
		-0.802966, -0.304142, -0.512585,
		36.932186, 36.169201, 42.084194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153614, 36.954208, 42.077728>,  <37.494263, 36.382103, 42.443001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153614, 36.954208, 42.077728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855228, 36.688210, 42.092243>,  <36.676197, 36.528610, 42.100952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855228, 36.688210, 42.092243>,  <37.153614, 36.954208, 42.077728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855228, 36.688210, 42.092243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607906, 0.702159, 0.370706,
		-0.271996, 0.254475, -0.928041,
		-0.745968, -0.664993, 0.036288,
		36.631439, 36.488712, 42.103130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548405, 37.255222, 41.821613>,  <37.153614, 36.954208, 42.077728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548405, 37.255222, 41.821613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435448, 36.958843, 42.065334>,  <36.367672, 36.781013, 42.211567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435448, 36.958843, 42.065334>,  <36.548405, 37.255222, 41.821613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435448, 36.958843, 42.065334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708997, 0.589054, 0.387735,
		-0.646203, -0.322497, -0.691677,
		-0.282392, -0.740952, 0.609298,
		36.350731, 36.736557, 42.248123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836239, 37.401924, 41.834999>,  <36.548405, 37.255222, 41.821613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836239, 37.401924, 41.834999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877445, 37.167896, 42.156765>,  <35.902168, 37.027481, 42.349823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877445, 37.167896, 42.156765>,  <35.836239, 37.401924, 41.834999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877445, 37.167896, 42.156765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562046, 0.632999, 0.532369,
		-0.820666, -0.506959, -0.263629,
		0.103012, -0.585069, 0.804415,
		35.908348, 36.992374, 42.398090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148216, 37.394981, 42.205830>,  <35.836239, 37.401924, 41.834999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148216, 37.394981, 42.205830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.419872, 37.284386, 42.477810>,  <35.582867, 37.218029, 42.640999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.419872, 37.284386, 42.477810>,  <35.148216, 37.394981, 42.205830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419872, 37.284386, 42.477810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363310, 0.678291, 0.638692,
		-0.637791, -0.680791, 0.360202,
		0.679138, -0.276487, 0.679946,
		35.623615, 37.201439, 42.681793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799770, 37.388252, 42.793613>,  <35.148216, 37.394981, 42.205830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799770, 37.388252, 42.793613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.182240, 37.378754, 42.910351>,  <35.411720, 37.373055, 42.980392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.182240, 37.378754, 42.910351>,  <34.799770, 37.388252, 42.793613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182240, 37.378754, 42.910351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224678, 0.579640, 0.783286,
		-0.187763, -0.814527, 0.548900,
		0.956172, -0.023746, 0.291841,
		35.469090, 37.371632, 42.997902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677460, 37.448242, 43.502838>,  <34.799770, 37.388252, 42.793613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677460, 37.448242, 43.502838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062572, 37.543545, 43.451797>,  <35.293640, 37.600727, 43.421173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.062572, 37.543545, 43.451797>,  <34.677460, 37.448242, 43.502838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062572, 37.543545, 43.451797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027766, 0.556804, 0.830180,
		0.268847, -0.795740, 0.542697,
		0.962783, 0.238260, -0.127600,
		35.351406, 37.615025, 43.413517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050953, 37.224983, 44.140751>,  <34.677460, 37.448242, 43.502838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050953, 37.224983, 44.140751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.284050, 37.514065, 43.992096>,  <35.423908, 37.687515, 43.902905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.284050, 37.514065, 43.992096>,  <35.050953, 37.224983, 44.140751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284050, 37.514065, 43.992096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012680, 0.449168, 0.893357,
		0.812559, -0.525308, 0.252585,
		0.582740, 0.722703, -0.371637,
		35.458874, 37.730877, 43.880604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517521, 37.342903, 44.683693>,  <35.050953, 37.224983, 44.140751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517521, 37.342903, 44.683693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.568119, 37.651123, 44.433811>,  <35.598476, 37.836056, 44.283882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.568119, 37.651123, 44.433811>,  <35.517521, 37.342903, 44.683693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568119, 37.651123, 44.433811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076418, 0.620323, 0.780615,
		0.989020, -0.146481, 0.019583,
		0.126493, 0.770547, -0.624706,
		35.606068, 37.882286, 44.246399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158009, 37.677280, 44.854668>,  <35.517521, 37.342903, 44.683693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158009, 37.677280, 44.854668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.893333, 37.915009, 44.671822>,  <35.734528, 38.057644, 44.562115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.893333, 37.915009, 44.671822>,  <36.158009, 37.677280, 44.854668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893333, 37.915009, 44.671822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008792, 0.603473, 0.797335,
		0.749730, 0.531604, -0.394084,
		-0.661686, 0.594321, -0.457116,
		35.694828, 38.093304, 44.534687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429031, 38.300827, 44.907661>,  <36.158009, 37.677280, 44.854668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429031, 38.300827, 44.907661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.041718, 38.381836, 44.849129>,  <35.809330, 38.430439, 44.814007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.041718, 38.381836, 44.849129>,  <36.429031, 38.300827, 44.907661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041718, 38.381836, 44.849129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013931, 0.541003, 0.840905,
		0.249467, 0.816273, -0.521023,
		-0.968283, 0.202520, -0.146334,
		35.751232, 38.442593, 44.805229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407093, 39.023956, 45.049004>,  <36.429031, 38.300827, 44.907661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407093, 39.023956, 45.049004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023823, 38.909828, 45.057919>,  <35.793861, 38.841351, 45.063267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023823, 38.909828, 45.057919>,  <36.407093, 39.023956, 45.049004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023823, 38.909828, 45.057919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156105, 0.586322, 0.794895,
		-0.239867, 0.758168, -0.606338,
		-0.958173, -0.285321, 0.022286,
		35.736370, 38.824230, 45.064606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.901997, 39.245445, 43.068954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.243935, 39.083065, 43.198227>,  <32.449097, 38.985638, 43.275791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.243935, 39.083065, 43.198227>,  <31.901997, 39.245445, 43.068954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243935, 39.083065, 43.198227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314030, -0.091063, -0.945036,
		0.413071, 0.909345, 0.049638,
		0.854843, -0.405955, 0.323177,
		32.500389, 38.961277, 43.295181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480873, 39.547581, 42.733292>,  <31.901997, 39.245445, 43.068954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480873, 39.547581, 42.733292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642200, 39.198112, 42.842136>,  <32.738998, 38.988434, 42.907444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642200, 39.198112, 42.842136>,  <32.480873, 39.547581, 42.733292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642200, 39.198112, 42.842136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354060, -0.125211, -0.926803,
		0.843787, 0.470138, 0.258830,
		0.403317, -0.873666, 0.272109,
		32.763195, 38.936012, 42.923767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121799, 39.422691, 42.336975>,  <32.480873, 39.547581, 42.733292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121799, 39.422691, 42.336975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096016, 39.051037, 42.482601>,  <33.080544, 38.828045, 42.569977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096016, 39.051037, 42.482601>,  <33.121799, 39.422691, 42.336975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096016, 39.051037, 42.482601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512722, -0.343827, -0.786701,
		0.856131, 0.135953, 0.498554,
		-0.064461, -0.929139, 0.364067,
		33.076679, 38.772293, 42.591820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777527, 39.051937, 42.057545>,  <33.121799, 39.422691, 42.336975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777527, 39.051937, 42.057545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.522594, 38.772610, 42.187870>,  <33.369633, 38.605015, 42.266068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.522594, 38.772610, 42.187870>,  <33.777527, 39.051937, 42.057545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522594, 38.772610, 42.187870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268561, -0.597597, -0.755482,
		0.722273, -0.393994, 0.568410,
		-0.637336, -0.698317, 0.325817,
		33.331394, 38.563114, 42.285614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189308, 38.463394, 42.082306>,  <33.777527, 39.051937, 42.057545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189308, 38.463394, 42.082306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805695, 38.351967, 42.061707>,  <33.575527, 38.285110, 42.049347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805695, 38.351967, 42.061707>,  <34.189308, 38.463394, 42.082306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805695, 38.351967, 42.061707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200001, -0.537058, -0.819493,
		0.200632, -0.796220, 0.570772,
		-0.959034, -0.278571, -0.051494,
		33.517982, 38.268394, 42.046257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229168, 37.731564, 41.903889>,  <34.189308, 38.463394, 42.082306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229168, 37.731564, 41.903889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868046, 37.845226, 41.774765>,  <33.651375, 37.913422, 41.697289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868046, 37.845226, 41.774765>,  <34.229168, 37.731564, 41.903889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868046, 37.845226, 41.774765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238954, -0.292647, -0.925883,
		-0.357566, -0.913024, 0.196301,
		-0.902800, 0.284158, -0.322812,
		33.597206, 37.930473, 41.677921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040100, 37.164284, 41.496452>,  <34.229168, 37.731564, 41.903889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040100, 37.164284, 41.496452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841343, 37.486820, 41.368137>,  <33.722088, 37.680344, 41.291149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841343, 37.486820, 41.368137>,  <34.040100, 37.164284, 41.496452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841343, 37.486820, 41.368137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064068, -0.334556, -0.940196,
		-0.865441, -0.487733, 0.114580,
		-0.496898, 0.806343, -0.320787,
		33.692272, 37.728722, 41.271900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607182, 36.891296, 40.980782>,  <34.040100, 37.164284, 41.496452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607182, 36.891296, 40.980782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620701, 37.286392, 40.919823>,  <33.628811, 37.523449, 40.883247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620701, 37.286392, 40.919823>,  <33.607182, 36.891296, 40.980782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620701, 37.286392, 40.919823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061972, -0.154265, -0.986084,
		-0.997505, 0.023884, -0.066426,
		0.033799, 0.987741, -0.152400,
		33.630840, 37.582714, 40.874104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085690, 36.972908, 40.568062>,  <33.607182, 36.891296, 40.980782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085690, 36.972908, 40.568062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.282597, 37.316059, 40.509117>,  <33.400742, 37.521950, 40.473751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.282597, 37.316059, 40.509117>,  <33.085690, 36.972908, 40.568062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282597, 37.316059, 40.509117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080218, -0.123864, -0.989051,
		-0.866741, 0.498696, 0.007844,
		0.492265, 0.857881, -0.147363,
		33.430275, 37.573425, 40.464909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627781, 37.512093, 40.230602>,  <33.085690, 36.972908, 40.568062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627781, 37.512093, 40.230602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012699, 37.583733, 40.148720>,  <33.243652, 37.626717, 40.099590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012699, 37.583733, 40.148720>,  <32.627781, 37.512093, 40.230602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012699, 37.583733, 40.148720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242337, 0.222814, -0.944260,
		-0.123505, 0.958268, 0.257816,
		0.962299, 0.179099, -0.204705,
		33.301388, 37.637463, 40.087307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554314, 37.827068, 39.651703>,  <32.627781, 37.512093, 40.230602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554314, 37.827068, 39.651703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.951469, 37.779503, 39.653606>,  <33.189762, 37.750965, 39.654747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.951469, 37.779503, 39.653606>,  <32.554314, 37.827068, 39.651703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951469, 37.779503, 39.653606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005008, 0.001786, -0.999986,
		0.118902, 0.992903, 0.002369,
		0.992893, -0.118912, 0.004760,
		33.249336, 37.743828, 39.655033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923573, 38.340672, 39.191116>,  <32.554314, 37.827068, 39.651703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923573, 38.340672, 39.191116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167538, 38.025681, 39.226616>,  <33.313915, 37.836685, 39.247917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167538, 38.025681, 39.226616>,  <32.923573, 38.340672, 39.191116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167538, 38.025681, 39.226616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122495, -0.016966, -0.992324,
		0.782943, 0.616104, 0.086115,
		0.609914, -0.787482, 0.088754,
		33.350513, 37.789436, 39.253242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492023, 38.490383, 38.741833>,  <32.923573, 38.340672, 39.191116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492023, 38.490383, 38.741833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490612, 38.092953, 38.787094>,  <33.489765, 37.854496, 38.814251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490612, 38.092953, 38.787094>,  <33.492023, 38.490383, 38.741833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490612, 38.092953, 38.787094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157951, -0.111176, -0.981169,
		0.987441, -0.021334, -0.156543,
		-0.003529, -0.993572, 0.113150,
		33.489552, 37.794880, 38.821037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920921, 38.208572, 38.197720>,  <33.492023, 38.490383, 38.741833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920921, 38.208572, 38.197720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711838, 37.886963, 38.311085>,  <33.586388, 37.693996, 38.379105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711838, 37.886963, 38.311085>,  <33.920921, 38.208572, 38.197720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711838, 37.886963, 38.311085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045181, -0.305854, -0.951006,
		0.851312, -0.509906, 0.123547,
		-0.522711, -0.804021, 0.283415,
		33.555023, 37.645756, 38.396111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630337, 38.458794, 38.242386>,  <33.920921, 38.208572, 38.197720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630337, 38.458794, 38.242386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725670, 38.821938, 38.104404>,  <34.782867, 39.039825, 38.021618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725670, 38.821938, 38.104404>,  <34.630337, 38.458794, 38.242386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725670, 38.821938, 38.104404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199291, 0.393343, 0.897532,
		0.950517, -0.145162, 0.274673,
		0.238328, 0.907860, -0.344950,
		34.797169, 39.094296, 38.000919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000431, 38.792126, 38.745243>,  <34.630337, 38.458794, 38.242386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000431, 38.792126, 38.745243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916290, 39.117668, 38.528584>,  <34.865807, 39.312996, 38.398586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916290, 39.117668, 38.528584>,  <35.000431, 38.792126, 38.745243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916290, 39.117668, 38.528584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436552, 0.417545, 0.796918,
		0.874742, 0.404093, 0.267460,
		-0.210353, 0.813858, -0.541652,
		34.853184, 39.361824, 38.366089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254452, 39.310417, 39.014885>,  <35.000431, 38.792126, 38.745243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254452, 39.310417, 39.014885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978134, 39.514267, 38.809715>,  <34.812344, 39.636578, 38.686611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978134, 39.514267, 38.809715>,  <35.254452, 39.310417, 39.014885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978134, 39.514267, 38.809715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361877, 0.370474, 0.855450,
		0.625983, 0.776552, -0.071498,
		-0.690789, 0.509624, -0.512927,
		34.770897, 39.667152, 38.655838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367210, 40.047726, 39.169006>,  <35.254452, 39.310417, 39.014885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367210, 40.047726, 39.169006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982185, 40.023472, 39.063324>,  <34.751171, 40.008919, 38.999916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982185, 40.023472, 39.063324>,  <35.367210, 40.047726, 39.169006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982185, 40.023472, 39.063324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264400, 0.424924, 0.865755,
		0.059775, 0.903196, -0.425045,
		-0.962559, -0.060632, -0.264205,
		34.693417, 40.005283, 38.984062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104580, 40.593540, 39.443779>,  <35.367210, 40.047726, 39.169006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104580, 40.593540, 39.443779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.766243, 40.393982, 39.368256>,  <34.563240, 40.274246, 39.322941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.766243, 40.393982, 39.368256>,  <35.104580, 40.593540, 39.443779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766243, 40.393982, 39.368256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407852, 0.376728, 0.831705,
		-0.343808, 0.780497, -0.522130,
		-0.845845, -0.498899, -0.188805,
		34.512489, 40.244312, 39.311615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624165, 41.064625, 39.490173>,  <35.104580, 40.593540, 39.443779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624165, 41.064625, 39.490173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453873, 40.710964, 39.567154>,  <34.351700, 40.498768, 39.613342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453873, 40.710964, 39.567154>,  <34.624165, 41.064625, 39.490173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453873, 40.710964, 39.567154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443926, 0.389415, 0.807023,
		-0.788471, 0.258138, -0.558282,
		-0.425727, -0.884150, 0.192448,
		34.326153, 40.445721, 39.624889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983376, 41.246185, 39.757141>,  <34.624165, 41.064625, 39.490173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983376, 41.246185, 39.757141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.027203, 40.870750, 39.888012>,  <34.053497, 40.645489, 39.966534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.027203, 40.870750, 39.888012>,  <33.983376, 41.246185, 39.757141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027203, 40.870750, 39.888012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170239, 0.306579, 0.936498,
		-0.979292, -0.158308, -0.126193,
		0.109566, -0.938588, 0.327181,
		34.060074, 40.589172, 39.986168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379589, 41.106205, 40.136711>,  <33.983376, 41.246185, 39.757141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379589, 41.106205, 40.136711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657249, 40.847382, 40.262875>,  <33.823845, 40.692089, 40.338573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657249, 40.847382, 40.262875>,  <33.379589, 41.106205, 40.136711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657249, 40.847382, 40.262875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163443, 0.285044, 0.944477,
		-0.701032, -0.707157, 0.092106,
		0.694147, -0.647055, 0.315405,
		33.865494, 40.653267, 40.357494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086517, 40.715698, 40.678856>,  <33.379589, 41.106205, 40.136711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086517, 40.715698, 40.678856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472858, 40.660812, 40.766758>,  <33.704662, 40.627880, 40.819500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472858, 40.660812, 40.766758>,  <33.086517, 40.715698, 40.678856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472858, 40.660812, 40.766758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189467, 0.204401, 0.960376,
		-0.176699, -0.969222, 0.171424,
		0.965857, -0.137218, 0.219753,
		33.762615, 40.619648, 40.832684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098030, 40.287388, 41.335190>,  <33.086517, 40.715698, 40.678856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098030, 40.287388, 41.335190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.454662, 40.464890, 41.299030>,  <33.668640, 40.571392, 41.277336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.454662, 40.464890, 41.299030>,  <33.098030, 40.287388, 41.335190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454662, 40.464890, 41.299030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029024, 0.143203, 0.989268,
		0.451937, -0.884632, 0.114796,
		0.891577, 0.443755, -0.090395,
		33.722137, 40.598015, 41.271912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598488, 39.966274, 41.783939>,  <33.098030, 40.287388, 41.335190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598488, 39.966274, 41.783939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711102, 40.342857, 41.709763>,  <33.778671, 40.568810, 41.665257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711102, 40.342857, 41.709763>,  <33.598488, 39.966274, 41.783939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711102, 40.342857, 41.709763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080710, 0.169338, 0.982248,
		0.956150, -0.291506, -0.028310,
		0.281537, 0.941461, -0.185440,
		33.795563, 40.625298, 41.654129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039265, 40.067600, 42.334442>,  <33.598488, 39.966274, 41.783939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039265, 40.067600, 42.334442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005363, 40.433331, 42.176037>,  <33.985023, 40.652767, 42.080994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005363, 40.433331, 42.176037>,  <34.039265, 40.067600, 42.334442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005363, 40.433331, 42.176037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014087, 0.398504, 0.917058,
		0.996302, 0.072145, -0.046654,
		-0.084753, 0.914325, -0.396015,
		33.979939, 40.707626, 42.057232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597862, 40.569973, 42.477901>,  <34.039265, 40.067600, 42.334442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597862, 40.569973, 42.477901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252136, 40.764820, 42.427826>,  <34.044701, 40.881729, 42.397781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252136, 40.764820, 42.427826>,  <34.597862, 40.569973, 42.477901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252136, 40.764820, 42.427826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082043, 0.382130, 0.920459,
		0.496207, 0.785300, -0.370247,
		-0.864319, 0.487115, -0.125187,
		33.992840, 40.910954, 42.390270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731647, 41.239754, 42.797516>,  <34.597862, 40.569973, 42.477901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731647, 41.239754, 42.797516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332767, 41.226116, 42.770901>,  <34.093441, 41.217934, 42.754932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332767, 41.226116, 42.770901>,  <34.731647, 41.239754, 42.797516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332767, 41.226116, 42.770901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074340, 0.357873, 0.930806,
		-0.007922, 0.933148, -0.359406,
		-0.997202, -0.034092, -0.066535,
		34.033607, 41.215889, 42.750938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305733, 41.838600, 42.810688>,  <34.731647, 41.239754, 42.797516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305733, 41.838600, 42.810688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.598045, 41.789001, 43.079193>,  <35.773434, 41.759243, 43.240295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.598045, 41.789001, 43.079193>,  <35.305733, 41.838600, 42.810688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598045, 41.789001, 43.079193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625545, -0.271974, -0.731248,
		0.273234, 0.954283, -0.121190,
		0.730778, -0.123992, 0.671259,
		35.817280, 41.751804, 43.280571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923061, 42.035034, 42.499287>,  <35.305733, 41.838600, 42.810688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923061, 42.035034, 42.499287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.049274, 41.785450, 42.785255>,  <36.125004, 41.635700, 42.956837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.049274, 41.785450, 42.785255>,  <35.923061, 42.035034, 42.499287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049274, 41.785450, 42.785255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774042, -0.266570, -0.574281,
		0.548905, 0.734585, 0.398859,
		0.315535, -0.623959, 0.714921,
		36.143936, 41.598263, 42.999733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681683, 42.183182, 42.564548>,  <35.923061, 42.035034, 42.499287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681683, 42.183182, 42.564548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.579025, 41.818325, 42.692379>,  <36.517429, 41.599411, 42.769077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.579025, 41.818325, 42.692379>,  <36.681683, 42.183182, 42.564548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579025, 41.818325, 42.692379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713245, -0.401882, -0.574259,
		0.652238, 0.080558, 0.753721,
		-0.256646, -0.912141, 0.319580,
		36.502033, 41.544682, 42.788254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371063, 41.828438, 42.783932>,  <36.681683, 42.183182, 42.564548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371063, 41.828438, 42.783932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111073, 41.524479, 42.780197>,  <36.955078, 41.342102, 42.777958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111073, 41.524479, 42.780197>,  <37.371063, 41.828438, 42.783932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111073, 41.524479, 42.780197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636039, -0.537227, -0.553932,
		0.415915, -0.365982, 0.832509,
		-0.649976, -0.759898, -0.009337,
		36.916080, 41.296509, 42.777397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732468, 41.180912, 43.009064>,  <37.371063, 41.828438, 42.783932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732468, 41.180912, 43.009064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400753, 41.089371, 42.805138>,  <37.201725, 41.034447, 42.682781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400753, 41.089371, 42.805138>,  <37.732468, 41.180912, 43.009064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400753, 41.089371, 42.805138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547815, -0.513129, -0.660755,
		-0.110384, -0.827239, 0.550901,
		-0.829285, -0.228855, -0.509815,
		37.151966, 41.020714, 42.652191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841171, 40.469673, 42.972672>,  <37.732468, 41.180912, 43.009064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841171, 40.469673, 42.972672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.606461, 40.590908, 42.672318>,  <37.465633, 40.663651, 42.492104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.606461, 40.590908, 42.672318>,  <37.841171, 40.469673, 42.972672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606461, 40.590908, 42.672318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461739, -0.636535, -0.617754,
		-0.665197, -0.709199, 0.233559,
		-0.586779, 0.303085, -0.750886,
		37.430428, 40.681835, 42.447052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646416, 39.835789, 42.612339>,  <37.841171, 40.469673, 42.972672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646416, 39.835789, 42.612339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.571758, 40.134724, 42.357262>,  <37.526962, 40.314083, 42.204216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.571758, 40.134724, 42.357262>,  <37.646416, 39.835789, 42.612339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571758, 40.134724, 42.357262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361523, -0.551306, -0.751906,
		-0.913490, -0.370882, -0.167279,
		-0.186647, 0.747334, -0.637695,
		37.515762, 40.358925, 42.165955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410378, 39.519211, 42.053398>,  <37.646416, 39.835789, 42.612339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410378, 39.519211, 42.053398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485920, 39.874157, 41.885151>,  <37.531246, 40.087124, 41.784203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485920, 39.874157, 41.885151>,  <37.410378, 39.519211, 42.053398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485920, 39.874157, 41.885151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264562, -0.458469, -0.848418,
		-0.945695, 0.048949, -0.321348,
		0.188857, 0.887361, -0.420622,
		37.542576, 40.140366, 41.758965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135620, 39.455509, 41.464893>,  <37.410378, 39.519211, 42.053398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135620, 39.455509, 41.464893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.395874, 39.757637, 41.433472>,  <37.552025, 39.938911, 41.414619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.395874, 39.757637, 41.433472>,  <37.135620, 39.455509, 41.464893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395874, 39.757637, 41.433472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408489, -0.435308, -0.802274,
		-0.640165, 0.489900, -0.591765,
		0.650634, 0.755318, -0.078550,
		37.591064, 39.984234, 41.409908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177765, 39.669071, 40.800762>,  <37.135620, 39.455509, 41.464893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177765, 39.669071, 40.800762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.536930, 39.804214, 40.913624>,  <37.752430, 39.885300, 40.981339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.536930, 39.804214, 40.913624>,  <37.177765, 39.669071, 40.800762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536930, 39.804214, 40.913624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417077, -0.448083, -0.790739,
		-0.140733, 0.827691, -0.543252,
		0.897909, 0.337861, 0.282151,
		37.806301, 39.905571, 40.998268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507011, 39.915035, 40.197701>,  <37.177765, 39.669071, 40.800762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507011, 39.915035, 40.197701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812588, 39.858154, 40.449471>,  <37.995934, 39.824024, 40.600533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812588, 39.858154, 40.449471>,  <37.507011, 39.915035, 40.197701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812588, 39.858154, 40.449471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537814, -0.398701, -0.742828,
		0.356584, 0.905989, -0.228105,
		0.763940, -0.142203, 0.629424,
		38.041771, 39.815495, 40.638298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030697, 40.097874, 39.802319>,  <37.507011, 39.915035, 40.197701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030697, 40.097874, 39.802319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175739, 39.888241, 40.110565>,  <38.262764, 39.762463, 40.295513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175739, 39.888241, 40.110565>,  <38.030697, 40.097874, 39.802319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175739, 39.888241, 40.110565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736619, -0.345363, -0.581478,
		0.570887, 0.778499, 0.260820,
		0.362602, -0.524083, 0.770621,
		38.284519, 39.731014, 40.341751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750259, 40.245731, 39.839523>,  <38.030697, 40.097874, 39.802319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750259, 40.245731, 39.839523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.658012, 39.883213, 39.981194>,  <38.602665, 39.665703, 40.066196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.658012, 39.883213, 39.981194>,  <38.750259, 40.245731, 39.839523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658012, 39.883213, 39.981194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581801, -0.420191, -0.696381,
		0.779950, 0.045464, 0.624188,
		-0.230618, -0.906296, 0.354180,
		38.588825, 39.611324, 40.087448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475334, 39.904007, 40.025692>,  <38.750259, 40.245731, 39.839523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475334, 39.904007, 40.025692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184654, 39.631683, 39.989025>,  <39.010246, 39.468288, 39.967026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184654, 39.631683, 39.989025>,  <39.475334, 39.904007, 40.025692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184654, 39.631683, 39.989025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607271, -0.574287, -0.549014,
		0.321130, -0.454637, 0.830771,
		-0.726703, -0.680809, -0.091667,
		38.966644, 39.427441, 39.961525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.481249, 37.848434, 26.092173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096228, 37.777271, 26.010351>,  <27.865215, 37.734573, 25.961258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096228, 37.777271, 26.010351>,  <28.481249, 37.848434, 26.092173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096228, 37.777271, 26.010351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223034, 0.090764, 0.970576,
		-0.154108, 0.979852, -0.127044,
		-0.962552, -0.177909, -0.204553,
		27.807463, 37.723900, 25.948986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084135, 38.394302, 26.458664>,  <28.481249, 37.848434, 26.092173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084135, 38.394302, 26.458664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885406, 38.051575, 26.403473>,  <27.766169, 37.845940, 26.370359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885406, 38.051575, 26.403473>,  <28.084135, 38.394302, 26.458664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885406, 38.051575, 26.403473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218768, -0.030206, 0.975309,
		-0.839827, 0.514739, -0.172436,
		-0.496821, -0.856815, -0.137976,
		27.736361, 37.794529, 26.362080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595573, 38.435398, 26.953810>,  <28.084135, 38.394302, 26.458664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595573, 38.435398, 26.953810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557386, 38.056850, 26.830345>,  <27.534473, 37.829723, 26.756268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557386, 38.056850, 26.830345>,  <27.595573, 38.435398, 26.953810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557386, 38.056850, 26.830345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106096, -0.298637, 0.948452,
		-0.989762, 0.123296, -0.071895,
		-0.095470, -0.946369, -0.308660,
		27.528746, 37.772942, 26.737747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986635, 38.093822, 27.147549>,  <27.595573, 38.435398, 26.953810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986635, 38.093822, 27.147549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208069, 37.767109, 27.082544>,  <27.340929, 37.571079, 27.043543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208069, 37.767109, 27.082544>,  <26.986635, 38.093822, 27.147549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208069, 37.767109, 27.082544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301400, -0.378408, 0.875195,
		-0.776340, -0.435512, -0.455659,
		0.553582, -0.816785, -0.162510,
		27.374144, 37.522072, 27.033791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547472, 37.473381, 27.183445>,  <26.986635, 38.093822, 27.147549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547472, 37.473381, 27.183445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912653, 37.330574, 27.262497>,  <27.131762, 37.244888, 27.309929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912653, 37.330574, 27.262497>,  <26.547472, 37.473381, 27.183445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912653, 37.330574, 27.262497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370782, -0.523512, 0.767109,
		-0.170410, -0.773611, -0.610317,
		0.912952, -0.357018, 0.197630,
		27.186539, 37.223469, 27.321785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482357, 36.764687, 27.350712>,  <26.547472, 37.473381, 27.183445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482357, 36.764687, 27.350712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843307, 36.856857, 27.496382>,  <27.059877, 36.912159, 27.583784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843307, 36.856857, 27.496382>,  <26.482357, 36.764687, 27.350712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843307, 36.856857, 27.496382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264929, -0.369886, 0.890504,
		0.339899, -0.900048, -0.272728,
		0.902375, 0.230428, 0.364173,
		27.114019, 36.925987, 27.605633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819599, 36.107662, 27.725363>,  <26.482357, 36.764687, 27.350712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819599, 36.107662, 27.725363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024094, 36.408005, 27.892626>,  <27.146790, 36.588211, 27.992983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024094, 36.408005, 27.892626>,  <26.819599, 36.107662, 27.725363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024094, 36.408005, 27.892626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211556, -0.361633, 0.908001,
		0.832996, -0.552666, -0.026032,
		0.511235, 0.750854, 0.418158,
		27.177464, 36.633263, 28.018074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219501, 35.797279, 28.235617>,  <26.819599, 36.107662, 27.725363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219501, 35.797279, 28.235617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.191315, 36.179539, 28.350000>,  <27.174402, 36.408894, 28.418631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.191315, 36.179539, 28.350000>,  <27.219501, 35.797279, 28.235617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191315, 36.179539, 28.350000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061116, -0.281999, 0.957466,
		0.995640, 0.084946, -0.038534,
		-0.070467, 0.955647, 0.285961,
		27.170176, 36.466232, 28.435789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732878, 35.856876, 28.684240>,  <27.219501, 35.797279, 28.235617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732878, 35.856876, 28.684240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489679, 36.161671, 28.773432>,  <27.343760, 36.344547, 28.826946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489679, 36.161671, 28.773432>,  <27.732878, 35.856876, 28.684240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489679, 36.161671, 28.773432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049445, -0.243965, 0.968523,
		0.792399, 0.599883, 0.110653,
		-0.607995, 0.761986, 0.222979,
		27.307281, 36.390266, 28.840326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928604, 35.999245, 29.311396>,  <27.732878, 35.856876, 28.684240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928604, 35.999245, 29.311396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585888, 36.205055, 29.297661>,  <27.380259, 36.328541, 29.289419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585888, 36.205055, 29.297661>,  <27.928604, 35.999245, 29.311396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585888, 36.205055, 29.297661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060136, -0.033560, 0.997626,
		0.512150, 0.856819, 0.059695,
		-0.856788, 0.514524, -0.034338,
		27.328852, 36.359413, 29.287359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002348, 36.555893, 29.711720>,  <27.928604, 35.999245, 29.311396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002348, 36.555893, 29.711720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.607048, 36.494774, 29.710379>,  <27.369867, 36.458103, 29.709574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.607048, 36.494774, 29.710379>,  <28.002348, 36.555893, 29.711720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607048, 36.494774, 29.710379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005645, 0.014584, 0.999878,
		-0.152733, 0.988149, -0.015275,
		-0.988251, -0.152800, -0.003350,
		27.310572, 36.448933, 29.709373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790949, 36.744476, 30.333263>,  <28.002348, 36.555893, 29.711720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790949, 36.744476, 30.333263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456715, 36.556065, 30.220179>,  <27.256174, 36.443016, 30.152328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456715, 36.556065, 30.220179>,  <27.790949, 36.744476, 30.333263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456715, 36.556065, 30.220179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317211, -0.006466, 0.948333,
		-0.448520, 0.882094, -0.144012,
		-0.835588, -0.471029, -0.282710,
		27.206038, 36.414757, 30.135366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169064, 37.148201, 30.571136>,  <27.790949, 36.744476, 30.333263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169064, 37.148201, 30.571136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.042034, 36.775845, 30.498926>,  <26.965816, 36.552429, 30.455601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.042034, 36.775845, 30.498926>,  <27.169064, 37.148201, 30.571136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042034, 36.775845, 30.498926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287919, -0.086729, 0.953719,
		-0.903466, 0.354851, -0.240478,
		-0.317572, -0.930891, -0.180525,
		26.946762, 36.496578, 30.444769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497049, 37.193497, 30.883175>,  <27.169064, 37.148201, 30.571136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497049, 37.193497, 30.883175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614235, 36.811779, 30.859499>,  <26.684546, 36.582748, 30.845293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614235, 36.811779, 30.859499>,  <26.497049, 37.193497, 30.883175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614235, 36.811779, 30.859499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168999, -0.112612, 0.979162,
		-0.941069, -0.276857, -0.194265,
		0.292964, -0.954290, -0.059188,
		26.702124, 36.525494, 30.841743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031204, 36.846714, 31.233896>,  <26.497049, 37.193497, 30.883175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031204, 36.846714, 31.233896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329584, 36.580315, 31.233419>,  <26.508612, 36.420475, 31.233133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329584, 36.580315, 31.233419>,  <26.031204, 36.846714, 31.233896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329584, 36.580315, 31.233419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203110, -0.229194, 0.951954,
		-0.634276, -0.709868, -0.306239,
		0.745949, -0.666002, -0.001190,
		26.553370, 36.380516, 31.233063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742910, 36.236214, 31.508791>,  <26.031204, 36.846714, 31.233896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742910, 36.236214, 31.508791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138773, 36.209862, 31.559767>,  <26.376291, 36.194050, 31.590353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138773, 36.209862, 31.559767>,  <25.742910, 36.236214, 31.508791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138773, 36.209862, 31.559767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142904, -0.374545, 0.916130,
		-0.012619, -0.924865, -0.380085,
		0.989656, -0.065877, 0.127441,
		26.435669, 36.190098, 31.598000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946943, 35.450459, 31.697805>,  <25.742910, 36.236214, 31.508791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946943, 35.450459, 31.697805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227501, 35.699047, 31.837414>,  <26.395836, 35.848202, 31.921179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227501, 35.699047, 31.837414>,  <25.946943, 35.450459, 31.697805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227501, 35.699047, 31.837414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071885, -0.425493, 0.902102,
		0.709140, -0.657818, -0.253763,
		0.701394, 0.621475, 0.349021,
		26.437920, 35.885490, 31.942120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530987, 35.087704, 32.038635>,  <25.946943, 35.450459, 31.697805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530987, 35.087704, 32.038635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.498314, 35.451862, 32.200871>,  <26.478710, 35.670357, 32.298210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.498314, 35.451862, 32.200871>,  <26.530987, 35.087704, 32.038635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498314, 35.451862, 32.200871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013760, -0.405880, 0.913823,
		0.996563, 0.080226, 0.020626,
		-0.081684, 0.910399, 0.405589,
		26.473808, 35.724983, 32.322548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094969, 35.241447, 32.520584>,  <26.530987, 35.087704, 32.038635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094969, 35.241447, 32.520584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725964, 35.380497, 32.587669>,  <26.504560, 35.463928, 32.627918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725964, 35.380497, 32.587669>,  <27.094969, 35.241447, 32.520584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725964, 35.380497, 32.587669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069409, -0.576859, 0.813890,
		0.379672, 0.739184, 0.556288,
		-0.922514, 0.347622, 0.167711,
		26.449209, 35.484783, 32.637981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497931, 34.952827, 33.085316>,  <27.094969, 35.241447, 32.520584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497931, 34.952827, 33.085316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880219, 34.836720, 33.065933>,  <28.109591, 34.767056, 33.054306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880219, 34.836720, 33.065933>,  <27.497931, 34.952827, 33.085316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880219, 34.836720, 33.065933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143375, 0.603056, -0.784708,
		0.256997, 0.743012, 0.617969,
		0.955718, -0.290269, -0.048454,
		28.166933, 34.749638, 33.051395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894089, 35.537132, 32.915306>,  <27.497931, 34.952827, 33.085316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894089, 35.537132, 32.915306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176708, 35.259308, 32.861084>,  <28.346281, 35.092613, 32.828548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176708, 35.259308, 32.861084>,  <27.894089, 35.537132, 32.915306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176708, 35.259308, 32.861084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447384, 0.586829, -0.674892,
		0.548301, 0.416198, 0.725359,
		0.706550, -0.694558, -0.135559,
		28.388674, 35.050941, 32.820415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560604, 35.944283, 32.955120>,  <27.894089, 35.537132, 32.915306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560604, 35.944283, 32.955120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668594, 35.600693, 32.781101>,  <28.733389, 35.394539, 32.676689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668594, 35.600693, 32.781101>,  <28.560604, 35.944283, 32.955120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668594, 35.600693, 32.781101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641535, 0.497400, -0.583975,
		0.718016, -0.121443, 0.685350,
		0.269973, -0.858979, -0.435051,
		28.749586, 35.342999, 32.650585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328400, 35.866489, 32.927578>,  <28.560604, 35.944283, 32.955120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328400, 35.866489, 32.927578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178200, 35.639717, 32.634296>,  <29.088079, 35.503654, 32.458328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178200, 35.639717, 32.634296>,  <29.328400, 35.866489, 32.927578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178200, 35.639717, 32.634296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826454, 0.153245, -0.541747,
		0.419492, -0.809388, 0.410996,
		-0.375501, -0.566928, -0.733207,
		29.065550, 35.469639, 32.414333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970613, 35.650036, 32.669945>,  <29.328400, 35.866489, 32.927578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970613, 35.650036, 32.669945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690832, 35.538639, 32.406673>,  <29.522963, 35.471802, 32.248711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690832, 35.538639, 32.406673>,  <29.970613, 35.650036, 32.669945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690832, 35.538639, 32.406673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714567, -0.256450, -0.650866,
		0.012472, -0.925567, 0.378379,
		-0.699455, -0.278495, -0.658181,
		29.480995, 35.455090, 32.209221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248074, 35.052780, 32.363930>,  <29.970613, 35.650036, 32.669945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248074, 35.052780, 32.363930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997963, 35.256001, 32.126976>,  <29.847897, 35.377934, 31.984804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997963, 35.256001, 32.126976>,  <30.248074, 35.052780, 32.363930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997963, 35.256001, 32.126976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691500, 0.008835, -0.722322,
		-0.361740, -0.861284, -0.356840,
		-0.625277, 0.508047, -0.592382,
		29.810379, 35.408413, 31.949261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190556, 34.665405, 31.759361>,  <30.248074, 35.052780, 32.363930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190556, 34.665405, 31.759361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.093327, 35.037876, 31.650673>,  <30.034988, 35.261356, 31.585461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.093327, 35.037876, 31.650673>,  <30.190556, 34.665405, 31.759361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093327, 35.037876, 31.650673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646951, -0.053089, -0.760681,
		-0.722751, -0.360692, -0.589519,
		-0.243075, 0.931173, -0.271720,
		30.020405, 35.317226, 31.569157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212755, 34.687553, 30.981897>,  <30.190556, 34.665405, 31.759361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212755, 34.687553, 30.981897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198441, 35.078732, 31.064215>,  <30.189852, 35.313438, 31.113605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198441, 35.078732, 31.064215>,  <30.212755, 34.687553, 30.981897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198441, 35.078732, 31.064215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353258, 0.205011, -0.912786,
		-0.934841, 0.040031, -0.352803,
		-0.035789, 0.977941, 0.205794,
		30.187704, 35.372112, 31.125954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719271, 35.088158, 30.537910>,  <30.212755, 34.687553, 30.981897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719271, 35.088158, 30.537910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965343, 35.381294, 30.654182>,  <30.112988, 35.557175, 30.723946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965343, 35.381294, 30.654182>,  <29.719271, 35.088158, 30.537910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965343, 35.381294, 30.654182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116990, 0.279764, -0.952914,
		-0.779657, 0.620222, 0.086370,
		0.615182, 0.732842, 0.290679,
		30.149899, 35.601147, 30.741386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509304, 35.826359, 30.132643>,  <29.719271, 35.088158, 30.537910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509304, 35.826359, 30.132643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.878531, 35.873070, 30.279240>,  <30.100065, 35.901096, 30.367197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.878531, 35.873070, 30.279240>,  <29.509304, 35.826359, 30.132643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878531, 35.873070, 30.279240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232474, 0.589714, -0.773430,
		-0.306445, 0.799125, 0.517196,
		0.923064, 0.116779, 0.366491,
		30.155449, 35.908104, 30.389187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742054, 36.489395, 30.026541>,  <29.509304, 35.826359, 30.132643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742054, 36.489395, 30.026541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077400, 36.274685, 30.064522>,  <30.278608, 36.145859, 30.087311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077400, 36.274685, 30.064522>,  <29.742054, 36.489395, 30.026541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077400, 36.274685, 30.064522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351660, 0.399485, -0.846609,
		0.416505, 0.743160, 0.523677,
		0.838367, -0.536773, 0.094952,
		30.328911, 36.113651, 30.093008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234720, 37.072727, 30.006546>,  <29.742054, 36.489395, 30.026541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234720, 37.072727, 30.006546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.412201, 36.730450, 29.900026>,  <30.518690, 36.525082, 29.836115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.412201, 36.730450, 29.900026>,  <30.234720, 37.072727, 30.006546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412201, 36.730450, 29.900026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353660, 0.440226, -0.825303,
		0.823439, 0.272011, 0.497955,
		0.443704, -0.855693, -0.266300,
		30.545313, 36.473743, 29.820137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885885, 37.271996, 29.770885>,  <30.234720, 37.072727, 30.006546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885885, 37.271996, 29.770885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.838589, 36.903942, 29.621559>,  <30.810211, 36.683109, 29.531963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.838589, 36.903942, 29.621559>,  <30.885885, 37.271996, 29.770885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838589, 36.903942, 29.621559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256936, 0.334799, -0.906583,
		0.959168, -0.203116, 0.196829,
		-0.118243, -0.920138, -0.373316,
		30.803116, 36.627899, 29.509565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435249, 37.206223, 29.268576>,  <30.885885, 37.271996, 29.770885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435249, 37.206223, 29.268576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148983, 36.945213, 29.168951>,  <30.977222, 36.788609, 29.109177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148983, 36.945213, 29.168951>,  <31.435249, 37.206223, 29.268576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148983, 36.945213, 29.168951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165843, 0.187632, -0.968137,
		0.678467, -0.734169, -0.026065,
		-0.715667, -0.652526, -0.249059,
		30.934282, 36.749454, 29.094233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667227, 36.926407, 28.609303>,  <31.435249, 37.206223, 29.268576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667227, 36.926407, 28.609303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.275715, 36.844528, 28.613104>,  <31.040808, 36.795403, 28.615385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.275715, 36.844528, 28.613104>,  <31.667227, 36.926407, 28.609303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275715, 36.844528, 28.613104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052756, 0.206894, -0.976940,
		0.197973, -0.956718, -0.213303,
		-0.978787, -0.204660, 0.009513,
		30.982080, 36.783119, 28.615955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513149, 36.635513, 27.957462>,  <31.667227, 36.926407, 28.609303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513149, 36.635513, 27.957462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148375, 36.742554, 28.081888>,  <30.929510, 36.806778, 28.156544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148375, 36.742554, 28.081888>,  <31.513149, 36.635513, 27.957462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148375, 36.742554, 28.081888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275376, 0.162884, -0.947437,
		-0.304199, -0.949663, -0.074850,
		-0.911938, 0.267597, 0.311064,
		30.874794, 36.822834, 28.175207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976351, 36.211452, 27.556023>,  <31.513149, 36.635513, 27.957462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976351, 36.211452, 27.556023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.819010, 36.559227, 27.675589>,  <30.724606, 36.767891, 27.747328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.819010, 36.559227, 27.675589>,  <30.976351, 36.211452, 27.556023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819010, 36.559227, 27.675589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374079, 0.145642, -0.915889,
		-0.839846, -0.472082, 0.267951,
		-0.393350, 0.869441, 0.298913,
		30.701004, 36.820061, 27.765263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367954, 36.294430, 27.239880>,  <30.976351, 36.211452, 27.556023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367954, 36.294430, 27.239880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.404211, 36.674839, 27.358091>,  <30.425966, 36.903084, 27.429018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.404211, 36.674839, 27.358091>,  <30.367954, 36.294430, 27.239880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404211, 36.674839, 27.358091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549126, 0.295292, -0.781833,
		-0.830810, -0.091414, 0.548998,
		0.090644, 0.951024, 0.295529,
		30.431404, 36.960148, 27.446751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792822, 36.555973, 26.900852>,  <30.367954, 36.294430, 27.239880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792822, 36.555973, 26.900852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.001751, 36.876705, 27.016951>,  <30.127110, 37.069145, 27.086609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.001751, 36.876705, 27.016951>,  <29.792822, 36.555973, 26.900852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001751, 36.876705, 27.016951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275080, 0.480601, -0.832678,
		-0.807160, 0.355088, 0.471598,
		0.522325, 0.801832, 0.290245,
		30.158449, 37.117256, 27.104025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346930, 37.188328, 27.095402>,  <29.792822, 36.555973, 26.900852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346930, 37.188328, 27.095402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697481, 37.332119, 26.967194>,  <29.907812, 37.418392, 26.890268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697481, 37.332119, 26.967194>,  <29.346930, 37.188328, 27.095402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697481, 37.332119, 26.967194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473565, 0.521967, -0.709428,
		-0.087723, 0.773515, 0.627677,
		0.876380, 0.359479, -0.320521,
		29.960396, 37.439964, 26.871037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139769, 37.823597, 26.876579>,  <29.346930, 37.188328, 27.095402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139769, 37.823597, 26.876579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503733, 37.781185, 26.716171>,  <29.722111, 37.755737, 26.619926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503733, 37.781185, 26.716171>,  <29.139769, 37.823597, 26.876579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503733, 37.781185, 26.716171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292940, 0.520214, -0.802224,
		0.293678, 0.847428, 0.442288,
		0.909912, -0.106031, -0.401021,
		29.776707, 37.749374, 26.595865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289364, 38.503666, 26.685528>,  <29.139769, 37.823597, 26.876579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289364, 38.503666, 26.685528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542519, 38.258358, 26.496489>,  <29.694410, 38.111172, 26.383064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542519, 38.258358, 26.496489>,  <29.289364, 38.503666, 26.685528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542519, 38.258358, 26.496489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057033, 0.571815, -0.818397,
		0.772141, 0.544906, 0.326917,
		0.632886, -0.613274, -0.472600,
		29.732384, 38.074375, 26.354708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896397, 38.946747, 26.540136>,  <29.289364, 38.503666, 26.685528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896397, 38.946747, 26.540136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857595, 38.646500, 26.278708>,  <29.834314, 38.466351, 26.121851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857595, 38.646500, 26.278708>,  <29.896397, 38.946747, 26.540136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857595, 38.646500, 26.278708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071192, 0.660220, -0.747690,
		0.992735, -0.025998, -0.117481,
		-0.097002, -0.750622, -0.653573,
		29.828495, 38.421314, 26.082636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.022484, 39.610649, 44.932667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774044, 39.352962, 45.111198>,  <35.624981, 39.198349, 45.218319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774044, 39.352962, 45.111198>,  <36.022484, 39.610649, 44.932667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774044, 39.352962, 45.111198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145361, 0.654308, 0.742127,
		-0.770132, 0.396057, -0.500036,
		-0.621101, -0.644221, 0.446332,
		35.587715, 39.159695, 45.245098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556118, 40.018696, 45.375092>,  <36.022484, 39.610649, 44.932667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556118, 40.018696, 45.375092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511509, 39.656410, 45.538677>,  <35.484745, 39.439041, 45.636829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511509, 39.656410, 45.538677>,  <35.556118, 40.018696, 45.375092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511509, 39.656410, 45.538677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220914, 0.423829, 0.878388,
		-0.968896, 0.007616, -0.247352,
		-0.111524, -0.905710, 0.408964,
		35.478050, 39.384697, 45.661366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974754, 40.063175, 45.816036>,  <35.556118, 40.018696, 45.375092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974754, 40.063175, 45.816036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151951, 39.738564, 45.968445>,  <35.258266, 39.543797, 46.059891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151951, 39.738564, 45.968445>,  <34.974754, 40.063175, 45.816036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151951, 39.738564, 45.968445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327465, 0.249169, 0.911417,
		-0.834583, -0.528518, -0.155370,
		0.442987, -0.811532, 0.381024,
		35.284847, 39.495106, 46.082752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509254, 39.810558, 46.339161>,  <34.974754, 40.063175, 45.816036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509254, 39.810558, 46.339161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857273, 39.643921, 46.444584>,  <35.066086, 39.543938, 46.507839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857273, 39.643921, 46.444584>,  <34.509254, 39.810558, 46.339161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857273, 39.643921, 46.444584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146026, 0.292849, 0.944942,
		-0.470843, -0.860632, 0.193959,
		0.870048, -0.416596, 0.263560,
		35.118286, 39.518944, 46.523651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419571, 39.495880, 47.011986>,  <34.509254, 39.810558, 46.339161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419571, 39.495880, 47.011986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809937, 39.564655, 46.958263>,  <35.044155, 39.605919, 46.926029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809937, 39.564655, 46.958263>,  <34.419571, 39.495880, 47.011986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809937, 39.564655, 46.958263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035886, 0.480693, 0.876154,
		0.215198, -0.859868, 0.462944,
		0.975911, 0.171934, -0.134301,
		35.102711, 39.616234, 46.917973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713062, 39.348484, 47.717197>,  <34.419571, 39.495880, 47.011986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713062, 39.348484, 47.717197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995331, 39.560799, 47.529457>,  <35.164692, 39.688187, 47.416813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995331, 39.560799, 47.529457>,  <34.713062, 39.348484, 47.717197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995331, 39.560799, 47.529457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118481, 0.564700, 0.816748,
		0.698566, -0.631963, 0.335602,
		0.705668, 0.530789, -0.469355,
		35.207031, 39.720036, 47.388649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190998, 39.366322, 48.236668>,  <34.713062, 39.348484, 47.717197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190998, 39.366322, 48.236668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230446, 39.665436, 47.974037>,  <35.254112, 39.844906, 47.816460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230446, 39.665436, 47.974037>,  <35.190998, 39.366322, 48.236668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230446, 39.665436, 47.974037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025134, 0.661450, 0.749568,
		0.994808, -0.057417, 0.084025,
		0.098617, 0.747788, -0.656573,
		35.260033, 39.889771, 47.777065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620895, 39.793514, 48.571281>,  <35.190998, 39.366322, 48.236668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620895, 39.793514, 48.571281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434532, 40.017445, 48.297195>,  <35.322716, 40.151802, 48.132744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434532, 40.017445, 48.297195>,  <35.620895, 39.793514, 48.571281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434532, 40.017445, 48.297195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055930, 0.754218, 0.654238,
		0.883063, 0.343139, -0.320086,
		-0.465909, 0.559830, -0.685214,
		35.294758, 40.185394, 48.091633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074852, 40.334061, 48.424427>,  <35.620895, 39.793514, 48.571281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074852, 40.334061, 48.424427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691593, 40.420406, 48.349220>,  <35.461636, 40.472214, 48.304096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691593, 40.420406, 48.349220>,  <36.074852, 40.334061, 48.424427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691593, 40.420406, 48.349220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005499, 0.670553, 0.741841,
		0.286209, 0.709762, -0.643678,
		-0.958151, 0.215861, -0.188015,
		35.404148, 40.485165, 48.292816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958885, 40.843033, 48.789932>,  <36.074852, 40.334061, 48.424427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958885, 40.843033, 48.789932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572567, 40.851067, 48.686516>,  <35.340778, 40.855885, 48.624466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572567, 40.851067, 48.686516>,  <35.958885, 40.843033, 48.789932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572567, 40.851067, 48.686516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183604, 0.651114, 0.736438,
		0.183128, 0.758715, -0.625153,
		-0.965792, 0.020081, -0.258540,
		35.282829, 40.857090, 48.608955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788239, 41.492844, 48.652431>,  <35.958885, 40.843033, 48.789932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788239, 41.492844, 48.652431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458126, 41.295853, 48.762974>,  <35.260059, 41.177658, 48.829300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458126, 41.295853, 48.762974>,  <35.788239, 41.492844, 48.652431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458126, 41.295853, 48.762974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109590, 0.619739, 0.777119,
		-0.553983, 0.611057, -0.565431,
		-0.825284, -0.492476, 0.276359,
		35.210541, 41.148109, 48.845882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369812, 42.047348, 48.929218>,  <35.788239, 41.492844, 48.652431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369812, 42.047348, 48.929218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224068, 41.702106, 49.069096>,  <35.136620, 41.494961, 49.153023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224068, 41.702106, 49.069096>,  <35.369812, 42.047348, 48.929218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224068, 41.702106, 49.069096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157563, 0.427227, 0.890310,
		-0.917830, 0.269299, -0.291661,
		-0.364365, -0.863108, 0.349690,
		35.114758, 41.443172, 49.174004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931889, 42.221992, 49.558838>,  <35.369812, 42.047348, 48.929218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931889, 42.221992, 49.558838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087173, 41.853722, 49.575096>,  <35.180344, 41.632759, 49.584850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087173, 41.853722, 49.575096>,  <34.931889, 42.221992, 49.558838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087173, 41.853722, 49.575096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117690, 0.093273, 0.988660,
		-0.914024, -0.379026, 0.144564,
		0.388212, -0.920673, 0.040646,
		35.203636, 41.577518, 49.587292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846718, 42.951744, 49.330482>,  <34.931889, 42.221992, 49.558838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846718, 42.951744, 49.330482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556709, 43.056496, 49.075687>,  <34.382702, 43.119347, 48.922810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556709, 43.056496, 49.075687>,  <34.846718, 42.951744, 49.330482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556709, 43.056496, 49.075687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670519, 0.057164, -0.739687,
		-0.157296, -0.963406, -0.217041,
		-0.725026, 0.261879, -0.636990,
		34.339203, 43.135059, 48.884590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800785, 42.538769, 48.636436>,  <34.846718, 42.951744, 49.330482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800785, 42.538769, 48.636436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602264, 42.862919, 48.511875>,  <34.483150, 43.057411, 48.437138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602264, 42.862919, 48.511875>,  <34.800785, 42.538769, 48.636436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602264, 42.862919, 48.511875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434517, -0.078664, -0.897222,
		-0.751584, -0.580604, -0.313082,
		-0.496302, 0.810377, -0.311405,
		34.453373, 43.106033, 48.418453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483368, 42.323380, 48.099495>,  <34.800785, 42.538769, 48.636436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483368, 42.323380, 48.099495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495686, 42.717537, 48.032490>,  <34.503075, 42.954029, 47.992287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495686, 42.717537, 48.032490>,  <34.483368, 42.323380, 48.099495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495686, 42.717537, 48.032490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474518, -0.161909, -0.865227,
		-0.879707, -0.052846, -0.472570,
		0.030790, 0.985390, -0.167509,
		34.504921, 43.013153, 47.982239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122395, 42.524063, 47.486446>,  <34.483368, 42.323380, 48.099495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122395, 42.524063, 47.486446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393997, 42.808300, 47.560215>,  <34.556957, 42.978840, 47.604477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393997, 42.808300, 47.560215>,  <34.122395, 42.524063, 47.486446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393997, 42.808300, 47.560215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388103, -0.134215, -0.911791,
		-0.623158, 0.690687, -0.366915,
		0.679007, 0.710590, 0.184420,
		34.597698, 43.021477, 47.615540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045101, 42.875244, 47.000092>,  <34.122395, 42.524063, 47.486446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045101, 42.875244, 47.000092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416973, 42.958244, 47.121834>,  <34.640099, 43.008045, 47.194881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416973, 42.958244, 47.121834>,  <34.045101, 42.875244, 47.000092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416973, 42.958244, 47.121834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326347, -0.080756, -0.941794,
		-0.170844, 0.974896, -0.142795,
		0.929683, 0.207500, 0.304358,
		34.695877, 43.020493, 47.213142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267918, 43.369537, 46.448799>,  <34.045101, 42.875244, 47.000092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267918, 43.369537, 46.448799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575356, 43.200047, 46.640514>,  <34.759819, 43.098351, 46.755543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575356, 43.200047, 46.640514>,  <34.267918, 43.369537, 46.448799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575356, 43.200047, 46.640514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418233, -0.234099, -0.877656,
		0.484089, 0.875014, -0.002709,
		0.768595, -0.423731, 0.479284,
		34.805935, 43.072926, 46.784298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816692, 43.586231, 46.032539>,  <34.267918, 43.369537, 46.448799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816692, 43.586231, 46.032539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.984165, 43.289345, 46.241848>,  <35.084648, 43.111214, 46.367432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.984165, 43.289345, 46.241848>,  <34.816692, 43.586231, 46.032539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984165, 43.289345, 46.241848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499261, -0.293187, -0.815340,
		0.758578, 0.602620, 0.247808,
		0.418686, -0.742220, 0.523270,
		35.109772, 43.066677, 46.398830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534855, 43.677536, 45.803196>,  <34.816692, 43.586231, 46.032539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534855, 43.677536, 45.803196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450294, 43.320572, 45.962646>,  <35.399559, 43.106392, 46.058319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450294, 43.320572, 45.962646>,  <35.534855, 43.677536, 45.803196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450294, 43.320572, 45.962646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421803, -0.451212, -0.786442,
		0.881699, 0.001890, 0.471809,
		-0.211399, -0.892415, 0.398630,
		35.386875, 43.052849, 46.082237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098267, 43.277023, 45.811909>,  <35.534855, 43.677536, 45.803196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098267, 43.277023, 45.811909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810318, 43.003590, 45.860077>,  <35.637550, 42.839531, 45.888977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810318, 43.003590, 45.860077>,  <36.098267, 43.277023, 45.811909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810318, 43.003590, 45.860077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395857, -0.546837, -0.737744,
		0.570162, -0.483409, 0.664252,
		-0.719870, -0.683582, 0.120425,
		35.594357, 42.798515, 45.896206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444355, 42.547817, 45.677784>,  <36.098267, 43.277023, 45.811909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444355, 42.547817, 45.677784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046726, 42.518585, 45.645580>,  <35.808147, 42.501045, 45.626259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046726, 42.518585, 45.645580>,  <36.444355, 42.547817, 45.677784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046726, 42.518585, 45.645580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108702, -0.686823, -0.718650,
		-0.002776, -0.723140, 0.690696,
		-0.994071, -0.073085, -0.080513,
		35.748505, 42.496658, 45.621426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363995, 41.982548, 45.271172>,  <36.444355, 42.547817, 45.677784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363995, 41.982548, 45.271172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985764, 42.105637, 45.228851>,  <35.758827, 42.179489, 45.203457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985764, 42.105637, 45.228851>,  <36.363995, 41.982548, 45.271172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985764, 42.105637, 45.228851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026211, -0.396116, -0.917826,
		-0.324347, -0.865101, 0.382623,
		-0.945574, 0.307723, -0.105804,
		35.702091, 42.197952, 45.197109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097301, 41.357307, 45.090748>,  <36.363995, 41.982548, 45.271172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097301, 41.357307, 45.090748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871758, 41.669167, 44.981785>,  <35.736431, 41.856281, 44.916409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871758, 41.669167, 44.981785>,  <36.097301, 41.357307, 45.090748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871758, 41.669167, 44.981785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131868, -0.410605, -0.902228,
		-0.815273, -0.472811, 0.334335,
		-0.563863, 0.779650, -0.272406,
		35.702599, 41.903061, 44.900063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351341, 41.213928, 44.934895>,  <36.097301, 41.357307, 45.090748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351341, 41.213928, 44.934895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460400, 41.538975, 44.728859>,  <35.525833, 41.734005, 44.605236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460400, 41.538975, 44.728859>,  <35.351341, 41.213928, 44.934895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460400, 41.538975, 44.728859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122756, -0.501614, -0.856338,
		-0.954251, 0.296706, -0.037009,
		0.272645, 0.812618, -0.515088,
		35.542194, 41.782761, 44.574333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056259, 41.124443, 44.299831>,  <35.351341, 41.213928, 44.934895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056259, 41.124443, 44.299831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313805, 41.421844, 44.227554>,  <35.468330, 41.600285, 44.184189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313805, 41.421844, 44.227554>,  <35.056259, 41.124443, 44.299831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313805, 41.421844, 44.227554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062573, -0.286529, -0.956026,
		-0.762578, 0.604243, -0.231008,
		0.643863, 0.743500, -0.180691,
		35.506962, 41.644894, 44.173347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911850, 41.264656, 43.530418>,  <35.056259, 41.124443, 44.299831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911850, 41.264656, 43.530418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253498, 41.450523, 43.623863>,  <35.458485, 41.562042, 43.679928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253498, 41.450523, 43.623863>,  <34.911850, 41.264656, 43.530418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253498, 41.450523, 43.623863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410673, -0.326966, -0.851141,
		-0.319113, 0.822910, -0.470092,
		0.854116, 0.464664, 0.233608,
		35.509731, 41.589924, 43.693947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515266, 41.806450, 43.228352>,  <34.911850, 41.264656, 43.530418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515266, 41.806450, 43.228352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.172222, 41.606335, 43.180660>,  <33.966396, 41.486263, 43.152046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.172222, 41.606335, 43.180660>,  <34.515266, 41.806450, 43.228352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172222, 41.606335, 43.180660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297224, 0.292939, 0.908760,
		-0.419718, 0.814798, -0.399926,
		-0.857610, -0.500290, -0.119226,
		33.914940, 41.456249, 43.144894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919876, 42.137218, 43.621387>,  <34.515266, 41.806450, 43.228352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919876, 42.137218, 43.621387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745674, 41.788097, 43.533245>,  <33.641155, 41.578625, 43.480358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745674, 41.788097, 43.533245>,  <33.919876, 42.137218, 43.621387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745674, 41.788097, 43.533245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516920, 0.042062, 0.855000,
		-0.736975, 0.486263, -0.469486,
		-0.435502, -0.872800, -0.220360,
		33.615025, 41.526257, 43.467136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201324, 42.182919, 43.687260>,  <33.919876, 42.137218, 43.621387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201324, 42.182919, 43.687260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256264, 41.789478, 43.734013>,  <33.289227, 41.553413, 43.762062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256264, 41.789478, 43.734013>,  <33.201324, 42.182919, 43.687260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256264, 41.789478, 43.734013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475640, 0.038008, 0.878819,
		-0.868851, -0.176298, -0.462620,
		0.137351, -0.983603, 0.116878,
		33.297470, 41.494396, 43.769077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478279, 41.872845, 44.004967>,  <33.201324, 42.182919, 43.687260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478279, 41.872845, 44.004967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759365, 41.604931, 44.100960>,  <32.928017, 41.444183, 44.158554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759365, 41.604931, 44.100960>,  <32.478279, 41.872845, 44.004967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759365, 41.604931, 44.100960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422335, -0.121241, 0.898295,
		-0.572565, -0.732594, -0.368069,
		0.702710, -0.669781, 0.239982,
		32.970177, 41.403996, 44.172955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109138, 41.342606, 44.269238>,  <32.478279, 41.872845, 44.004967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109138, 41.342606, 44.269238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479763, 41.263012, 44.396915>,  <32.702137, 41.215256, 44.473522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479763, 41.263012, 44.396915>,  <32.109138, 41.342606, 44.269238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479763, 41.263012, 44.396915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348485, -0.134756, 0.927577,
		-0.141594, -0.970686, -0.194215,
		0.926558, -0.199020, 0.319189,
		32.757732, 41.203316, 44.492676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088745, 40.793205, 44.735222>,  <32.109138, 41.342606, 44.269238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088745, 40.793205, 44.735222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423645, 40.994255, 44.821365>,  <32.624588, 41.114883, 44.873051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423645, 40.994255, 44.821365>,  <32.088745, 40.793205, 44.735222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423645, 40.994255, 44.821365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208959, -0.069856, 0.975426,
		0.505313, -0.861680, 0.046540,
		0.837254, 0.502621, 0.215355,
		32.674820, 41.145042, 44.885971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240356, 40.523830, 45.489288>,  <32.088745, 40.793205, 44.735222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240356, 40.523830, 45.489288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439838, 40.864864, 45.426807>,  <32.559528, 41.069485, 45.389320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439838, 40.864864, 45.426807>,  <32.240356, 40.523830, 45.489288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439838, 40.864864, 45.426807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163496, 0.269503, 0.949019,
		0.851214, -0.447740, 0.273795,
		0.498703, 0.852583, -0.156201,
		32.589451, 41.120640, 45.379948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551228, 39.965019, 45.820633>,  <32.240356, 40.523830, 45.489288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551228, 39.965019, 45.820633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280708, 39.673012, 45.860012>,  <32.118397, 39.497807, 45.883640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280708, 39.673012, 45.860012>,  <32.551228, 39.965019, 45.820633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280708, 39.673012, 45.860012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421410, -0.493035, -0.761138,
		0.604184, -0.473269, 0.641076,
		-0.676295, -0.730023, 0.098444,
		32.077820, 39.454006, 45.889545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973530, 39.383259, 45.799000>,  <32.551228, 39.965019, 45.820633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973530, 39.383259, 45.799000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598289, 39.278534, 45.708298>,  <32.373146, 39.215698, 45.653877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598289, 39.278534, 45.708298>,  <32.973530, 39.383259, 45.799000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598289, 39.278534, 45.708298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326859, -0.452662, -0.829615,
		0.114559, -0.852381, 0.510219,
		-0.938105, -0.261809, -0.226752,
		32.316856, 39.199989, 45.640270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971359, 38.727390, 45.540527>,  <32.973530, 39.383259, 45.799000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971359, 38.727390, 45.540527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.631504, 38.890251, 45.406452>,  <32.427593, 38.987968, 45.326008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.631504, 38.890251, 45.406452>,  <32.971359, 38.727390, 45.540527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631504, 38.890251, 45.406452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307651, -0.133573, -0.942077,
		-0.428338, -0.903542, -0.011772,
		-0.849633, 0.407149, -0.335190,
		32.376614, 39.012394, 45.305897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819473, 38.278080, 45.102188>,  <32.971359, 38.727390, 45.540527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819473, 38.278080, 45.102188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600368, 38.593418, 44.990147>,  <32.468906, 38.782623, 44.922920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600368, 38.593418, 44.990147>,  <32.819473, 38.278080, 45.102188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600368, 38.593418, 44.990147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252734, -0.163236, -0.953667,
		-0.797545, -0.593177, -0.109828,
		-0.547765, 0.788349, -0.280104,
		32.436039, 38.829922, 44.906116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576401, 38.028660, 44.524113>,  <32.819473, 38.278080, 45.102188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576401, 38.028660, 44.524113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502304, 38.420422, 44.492001>,  <32.457844, 38.655479, 44.472733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502304, 38.420422, 44.492001>,  <32.576401, 38.028660, 44.524113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502304, 38.420422, 44.492001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142426, -0.054073, -0.988328,
		-0.972316, -0.194518, -0.129476,
		-0.185246, 0.979408, -0.080281,
		32.446732, 38.714245, 44.467915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901773, 38.103676, 44.040714>,  <32.576401, 38.028660, 44.524113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901773, 38.103676, 44.040714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142117, 38.422947, 44.058041>,  <32.286324, 38.614510, 44.068436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142117, 38.422947, 44.058041>,  <31.901773, 38.103676, 44.040714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142117, 38.422947, 44.058041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108348, -0.027634, -0.993729,
		-0.791977, 0.601785, -0.103085,
		0.600860, 0.798180, 0.043317,
		32.322376, 38.662399, 44.071037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706192, 38.618839, 43.520271>,  <31.901773, 38.103676, 44.040714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706192, 38.618839, 43.520271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083096, 38.719067, 43.609146>,  <32.309238, 38.779202, 43.662472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083096, 38.719067, 43.609146>,  <31.706192, 38.618839, 43.520271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083096, 38.719067, 43.609146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243001, -0.055019, -0.968464,
		-0.230440, 0.966535, -0.112730,
		0.942257, 0.250566, 0.222190,
		32.365772, 38.794235, 43.675804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.027138, 38.948307, 49.490757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.360561, 39.169273, 49.488903>,  <33.560616, 39.301853, 49.487789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.360561, 39.169273, 49.488903>,  <33.027138, 38.948307, 49.490757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360561, 39.169273, 49.488903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430609, -0.654971, -0.620958,
		-0.346060, 0.515609, -0.783830,
		0.833557, 0.552414, -0.004633,
		33.610630, 39.334999, 49.487514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248486, 38.966663, 48.728294>,  <33.027138, 38.948307, 49.490757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248486, 38.966663, 48.728294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.574677, 39.017578, 48.954144>,  <33.770390, 39.048126, 49.089653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.574677, 39.017578, 48.954144>,  <33.248486, 38.966663, 48.728294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574677, 39.017578, 48.954144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480860, -0.691944, -0.538505,
		0.322143, 0.710642, -0.625469,
		0.815474, 0.127287, 0.564624,
		33.819317, 39.055763, 49.123531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718224, 38.748470, 48.307400>,  <33.248486, 38.966663, 48.728294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718224, 38.748470, 48.307400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921795, 38.778603, 48.650402>,  <34.043938, 38.796684, 48.856205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921795, 38.778603, 48.650402>,  <33.718224, 38.748470, 48.307400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921795, 38.778603, 48.650402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658002, -0.676314, -0.331108,
		0.554999, 0.732751, -0.393767,
		0.508930, 0.075335, 0.857505,
		34.074474, 38.801205, 48.907654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407837, 38.720547, 48.046776>,  <33.718224, 38.748470, 48.307400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407837, 38.720547, 48.046776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.367634, 38.615524, 48.430645>,  <34.343510, 38.552513, 48.660965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.367634, 38.615524, 48.430645>,  <34.407837, 38.720547, 48.046776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367634, 38.615524, 48.430645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501774, -0.846280, -0.178977,
		0.859139, 0.463548, 0.216803,
		-0.100512, -0.262552, 0.959669,
		34.337479, 38.536758, 48.718544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057823, 38.441723, 48.175289>,  <34.407837, 38.720547, 48.046776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057823, 38.441723, 48.175289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.831459, 38.277699, 48.461391>,  <34.695641, 38.179283, 48.633053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.831459, 38.277699, 48.461391>,  <35.057823, 38.441723, 48.175289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831459, 38.277699, 48.461391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440405, -0.883749, -0.158213,
		0.696983, 0.225466, 0.680720,
		-0.565914, -0.410064, 0.715254,
		34.661686, 38.154678, 48.675968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563034, 38.233757, 48.635303>,  <35.057823, 38.441723, 48.175289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563034, 38.233757, 48.635303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.230404, 38.018337, 48.689632>,  <35.030827, 37.889088, 48.722229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.230404, 38.018337, 48.689632>,  <35.563034, 38.233757, 48.635303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230404, 38.018337, 48.689632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509809, -0.837167, -0.198106,
		0.220394, -0.095498, 0.970725,
		-0.831578, -0.538546, 0.135820,
		34.980930, 37.856773, 48.730377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881779, 37.610439, 48.602818>,  <35.563034, 38.233757, 48.635303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881779, 37.610439, 48.602818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.490681, 37.535591, 48.564869>,  <35.256023, 37.490685, 48.542099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.490681, 37.535591, 48.564869>,  <35.881779, 37.610439, 48.602818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490681, 37.535591, 48.564869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209719, -0.859577, -0.465988,
		0.005643, -0.475514, 0.879690,
		-0.977746, -0.187117, -0.094874,
		35.197357, 37.479458, 48.536407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732044, 36.876034, 48.738201>,  <35.881779, 37.610439, 48.602818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732044, 36.876034, 48.738201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.402397, 36.976650, 48.535202>,  <35.204609, 37.037022, 48.413403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.402397, 36.976650, 48.535202>,  <35.732044, 36.876034, 48.738201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402397, 36.976650, 48.535202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135070, -0.782856, -0.607366,
		-0.550075, -0.569090, 0.611191,
		-0.824120, 0.251543, -0.507496,
		35.155163, 37.052113, 48.382954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329029, 36.254818, 48.676495>,  <35.732044, 36.876034, 48.738201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329029, 36.254818, 48.676495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.191204, 36.481022, 48.376766>,  <35.108509, 36.616745, 48.196930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.191204, 36.481022, 48.376766>,  <35.329029, 36.254818, 48.676495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191204, 36.481022, 48.376766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071006, -0.811610, -0.579869,
		-0.936075, -0.146594, 0.319803,
		-0.344560, 0.565509, -0.749319,
		35.087837, 36.650673, 48.151970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899967, 35.786804, 48.304111>,  <35.329029, 36.254818, 48.676495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899967, 35.786804, 48.304111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.950134, 36.092918, 48.051571>,  <34.980232, 36.276588, 47.900047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.950134, 36.092918, 48.051571>,  <34.899967, 35.786804, 48.304111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950134, 36.092918, 48.051571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008777, -0.637209, -0.770641,
		-0.992065, 0.091110, -0.086633,
		0.125416, 0.765287, -0.631353,
		34.987759, 36.322506, 47.862164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461666, 35.636036, 47.673893>,  <34.899967, 35.786804, 48.304111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461666, 35.636036, 47.673893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.734482, 35.893852, 47.535683>,  <34.898170, 36.048542, 47.452755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.734482, 35.893852, 47.535683>,  <34.461666, 35.636036, 47.673893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734482, 35.893852, 47.535683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108109, -0.556145, -0.824024,
		-0.723278, 0.524665, -0.448995,
		0.682042, 0.644539, -0.345526,
		34.939095, 36.087215, 47.432026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341526, 35.676365, 47.016262>,  <34.461666, 35.636036, 47.673893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341526, 35.676365, 47.016262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717861, 35.811893, 47.018307>,  <34.943661, 35.893211, 47.019535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717861, 35.811893, 47.018307>,  <34.341526, 35.676365, 47.016262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717861, 35.811893, 47.018307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208363, -0.566554, -0.797246,
		-0.267228, 0.751144, -0.603633,
		0.940837, 0.338822, 0.005111,
		35.000111, 35.913540, 47.019840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784912, 36.069134, 46.658234>,  <34.341526, 35.676365, 47.016262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784912, 36.069134, 46.658234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.482594, 35.861855, 46.498112>,  <33.301201, 35.737488, 46.402039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.482594, 35.861855, 46.498112>,  <33.784912, 36.069134, 46.658234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482594, 35.861855, 46.498112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632015, 0.417402, 0.652941,
		-0.171261, 0.746491, -0.642978,
		-0.755795, -0.518195, -0.400309,
		33.255856, 35.706394, 46.378017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243172, 36.598591, 46.601795>,  <33.784912, 36.069134, 46.658234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243172, 36.598591, 46.601795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076313, 36.235058, 46.600086>,  <32.976200, 36.016937, 46.599060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076313, 36.235058, 46.600086>,  <33.243172, 36.598591, 46.601795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076313, 36.235058, 46.600086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669596, 0.304152, 0.677593,
		-0.614517, 0.285516, -0.735425,
		-0.417145, -0.908830, -0.004274,
		32.951168, 35.962410, 46.598804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651447, 36.834335, 46.611637>,  <33.243172, 36.598591, 46.601795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651447, 36.834335, 46.611637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.648212, 36.452465, 46.730656>,  <32.646271, 36.223343, 46.802067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.648212, 36.452465, 46.730656>,  <32.651447, 36.834335, 46.611637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648212, 36.452465, 46.730656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482330, 0.264373, 0.835144,
		-0.875952, -0.136763, -0.462605,
		-0.008083, -0.954674, 0.297543,
		32.645786, 36.166061, 46.819920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967962, 36.720322, 46.586060>,  <32.651447, 36.834335, 46.611637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967962, 36.720322, 46.586060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.118187, 36.442837, 46.831894>,  <32.208321, 36.276344, 46.979393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.118187, 36.442837, 46.831894>,  <31.967962, 36.720322, 46.586060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118187, 36.442837, 46.831894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688957, 0.234579, 0.685793,
		-0.619913, -0.680980, -0.389840,
		0.375563, -0.693714, 0.614584,
		32.230854, 36.234722, 47.016270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383980, 36.410896, 46.909016>,  <31.967962, 36.720322, 46.586060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383980, 36.410896, 46.909016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.691395, 36.335716, 47.153645>,  <31.875845, 36.290607, 47.300423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.691395, 36.335716, 47.153645>,  <31.383980, 36.410896, 46.909016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691395, 36.335716, 47.153645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476035, 0.470678, 0.742868,
		-0.427479, -0.862053, 0.272262,
		0.768539, -0.187954, 0.611573,
		31.921957, 36.279331, 47.337116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104801, 36.228317, 47.579498>,  <31.383980, 36.410896, 46.909016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104801, 36.228317, 47.579498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.469284, 36.349255, 47.691418>,  <31.687973, 36.421818, 47.758568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.469284, 36.349255, 47.691418>,  <31.104801, 36.228317, 47.579498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469284, 36.349255, 47.691418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374135, 0.323128, 0.869259,
		0.172405, -0.896758, 0.407555,
		0.911207, 0.302346, 0.279800,
		31.742645, 36.439960, 47.775356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149982, 35.986061, 48.266613>,  <31.104801, 36.228317, 47.579498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149982, 35.986061, 48.266613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.430494, 36.270462, 48.245914>,  <31.598801, 36.441105, 48.233494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.430494, 36.270462, 48.245914>,  <31.149982, 35.986061, 48.266613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430494, 36.270462, 48.245914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369263, 0.424386, 0.826766,
		0.609797, -0.560685, 0.560161,
		0.701280, 0.711006, -0.051749,
		31.640879, 36.483765, 48.230389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363750, 36.025951, 48.918270>,  <31.149982, 35.986061, 48.266613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363750, 36.025951, 48.918270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.547197, 36.354904, 48.783596>,  <31.657265, 36.552277, 48.702789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.547197, 36.354904, 48.783596>,  <31.363750, 36.025951, 48.918270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547197, 36.354904, 48.783596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161714, 0.449795, 0.878370,
		0.873796, -0.348387, 0.339274,
		0.458616, 0.822382, -0.336690,
		31.684782, 36.601620, 48.682590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940479, 36.258087, 49.417763>,  <31.363750, 36.025951, 48.918270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940479, 36.258087, 49.417763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.800020, 36.567562, 49.206821>,  <31.715746, 36.753246, 49.080257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.800020, 36.567562, 49.206821>,  <31.940479, 36.258087, 49.417763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800020, 36.567562, 49.206821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090729, 0.532456, 0.841581,
		0.931914, 0.343365, -0.116774,
		-0.351147, 0.773687, -0.527357,
		31.694675, 36.799667, 49.048615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196785, 36.778114, 49.847355>,  <31.940479, 36.258087, 49.417763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196785, 36.778114, 49.847355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.943775, 36.953819, 49.592178>,  <31.791969, 37.059242, 49.439072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.943775, 36.953819, 49.592178>,  <32.196785, 36.778114, 49.847355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943775, 36.953819, 49.592178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197580, 0.704879, 0.681254,
		0.748916, 0.556953, -0.359065,
		-0.632524, 0.439258, -0.637938,
		31.754019, 37.085598, 49.400795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423054, 37.491333, 49.727940>,  <32.196785, 36.778114, 49.847355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423054, 37.491333, 49.727940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037003, 37.498299, 49.623459>,  <31.805372, 37.502480, 49.560772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037003, 37.498299, 49.623459>,  <32.423054, 37.491333, 49.727940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037003, 37.498299, 49.623459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111770, 0.874860, 0.471304,
		0.236723, 0.484063, -0.842405,
		-0.965127, 0.017413, -0.261203,
		31.747465, 37.503521, 49.545097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309250, 38.105381, 49.600101>,  <32.423054, 37.491333, 49.727940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309250, 38.105381, 49.600101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.939758, 37.966015, 49.663761>,  <31.718063, 37.882393, 49.701958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.939758, 37.966015, 49.663761>,  <32.309250, 38.105381, 49.600101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939758, 37.966015, 49.663761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238586, 0.848394, 0.472551,
		-0.299667, 0.398538, -0.866814,
		-0.923730, -0.348418, 0.159150,
		31.662640, 37.861488, 49.711506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908524, 38.675476, 49.518955>,  <32.309250, 38.105381, 49.600101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908524, 38.675476, 49.518955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650856, 38.422882, 49.691593>,  <31.496256, 38.271324, 49.795174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650856, 38.422882, 49.691593>,  <31.908524, 38.675476, 49.518955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650856, 38.422882, 49.691593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345810, 0.743740, 0.572072,
		-0.682248, 0.219262, -0.697468,
		-0.644169, -0.631486, 0.431592,
		31.457605, 38.233437, 49.821072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365723, 38.891113, 49.358517>,  <31.908524, 38.675476, 49.518955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365723, 38.891113, 49.358517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.285635, 38.682110, 49.690033>,  <31.237583, 38.556705, 49.888943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.285635, 38.682110, 49.690033>,  <31.365723, 38.891113, 49.358517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285635, 38.682110, 49.690033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398917, 0.816103, 0.418140,
		-0.894862, -0.246900, -0.371838,
		-0.200219, -0.522510, 0.828791,
		31.225569, 38.525356, 49.938671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853548, 38.917294, 48.818859>,  <31.365723, 38.891113, 49.358517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853548, 38.917294, 48.818859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.645178, 39.256271, 48.777939>,  <31.520155, 39.459660, 48.753387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.645178, 39.256271, 48.777939>,  <31.853548, 38.917294, 48.818859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645178, 39.256271, 48.777939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209124, -0.242894, -0.947243,
		-0.827588, -0.472052, 0.303752,
		-0.520927, 0.847449, -0.102299,
		31.488899, 39.510506, 48.747250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302948, 38.811119, 48.362194>,  <31.853548, 38.917294, 48.818859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302948, 38.811119, 48.362194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.351299, 39.207420, 48.337521>,  <31.380310, 39.445202, 48.322716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.351299, 39.207420, 48.337521>,  <31.302948, 38.811119, 48.362194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351299, 39.207420, 48.337521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116429, -0.047558, -0.992060,
		-0.985816, 0.127098, 0.109603,
		0.120876, 0.990749, -0.061681,
		31.387562, 39.504646, 48.319016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786083, 39.007557, 47.921333>,  <31.302948, 38.811119, 48.362194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786083, 39.007557, 47.921333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.065132, 39.294132, 47.918816>,  <31.232561, 39.466076, 47.917305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.065132, 39.294132, 47.918816>,  <30.786083, 39.007557, 47.921333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065132, 39.294132, 47.918816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023650, 0.014252, -0.999619,
		-0.716075, 0.697506, 0.026886,
		0.697623, 0.716438, -0.006291,
		31.274420, 39.509064, 47.916927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561970, 39.454720, 47.360680>,  <30.786083, 39.007557, 47.921333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561970, 39.454720, 47.360680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.947968, 39.526752, 47.436947>,  <31.179567, 39.569973, 47.482708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.947968, 39.526752, 47.436947>,  <30.561970, 39.454720, 47.360680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947968, 39.526752, 47.436947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203801, -0.057321, -0.977333,
		-0.165072, 0.981980, -0.092016,
		0.964996, 0.180084, 0.190666,
		31.237467, 39.580776, 47.494148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755600, 39.902996, 46.842869>,  <30.561970, 39.454720, 47.360680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755600, 39.902996, 46.842869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.117701, 39.786419, 46.966530>,  <31.334961, 39.716473, 47.040726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.117701, 39.786419, 46.966530>,  <30.755600, 39.902996, 46.842869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117701, 39.786419, 46.966530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346447, 0.085125, -0.934199,
		0.245948, 0.952793, 0.178029,
		0.905254, -0.291441, 0.309156,
		31.389277, 39.698986, 47.059277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248848, 40.368118, 46.407112>,  <30.755600, 39.902996, 46.842869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248848, 40.368118, 46.407112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.428404, 40.038353, 46.545002>,  <31.536139, 39.840492, 46.627735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.428404, 40.038353, 46.545002>,  <31.248848, 40.368118, 46.407112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428404, 40.038353, 46.545002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305321, -0.221052, -0.926237,
		0.839807, 0.521031, 0.152483,
		0.448891, -0.824417, 0.344723,
		31.563072, 39.791027, 46.648418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970835, 40.314575, 46.136612>,  <31.248848, 40.368118, 46.407112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970835, 40.314575, 46.136612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850657, 39.939487, 46.206371>,  <31.778549, 39.714436, 46.248226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850657, 39.939487, 46.206371>,  <31.970835, 40.314575, 46.136612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850657, 39.939487, 46.206371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281494, -0.261873, -0.923138,
		0.911314, -0.228262, 0.342642,
		-0.300446, -0.937720, 0.174394,
		31.760523, 39.658173, 46.258690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560619, 40.751057, 46.181465>,  <31.970835, 40.314575, 46.136612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560619, 40.751057, 46.181465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.579266, 41.083797, 45.960251>,  <32.590454, 41.283440, 45.827522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.579266, 41.083797, 45.960251>,  <32.560619, 40.751057, 46.181465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579266, 41.083797, 45.960251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173434, 0.551974, 0.815626,
		0.983742, 0.057894, 0.170003,
		0.046617, 0.831849, -0.553040,
		32.593250, 41.333351, 45.794338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024307, 41.131264, 46.602596>,  <32.560619, 40.751057, 46.181465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024307, 41.131264, 46.602596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806419, 41.381824, 46.379562>,  <32.675686, 41.532162, 46.245743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806419, 41.381824, 46.379562>,  <33.024307, 41.131264, 46.602596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806419, 41.381824, 46.379562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141717, 0.586567, 0.797405,
		0.826559, 0.513380, -0.230741,
		-0.544717, 0.626403, -0.557587,
		32.643005, 41.569744, 46.212288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193977, 41.824524, 46.834045>,  <33.024307, 41.131264, 46.602596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193977, 41.824524, 46.834045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844410, 41.855354, 46.642075>,  <32.634670, 41.873852, 46.526894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844410, 41.855354, 46.642075>,  <33.193977, 41.824524, 46.834045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844410, 41.855354, 46.642075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379354, 0.509164, 0.772556,
		0.303903, 0.857211, -0.415730,
		-0.873919, 0.077073, -0.479923,
		32.582233, 41.878475, 46.498096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124649, 42.447910, 46.755596>,  <33.193977, 41.824524, 46.834045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124649, 42.447910, 46.755596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748489, 42.312447, 46.743263>,  <32.522793, 42.231167, 46.735863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748489, 42.312447, 46.743263>,  <33.124649, 42.447910, 46.755596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748489, 42.312447, 46.743263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242171, 0.603283, 0.759870,
		-0.238738, 0.722050, -0.649343,
		-0.940403, -0.338662, -0.030833,
		32.466370, 42.210850, 46.734013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694359, 43.045094, 46.939953>,  <33.124649, 42.447910, 46.755596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694359, 43.045094, 46.939953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.457054, 42.727417, 46.992561>,  <32.314671, 42.536812, 47.024128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.457054, 42.727417, 46.992561>,  <32.694359, 43.045094, 46.939953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457054, 42.727417, 46.992561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312559, 0.377812, 0.871530,
		-0.741851, 0.475941, -0.472374,
		-0.593265, -0.794190, 0.131521,
		32.279076, 42.489159, 47.032017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084179, 43.253288, 47.150547>,  <32.694359, 43.045094, 46.939953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084179, 43.253288, 47.150547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.073086, 42.870712, 47.266785>,  <32.066429, 42.641167, 47.336529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.073086, 42.870712, 47.266785>,  <32.084179, 43.253288, 47.150547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073086, 42.870712, 47.266785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355015, 0.281177, 0.891574,
		-0.934449, -0.078441, -0.347349,
		-0.027730, -0.956444, 0.290594,
		32.064766, 42.583778, 47.353962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363930, 43.205952, 47.389217>,  <32.084179, 43.253288, 47.150547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363930, 43.205952, 47.389217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576685, 42.905361, 47.545361>,  <31.704338, 42.725006, 47.639046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576685, 42.905361, 47.545361>,  <31.363930, 43.205952, 47.389217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576685, 42.905361, 47.545361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390945, 0.190999, 0.900379,
		-0.751170, -0.631510, -0.192195,
		0.531889, -0.751475, 0.390358,
		31.736252, 42.679920, 47.662468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861801, 42.813774, 47.864017>,  <31.363930, 43.205952, 47.389217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861801, 42.813774, 47.864017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.235023, 42.709126, 47.962780>,  <31.458956, 42.646336, 48.022038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.235023, 42.709126, 47.962780>,  <30.861801, 42.813774, 47.864017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235023, 42.709126, 47.962780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227672, 0.101953, 0.968386,
		-0.278523, -0.959771, 0.035564,
		0.933054, -0.261621, 0.246909,
		31.514940, 42.630638, 48.036854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709711, 42.339111, 48.334682>,  <30.861801, 42.813774, 47.864017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709711, 42.339111, 48.334682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074396, 42.489250, 48.401485>,  <31.293207, 42.579334, 48.441566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074396, 42.489250, 48.401485>,  <30.709711, 42.339111, 48.334682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074396, 42.489250, 48.401485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236342, 0.146681, 0.960535,
		0.336037, -0.915204, 0.222441,
		0.911714, 0.375347, 0.167011,
		31.347910, 42.601852, 48.451588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.597900, 36.420086, 34.278637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918587, 36.638130, 34.376705>,  <37.111000, 36.768955, 34.435547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918587, 36.638130, 34.376705>,  <36.597900, 36.420086, 34.278637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918587, 36.638130, 34.376705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529281, 0.456893, 0.714920,
		0.277690, -0.702928, 0.654814,
		0.801716, 0.545107, 0.245172,
		37.159103, 36.801662, 34.450256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312351, 36.602093, 34.925526>,  <36.597900, 36.420086, 34.278637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312351, 36.602093, 34.925526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653454, 36.810947, 34.930790>,  <36.858116, 36.936260, 34.933949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653454, 36.810947, 34.930790>,  <36.312351, 36.602093, 34.925526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653454, 36.810947, 34.930790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295644, 0.461777, 0.836275,
		0.430567, -0.717037, 0.548152,
		0.852764, 0.522131, 0.013162,
		36.909283, 36.967590, 34.934738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599064, 36.479317, 35.554802>,  <36.312351, 36.602093, 34.925526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599064, 36.479317, 35.554802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734730, 36.831242, 35.421597>,  <36.816128, 37.042397, 35.341671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734730, 36.831242, 35.421597>,  <36.599064, 36.479317, 35.554802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734730, 36.831242, 35.421597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335459, 0.443839, 0.830948,
		0.878883, -0.170115, 0.445675,
		0.339164, 0.879811, -0.333016,
		36.836479, 37.095184, 35.321693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873966, 36.835155, 36.154606>,  <36.599064, 36.479317, 35.554802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873966, 36.835155, 36.154606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820599, 37.134289, 35.894470>,  <36.788578, 37.313770, 35.738388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820599, 37.134289, 35.894470>,  <36.873966, 36.835155, 36.154606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820599, 37.134289, 35.894470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277056, 0.601900, 0.748970,
		0.951546, 0.280105, 0.126890,
		-0.133415, 0.747835, -0.650340,
		36.780575, 37.358639, 35.699368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098118, 37.432098, 36.544697>,  <36.873966, 36.835155, 36.154606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098118, 37.432098, 36.544697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872517, 37.577446, 36.248085>,  <36.737156, 37.664654, 36.070118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872517, 37.577446, 36.248085>,  <37.098118, 37.432098, 36.544697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872517, 37.577446, 36.248085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396586, 0.668451, 0.629200,
		0.724309, 0.648949, -0.232898,
		-0.564000, 0.363371, -0.741529,
		36.703316, 37.686459, 36.025627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061962, 38.242672, 36.625618>,  <37.098118, 37.432098, 36.544697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061962, 38.242672, 36.625618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755005, 38.122616, 36.398983>,  <36.570831, 38.050583, 36.263004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755005, 38.122616, 36.398983>,  <37.061962, 38.242672, 36.625618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755005, 38.122616, 36.398983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613714, 0.599668, 0.513569,
		0.185622, 0.741833, -0.644382,
		-0.767398, -0.300137, -0.566585,
		36.524784, 38.032574, 36.229008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676289, 38.914627, 36.455082>,  <37.061962, 38.242672, 36.625618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676289, 38.914627, 36.455082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423454, 38.617702, 36.366142>,  <36.271755, 38.439548, 36.312778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423454, 38.617702, 36.366142>,  <36.676289, 38.914627, 36.455082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423454, 38.617702, 36.366142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727706, 0.470022, 0.499523,
		-0.266292, 0.477548, -0.837279,
		-0.632086, -0.742312, -0.222352,
		36.233829, 38.395008, 36.299438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090424, 39.210224, 36.059422>,  <36.676289, 38.914627, 36.455082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090424, 39.210224, 36.059422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975025, 38.868607, 36.232571>,  <35.905785, 38.663635, 36.336460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975025, 38.868607, 36.232571>,  <36.090424, 39.210224, 36.059422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975025, 38.868607, 36.232571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783384, 0.470482, 0.406147,
		-0.550526, -0.221930, -0.804779,
		-0.288498, -0.854045, 0.432869,
		35.888477, 38.612392, 36.362431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282379, 39.195862, 35.971138>,  <36.090424, 39.210224, 36.059422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282379, 39.195862, 35.971138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392994, 38.963112, 36.277065>,  <35.459362, 38.823460, 36.460621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392994, 38.963112, 36.277065>,  <35.282379, 39.195862, 35.971138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392994, 38.963112, 36.277065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791979, 0.312798, 0.524334,
		-0.544332, -0.750717, -0.374335,
		0.276536, -0.581878, 0.764818,
		35.475956, 38.788548, 36.506512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654213, 39.132771, 36.301159>,  <35.282379, 39.195862, 35.971138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654213, 39.132771, 36.301159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942547, 39.010979, 36.550217>,  <35.115547, 38.937904, 36.699650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942547, 39.010979, 36.550217>,  <34.654213, 39.132771, 36.301159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942547, 39.010979, 36.550217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562883, 0.267001, 0.782223,
		-0.404420, -0.914331, 0.021076,
		0.720838, -0.304483, 0.622642,
		35.158798, 38.919632, 36.737011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248638, 38.831089, 36.899120>,  <34.654213, 39.132771, 36.301159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248638, 38.831089, 36.899120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616848, 38.877251, 37.048424>,  <34.837772, 38.904945, 37.138004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616848, 38.877251, 37.048424>,  <34.248638, 38.831089, 36.899120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616848, 38.877251, 37.048424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387952, 0.382940, 0.838361,
		-0.046189, -0.916537, 0.397274,
		0.920521, 0.115400, 0.373260,
		34.893005, 38.911869, 37.160400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356834, 38.439041, 37.511753>,  <34.248638, 38.831089, 36.899120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356834, 38.439041, 37.511753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628033, 38.728233, 37.564846>,  <34.790752, 38.901749, 37.596703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628033, 38.728233, 37.564846>,  <34.356834, 38.439041, 37.511753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628033, 38.728233, 37.564846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357426, 0.166473, 0.918985,
		0.642314, -0.670510, 0.371281,
		0.677996, 0.722983, 0.132730,
		34.831432, 38.945129, 37.604664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047390, 37.793575, 37.581196>,  <34.356834, 38.439041, 37.511753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047390, 37.793575, 37.581196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791821, 37.579422, 37.802155>,  <33.638481, 37.450932, 37.934731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791821, 37.579422, 37.802155>,  <34.047390, 37.793575, 37.581196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791821, 37.579422, 37.802155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166078, -0.605150, -0.778596,
		0.751131, -0.589203, 0.297727,
		-0.638921, -0.535382, 0.552401,
		33.600143, 37.418808, 37.967876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340275, 37.088444, 37.717060>,  <34.047390, 37.793575, 37.581196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340275, 37.088444, 37.717060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941357, 37.096455, 37.745365>,  <33.702007, 37.101261, 37.762348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941357, 37.096455, 37.745365>,  <34.340275, 37.088444, 37.717060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941357, 37.096455, 37.745365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062063, -0.745382, -0.663742,
		0.039450, -0.666337, 0.744607,
		-0.997292, 0.020028, 0.070761,
		33.642170, 37.102463, 37.766594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133812, 36.415710, 37.544636>,  <34.340275, 37.088444, 37.717060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133812, 36.415710, 37.544636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780411, 36.599281, 37.507092>,  <33.568371, 36.709423, 37.484566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780411, 36.599281, 37.507092>,  <34.133812, 36.415710, 37.544636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780411, 36.599281, 37.507092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271133, -0.664417, -0.696446,
		-0.381979, -0.589864, 0.711445,
		-0.883504, 0.458923, -0.093862,
		33.515358, 36.736958, 37.478931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554348, 35.856953, 37.681782>,  <34.133812, 36.415710, 37.544636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554348, 35.856953, 37.681782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463085, 36.168343, 37.447884>,  <33.408329, 36.355175, 37.307545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463085, 36.168343, 37.447884>,  <33.554348, 35.856953, 37.681782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463085, 36.168343, 37.447884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235955, -0.626892, -0.742517,
		-0.944601, -0.031434, 0.326712,
		-0.228153, 0.778472, -0.584746,
		33.394638, 36.401886, 37.272461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077038, 35.600388, 37.368156>,  <33.554348, 35.856953, 37.681782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077038, 35.600388, 37.368156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171783, 35.927006, 37.157574>,  <33.228630, 36.122974, 37.031223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171783, 35.927006, 37.157574>,  <33.077038, 35.600388, 37.368156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171783, 35.927006, 37.157574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255458, -0.470460, -0.844635,
		-0.937355, 0.334552, 0.097157,
		0.236866, 0.816543, -0.526453,
		33.242844, 36.171970, 36.999638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524853, 35.588673, 36.931557>,  <33.077038, 35.600388, 37.368156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524853, 35.588673, 36.931557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822887, 35.806919, 36.778114>,  <33.001709, 35.937866, 36.686050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822887, 35.806919, 36.778114>,  <32.524853, 35.588673, 36.931557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822887, 35.806919, 36.778114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217096, -0.345426, -0.912990,
		-0.630647, 0.763535, -0.138922,
		0.745087, 0.545615, -0.383602,
		33.046413, 35.970604, 36.663033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233185, 35.860874, 36.368118>,  <32.524853, 35.588673, 36.931557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233185, 35.860874, 36.368118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629852, 35.885761, 36.323002>,  <32.867851, 35.900692, 36.295933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629852, 35.885761, 36.323002>,  <32.233185, 35.860874, 36.368118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629852, 35.885761, 36.323002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084402, -0.347587, -0.933841,
		-0.097303, 0.935581, -0.339440,
		0.991669, 0.062216, -0.112786,
		32.927353, 35.904427, 36.289165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396450, 36.191975, 35.648491>,  <32.233185, 35.860874, 36.368118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396450, 36.191975, 35.648491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721478, 35.983078, 35.752029>,  <32.916492, 35.857738, 35.814152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721478, 35.983078, 35.752029>,  <32.396450, 36.191975, 35.648491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721478, 35.983078, 35.752029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004758, -0.438131, -0.898899,
		0.582852, 0.731644, -0.353525,
		0.812564, -0.522243, 0.258846,
		32.965248, 35.826405, 35.829685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879688, 36.278252, 35.087654>,  <32.396450, 36.191975, 35.648491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879688, 36.278252, 35.087654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994251, 35.950752, 35.286701>,  <33.062988, 35.754253, 35.406128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994251, 35.950752, 35.286701>,  <32.879688, 36.278252, 35.087654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994251, 35.950752, 35.286701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021319, -0.524694, -0.851024,
		0.957872, 0.233128, -0.167729,
		0.286404, -0.818748, 0.497619,
		33.080173, 35.705128, 35.435986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016369, 35.852421, 34.663521>,  <32.879688, 36.278252, 35.087654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016369, 35.852421, 34.663521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951313, 35.586052, 34.954754>,  <32.912281, 35.426231, 35.129494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951313, 35.586052, 34.954754>,  <33.016369, 35.852421, 34.663521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951313, 35.586052, 34.954754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242335, -0.688345, -0.683707,
		0.956464, -0.287636, -0.049424,
		-0.162638, -0.665918, 0.728081,
		32.902523, 35.386276, 35.173180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088600, 35.257236, 34.231052>,  <33.016369, 35.852421, 34.663521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088600, 35.257236, 34.231052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967777, 35.113190, 34.584114>,  <32.895283, 35.026760, 34.795952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967777, 35.113190, 34.584114>,  <33.088600, 35.257236, 34.231052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967777, 35.113190, 34.584114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463718, -0.753467, -0.466104,
		0.832903, -0.550092, 0.060597,
		-0.302058, -0.360120, 0.882652,
		32.877159, 35.005154, 34.848911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213684, 34.521355, 34.224072>,  <33.088600, 35.257236, 34.231052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213684, 34.521355, 34.224072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923637, 34.554062, 34.497574>,  <32.749607, 34.573685, 34.661674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923637, 34.554062, 34.497574>,  <33.213684, 34.521355, 34.224072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923637, 34.554062, 34.497574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545843, -0.673602, -0.498314,
		0.419832, -0.734558, 0.533072,
		-0.725119, 0.081766, 0.683752,
		32.706100, 34.578590, 34.702698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021591, 33.869057, 34.246040>,  <33.213684, 34.521355, 34.224072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021591, 33.869057, 34.246040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732334, 34.059742, 34.445961>,  <32.558781, 34.174152, 34.565914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732334, 34.059742, 34.445961>,  <33.021591, 33.869057, 34.246040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732334, 34.059742, 34.445961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690270, -0.524214, -0.498725,
		0.024253, -0.705649, 0.708147,
		-0.723145, 0.476717, 0.499802,
		32.515392, 34.202759, 34.595901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582382, 33.454903, 34.512955>,  <33.021591, 33.869057, 34.246040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582382, 33.454903, 34.512955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472153, 33.171211, 34.772507>,  <33.406017, 33.000996, 34.928238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472153, 33.171211, 34.772507>,  <33.582382, 33.454903, 34.512955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472153, 33.171211, 34.772507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140090, 0.638183, 0.757032,
		-0.951019, 0.299517, -0.076507,
		-0.275570, -0.709233, 0.648883,
		33.389481, 32.958443, 34.967171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658787, 33.812038, 35.163246>,  <33.582382, 33.454903, 34.512955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658787, 33.812038, 35.163246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589710, 33.432129, 35.267635>,  <33.548264, 33.204182, 35.330269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589710, 33.432129, 35.267635>,  <33.658787, 33.812038, 35.163246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589710, 33.432129, 35.267635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047871, 0.256544, 0.965346,
		-0.983812, 0.179202, 0.001163,
		-0.172694, -0.949775, 0.260970,
		33.537903, 33.147198, 35.345924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096134, 33.685505, 35.718403>,  <33.658787, 33.812038, 35.163246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096134, 33.685505, 35.718403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350521, 33.380573, 35.766396>,  <33.503155, 33.197613, 35.795193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350521, 33.380573, 35.766396>,  <33.096134, 33.685505, 35.718403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350521, 33.380573, 35.766396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086002, 0.084495, 0.992705,
		-0.766905, -0.641651, -0.011825,
		0.635971, -0.762328, 0.119983,
		33.541313, 33.151875, 35.802391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741993, 33.193619, 36.097595>,  <33.096134, 33.685505, 35.718403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741993, 33.193619, 36.097595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124401, 33.109428, 36.179298>,  <33.353848, 33.058914, 36.228321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124401, 33.109428, 36.179298>,  <32.741993, 33.193619, 36.097595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124401, 33.109428, 36.179298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168254, 0.176847, 0.969750,
		-0.240232, -0.961470, 0.133656,
		0.956023, -0.210476, 0.204256,
		33.411209, 33.046284, 36.240574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825520, 32.698570, 36.649475>,  <32.741993, 33.193619, 36.097595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825520, 32.698570, 36.649475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191654, 32.856350, 36.681896>,  <33.411335, 32.951015, 36.701347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191654, 32.856350, 36.681896>,  <32.825520, 32.698570, 36.649475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191654, 32.856350, 36.681896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124407, 0.085576, 0.988534,
		0.382989, -0.914925, 0.127403,
		0.915337, 0.394447, 0.081049,
		33.466255, 32.974686, 36.706211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172924, 32.395737, 37.220169>,  <32.825520, 32.698570, 36.649475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172924, 32.395737, 37.220169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381844, 32.728203, 37.143883>,  <33.507195, 32.927681, 37.098110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381844, 32.728203, 37.143883>,  <33.172924, 32.395737, 37.220169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381844, 32.728203, 37.143883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025278, 0.238634, 0.970780,
		0.852390, -0.502213, 0.145647,
		0.522295, 0.831166, -0.190714,
		33.538532, 32.977554, 37.086670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751270, 32.359062, 37.605389>,  <33.172924, 32.395737, 37.220169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751270, 32.359062, 37.605389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720818, 32.751980, 37.536907>,  <33.702545, 32.987728, 37.495819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720818, 32.751980, 37.536907>,  <33.751270, 32.359062, 37.605389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720818, 32.751980, 37.536907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039066, 0.174506, 0.983881,
		0.996332, 0.068219, -0.051660,
		-0.076134, 0.982290, -0.171201,
		33.697979, 33.046665, 37.485546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103168, 32.664803, 38.147995>,  <33.751270, 32.359062, 37.605389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103168, 32.664803, 38.147995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892345, 32.978966, 38.018169>,  <33.765850, 33.167465, 37.940273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892345, 32.978966, 38.018169>,  <34.103168, 32.664803, 38.147995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892345, 32.978966, 38.018169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002175, 0.380673, 0.924707,
		0.849827, 0.488080, -0.198929,
		-0.527058, 0.785408, -0.324567,
		33.734226, 33.214588, 37.920799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383743, 33.237106, 38.410591>,  <34.103168, 32.664803, 38.147995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383743, 33.237106, 38.410591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016850, 33.374802, 38.330406>,  <33.796715, 33.457420, 38.282295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016850, 33.374802, 38.330406>,  <34.383743, 33.237106, 38.410591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016850, 33.374802, 38.330406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071980, 0.351712, 0.933337,
		0.391798, 0.870515, -0.297823,
		-0.917231, 0.344242, -0.200460,
		33.741680, 33.478073, 38.270267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244278, 33.996788, 38.592773>,  <34.383743, 33.237106, 38.410591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244278, 33.996788, 38.592773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886703, 33.818615, 38.612679>,  <33.672161, 33.711712, 38.624622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886703, 33.818615, 38.612679>,  <34.244278, 33.996788, 38.592773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886703, 33.818615, 38.612679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229237, 0.549791, 0.803231,
		-0.385141, 0.706627, -0.593586,
		-0.893933, -0.445429, 0.049762,
		33.618523, 33.684986, 38.627605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851833, 34.553467, 38.453438>,  <34.244278, 33.996788, 38.592773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851833, 34.553467, 38.453438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698147, 34.240025, 38.648720>,  <33.605934, 34.051960, 38.765888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698147, 34.240025, 38.648720>,  <33.851833, 34.553467, 38.453438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698147, 34.240025, 38.648720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063985, 0.550124, 0.832628,
		-0.921023, 0.288671, -0.261505,
		-0.384216, -0.783602, 0.488206,
		33.582882, 34.004944, 38.795181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606037, 34.882694, 39.006405>,  <33.851833, 34.553467, 38.453438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606037, 34.882694, 39.006405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561363, 34.503815, 39.126625>,  <33.534557, 34.276485, 39.198757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561363, 34.503815, 39.126625>,  <33.606037, 34.882694, 39.006405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561363, 34.503815, 39.126625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141724, 0.284172, 0.948241,
		-0.983586, 0.148500, 0.102504,
		-0.111685, -0.947203, 0.300554,
		33.527859, 34.219654, 39.216789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051575, 34.905445, 39.469055>,  <33.606037, 34.882694, 39.006405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051575, 34.905445, 39.469055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249413, 34.575783, 39.579426>,  <33.368114, 34.377983, 39.645649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249413, 34.575783, 39.579426>,  <33.051575, 34.905445, 39.469055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249413, 34.575783, 39.579426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009927, 0.322818, 0.946409,
		-0.869066, -0.465352, 0.167846,
		0.494597, -0.824158, 0.275931,
		33.397793, 34.328537, 39.662205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724796, 34.756729, 40.092434>,  <33.051575, 34.905445, 39.469055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724796, 34.756729, 40.092434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048195, 34.521481, 40.100849>,  <33.242233, 34.380329, 40.105896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048195, 34.521481, 40.100849>,  <32.724796, 34.756729, 40.092434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048195, 34.521481, 40.100849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031427, -0.007457, 0.999478,
		-0.587662, -0.808735, -0.024512,
		0.808496, -0.588126, 0.021034,
		33.290745, 34.345043, 40.107159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611912, 34.177536, 40.629017>,  <32.724796, 34.756729, 40.092434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611912, 34.177536, 40.629017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008881, 34.168953, 40.580612>,  <33.247063, 34.163803, 40.551567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008881, 34.168953, 40.580612>,  <32.611912, 34.177536, 40.629017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008881, 34.168953, 40.580612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120490, -0.024224, 0.992419,
		-0.024224, -0.999476, -0.021455,
		-0.992419, 0.021455, 0.121014,
		33.306606, 34.162518, 40.544308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930107, 33.556995, 40.985504>,  <32.611912, 34.177536, 40.629017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930107, 33.556995, 40.985504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206497, 33.844223, 40.952175>,  <33.372330, 34.016560, 40.932178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206497, 33.844223, 40.952175>,  <32.930107, 33.556995, 40.985504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206497, 33.844223, 40.952175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264297, -0.143665, 0.953681,
		0.672835, -0.680986, -0.289051,
		0.690970, 0.718065, -0.083319,
		33.413788, 34.059643, 40.927181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595055, 33.331203, 41.338654>,  <32.930107, 33.556995, 40.985504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595055, 33.331203, 41.338654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623806, 33.729031, 41.308514>,  <33.641056, 33.967728, 41.290432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623806, 33.729031, 41.308514>,  <33.595055, 33.331203, 41.338654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623806, 33.729031, 41.308514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212462, 0.058540, 0.975414,
		0.974522, -0.086118, -0.207099,
		0.071877, 0.994564, -0.075345,
		33.645370, 34.027401, 41.285912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180668, 33.484581, 41.799244>,  <33.595055, 33.331203, 41.338654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180668, 33.484581, 41.799244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017052, 33.845318, 41.743587>,  <33.918880, 34.061760, 41.710194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017052, 33.845318, 41.743587>,  <34.180668, 33.484581, 41.799244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017052, 33.845318, 41.743587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358847, 0.299174, 0.884151,
		0.838997, 0.311721, -0.445998,
		-0.409039, 0.901846, -0.139145,
		33.894341, 34.115871, 41.701843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693668, 34.037979, 41.951809>,  <34.180668, 33.484581, 41.799244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693668, 34.037979, 41.951809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337986, 34.211269, 42.010639>,  <34.124577, 34.315243, 42.045937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337986, 34.211269, 42.010639>,  <34.693668, 34.037979, 41.951809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337986, 34.211269, 42.010639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295832, 0.299236, 0.907161,
		0.348994, 0.850162, -0.394244,
		-0.889206, 0.433223, 0.147073,
		34.071224, 34.341236, 42.054760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792236, 34.667507, 42.322853>,  <34.693668, 34.037979, 41.951809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792236, 34.667507, 42.322853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408905, 34.591042, 42.407761>,  <34.178905, 34.545162, 42.458706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408905, 34.591042, 42.407761>,  <34.792236, 34.667507, 42.322853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408905, 34.591042, 42.407761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139533, 0.335153, 0.931774,
		-0.249265, 0.922566, -0.294514,
		-0.958331, -0.191164, 0.212271,
		34.121407, 34.533691, 42.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550587, 35.232929, 42.744450>,  <34.792236, 34.667507, 42.322853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550587, 35.232929, 42.744450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290016, 34.936752, 42.810646>,  <34.133675, 34.759048, 42.850365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290016, 34.936752, 42.810646>,  <34.550587, 35.232929, 42.744450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290016, 34.936752, 42.810646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051281, 0.260597, 0.964085,
		-0.756973, 0.619548, -0.207731,
		-0.651431, -0.740439, 0.165494,
		34.094585, 34.714622, 42.860294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979866, 35.532928, 42.955929>,  <34.550587, 35.232929, 42.744450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979866, 35.532928, 42.955929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944908, 35.164902, 43.108681>,  <33.923935, 34.944084, 43.200333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944908, 35.164902, 43.108681>,  <33.979866, 35.532928, 42.955929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944908, 35.164902, 43.108681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143022, 0.390968, 0.909224,
		-0.985854, 0.024841, -0.165758,
		-0.087392, -0.920069, 0.381884,
		33.918690, 34.888882, 43.223248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330460, 35.600979, 43.362736>,  <33.979866, 35.532928, 42.955929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330460, 35.600979, 43.362736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530331, 35.278938, 43.490574>,  <33.650253, 35.085716, 43.567276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530331, 35.278938, 43.490574>,  <33.330460, 35.600979, 43.362736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530331, 35.278938, 43.490574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267125, 0.207758, 0.941000,
		-0.823996, -0.555566, -0.111251,
		0.499674, -0.805098, 0.319597,
		33.680233, 35.037411, 43.586452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751247, 35.259621, 43.782803>,  <33.330460, 35.600979, 43.362736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751247, 35.259621, 43.782803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125725, 35.158241, 43.880219>,  <33.350410, 35.097412, 43.938667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125725, 35.158241, 43.880219>,  <32.751247, 35.259621, 43.782803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125725, 35.158241, 43.880219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241342, 0.040237, 0.969606,
		-0.255547, -0.966511, -0.023499,
		0.936189, -0.253451, 0.243542,
		33.406582, 35.082207, 43.953281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747200, 34.665623, 44.219036>,  <32.751247, 35.259621, 43.782803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747200, 34.665623, 44.219036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105640, 34.817722, 44.310612>,  <33.320705, 34.908981, 44.365559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105640, 34.817722, 44.310612>,  <32.747200, 34.665623, 44.219036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105640, 34.817722, 44.310612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254138, 0.016688, 0.967024,
		0.363889, -0.924734, 0.111590,
		0.896102, 0.380248, 0.228938,
		33.374470, 34.931797, 44.379292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923676, 34.340126, 44.852257>,  <32.747200, 34.665623, 44.219036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923676, 34.340126, 44.852257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210838, 34.618389, 44.841888>,  <33.383137, 34.785347, 44.835667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210838, 34.618389, 44.841888>,  <32.923676, 34.340126, 44.852257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210838, 34.618389, 44.841888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084391, 0.123929, 0.988696,
		0.691006, -0.707603, 0.147677,
		0.717906, 0.695657, -0.025920,
		33.426208, 34.827087, 44.834114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432449, 34.228783, 45.384335>,  <32.923676, 34.340126, 44.852257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432449, 34.228783, 45.384335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469505, 34.620556, 45.312630>,  <33.491737, 34.855618, 45.269608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469505, 34.620556, 45.312630>,  <33.432449, 34.228783, 45.384335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469505, 34.620556, 45.312630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055924, 0.184873, 0.981170,
		0.994128, -0.080871, 0.071900,
		0.092640, 0.979429, -0.179265,
		33.497299, 34.914383, 45.258850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979130, 34.551208, 45.854134>,  <33.432449, 34.228783, 45.384335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979130, 34.551208, 45.854134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733116, 34.847870, 45.747040>,  <33.585506, 35.025867, 45.682785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733116, 34.847870, 45.747040>,  <33.979130, 34.551208, 45.854134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733116, 34.847870, 45.747040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145478, 0.226989, 0.962970,
		0.774961, 0.631213, -0.031713,
		-0.615038, 0.741651, -0.267735,
		33.548603, 35.070366, 45.666718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174934, 35.183762, 46.187698>,  <33.979130, 34.551208, 45.854134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174934, 35.183762, 46.187698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787003, 35.211334, 46.094166>,  <33.554245, 35.227879, 46.038044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787003, 35.211334, 46.094166>,  <34.174934, 35.183762, 46.187698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787003, 35.211334, 46.094166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212138, 0.233977, 0.948816,
		0.120116, 0.969795, -0.212295,
		-0.969830, 0.068933, -0.233835,
		33.496052, 35.232014, 46.024014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503189, 35.836826, 46.262802>,  <34.174934, 35.183762, 46.187698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503189, 35.836826, 46.262802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845768, 35.779537, 46.461185>,  <35.051315, 35.745163, 46.580215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845768, 35.779537, 46.461185>,  <34.503189, 35.836826, 46.262802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845768, 35.779537, 46.461185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387532, -0.456333, -0.800986,
		0.341042, 0.878207, -0.335325,
		0.856452, -0.143221, 0.495962,
		35.102703, 35.736572, 46.609974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898827, 35.901123, 45.720196>,  <34.503189, 35.836826, 46.262802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898827, 35.901123, 45.720196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124893, 35.715706, 45.993168>,  <35.260532, 35.604454, 46.156952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124893, 35.715706, 45.993168>,  <34.898827, 35.901123, 45.720196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124893, 35.715706, 45.993168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517901, -0.444541, -0.730864,
		0.642156, 0.766492, -0.011170,
		0.565167, -0.463543, 0.682432,
		35.294445, 35.576641, 46.197899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583126, 36.036224, 45.491829>,  <34.898827, 35.901123, 45.720196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583126, 36.036224, 45.491829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603577, 35.733711, 45.752728>,  <35.615849, 35.552204, 45.909267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603577, 35.733711, 45.752728>,  <35.583126, 36.036224, 45.491829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603577, 35.733711, 45.752728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541562, -0.527743, -0.654368,
		0.839105, 0.386689, 0.382590,
		0.051128, -0.756279, 0.652248,
		35.618916, 35.506828, 45.948402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241531, 35.935101, 45.617661>,  <35.583126, 36.036224, 45.491829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241531, 35.935101, 45.617661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066734, 35.585651, 45.703281>,  <35.961857, 35.375980, 45.754654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066734, 35.585651, 45.703281>,  <36.241531, 35.935101, 45.617661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066734, 35.585651, 45.703281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563098, -0.451281, -0.692290,
		0.701399, -0.181994, 0.689142,
		-0.436990, -0.873626, 0.214048,
		35.935638, 35.323563, 45.767494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791725, 35.464249, 45.510029>,  <36.241531, 35.935101, 45.617661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791725, 35.464249, 45.510029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477425, 35.219536, 45.546516>,  <36.288845, 35.072708, 45.568409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477425, 35.219536, 45.546516>,  <36.791725, 35.464249, 45.510029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477425, 35.219536, 45.546516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370969, -0.584103, -0.721946,
		0.494959, -0.533426, 0.685910,
		-0.785747, -0.611784, 0.091222,
		36.241699, 35.035999, 45.573883>
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
