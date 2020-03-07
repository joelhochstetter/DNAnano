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
	<35.787170, 53.208294, 49.582111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120617, 53.429192, 49.586353>,  <36.320683, 53.561729, 49.588898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120617, 53.429192, 49.586353>,  <35.787170, 53.208294, 49.582111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120617, 53.429192, 49.586353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369299, -0.571530, 0.732783,
		0.410739, -0.606941, -0.680379,
		0.833614, 0.552246, 0.010607,
		36.370701, 53.594864, 49.589535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379429, 52.948120, 49.589542>,  <35.787170, 53.208294, 49.582111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379429, 52.948120, 49.589542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540470, 53.270561, 49.763031>,  <36.637093, 53.464024, 49.867126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540470, 53.270561, 49.763031>,  <36.379429, 52.948120, 49.589542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540470, 53.270561, 49.763031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607682, -0.589713, 0.531940,
		0.684570, 0.049408, -0.727270,
		0.402598, 0.806100, 0.433725,
		36.661251, 53.512390, 49.893147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032703, 52.867474, 49.532578>,  <36.379429, 52.948120, 49.589542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032703, 52.867474, 49.532578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959511, 53.096691, 49.852112>,  <36.915596, 53.234222, 50.043831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959511, 53.096691, 49.852112>,  <37.032703, 52.867474, 49.532578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959511, 53.096691, 49.852112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615729, -0.566651, 0.547527,
		0.766418, 0.592050, -0.249157,
		-0.182978, 0.573048, 0.798834,
		36.904617, 53.268604, 50.091763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661953, 53.349609, 49.789360>,  <37.032703, 52.867474, 49.532578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661953, 53.349609, 49.789360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418232, 53.199139, 50.068573>,  <37.271999, 53.108856, 50.236099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418232, 53.199139, 50.068573>,  <37.661953, 53.349609, 49.789360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418232, 53.199139, 50.068573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784573, -0.413542, 0.461983,
		0.114877, 0.829141, 0.547109,
		-0.609302, -0.376176, 0.698028,
		37.235443, 53.086285, 50.277981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377598, 53.862267, 49.867237>,  <37.661953, 53.349609, 49.789360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377598, 53.862267, 49.867237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757809, 53.765106, 49.789780>,  <38.985935, 53.706810, 49.743305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757809, 53.765106, 49.789780>,  <38.377598, 53.862267, 49.867237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757809, 53.765106, 49.789780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125150, 0.869974, -0.476951,
		0.284314, 0.429121, 0.857333,
		0.950528, -0.242900, -0.193641,
		39.042969, 53.692238, 49.731686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896084, 54.302193, 50.032940>,  <38.377598, 53.862267, 49.867237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896084, 54.302193, 50.032940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009319, 54.111122, 49.700272>,  <39.077263, 53.996479, 49.500671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009319, 54.111122, 49.700272>,  <38.896084, 54.302193, 50.032940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009319, 54.111122, 49.700272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165537, 0.878468, -0.448209,
		0.944699, -0.010789, 0.327761,
		0.283092, -0.477679, -0.831674,
		39.094246, 53.967819, 49.450768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554382, 54.614288, 49.818024>,  <38.896084, 54.302193, 50.032940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554382, 54.614288, 49.818024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343678, 54.451508, 49.519516>,  <39.217255, 54.353840, 49.340412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343678, 54.451508, 49.519516>,  <39.554382, 54.614288, 49.818024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343678, 54.451508, 49.519516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114667, 0.903941, -0.411998,
		0.842244, -0.131452, -0.522824,
		-0.526760, -0.406954, -0.746265,
		39.185650, 54.329422, 49.295635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276562, 54.714550, 49.722660>,  <39.554382, 54.614288, 49.818024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276562, 54.714550, 49.722660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098377, 55.010696, 49.521294>,  <39.991467, 55.188385, 49.400475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098377, 55.010696, 49.521294>,  <40.276562, 54.714550, 49.722660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098377, 55.010696, 49.521294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714381, 0.044988, 0.698309,
		0.539649, 0.670701, 0.508861,
		-0.445464, 0.740363, -0.503414,
		39.964737, 55.232803, 49.370270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434082, 55.409683, 49.859417>,  <40.276562, 54.714550, 49.722660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434082, 55.409683, 49.859417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487309, 55.805622, 49.879414>,  <40.519245, 56.043186, 49.891411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487309, 55.805622, 49.879414>,  <40.434082, 55.409683, 49.859417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487309, 55.805622, 49.879414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844560, -0.139646, 0.516930,
		0.518662, -0.026567, -0.854567,
		0.133071, 0.989845, 0.049992,
		40.527229, 56.102577, 49.894413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041393, 54.799408, 49.680264>,  <40.434082, 55.409683, 49.859417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041393, 54.799408, 49.680264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333492, 54.654285, 49.911819>,  <41.508751, 54.567211, 50.050755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333492, 54.654285, 49.911819>,  <41.041393, 54.799408, 49.680264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333492, 54.654285, 49.911819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050235, 0.816531, 0.575112,
		-0.681337, -0.449052, 0.578041,
		0.730244, -0.362807, 0.578891,
		41.552567, 54.545444, 50.085487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051689, 54.020737, 49.387390>,  <41.041393, 54.799408, 49.680264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051689, 54.020737, 49.387390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988609, 53.844456, 49.033913>,  <40.950764, 53.738689, 48.821827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988609, 53.844456, 49.033913>,  <41.051689, 54.020737, 49.387390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988609, 53.844456, 49.033913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920573, 0.258204, -0.293046,
		0.357318, -0.859718, 0.364978,
		-0.157698, -0.440700, -0.883694,
		40.941299, 53.712246, 48.768803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609100, 53.486671, 49.299812>,  <41.051689, 54.020737, 49.387390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609100, 53.486671, 49.299812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468826, 53.639709, 48.957901>,  <41.384663, 53.731533, 48.752754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468826, 53.639709, 48.957901>,  <41.609100, 53.486671, 49.299812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468826, 53.639709, 48.957901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936091, 0.169925, -0.307993,
		0.027412, -0.908157, -0.417732,
		-0.350689, 0.382592, -0.854775,
		41.363621, 53.754486, 48.701469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262501, 53.832703, 49.660690>,  <41.609100, 53.486671, 49.299812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262501, 53.832703, 49.660690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647934, 53.934456, 49.627724>,  <42.879196, 53.995506, 49.607944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647934, 53.934456, 49.627724>,  <42.262501, 53.832703, 49.660690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647934, 53.934456, 49.627724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235060, 0.952746, 0.192411,
		0.127465, -0.166032, 0.977848,
		0.963587, 0.254379, -0.082414,
		42.937012, 54.010769, 49.603001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583824, 54.141258, 50.319519>,  <42.262501, 53.832703, 49.660690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583824, 54.141258, 50.319519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692120, 54.272766, 49.957611>,  <42.757095, 54.351669, 49.740467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692120, 54.272766, 49.957611>,  <42.583824, 54.141258, 50.319519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692120, 54.272766, 49.957611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402981, 0.892265, 0.203639,
		0.874246, 0.309473, 0.374058,
		0.270738, 0.328769, -0.904772,
		42.773342, 54.371395, 49.686180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745522, 53.425404, 50.502350>,  <42.583824, 54.141258, 50.319519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745522, 53.425404, 50.502350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095875, 53.452774, 50.311291>,  <43.306087, 53.469196, 50.196655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095875, 53.452774, 50.311291>,  <42.745522, 53.425404, 50.502350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095875, 53.452774, 50.311291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481982, -0.077098, 0.872783,
		0.022900, -0.994672, -0.100512,
		0.875882, 0.068432, -0.477648,
		43.358639, 53.473305, 50.167995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324398, 52.888618, 50.740742>,  <42.745522, 53.425404, 50.502350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324398, 52.888618, 50.740742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472000, 53.238644, 50.615463>,  <43.560562, 53.448658, 50.540298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472000, 53.238644, 50.615463>,  <43.324398, 52.888618, 50.740742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472000, 53.238644, 50.615463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634175, 0.009285, 0.773134,
		0.679452, -0.483913, -0.551519,
		0.369009, 0.875067, -0.313194,
		43.582703, 53.501163, 50.521503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082726, 52.888992, 50.847549>,  <43.324398, 52.888618, 50.740742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082726, 52.888992, 50.847549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986259, 53.271236, 50.779846>,  <43.928379, 53.500584, 50.739223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986259, 53.271236, 50.779846>,  <44.082726, 52.888992, 50.847549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986259, 53.271236, 50.779846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532005, 0.276045, 0.800481,
		0.811669, 0.103006, -0.574963,
		-0.241170, 0.955609, -0.169257,
		43.913910, 53.557919, 50.729069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700417, 53.028244, 50.645351>,  <44.082726, 52.888992, 50.847549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700417, 53.028244, 50.645351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570278, 53.191227, 50.304031>,  <44.492195, 53.289017, 50.099239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570278, 53.191227, 50.304031>,  <44.700417, 53.028244, 50.645351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570278, 53.191227, 50.304031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833880, 0.549124, -0.055729,
		0.445861, -0.729683, -0.518430,
		-0.325347, 0.407461, -0.853302,
		44.472675, 53.313465, 50.048042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127964, 52.828724, 50.014858>,  <44.700417, 53.028244, 50.645351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127964, 52.828724, 50.014858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986710, 53.202770, 50.003242>,  <44.901955, 53.427200, 49.996273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986710, 53.202770, 50.003242>,  <45.127964, 52.828724, 50.014858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986710, 53.202770, 50.003242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933298, 0.349951, -0.080556,
		-0.065168, -0.055550, -0.996327,
		-0.353140, 0.935120, -0.029039,
		44.880768, 53.483307, 49.994530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459545, 53.128315, 49.482185>,  <45.127964, 52.828724, 50.014858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459545, 53.128315, 49.482185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333313, 53.412308, 49.734005>,  <45.257572, 53.582703, 49.885098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333313, 53.412308, 49.734005>,  <45.459545, 53.128315, 49.482185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333313, 53.412308, 49.734005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912309, 0.409477, -0.004475,
		-0.260963, 0.572930, -0.776949,
		-0.315579, 0.709985, 0.629548,
		45.238640, 53.625305, 49.922871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567654, 53.868416, 49.340443>,  <45.459545, 53.128315, 49.482185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567654, 53.868416, 49.340443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566124, 53.797447, 49.734093>,  <45.565208, 53.754868, 49.970284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566124, 53.797447, 49.734093>,  <45.567654, 53.868416, 49.340443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566124, 53.797447, 49.734093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930784, 0.359122, 0.068356,
		-0.365550, 0.916272, 0.163765,
		-0.003821, -0.177418, 0.984128,
		45.564976, 53.744221, 50.029331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688061, 54.552681, 49.781292>,  <45.567654, 53.868416, 49.340443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688061, 54.552681, 49.781292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824371, 54.223076, 49.962341>,  <45.906158, 54.025311, 50.070972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824371, 54.223076, 49.962341>,  <45.688061, 54.552681, 49.781292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824371, 54.223076, 49.962341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933047, 0.355472, -0.055337,
		-0.115297, 0.441177, 0.889983,
		0.340777, -0.824016, 0.452624,
		45.926605, 53.975872, 50.098129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142979, 54.731129, 50.392311>,  <45.688061, 54.552681, 49.781292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142979, 54.731129, 50.392311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219505, 54.360878, 50.261703>,  <46.265423, 54.138729, 50.183338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219505, 54.360878, 50.261703>,  <46.142979, 54.731129, 50.392311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219505, 54.360878, 50.261703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971815, 0.131953, 0.195358,
		-0.137743, -0.354694, 0.924780,
		0.191319, -0.925624, -0.326522,
		46.276901, 54.083191, 50.163746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.521732, 54.141235, 50.816856>,  <46.142979, 54.731129, 50.392311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.521732, 54.141235, 50.816856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643692, 54.089893, 50.439377>,  <46.716866, 54.059090, 50.212891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643692, 54.089893, 50.439377>,  <46.521732, 54.141235, 50.816856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643692, 54.089893, 50.439377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950138, 0.109024, 0.292150,
		0.065388, -0.985718, 0.155192,
		0.304897, -0.128350, -0.943697,
		46.735161, 54.051388, 50.156269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.020615, 53.590076, 50.719009>,  <46.521732, 54.141235, 50.816856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.020615, 53.590076, 50.719009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097023, 53.867199, 50.440865>,  <47.142868, 54.033474, 50.273979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097023, 53.867199, 50.440865>,  <47.020615, 53.590076, 50.719009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.097023, 53.867199, 50.440865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970037, -0.024886, 0.241678,
		0.150132, -0.720693, -0.676803,
		0.191019, 0.692807, -0.695363,
		47.154327, 54.075043, 50.232254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.654236, 53.426517, 50.493439>,  <47.020615, 53.590076, 50.719009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.654236, 53.426517, 50.493439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621960, 53.814621, 50.402145>,  <47.602596, 54.047482, 50.347370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621960, 53.814621, 50.402145>,  <47.654236, 53.426517, 50.493439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.621960, 53.814621, 50.402145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854445, 0.185236, 0.485399,
		0.513239, -0.155846, -0.843978,
		-0.080687, 0.970258, -0.228232,
		47.597752, 54.105698, 50.333675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.332039, 53.504700, 50.283657>,  <47.654236, 53.426517, 50.493439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.332039, 53.504700, 50.283657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.172035, 53.860172, 50.373314>,  <48.076031, 54.073456, 50.427109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.172035, 53.860172, 50.373314>,  <48.332039, 53.504700, 50.283657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.172035, 53.860172, 50.373314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893175, 0.323156, 0.312745,
		0.205495, 0.325304, -0.923011,
		-0.400013, 0.888677, 0.224147,
		48.052032, 54.126774, 50.440559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.737946, 53.934448, 49.919189>,  <48.332039, 53.504700, 50.283657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.737946, 53.934448, 49.919189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.596455, 54.142715, 50.230003>,  <48.511559, 54.267673, 50.416492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.596455, 54.142715, 50.230003>,  <48.737946, 53.934448, 49.919189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.596455, 54.142715, 50.230003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932324, 0.263016, 0.248181,
		-0.075154, 0.812238, -0.578465,
		-0.353727, 0.520665, 0.777036,
		48.490337, 54.298916, 50.463116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.029106, 54.591476, 49.838406>,  <48.737946, 53.934448, 49.919189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.029106, 54.591476, 49.838406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.958000, 54.482750, 50.216721>,  <48.915337, 54.417515, 50.443710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.958000, 54.482750, 50.216721>,  <49.029106, 54.591476, 49.838406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.958000, 54.482750, 50.216721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939823, 0.238067, 0.245066,
		-0.291774, 0.932438, 0.213137,
		-0.177768, -0.271815, 0.945788,
		48.904671, 54.401207, 50.500458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.421642, 54.885838, 50.303020>,  <49.029106, 54.591476, 49.838406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.421642, 54.885838, 50.303020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.365250, 54.552322, 50.516533>,  <49.331413, 54.352211, 50.644638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.365250, 54.552322, 50.516533>,  <49.421642, 54.885838, 50.303020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.365250, 54.552322, 50.516533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966492, 0.000917, 0.256694,
		-0.214519, 0.552081, 0.805722,
		-0.140977, -0.833790, 0.533779,
		49.322956, 54.302185, 50.676666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.627354, 55.013531, 50.974209>,  <49.421642, 54.885838, 50.303020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.627354, 55.013531, 50.974209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.639786, 54.621845, 50.894035>,  <49.647243, 54.386833, 50.845932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.639786, 54.621845, 50.894035>,  <49.627354, 55.013531, 50.974209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.639786, 54.621845, 50.894035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953987, -0.030772, 0.298267,
		-0.298235, -0.200478, 0.933201,
		0.031079, -0.979215, -0.200431,
		49.649109, 54.328079, 50.833904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.819736, 54.739475, 51.586636>,  <49.627354, 55.013531, 50.974209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.819736, 54.739475, 51.586636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.934399, 54.529163, 51.266289>,  <50.003197, 54.402977, 51.074081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.934399, 54.529163, 51.266289>,  <49.819736, 54.739475, 51.586636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.934399, 54.529163, 51.266289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933936, -0.032957, 0.355917,
		-0.213528, -0.849982, 0.481598,
		0.286651, -0.525780, -0.800866,
		50.020393, 54.371429, 51.026028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.877792, 55.531136, 51.764648>,  <49.819736, 54.739475, 51.586636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.877792, 55.531136, 51.764648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.505951, 55.395878, 51.706009>,  <49.282845, 55.314724, 51.670826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.505951, 55.395878, 51.706009>,  <49.877792, 55.531136, 51.764648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.505951, 55.395878, 51.706009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177565, -0.759474, 0.625836,
		-0.322962, 0.555749, 0.766054,
		-0.929605, -0.338146, -0.146599,
		49.227070, 55.294434, 51.662029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.470463, 55.660507, 52.340679>,  <49.877792, 55.531136, 51.764648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.470463, 55.660507, 52.340679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.391537, 55.342358, 52.111435>,  <49.344181, 55.151470, 51.973888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.391537, 55.342358, 52.111435>,  <49.470463, 55.660507, 52.340679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.391537, 55.342358, 52.111435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328470, -0.604448, 0.725776,
		-0.923675, -0.045045, 0.380519,
		-0.197311, -0.795370, -0.573109,
		49.332344, 55.103748, 51.939503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.853413, 56.120037, 52.092876>,  <49.470463, 55.660507, 52.340679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.853413, 56.120037, 52.092876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.840588, 56.482197, 52.262218>,  <48.832893, 56.699493, 52.363823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.840588, 56.482197, 52.262218>,  <48.853413, 56.120037, 52.092876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.840588, 56.482197, 52.262218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987876, 0.093083, -0.124245,
		-0.151899, 0.414238, -0.897404,
		-0.032066, 0.905396, 0.423355,
		48.830967, 56.753815, 52.389225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.344887, 56.503159, 51.636169>,  <48.853413, 56.120037, 52.092876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.344887, 56.503159, 51.636169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.329327, 56.659248, 52.004128>,  <49.319988, 56.752903, 52.224903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.329327, 56.659248, 52.004128>,  <49.344887, 56.503159, 51.636169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.329327, 56.659248, 52.004128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962748, 0.261162, -0.070070,
		-0.267586, 0.882906, -0.385843,
		-0.038903, 0.390220, 0.919900,
		49.317657, 56.776314, 52.280098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.418709, 57.254700, 51.483391>,  <49.344887, 56.503159, 51.636169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.418709, 57.254700, 51.483391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.495846, 57.108246, 51.847534>,  <49.542130, 57.020374, 52.066021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.495846, 57.108246, 51.847534>,  <49.418709, 57.254700, 51.483391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.495846, 57.108246, 51.847534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979313, 0.129783, -0.155252,
		-0.061306, 0.921466, 0.383590,
		0.192843, -0.366136, 0.910360,
		49.553699, 56.998405, 52.120644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.762661, 57.811085, 51.882854>,  <49.418709, 57.254700, 51.483391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.762661, 57.811085, 51.882854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.868416, 57.445831, 52.006973>,  <49.931870, 57.226677, 52.081444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.868416, 57.445831, 52.006973>,  <49.762661, 57.811085, 51.882854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.868416, 57.445831, 52.006973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941891, 0.175345, -0.286523,
		0.207226, 0.368015, 0.906434,
		0.264383, -0.913137, 0.310294,
		49.947731, 57.171890, 52.100063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.379597, 57.839828, 52.311424>,  <49.762661, 57.811085, 51.882854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.379597, 57.839828, 52.311424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.365582, 57.448921, 52.227787>,  <50.357174, 57.214378, 52.177605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.365582, 57.448921, 52.227787>,  <50.379597, 57.839828, 52.311424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.365582, 57.448921, 52.227787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989500, -0.004566, -0.144465,
		0.140227, -0.211962, 0.967165,
		-0.035037, -0.977267, -0.209096,
		50.355072, 57.155743, 52.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.772964, 57.607136, 52.772396>,  <50.379597, 57.839828, 52.311424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.772964, 57.607136, 52.772396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.748569, 57.370388, 52.450905>,  <50.733932, 57.228340, 52.258011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.748569, 57.370388, 52.450905>,  <50.772964, 57.607136, 52.772396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.748569, 57.370388, 52.450905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996889, -0.076393, -0.019390,
		-0.049922, -0.802406, 0.594687,
		-0.060988, -0.591869, -0.803723,
		50.730274, 57.192829, 52.209789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.067715, 57.017059, 52.890411>,  <50.772964, 57.607136, 52.772396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.067715, 57.017059, 52.890411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.083118, 57.093285, 52.498043>,  <51.092361, 57.139019, 52.262623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.083118, 57.093285, 52.498043>,  <51.067715, 57.017059, 52.890411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.083118, 57.093285, 52.498043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998257, -0.051274, 0.029228,
		-0.044726, -0.980335, -0.192203,
		0.038509, 0.190560, -0.980920,
		51.094669, 57.150452, 52.203766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.426620, 56.486217, 52.502354>,  <51.067715, 57.017059, 52.890411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.426620, 56.486217, 52.502354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.449268, 56.844582, 52.326103>,  <51.462856, 57.059601, 52.220352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.449268, 56.844582, 52.326103>,  <51.426620, 56.486217, 52.502354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.449268, 56.844582, 52.326103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983058, -0.127088, -0.132080,
		-0.174329, -0.425678, -0.887923,
		0.056620, 0.895906, -0.440621,
		51.466255, 57.113354, 52.193916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.849792, 56.534412, 51.893784>,  <51.426620, 56.486217, 52.502354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.849792, 56.534412, 51.893784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.834229, 56.916637, 52.010666>,  <51.824890, 57.145973, 52.080795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.834229, 56.916637, 52.010666>,  <51.849792, 56.534412, 51.893784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.834229, 56.916637, 52.010666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995773, 0.012735, 0.090963,
		0.083200, 0.294513, -0.952019,
		-0.038913, 0.955563, 0.292208,
		51.822556, 57.203308, 52.098328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.327019, 56.960545, 51.508514>,  <51.849792, 56.534412, 51.893784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.327019, 56.960545, 51.508514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.286591, 57.173412, 51.844749>,  <52.262333, 57.301132, 52.046490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.286591, 57.173412, 51.844749>,  <52.327019, 56.960545, 51.508514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.286591, 57.173412, 51.844749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994775, 0.041826, 0.093134,
		0.014404, 0.845607, -0.533612,
		-0.101073, 0.532165, 0.840586,
		52.256268, 57.333061, 52.096924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.788353, 57.591873, 51.499962>,  <52.327019, 56.960545, 51.508514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.788353, 57.591873, 51.499962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.728985, 57.479118, 51.879120>,  <52.693363, 57.411465, 52.106617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.728985, 57.479118, 51.879120>,  <52.788353, 57.591873, 51.499962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.728985, 57.479118, 51.879120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975329, 0.116665, 0.187413,
		-0.163415, 0.952329, 0.257614,
		-0.148424, -0.281885, 0.947898,
		52.684456, 57.394554, 52.163490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.197182, 58.045734, 51.972038>,  <52.788353, 57.591873, 51.499962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.197182, 58.045734, 51.972038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.142708, 57.686790, 52.139946>,  <53.110023, 57.471424, 52.240688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.142708, 57.686790, 52.139946>,  <53.197182, 58.045734, 51.972038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.142708, 57.686790, 52.139946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975634, -0.047904, 0.214113,
		-0.172027, 0.438697, 0.882016,
		-0.136183, -0.897357, 0.419767,
		53.101852, 57.417583, 52.265877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.800549, 58.586864, 52.003578>,  <53.197182, 58.045734, 51.972038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.800549, 58.586864, 52.003578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.825680, 58.655380, 51.610291>,  <53.840759, 58.696487, 51.374317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.825680, 58.655380, 51.610291>,  <53.800549, 58.586864, 52.003578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.825680, 58.655380, 51.610291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989102, 0.120749, 0.084240,
		0.133151, -0.977794, -0.161833,
		0.062828, 0.171286, -0.983216,
		53.844528, 58.706764, 51.315327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.086037, 58.009109, 51.570400>,  <53.800549, 58.586864, 52.003578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.086037, 58.009109, 51.570400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.151810, 58.361115, 51.392166>,  <54.191273, 58.572315, 51.285225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.151810, 58.361115, 51.392166>,  <54.086037, 58.009109, 51.570400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.151810, 58.361115, 51.392166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983408, -0.181346, 0.004761,
		-0.076616, -0.438975, -0.895227,
		0.164435, 0.880008, -0.445585,
		54.201141, 58.625118, 51.258492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.716866, 57.937340, 51.042461>,  <54.086037, 58.009109, 51.570400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.716866, 57.937340, 51.042461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.678207, 58.316490, 51.163910>,  <54.655014, 58.543980, 51.236778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.678207, 58.316490, 51.163910>,  <54.716866, 57.937340, 51.042461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.678207, 58.316490, 51.163910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955720, 0.003189, 0.294259,
		0.277954, 0.318612, -0.906216,
		-0.096644, 0.947880, 0.303617,
		54.649216, 58.600853, 51.254993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.309677, 58.231461, 50.811615>,  <54.716866, 57.937340, 51.042461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.309677, 58.231461, 50.811615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.148369, 58.502369, 51.057762>,  <55.051582, 58.664913, 51.205452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.148369, 58.502369, 51.057762>,  <55.309677, 58.231461, 50.811615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.148369, 58.502369, 51.057762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904197, 0.191509, 0.381777,
		0.140718, 0.710372, -0.689616,
		-0.403271, 0.677271, 0.615367,
		55.027390, 58.705551, 51.242371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.833702, 58.782749, 50.731960>,  <55.309677, 58.231461, 50.811615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.833702, 58.782749, 50.731960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.639488, 58.725624, 51.076950>,  <55.522961, 58.691349, 51.283943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.639488, 58.725624, 51.076950>,  <55.833702, 58.782749, 50.731960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.639488, 58.725624, 51.076950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866902, -0.206012, 0.453917,
		0.112854, 0.968072, 0.223831,
		-0.485536, -0.142813, 0.862473,
		55.493828, 58.682781, 51.335693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.174763, 59.246696, 51.210510>,  <55.833702, 58.782749, 50.731960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.174763, 59.246696, 51.210510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.994438, 58.922615, 51.360359>,  <55.886242, 58.728168, 51.450268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.994438, 58.922615, 51.360359>,  <56.174763, 59.246696, 51.210510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.994438, 58.922615, 51.360359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835013, -0.234461, 0.497776,
		-0.315464, 0.537219, 0.782226,
		-0.450816, -0.810200, 0.374621,
		55.859192, 58.679554, 51.472744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.631912, 59.147480, 51.726208>,  <56.174763, 59.246696, 51.210510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.631912, 59.147480, 51.726208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.515831, 58.769608, 51.787346>,  <56.446182, 58.542885, 51.824028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.515831, 58.769608, 51.787346>,  <56.631912, 59.147480, 51.726208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.515831, 58.769608, 51.787346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938264, -0.249461, 0.239644,
		-0.188258, 0.212955, 0.958754,
		-0.290205, -0.944679, 0.152845,
		56.428768, 58.486202, 51.833199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.825191, 59.017185, 52.416531>,  <56.631912, 59.147480, 51.726208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.825191, 59.017185, 52.416531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.802574, 58.686310, 52.192902>,  <56.789005, 58.487785, 52.058723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.802574, 58.686310, 52.192902>,  <56.825191, 59.017185, 52.416531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.802574, 58.686310, 52.192902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925321, -0.253711, 0.281801,
		-0.374946, -0.501392, 0.779758,
		-0.056540, -0.827186, -0.559076,
		56.785610, 58.438152, 52.025177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.020332, 58.372368, 52.835770>,  <56.825191, 59.017185, 52.416531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.020332, 58.372368, 52.835770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.118561, 58.383308, 52.448174>,  <57.177498, 58.389874, 52.215614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.118561, 58.383308, 52.448174>,  <57.020332, 58.372368, 52.835770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.118561, 58.383308, 52.448174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951959, -0.195455, 0.235735,
		-0.182947, -0.980331, -0.074034,
		0.245569, 0.027350, -0.968993,
		57.192230, 58.391514, 52.157475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.295586, 57.681080, 52.543411>,  <57.020332, 58.372368, 52.835770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.295586, 57.681080, 52.543411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.433846, 58.026314, 52.396111>,  <57.516800, 58.233456, 52.307728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.433846, 58.026314, 52.396111>,  <57.295586, 57.681080, 52.543411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.433846, 58.026314, 52.396111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922150, -0.239790, 0.303545,
		0.173681, -0.444508, -0.878776,
		0.345650, 0.863084, -0.368256,
		57.537540, 58.285240, 52.285633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.912628, 57.590485, 52.229355>,  <57.295586, 57.681080, 52.543411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.912628, 57.590485, 52.229355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.938713, 57.988174, 52.263428>,  <57.954365, 58.226788, 52.283871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.938713, 57.988174, 52.263428>,  <57.912628, 57.590485, 52.229355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.938713, 57.988174, 52.263428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980071, -0.079869, 0.181884,
		0.187638, 0.071622, -0.979624,
		0.065214, 0.994229, 0.085181,
		57.958279, 58.286442, 52.288982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.504047, 57.837070, 52.651428>,  <57.912628, 57.590485, 52.229355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.504047, 57.837070, 52.651428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872841, 57.783669, 52.506031>,  <59.094116, 57.751629, 52.418793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872841, 57.783669, 52.506031>,  <58.504047, 57.837070, 52.651428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.872841, 57.783669, 52.506031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368141, 0.593318, 0.715853,
		0.120101, -0.793821, 0.596175,
		0.921980, -0.133501, -0.363496,
		59.149433, 57.743618, 52.396980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.942463, 57.646397, 53.187759>,  <58.504047, 57.837070, 52.651428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.942463, 57.646397, 53.187759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.192627, 57.783245, 52.907242>,  <59.342728, 57.865353, 52.738930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.192627, 57.783245, 52.907242>,  <58.942463, 57.646397, 53.187759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.192627, 57.783245, 52.907242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575824, 0.404166, 0.710688,
		0.526578, -0.848296, 0.055771,
		0.625414, 0.342118, -0.701293,
		59.380253, 57.885880, 52.696854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.630730, 57.258869, 53.260887>,  <58.942463, 57.646397, 53.187759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.630730, 57.258869, 53.260887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.697777, 57.591412, 53.048943>,  <59.738007, 57.790936, 52.921776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.697777, 57.591412, 53.048943>,  <59.630730, 57.258869, 53.260887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.697777, 57.591412, 53.048943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746746, 0.243831, 0.618803,
		0.643642, -0.499395, -0.579940,
		0.167620, 0.831355, -0.529860,
		59.748062, 57.840816, 52.889984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.387234, 57.320858, 52.920593>,  <59.630730, 57.258869, 53.260887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.387234, 57.320858, 52.920593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.260468, 57.689590, 53.009850>,  <60.184406, 57.910831, 53.063404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.260468, 57.689590, 53.009850>,  <60.387234, 57.320858, 52.920593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.260468, 57.689590, 53.009850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799368, 0.132980, 0.585941,
		0.510466, 0.364063, -0.779027,
		-0.316914, 0.921832, 0.223138,
		60.165394, 57.966141, 53.076790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.944836, 57.747368, 52.769279>,  <60.387234, 57.320858, 52.920593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.944836, 57.747368, 52.769279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.714500, 57.898964, 53.059044>,  <60.576298, 57.989922, 53.232903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.714500, 57.898964, 53.059044>,  <60.944836, 57.747368, 52.769279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.714500, 57.898964, 53.059044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811244, 0.154908, 0.563814,
		0.101463, 0.912343, -0.396656,
		-0.575837, 0.378991, 0.724415,
		60.541748, 58.012661, 53.276367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.061153, 58.491199, 52.829880>,  <60.944836, 57.747368, 52.769279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.061153, 58.491199, 52.829880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.964844, 58.284679, 53.158623>,  <60.907059, 58.160767, 53.355869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.964844, 58.284679, 53.158623>,  <61.061153, 58.491199, 52.829880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.964844, 58.284679, 53.158623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922591, 0.141220, 0.359003,
		-0.301418, 0.844682, 0.442335,
		-0.240777, -0.516304, 0.821862,
		60.892612, 58.129787, 53.405182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.390480, 58.916496, 53.507252>,  <61.061153, 58.491199, 52.829880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.390480, 58.916496, 53.507252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.339592, 58.521301, 53.472160>,  <61.309059, 58.284184, 53.451103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.339592, 58.521301, 53.472160>,  <61.390480, 58.916496, 53.507252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.339592, 58.521301, 53.472160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862622, -0.153868, 0.481879,
		-0.489589, -0.014374, 0.871835,
		-0.127221, -0.987987, -0.087732,
		61.301426, 58.224907, 53.445839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.501289, 58.565823, 54.159248>,  <61.390480, 58.916496, 53.507252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.501289, 58.565823, 54.159248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.593361, 58.321350, 53.856339>,  <61.648605, 58.174667, 53.674591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.593361, 58.321350, 53.856339>,  <61.501289, 58.565823, 54.159248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.593361, 58.321350, 53.856339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904140, -0.153504, 0.398707,
		-0.359929, -0.776459, 0.517264,
		0.230178, -0.611185, -0.757278,
		61.662415, 58.137993, 53.629154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.637691, 57.882305, 54.355457>,  <61.501289, 58.565823, 54.159248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.637691, 57.882305, 54.355457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.850838, 57.997971, 54.037354>,  <61.978725, 58.067371, 53.846493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.850838, 57.997971, 54.037354>,  <61.637691, 57.882305, 54.355457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.850838, 57.997971, 54.037354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845625, -0.147395, 0.513023,
		0.031132, -0.945863, -0.323070,
		0.532868, 0.289168, -0.795257,
		62.010696, 58.084721, 53.798775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.276814, 57.440311, 54.258652>,  <61.637691, 57.882305, 54.355457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.276814, 57.440311, 54.258652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.342667, 57.781372, 54.060303>,  <62.382179, 57.986008, 53.941296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.342667, 57.781372, 54.060303>,  <62.276814, 57.440311, 54.258652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.342667, 57.781372, 54.060303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986166, -0.152141, 0.065809,
		-0.019330, -0.499844, -0.865900,
		0.164633, 0.852648, -0.495870,
		62.392056, 58.037167, 53.911541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.849804, 57.368755, 53.678635>,  <62.276814, 57.440311, 54.258652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.849804, 57.368755, 53.678635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.833916, 57.757401, 53.771927>,  <62.824383, 57.990585, 53.827904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.833916, 57.757401, 53.771927>,  <62.849804, 57.368755, 53.678635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.833916, 57.757401, 53.771927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997439, 0.052450, -0.048620,
		-0.059473, 0.230701, -0.971205,
		-0.039723, 0.971610, 0.233230,
		62.821999, 58.048885, 53.841896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.244778, 57.937904, 53.143250>,  <62.849804, 57.368755, 53.678635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.244778, 57.937904, 53.143250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.205559, 58.061016, 53.521805>,  <63.182026, 58.134884, 53.748940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.205559, 58.061016, 53.521805>,  <63.244778, 57.937904, 53.143250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.205559, 58.061016, 53.521805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903230, 0.426767, -0.045215,
		-0.417806, 0.850377, -0.319840,
		-0.098047, 0.307780, 0.946392,
		63.176144, 58.153351, 53.805721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.285221, 58.595154, 53.063271>,  <63.244778, 57.937904, 53.143250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.285221, 58.595154, 53.063271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.394501, 58.511440, 53.438835>,  <63.460068, 58.461212, 53.664173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.394501, 58.511440, 53.438835>,  <63.285221, 58.595154, 53.063271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.394501, 58.511440, 53.438835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908836, 0.376016, -0.180633,
		-0.315243, 0.902669, 0.292935,
		0.273201, -0.209287, 0.938914,
		63.476460, 58.448654, 53.720509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.369328, 59.229359, 53.493492>,  <63.285221, 58.595154, 53.063271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.369328, 59.229359, 53.493492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.608742, 58.914722, 53.554192>,  <63.752392, 58.725941, 53.590611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.608742, 58.914722, 53.554192>,  <63.369328, 59.229359, 53.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.608742, 58.914722, 53.554192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795898, 0.562349, -0.224299,
		0.091098, 0.255025, 0.962633,
		0.598538, -0.786591, 0.151745,
		63.788303, 58.678745, 53.599716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.082169, 59.505165, 53.616432>,  <63.369328, 59.229359, 53.493492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.082169, 59.505165, 53.616432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.151657, 59.113384, 53.575439>,  <64.193352, 58.878315, 53.550842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.151657, 59.113384, 53.575439>,  <64.082169, 59.505165, 53.616432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.151657, 59.113384, 53.575439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983482, 0.177916, -0.033316,
		0.050865, -0.095005, 0.994177,
		0.173715, -0.979449, -0.102486,
		64.203773, 58.819550, 53.544693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.576302, 59.347107, 54.138885>,  <64.082169, 59.505165, 53.616432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.576302, 59.347107, 54.138885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.574684, 59.065121, 53.855194>,  <64.573715, 58.895927, 53.684978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.574684, 59.065121, 53.855194>,  <64.576302, 59.347107, 54.138885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.574684, 59.065121, 53.855194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966022, -0.186041, 0.179417,
		-0.258428, -0.684406, 0.681765,
		-0.004043, -0.704966, -0.709229,
		64.573471, 58.853630, 53.642426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.994965, 58.777039, 54.436718>,  <64.576302, 59.347107, 54.138885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.994965, 58.777039, 54.436718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.965042, 58.692757, 54.046844>,  <64.947090, 58.642185, 53.812920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.965042, 58.692757, 54.046844>,  <64.994965, 58.777039, 54.436718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.965042, 58.692757, 54.046844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995453, -0.073573, -0.060498,
		-0.058963, -0.974776, 0.215254,
		-0.074809, -0.210709, -0.974682,
		64.942596, 58.629543, 53.754440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.163147, 58.039726, 54.091812>,  <64.994965, 58.777039, 54.436718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.163147, 58.039726, 54.091812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.236938, 58.360909, 53.865105>,  <65.281212, 58.553616, 53.729080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.236938, 58.360909, 53.865105>,  <65.163147, 58.039726, 54.091812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.236938, 58.360909, 53.865105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981308, -0.182623, 0.060697,
		-0.054769, -0.567375, -0.821636,
		0.184487, 0.802954, -0.566772,
		65.292282, 58.601795, 53.695072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.630112, 57.823132, 53.506851>,  <65.163147, 58.039726, 54.091812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.630112, 57.823132, 53.506851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.685089, 58.206776, 53.605820>,  <65.718079, 58.436962, 53.665199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.685089, 58.206776, 53.605820>,  <65.630112, 57.823132, 53.506851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.685089, 58.206776, 53.605820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989897, -0.141786, -0.000267,
		0.034825, 0.244957, -0.968908,
		0.137443, 0.959110, 0.247420,
		65.726318, 58.494511, 53.680046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.881721, 57.446228, 54.119343>,  <65.630112, 57.823132, 53.506851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.881721, 57.446228, 54.119343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.233223, 57.303055, 54.245636>,  <66.444122, 57.217152, 54.321411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.233223, 57.303055, 54.245636>,  <65.881721, 57.446228, 54.119343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.233223, 57.303055, 54.245636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409620, 0.905107, -0.113983,
		-0.244978, 0.229494, 0.941976,
		0.878748, -0.357929, 0.315737,
		66.496849, 57.195675, 54.340359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.207008, 57.729218, 54.876003>,  <65.881721, 57.446228, 54.119343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.207008, 57.729218, 54.876003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.487534, 57.620712, 54.612312>,  <66.655846, 57.555607, 54.454098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.487534, 57.620712, 54.612312>,  <66.207008, 57.729218, 54.876003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.487534, 57.620712, 54.612312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410975, 0.909469, 0.062972,
		0.582466, -0.315090, 0.749301,
		0.701308, -0.271265, -0.659229,
		66.697929, 57.539333, 54.414543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.791267, 57.878628, 55.193913>,  <66.207008, 57.729218, 54.876003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.791267, 57.878628, 55.193913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.866241, 57.879009, 54.801003>,  <66.911224, 57.879238, 54.565258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.866241, 57.879009, 54.801003>,  <66.791267, 57.878628, 55.193913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.866241, 57.879009, 54.801003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621849, 0.773979, 0.119418,
		0.760374, -0.633211, 0.144483,
		0.187443, 0.000956, -0.982275,
		66.922478, 57.879295, 54.506321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.613670, 57.863419, 54.931198>,  <66.791267, 57.878628, 55.193913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.613670, 57.863419, 54.931198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.356331, 58.074184, 54.709038>,  <67.201927, 58.200642, 54.575741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.356331, 58.074184, 54.709038>,  <67.613670, 57.863419, 54.931198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.356331, 58.074184, 54.709038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589308, 0.803931, 0.080066,
		0.488689, -0.275790, -0.827721,
		-0.643350, 0.526910, -0.555398,
		67.163322, 58.232258, 54.542419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.903084, 58.117054, 54.288990>,  <67.613670, 57.863419, 54.931198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.903084, 58.117054, 54.288990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.633858, 58.357861, 54.460827>,  <67.472321, 58.502346, 54.563931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.633858, 58.357861, 54.460827>,  <67.903084, 58.117054, 54.288990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.633858, 58.357861, 54.460827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660137, 0.750928, -0.018058,
		-0.333467, 0.271439, -0.902840,
		-0.673066, 0.602020, 0.429597,
		67.431938, 58.538467, 54.589706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.546509, 57.813385, 54.593639>,  <67.903084, 58.117054, 54.288990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.546509, 57.813385, 54.593639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.805527, 57.799149, 54.898117>,  <68.960938, 57.790607, 55.080803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.805527, 57.799149, 54.898117>,  <68.546509, 57.813385, 54.593639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.805527, 57.799149, 54.898117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544017, -0.677885, -0.494488,
		0.533606, 0.734306, -0.419594,
		0.647542, -0.035596, 0.761198,
		68.999786, 57.788471, 55.126476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.348419, 57.924870, 54.359566>,  <68.546509, 57.813385, 54.593639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.348419, 57.924870, 54.359566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.286598, 57.715942, 54.695019>,  <69.249504, 57.590588, 54.896290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.286598, 57.715942, 54.695019>,  <69.348419, 57.924870, 54.359566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.286598, 57.715942, 54.695019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751238, -0.613428, -0.243613,
		0.641683, 0.592361, 0.487188,
		-0.154548, -0.522317, 0.838630,
		69.240234, 57.559246, 54.946609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.859940, 57.407589, 54.180130>,  <69.348419, 57.924870, 54.359566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.859940, 57.407589, 54.180130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.708885, 57.246643, 54.513718>,  <69.618256, 57.150078, 54.713871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.708885, 57.246643, 54.513718>,  <69.859940, 57.407589, 54.180130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.708885, 57.246643, 54.513718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572244, -0.809483, -0.131428,
		0.727963, 0.427601, 0.535936,
		-0.377633, -0.402361, 0.833966,
		69.595596, 57.125935, 54.763908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.483238, 57.021126, 54.567436>,  <69.859940, 57.407589, 54.180130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.483238, 57.021126, 54.567436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.156151, 56.899216, 54.762756>,  <69.959900, 56.826069, 54.879948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.156151, 56.899216, 54.762756>,  <70.483238, 57.021126, 54.567436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.156151, 56.899216, 54.762756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491819, -0.810703, 0.317608,
		0.299069, 0.499872, 0.812826,
		-0.817723, -0.304776, 0.488303,
		69.910835, 56.807781, 54.909248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.617020, 56.976608, 55.256508>,  <70.483238, 57.021126, 54.567436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.617020, 56.976608, 55.256508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.313332, 56.726406, 55.184578>,  <70.131119, 56.576286, 55.141422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.313332, 56.726406, 55.184578>,  <70.617020, 56.976608, 55.256508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.313332, 56.726406, 55.184578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423935, -0.684916, 0.592594,
		-0.493832, 0.373674, 0.785173,
		-0.759215, -0.625505, -0.179820,
		70.085564, 56.538754, 55.130630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.736298, 56.440929, 55.614143>,  <70.617020, 56.976608, 55.256508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.736298, 56.440929, 55.614143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.402870, 56.294098, 55.449013>,  <70.202812, 56.206001, 55.349934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.402870, 56.294098, 55.449013>,  <70.736298, 56.440929, 55.614143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.402870, 56.294098, 55.449013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112933, -0.844752, 0.523106,
		-0.540755, 0.389421, 0.745611,
		-0.833565, -0.367077, -0.412826,
		70.152802, 56.183975, 55.325165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.472733, 56.047485, 56.112858>,  <70.736298, 56.440929, 55.614143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.472733, 56.047485, 56.112858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.314659, 55.940422, 55.761360>,  <70.219818, 55.876183, 55.550461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.314659, 55.940422, 55.761360>,  <70.472733, 56.047485, 56.112858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.314659, 55.940422, 55.761360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114076, -0.963502, 0.242178,
		-0.911493, -0.004539, 0.411291,
		-0.395180, -0.267662, -0.878743,
		70.196106, 55.860123, 55.497738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.834587, 56.343346, 56.759224>,  <70.472733, 56.047485, 56.112858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.834587, 56.343346, 56.759224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.559135, 56.185947, 57.002846>,  <70.393867, 56.091511, 57.149017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.559135, 56.185947, 57.002846>,  <70.834587, 56.343346, 56.759224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.559135, 56.185947, 57.002846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403892, -0.905736, -0.128508,
		0.602211, 0.157497, 0.782647,
		-0.688632, -0.393494, 0.609056,
		70.352547, 56.067898, 57.185562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.018806, 55.999111, 57.468288>,  <70.834587, 56.343346, 56.759224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.018806, 55.999111, 57.468288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.716957, 55.767662, 57.344521>,  <70.535851, 55.628792, 57.270260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.716957, 55.767662, 57.344521>,  <71.018806, 55.999111, 57.468288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.716957, 55.767662, 57.344521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541758, -0.815479, 0.203697,
		-0.370191, -0.013917, 0.928851,
		-0.754624, -0.578620, -0.309423,
		70.490570, 55.594078, 57.251694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.110001, 56.569988, 57.860378>,  <71.018806, 55.999111, 57.468288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.110001, 56.569988, 57.860378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.265465, 56.217304, 57.967361>,  <71.358742, 56.005692, 58.031551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.265465, 56.217304, 57.967361>,  <71.110001, 56.569988, 57.860378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.265465, 56.217304, 57.967361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434154, -0.080785, -0.897209,
		0.812686, 0.464821, 0.351401,
		0.388654, -0.881712, 0.267456,
		71.382057, 55.952789, 58.047600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.179672, 56.757641, 58.622063>,  <71.110001, 56.569988, 57.860378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.179672, 56.757641, 58.622063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.936600, 57.051788, 58.742035>,  <70.790756, 57.228279, 58.814018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.936600, 57.051788, 58.742035>,  <71.179672, 56.757641, 58.622063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.936600, 57.051788, 58.742035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758096, 0.424544, 0.495028,
		0.236696, 0.528193, -0.815467,
		-0.607673, 0.735373, 0.299933,
		70.754295, 57.272400, 58.832016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.547958, 57.402214, 58.506142>,  <71.179672, 56.757641, 58.622063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.547958, 57.402214, 58.506142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.291008, 57.338181, 58.805931>,  <71.136833, 57.299763, 58.985806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.291008, 57.338181, 58.805931>,  <71.547958, 57.402214, 58.506142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.291008, 57.338181, 58.805931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763797, -0.053464, 0.643239,
		-0.062899, 0.985655, 0.156613,
		-0.642385, -0.160080, 0.749477,
		71.098289, 57.290157, 59.030773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.662323, 57.863060, 59.035267>,  <71.547958, 57.402214, 58.506142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.662323, 57.863060, 59.035267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.532402, 57.514950, 59.183388>,  <71.454453, 57.306084, 59.272263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.532402, 57.514950, 59.183388>,  <71.662323, 57.863060, 59.035267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.532402, 57.514950, 59.183388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855293, -0.103144, 0.507775,
		-0.403709, 0.481645, 0.777841,
		-0.324797, -0.870276, 0.370307,
		71.434959, 57.253868, 59.294479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.449051, 57.823971, 59.830692>,  <71.662323, 57.863060, 59.035267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.449051, 57.823971, 59.830692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.611061, 57.511463, 59.640717>,  <71.708267, 57.323959, 59.526733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.611061, 57.511463, 59.640717>,  <71.449051, 57.823971, 59.830692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.611061, 57.511463, 59.640717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795699, 0.045342, 0.603992,
		-0.450348, -0.622541, 0.640023,
		0.405029, -0.781273, -0.474936,
		71.732567, 57.277081, 59.498238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.611099, 57.305756, 60.377937>,  <71.449051, 57.823971, 59.830692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.611099, 57.305756, 60.377937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.838966, 57.258358, 60.052620>,  <71.975685, 57.229919, 59.857430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.838966, 57.258358, 60.052620>,  <71.611099, 57.305756, 60.377937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.838966, 57.258358, 60.052620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815717, 0.202434, 0.541873,
		0.100431, -0.972101, 0.211974,
		0.569667, -0.118490, -0.813290,
		72.009865, 57.222813, 59.808632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.163811, 56.928425, 60.415882>,  <71.611099, 57.305756, 60.377937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.163811, 56.928425, 60.415882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.336838, 57.163326, 60.142235>,  <72.440651, 57.304268, 59.978046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.336838, 57.163326, 60.142235>,  <72.163811, 56.928425, 60.415882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.336838, 57.163326, 60.142235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776388, 0.143148, 0.613783,
		0.458380, -0.796641, -0.394019,
		0.432562, 0.587257, -0.684119,
		72.466606, 57.339504, 59.937000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.926186, 56.701645, 60.356594>,  <72.163811, 56.928425, 60.415882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.926186, 56.701645, 60.356594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.813507, 57.081741, 60.303391>,  <72.745895, 57.309799, 60.271469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.813507, 57.081741, 60.303391>,  <72.926186, 56.701645, 60.356594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.813507, 57.081741, 60.303391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731024, 0.302338, 0.611715,
		0.621489, 0.075088, -0.779816,
		-0.281701, 0.950239, -0.133009,
		72.728996, 57.366814, 60.263489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.508965, 57.265388, 60.074165>,  <72.926186, 56.701645, 60.356594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.508965, 57.265388, 60.074165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.230705, 57.421661, 60.315308>,  <73.063751, 57.515423, 60.459991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.230705, 57.421661, 60.315308>,  <73.508965, 57.265388, 60.074165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.230705, 57.421661, 60.315308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718150, 0.399121, 0.570055,
		-0.017901, 0.829501, -0.558219,
		-0.695657, 0.390680, 0.602851,
		73.022011, 57.538864, 60.496162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.551231, 57.925793, 60.252918>,  <73.508965, 57.265388, 60.074165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.551231, 57.925793, 60.252918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.374054, 57.757229, 60.569450>,  <73.267746, 57.656090, 60.759369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.374054, 57.757229, 60.569450>,  <73.551231, 57.925793, 60.252918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.374054, 57.757229, 60.569450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740168, 0.326177, 0.588013,
		-0.505910, 0.846180, 0.167435,
		-0.442952, -0.421412, 0.791332,
		73.241165, 57.630806, 60.806850>
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
