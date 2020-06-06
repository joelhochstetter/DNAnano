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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.685951, 32.024708, 23.351313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809631, 32.227402, 23.029415>,  <42.883839, 32.349018, 22.836277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809631, 32.227402, 23.029415>,  <42.685951, 32.024708, 23.351313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809631, 32.227402, 23.029415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034874, -0.851684, -0.522894,
		-0.950356, 0.133616, -0.281016,
		0.309204, 0.506736, -0.804743,
		42.902393, 32.379421, 22.787992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196682, 31.995253, 22.672476>,  <42.685951, 32.024708, 23.351313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196682, 31.995253, 22.672476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577896, 32.067093, 22.574940>,  <42.806625, 32.110199, 22.516418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577896, 32.067093, 22.574940>,  <42.196682, 31.995253, 22.672476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577896, 32.067093, 22.574940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074913, -0.919953, -0.384804,
		-0.293434, 0.348466, -0.890206,
		0.953039, 0.179603, -0.243841,
		42.863808, 32.120975, 22.501787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325832, 31.994322, 21.914331>,  <42.196682, 31.995253, 22.672476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325832, 31.994322, 21.914331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617245, 31.854939, 22.150234>,  <42.792091, 31.771309, 22.291777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617245, 31.854939, 22.150234>,  <42.325832, 31.994322, 21.914331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617245, 31.854939, 22.150234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173660, -0.926775, -0.333062,
		0.662631, 0.140229, -0.735701,
		0.728534, -0.348459, 0.589758,
		42.835804, 31.750401, 22.327162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878880, 31.714437, 21.556049>,  <42.325832, 31.994322, 21.914331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878880, 31.714437, 21.556049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852318, 31.524239, 21.906933>,  <42.836380, 31.410118, 22.117462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852318, 31.524239, 21.906933>,  <42.878880, 31.714437, 21.556049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852318, 31.524239, 21.906933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157829, -0.873085, -0.461317,
		0.985231, 0.107815, 0.133025,
		-0.066405, -0.475499, 0.877206,
		42.832397, 31.381588, 22.170095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208443, 31.453802, 21.224041>,  <42.878880, 31.714437, 21.556049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208443, 31.453802, 21.224041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996590, 31.363792, 20.896908>,  <41.869476, 31.309786, 20.700626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996590, 31.363792, 20.896908>,  <42.208443, 31.453802, 21.224041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996590, 31.363792, 20.896908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828124, -0.345847, -0.441136,
		-0.183580, -0.910908, 0.369519,
		-0.529632, -0.225024, -0.817835,
		41.837700, 31.296286, 20.651558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282368, 30.823130, 21.049583>,  <42.208443, 31.453802, 21.224041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282368, 30.823130, 21.049583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197441, 31.013733, 20.708324>,  <42.146484, 31.128096, 20.503569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197441, 31.013733, 20.708324>,  <42.282368, 30.823130, 21.049583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197441, 31.013733, 20.708324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860457, -0.322652, -0.394346,
		-0.463179, -0.817823, -0.341513,
		-0.212316, 0.476510, -0.853147,
		42.133747, 31.156685, 20.452381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547707, 30.373512, 20.513218>,  <42.282368, 30.823130, 21.049583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547707, 30.373512, 20.513218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506752, 30.706966, 20.296120>,  <42.482178, 30.907038, 20.165861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506752, 30.706966, 20.296120>,  <42.547707, 30.373512, 20.513218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506752, 30.706966, 20.296120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843659, -0.216298, -0.491379,
		-0.527025, -0.508201, -0.681158,
		-0.102387, 0.833634, -0.542744,
		42.476036, 30.957056, 20.133297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646896, 30.169666, 19.820093>,  <42.547707, 30.373512, 20.513218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646896, 30.169666, 19.820093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697418, 30.566460, 19.821594>,  <42.727730, 30.804537, 19.822495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697418, 30.566460, 19.821594>,  <42.646896, 30.169666, 19.820093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697418, 30.566460, 19.821594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794228, -0.098857, -0.599524,
		-0.594347, 0.078701, -0.800348,
		0.126303, 0.991985, 0.003751,
		42.735310, 30.864056, 19.822720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710503, 30.254271, 19.124311>,  <42.646896, 30.169666, 19.820093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710503, 30.254271, 19.124311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873108, 30.569016, 19.310040>,  <42.970673, 30.757862, 19.421476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873108, 30.569016, 19.310040>,  <42.710503, 30.254271, 19.124311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873108, 30.569016, 19.310040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802343, -0.064362, -0.593382,
		-0.437027, 0.613761, -0.657499,
		0.406513, 0.786864, 0.464319,
		42.995060, 30.805075, 19.449335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002239, 30.806093, 18.546440>,  <42.710503, 30.254271, 19.124311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002239, 30.806093, 18.546440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197769, 30.853302, 18.892185>,  <43.315086, 30.881626, 19.099632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197769, 30.853302, 18.892185>,  <43.002239, 30.806093, 18.546440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197769, 30.853302, 18.892185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871548, -0.109406, -0.477947,
		0.038160, 0.986966, -0.156340,
		0.488822, 0.118020, 0.864363,
		43.344418, 30.888708, 19.151495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553387, 31.252705, 18.270065>,  <43.002239, 30.806093, 18.546440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553387, 31.252705, 18.270065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659374, 31.104012, 18.625954>,  <43.722969, 31.014795, 18.839487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659374, 31.104012, 18.625954>,  <43.553387, 31.252705, 18.270065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659374, 31.104012, 18.625954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940258, -0.104965, -0.323877,
		0.213785, 0.922387, 0.321712,
		0.264972, -0.371733, 0.889722,
		43.738865, 30.992493, 18.892870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097973, 31.524689, 18.496223>,  <43.553387, 31.252705, 18.270065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097973, 31.524689, 18.496223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134579, 31.190388, 18.712795>,  <44.156544, 30.989807, 18.842737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134579, 31.190388, 18.712795>,  <44.097973, 31.524689, 18.496223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134579, 31.190388, 18.712795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964201, -0.061520, -0.257937,
		0.248880, 0.545650, 0.800203,
		0.091515, -0.835752, 0.541428,
		44.162033, 30.939663, 18.875223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667549, 31.738590, 18.832296>,  <44.097973, 31.524689, 18.496223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667549, 31.738590, 18.832296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650818, 31.342003, 18.881672>,  <44.640781, 31.104050, 18.911297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650818, 31.342003, 18.881672>,  <44.667549, 31.738590, 18.832296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650818, 31.342003, 18.881672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925144, -0.085086, -0.369958,
		0.377306, 0.098725, 0.920811,
		-0.041824, -0.991470, 0.123439,
		44.638271, 31.044561, 18.918703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194458, 31.577579, 19.299496>,  <44.667549, 31.738590, 18.832296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194458, 31.577579, 19.299496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119759, 31.237865, 19.101974>,  <45.074940, 31.034037, 18.983461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119759, 31.237865, 19.101974>,  <45.194458, 31.577579, 19.299496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119759, 31.237865, 19.101974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944275, -0.016487, -0.328746,
		0.271057, -0.527678, 0.805037,
		-0.186745, -0.849284, -0.493804,
		45.063736, 30.983080, 18.953833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800690, 31.187050, 19.534306>,  <45.194458, 31.577579, 19.299496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800690, 31.187050, 19.534306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645390, 31.027367, 19.202065>,  <45.552208, 30.931557, 19.002720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645390, 31.027367, 19.202065>,  <45.800690, 31.187050, 19.534306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645390, 31.027367, 19.202065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882646, 0.098043, -0.459699,
		0.264949, -0.911604, 0.314293,
		-0.388249, -0.399206, -0.830600,
		45.528915, 30.907604, 18.952885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174442, 30.639696, 19.399334>,  <45.800690, 31.187050, 19.534306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174442, 30.639696, 19.399334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004395, 30.744087, 19.052654>,  <45.902367, 30.806723, 18.844646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004395, 30.744087, 19.052654>,  <46.174442, 30.639696, 19.399334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004395, 30.744087, 19.052654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896765, -0.008509, -0.442426,
		-0.122839, -0.965307, -0.230420,
		-0.425117, 0.260979, -0.866698,
		45.876858, 30.822380, 18.792645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527157, 30.233376, 18.921034>,  <46.174442, 30.639696, 19.399334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527157, 30.233376, 18.921034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341137, 30.507931, 18.697392>,  <46.229523, 30.672663, 18.563206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341137, 30.507931, 18.697392>,  <46.527157, 30.233376, 18.921034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341137, 30.507931, 18.697392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834192, 0.128319, -0.536337,
		-0.296391, -0.715826, -0.632254,
		-0.465054, 0.686387, -0.559104,
		46.201622, 30.713846, 18.529661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642574, 29.956488, 18.277281>,  <46.527157, 30.233376, 18.921034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642574, 29.956488, 18.277281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.524502, 30.331619, 18.204243>,  <46.453659, 30.556698, 18.160419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.524502, 30.331619, 18.204243>,  <46.642574, 29.956488, 18.277281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.524502, 30.331619, 18.204243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770274, 0.120519, -0.626221,
		-0.565284, -0.325496, -0.757962,
		-0.295181, 0.937831, -0.182594,
		46.435947, 30.612968, 18.149464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.695293, 29.986942, 17.552855>,  <46.642574, 29.956488, 18.277281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.695293, 29.986942, 17.552855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739395, 30.354507, 17.704350>,  <46.765858, 30.575047, 17.795246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739395, 30.354507, 17.704350>,  <46.695293, 29.986942, 17.552855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739395, 30.354507, 17.704350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660037, 0.217206, -0.719147,
		-0.743098, 0.329270, -0.582569,
		0.110256, 0.918914, 0.378736,
		46.772472, 30.630182, 17.817970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.689144, 30.447565, 17.025799>,  <46.695293, 29.986942, 17.552855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.689144, 30.447565, 17.025799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.859726, 30.656364, 17.321274>,  <46.962074, 30.781643, 17.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.859726, 30.656364, 17.321274>,  <46.689144, 30.447565, 17.025799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.859726, 30.656364, 17.321274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773216, 0.213372, -0.597168,
		-0.469334, 0.825828, -0.312623,
		0.426453, 0.521996, 0.738686,
		46.987663, 30.812963, 17.542879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.898743, 30.986509, 16.726477>,  <46.689144, 30.447565, 17.025799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.898743, 30.986509, 16.726477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.117298, 30.993637, 17.061413>,  <47.248432, 30.997913, 17.262375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.117298, 30.993637, 17.061413>,  <46.898743, 30.986509, 16.726477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.117298, 30.993637, 17.061413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802094, 0.276604, -0.529279,
		-0.241042, 0.960819, 0.136843,
		0.546392, 0.017818, 0.837340,
		47.281216, 30.998983, 17.312614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.168430, 31.648096, 16.769945>,  <46.898743, 30.986509, 16.726477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.168430, 31.648096, 16.769945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418793, 31.418781, 16.981449>,  <47.569012, 31.281193, 17.108351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418793, 31.418781, 16.981449>,  <47.168430, 31.648096, 16.769945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418793, 31.418781, 16.981449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733413, 0.202099, -0.649046,
		0.265227, 0.794041, 0.546950,
		0.625907, -0.573285, 0.528758,
		47.606564, 31.246796, 17.140076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.850952, 32.022675, 16.733286>,  <47.168430, 31.648096, 16.769945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.850952, 32.022675, 16.733286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.933323, 31.642483, 16.826389>,  <47.982746, 31.414368, 16.882252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.933323, 31.642483, 16.826389>,  <47.850952, 32.022675, 16.733286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.933323, 31.642483, 16.826389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737910, -0.005393, -0.674878,
		0.642714, 0.310733, 0.700259,
		0.205931, -0.950482, 0.232759,
		47.995102, 31.357338, 16.896217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.580948, 31.914785, 16.564756>,  <47.850952, 32.022675, 16.733286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.580948, 31.914785, 16.564756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.438282, 31.542675, 16.599110>,  <48.352680, 31.319408, 16.619722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.438282, 31.542675, 16.599110>,  <48.580948, 31.914785, 16.564756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.438282, 31.542675, 16.599110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612266, -0.302194, -0.730623,
		0.705634, -0.208006, 0.677359,
		-0.356668, -0.930275, 0.085883,
		48.331284, 31.263592, 16.624874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.108757, 31.497280, 16.546499>,  <48.580948, 31.914785, 16.564756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.108757, 31.497280, 16.546499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.804100, 31.250259, 16.467991>,  <48.621304, 31.102047, 16.420887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.804100, 31.250259, 16.467991>,  <49.108757, 31.497280, 16.546499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.804100, 31.250259, 16.467991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488807, -0.348710, -0.799668,
		0.425397, -0.705002, 0.567458,
		-0.761646, -0.617554, -0.196270,
		48.575607, 31.064993, 16.409109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.478081, 30.769487, 16.506413>,  <49.108757, 31.497280, 16.546499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.478081, 30.769487, 16.506413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.133003, 30.768848, 16.304123>,  <48.925957, 30.768465, 16.182749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.133003, 30.768848, 16.304123>,  <49.478081, 30.769487, 16.506413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.133003, 30.768848, 16.304123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467783, -0.382549, -0.796765,
		-0.192190, -0.923934, 0.330770,
		-0.862694, -0.001598, -0.505723,
		48.874195, 30.768370, 16.152407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.452888, 30.191849, 16.188128>,  <49.478081, 30.769487, 16.506413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.452888, 30.191849, 16.188128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.207745, 30.437378, 15.989079>,  <49.060658, 30.584696, 15.869650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.207745, 30.437378, 15.989079>,  <49.452888, 30.191849, 16.188128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.207745, 30.437378, 15.989079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382054, -0.321071, -0.866573,
		-0.691696, -0.721202, -0.037745,
		-0.612855, 0.613825, -0.497622,
		49.023888, 30.621525, 15.839793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.202618, 29.779697, 15.620935>,  <49.452888, 30.191849, 16.188128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.202618, 29.779697, 15.620935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.198780, 30.162064, 15.503539>,  <49.196480, 30.391483, 15.433102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.198780, 30.162064, 15.503539>,  <49.202618, 29.779697, 15.620935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.198780, 30.162064, 15.503539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444630, -0.258816, -0.857507,
		-0.895663, -0.138718, -0.422546,
		-0.009590, 0.955914, -0.293490,
		49.195904, 30.448837, 15.415492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.995636, 29.819996, 14.873140>,  <49.202618, 29.779697, 15.620935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.995636, 29.819996, 14.873140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.230991, 30.114635, 15.006537>,  <49.372204, 30.291420, 15.086576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.230991, 30.114635, 15.006537>,  <48.995636, 29.819996, 14.873140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.230991, 30.114635, 15.006537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452869, 0.041472, -0.890612,
		-0.669856, 0.675055, -0.309182,
		0.588389, 0.736601, 0.333492,
		49.407509, 30.335615, 15.106585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.934200, 30.399466, 14.515292>,  <48.995636, 29.819996, 14.873140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.934200, 30.399466, 14.515292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.311699, 30.365093, 14.643014>,  <49.538200, 30.344469, 14.719646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.311699, 30.365093, 14.643014>,  <48.934200, 30.399466, 14.515292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.311699, 30.365093, 14.643014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319025, -0.017329, -0.947588,
		0.086962, 0.996150, 0.011060,
		0.943748, -0.085933, 0.319303,
		49.594822, 30.339314, 14.738805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.435310, 30.199589, 14.053375>,  <48.934200, 30.399466, 14.515292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.435310, 30.199589, 14.053375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.578053, 30.553410, 14.173524>,  <49.663696, 30.765701, 14.245613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.578053, 30.553410, 14.173524>,  <49.435310, 30.199589, 14.053375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.578053, 30.553410, 14.173524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069707, -0.345861, 0.935693,
		0.931555, -0.312970, -0.185082,
		0.356857, 0.884550, 0.300372,
		49.685108, 30.818775, 14.263636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.023453, 30.890144, 13.818117>,  <49.435310, 30.199589, 14.053375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.023453, 30.890144, 13.818117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.988125, 31.256199, 13.660779>,  <48.966927, 31.475832, 13.566376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.988125, 31.256199, 13.660779>,  <49.023453, 30.890144, 13.818117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.988125, 31.256199, 13.660779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964939, 0.019383, 0.261758,
		0.247169, 0.402674, 0.881341,
		-0.088320, 0.915138, -0.393347,
		48.961628, 31.530741, 13.542775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.721100, 31.352318, 14.293858>,  <49.023453, 30.890144, 13.818117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.721100, 31.352318, 14.293858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.648258, 31.464764, 13.916963>,  <48.604553, 31.532232, 13.690825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.648258, 31.464764, 13.916963>,  <48.721100, 31.352318, 14.293858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.648258, 31.464764, 13.916963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978377, 0.043773, 0.202145,
		0.098071, 0.958675, 0.267067,
		-0.182101, 0.281116, -0.942238,
		48.593628, 31.549099, 13.634291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.388966, 32.082573, 14.223246>,  <48.721100, 31.352318, 14.293858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.388966, 32.082573, 14.223246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.274807, 31.788868, 13.976863>,  <48.206310, 31.612644, 13.829033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.274807, 31.788868, 13.976863>,  <48.388966, 32.082573, 14.223246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.274807, 31.788868, 13.976863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935649, 0.074233, 0.345037,
		-0.207624, 0.674792, -0.708200,
		-0.285400, -0.734265, -0.615956,
		48.189186, 31.568588, 13.792076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.858643, 32.298111, 13.633548>,  <48.388966, 32.082573, 14.223246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.858643, 32.298111, 13.633548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809010, 31.920231, 13.754966>,  <47.779228, 31.693502, 13.827816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809010, 31.920231, 13.754966>,  <47.858643, 32.298111, 13.633548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.809010, 31.920231, 13.754966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926132, 0.220077, 0.306341,
		-0.356204, -0.243109, -0.902228,
		-0.124086, -0.944702, 0.303544,
		47.771782, 31.636820, 13.846029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.205093, 32.146778, 13.438100>,  <47.858643, 32.298111, 13.633548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.205093, 32.146778, 13.438100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298428, 31.877872, 13.719131>,  <47.354427, 31.716528, 13.887749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298428, 31.877872, 13.719131>,  <47.205093, 32.146778, 13.438100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.298428, 31.877872, 13.719131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887631, 0.147783, 0.436202,
		-0.397072, -0.725410, -0.562240,
		0.233335, -0.672265, 0.702577,
		47.368427, 31.676193, 13.929904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618439, 31.720022, 13.505718>,  <47.205093, 32.146778, 13.438100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618439, 31.720022, 13.505718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843052, 31.707714, 13.836471>,  <46.977821, 31.700329, 14.034923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843052, 31.707714, 13.836471>,  <46.618439, 31.720022, 13.505718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843052, 31.707714, 13.836471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782707, 0.304418, 0.542862,
		-0.268423, -0.952041, 0.146855,
		0.561533, -0.030772, 0.826882,
		47.011513, 31.698483, 14.084536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.202072, 31.402046, 13.945540>,  <46.618439, 31.720022, 13.505718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.202072, 31.402046, 13.945540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474171, 31.570820, 14.185285>,  <46.637432, 31.672085, 14.329131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474171, 31.570820, 14.185285>,  <46.202072, 31.402046, 13.945540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474171, 31.570820, 14.185285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729335, 0.308168, 0.610822,
		0.073023, -0.852645, 0.517362,
		0.680249, 0.421934, 0.599360,
		46.678246, 31.697401, 14.365092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804703, 31.328169, 14.434029>,  <46.202072, 31.402046, 13.945540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804703, 31.328169, 14.434029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094837, 31.566776, 14.571460>,  <46.268917, 31.709942, 14.653918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094837, 31.566776, 14.571460>,  <45.804703, 31.328169, 14.434029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094837, 31.566776, 14.571460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598782, 0.300486, 0.742407,
		0.339624, -0.744222, 0.575142,
		0.725338, 0.596525, 0.343575,
		46.312439, 31.745733, 14.674533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916016, 31.272141, 15.101583>,  <45.804703, 31.328169, 14.434029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916016, 31.272141, 15.101583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056381, 31.638741, 15.024764>,  <46.140602, 31.858702, 14.978673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056381, 31.638741, 15.024764>,  <45.916016, 31.272141, 15.101583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056381, 31.638741, 15.024764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560378, 0.369848, 0.741073,
		0.750222, -0.152437, 0.643374,
		0.350917, 0.916501, -0.192046,
		46.161655, 31.913691, 14.967151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230335, 31.628910, 15.731335>,  <45.916016, 31.272141, 15.101583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230335, 31.628910, 15.731335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081097, 31.897511, 15.475245>,  <45.991554, 32.058670, 15.321592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081097, 31.897511, 15.475245>,  <46.230335, 31.628910, 15.731335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081097, 31.897511, 15.475245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717283, 0.228915, 0.658105,
		0.588475, 0.704759, 0.396248,
		-0.373098, 0.671501, -0.640223,
		45.969166, 32.098961, 15.283178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036865, 32.171253, 16.123575>,  <46.230335, 31.628910, 15.731335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036865, 32.171253, 16.123575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893112, 32.354679, 15.798476>,  <45.806858, 32.464733, 15.603416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893112, 32.354679, 15.798476>,  <46.036865, 32.171253, 16.123575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893112, 32.354679, 15.798476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644900, 0.507458, 0.571481,
		0.674497, 0.729523, 0.113356,
		-0.359385, 0.458565, -0.812748,
		45.785297, 32.492249, 15.554651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081673, 32.867203, 16.212223>,  <46.036865, 32.171253, 16.123575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081673, 32.867203, 16.212223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780758, 32.834507, 15.950725>,  <45.600208, 32.814892, 15.793825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780758, 32.834507, 15.950725>,  <46.081673, 32.867203, 16.212223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780758, 32.834507, 15.950725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620909, 0.419768, 0.662017,
		0.220311, 0.903943, -0.366537,
		-0.752287, -0.081737, -0.653746,
		45.555073, 32.809986, 15.754601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750664, 33.519157, 16.247042>,  <46.081673, 32.867203, 16.212223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750664, 33.519157, 16.247042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458710, 33.348080, 16.033745>,  <45.283539, 33.245434, 15.905766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458710, 33.348080, 16.033745>,  <45.750664, 33.519157, 16.247042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458710, 33.348080, 16.033745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669165, 0.606353, 0.429598,
		0.139598, 0.670384, -0.728764,
		-0.729884, -0.427692, -0.533244,
		45.239746, 33.219772, 15.873772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152279, 34.008358, 15.979080>,  <45.750664, 33.519157, 16.247042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152279, 34.008358, 15.979080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968006, 33.653694, 15.995131>,  <44.857445, 33.440895, 16.004763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968006, 33.653694, 15.995131>,  <45.152279, 34.008358, 15.979080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968006, 33.653694, 15.995131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732274, 0.405235, 0.547321,
		-0.501548, 0.222754, -0.835960,
		-0.460678, -0.886659, 0.040128,
		44.829803, 33.387695, 16.007170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356071, 34.158924, 15.754494>,  <45.152279, 34.008358, 15.979080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356071, 34.158924, 15.754494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383408, 33.814251, 15.955621>,  <44.399811, 33.607445, 16.076298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383408, 33.814251, 15.955621>,  <44.356071, 34.158924, 15.754494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383408, 33.814251, 15.955621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742148, 0.292913, 0.602842,
		-0.666743, -0.414364, -0.619480,
		0.068342, -0.861687, 0.502817,
		44.403912, 33.555744, 16.106466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697750, 34.104206, 15.949219>,  <44.356071, 34.158924, 15.754494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697750, 34.104206, 15.949219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897247, 33.847366, 16.182098>,  <44.016945, 33.693260, 16.321827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897247, 33.847366, 16.182098>,  <43.697750, 34.104206, 15.949219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897247, 33.847366, 16.182098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692470, 0.108794, 0.713196,
		-0.521286, -0.758859, -0.390377,
		0.498745, -0.642104, 0.582200,
		44.046871, 33.654736, 16.356758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267662, 33.508942, 16.125532>,  <43.697750, 34.104206, 15.949219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267662, 33.508942, 16.125532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552773, 33.524204, 16.405674>,  <43.723839, 33.533360, 16.573759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552773, 33.524204, 16.405674>,  <43.267662, 33.508942, 16.125532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552773, 33.524204, 16.405674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699234, 0.116929, 0.705265,
		-0.054984, -0.992407, 0.110022,
		0.712775, 0.038152, 0.700354,
		43.766605, 33.535652, 16.615780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082470, 33.016151, 16.634727>,  <43.267662, 33.508942, 16.125532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082470, 33.016151, 16.634727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313538, 33.276897, 16.831249>,  <43.452179, 33.433346, 16.949162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313538, 33.276897, 16.831249>,  <43.082470, 33.016151, 16.634727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313538, 33.276897, 16.831249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645044, -0.004297, 0.764133,
		0.500221, -0.758325, 0.417998,
		0.577665, 0.651863, 0.491302,
		43.486835, 33.472458, 16.978640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965778, 32.800762, 17.310413>,  <43.082470, 33.016151, 16.634727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965778, 32.800762, 17.310413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138725, 33.161442, 17.310726>,  <43.242493, 33.377850, 17.310913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138725, 33.161442, 17.310726>,  <42.965778, 32.800762, 17.310413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138725, 33.161442, 17.310726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475610, 0.227323, 0.849776,
		0.766062, -0.367789, 0.527143,
		0.432370, 0.901696, 0.000781,
		43.268436, 33.431950, 17.310961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172054, 32.887306, 18.006351>,  <42.965778, 32.800762, 17.310413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172054, 32.887306, 18.006351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162071, 33.257511, 17.855198>,  <43.156082, 33.479633, 17.764505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162071, 33.257511, 17.855198>,  <43.172054, 32.887306, 18.006351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162071, 33.257511, 17.855198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623248, 0.281143, 0.729740,
		0.781626, 0.253731, 0.569809,
		-0.024960, 0.925515, -0.377886,
		43.154583, 33.535168, 17.741833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268219, 33.228840, 18.521292>,  <43.172054, 32.887306, 18.006351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268219, 33.228840, 18.521292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068573, 33.449894, 18.254318>,  <42.948784, 33.582527, 18.094133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068573, 33.449894, 18.254318>,  <43.268219, 33.228840, 18.521292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068573, 33.449894, 18.254318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654235, 0.264730, 0.708445,
		0.568205, 0.790259, 0.229424,
		-0.499119, 0.552639, -0.667435,
		42.918839, 33.615685, 18.054087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134098, 33.737919, 18.955410>,  <43.268219, 33.228840, 18.521292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134098, 33.737919, 18.955410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884987, 33.740376, 18.642460>,  <42.735519, 33.741848, 18.454689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884987, 33.740376, 18.642460>,  <43.134098, 33.737919, 18.955410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884987, 33.740376, 18.642460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777450, 0.107433, 0.619701,
		0.087860, 0.994193, -0.062131,
		-0.622778, 0.006143, -0.782375,
		42.698154, 33.742218, 18.407747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570492, 34.172264, 19.143181>,  <43.134098, 33.737919, 18.955410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570492, 34.172264, 19.143181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407452, 33.959972, 18.845943>,  <42.309628, 33.832596, 18.667601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407452, 33.959972, 18.845943>,  <42.570492, 34.172264, 19.143181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407452, 33.959972, 18.845943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866783, -0.031178, 0.497711,
		-0.287320, 0.846965, -0.447323,
		-0.407597, -0.530734, -0.743093,
		42.285172, 33.800751, 18.623016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980438, 34.391285, 19.083862>,  <42.570492, 34.172264, 19.143181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980438, 34.391285, 19.083862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934914, 34.032501, 18.912975>,  <41.907600, 33.817230, 18.810444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934914, 34.032501, 18.912975>,  <41.980438, 34.391285, 19.083862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934914, 34.032501, 18.912975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930586, -0.054351, 0.362017,
		-0.347934, 0.438762, -0.828510,
		-0.113809, -0.896958, -0.427216,
		41.900772, 33.763412, 18.784811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321327, 34.332870, 19.117033>,  <41.980438, 34.391285, 19.083862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321327, 34.332870, 19.117033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407124, 33.949276, 19.042919>,  <41.458603, 33.719116, 18.998451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407124, 33.949276, 19.042919>,  <41.321327, 34.332870, 19.117033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407124, 33.949276, 19.042919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838599, -0.278068, 0.468433,
		-0.500744, 0.054903, -0.863852,
		0.214491, -0.958991, -0.185283,
		41.471470, 33.661579, 18.987335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667549, 34.059269, 18.919188>,  <41.321327, 34.332870, 19.117033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667549, 34.059269, 18.919188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923847, 33.781353, 19.049854>,  <41.077625, 33.614605, 19.128254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923847, 33.781353, 19.049854>,  <40.667549, 34.059269, 18.919188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923847, 33.781353, 19.049854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686791, -0.328527, 0.648374,
		-0.343178, -0.639780, -0.687684,
		0.640740, -0.694803, 0.326652,
		41.116070, 33.572918, 19.147854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408920, 33.407768, 18.723469>,  <40.667549, 34.059269, 18.919188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408920, 33.407768, 18.723469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646526, 33.366928, 19.042648>,  <40.789089, 33.342422, 19.234156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646526, 33.366928, 19.042648>,  <40.408920, 33.407768, 18.723469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646526, 33.366928, 19.042648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762998, -0.385826, 0.518625,
		0.254919, -0.916904, -0.307087,
		0.594011, -0.102100, 0.797951,
		40.824730, 33.336300, 19.282034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259842, 32.654396, 19.012114>,  <40.408920, 33.407768, 18.723469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259842, 32.654396, 19.012114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422585, 32.910061, 19.273170>,  <40.520229, 33.063457, 19.429806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422585, 32.910061, 19.273170>,  <40.259842, 32.654396, 19.012114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422585, 32.910061, 19.273170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700329, -0.240481, 0.672093,
		0.586523, -0.730510, 0.349781,
		0.406855, 0.639159, 0.652644,
		40.544640, 33.101810, 19.468964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435684, 32.312634, 19.716518>,  <40.259842, 32.654396, 19.012114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435684, 32.312634, 19.716518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288158, 32.682270, 19.676476>,  <40.199642, 32.904053, 19.652451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288158, 32.682270, 19.676476>,  <40.435684, 32.312634, 19.716518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288158, 32.682270, 19.676476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852456, -0.293346, 0.432744,
		0.370531, 0.244940, 0.895942,
		-0.368817, 0.924096, -0.100107,
		40.177513, 32.959499, 19.646444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025581, 32.508247, 20.377438>,  <40.435684, 32.312634, 19.716518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025581, 32.508247, 20.377438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908749, 32.695827, 20.044025>,  <39.838650, 32.808376, 19.843979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908749, 32.695827, 20.044025>,  <40.025581, 32.508247, 20.377438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908749, 32.695827, 20.044025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945179, -0.008468, 0.326443,
		0.146027, 0.883184, 0.445715,
		-0.292084, 0.468949, -0.833531,
		39.821125, 32.836514, 19.793966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592136, 33.142887, 20.489281>,  <40.025581, 32.508247, 20.377438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592136, 33.142887, 20.489281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489647, 32.980595, 20.138344>,  <39.428154, 32.883217, 19.927782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489647, 32.980595, 20.138344>,  <39.592136, 33.142887, 20.489281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489647, 32.980595, 20.138344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959927, 0.000209, 0.280249,
		-0.113523, 0.913991, -0.389528,
		-0.256226, -0.405733, -0.877342,
		39.412781, 32.858875, 19.875141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128483, 33.576015, 20.060022>,  <39.592136, 33.142887, 20.489281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128483, 33.576015, 20.060022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076942, 33.182121, 20.013222>,  <39.046021, 32.945786, 19.985142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076942, 33.182121, 20.013222>,  <39.128483, 33.576015, 20.060022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076942, 33.182121, 20.013222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973219, 0.102918, 0.205553,
		-0.190374, 0.140355, -0.971627,
		-0.128848, -0.984738, -0.117003,
		39.038288, 32.886700, 19.978121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479301, 33.469902, 19.592337>,  <39.128483, 33.576015, 20.060022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479301, 33.469902, 19.592337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570423, 33.197819, 19.871025>,  <38.625095, 33.034569, 20.038239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570423, 33.197819, 19.871025>,  <38.479301, 33.469902, 19.592337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570423, 33.197819, 19.871025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936428, 0.043047, 0.348209,
		-0.266848, -0.731751, -0.627163,
		0.227805, -0.680211, 0.696719,
		38.638763, 32.993755, 20.080040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383034, 33.337196, 20.345068>,  <38.479301, 33.469902, 19.592337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383034, 33.337196, 20.345068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121044, 33.515705, 20.588985>,  <37.963848, 33.622810, 20.735336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121044, 33.515705, 20.588985>,  <38.383034, 33.337196, 20.345068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121044, 33.515705, 20.588985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287869, -0.893487, 0.344691,
		0.698667, 0.050225, 0.713682,
		-0.654978, 0.446272, 0.609792,
		37.924549, 33.649586, 20.771923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498631, 33.148430, 21.112837>,  <38.383034, 33.337196, 20.345068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498631, 33.148430, 21.112837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118591, 33.273182, 21.109917>,  <37.890568, 33.348034, 21.108166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118591, 33.273182, 21.109917>,  <38.498631, 33.148430, 21.112837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118591, 33.273182, 21.109917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280081, -0.842463, 0.460229,
		0.137385, 0.439306, 0.887770,
		-0.950095, 0.311876, -0.007299,
		37.833565, 33.366745, 21.107727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279778, 32.813953, 21.637556>,  <38.498631, 33.148430, 21.112837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279778, 32.813953, 21.637556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933510, 32.957218, 21.497650>,  <37.725750, 33.043175, 21.413708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933510, 32.957218, 21.497650>,  <38.279778, 32.813953, 21.637556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933510, 32.957218, 21.497650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500351, -0.596503, 0.627561,
		0.016132, 0.718266, 0.695581,
		-0.865673, 0.358158, -0.349763,
		37.673809, 33.064667, 21.392721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804371, 33.008797, 22.245409>,  <38.279778, 32.813953, 21.637556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804371, 33.008797, 22.245409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591331, 32.932724, 21.915520>,  <37.463509, 32.887081, 21.717587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591331, 32.932724, 21.915520>,  <37.804371, 33.008797, 22.245409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591331, 32.932724, 21.915520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575745, -0.632821, 0.517741,
		-0.620368, 0.750578, 0.227542,
		-0.532598, -0.190183, -0.824724,
		37.431553, 32.875668, 21.668102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055637, 33.035725, 22.353750>,  <37.804371, 33.008797, 22.245409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055637, 33.035725, 22.353750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067432, 32.807934, 22.025158>,  <37.074509, 32.671261, 21.828003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067432, 32.807934, 22.025158>,  <37.055637, 33.035725, 22.353750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067432, 32.807934, 22.025158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512278, -0.714310, 0.476793,
		-0.858313, 0.406765, -0.312795,
		0.029490, -0.569476, -0.821479,
		37.076279, 32.637093, 21.778715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470947, 32.685555, 22.404087>,  <37.055637, 33.035725, 22.353750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470947, 32.685555, 22.404087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661522, 32.460419, 22.133911>,  <36.775867, 32.325336, 21.971806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661522, 32.460419, 22.133911>,  <36.470947, 32.685555, 22.404087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661522, 32.460419, 22.133911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592220, -0.773253, 0.226615,
		-0.649834, 0.292041, -0.701732,
		0.476435, -0.562842, -0.675439,
		36.804451, 32.291565, 21.931280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907448, 32.359104, 22.032568>,  <36.470947, 32.685555, 22.404087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907448, 32.359104, 22.032568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216690, 32.118309, 21.952652>,  <36.402237, 31.973831, 21.904703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216690, 32.118309, 21.952652>,  <35.907448, 32.359104, 22.032568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216690, 32.118309, 21.952652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585628, -0.798453, 0.139690,
		-0.243614, 0.009007, -0.969831,
		0.773106, -0.601990, -0.199789,
		36.448624, 31.937712, 21.892715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549110, 31.834152, 21.681740>,  <35.907448, 32.359104, 22.032568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549110, 31.834152, 21.681740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901508, 31.677586, 21.788052>,  <36.112949, 31.583647, 21.851839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901508, 31.677586, 21.788052>,  <35.549110, 31.834152, 21.681740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901508, 31.677586, 21.788052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425866, -0.900778, 0.085064,
		0.206114, -0.188128, -0.960273,
		0.880996, -0.391415, 0.265781,
		36.165806, 31.560162, 21.867786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493931, 31.004522, 21.608297>,  <35.549110, 31.834152, 21.681740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493931, 31.004522, 21.608297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818775, 30.997448, 21.841595>,  <36.013680, 30.993204, 21.981573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818775, 30.997448, 21.841595>,  <35.493931, 31.004522, 21.608297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818775, 30.997448, 21.841595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229846, -0.928425, 0.291888,
		0.536334, -0.371100, -0.758044,
		0.812106, -0.017684, 0.583241,
		36.062408, 30.992144, 22.016567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769371, 30.336693, 21.556023>,  <35.493931, 31.004522, 21.608297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769371, 30.336693, 21.556023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887657, 30.495811, 21.903427>,  <35.958630, 30.591284, 22.111870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887657, 30.495811, 21.903427>,  <35.769371, 30.336693, 21.556023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887657, 30.495811, 21.903427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210445, -0.859707, 0.465420,
		0.931807, -0.320406, -0.170515,
		0.295716, 0.397798, 0.868509,
		35.976372, 30.615150, 22.163980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861076, 29.784325, 21.822994>,  <35.769371, 30.336693, 21.556023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861076, 29.784325, 21.822994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931538, 30.019936, 22.138466>,  <35.973816, 30.161303, 22.327749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931538, 30.019936, 22.138466>,  <35.861076, 29.784325, 21.822994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931538, 30.019936, 22.138466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125034, -0.781328, 0.611468,
		0.976389, -0.206327, -0.063988,
		0.176158, 0.589030, 0.788678,
		35.984386, 30.196644, 22.375069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270481, 29.438974, 22.247229>,  <35.861076, 29.784325, 21.822994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270481, 29.438974, 22.247229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078018, 29.706619, 22.473778>,  <35.962540, 29.867207, 22.609707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078018, 29.706619, 22.473778>,  <36.270481, 29.438974, 22.247229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078018, 29.706619, 22.473778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209756, -0.715184, 0.666719,
		0.851169, 0.201998, 0.484467,
		-0.481159, 0.669110, 0.566372,
		35.933670, 29.907352, 22.643690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550293, 29.275290, 22.865881>,  <36.270481, 29.438974, 22.247229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550293, 29.275290, 22.865881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216656, 29.488380, 22.923130>,  <36.016472, 29.616234, 22.957479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216656, 29.488380, 22.923130>,  <36.550293, 29.275290, 22.865881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216656, 29.488380, 22.923130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212902, -0.550263, 0.807393,
		0.508875, 0.642973, 0.572392,
		-0.834098, 0.532725, 0.143124,
		35.966427, 29.648197, 22.966068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525707, 29.441511, 23.552155>,  <36.550293, 29.275290, 22.865881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525707, 29.441511, 23.552155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143028, 29.478123, 23.441624>,  <35.913422, 29.500090, 23.375305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143028, 29.478123, 23.441624>,  <36.525707, 29.441511, 23.552155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143028, 29.478123, 23.441624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287886, -0.437964, 0.851651,
		-0.043069, 0.894321, 0.445349,
		-0.956695, 0.091530, -0.276326,
		35.856018, 29.505581, 23.358727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258755, 29.799437, 24.003252>,  <36.525707, 29.441511, 23.552155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258755, 29.799437, 24.003252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970924, 29.568882, 23.848343>,  <35.798225, 29.430550, 23.755398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970924, 29.568882, 23.848343>,  <36.258755, 29.799437, 24.003252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970924, 29.568882, 23.848343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319486, -0.220373, 0.921610,
		-0.616549, 0.786901, -0.025572,
		-0.719581, -0.576387, -0.387275,
		35.755051, 29.395966, 23.732161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696136, 29.887688, 24.479210>,  <36.258755, 29.799437, 24.003252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696136, 29.887688, 24.479210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558510, 29.564152, 24.288464>,  <35.475933, 29.370029, 24.174015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558510, 29.564152, 24.288464>,  <35.696136, 29.887688, 24.479210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558510, 29.564152, 24.288464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232486, -0.418672, 0.877875,
		-0.909709, 0.412908, -0.043995,
		-0.344062, -0.808839, -0.476865,
		35.455292, 29.321501, 24.145405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051933, 29.698648, 24.818132>,  <35.696136, 29.887688, 24.479210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051933, 29.698648, 24.818132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200912, 29.387337, 24.615917>,  <35.290298, 29.200550, 24.494587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200912, 29.387337, 24.615917>,  <35.051933, 29.698648, 24.818132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200912, 29.387337, 24.615917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171114, -0.592979, 0.786826,
		-0.912144, -0.206543, -0.354025,
		0.372443, -0.778277, -0.505540,
		35.312645, 29.153854, 24.464256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583359, 29.197357, 24.964323>,  <35.051933, 29.698648, 24.818132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583359, 29.197357, 24.964323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904484, 28.997776, 24.833767>,  <35.097160, 28.878027, 24.755434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904484, 28.997776, 24.833767>,  <34.583359, 29.197357, 24.964323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904484, 28.997776, 24.833767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097249, -0.649676, 0.753965,
		-0.588240, -0.573556, -0.570095,
		0.802818, -0.498953, -0.326388,
		35.145329, 28.848089, 24.735851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385685, 28.495714, 24.696653>,  <34.583359, 29.197357, 24.964323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385685, 28.495714, 24.696653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773262, 28.482399, 24.794670>,  <35.005810, 28.474411, 24.853479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773262, 28.482399, 24.794670>,  <34.385685, 28.495714, 24.696653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773262, 28.482399, 24.794670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157861, -0.845989, 0.509296,
		0.190349, -0.532161, -0.824968,
		0.968941, -0.033286, 0.245041,
		35.063946, 28.472412, 24.868183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571316, 27.757957, 24.715961>,  <34.385685, 28.495714, 24.696653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571316, 27.757957, 24.715961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849018, 27.946259, 24.933731>,  <35.015640, 28.059238, 25.064392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849018, 27.946259, 24.933731>,  <34.571316, 27.757957, 24.715961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849018, 27.946259, 24.933731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062246, -0.792870, 0.606204,
		0.717028, -0.386975, -0.579760,
		0.694260, 0.470753, 0.544422,
		35.057297, 28.087484, 25.097057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826843, 27.213821, 25.145218>,  <34.571316, 27.757957, 24.715961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826843, 27.213821, 25.145218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000858, 27.539173, 25.299702>,  <35.105267, 27.734385, 25.392391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000858, 27.539173, 25.299702>,  <34.826843, 27.213821, 25.145218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000858, 27.539173, 25.299702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210056, -0.508769, 0.834883,
		0.875569, -0.282078, -0.392188,
		0.435036, 0.813379, 0.386210,
		35.131371, 27.783186, 25.415565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550583, 27.097492, 25.323298>,  <34.826843, 27.213821, 25.145218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550583, 27.097492, 25.323298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445782, 27.412685, 25.546165>,  <35.382900, 27.601801, 25.679886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445782, 27.412685, 25.546165>,  <35.550583, 27.097492, 25.323298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445782, 27.412685, 25.546165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151321, -0.536653, 0.830124,
		0.953129, 0.301810, 0.021369,
		-0.262007, 0.787981, 0.557169,
		35.367180, 27.649080, 25.713316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964436, 27.035543, 25.832079>,  <35.550583, 27.097492, 25.323298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964436, 27.035543, 25.832079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682026, 27.286705, 25.963085>,  <35.512581, 27.437403, 26.041689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682026, 27.286705, 25.963085>,  <35.964436, 27.035543, 25.832079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682026, 27.286705, 25.963085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098761, -0.370653, 0.923506,
		0.701268, 0.684362, 0.199677,
		-0.706023, 0.627905, 0.327515,
		35.470219, 27.475077, 26.061340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244251, 27.416014, 26.391722>,  <35.964436, 27.035543, 25.832079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244251, 27.416014, 26.391722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858906, 27.487434, 26.471771>,  <35.627697, 27.530287, 26.519802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858906, 27.487434, 26.471771>,  <36.244251, 27.416014, 26.391722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858906, 27.487434, 26.471771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095450, -0.469073, 0.877986,
		0.250640, 0.864922, 0.434845,
		-0.963363, 0.178553, 0.200126,
		35.569897, 27.541000, 26.531809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146721, 27.855486, 27.048414>,  <36.244251, 27.416014, 26.391722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146721, 27.855486, 27.048414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804008, 27.657978, 26.988930>,  <35.598381, 27.539473, 26.953239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804008, 27.657978, 26.988930>,  <36.146721, 27.855486, 27.048414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804008, 27.657978, 26.988930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011804, -0.307079, 0.951611,
		-0.515541, 0.813569, 0.268929,
		-0.856784, -0.493769, -0.148709,
		35.546974, 27.509848, 26.944317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664799, 27.966183, 27.637367>,  <36.146721, 27.855486, 27.048414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664799, 27.966183, 27.637367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526356, 27.638676, 27.454140>,  <35.443291, 27.442171, 27.344202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526356, 27.638676, 27.454140>,  <35.664799, 27.966183, 27.637367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526356, 27.638676, 27.454140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098603, -0.453797, 0.885633,
		-0.932999, 0.351690, 0.076329,
		-0.346107, -0.818769, -0.458070,
		35.422523, 27.393045, 27.316719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954544, 27.829914, 27.883612>,  <35.664799, 27.966183, 27.637367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954544, 27.829914, 27.883612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133820, 27.500126, 27.745407>,  <35.241383, 27.302252, 27.662485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133820, 27.500126, 27.745407>,  <34.954544, 27.829914, 27.883612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133820, 27.500126, 27.745407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106162, -0.432856, 0.895190,
		-0.887615, -0.364530, -0.281527,
		0.448184, -0.824472, -0.345510,
		35.268276, 27.252785, 27.641754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697659, 27.364222, 28.304220>,  <34.954544, 27.829914, 27.883612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697659, 27.364222, 28.304220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969238, 27.133877, 28.122051>,  <35.132187, 26.995670, 28.012749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969238, 27.133877, 28.122051>,  <34.697659, 27.364222, 28.304220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969238, 27.133877, 28.122051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042988, -0.650427, 0.758351,
		-0.732930, -0.495301, -0.466359,
		0.678945, -0.575866, -0.455425,
		35.172924, 26.961117, 27.985424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417660, 26.677162, 28.296824>,  <34.697659, 27.364222, 28.304220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417660, 26.677162, 28.296824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812119, 26.629326, 28.250843>,  <35.048794, 26.600624, 28.223255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812119, 26.629326, 28.250843>,  <34.417660, 26.677162, 28.296824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812119, 26.629326, 28.250843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026684, -0.798322, 0.601640,
		-0.163716, -0.590237, -0.790454,
		0.986147, -0.119591, -0.114949,
		35.107964, 26.593449, 28.216358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623699, 25.915373, 28.198765>,  <34.417660, 26.677162, 28.296824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623699, 25.915373, 28.198765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972034, 26.081028, 28.304695>,  <35.181034, 26.180422, 28.368254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972034, 26.081028, 28.304695>,  <34.623699, 25.915373, 28.198765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972034, 26.081028, 28.304695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187652, -0.778001, 0.599585,
		0.454344, -0.472446, -0.755226,
		0.870838, 0.414137, 0.264825,
		35.233284, 26.205269, 28.384142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205868, 25.432646, 28.007507>,  <34.623699, 25.915373, 28.198765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205868, 25.432646, 28.007507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292019, 25.680897, 28.309086>,  <35.343712, 25.829847, 28.490032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292019, 25.680897, 28.309086>,  <35.205868, 25.432646, 28.007507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292019, 25.680897, 28.309086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168074, -0.784105, 0.597437,
		0.961957, -0.001959, -0.273193,
		0.215382, 0.620625, 0.753946,
		35.356632, 25.867085, 28.535269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607082, 25.064001, 28.333136>,  <35.205868, 25.432646, 28.007507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607082, 25.064001, 28.333136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571709, 25.340370, 28.620136>,  <35.550484, 25.506191, 28.792336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571709, 25.340370, 28.620136>,  <35.607082, 25.064001, 28.333136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571709, 25.340370, 28.620136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198078, -0.693739, 0.692453,
		0.976189, 0.203356, -0.075508,
		-0.088432, 0.690922, 0.717501,
		35.545177, 25.547647, 28.835386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154346, 24.895658, 28.822121>,  <35.607082, 25.064001, 28.333136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154346, 24.895658, 28.822121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892269, 25.123142, 29.021034>,  <35.735023, 25.259632, 29.140383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892269, 25.123142, 29.021034>,  <36.154346, 24.895658, 28.822121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892269, 25.123142, 29.021034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237913, -0.469430, 0.850313,
		0.717023, 0.675429, 0.172263,
		-0.655192, 0.568711, 0.497285,
		35.695713, 25.293755, 29.170219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468643, 25.175558, 29.565020>,  <36.154346, 24.895658, 28.822121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468643, 25.175558, 29.565020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069195, 25.188808, 29.581341>,  <35.829525, 25.196758, 29.591133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069195, 25.188808, 29.581341>,  <36.468643, 25.175558, 29.565020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069195, 25.188808, 29.581341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023878, -0.405641, 0.913721,
		0.046817, 0.913432, 0.404289,
		-0.998618, 0.033124, 0.040802,
		35.769608, 25.198746, 29.593582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351723, 25.231909, 30.298000>,  <36.468643, 25.175558, 29.565020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351723, 25.231909, 30.298000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967606, 25.172745, 30.203381>,  <35.737133, 25.137247, 30.146608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967606, 25.172745, 30.203381>,  <36.351723, 25.231909, 30.298000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967606, 25.172745, 30.203381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184034, -0.301396, 0.935570,
		-0.209675, 0.941957, 0.262209,
		-0.960296, -0.147910, -0.236548,
		35.679516, 25.128372, 30.132416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874531, 25.532814, 30.776560>,  <36.351723, 25.231909, 30.298000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874531, 25.532814, 30.776560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668282, 25.225937, 30.623959>,  <35.544533, 25.041811, 30.532398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668282, 25.225937, 30.623959>,  <35.874531, 25.532814, 30.776560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668282, 25.225937, 30.623959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278201, -0.271226, 0.921434,
		-0.810392, 0.581248, -0.073583,
		-0.515624, -0.767194, -0.381503,
		35.513596, 24.995779, 30.509508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337608, 25.475143, 31.330610>,  <35.874531, 25.532814, 30.776560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337608, 25.475143, 31.330610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321907, 25.133011, 31.123974>,  <35.312485, 24.927731, 30.999992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321907, 25.133011, 31.123974>,  <35.337608, 25.475143, 31.330610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321907, 25.133011, 31.123974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395724, -0.461414, 0.794040,
		-0.917530, 0.235596, -0.320364,
		-0.039252, -0.855332, -0.516592,
		35.310131, 24.876411, 30.968996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701660, 25.203251, 31.456955>,  <35.337608, 25.475143, 31.330610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701660, 25.203251, 31.456955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940269, 24.896004, 31.363869>,  <35.083435, 24.711655, 31.308018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940269, 24.896004, 31.363869>,  <34.701660, 25.203251, 31.456955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940269, 24.896004, 31.363869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455002, -0.562502, 0.690337,
		-0.661164, -0.305914, -0.685040,
		0.596520, -0.768120, -0.232714,
		35.119225, 24.665567, 31.294054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264790, 24.603159, 31.454058>,  <34.701660, 25.203251, 31.456955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264790, 24.603159, 31.454058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629307, 24.440701, 31.481167>,  <34.848019, 24.343225, 31.497433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629307, 24.440701, 31.481167>,  <34.264790, 24.603159, 31.454058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629307, 24.440701, 31.481167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338372, -0.644871, 0.685307,
		-0.234631, -0.647447, -0.725094,
		0.911292, -0.406146, 0.067771,
		34.902695, 24.318857, 31.501497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125061, 23.842690, 31.493340>,  <34.264790, 24.603159, 31.454058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125061, 23.842690, 31.493340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489670, 23.910137, 31.643375>,  <34.708435, 23.950605, 31.733397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489670, 23.910137, 31.643375>,  <34.125061, 23.842690, 31.493340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489670, 23.910137, 31.643375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221546, -0.567071, 0.793315,
		0.346472, -0.806225, -0.479541,
		0.911523, 0.168621, 0.375090,
		34.763126, 23.960724, 31.755903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385555, 23.231966, 31.616121>,  <34.125061, 23.842690, 31.493340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385555, 23.231966, 31.616121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588909, 23.470604, 31.864513>,  <34.710922, 23.613787, 32.013550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588909, 23.470604, 31.864513>,  <34.385555, 23.231966, 31.616121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588909, 23.470604, 31.864513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193898, -0.623300, 0.757563,
		0.839016, -0.505540, -0.201197,
		0.508385, 0.596596, 0.620982,
		34.741425, 23.649582, 32.050808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888489, 22.874399, 31.925541>,  <34.385555, 23.231966, 31.616121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888489, 22.874399, 31.925541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774216, 23.157845, 32.183613>,  <34.705654, 23.327911, 32.338455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774216, 23.157845, 32.183613>,  <34.888489, 22.874399, 31.925541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774216, 23.157845, 32.183613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153913, -0.698422, 0.698940,
		0.945885, 0.100372, 0.308589,
		-0.285679, 0.708613, 0.645178,
		34.688511, 23.370428, 32.377167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127628, 22.879147, 32.594463>,  <34.888489, 22.874399, 31.925541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127628, 22.879147, 32.594463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770649, 23.056587, 32.627316>,  <34.556461, 23.163052, 32.647026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770649, 23.056587, 32.627316>,  <35.127628, 22.879147, 32.594463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770649, 23.056587, 32.627316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169752, -0.498859, 0.849896,
		0.417986, 0.744551, 0.520511,
		-0.892453, 0.443602, 0.082127,
		34.502914, 23.189669, 32.651955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082336, 22.891886, 33.259407>,  <35.127628, 22.879147, 32.594463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082336, 22.891886, 33.259407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709080, 22.901207, 33.115910>,  <34.485126, 22.906799, 33.029812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709080, 22.901207, 33.115910>,  <35.082336, 22.891886, 33.259407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709080, 22.901207, 33.115910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327875, -0.464420, 0.822686,
		-0.147435, 0.885309, 0.441012,
		-0.933146, 0.023304, -0.358742,
		34.429134, 22.908197, 33.008286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652515, 23.235519, 33.755005>,  <35.082336, 22.891886, 33.259407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652515, 23.235519, 33.755005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464153, 22.942936, 33.557739>,  <34.351135, 22.767385, 33.439381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464153, 22.942936, 33.557739>,  <34.652515, 23.235519, 33.755005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464153, 22.942936, 33.557739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346287, -0.360896, 0.865933,
		-0.811375, 0.578554, -0.083344,
		-0.470910, -0.731457, -0.493168,
		34.322880, 22.723499, 33.409790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051140, 23.219189, 33.841339>,  <34.652515, 23.235519, 33.755005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051140, 23.219189, 33.841339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171398, 22.839867, 33.800674>,  <34.243553, 22.612274, 33.776276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171398, 22.839867, 33.800674>,  <34.051140, 23.219189, 33.841339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171398, 22.839867, 33.800674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229787, -0.175472, 0.957292,
		-0.925642, -0.264442, -0.270662,
		0.300642, -0.948304, -0.101659,
		34.261589, 22.555376, 33.770176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426815, 22.866085, 34.422688>,  <34.051140, 23.219189, 33.841339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426815, 22.866085, 34.422688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550446, 22.732956, 34.779045>,  <34.624626, 22.653078, 34.992859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550446, 22.732956, 34.779045>,  <34.426815, 22.866085, 34.422688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550446, 22.732956, 34.779045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814637, -0.576039, 0.067425,
		0.490751, -0.746597, -0.449174,
		0.309081, -0.332825, 0.890897,
		34.643169, 22.633108, 35.046314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609711, 23.475672, 34.771099>,  <34.426815, 22.866085, 34.422688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609711, 23.475672, 34.771099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397545, 23.650341, 35.061749>,  <34.270245, 23.755142, 35.236137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397545, 23.650341, 35.061749>,  <34.609711, 23.475672, 34.771099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397545, 23.650341, 35.061749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164330, 0.893832, -0.417204,
		-0.831658, -0.101886, -0.545861,
		-0.530415, 0.436673, 0.726620,
		34.238419, 23.781343, 35.279736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034008, 23.928101, 34.475136>,  <34.609711, 23.475672, 34.771099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034008, 23.928101, 34.475136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224346, 24.084267, 34.790386>,  <34.338551, 24.177965, 34.979538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224346, 24.084267, 34.790386>,  <34.034008, 23.928101, 34.475136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224346, 24.084267, 34.790386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156324, 0.844272, -0.512608,
		-0.865525, 0.367126, 0.340712,
		0.475846, 0.390414, 0.788129,
		34.367100, 24.201391, 35.026825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727642, 24.609425, 34.620518>,  <34.034008, 23.928101, 34.475136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727642, 24.609425, 34.620518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111767, 24.565582, 34.723114>,  <34.342243, 24.539276, 34.784672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111767, 24.565582, 34.723114>,  <33.727642, 24.609425, 34.620518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111767, 24.565582, 34.723114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227818, 0.838783, -0.494512,
		-0.160940, 0.533319, 0.830463,
		0.960311, -0.109608, 0.256493,
		34.399860, 24.532700, 34.800060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780678, 25.276344, 34.930256>,  <33.727642, 24.609425, 34.620518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780678, 25.276344, 34.930256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120945, 25.105770, 34.807285>,  <34.325108, 25.003426, 34.733505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120945, 25.105770, 34.807285>,  <33.780678, 25.276344, 34.930256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120945, 25.105770, 34.807285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286295, 0.866263, -0.409418,
		0.440899, 0.260267, 0.858993,
		0.850672, -0.426438, -0.307422,
		34.376148, 24.977839, 34.715057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268776, 25.672861, 35.156979>,  <33.780678, 25.276344, 34.930256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268776, 25.672861, 35.156979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447590, 25.480797, 34.855091>,  <34.554878, 25.365559, 34.673958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447590, 25.480797, 34.855091>,  <34.268776, 25.672861, 35.156979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447590, 25.480797, 34.855091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411852, 0.859455, -0.302847,
		0.794064, -0.175449, 0.581963,
		0.447036, -0.480162, -0.754721,
		34.581699, 25.336748, 34.628674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880486, 26.018160, 35.200676>,  <34.268776, 25.672861, 35.156979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880486, 26.018160, 35.200676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868389, 25.856655, 34.834930>,  <34.861130, 25.759752, 34.615482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868389, 25.856655, 34.834930>,  <34.880486, 26.018160, 35.200676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868389, 25.856655, 34.834930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238734, 0.885389, -0.398865,
		0.970614, -0.230352, 0.069616,
		-0.030242, -0.403764, -0.914363,
		34.859318, 25.735525, 34.560623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484646, 26.253429, 34.757339>,  <34.880486, 26.018160, 35.200676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484646, 26.253429, 34.757339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200993, 26.142170, 34.498180>,  <35.030800, 26.075415, 34.342686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200993, 26.142170, 34.498180>,  <35.484646, 26.253429, 34.757339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200993, 26.142170, 34.498180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091279, 0.874950, -0.475532,
		0.699141, -0.396355, -0.595067,
		-0.709133, -0.278146, -0.647892,
		34.988255, 26.058725, 34.303814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773300, 26.534693, 34.222134>,  <35.484646, 26.253429, 34.757339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773300, 26.534693, 34.222134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394215, 26.454872, 34.122528>,  <35.166763, 26.406981, 34.062763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394215, 26.454872, 34.122528>,  <35.773300, 26.534693, 34.222134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394215, 26.454872, 34.122528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005974, 0.791313, -0.611382,
		0.319053, -0.577930, -0.751133,
		-0.947718, -0.199551, -0.249018,
		35.109898, 26.395006, 34.047821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657055, 26.571421, 33.424431>,  <35.773300, 26.534693, 34.222134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657055, 26.571421, 33.424431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294861, 26.599613, 33.591827>,  <35.077545, 26.616528, 33.692265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294861, 26.599613, 33.591827>,  <35.657055, 26.571421, 33.424431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294861, 26.599613, 33.591827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177408, 0.832954, -0.524133,
		-0.385525, -0.548836, -0.741720,
		-0.905482, 0.070479, 0.418492,
		35.023216, 26.620756, 33.717377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154865, 26.410194, 32.914303>,  <35.657055, 26.571421, 33.424431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154865, 26.410194, 32.914303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011349, 26.637325, 33.210640>,  <34.925240, 26.773603, 33.388443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011349, 26.637325, 33.210640>,  <35.154865, 26.410194, 32.914303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011349, 26.637325, 33.210640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185379, 0.734527, -0.652767,
		-0.914826, -0.371540, -0.158275,
		-0.358787, 0.567828, 0.740840,
		34.903713, 26.807674, 33.432892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531437, 26.570438, 32.717186>,  <35.154865, 26.410194, 32.914303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531437, 26.570438, 32.717186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615200, 26.853313, 32.987309>,  <34.665459, 27.023039, 33.149380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615200, 26.853313, 32.987309>,  <34.531437, 26.570438, 32.717186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615200, 26.853313, 32.987309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368022, 0.696836, -0.615613,
		-0.905929, -0.119610, 0.406185,
		0.209411, 0.707187, 0.675303,
		34.678024, 27.065470, 33.189899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005203, 27.008234, 32.662472>,  <34.531437, 26.570438, 32.717186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005203, 27.008234, 32.662472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294277, 27.219509, 32.840790>,  <34.467724, 27.346275, 32.947781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294277, 27.219509, 32.840790>,  <34.005203, 27.008234, 32.662472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294277, 27.219509, 32.840790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181036, 0.767125, -0.615423,
		-0.667043, 0.364053, 0.650014,
		0.722689, 0.528190, 0.445799,
		34.511086, 27.377966, 32.974529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714520, 27.604044, 32.908310>,  <34.005203, 27.008234, 32.662472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714520, 27.604044, 32.908310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090683, 27.739880, 32.901302>,  <34.316383, 27.821381, 32.897099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090683, 27.739880, 32.901302>,  <33.714520, 27.604044, 32.908310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090683, 27.739880, 32.901302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269372, 0.712544, -0.647857,
		-0.207525, 0.613970, 0.761560,
		0.940410, 0.339590, -0.017516,
		34.372807, 27.841757, 32.896049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656731, 28.221479, 32.534512>,  <33.714520, 27.604044, 32.908310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656731, 28.221479, 32.534512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056488, 28.207561, 32.535606>,  <34.296341, 28.199211, 32.536263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056488, 28.207561, 32.535606>,  <33.656731, 28.221479, 32.534512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056488, 28.207561, 32.535606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026108, 0.693148, -0.720323,
		0.023164, 0.719955, 0.693634,
		0.999391, -0.034795, 0.002741,
		34.356304, 28.197123, 32.536430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879635, 28.910233, 32.723965>,  <33.656731, 28.221479, 32.534512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879635, 28.910233, 32.723965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173031, 28.721577, 32.528191>,  <34.349068, 28.608383, 32.410725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173031, 28.721577, 32.528191>,  <33.879635, 28.910233, 32.723965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173031, 28.721577, 32.528191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052437, 0.757197, -0.651078,
		0.677677, 0.451893, 0.580127,
		0.733488, -0.471641, -0.489439,
		34.393078, 28.580084, 32.381359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385918, 29.488066, 32.605389>,  <33.879635, 28.910233, 32.723965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385918, 29.488066, 32.605389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474571, 29.178104, 32.368607>,  <34.527763, 28.992128, 32.226540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474571, 29.178104, 32.368607>,  <34.385918, 29.488066, 32.605389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474571, 29.178104, 32.368607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251055, 0.631928, -0.733238,
		0.942259, 0.013895, 0.334597,
		0.221630, -0.774902, -0.591952,
		34.541061, 28.945633, 32.191021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985947, 29.606947, 32.274204>,  <34.385918, 29.488066, 32.605389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985947, 29.606947, 32.274204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799870, 29.338387, 32.043442>,  <34.688225, 29.177250, 31.904984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799870, 29.338387, 32.043442>,  <34.985947, 29.606947, 32.274204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799870, 29.338387, 32.043442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287706, 0.501659, -0.815821,
		0.837153, -0.545490, -0.040200,
		-0.465189, -0.671401, -0.576906,
		34.660313, 29.136967, 31.870371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346195, 29.625023, 31.562254>,  <34.985947, 29.606947, 32.274204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346195, 29.625023, 31.562254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020149, 29.411327, 31.472649>,  <34.824524, 29.283110, 31.418884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020149, 29.411327, 31.472649>,  <35.346195, 29.625023, 31.562254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020149, 29.411327, 31.472649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102005, 0.248293, -0.963299,
		0.570253, -0.808047, -0.147892,
		-0.815112, -0.534238, -0.224015,
		34.775616, 29.251057, 31.405445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521030, 29.254963, 31.016010>,  <35.346195, 29.625023, 31.562254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521030, 29.254963, 31.016010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121330, 29.265007, 31.004272>,  <34.881508, 29.271032, 30.997229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121330, 29.265007, 31.004272>,  <35.521030, 29.254963, 31.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121330, 29.265007, 31.004272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035048, 0.270265, -0.962148,
		-0.016228, -0.962459, -0.270943,
		-0.999254, 0.025110, -0.029346,
		34.821552, 29.272539, 30.995468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350445, 28.997627, 30.393194>,  <35.521030, 29.254963, 31.016010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350445, 28.997627, 30.393194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000641, 29.169651, 30.482895>,  <34.790760, 29.272865, 30.536715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000641, 29.169651, 30.482895>,  <35.350445, 28.997627, 30.393194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000641, 29.169651, 30.482895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103466, 0.286299, -0.952537,
		-0.473849, -0.856203, -0.205875,
		-0.874507, 0.430058, 0.224250,
		34.738289, 29.298668, 30.550171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818542, 28.729031, 29.892475>,  <35.350445, 28.997627, 30.393194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818542, 28.729031, 29.892475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684402, 29.064510, 30.064114>,  <34.603920, 29.265799, 30.167097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684402, 29.064510, 30.064114>,  <34.818542, 28.729031, 29.892475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684402, 29.064510, 30.064114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012122, 0.451590, -0.892143,
		-0.942017, -0.304379, -0.141272,
		-0.335346, 0.838701, 0.429096,
		34.583797, 29.316120, 30.192842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197891, 28.851849, 29.493492>,  <34.818542, 28.729031, 29.892475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197891, 28.851849, 29.493492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367828, 29.177662, 29.651505>,  <34.469791, 29.373150, 29.746313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367828, 29.177662, 29.651505>,  <34.197891, 28.851849, 29.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367828, 29.177662, 29.651505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011066, 0.441010, -0.897434,
		-0.905201, 0.376894, 0.196373,
		0.424840, 0.814531, 0.395032,
		34.495281, 29.422022, 29.770014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142368, 29.308416, 29.036665>,  <34.197891, 28.851849, 29.493492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142368, 29.308416, 29.036665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380127, 29.533909, 29.266064>,  <34.522781, 29.669205, 29.403704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380127, 29.533909, 29.266064>,  <34.142368, 29.308416, 29.036665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380127, 29.533909, 29.266064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009385, 0.708241, -0.705908,
		-0.804119, 0.424970, 0.415684,
		0.594395, 0.563733, 0.573498,
		34.558445, 29.703030, 29.438112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967110, 30.005407, 28.885212>,  <34.142368, 29.308416, 29.036665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967110, 30.005407, 28.885212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336075, 29.979374, 29.037483>,  <34.557453, 29.963755, 29.128847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336075, 29.979374, 29.037483>,  <33.967110, 30.005407, 28.885212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336075, 29.979374, 29.037483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318339, 0.686218, -0.654037,
		-0.218662, 0.724478, 0.653696,
		0.922414, -0.065084, 0.380680,
		34.612801, 29.959848, 29.151688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285484, 30.677502, 28.838350>,  <33.967110, 30.005407, 28.885212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285484, 30.677502, 28.838350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596802, 30.428448, 28.870800>,  <34.783592, 30.279015, 28.890270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596802, 30.428448, 28.870800>,  <34.285484, 30.677502, 28.838350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596802, 30.428448, 28.870800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450588, 0.463857, -0.762763,
		0.437293, 0.630208, 0.641570,
		0.778296, -0.622635, 0.081123,
		34.830292, 30.241657, 28.895136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753391, 31.143375, 28.830059>,  <34.285484, 30.677502, 28.838350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753391, 31.143375, 28.830059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928898, 30.793415, 28.748055>,  <35.034203, 30.583439, 28.698853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928898, 30.793415, 28.748055>,  <34.753391, 31.143375, 28.830059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928898, 30.793415, 28.748055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455386, 0.413169, -0.788616,
		0.774665, 0.252660, 0.579704,
		0.438767, -0.874903, -0.205010,
		35.060528, 30.530945, 28.686552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480568, 31.289742, 28.761969>,  <34.753391, 31.143375, 28.830059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480568, 31.289742, 28.761969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445496, 30.941761, 28.567856>,  <35.424454, 30.732973, 28.451387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445496, 30.941761, 28.567856>,  <35.480568, 31.289742, 28.761969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445496, 30.941761, 28.567856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546466, 0.365307, -0.753609,
		0.832879, -0.331268, 0.443367,
		-0.087681, -0.869950, -0.485283,
		35.419189, 30.680777, 28.422272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264194, 31.090361, 28.499868>,  <35.480568, 31.289742, 28.761969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264194, 31.090361, 28.499868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989983, 30.897362, 28.281788>,  <35.825455, 30.781563, 28.150940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989983, 30.897362, 28.281788>,  <36.264194, 31.090361, 28.499868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989983, 30.897362, 28.281788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291074, 0.504766, -0.812704,
		0.667326, -0.715828, -0.205591,
		-0.685531, -0.482496, -0.545202,
		35.784325, 30.752613, 28.118227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589890, 31.179924, 27.873137>,  <36.264194, 31.090361, 28.499868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589890, 31.179924, 27.873137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221497, 31.055283, 27.779587>,  <36.000462, 30.980497, 27.723457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221497, 31.055283, 27.779587>,  <36.589890, 31.179924, 27.873137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221497, 31.055283, 27.779587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091707, 0.410039, -0.907446,
		0.378656, -0.857190, -0.349063,
		-0.920983, -0.311598, -0.233874,
		35.945202, 30.961802, 27.709423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689297, 30.971411, 27.271116>,  <36.589890, 31.179924, 27.873137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689297, 30.971411, 27.271116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294590, 31.029179, 27.300583>,  <36.057766, 31.063839, 27.318262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294590, 31.029179, 27.300583>,  <36.689297, 30.971411, 27.271116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294590, 31.029179, 27.300583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019853, 0.343328, -0.939006,
		-0.160904, -0.928046, -0.335918,
		-0.986770, 0.144421, 0.073667,
		35.998558, 31.072504, 27.322683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382347, 30.631668, 26.682447>,  <36.689297, 30.971411, 27.271116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382347, 30.631668, 26.682447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119190, 30.905678, 26.807617>,  <35.961296, 31.070084, 26.882719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119190, 30.905678, 26.807617>,  <36.382347, 30.631668, 26.682447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119190, 30.905678, 26.807617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112500, 0.321454, -0.940219,
		-0.744665, -0.653763, -0.134415,
		-0.657889, 0.685026, 0.312924,
		35.921822, 31.111185, 26.901495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993355, 30.780018, 26.101759>,  <36.382347, 30.631668, 26.682447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993355, 30.780018, 26.101759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884819, 31.085419, 26.336174>,  <35.819698, 31.268660, 26.476824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884819, 31.085419, 26.336174>,  <35.993355, 30.780018, 26.101759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884819, 31.085419, 26.336174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030857, 0.601667, -0.798150,
		-0.961989, -0.234652, -0.139696,
		-0.271338, 0.763501, 0.586038,
		35.803417, 31.314468, 26.511986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579903, 31.157669, 25.652531>,  <35.993355, 30.780018, 26.101759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579903, 31.157669, 25.652531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670383, 31.398563, 25.958771>,  <35.724670, 31.543100, 26.142515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670383, 31.398563, 25.958771>,  <35.579903, 31.157669, 25.652531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670383, 31.398563, 25.958771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069586, 0.773974, -0.629382,
		-0.971592, 0.195643, 0.133168,
		0.226202, 0.602236, 0.765601,
		35.738243, 31.579235, 26.188452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204498, 31.744482, 25.538536>,  <35.579903, 31.157669, 25.652531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204498, 31.744482, 25.538536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521935, 31.831165, 25.765957>,  <35.712399, 31.883175, 25.902409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521935, 31.831165, 25.765957>,  <35.204498, 31.744482, 25.538536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521935, 31.831165, 25.765957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280362, 0.699075, -0.657793,
		-0.540008, 0.681419, 0.494023,
		0.793592, 0.216708, 0.568550,
		35.760014, 31.896177, 25.936522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305107, 32.489731, 25.442652>,  <35.204498, 31.744482, 25.538536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305107, 32.489731, 25.442652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655495, 32.371601, 25.595207>,  <35.865726, 32.300724, 25.686741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655495, 32.371601, 25.595207>,  <35.305107, 32.489731, 25.442652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655495, 32.371601, 25.595207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451513, 0.780224, -0.432881,
		-0.169728, 0.551394, 0.816797,
		0.875973, -0.295322, 0.381388,
		35.918285, 32.283005, 25.709623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652576, 33.105309, 25.755360>,  <35.305107, 32.489731, 25.442652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652576, 33.105309, 25.755360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948071, 32.837845, 25.721527>,  <36.125366, 32.677364, 25.701227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948071, 32.837845, 25.721527>,  <35.652576, 33.105309, 25.755360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948071, 32.837845, 25.721527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565481, 0.683188, -0.462044,
		0.366737, 0.293501, 0.882815,
		0.738739, -0.668663, -0.084581,
		36.169693, 32.637245, 25.696154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295967, 33.520042, 25.894005>,  <35.652576, 33.105309, 25.755360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295967, 33.520042, 25.894005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404648, 33.208179, 25.668331>,  <36.469856, 33.021061, 25.532927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404648, 33.208179, 25.668331>,  <36.295967, 33.520042, 25.894005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404648, 33.208179, 25.668331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376940, 0.625615, -0.683024,
		0.885491, -0.027085, 0.463866,
		0.271702, -0.779661, -0.564186,
		36.486160, 32.974281, 25.499075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817787, 33.741356, 25.665531>,  <36.295967, 33.520042, 25.894005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817787, 33.741356, 25.665531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754028, 33.432102, 25.419979>,  <36.715775, 33.246548, 25.272648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754028, 33.432102, 25.419979>,  <36.817787, 33.741356, 25.665531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754028, 33.432102, 25.419979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276701, 0.561920, -0.779540,
		0.947644, -0.294118, 0.124359,
		-0.159397, -0.773137, -0.613882,
		36.706211, 33.200161, 25.235815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381516, 33.769348, 25.211384>,  <36.817787, 33.741356, 25.665531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381516, 33.769348, 25.211384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072479, 33.573040, 25.050266>,  <36.887058, 33.455254, 24.953596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072479, 33.573040, 25.050266>,  <37.381516, 33.769348, 25.211384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072479, 33.573040, 25.050266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116005, 0.514620, -0.849535,
		0.624213, -0.703071, -0.340661,
		-0.772594, -0.490772, -0.402792,
		36.840702, 33.425808, 24.929428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645813, 33.536961, 24.587976>,  <37.381516, 33.769348, 25.211384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645813, 33.536961, 24.587976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246674, 33.558407, 24.572906>,  <37.007191, 33.571274, 24.563864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246674, 33.558407, 24.572906>,  <37.645813, 33.536961, 24.587976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246674, 33.558407, 24.572906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060012, 0.516808, -0.853996,
		-0.026314, -0.854421, -0.518914,
		-0.997851, 0.053613, -0.037676,
		36.947319, 33.574490, 24.561604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451363, 33.311058, 23.882597>,  <37.645813, 33.536961, 24.587976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451363, 33.311058, 23.882597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138966, 33.516148, 24.025238>,  <36.951527, 33.639202, 24.110823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138966, 33.516148, 24.025238>,  <37.451363, 33.311058, 23.882597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138966, 33.516148, 24.025238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046419, 0.521747, -0.851836,
		-0.622812, -0.681832, -0.383681,
		-0.780994, 0.512724, 0.356601,
		36.904667, 33.669964, 24.132217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960522, 33.323566, 23.392504>,  <37.451363, 33.311058, 23.882597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960522, 33.323566, 23.392504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868973, 33.652061, 23.601574>,  <36.814045, 33.849159, 23.727016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868973, 33.652061, 23.601574>,  <36.960522, 33.323566, 23.392504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868973, 33.652061, 23.601574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035189, 0.529597, -0.847519,
		-0.972821, -0.212363, -0.092310,
		-0.228868, 0.821236, 0.522676,
		36.800312, 33.898434, 23.758377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656811, 33.751987, 22.898752>,  <36.960522, 33.323566, 23.392504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656811, 33.751987, 22.898752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678959, 34.004330, 23.208321>,  <36.692245, 34.155735, 23.394062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678959, 34.004330, 23.208321>,  <36.656811, 33.751987, 22.898752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678959, 34.004330, 23.208321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065921, 0.771109, -0.633282,
		-0.996288, 0.086080, 0.001107,
		0.055367, 0.630858, 0.773921,
		36.695568, 34.193588, 23.440496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162560, 34.232697, 22.853447>,  <36.656811, 33.751987, 22.898752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162560, 34.232697, 22.853447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451981, 34.406200, 23.068233>,  <36.625633, 34.510303, 23.197105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451981, 34.406200, 23.068233>,  <36.162560, 34.232697, 22.853447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451981, 34.406200, 23.068233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042796, 0.748217, -0.662073,
		-0.688945, 0.502022, 0.522808,
		0.723549, 0.433757, 0.536965,
		36.669044, 34.536327, 23.229322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978928, 34.900383, 22.884766>,  <36.162560, 34.232697, 22.853447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978928, 34.900383, 22.884766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373386, 34.911797, 22.950123>,  <36.610062, 34.918644, 22.989338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373386, 34.911797, 22.950123>,  <35.978928, 34.900383, 22.884766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373386, 34.911797, 22.950123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071469, 0.815852, -0.573827,
		-0.149679, 0.577556, 0.802512,
		0.986148, 0.028535, 0.163393,
		36.669231, 34.920357, 22.999142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958088, 35.398590, 23.448147>,  <35.978928, 34.900383, 22.884766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958088, 35.398590, 23.448147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632229, 35.514717, 23.247322>,  <35.436714, 35.584393, 23.126827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632229, 35.514717, 23.247322>,  <35.958088, 35.398590, 23.448147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632229, 35.514717, 23.247322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556417, -0.147118, 0.817775,
		0.163554, 0.945553, 0.281388,
		-0.814647, 0.290320, -0.502060,
		35.387836, 35.601814, 23.096704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530491, 35.777348, 23.932907>,  <35.958088, 35.398590, 23.448147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530491, 35.777348, 23.932907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280464, 35.655064, 23.645622>,  <35.130447, 35.581692, 23.473251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280464, 35.655064, 23.645622>,  <35.530491, 35.777348, 23.932907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280464, 35.655064, 23.645622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654807, -0.295459, 0.695652,
		-0.424871, 0.905121, -0.015500,
		-0.625069, -0.305712, -0.718212,
		35.092945, 35.563351, 23.430159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814030, 36.020931, 23.991121>,  <35.530491, 35.777348, 23.932907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814030, 36.020931, 23.991121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770977, 35.682880, 23.781673>,  <34.745144, 35.480049, 23.656004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770977, 35.682880, 23.781673>,  <34.814030, 36.020931, 23.991121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770977, 35.682880, 23.781673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731168, -0.289583, 0.617685,
		-0.673653, 0.449338, -0.586760,
		-0.107633, -0.845125, -0.523620,
		34.738686, 35.429344, 23.624588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179062, 35.977985, 23.833450>,  <34.814030, 36.020931, 23.991121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179062, 35.977985, 23.833450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308132, 35.599586, 23.845932>,  <34.385574, 35.372547, 23.853420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308132, 35.599586, 23.845932>,  <34.179062, 35.977985, 23.833450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308132, 35.599586, 23.845932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833459, -0.268354, 0.483044,
		-0.448585, -0.181871, -0.875040,
		0.322672, -0.945996, 0.031202,
		34.404934, 35.315788, 23.855293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501354, 35.594261, 23.886728>,  <34.179062, 35.977985, 23.833450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501354, 35.594261, 23.886728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756420, 35.304440, 23.991337>,  <33.909462, 35.130547, 24.054102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756420, 35.304440, 23.991337>,  <33.501354, 35.594261, 23.886728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756420, 35.304440, 23.991337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648387, -0.321556, 0.690070,
		-0.415902, -0.609603, -0.674841,
		0.637667, -0.724559, 0.261522,
		33.947720, 35.087070, 24.069794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088558, 35.021732, 24.033581>,  <33.501354, 35.594261, 23.886728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088558, 35.021732, 24.033581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440231, 34.922688, 24.196415>,  <33.651237, 34.863262, 24.294115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440231, 34.922688, 24.196415>,  <33.088558, 35.021732, 24.033581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440231, 34.922688, 24.196415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474448, -0.376190, 0.795852,
		-0.043918, -0.892844, -0.448219,
		0.879187, -0.247609, 0.407087,
		33.703987, 34.848404, 24.318541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003967, 34.256535, 24.153521>,  <33.088558, 35.021732, 24.033581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003967, 34.256535, 24.153521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278954, 34.432228, 24.384853>,  <33.443947, 34.537643, 24.523653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278954, 34.432228, 24.384853>,  <33.003967, 34.256535, 24.153521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278954, 34.432228, 24.384853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447642, -0.370783, 0.813717,
		0.571846, -0.818288, -0.058282,
		0.687466, 0.439231, 0.578331,
		33.485195, 34.563999, 24.558353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343628, 33.707436, 24.636316>,  <33.003967, 34.256535, 24.153521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343628, 33.707436, 24.636316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442711, 34.048706, 24.819939>,  <33.502159, 34.253468, 24.930113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442711, 34.048706, 24.819939>,  <33.343628, 33.707436, 24.636316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442711, 34.048706, 24.819939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269929, -0.394286, 0.878451,
		0.930474, -0.341508, 0.132631,
		0.247703, 0.853177, 0.459056,
		33.517021, 34.304661, 24.957655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804390, 33.448574, 25.127653>,  <33.343628, 33.707436, 24.636316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804390, 33.448574, 25.127653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692600, 33.810974, 25.254814>,  <33.625526, 34.028416, 25.331110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692600, 33.810974, 25.254814>,  <33.804390, 33.448574, 25.127653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692600, 33.810974, 25.254814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187006, -0.376116, 0.907505,
		0.941767, 0.194172, 0.274541,
		-0.279472, 0.905999, 0.317902,
		33.608757, 34.082775, 25.350185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143826, 33.565029, 25.739679>,  <33.804390, 33.448574, 25.127653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143826, 33.565029, 25.739679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855186, 33.840801, 25.764927>,  <33.682003, 34.006264, 25.780075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855186, 33.840801, 25.764927>,  <34.143826, 33.565029, 25.739679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855186, 33.840801, 25.764927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204478, -0.299344, 0.931978,
		0.661425, 0.659608, 0.356979,
		-0.721600, 0.689427, 0.063118,
		33.638706, 34.047630, 25.783863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310448, 33.897308, 26.359287>,  <34.143826, 33.565029, 25.739679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310448, 33.897308, 26.359287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920231, 33.975342, 26.318768>,  <33.686100, 34.022163, 26.294455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920231, 33.975342, 26.318768>,  <34.310448, 33.897308, 26.359287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920231, 33.975342, 26.318768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189118, -0.509960, 0.839151,
		0.112046, 0.837784, 0.534381,
		-0.975541, 0.195085, -0.101301,
		33.627567, 34.033867, 26.288378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090626, 34.059456, 27.026827>,  <34.310448, 33.897308, 26.359287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090626, 34.059456, 27.026827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769714, 33.930401, 26.825928>,  <33.577168, 33.852966, 26.705387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769714, 33.930401, 26.825928>,  <34.090626, 34.059456, 27.026827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769714, 33.930401, 26.825928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232390, -0.606179, 0.760619,
		-0.549861, 0.726945, 0.411345,
		-0.802277, -0.322642, -0.502249,
		33.529030, 33.833607, 26.675253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392014, 34.123486, 27.446898>,  <34.090626, 34.059456, 27.026827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392014, 34.123486, 27.446898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245678, 33.865173, 27.178829>,  <33.157875, 33.710186, 27.017988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245678, 33.865173, 27.178829>,  <33.392014, 34.123486, 27.446898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245678, 33.865173, 27.178829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237048, -0.631682, 0.738096,
		-0.899982, 0.428890, 0.078016,
		-0.365843, -0.645780, -0.670170,
		33.135925, 33.671440, 26.977777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857361, 33.853241, 27.781282>,  <33.392014, 34.123486, 27.446898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857361, 33.853241, 27.781282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926807, 33.586491, 27.491417>,  <32.968475, 33.426441, 27.317497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926807, 33.586491, 27.491417>,  <32.857361, 33.853241, 27.781282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926807, 33.586491, 27.491417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202364, -0.744294, 0.636455,
		-0.963799, 0.036149, -0.264170,
		0.173613, -0.666873, -0.724665,
		32.978889, 33.386429, 27.274017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238979, 33.377621, 27.691877>,  <32.857361, 33.853241, 27.781282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238979, 33.377621, 27.691877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579075, 33.201237, 27.576881>,  <32.783134, 33.095406, 27.507885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579075, 33.201237, 27.576881>,  <32.238979, 33.377621, 27.691877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579075, 33.201237, 27.576881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179515, -0.756298, 0.629117,
		-0.494839, -0.483292, -0.722193,
		0.850240, -0.440956, -0.287488,
		32.834148, 33.068951, 27.490635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973421, 32.706249, 27.679819>,  <32.238979, 33.377621, 27.691877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973421, 32.706249, 27.679819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371941, 32.697163, 27.712982>,  <32.611053, 32.691711, 27.732880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371941, 32.697163, 27.712982>,  <31.973421, 32.706249, 27.679819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371941, 32.697163, 27.712982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070967, -0.761603, 0.644146,
		0.048514, -0.647645, -0.760396,
		0.996298, -0.022713, 0.082910,
		32.670830, 32.690350, 27.737856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126305, 32.053658, 27.592138>,  <31.973421, 32.706249, 27.679819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126305, 32.053658, 27.592138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477856, 32.178810, 27.736179>,  <32.688786, 32.253902, 27.822603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477856, 32.178810, 27.736179>,  <32.126305, 32.053658, 27.592138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477856, 32.178810, 27.736179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107583, -0.865417, 0.489366,
		0.464751, -0.391354, -0.794260,
		0.878881, 0.312883, 0.360101,
		32.741520, 32.272675, 27.844210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461121, 31.384092, 27.740580>,  <32.126305, 32.053658, 27.592138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461121, 31.384092, 27.740580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657574, 31.667332, 27.943512>,  <32.775444, 31.837276, 28.065271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657574, 31.667332, 27.943512>,  <32.461121, 31.384092, 27.740580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657574, 31.667332, 27.943512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067959, -0.611785, 0.788099,
		0.868431, -0.352581, -0.348588,
		0.491130, 0.708100, 0.507333,
		32.804913, 31.879761, 28.095711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015533, 31.060499, 28.028864>,  <32.461121, 31.384092, 27.740580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015533, 31.060499, 28.028864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900631, 31.373913, 28.249249>,  <32.831688, 31.561960, 28.381479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900631, 31.373913, 28.249249>,  <33.015533, 31.060499, 28.028864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900631, 31.373913, 28.249249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223024, -0.614107, 0.757055,
		0.931527, 0.094594, 0.351155,
		-0.287260, 0.783533, 0.550961,
		32.814453, 31.608973, 28.414537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380291, 31.015232, 28.710495>,  <33.015533, 31.060499, 28.028864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380291, 31.015232, 28.710495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063622, 31.249805, 28.779022>,  <32.873619, 31.390549, 28.820139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063622, 31.249805, 28.779022>,  <33.380291, 31.015232, 28.710495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063622, 31.249805, 28.779022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243248, -0.559791, 0.792126,
		0.560430, 0.585433, 0.585821,
		-0.791674, 0.586432, 0.171318,
		32.826118, 31.425735, 28.830418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422665, 31.214521, 29.343864>,  <33.380291, 31.015232, 28.710495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422665, 31.214521, 29.343864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036518, 31.247314, 29.244793>,  <32.804829, 31.266991, 29.185350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036518, 31.247314, 29.244793>,  <33.422665, 31.214521, 29.343864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036518, 31.247314, 29.244793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245660, -0.605300, 0.757141,
		-0.087847, 0.791764, 0.604477,
		-0.965367, 0.081983, -0.247679,
		32.746906, 31.271910, 29.170488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130825, 31.236742, 29.951681>,  <33.422665, 31.214521, 29.343864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130825, 31.236742, 29.951681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828678, 31.145054, 29.706120>,  <32.647388, 31.090040, 29.558783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828678, 31.145054, 29.706120>,  <33.130825, 31.236742, 29.951681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828678, 31.145054, 29.706120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290025, -0.723137, 0.626863,
		-0.587628, 0.651559, 0.479753,
		-0.755366, -0.229222, -0.613905,
		32.602070, 31.076286, 29.521948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499844, 31.203682, 30.344709>,  <33.130825, 31.236742, 29.951681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499844, 31.203682, 30.344709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430244, 30.972466, 30.025814>,  <32.388485, 30.833735, 29.834476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430244, 30.972466, 30.025814>,  <32.499844, 31.203682, 30.344709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430244, 30.972466, 30.025814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508089, -0.640806, 0.575511,
		-0.843546, 0.505208, -0.182197,
		-0.174000, -0.578042, -0.797240,
		32.378044, 30.799053, 29.786642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786825, 30.972021, 30.452793>,  <32.499844, 31.203682, 30.344709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786825, 30.972021, 30.452793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941031, 30.710388, 30.192467>,  <32.033554, 30.553410, 30.036272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941031, 30.710388, 30.192467>,  <31.786825, 30.972021, 30.452793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941031, 30.710388, 30.192467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239309, -0.752076, 0.614094,
		-0.891129, -0.080995, -0.446462,
		0.385512, -0.654080, -0.650815,
		32.056683, 30.514164, 29.997223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329287, 30.432232, 30.501768>,  <31.786825, 30.972021, 30.452793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329287, 30.432232, 30.501768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655088, 30.274406, 30.331638>,  <31.850571, 30.179710, 30.229561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655088, 30.274406, 30.331638>,  <31.329287, 30.432232, 30.501768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655088, 30.274406, 30.331638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169103, -0.862748, 0.476519,
		-0.554962, -0.316205, -0.769436,
		0.814507, -0.394564, -0.425322,
		31.899441, 30.156036, 30.204042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115984, 29.763945, 30.254181>,  <31.329287, 30.432232, 30.501768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115984, 29.763945, 30.254181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513195, 29.760971, 30.301231>,  <31.751522, 29.759186, 30.329462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513195, 29.760971, 30.301231>,  <31.115984, 29.763945, 30.254181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513195, 29.760971, 30.301231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057958, -0.899808, 0.432419,
		0.102626, -0.436223, -0.893967,
		0.993030, -0.007435, 0.117627,
		31.811104, 29.758741, 30.336519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348503, 29.053085, 30.091515>,  <31.115984, 29.763945, 30.254181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348503, 29.053085, 30.091515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661903, 29.182571, 30.303677>,  <31.849943, 29.260263, 30.430975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661903, 29.182571, 30.303677>,  <31.348503, 29.053085, 30.091515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661903, 29.182571, 30.303677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042725, -0.879627, 0.473741,
		0.619919, -0.348515, -0.703021,
		0.783502, 0.323717, 0.530407,
		31.896954, 29.279686, 30.462799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865147, 28.496880, 30.107679>,  <31.348503, 29.053085, 30.091515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865147, 28.496880, 30.107679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971636, 28.721481, 30.421070>,  <32.035530, 28.856243, 30.609104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971636, 28.721481, 30.421070>,  <31.865147, 28.496880, 30.107679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971636, 28.721481, 30.421070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095373, -0.793478, 0.601080,
		0.959182, -0.234744, -0.157689,
		0.266222, 0.561506, 0.783478,
		32.051502, 28.889933, 30.656113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402836, 28.165447, 30.444197>,  <31.865147, 28.496880, 30.107679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402836, 28.165447, 30.444197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276260, 28.407448, 30.736454>,  <32.200314, 28.552649, 30.911808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276260, 28.407448, 30.736454>,  <32.402836, 28.165447, 30.444197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276260, 28.407448, 30.736454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021372, -0.774575, 0.632120,
		0.948371, 0.184414, 0.258038,
		-0.316442, 0.605000, 0.730643,
		32.181328, 28.588947, 30.955647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825638, 27.931490, 31.013283>,  <32.402836, 28.165447, 30.444197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825638, 27.931490, 31.013283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524632, 28.136662, 31.178509>,  <32.344028, 28.259764, 31.277645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524632, 28.136662, 31.178509>,  <32.825638, 27.931490, 31.013283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524632, 28.136662, 31.178509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043170, -0.664284, 0.746233,
		0.657156, 0.543721, 0.522028,
		-0.752517, 0.512927, 0.413066,
		32.298878, 28.290539, 31.302429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938023, 28.055178, 31.810848>,  <32.825638, 27.931490, 31.013283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938023, 28.055178, 31.810848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547279, 28.122261, 31.757744>,  <32.312836, 28.162512, 31.725882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547279, 28.122261, 31.757744>,  <32.938023, 28.055178, 31.810848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547279, 28.122261, 31.757744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209341, -0.622199, 0.754350,
		0.043910, 0.764684, 0.642908,
		-0.976856, 0.167711, -0.132759,
		32.254223, 28.172575, 31.717916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560551, 28.355240, 32.507000>,  <32.938023, 28.055178, 31.810848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560551, 28.355240, 32.507000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318687, 28.168442, 32.248913>,  <32.173569, 28.056364, 32.094059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318687, 28.168442, 32.248913>,  <32.560551, 28.355240, 32.507000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318687, 28.168442, 32.248913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311886, -0.606568, 0.731301,
		-0.732882, 0.643422, 0.221117,
		-0.604658, -0.466994, -0.645218,
		32.137291, 28.028343, 32.055347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156773, 28.008614, 32.983955>,  <32.560551, 28.355240, 32.507000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156773, 28.008614, 32.983955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018688, 27.843357, 32.646873>,  <31.935839, 27.744204, 32.444626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018688, 27.843357, 32.646873>,  <32.156773, 28.008614, 32.983955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018688, 27.843357, 32.646873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345723, -0.778781, 0.523426,
		-0.872529, 0.472032, 0.126009,
		-0.345207, -0.413140, -0.842702,
		31.915127, 27.719416, 32.394062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492151, 27.747118, 33.149223>,  <32.156773, 28.008614, 32.983955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492151, 27.747118, 33.149223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614981, 27.517296, 32.845753>,  <31.688679, 27.379402, 32.663670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614981, 27.517296, 32.845753>,  <31.492151, 27.747118, 33.149223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614981, 27.517296, 32.845753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306958, -0.814383, 0.492501,
		-0.900824, 0.081649, -0.426438,
		0.307072, -0.574556, -0.758679,
		31.707102, 27.344929, 32.618149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943077, 27.293621, 32.940609>,  <31.492151, 27.747118, 33.149223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943077, 27.293621, 32.940609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276676, 27.127346, 32.795475>,  <31.476835, 27.027580, 32.708393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276676, 27.127346, 32.795475>,  <30.943077, 27.293621, 32.940609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276676, 27.127346, 32.795475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294525, -0.891457, 0.344325,
		-0.466587, -0.180301, -0.865903,
		0.833997, -0.415688, -0.362839,
		31.526875, 27.002640, 32.686623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687029, 26.683723, 32.817863>,  <30.943077, 27.293621, 32.940609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687029, 26.683723, 32.817863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077681, 26.600616, 32.795845>,  <31.312071, 26.550753, 32.782635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077681, 26.600616, 32.795845>,  <30.687029, 26.683723, 32.817863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077681, 26.600616, 32.795845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192681, -0.959795, 0.204127,
		-0.095248, -0.188749, -0.977395,
		0.976628, -0.207768, -0.055051,
		31.370668, 26.538286, 32.779331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777048, 25.995695, 32.515221>,  <30.687029, 26.683723, 32.817863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777048, 25.995695, 32.515221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137608, 26.034500, 32.684013>,  <31.353943, 26.057783, 32.785290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137608, 26.034500, 32.684013>,  <30.777048, 25.995695, 32.515221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137608, 26.034500, 32.684013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022699, -0.962651, 0.269792,
		0.432397, -0.252768, -0.865529,
		0.901398, 0.097010, 0.421985,
		31.408028, 26.063602, 32.810608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209759, 25.502283, 32.139568>,  <30.777048, 25.995695, 32.515221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209759, 25.502283, 32.139568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366770, 25.594463, 32.495728>,  <31.460976, 25.649773, 32.709423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366770, 25.594463, 32.495728>,  <31.209759, 25.502283, 32.139568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366770, 25.594463, 32.495728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155568, -0.937516, 0.311228,
		0.906488, -0.260684, -0.332150,
		0.392528, 0.230452, 0.890401,
		31.484528, 25.663599, 32.762848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721476, 24.954863, 32.224251>,  <31.209759, 25.502283, 32.139568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721476, 24.954863, 32.224251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705667, 24.657440, 31.957249>,  <31.696182, 24.478987, 31.797047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705667, 24.657440, 31.957249>,  <31.721476, 24.954863, 32.224251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705667, 24.657440, 31.957249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715678, 0.445124, -0.538209,
		0.697311, -0.498989, 0.514555,
		-0.039520, -0.743555, -0.667506,
		31.693811, 24.434374, 31.756996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480965, 24.806381, 31.857130>,  <31.721476, 24.954863, 32.224251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480965, 24.806381, 31.857130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208607, 24.655266, 31.606159>,  <32.045193, 24.564596, 31.455578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208607, 24.655266, 31.606159>,  <32.480965, 24.806381, 31.857130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208607, 24.655266, 31.606159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426805, 0.491501, -0.759121,
		0.595170, -0.784666, -0.173414,
		-0.680889, -0.377791, -0.627426,
		32.004341, 24.541929, 31.417931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863232, 24.535975, 31.377705>,  <32.480965, 24.806381, 31.857130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863232, 24.535975, 31.377705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504112, 24.620148, 31.222950>,  <32.288643, 24.670652, 31.130096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504112, 24.620148, 31.222950>,  <32.863232, 24.535975, 31.377705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504112, 24.620148, 31.222950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437990, 0.518624, -0.734298,
		0.046127, -0.828702, -0.557787,
		-0.897796, 0.210434, -0.386886,
		32.234772, 24.683277, 31.106884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056206, 24.453133, 30.711916>,  <32.863232, 24.535975, 31.377705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056206, 24.453133, 30.711916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714333, 24.660370, 30.698639>,  <32.509209, 24.784712, 30.690672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714333, 24.660370, 30.698639>,  <33.056206, 24.453133, 30.711916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714333, 24.660370, 30.698639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336534, 0.504217, -0.795305,
		-0.395304, -0.690903, -0.605300,
		-0.854681, 0.518091, -0.033194,
		32.457928, 24.815798, 30.688681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814590, 24.451473, 30.026066>,  <33.056206, 24.453133, 30.711916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814590, 24.451473, 30.026066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652813, 24.769024, 30.207695>,  <32.555748, 24.959555, 30.316673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652813, 24.769024, 30.207695>,  <32.814590, 24.451473, 30.026066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652813, 24.769024, 30.207695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263703, 0.576634, -0.773275,
		-0.875721, -0.193005, -0.442564,
		-0.404443, 0.793878, 0.454075,
		32.531479, 25.007187, 30.343918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534279, 24.862511, 29.471354>,  <32.814590, 24.451473, 30.026066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534279, 24.862511, 29.471354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550526, 25.121136, 29.776066>,  <32.560272, 25.276310, 29.958893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550526, 25.121136, 29.776066>,  <32.534279, 24.862511, 29.471354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550526, 25.121136, 29.776066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051376, 0.760048, -0.647833,
		-0.997853, 0.065449, -0.002348,
		0.040615, 0.646563, 0.761779,
		32.562710, 25.315104, 30.004599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114243, 25.364960, 29.226614>,  <32.534279, 24.862511, 29.471354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114243, 25.364960, 29.226614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308281, 25.561031, 29.516277>,  <32.424706, 25.678675, 29.690075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308281, 25.561031, 29.516277>,  <32.114243, 25.364960, 29.226614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308281, 25.561031, 29.516277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170799, 0.865281, -0.471292,
		-0.857617, 0.104938, 0.503469,
		0.485099, 0.490180, 0.724156,
		32.453812, 25.708086, 29.733524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714495, 26.048140, 29.345402>,  <32.114243, 25.364960, 29.226614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714495, 26.048140, 29.345402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084366, 26.096363, 29.489864>,  <32.306290, 26.125298, 29.576542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084366, 26.096363, 29.489864>,  <31.714495, 26.048140, 29.345402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084366, 26.096363, 29.489864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062319, 0.887829, -0.455933,
		-0.375612, 0.444099, 0.813444,
		0.924679, 0.120561, 0.361156,
		32.361771, 26.132532, 29.598211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645916, 26.790131, 29.491241>,  <31.714495, 26.048140, 29.345402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645916, 26.790131, 29.491241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023663, 26.658604, 29.488285>,  <32.250309, 26.579687, 29.486511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023663, 26.658604, 29.488285>,  <31.645916, 26.790131, 29.491241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023663, 26.658604, 29.488285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274571, 0.800544, -0.532673,
		0.181069, 0.501009, 0.846289,
		0.944365, -0.328816, -0.007391,
		32.306973, 26.559959, 29.486067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018837, 27.342827, 29.618511>,  <31.645916, 26.790131, 29.491241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018837, 27.342827, 29.618511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274715, 27.110188, 29.417500>,  <32.428242, 26.970604, 29.296892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274715, 27.110188, 29.417500>,  <32.018837, 27.342827, 29.618511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274715, 27.110188, 29.417500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289905, 0.788074, -0.543042,
		0.711863, 0.201694, 0.672734,
		0.639693, -0.581600, -0.502528,
		32.466621, 26.935707, 29.266741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729088, 27.575994, 29.693319>,  <32.018837, 27.342827, 29.618511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729088, 27.575994, 29.693319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711941, 27.371357, 29.350056>,  <32.701653, 27.248575, 29.144098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711941, 27.371357, 29.350056>,  <32.729088, 27.575994, 29.693319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711941, 27.371357, 29.350056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232902, 0.830166, -0.506538,
		0.971555, -0.221581, 0.083563,
		-0.042868, -0.511592, -0.858159,
		32.699081, 27.217880, 29.092607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304283, 27.787733, 29.264383>,  <32.729088, 27.575994, 29.693319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304283, 27.787733, 29.264383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096550, 27.601845, 28.977516>,  <32.971909, 27.490311, 28.805397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096550, 27.601845, 28.977516>,  <33.304283, 27.787733, 29.264383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096550, 27.601845, 28.977516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406169, 0.604134, -0.685601,
		0.751879, -0.647345, -0.124990,
		-0.519331, -0.464722, -0.717167,
		32.940750, 27.462429, 28.762365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731388, 27.712210, 28.625401>,  <33.304283, 27.787733, 29.264383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731388, 27.712210, 28.625401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352428, 27.687088, 28.499870>,  <33.125053, 27.672014, 28.424553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352428, 27.687088, 28.499870>,  <33.731388, 27.712210, 28.625401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352428, 27.687088, 28.499870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169533, 0.733206, -0.658534,
		0.271456, -0.677100, -0.683994,
		-0.947402, -0.062803, -0.313824,
		33.068207, 27.668247, 28.405724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839748, 27.686237, 27.905499>,  <33.731388, 27.712210, 28.625401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839748, 27.686237, 27.905499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469982, 27.817986, 27.982407>,  <33.248123, 27.897034, 28.028551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469982, 27.817986, 27.982407>,  <33.839748, 27.686237, 27.905499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469982, 27.817986, 27.982407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111595, 0.715679, -0.689457,
		-0.364691, -0.615889, -0.698342,
		-0.924417, 0.329370, 0.192272,
		33.192657, 27.916796, 28.040089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546795, 27.770351, 27.272259>,  <33.839748, 27.686237, 27.905499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546795, 27.770351, 27.272259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301601, 27.997623, 27.491867>,  <33.154484, 28.133986, 27.623632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301601, 27.997623, 27.491867>,  <33.546795, 27.770351, 27.272259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301601, 27.997623, 27.491867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015335, 0.686191, -0.727260,
		-0.789945, -0.454219, -0.411913,
		-0.612986, 0.568178, 0.549019,
		33.117706, 28.168077, 27.656572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930775, 27.976395, 26.787516>,  <33.546795, 27.770351, 27.272259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930775, 27.976395, 26.787516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922611, 28.231060, 27.095863>,  <32.917713, 28.383860, 27.280872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922611, 28.231060, 27.095863>,  <32.930775, 27.976395, 26.787516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922611, 28.231060, 27.095863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068750, 0.768312, -0.636372,
		-0.997425, -0.065985, 0.028091,
		-0.020409, 0.636665, 0.770871,
		32.916489, 28.422060, 27.327124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280525, 28.339437, 26.625803>,  <32.930775, 27.976395, 26.787516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280525, 28.339437, 26.625803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483173, 28.563595, 26.887886>,  <32.604763, 28.698090, 27.045135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483173, 28.563595, 26.887886>,  <32.280525, 28.339437, 26.625803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483173, 28.563595, 26.887886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080203, 0.787287, -0.611348,
		-0.858431, 0.257172, 0.443801,
		0.506621, 0.560394, 0.655206,
		32.635159, 28.731712, 27.084448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825745, 28.940104, 26.736637>,  <32.280525, 28.339437, 26.625803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825745, 28.940104, 26.736637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199371, 29.035271, 26.843155>,  <32.423546, 29.092371, 26.907064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199371, 29.035271, 26.843155>,  <31.825745, 28.940104, 26.736637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199371, 29.035271, 26.843155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061115, 0.841226, -0.537219,
		-0.351827, 0.485525, 0.800302,
		0.934068, 0.237919, 0.266293,
		32.479591, 29.106646, 26.923042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852322, 29.572803, 26.560564>,  <31.825745, 28.940104, 26.736637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852322, 29.572803, 26.560564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240139, 29.551785, 26.656250>,  <32.472828, 29.539173, 26.713661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240139, 29.551785, 26.656250>,  <31.852322, 29.572803, 26.560564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240139, 29.551785, 26.656250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145043, 0.910208, -0.387923,
		-0.197351, 0.410805, 0.890108,
		0.969544, -0.052547, 0.239215,
		32.531002, 29.536020, 26.728014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986300, 30.202410, 26.933229>,  <31.852322, 29.572803, 26.560564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986300, 30.202410, 26.933229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328846, 30.065342, 26.778717>,  <32.534374, 29.983101, 26.686008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328846, 30.065342, 26.778717>,  <31.986300, 30.202410, 26.933229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328846, 30.065342, 26.778717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206872, 0.913094, -0.351374,
		0.473117, 0.220994, 0.852832,
		0.856367, -0.342668, -0.386283,
		32.585754, 29.962542, 26.662832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526314, 30.628166, 27.149757>,  <31.986300, 30.202410, 26.933229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526314, 30.628166, 27.149757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632404, 30.463936, 26.800797>,  <32.696060, 30.365398, 26.591419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632404, 30.463936, 26.800797>,  <32.526314, 30.628166, 27.149757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632404, 30.463936, 26.800797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042027, 0.908869, -0.414959,
		0.963270, 0.073393, 0.258310,
		0.265225, -0.410574, -0.872402,
		32.711971, 30.340763, 26.539076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975052, 31.103992, 26.965706>,  <32.526314, 30.628166, 27.149757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975052, 31.103992, 26.965706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913879, 30.901573, 26.626171>,  <32.877174, 30.780121, 26.422449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913879, 30.901573, 26.626171>,  <32.975052, 31.103992, 26.965706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913879, 30.901573, 26.626171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065112, 0.851916, -0.519615,
		0.986090, -0.134735, -0.097333,
		-0.152930, -0.506050, -0.848838,
		32.868000, 30.749758, 26.371519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591557, 31.285488, 26.424786>,  <32.975052, 31.103992, 26.965706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591557, 31.285488, 26.424786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278214, 31.133835, 26.227768>,  <33.090206, 31.042843, 26.109556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278214, 31.133835, 26.227768>,  <33.591557, 31.285488, 26.424786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278214, 31.133835, 26.227768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034184, 0.764950, -0.643181,
		0.620624, -0.520681, -0.586273,
		-0.783362, -0.379133, -0.492546,
		33.043205, 31.020094, 26.080004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802879, 31.385582, 25.685772>,  <33.591557, 31.285488, 26.424786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802879, 31.385582, 25.685772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405563, 31.339340, 25.687004>,  <33.167175, 31.311596, 25.687744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405563, 31.339340, 25.687004>,  <33.802879, 31.385582, 25.685772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405563, 31.339340, 25.687004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080373, 0.670935, -0.737148,
		0.083151, -0.732449, -0.675725,
		-0.993291, -0.115605, 0.003080,
		33.107574, 31.304659, 25.687927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580750, 31.393475, 24.913458>,  <33.802879, 31.385582, 25.685772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580750, 31.393475, 24.913458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244347, 31.455414, 25.120815>,  <33.042507, 31.492579, 25.245230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244347, 31.455414, 25.120815>,  <33.580750, 31.393475, 24.913458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244347, 31.455414, 25.120815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369889, 0.534691, -0.759795,
		-0.394835, -0.830739, -0.392401,
		-0.841004, 0.154849, 0.518395,
		32.992046, 31.501869, 25.276335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065281, 31.321117, 24.382454>,  <33.580750, 31.393475, 24.913458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065281, 31.321117, 24.382454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901142, 31.548069, 24.668026>,  <32.802658, 31.684240, 24.839369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901142, 31.548069, 24.668026>,  <33.065281, 31.321117, 24.382454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901142, 31.548069, 24.668026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410912, 0.583856, -0.700188,
		-0.814103, -0.580685, -0.006443,
		-0.410350, 0.567378, 0.713929,
		32.778038, 31.718283, 24.882204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368713, 31.366526, 24.185804>,  <33.065281, 31.321117, 24.382454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368713, 31.366526, 24.185804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400078, 31.668289, 24.446487>,  <32.418896, 31.849346, 24.602898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400078, 31.668289, 24.446487>,  <32.368713, 31.366526, 24.185804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400078, 31.668289, 24.446487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714932, 0.498149, -0.490632,
		-0.694783, -0.427454, 0.578411,
		0.078412, 0.754407, 0.651706,
		32.423603, 31.894611, 24.642000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574680, 31.470921, 24.312811>,  <32.368713, 31.366526, 24.185804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574680, 31.470921, 24.312811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764326, 31.776077, 24.488632>,  <31.878113, 31.959171, 24.594126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764326, 31.776077, 24.488632>,  <31.574680, 31.470921, 24.312811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764326, 31.776077, 24.488632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711245, 0.626122, -0.319535,
		-0.518986, -0.161135, 0.839458,
		0.474114, 0.762894, 0.439554,
		31.906561, 32.004944, 24.620499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029486, 31.754332, 24.739172>,  <31.574680, 31.470921, 24.312811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029486, 31.754332, 24.739172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311892, 32.016270, 24.631306>,  <31.481335, 32.173431, 24.566586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311892, 32.016270, 24.631306>,  <31.029486, 31.754332, 24.739172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311892, 32.016270, 24.631306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687481, 0.725157, -0.038956,
		0.170039, 0.212893, 0.962166,
		0.706015, 0.654847, -0.269665,
		31.523697, 32.212723, 24.550406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084957, 32.359982, 25.261463>,  <31.029486, 31.754332, 24.739172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084957, 32.359982, 25.261463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231213, 32.475117, 24.907410>,  <31.318966, 32.544197, 24.694979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231213, 32.475117, 24.907410>,  <31.084957, 32.359982, 25.261463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231213, 32.475117, 24.907410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535666, 0.842778, 0.052786,
		0.761164, 0.454835, 0.462335,
		0.365637, 0.287836, -0.885133,
		31.340904, 32.561466, 24.641870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204079, 33.064152, 25.330477>,  <31.084957, 32.359982, 25.261463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204079, 33.064152, 25.330477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182043, 33.042934, 24.931648>,  <31.168821, 33.030205, 24.692350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182043, 33.042934, 24.931648>,  <31.204079, 33.064152, 25.330477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182043, 33.042934, 24.931648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539736, 0.841701, -0.014957,
		0.840030, 0.537332, -0.074993,
		-0.055085, -0.053041, -0.997072,
		31.165518, 33.027023, 24.632526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096558, 33.794254, 25.115025>,  <31.204079, 33.064152, 25.330477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096558, 33.794254, 25.115025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979038, 33.577034, 24.800373>,  <30.908527, 33.446701, 24.611582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979038, 33.577034, 24.800373>,  <31.096558, 33.794254, 25.115025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979038, 33.577034, 24.800373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662343, 0.709011, -0.242086,
		0.689190, 0.449891, -0.567991,
		-0.293800, -0.543048, -0.786626,
		30.890898, 33.414120, 24.564384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010174, 34.256779, 24.578941>,  <31.096558, 33.794254, 25.115025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010174, 34.256779, 24.578941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797823, 33.936554, 24.467754>,  <30.670412, 33.744419, 24.401041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797823, 33.936554, 24.467754>,  <31.010174, 34.256779, 24.578941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797823, 33.936554, 24.467754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763534, 0.594158, -0.252965,
		0.367672, 0.077945, -0.926683,
		-0.530879, -0.800563, -0.277969,
		30.638559, 33.696384, 24.384363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662369, 34.569122, 24.045620>,  <31.010174, 34.256779, 24.578941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662369, 34.569122, 24.045620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460468, 34.224262, 24.063168>,  <30.339329, 34.017345, 24.073696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460468, 34.224262, 24.063168>,  <30.662369, 34.569122, 24.045620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460468, 34.224262, 24.063168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814084, 0.458471, -0.356470,
		0.287219, -0.215640, -0.933276,
		-0.504750, -0.862150, 0.043868,
		30.309044, 33.965618, 24.076328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297308, 34.401325, 23.320877>,  <30.662369, 34.569122, 24.045620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297308, 34.401325, 23.320877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089201, 34.190662, 23.589787>,  <29.964336, 34.064266, 23.751133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089201, 34.190662, 23.589787>,  <30.297308, 34.401325, 23.320877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089201, 34.190662, 23.589787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853362, 0.290077, -0.433162,
		0.033117, -0.799053, -0.600348,
		-0.520266, -0.526659, 0.672275,
		29.933121, 34.032665, 23.791470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828596, 33.992336, 22.905476>,  <30.297308, 34.401325, 23.320877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828596, 33.992336, 22.905476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663773, 33.972130, 23.269379>,  <29.564878, 33.960007, 23.487720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663773, 33.972130, 23.269379>,  <29.828596, 33.992336, 22.905476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663773, 33.972130, 23.269379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899223, 0.183611, -0.397095,
		-0.146983, -0.981700, -0.121080,
		-0.412060, -0.050512, 0.909755,
		29.540154, 33.956978, 23.542305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205566, 33.766750, 22.811958>,  <29.828596, 33.992336, 22.905476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205566, 33.766750, 22.811958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152212, 33.926487, 23.174778>,  <29.120199, 34.022327, 23.392469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152212, 33.926487, 23.174778>,  <29.205566, 33.766750, 22.811958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152212, 33.926487, 23.174778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945042, 0.224411, -0.237772,
		-0.298503, -0.888913, 0.347460,
		-0.133385, 0.399340, 0.907048,
		29.112196, 34.046288, 23.446892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573666, 33.384586, 23.085119>,  <29.205566, 33.766750, 22.811958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573666, 33.384586, 23.085119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592628, 33.733727, 23.279388>,  <28.604006, 33.943211, 23.395950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592628, 33.733727, 23.279388>,  <28.573666, 33.384586, 23.085119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592628, 33.733727, 23.279388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903880, 0.244435, -0.351073,
		-0.425151, -0.422349, 0.800542,
		0.047405, 0.872853, 0.485675,
		28.606850, 33.995583, 23.425091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040449, 33.402054, 23.622404>,  <28.573666, 33.384586, 23.085119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040449, 33.402054, 23.622404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126450, 33.783295, 23.537201>,  <28.178049, 34.012039, 23.486078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126450, 33.783295, 23.537201>,  <28.040449, 33.402054, 23.622404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126450, 33.783295, 23.537201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872090, 0.089194, -0.481149,
		-0.439584, 0.289212, 0.850366,
		0.215001, 0.953100, -0.213010,
		28.190950, 34.069225, 23.473297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360888, 33.739861, 23.625395>,  <28.040449, 33.402054, 23.622404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360888, 33.739861, 23.625395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606323, 34.006313, 23.455795>,  <27.753586, 34.166183, 23.354036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606323, 34.006313, 23.455795>,  <27.360888, 33.739861, 23.625395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606323, 34.006313, 23.455795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719637, 0.250737, -0.647498,
		-0.325006, 0.702424, 0.633223,
		0.613590, 0.666131, -0.424000,
		27.790400, 34.206154, 23.328596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819643, 34.128918, 23.335098>,  <27.360888, 33.739861, 23.625395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819643, 34.128918, 23.335098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151752, 34.187004, 23.119854>,  <27.351017, 34.221855, 22.990707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151752, 34.187004, 23.119854>,  <26.819643, 34.128918, 23.335098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151752, 34.187004, 23.119854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549939, 0.370452, -0.748553,
		0.090641, 0.917430, 0.387436,
		0.830272, 0.145217, -0.538109,
		27.400833, 34.230568, 22.958422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888783, 34.872410, 23.092455>,  <26.819643, 34.128918, 23.335098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888783, 34.872410, 23.092455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100039, 34.639790, 22.844948>,  <27.226791, 34.500217, 22.696444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100039, 34.639790, 22.844948>,  <26.888783, 34.872410, 23.092455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100039, 34.639790, 22.844948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584471, 0.279653, -0.761700,
		0.616004, 0.763936, -0.192201,
		0.528140, -0.581546, -0.618766,
		27.258480, 34.465324, 22.659317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337729, 34.893204, 23.611788>,  <26.888783, 34.872410, 23.092455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337729, 34.893204, 23.611788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488430, 35.236710, 23.472893>,  <26.578850, 35.442814, 23.389555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488430, 35.236710, 23.472893>,  <26.337729, 34.893204, 23.611788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488430, 35.236710, 23.472893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920388, 0.389381, -0.035623,
		0.104616, 0.333013, 0.937101,
		0.376752, 0.858770, -0.347237,
		26.601456, 35.494339, 23.368721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176699, 35.474964, 24.006460>,  <26.337729, 34.893204, 23.611788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176699, 35.474964, 24.006460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235428, 35.594788, 23.629375>,  <26.270666, 35.666679, 23.403124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235428, 35.594788, 23.629375>,  <26.176699, 35.474964, 24.006460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235428, 35.594788, 23.629375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860686, 0.508393, 0.027498,
		0.487506, 0.807343, 0.332467,
		0.146824, 0.299555, -0.942714,
		26.279474, 35.684654, 23.346561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334702, 36.229317, 24.014528>,  <26.176699, 35.474964, 24.006460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334702, 36.229317, 24.014528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138683, 36.044724, 23.718719>,  <26.021072, 35.933968, 23.541235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138683, 36.044724, 23.718719>,  <26.334702, 36.229317, 24.014528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138683, 36.044724, 23.718719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834216, 0.494374, 0.244291,
		0.252864, 0.736634, -0.627240,
		-0.490044, -0.461481, -0.739521,
		25.991671, 35.906281, 23.496862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844608, 36.662220, 23.752268>,  <26.334702, 36.229317, 24.014528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844608, 36.662220, 23.752268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699131, 36.316818, 23.612503>,  <25.611845, 36.109577, 23.528645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699131, 36.316818, 23.612503>,  <25.844608, 36.662220, 23.752268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699131, 36.316818, 23.612503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931039, 0.349006, 0.106586,
		0.029909, 0.364081, -0.930887,
		-0.363691, -0.863505, -0.349412,
		25.590023, 36.057766, 23.507679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310667, 36.663933, 23.207993>,  <25.844608, 36.662220, 23.752268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310667, 36.663933, 23.207993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271498, 36.405201, 23.510521>,  <25.247997, 36.249962, 23.692038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271498, 36.405201, 23.510521>,  <25.310667, 36.663933, 23.207993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271498, 36.405201, 23.510521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879743, 0.411552, 0.238070,
		-0.465256, -0.642057, -0.609343,
		-0.097922, -0.646829, 0.756322,
		25.242121, 36.211151, 23.737417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588053, 36.430775, 23.385107>,  <25.310667, 36.663933, 23.207993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588053, 36.430775, 23.385107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192947, 36.475845, 23.341965>,  <23.955885, 36.502888, 23.316080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192947, 36.475845, 23.341965>,  <24.588053, 36.430775, 23.385107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.192947, 36.475845, 23.341965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042994, -0.468019, -0.882672,
		-0.149931, -0.876506, 0.457446,
		-0.987761, 0.112673, -0.107855,
		23.896620, 36.509647, 23.309608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.317429, 35.702385, 23.273043>,  <24.588053, 36.430775, 23.385107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.317429, 35.702385, 23.273043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037207, 35.949211, 23.129684>,  <23.869074, 36.097309, 23.043669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037207, 35.949211, 23.129684>,  <24.317429, 35.702385, 23.273043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.037207, 35.949211, 23.129684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028133, -0.525732, -0.850185,
		-0.713044, -0.585518, 0.385664,
		-0.700555, 0.617069, -0.358398,
		23.827040, 36.134331, 23.022165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.793867, 35.268093, 22.945938>,  <24.317429, 35.702385, 23.273043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.793867, 35.268093, 22.945938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736692, 35.632526, 22.791279>,  <23.702387, 35.851185, 22.698483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736692, 35.632526, 22.791279>,  <23.793867, 35.268093, 22.945938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.736692, 35.632526, 22.791279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003474, -0.390197, -0.920725,
		-0.989726, -0.132950, 0.052609,
		-0.142939, 0.911082, -0.386650,
		23.693811, 35.905849, 22.675283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.320957, 35.182571, 22.506300>,  <23.793867, 35.268093, 22.945938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.320957, 35.182571, 22.506300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508936, 35.517021, 22.393127>,  <23.621723, 35.717690, 22.325224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508936, 35.517021, 22.393127>,  <23.320957, 35.182571, 22.506300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508936, 35.517021, 22.393127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109338, -0.262923, -0.958601,
		-0.875897, 0.481426, -0.032140,
		0.469946, 0.836123, -0.282932,
		23.649920, 35.767857, 22.308249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.983568, 35.440739, 22.037226>,  <23.320957, 35.182571, 22.506300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.983568, 35.440739, 22.037226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.345480, 35.589085, 21.953476>,  <23.562626, 35.678093, 21.903227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.345480, 35.589085, 21.953476>,  <22.983568, 35.440739, 22.037226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.345480, 35.589085, 21.953476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070098, -0.355237, -0.932144,
		-0.420075, 0.858060, -0.295413,
		0.904778, 0.370863, -0.209375,
		23.616913, 35.700344, 21.890663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.887377, 35.740246, 21.451586>,  <22.983568, 35.440739, 22.037226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.887377, 35.740246, 21.451586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.281004, 35.677654, 21.485355>,  <23.517179, 35.640099, 21.505617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.281004, 35.677654, 21.485355>,  <22.887377, 35.740246, 21.451586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.281004, 35.677654, 21.485355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008331, -0.433725, -0.901007,
		0.177607, 0.887354, -0.425511,
		0.984066, -0.156480, 0.084425,
		23.576223, 35.630711, 21.510683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.000071, 35.822357, 20.776062>,  <22.887377, 35.740246, 21.451586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.000071, 35.822357, 20.776062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.340391, 35.664986, 20.915405>,  <23.544582, 35.570564, 20.999010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.340391, 35.664986, 20.915405>,  <23.000071, 35.822357, 20.776062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.340391, 35.664986, 20.915405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238037, -0.302460, -0.922961,
		0.468484, 0.868177, -0.163682,
		0.850800, -0.393430, 0.348356,
		23.595631, 35.546955, 21.019913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.512779, 35.976208, 20.283485>,  <23.000071, 35.822357, 20.776062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.512779, 35.976208, 20.283485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.627903, 35.645168, 20.476250>,  <23.696978, 35.446545, 20.591908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.627903, 35.645168, 20.476250>,  <23.512779, 35.976208, 20.283485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.627903, 35.645168, 20.476250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210718, -0.436146, -0.874856,
		0.934218, 0.353341, 0.048863,
		0.287811, -0.827603, 0.481911,
		23.714247, 35.396889, 20.620823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.037933, 35.742958, 19.863520>,  <23.512779, 35.976208, 20.283485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.037933, 35.742958, 19.863520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980057, 35.407631, 20.073769>,  <23.945330, 35.206432, 20.199919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.980057, 35.407631, 20.073769>,  <24.037933, 35.742958, 19.863520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.980057, 35.407631, 20.073769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445887, -0.529462, -0.721702,
		0.883317, 0.129943, 0.450407,
		-0.144693, -0.838322, 0.525623,
		23.936649, 35.156136, 20.231455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573198, 35.383156, 19.700396>,  <24.037933, 35.742958, 19.863520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573198, 35.383156, 19.700396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361418, 35.088955, 19.869495>,  <24.234350, 34.912434, 19.970955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361418, 35.088955, 19.869495>,  <24.573198, 35.383156, 19.700396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361418, 35.088955, 19.869495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405595, -0.657146, -0.635336,
		0.745100, -0.164915, 0.646243,
		-0.529452, -0.735502, 0.422750,
		24.202581, 34.868305, 19.996321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015511, 34.803844, 19.708206>,  <24.573198, 35.383156, 19.700396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015511, 34.803844, 19.708206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649418, 34.645790, 19.739761>,  <24.429762, 34.550957, 19.758694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649418, 34.645790, 19.739761>,  <25.015511, 34.803844, 19.708206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649418, 34.645790, 19.739761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270450, -0.747550, -0.606651,
		0.298680, -0.533891, 0.791044,
		-0.915231, -0.395132, 0.078888,
		24.374849, 34.527252, 19.763428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033928, 34.129555, 19.887838>,  <25.015511, 34.803844, 19.708206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033928, 34.129555, 19.887838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688215, 34.170242, 19.690792>,  <24.480787, 34.194656, 19.572563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.688215, 34.170242, 19.690792>,  <25.033928, 34.129555, 19.887838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688215, 34.170242, 19.690792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209376, -0.817717, -0.536190,
		-0.457362, -0.566561, 0.685440,
		-0.864281, 0.101719, -0.492617,
		24.428930, 34.200756, 19.543007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928873, 33.484959, 19.816355>,  <25.033928, 34.129555, 19.887838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.928873, 33.484959, 19.816355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674149, 33.632912, 19.545753>,  <24.521315, 33.721684, 19.383392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674149, 33.632912, 19.545753>,  <24.928873, 33.484959, 19.816355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.674149, 33.632912, 19.545753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166287, -0.790877, -0.588950,
		-0.752877, -0.487542, 0.442130,
		-0.636809, 0.369886, -0.676505,
		24.483105, 33.743877, 19.342802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.485233, 32.931374, 19.599215>,  <24.928873, 33.484959, 19.816355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.485233, 32.931374, 19.599215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446825, 33.206238, 19.311161>,  <24.423780, 33.371155, 19.138329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446825, 33.206238, 19.311161>,  <24.485233, 32.931374, 19.599215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.446825, 33.206238, 19.311161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097360, -0.726491, -0.680244,
		-0.990606, 0.004794, 0.136661,
		-0.096022, 0.687160, -0.720133,
		24.418018, 33.412384, 19.095121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.003902, 32.661255, 19.168470>,  <24.485233, 32.931374, 19.599215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.003902, 32.661255, 19.168470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177698, 32.925632, 18.923729>,  <24.281977, 33.084259, 18.776884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177698, 32.925632, 18.923729>,  <24.003902, 32.661255, 19.168470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.177698, 32.925632, 18.923729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130503, -0.625961, -0.768857,
		-0.891172, 0.413910, -0.185719,
		0.434490, 0.660947, -0.611855,
		24.308044, 33.123917, 18.740171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.635834, 32.503735, 18.544430>,  <24.003902, 32.661255, 19.168470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.635834, 32.503735, 18.544430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.958334, 32.711777, 18.431683>,  <24.151834, 32.836601, 18.364035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.958334, 32.711777, 18.431683>,  <23.635834, 32.503735, 18.544430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.958334, 32.711777, 18.431683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072351, -0.559584, -0.825610,
		-0.587136, 0.645254, -0.488794,
		0.806249, 0.520109, -0.281867,
		24.200209, 32.867809, 18.347122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.539434, 32.637196, 17.827343>,  <23.635834, 32.503735, 18.544430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.539434, 32.637196, 17.827343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.932442, 32.691681, 17.878105>,  <24.168245, 32.724373, 17.908564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.932442, 32.691681, 17.878105>,  <23.539434, 32.637196, 17.827343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.932442, 32.691681, 17.878105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184555, -0.622996, -0.760141,
		-0.024480, 0.770273, -0.637244,
		0.982517, 0.136215, 0.126907,
		24.227198, 32.732544, 17.916178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.761297, 32.826900, 17.159334>,  <23.539434, 32.637196, 17.827343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.761297, 32.826900, 17.159334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.072178, 32.644245, 17.332508>,  <24.258707, 32.534653, 17.436413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.072178, 32.644245, 17.332508>,  <23.761297, 32.826900, 17.159334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.072178, 32.644245, 17.332508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072929, -0.618013, -0.782778,
		0.625008, 0.639951, -0.447020,
		0.777204, -0.456642, 0.432934,
		24.305340, 32.507252, 17.462389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.236326, 32.778004, 16.619934>,  <23.761297, 32.826900, 17.159334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.236326, 32.778004, 16.619934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288424, 32.497223, 16.900021>,  <24.319681, 32.328754, 17.068073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288424, 32.497223, 16.900021>,  <24.236326, 32.778004, 16.619934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.288424, 32.497223, 16.900021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152005, -0.683747, -0.713712,
		0.979761, 0.199392, 0.017647,
		0.130243, -0.701949, 0.700217,
		24.327496, 32.286636, 17.110086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809616, 32.501694, 16.319445>,  <24.236326, 32.778004, 16.619934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809616, 32.501694, 16.319445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705830, 32.242756, 16.606113>,  <24.643557, 32.087395, 16.778114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705830, 32.242756, 16.606113>,  <24.809616, 32.501694, 16.319445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705830, 32.242756, 16.606113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333582, -0.756488, -0.562537,
		0.906311, 0.093109, 0.412227,
		-0.259468, -0.647346, 0.716673,
		24.627989, 32.048553, 16.821115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356495, 32.030476, 16.459602>,  <24.809616, 32.501694, 16.319445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356495, 32.030476, 16.459602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012011, 31.846016, 16.545071>,  <24.805319, 31.735340, 16.596352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012011, 31.846016, 16.545071>,  <25.356495, 32.030476, 16.459602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.012011, 31.846016, 16.545071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290459, -0.791562, -0.537646,
		0.417070, -0.400964, 0.815648,
		-0.861212, -0.461148, 0.213673,
		24.753647, 31.707672, 16.609173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.538374, 31.367796, 16.711115>,  <25.356495, 32.030476, 16.459602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.538374, 31.367796, 16.711115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163685, 31.354263, 16.571743>,  <24.938871, 31.346144, 16.488121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163685, 31.354263, 16.571743>,  <25.538374, 31.367796, 16.711115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163685, 31.354263, 16.571743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255034, -0.747763, -0.613032,
		-0.239800, -0.663103, 0.709077,
		-0.936725, -0.033833, -0.348428,
		24.882668, 31.344114, 16.467215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200680, 30.664469, 16.801043>,  <25.538374, 31.367796, 16.711115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200680, 30.664469, 16.801043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001900, 30.850681, 16.508106>,  <24.882631, 30.962408, 16.332344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001900, 30.850681, 16.508106>,  <25.200680, 30.664469, 16.801043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001900, 30.850681, 16.508106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030072, -0.834179, -0.550673,
		-0.867257, -0.295680, 0.400547,
		-0.496951, 0.465530, -0.732340,
		24.852814, 30.990341, 16.288404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573235, 30.287945, 16.596689>,  <25.200680, 30.664469, 16.801043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573235, 30.287945, 16.596689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691914, 30.502796, 16.280849>,  <24.763121, 30.631706, 16.091347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691914, 30.502796, 16.280849>,  <24.573235, 30.287945, 16.596689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.691914, 30.502796, 16.280849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102518, -0.804135, -0.585540,
		-0.949453, 0.254676, -0.183520,
		0.296697, 0.537128, -0.789597,
		24.780922, 30.663935, 16.043970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046108, 30.313126, 16.188108>,  <24.573235, 30.287945, 16.596689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046108, 30.313126, 16.188108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387589, 30.327736, 15.980315>,  <24.592476, 30.336502, 15.855639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387589, 30.327736, 15.980315>,  <24.046108, 30.313126, 16.188108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.387589, 30.327736, 15.980315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230674, -0.867814, -0.440101,
		-0.466889, 0.495545, -0.732427,
		0.853700, 0.036526, -0.519482,
		24.643698, 30.338694, 15.824471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.391182, 29.968508, 16.510571>,  <24.046108, 30.313126, 16.188108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.391182, 29.968508, 16.510571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.273697, 30.317959, 16.355389>,  <23.203205, 30.527630, 16.262280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.273697, 30.317959, 16.355389>,  <23.391182, 29.968508, 16.510571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.273697, 30.317959, 16.355389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713161, -0.069978, -0.697498,
		-0.636502, -0.481539, -0.602483,
		-0.293712, 0.873626, -0.387956,
		23.185583, 30.580048, 16.239002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.718470, 30.163488, 16.329330>,  <23.391182, 29.968508, 16.510571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.718470, 30.163488, 16.329330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.393312, 29.952225, 16.231140>,  <22.198219, 29.825466, 16.172226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.393312, 29.952225, 16.231140>,  <22.718470, 30.163488, 16.329330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.393312, 29.952225, 16.231140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561693, 0.599501, 0.570175,
		-0.153979, 0.601372, -0.783991,
		-0.812891, -0.528157, -0.245477,
		22.149445, 29.793777, 16.157497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.103930, 30.576685, 15.969475>,  <22.718470, 30.163488, 16.329330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.103930, 30.576685, 15.969475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.008970, 30.258762, 16.192875>,  <21.951994, 30.068008, 16.326916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.008970, 30.258762, 16.192875>,  <22.103930, 30.576685, 15.969475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.008970, 30.258762, 16.192875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507006, 0.591794, 0.626677,
		-0.828605, -0.134389, -0.543464,
		-0.237400, -0.794808, 0.558500,
		21.937750, 30.020321, 16.360424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320841, 30.528639, 15.951519>,  <22.103930, 30.576685, 15.969475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320841, 30.528639, 15.951519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.519880, 30.439220, 16.286762>,  <21.639303, 30.385569, 16.487907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.519880, 30.439220, 16.286762>,  <21.320841, 30.528639, 15.951519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.519880, 30.439220, 16.286762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435998, 0.770832, 0.464460,
		-0.749868, -0.596528, 0.286100,
		0.497598, -0.223545, 0.838107,
		21.669159, 30.372156, 16.538195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.768837, 30.643597, 16.309292>,  <21.320841, 30.528639, 15.951519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.768837, 30.643597, 16.309292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.065666, 30.685436, 16.574135>,  <21.243763, 30.710539, 16.733040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.065666, 30.685436, 16.574135>,  <20.768837, 30.643597, 16.309292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065666, 30.685436, 16.574135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610173, 0.514340, 0.602614,
		-0.277516, -0.851184, 0.445500,
		0.742074, 0.104597, 0.662108,
		21.288288, 30.716816, 16.772768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568998, 30.656065, 17.011101>,  <20.768837, 30.643597, 16.309292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568998, 30.656065, 17.011101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.925152, 30.834179, 17.048920>,  <21.138844, 30.941048, 17.071611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.925152, 30.834179, 17.048920>,  <20.568998, 30.656065, 17.011101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925152, 30.834179, 17.048920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386424, 0.629572, 0.674029,
		0.240612, -0.636679, 0.732629,
		0.890384, 0.445285, 0.094545,
		21.192266, 30.967764, 17.077284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.461592, 30.974215, 17.664402>,  <20.568998, 30.656065, 17.011101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.461592, 30.974215, 17.664402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.816143, 31.131203, 17.566177>,  <21.028873, 31.225395, 17.507242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.816143, 31.131203, 17.566177>,  <20.461592, 30.974215, 17.664402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.816143, 31.131203, 17.566177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151606, 0.747231, 0.647041,
		0.437436, -0.536295, 0.721830,
		0.886378, 0.392472, -0.245560,
		21.082056, 31.248945, 17.492510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930712, 31.124952, 18.391171>,  <20.461592, 30.974215, 17.664402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930712, 31.124952, 18.391171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.039429, 31.363155, 18.088779>,  <21.104658, 31.506077, 17.907345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.039429, 31.363155, 18.088779>,  <20.930712, 31.124952, 18.391171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.039429, 31.363155, 18.088779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110001, 0.761174, 0.639151,
		0.956048, -0.256875, 0.141375,
		0.271793, 0.595508, -0.755976,
		21.120966, 31.541807, 17.861986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.552818, 31.399811, 18.631165>,  <20.930712, 31.124952, 18.391171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.552818, 31.399811, 18.631165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431850, 31.650036, 18.343494>,  <21.359270, 31.800171, 18.170893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431850, 31.650036, 18.343494>,  <21.552818, 31.399811, 18.631165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.431850, 31.650036, 18.343494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069057, 0.738143, 0.671101,
		0.950671, 0.252617, -0.180028,
		-0.302418, 0.625563, -0.719176,
		21.341125, 31.837706, 18.127741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.935743, 32.027481, 18.771570>,  <21.552818, 31.399811, 18.631165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.935743, 32.027481, 18.771570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.632769, 32.147091, 18.539406>,  <21.450985, 32.218857, 18.400106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.632769, 32.147091, 18.539406>,  <21.935743, 32.027481, 18.771570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.632769, 32.147091, 18.539406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194449, 0.745309, 0.637734,
		0.623283, 0.595902, -0.506378,
		-0.757435, 0.299024, -0.580411,
		21.405539, 32.236797, 18.365282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.908838, 32.751369, 18.725243>,  <21.935743, 32.027481, 18.771570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.908838, 32.751369, 18.725243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527586, 32.692909, 18.619274>,  <21.298834, 32.657833, 18.555693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527586, 32.692909, 18.619274>,  <21.908838, 32.751369, 18.725243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.527586, 32.692909, 18.619274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277744, 0.769916, 0.574533,
		0.120000, 0.621185, -0.774422,
		-0.953131, -0.146146, -0.264920,
		21.241646, 32.649067, 18.539799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.605257, 33.399918, 18.472857>,  <21.908838, 32.751369, 18.725243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.605257, 33.399918, 18.472857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.296846, 33.170540, 18.583626>,  <21.111801, 33.032913, 18.650087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.296846, 33.170540, 18.583626>,  <21.605257, 33.399918, 18.472857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.296846, 33.170540, 18.583626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435061, 0.791899, 0.428507,
		-0.465017, 0.209912, -0.860056,
		-0.771025, -0.573440, 0.276922,
		21.065538, 32.998508, 18.666702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.038586, 33.779961, 18.391489>,  <21.605257, 33.399918, 18.472857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.038586, 33.779961, 18.391489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.908094, 33.532455, 18.677345>,  <20.829800, 33.383953, 18.848860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.908094, 33.532455, 18.677345>,  <21.038586, 33.779961, 18.391489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.908094, 33.532455, 18.677345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420874, 0.772010, 0.476304,
		-0.846427, -0.145389, -0.512272,
		-0.326230, -0.618759, 0.714641,
		20.810225, 33.346828, 18.891737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.715826, 34.161983, 18.821651>,  <21.038586, 33.779961, 18.391489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.715826, 34.161983, 18.821651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681599, 33.828564, 19.039963>,  <20.661062, 33.628513, 19.170950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681599, 33.828564, 19.039963>,  <20.715826, 34.161983, 18.821651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.681599, 33.828564, 19.039963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487474, 0.512767, 0.706711,
		-0.868935, -0.205581, -0.450210,
		-0.085567, -0.833551, 0.545776,
		20.655930, 33.578499, 19.203695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.000662, 34.185417, 19.067183>,  <20.715826, 34.161983, 18.821651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.000662, 34.185417, 19.067183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.245520, 33.973892, 19.302345>,  <20.392435, 33.846977, 19.443443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.245520, 33.973892, 19.302345>,  <20.000662, 34.185417, 19.067183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.245520, 33.973892, 19.302345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225992, 0.595476, 0.770932,
		-0.757763, -0.604785, 0.245010,
		0.612145, -0.528814, 0.587906,
		20.429163, 33.815247, 19.478718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.657722, 34.160702, 19.786615>,  <20.000662, 34.185417, 19.067183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.657722, 34.160702, 19.786615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047688, 34.080624, 19.825539>,  <20.281666, 34.032578, 19.848892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047688, 34.080624, 19.825539>,  <19.657722, 34.160702, 19.786615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.047688, 34.080624, 19.825539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040180, 0.588259, 0.807673,
		-0.218932, -0.783501, 0.581545,
		0.974913, -0.200192, 0.097308,
		20.340160, 34.020565, 19.854731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649645, 33.932949, 20.438534>,  <19.657722, 34.160702, 19.786615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649645, 33.932949, 20.438534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033581, 34.023777, 20.372631>,  <20.263943, 34.078274, 20.333090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033581, 34.023777, 20.372631>,  <19.649645, 33.932949, 20.438534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.033581, 34.023777, 20.372631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021115, 0.527131, 0.849522,
		0.279752, -0.818884, 0.501167,
		0.959840, 0.227073, -0.164757,
		20.321533, 34.091900, 20.323204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.048384, 34.030914, 21.083002>,  <19.649645, 33.932949, 20.438534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.048384, 34.030914, 21.083002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.300343, 34.211216, 20.830006>,  <20.451519, 34.319397, 20.678207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.300343, 34.211216, 20.830006>,  <20.048384, 34.030914, 21.083002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300343, 34.211216, 20.830006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237837, 0.663289, 0.709564,
		0.739365, -0.597384, 0.310599,
		0.629900, 0.450755, -0.632493,
		20.489313, 34.346443, 20.640259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.846876, 34.004124, 21.325323>,  <20.048384, 34.030914, 21.083002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.846876, 34.004124, 21.325323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.779387, 34.327488, 21.099754>,  <20.738894, 34.521507, 20.964413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.779387, 34.327488, 21.099754>,  <20.846876, 34.004124, 21.325323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.779387, 34.327488, 21.099754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169465, 0.587394, 0.791359,
		0.970986, 0.037956, -0.236104,
		-0.168724, 0.808410, -0.563920,
		20.728769, 34.570011, 20.930578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.439552, 34.454208, 21.506222>,  <20.846876, 34.004124, 21.325323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.439552, 34.454208, 21.506222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.206720, 34.722149, 21.321838>,  <21.067020, 34.882912, 21.211208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.206720, 34.722149, 21.321838>,  <21.439552, 34.454208, 21.506222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.206720, 34.722149, 21.321838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164270, 0.652079, 0.740141,
		0.796365, 0.355099, -0.489599,
		-0.582081, 0.669849, -0.460961,
		21.032097, 34.923103, 21.183550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.790400, 35.109344, 21.343670>,  <21.439552, 34.454208, 21.506222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.790400, 35.109344, 21.343670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.401634, 35.199348, 21.371254>,  <21.168375, 35.253349, 21.387804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.401634, 35.199348, 21.371254>,  <21.790400, 35.109344, 21.343670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.401634, 35.199348, 21.371254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193390, 0.596646, 0.778855,
		0.134102, 0.770316, -0.623402,
		-0.971914, 0.225005, 0.068960,
		21.110060, 35.266850, 21.391941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824596, 35.793427, 21.535154>,  <21.790400, 35.109344, 21.343670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824596, 35.793427, 21.535154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445684, 35.694687, 21.616859>,  <21.218336, 35.635441, 21.665882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445684, 35.694687, 21.616859>,  <21.824596, 35.793427, 21.535154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.445684, 35.694687, 21.616859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015536, 0.672148, 0.740254,
		-0.320028, 0.698055, -0.640548,
		-0.947281, -0.246853, 0.204261,
		21.161501, 35.620632, 21.678137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359705, 36.462925, 21.581972>,  <21.824596, 35.793427, 21.535154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359705, 36.462925, 21.581972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.174047, 36.194389, 21.813099>,  <21.062653, 36.033268, 21.951775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.174047, 36.194389, 21.813099>,  <21.359705, 36.462925, 21.581972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.174047, 36.194389, 21.813099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086008, 0.683415, 0.724946,
		-0.881575, 0.286781, -0.374943,
		-0.464143, -0.671342, 0.577816,
		21.034805, 35.992985, 21.986444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.972202, 36.837082, 21.976971>,  <21.359705, 36.462925, 21.581972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.972202, 36.837082, 21.976971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939152, 36.488693, 22.170704>,  <20.919321, 36.279659, 22.286943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.939152, 36.488693, 22.170704>,  <20.972202, 36.837082, 21.976971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.939152, 36.488693, 22.170704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068398, 0.489803, 0.869146,
		-0.994231, 0.038688, -0.100044,
		-0.082628, -0.870974, 0.484331,
		20.914364, 36.227402, 22.316004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.506510, 36.987659, 22.407650>,  <20.972202, 36.837082, 21.976971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.506510, 36.987659, 22.407650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.679203, 36.670788, 22.580189>,  <20.782820, 36.480663, 22.683712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.679203, 36.670788, 22.580189>,  <20.506510, 36.987659, 22.407650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.679203, 36.670788, 22.580189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102429, 0.432059, 0.896010,
		-0.896166, -0.431021, 0.105393,
		0.431735, -0.792178, 0.431346,
		20.808723, 36.433136, 22.709593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.143305, 36.809769, 23.093866>,  <20.506510, 36.987659, 22.407650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.143305, 36.809769, 23.093866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482254, 36.599831, 23.126110>,  <20.685623, 36.473869, 23.145456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482254, 36.599831, 23.126110>,  <20.143305, 36.809769, 23.093866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482254, 36.599831, 23.126110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088758, 0.289670, 0.953002,
		-0.523524, -0.800396, 0.292043,
		0.847375, -0.524841, 0.080608,
		20.736467, 36.442379, 23.150291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.998257, 36.512646, 23.650150>,  <20.143305, 36.809769, 23.093866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.998257, 36.512646, 23.650150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.394020, 36.487003, 23.598057>,  <20.631477, 36.471619, 23.566801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.394020, 36.487003, 23.598057>,  <19.998257, 36.512646, 23.650150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.394020, 36.487003, 23.598057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144174, 0.538324, 0.830314,
		0.016880, -0.840296, 0.541865,
		0.989408, -0.064107, -0.130236,
		20.690842, 36.467770, 23.558987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435251, 36.579693, 24.062683>,  <19.998257, 36.512646, 23.650150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435251, 36.579693, 24.062683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543133, 36.903023, 23.853352>,  <19.607861, 37.097019, 23.727753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543133, 36.903023, 23.853352>,  <19.435251, 36.579693, 24.062683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543133, 36.903023, 23.853352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955462, 0.157026, -0.249868,
		-0.119798, 0.567410, 0.814674,
		0.269703, 0.808324, -0.523328,
		19.624044, 37.145519, 23.696354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.923111, 37.123337, 24.214275>,  <19.435251, 36.579693, 24.062683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.923111, 37.123337, 24.214275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079433, 37.195259, 23.853180>,  <19.173227, 37.238415, 23.636522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079433, 37.195259, 23.853180>,  <18.923111, 37.123337, 24.214275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.079433, 37.195259, 23.853180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899209, 0.284162, -0.332679,
		0.196706, 0.941765, 0.272737,
		0.390807, 0.179807, -0.902740,
		19.196676, 37.249203, 23.582357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910480, 37.790421, 24.026901>,  <18.923111, 37.123337, 24.214275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910480, 37.790421, 24.026901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.863853, 37.538357, 23.719833>,  <18.835876, 37.387119, 23.535593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.863853, 37.538357, 23.719833>,  <18.910480, 37.790421, 24.026901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.863853, 37.538357, 23.719833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963797, 0.258400, -0.065763,
		0.239807, 0.732211, -0.637464,
		-0.116569, -0.630156, -0.767669,
		18.828882, 37.349312, 23.489532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506523, 38.103123, 23.557722>,  <18.910480, 37.790421, 24.026901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506523, 38.103123, 23.557722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487692, 37.706524, 23.509205>,  <18.476393, 37.468563, 23.480095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487692, 37.706524, 23.509205>,  <18.506523, 38.103123, 23.557722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487692, 37.706524, 23.509205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990006, 0.062474, -0.126432,
		0.132935, 0.114128, -0.984532,
		-0.047078, -0.991500, -0.121292,
		18.473568, 37.409073, 23.472816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228813, 37.884430, 22.829004>,  <18.506523, 38.103123, 23.557722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.228813, 37.884430, 22.829004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176296, 37.566372, 23.065819>,  <18.144787, 37.375538, 23.207909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.176296, 37.566372, 23.065819>,  <18.228813, 37.884430, 22.829004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176296, 37.566372, 23.065819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962485, -0.040809, -0.268250,
		0.237457, -0.605046, -0.759956,
		-0.131291, -0.795144, 0.592038,
		18.136909, 37.327827, 23.243431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.107403, 26.088333, 25.122217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.492279, 26.182083, 25.177719>,  <32.723206, 26.238333, 25.211020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.492279, 26.182083, 25.177719>,  <32.107403, 26.088333, 25.122217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492279, 26.182083, 25.177719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066516, 0.696211, -0.714749,
		-0.264121, 0.678497, 0.685479,
		0.962193, 0.234375, 0.138753,
		32.780937, 26.252396, 25.219345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204666, 26.763893, 25.120771>,  <32.107403, 26.088333, 25.122217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204666, 26.763893, 25.120771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.579277, 26.649864, 25.039131>,  <32.804043, 26.581448, 24.990147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.579277, 26.649864, 25.039131>,  <32.204666, 26.763893, 25.120771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579277, 26.649864, 25.039131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045442, 0.675928, -0.735565,
		0.347648, 0.679599, 0.645977,
		0.936523, -0.285073, -0.204103,
		32.860233, 26.564342, 24.977900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627769, 27.392378, 25.093168>,  <32.204666, 26.763893, 25.120771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627769, 27.392378, 25.093168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823971, 27.099625, 24.903957>,  <32.941692, 26.923973, 24.790430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.823971, 27.099625, 24.903957>,  <32.627769, 27.392378, 25.093168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823971, 27.099625, 24.903957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338858, 0.660280, -0.670228,
		0.802858, 0.168460, 0.571875,
		0.490504, -0.731882, -0.473027,
		32.971123, 26.880060, 24.762049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248402, 27.684118, 24.932247>,  <32.627769, 27.392378, 25.093168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248402, 27.684118, 24.932247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226135, 27.378613, 24.675011>,  <33.212776, 27.195309, 24.520668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.226135, 27.378613, 24.675011>,  <33.248402, 27.684118, 24.932247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226135, 27.378613, 24.675011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412207, 0.569059, -0.711518,
		0.909388, -0.304692, 0.283153,
		-0.055663, -0.763764, -0.643091,
		33.209435, 27.149483, 24.482082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854828, 27.718248, 24.587065>,  <33.248402, 27.684118, 24.932247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854828, 27.718248, 24.587065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637920, 27.485401, 24.344715>,  <33.507778, 27.345692, 24.199305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637920, 27.485401, 24.344715>,  <33.854828, 27.718248, 24.587065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637920, 27.485401, 24.344715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225803, 0.593606, -0.772428,
		0.809297, -0.555670, -0.190447,
		-0.542265, -0.582120, -0.605875,
		33.475243, 27.310764, 24.162952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280972, 27.658865, 23.971956>,  <33.854828, 27.718248, 24.587065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280972, 27.658865, 23.971956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897148, 27.584385, 23.887501>,  <33.666855, 27.539698, 23.836826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897148, 27.584385, 23.887501>,  <34.280972, 27.658865, 23.971956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897148, 27.584385, 23.887501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055489, 0.610200, -0.790302,
		0.275992, -0.770055, -0.575190,
		-0.959557, -0.186200, -0.211140,
		33.609280, 27.528524, 23.824160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227314, 27.568207, 23.218800>,  <34.280972, 27.658865, 23.971956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227314, 27.568207, 23.218800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.849926, 27.654522, 23.319443>,  <33.623493, 27.706312, 23.379829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.849926, 27.654522, 23.319443>,  <34.227314, 27.568207, 23.218800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849926, 27.654522, 23.319443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027042, 0.706433, -0.707263,
		-0.330365, -0.674083, -0.660660,
		-0.943466, 0.215789, 0.251609,
		33.566887, 27.719259, 23.394926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904037, 27.554873, 22.538326>,  <34.227314, 27.568207, 23.218800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904037, 27.554873, 22.538326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.668190, 27.726700, 22.811916>,  <33.526684, 27.829796, 22.976070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.668190, 27.726700, 22.811916>,  <33.904037, 27.554873, 22.538326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668190, 27.726700, 22.811916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101340, 0.800799, -0.590297,
		-0.801302, -0.417362, -0.428631,
		-0.589615, 0.429569, 0.683977,
		33.491306, 27.855570, 23.017109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302746, 27.800713, 22.129181>,  <33.904037, 27.554873, 22.538326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302746, 27.800713, 22.129181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.320984, 28.025467, 22.459564>,  <33.331928, 28.160320, 22.657793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.320984, 28.025467, 22.459564>,  <33.302746, 27.800713, 22.129181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320984, 28.025467, 22.459564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068958, 0.826614, -0.558528,
		-0.996577, -0.031490, 0.076438,
		0.045597, 0.561887, 0.825956,
		33.334663, 28.194033, 22.707352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599205, 28.249880, 22.171574>,  <33.302746, 27.800713, 22.129181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599205, 28.249880, 22.171574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.866543, 28.429356, 22.408890>,  <33.026947, 28.537041, 22.551279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.866543, 28.429356, 22.408890>,  <32.599205, 28.249880, 22.171574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866543, 28.429356, 22.408890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320104, 0.893449, -0.315090,
		-0.671452, 0.020674, 0.740760,
		0.668346, 0.448688, 0.593290,
		33.067047, 28.563961, 22.586878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181892, 28.587904, 22.571630>,  <32.599205, 28.249880, 22.171574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181892, 28.587904, 22.571630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.534458, 28.768909, 22.625797>,  <32.745998, 28.877512, 22.658298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.534458, 28.768909, 22.625797>,  <32.181892, 28.587904, 22.571630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534458, 28.768909, 22.625797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449352, 0.891669, -0.054850,
		-0.145570, -0.012506, 0.989269,
		0.881415, 0.452514, 0.135419,
		32.798882, 28.904663, 22.666424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006218, 29.094164, 22.989653>,  <32.181892, 28.587904, 22.571630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006218, 29.094164, 22.989653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341190, 29.217583, 22.809208>,  <32.542175, 29.291634, 22.700941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341190, 29.217583, 22.809208>,  <32.006218, 29.094164, 22.989653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341190, 29.217583, 22.809208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362887, 0.931106, -0.036803,
		0.408678, 0.194523, 0.891708,
		0.837434, 0.308548, -0.451112,
		32.592419, 29.310146, 22.673874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188454, 29.780466, 23.267303>,  <32.006218, 29.094164, 22.989653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188454, 29.780466, 23.267303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.379219, 29.745792, 22.917439>,  <32.493679, 29.724989, 22.707520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.379219, 29.745792, 22.917439>,  <32.188454, 29.780466, 23.267303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379219, 29.745792, 22.917439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200491, 0.958162, -0.204276,
		0.855778, 0.272785, 0.439583,
		0.476915, -0.086683, -0.874664,
		32.522293, 29.719788, 22.655039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522579, 30.328318, 23.287317>,  <32.188454, 29.780466, 23.267303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522579, 30.328318, 23.287317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539307, 30.229496, 22.900078>,  <32.549343, 30.170202, 22.667734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539307, 30.229496, 22.900078>,  <32.522579, 30.328318, 23.287317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539307, 30.229496, 22.900078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174952, 0.952165, -0.250547,
		0.983688, 0.179849, -0.003403,
		0.041820, -0.247056, -0.968098,
		32.551853, 30.155378, 22.609648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036385, 30.797527, 22.897266>,  <32.522579, 30.328318, 23.287317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036385, 30.797527, 22.897266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771027, 30.658268, 22.632328>,  <32.611813, 30.574713, 22.473366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771027, 30.658268, 22.632328>,  <33.036385, 30.797527, 22.897266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771027, 30.658268, 22.632328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251865, 0.937411, -0.240465,
		0.704607, 0.007298, -0.709560,
		-0.663395, -0.348147, -0.662345,
		32.572006, 30.553823, 22.433624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112015, 31.165808, 22.305555>,  <33.036385, 30.797527, 22.897266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112015, 31.165808, 22.305555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.746910, 31.018917, 22.233982>,  <32.527847, 30.930782, 22.191038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.746910, 31.018917, 22.233982>,  <33.112015, 31.165808, 22.305555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746910, 31.018917, 22.233982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315488, 0.911959, -0.262295,
		0.259503, -0.182960, -0.948253,
		-0.912757, -0.367229, -0.178934,
		32.473083, 30.908749, 22.180302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849876, 31.502569, 21.604351>,  <33.112015, 31.165808, 22.305555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849876, 31.502569, 21.604351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.523342, 31.361744, 21.787498>,  <32.327423, 31.277248, 21.897387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.523342, 31.361744, 21.787498>,  <32.849876, 31.502569, 21.604351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523342, 31.361744, 21.787498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521932, 0.789158, -0.323755,
		-0.247349, -0.503270, -0.827972,
		-0.816337, -0.352064, 0.457870,
		32.278442, 31.256124, 21.924860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426666, 31.492561, 21.105228>,  <32.849876, 31.502569, 21.604351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426666, 31.492561, 21.105228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.178280, 31.475414, 21.418293>,  <32.029247, 31.465126, 21.606133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.178280, 31.475414, 21.418293>,  <32.426666, 31.492561, 21.105228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178280, 31.475414, 21.418293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520326, 0.769315, -0.370694,
		-0.586225, -0.637430, -0.500024,
		-0.620968, -0.042865, 0.782663,
		31.991989, 31.462555, 21.653091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771078, 31.450405, 20.884031>,  <32.426666, 31.492561, 21.105228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771078, 31.450405, 20.884031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.741346, 31.587669, 21.258564>,  <31.723507, 31.670029, 21.483284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.741346, 31.587669, 21.258564>,  <31.771078, 31.450405, 20.884031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741346, 31.587669, 21.258564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493553, 0.803211, -0.333552,
		-0.866534, -0.486921, 0.109668,
		-0.074327, 0.343161, 0.936331,
		31.719048, 31.690619, 21.539463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050203, 31.683985, 20.917131>,  <31.771078, 31.450405, 20.884031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050203, 31.683985, 20.917131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.271757, 31.870552, 21.193005>,  <31.404690, 31.982492, 21.358528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.271757, 31.870552, 21.193005>,  <31.050203, 31.683985, 20.917131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271757, 31.870552, 21.193005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462664, 0.861111, -0.210784,
		-0.692207, -0.202341, 0.692753,
		0.553887, 0.466418, 0.689684,
		31.437923, 32.010479, 21.399910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524204, 32.156082, 21.345661>,  <31.050203, 31.683985, 20.917131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524204, 32.156082, 21.345661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.880854, 32.305889, 21.447437>,  <31.094843, 32.395775, 21.508503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.880854, 32.305889, 21.447437>,  <30.524204, 32.156082, 21.345661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880854, 32.305889, 21.447437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399715, 0.915059, 0.053810,
		-0.212677, -0.149683, 0.965590,
		0.891626, 0.374516, 0.254443,
		31.148342, 32.418243, 21.523769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312757, 32.675995, 21.701710>,  <30.524204, 32.156082, 21.345661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312757, 32.675995, 21.701710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.690779, 32.792179, 21.641701>,  <30.917591, 32.861889, 21.605696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.690779, 32.792179, 21.641701>,  <30.312757, 32.675995, 21.701710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690779, 32.792179, 21.641701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284337, 0.956767, 0.061233,
		0.161323, -0.015211, 0.986785,
		0.945054, 0.290458, -0.150024,
		30.974295, 32.879318, 21.596693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011789, 33.221790, 22.079889>,  <30.312757, 32.675995, 21.701710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011789, 33.221790, 22.079889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.622892, 33.300034, 22.131237>,  <29.389553, 33.346981, 22.162046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.622892, 33.300034, 22.131237>,  <30.011789, 33.221790, 22.079889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622892, 33.300034, 22.131237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086758, -0.810943, 0.578657,
		0.217293, 0.551459, 0.805405,
		-0.972243, 0.195613, 0.128369,
		29.331219, 33.358719, 22.169748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876040, 33.264561, 22.898523>,  <30.011789, 33.221790, 22.079889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876040, 33.264561, 22.898523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.547148, 33.173458, 22.689884>,  <29.349812, 33.118797, 22.564701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.547148, 33.173458, 22.689884>,  <29.876040, 33.264561, 22.898523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547148, 33.173458, 22.689884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085449, -0.856659, 0.508757,
		-0.562704, 0.462885, 0.684910,
		-0.822230, -0.227754, -0.521599,
		29.300478, 33.105133, 22.533405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440731, 33.234787, 23.356094>,  <29.876040, 33.264561, 22.898523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440731, 33.234787, 23.356094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.271584, 33.043541, 23.048176>,  <29.170095, 32.928791, 22.863424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.271584, 33.043541, 23.048176>,  <29.440731, 33.234787, 23.356094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271584, 33.043541, 23.048176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047668, -0.836572, 0.545779,
		-0.904937, 0.267487, 0.330968,
		-0.422867, -0.478119, -0.769796,
		29.144724, 32.900105, 22.817238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815733, 32.929417, 23.620001>,  <29.440731, 33.234787, 23.356094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815733, 32.929417, 23.620001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.898558, 32.716541, 23.291634>,  <28.948252, 32.588818, 23.094614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.898558, 32.716541, 23.291634>,  <28.815733, 32.929417, 23.620001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898558, 32.716541, 23.291634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147056, -0.846498, 0.511679,
		-0.967213, 0.014772, -0.253537,
		0.207060, -0.532187, -0.820916,
		28.960676, 32.556885, 23.045359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339890, 32.281422, 23.610609>,  <28.815733, 32.929417, 23.620001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339890, 32.281422, 23.610609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.634712, 32.184807, 23.358131>,  <28.811605, 32.126839, 23.206646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.634712, 32.184807, 23.358131>,  <28.339890, 32.281422, 23.610609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634712, 32.184807, 23.358131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040261, -0.947986, 0.315754,
		-0.674629, -0.207316, -0.708446,
		0.737058, -0.241540, -0.631193,
		28.855829, 32.112347, 23.168774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084503, 31.660648, 23.504128>,  <28.339890, 32.281422, 23.610609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084503, 31.660648, 23.504128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.452480, 31.651028, 23.347603>,  <28.673267, 31.645256, 23.253689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.452480, 31.651028, 23.347603>,  <28.084503, 31.660648, 23.504128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452480, 31.651028, 23.347603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006859, -0.996976, 0.077400,
		-0.391991, -0.073888, -0.916997,
		0.919944, -0.024050, -0.391312,
		28.728464, 31.643812, 23.230209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059866, 31.211037, 22.989002>,  <28.084503, 31.660648, 23.504128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059866, 31.211037, 22.989002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.421207, 31.234280, 23.158978>,  <28.638012, 31.248226, 23.260963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.421207, 31.234280, 23.158978>,  <28.059866, 31.211037, 22.989002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421207, 31.234280, 23.158978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015572, -0.985682, 0.167891,
		0.428612, -0.158283, -0.889516,
		0.903355, 0.058108, 0.424940,
		28.692213, 31.251713, 23.286459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360222, 30.517059, 22.912323>,  <28.059866, 31.211037, 22.989002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360222, 30.517059, 22.912323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.608891, 30.691620, 23.172501>,  <28.758093, 30.796356, 23.328608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.608891, 30.691620, 23.172501>,  <28.360222, 30.517059, 22.912323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608891, 30.691620, 23.172501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153475, -0.882183, 0.445194,
		0.768094, -0.176939, -0.615406,
		0.621673, 0.436400, 0.650444,
		28.795393, 30.822540, 23.367634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956661, 30.125956, 22.829304>,  <28.360222, 30.517059, 22.912323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956661, 30.125956, 22.829304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.005527, 30.305847, 23.183212>,  <29.034847, 30.413782, 23.395557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.005527, 30.305847, 23.183212>,  <28.956661, 30.125956, 22.829304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005527, 30.305847, 23.183212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275848, -0.871710, 0.405005,
		0.953407, 0.194585, -0.230549,
		0.122164, 0.449731, 0.884770,
		29.042177, 30.440767, 23.448643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535347, 29.857819, 23.085615>,  <28.956661, 30.125956, 22.829304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535347, 29.857819, 23.085615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.313265, 29.984051, 23.393421>,  <29.180016, 30.059790, 23.578106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.313265, 29.984051, 23.393421>,  <29.535347, 29.857819, 23.085615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313265, 29.984051, 23.393421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181924, -0.856734, 0.482609,
		0.811573, 0.407941, 0.418251,
		-0.555206, 0.315582, 0.769516,
		29.146704, 30.078726, 23.624275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907551, 29.713381, 23.648849>,  <29.535347, 29.857819, 23.085615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907551, 29.713381, 23.648849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.548700, 29.782143, 23.811630>,  <29.333389, 29.823399, 23.909298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.548700, 29.782143, 23.811630>,  <29.907551, 29.713381, 23.648849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548700, 29.782143, 23.811630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181896, -0.695740, 0.694881,
		0.402585, 0.697420, 0.592900,
		-0.897128, 0.171903, 0.406952,
		29.279562, 29.833714, 23.933716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031784, 29.641672, 24.336414>,  <29.907551, 29.713381, 23.648849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031784, 29.641672, 24.336414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.634142, 29.600559, 24.322624>,  <29.395555, 29.575891, 24.314350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.634142, 29.600559, 24.322624>,  <30.031784, 29.641672, 24.336414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634142, 29.600559, 24.322624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050338, -0.719295, 0.692878,
		-0.096013, 0.687059, 0.720230,
		-0.994106, -0.102780, -0.034477,
		29.335911, 29.569725, 24.312281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733389, 29.681181, 25.062416>,  <30.031784, 29.641672, 24.336414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733389, 29.681181, 25.062416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.447819, 29.510765, 24.840137>,  <29.276476, 29.408516, 24.706770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.447819, 29.510765, 24.840137>,  <29.733389, 29.681181, 25.062416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447819, 29.510765, 24.840137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043939, -0.764783, 0.642787,
		-0.698840, 0.483320, 0.527280,
		-0.713927, -0.426037, -0.555698,
		29.233641, 29.382954, 24.673428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209955, 29.457802, 25.521982>,  <29.733389, 29.681181, 25.062416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209955, 29.457802, 25.521982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.149694, 29.228802, 25.199604>,  <29.113539, 29.091402, 25.006178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.149694, 29.228802, 25.199604>,  <29.209955, 29.457802, 25.521982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149694, 29.228802, 25.199604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074191, -0.806402, 0.586695,
		-0.985799, 0.148181, 0.079011,
		-0.150651, -0.572501, -0.805945,
		29.104500, 29.057051, 24.957821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617853, 28.985571, 25.749571>,  <29.209955, 29.457802, 25.521982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617853, 28.985571, 25.749571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.806515, 28.820412, 25.437916>,  <28.919712, 28.721317, 25.250923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.806515, 28.820412, 25.437916>,  <28.617853, 28.985571, 25.749571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806515, 28.820412, 25.437916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000391, -0.883497, 0.468437,
		-0.881786, -0.221243, -0.416540,
		0.471650, -0.412898, -0.779141,
		28.948011, 28.696543, 25.204174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238155, 28.480904, 25.603359>,  <28.617853, 28.985571, 25.749571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238155, 28.480904, 25.603359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.598286, 28.374069, 25.465908>,  <28.814363, 28.309969, 25.383438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.598286, 28.374069, 25.465908>,  <28.238155, 28.480904, 25.603359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598286, 28.374069, 25.465908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008257, -0.778930, 0.627057,
		-0.435139, -0.567392, -0.699085,
		0.900325, -0.267084, -0.343628,
		28.868383, 28.293943, 25.362820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188946, 27.750425, 25.573286>,  <28.238155, 28.480904, 25.603359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188946, 27.750425, 25.573286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.579041, 27.836105, 25.551273>,  <28.813097, 27.887512, 25.538065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.579041, 27.836105, 25.551273>,  <28.188946, 27.750425, 25.573286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579041, 27.836105, 25.551273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215776, -0.867040, 0.449091,
		0.048480, -0.449845, -0.891790,
		0.975239, 0.214199, -0.055032,
		28.871613, 27.900366, 25.534763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624496, 27.048929, 25.385513>,  <28.188946, 27.750425, 25.573286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624496, 27.048929, 25.385513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.876936, 27.300934, 25.566532>,  <29.028399, 27.452137, 25.675144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.876936, 27.300934, 25.566532>,  <28.624496, 27.048929, 25.385513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876936, 27.300934, 25.566532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298073, -0.735572, 0.608347,
		0.716149, -0.249033, -0.652007,
		0.631097, 0.630013, 0.452549,
		29.066265, 27.489937, 25.702297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.867464, 26.725830, 25.343937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.804785, 27.011284, 25.617043>,  <29.767178, 27.182556, 25.780907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.804785, 27.011284, 25.617043>,  <29.867464, 26.725830, 25.343937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804785, 27.011284, 25.617043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621774, -0.465835, 0.629599,
		0.767361, 0.523184, -0.370724,
		-0.156699, 0.713636, 0.682766,
		29.757774, 27.225374, 25.821873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555073, 27.038673, 25.668953>,  <29.867464, 26.725830, 25.343937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555073, 27.038673, 25.668953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.253262, 27.094242, 25.925510>,  <30.072174, 27.127583, 26.079445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.253262, 27.094242, 25.925510>,  <30.555073, 27.038673, 25.668953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253262, 27.094242, 25.925510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491003, -0.528962, 0.692181,
		0.435432, 0.837197, 0.330907,
		-0.754530, 0.138922, 0.641394,
		30.026903, 27.135918, 26.117928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889585, 27.137390, 26.246035>,  <30.555073, 27.038673, 25.668953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889585, 27.137390, 26.246035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523464, 27.016216, 26.352207>,  <30.303791, 26.943512, 26.415911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523464, 27.016216, 26.352207>,  <30.889585, 27.137390, 26.246035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523464, 27.016216, 26.352207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399681, -0.601689, 0.691538,
		-0.049786, 0.739053, 0.671805,
		-0.915301, -0.302937, 0.265429,
		30.248875, 26.925335, 26.431835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996758, 27.131870, 27.023428>,  <30.889585, 27.137390, 26.246035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996758, 27.131870, 27.023428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.675823, 26.925327, 26.903671>,  <30.483263, 26.801401, 26.831818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.675823, 26.925327, 26.903671>,  <30.996758, 27.131870, 27.023428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675823, 26.925327, 26.903671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248427, -0.744981, 0.619102,
		-0.542720, 0.422349, 0.726000,
		-0.802334, -0.516357, -0.299393,
		30.435123, 26.770420, 26.813854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807953, 26.819750, 27.632673>,  <30.996758, 27.131870, 27.023428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807953, 26.819750, 27.632673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.625519, 26.606804, 27.347416>,  <30.516058, 26.479036, 27.176262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.625519, 26.606804, 27.347416>,  <30.807953, 26.819750, 27.632673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625519, 26.606804, 27.347416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172385, -0.839015, 0.516079,
		-0.873082, 0.112439, 0.474432,
		-0.456083, -0.532365, -0.713145,
		30.488693, 26.447094, 27.133472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422476, 26.448324, 27.998867>,  <30.807953, 26.819750, 27.632673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422476, 26.448324, 27.998867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.462799, 26.255302, 27.650848>,  <30.486994, 26.139490, 27.442038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.462799, 26.255302, 27.650848>,  <30.422476, 26.448324, 27.998867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462799, 26.255302, 27.650848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138958, -0.859100, 0.492583,
		-0.985154, -0.170557, -0.019550,
		0.100809, -0.482554, -0.870046,
		30.493042, 26.110537, 27.389835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154390, 25.830372, 28.100956>,  <30.422476, 26.448324, 27.998867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154390, 25.830372, 28.100956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.361149, 25.748367, 27.768501>,  <30.485205, 25.699165, 27.569029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.361149, 25.748367, 27.768501>,  <30.154390, 25.830372, 28.100956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361149, 25.748367, 27.768501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104961, -0.948397, 0.299210,
		-0.849588, -0.241899, -0.468707,
		0.516899, -0.205009, -0.831136,
		30.516218, 25.686865, 27.519161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875443, 25.287132, 27.865704>,  <30.154390, 25.830372, 28.100956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875443, 25.287132, 27.865704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239866, 25.274841, 27.701252>,  <30.458521, 25.267467, 27.602581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239866, 25.274841, 27.701252>,  <29.875443, 25.287132, 27.865704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239866, 25.274841, 27.701252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086987, -0.960443, 0.264542,
		-0.402996, -0.276776, -0.872347,
		0.911059, -0.030726, -0.411130,
		30.513184, 25.265623, 27.577913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828773, 24.684456, 27.488600>,  <29.875443, 25.287132, 27.865704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828773, 24.684456, 27.488600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219791, 24.759754, 27.526489>,  <30.454401, 24.804934, 27.549223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219791, 24.759754, 27.526489>,  <29.828773, 24.684456, 27.488600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219791, 24.759754, 27.526489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136033, -0.906983, 0.398594,
		0.160948, -0.376757, -0.912222,
		0.977543, 0.188245, 0.094726,
		30.513054, 24.816227, 27.554907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137388, 24.091465, 27.296490>,  <29.828773, 24.684456, 27.488600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137388, 24.091465, 27.296490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.388952, 24.287354, 27.538033>,  <30.539890, 24.404886, 27.682959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.388952, 24.287354, 27.538033>,  <30.137388, 24.091465, 27.296490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388952, 24.287354, 27.538033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249857, -0.862797, 0.439491,
		0.736236, -0.125522, -0.664982,
		0.628910, 0.489720, 0.603859,
		30.577625, 24.434269, 27.719191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788567, 23.824028, 27.082956>,  <30.137388, 24.091465, 27.296490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788567, 23.824028, 27.082956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854582, 23.969448, 27.449692>,  <30.894192, 24.056700, 27.669733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854582, 23.969448, 27.449692>,  <30.788567, 23.824028, 27.082956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854582, 23.969448, 27.449692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136558, -0.929056, 0.343811,
		0.976788, 0.068460, -0.202975,
		0.165038, 0.363548, 0.916840,
		30.904093, 24.078512, 27.724743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139336, 23.237759, 27.301004>,  <30.788567, 23.824028, 27.082956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139336, 23.237759, 27.301004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028492, 23.465191, 27.610825>,  <30.961987, 23.601650, 27.796717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028492, 23.465191, 27.610825>,  <31.139336, 23.237759, 27.301004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028492, 23.465191, 27.610825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035189, -0.799572, 0.599538,
		0.960194, 0.193392, 0.201560,
		-0.277107, 0.568581, 0.774550,
		30.945360, 23.635765, 27.843189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647776, 23.194126, 27.637838>,  <31.139336, 23.237759, 27.301004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647776, 23.194126, 27.637838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341419, 23.277912, 27.880997>,  <31.157606, 23.328184, 28.026892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341419, 23.277912, 27.880997>,  <31.647776, 23.194126, 27.637838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341419, 23.277912, 27.880997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336743, -0.674738, 0.656760,
		0.547739, 0.707710, 0.446238,
		-0.765889, 0.209465, 0.607896,
		31.111652, 23.340752, 28.063366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979757, 23.261154, 28.344698>,  <31.647776, 23.194126, 27.637838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979757, 23.261154, 28.344698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.588102, 23.204750, 28.403225>,  <31.353109, 23.170908, 28.438341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.588102, 23.204750, 28.403225>,  <31.979757, 23.261154, 28.344698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588102, 23.204750, 28.403225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202604, -0.622053, 0.756308,
		-0.015631, 0.770173, 0.637644,
		-0.979136, -0.141011, 0.146316,
		31.294361, 23.162447, 28.447121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823833, 23.367687, 28.994041>,  <31.979757, 23.261154, 28.344698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823833, 23.367687, 28.994041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.499685, 23.151791, 28.902847>,  <31.305197, 23.022253, 28.848131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.499685, 23.151791, 28.902847>,  <31.823833, 23.367687, 28.994041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499685, 23.151791, 28.902847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146753, -0.563683, 0.812850,
		-0.567239, 0.625254, 0.536002,
		-0.810372, -0.539740, -0.227986,
		31.256573, 22.989868, 28.834452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444447, 23.270468, 29.586739>,  <31.823833, 23.367687, 28.994041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444447, 23.270468, 29.586739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.325838, 22.976276, 29.343052>,  <31.254673, 22.799761, 29.196840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.325838, 22.976276, 29.343052>,  <31.444447, 23.270468, 29.586739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325838, 22.976276, 29.343052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108979, -0.659797, 0.743499,
		-0.948787, 0.154073, 0.275797,
		-0.296523, -0.735479, -0.609217,
		31.236881, 22.755632, 29.160288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091349, 22.893238, 30.045549>,  <31.444447, 23.270468, 29.586739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091349, 22.893238, 30.045549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170668, 22.644302, 29.742664>,  <31.218260, 22.494942, 29.560932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170668, 22.644302, 29.742664>,  <31.091349, 22.893238, 30.045549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170668, 22.644302, 29.742664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354147, -0.674869, 0.647403,
		-0.913924, -0.396545, 0.086574,
		0.198298, -0.622337, -0.757215,
		31.230158, 22.457602, 29.515499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916634, 22.264275, 30.372028>,  <31.091349, 22.893238, 30.045549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916634, 22.264275, 30.372028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119385, 22.152740, 30.045757>,  <31.241035, 22.085821, 29.849995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119385, 22.152740, 30.045757>,  <30.916634, 22.264275, 30.372028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119385, 22.152740, 30.045757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442891, -0.727558, 0.523934,
		-0.739542, -0.626826, -0.245289,
		0.506877, -0.278835, -0.815675,
		31.271448, 22.069090, 29.801054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834417, 21.447475, 30.281004>,  <30.916634, 22.264275, 30.372028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834417, 21.447475, 30.281004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.172485, 21.566746, 30.103565>,  <31.375326, 21.638308, 29.997103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.172485, 21.566746, 30.103565>,  <30.834417, 21.447475, 30.281004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172485, 21.566746, 30.103565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532231, -0.545800, 0.647173,
		-0.049144, -0.783068, -0.619992,
		0.845172, 0.298174, -0.443596,
		31.426037, 21.656199, 29.970486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117538, 20.877691, 29.946947>,  <30.834417, 21.447475, 30.281004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117538, 20.877691, 29.946947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.419304, 21.133980, 30.003983>,  <31.600365, 21.287754, 30.038204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.419304, 21.133980, 30.003983>,  <31.117538, 20.877691, 29.946947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419304, 21.133980, 30.003983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417608, -0.636102, 0.648828,
		0.506419, -0.429940, -0.747457,
		0.754416, 0.640723, 0.142587,
		31.645628, 21.326197, 30.046759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670395, 20.478342, 29.864056>,  <31.117538, 20.877691, 29.946947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670395, 20.478342, 29.864056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832518, 20.797394, 30.042725>,  <31.929790, 20.988825, 30.149925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832518, 20.797394, 30.042725>,  <31.670395, 20.478342, 29.864056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832518, 20.797394, 30.042725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615224, -0.599389, 0.512086,
		0.676185, 0.067252, -0.733656,
		0.405306, 0.797628, 0.446673,
		31.954109, 21.036682, 30.176727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274323, 20.224827, 29.955990>,  <31.670395, 20.478342, 29.864056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274323, 20.224827, 29.955990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239170, 20.535751, 30.205170>,  <32.218079, 20.722305, 30.354677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239170, 20.535751, 30.205170>,  <32.274323, 20.224827, 29.955990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239170, 20.535751, 30.205170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556507, -0.480367, 0.677900,
		0.826182, 0.406250, -0.390364,
		-0.087879, 0.777309, 0.622951,
		32.212807, 20.768944, 30.392056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915974, 20.481716, 30.177414>,  <32.274323, 20.224827, 29.955990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915974, 20.481716, 30.177414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688797, 20.575058, 30.493134>,  <32.552490, 20.631063, 30.682566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688797, 20.575058, 30.493134>,  <32.915974, 20.481716, 30.177414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688797, 20.575058, 30.493134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622596, -0.505436, 0.597418,
		0.538351, 0.830710, 0.141770,
		-0.567937, 0.233355, 0.789299,
		32.518417, 20.645065, 30.729923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245441, 20.926561, 30.534271>,  <32.915974, 20.481716, 30.177414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245441, 20.926561, 30.534271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.987221, 20.716217, 30.755806>,  <32.832287, 20.590010, 30.888727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.987221, 20.716217, 30.755806>,  <33.245441, 20.926561, 30.534271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987221, 20.716217, 30.755806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751545, -0.308457, 0.583124,
		-0.135808, 0.792669, 0.594333,
		-0.645551, -0.525861, 0.553836,
		32.793556, 20.558458, 30.921957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826694, 20.861685, 30.988947>,  <33.245441, 20.926561, 30.534271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826694, 20.861685, 30.988947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225727, 20.889240, 30.985271>,  <34.465145, 20.905773, 30.983067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225727, 20.889240, 30.985271>,  <33.826694, 20.861685, 30.988947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225727, 20.889240, 30.985271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065498, 0.887693, -0.455754,
		-0.023240, 0.455254, 0.890058,
		0.997582, 0.068888, -0.009188,
		34.525002, 20.909906, 30.982515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961170, 21.547081, 31.238125>,  <33.826694, 20.861685, 30.988947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961170, 21.547081, 31.238125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296185, 21.461586, 31.036987>,  <34.497192, 21.410288, 30.916306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296185, 21.461586, 31.036987>,  <33.961170, 21.547081, 31.238125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296185, 21.461586, 31.036987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079681, 0.862692, -0.499413,
		0.540542, 0.458343, 0.705504,
		0.837535, -0.213739, -0.502842,
		34.547443, 21.397465, 30.886135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385948, 22.106419, 31.292561>,  <33.961170, 21.547081, 31.238125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385948, 22.106419, 31.292561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.558475, 21.911373, 30.988930>,  <34.661991, 21.794346, 30.806751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.558475, 21.911373, 30.988930>,  <34.385948, 22.106419, 31.292561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558475, 21.911373, 30.988930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072266, 0.857331, -0.509668,
		0.899302, 0.164973, 0.405019,
		0.431317, -0.487614, -0.759077,
		34.687870, 21.765089, 30.761206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820045, 22.568741, 31.025156>,  <34.385948, 22.106419, 31.292561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820045, 22.568741, 31.025156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774986, 22.318939, 30.716015>,  <34.747952, 22.169058, 30.530531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774986, 22.318939, 30.716015>,  <34.820045, 22.568741, 31.025156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774986, 22.318939, 30.716015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151058, 0.757999, -0.634522,
		0.982085, -0.188226, 0.008946,
		-0.112652, -0.624506, -0.772853,
		34.741192, 22.131588, 30.484159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323284, 22.779272, 30.513844>,  <34.820045, 22.568741, 31.025156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323284, 22.779272, 30.513844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055405, 22.572609, 30.300461>,  <34.894676, 22.448612, 30.172432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055405, 22.572609, 30.300461>,  <35.323284, 22.779272, 30.513844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055405, 22.572609, 30.300461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149348, 0.797349, -0.584748,
		0.727464, -0.311932, -0.611142,
		-0.669695, -0.516655, -0.533456,
		34.854496, 22.417612, 30.140425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518639, 22.790916, 29.742245>,  <35.323284, 22.779272, 30.513844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518639, 22.790916, 29.742245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132458, 22.686691, 29.741516>,  <34.900749, 22.624157, 29.741079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132458, 22.686691, 29.741516>,  <35.518639, 22.790916, 29.742245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132458, 22.686691, 29.741516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221493, 0.824341, -0.520964,
		0.137244, -0.502564, -0.853577,
		-0.965456, -0.260561, -0.001821,
		34.842819, 22.608522, 29.740971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267757, 22.827131, 29.052755>,  <35.518639, 22.790916, 29.742245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267757, 22.827131, 29.052755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940819, 22.852642, 29.281799>,  <34.744656, 22.867949, 29.419226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940819, 22.852642, 29.281799>,  <35.267757, 22.827131, 29.052755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940819, 22.852642, 29.281799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291349, 0.811665, -0.506275,
		-0.497059, -0.580630, -0.644827,
		-0.817342, 0.063779, 0.572611,
		34.695618, 22.871777, 29.453583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615639, 22.880264, 28.590595>,  <35.267757, 22.827131, 29.052755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615639, 22.880264, 28.590595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640503, 23.050632, 28.951645>,  <34.655422, 23.152853, 29.168274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640503, 23.050632, 28.951645>,  <34.615639, 22.880264, 28.590595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640503, 23.050632, 28.951645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236620, 0.884876, -0.401254,
		-0.969612, -0.188638, 0.155783,
		0.062157, 0.425922, 0.902622,
		34.659149, 23.178410, 29.222431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859028, 22.624994, 28.446064>,  <34.615639, 22.880264, 28.590595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859028, 22.624994, 28.446064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.898666, 22.921047, 28.712112>,  <33.922451, 23.098679, 28.871740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.898666, 22.921047, 28.712112>,  <33.859028, 22.624994, 28.446064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898666, 22.921047, 28.712112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327555, 0.655421, -0.680537,
		-0.939621, -0.150423, 0.307386,
		0.099099, 0.740133, 0.665119,
		33.928394, 23.143087, 28.911648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232323, 23.018301, 28.357944>,  <33.859028, 22.624994, 28.446064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232323, 23.018301, 28.357944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503895, 23.264050, 28.518742>,  <33.666840, 23.411499, 28.615219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503895, 23.264050, 28.518742>,  <33.232323, 23.018301, 28.357944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503895, 23.264050, 28.518742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391073, 0.765999, -0.510202,
		-0.621381, 0.189183, 0.760326,
		0.678931, 0.614373, 0.401993,
		33.707573, 23.448362, 28.639339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791027, 23.672813, 28.546122>,  <33.232323, 23.018301, 28.357944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791027, 23.672813, 28.546122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173943, 23.786922, 28.527271>,  <33.403690, 23.855389, 28.515961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173943, 23.786922, 28.527271>,  <32.791027, 23.672813, 28.546122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173943, 23.786922, 28.527271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266683, 0.808155, -0.525134,
		-0.111722, 0.515272, 0.849713,
		0.957287, 0.285274, -0.047126,
		33.461128, 23.872505, 28.513134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790451, 24.464687, 28.648832>,  <32.791027, 23.672813, 28.546122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790451, 24.464687, 28.648832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142746, 24.366108, 28.487061>,  <33.354122, 24.306959, 28.389997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142746, 24.366108, 28.487061>,  <32.790451, 24.464687, 28.648832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142746, 24.366108, 28.487061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122929, 0.705716, -0.697749,
		0.457373, 0.664250, 0.591255,
		0.880737, -0.246450, -0.404431,
		33.406967, 24.292173, 28.365732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077339, 25.075262, 28.552519>,  <32.790451, 24.464687, 28.648832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077339, 25.075262, 28.552519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233433, 24.800671, 28.307091>,  <33.327087, 24.635916, 28.159834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233433, 24.800671, 28.307091>,  <33.077339, 25.075262, 28.552519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233433, 24.800671, 28.307091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074567, 0.640651, -0.764203,
		0.917693, 0.343967, 0.198813,
		0.390231, -0.686478, -0.613569,
		33.350502, 24.594727, 28.123020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669800, 25.390388, 28.180393>,  <33.077339, 25.075262, 28.552519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669800, 25.390388, 28.180393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.558273, 25.081528, 27.951992>,  <33.491360, 24.896212, 27.814951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.558273, 25.081528, 27.951992>,  <33.669800, 25.390388, 28.180393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558273, 25.081528, 27.951992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039886, 0.603379, -0.796456,
		0.959517, -0.199286, -0.199027,
		-0.278811, -0.772152, -0.571004,
		33.474628, 24.849882, 27.780691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151070, 25.345678, 27.566540>,  <33.669800, 25.390388, 28.180393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151070, 25.345678, 27.566540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799431, 25.174355, 27.482880>,  <33.588448, 25.071560, 27.432684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799431, 25.174355, 27.482880>,  <34.151070, 25.345678, 27.566540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799431, 25.174355, 27.482880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045714, 0.512537, -0.857448,
		0.474447, -0.744218, -0.470148,
		-0.879096, -0.428306, -0.209151,
		33.535702, 25.045862, 27.420134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065529, 25.477623, 26.939470>,  <34.151070, 25.345678, 27.566540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065529, 25.477623, 26.939470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691647, 25.346378, 26.994133>,  <33.467319, 25.267632, 27.026932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691647, 25.346378, 26.994133>,  <34.065529, 25.477623, 26.939470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691647, 25.346378, 26.994133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249314, 0.331204, -0.910025,
		0.253322, -0.884675, -0.391379,
		-0.934703, -0.328106, 0.136660,
		33.411236, 25.247946, 27.035131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984627, 24.959032, 26.381290>,  <34.065529, 25.477623, 26.939470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984627, 24.959032, 26.381290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652145, 25.134377, 26.518078>,  <33.452656, 25.239584, 26.600151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652145, 25.134377, 26.518078>,  <33.984627, 24.959032, 26.381290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652145, 25.134377, 26.518078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155897, 0.406642, -0.900188,
		-0.533666, -0.801550, -0.269662,
		-0.831202, 0.438361, 0.341970,
		33.402786, 25.265884, 26.620668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535332, 24.867426, 25.803259>,  <33.984627, 24.959032, 26.381290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535332, 24.867426, 25.803259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352303, 25.158058, 26.008278>,  <33.242485, 25.332438, 26.131289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352303, 25.158058, 26.008278>,  <33.535332, 24.867426, 25.803259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352303, 25.158058, 26.008278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148797, 0.505734, -0.849760,
		-0.876633, -0.465094, -0.123297,
		-0.457574, 0.726582, 0.512548,
		33.215031, 25.376032, 26.162043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937752, 24.989548, 25.426271>,  <33.535332, 24.867426, 25.803259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937752, 24.989548, 25.426271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018093, 25.317921, 25.640087>,  <33.066296, 25.514944, 25.768375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018093, 25.317921, 25.640087>,  <32.937752, 24.989548, 25.426271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018093, 25.317921, 25.640087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136503, 0.563787, -0.814562,
		-0.970065, 0.090640, 0.225298,
		0.200852, 0.820931, 0.534537,
		33.078350, 25.564199, 25.800447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419937, 25.470116, 25.298239>,  <32.937752, 24.989548, 25.426271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419937, 25.470116, 25.298239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724205, 25.704144, 25.410721>,  <32.906765, 25.844561, 25.478210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724205, 25.704144, 25.410721>,  <32.419937, 25.470116, 25.298239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724205, 25.704144, 25.410721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330451, 0.721871, -0.608033,
		-0.558735, 0.369588, 0.742442,
		0.760669, 0.585070, 0.281204,
		32.952404, 25.879665, 25.495083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.837656, 31.020134, 17.282400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.124123, 31.219593, 17.087074>,  <24.296003, 31.339270, 16.969879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.124123, 31.219593, 17.087074>,  <23.837656, 31.020134, 17.282400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.124123, 31.219593, 17.087074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042540, 0.729551, 0.682603,
		0.696627, -0.468088, 0.543696,
		0.716172, 0.498648, -0.488312,
		24.338974, 31.369188, 16.940580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.223043, 31.184891, 17.713158>,  <23.837656, 31.020134, 17.282400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.223043, 31.184891, 17.713158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.347433, 31.445717, 17.436577>,  <24.422068, 31.602213, 17.270628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.347433, 31.445717, 17.436577>,  <24.223043, 31.184891, 17.713158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.347433, 31.445717, 17.436577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221654, 0.657705, 0.719926,
		0.924210, -0.377143, 0.059998,
		0.310976, 0.652064, -0.691452,
		24.440725, 31.641336, 17.229141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809593, 31.434525, 18.017771>,  <24.223043, 31.184891, 17.713158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809593, 31.434525, 18.017771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.693914, 31.704998, 17.746731>,  <24.624506, 31.867281, 17.584106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.693914, 31.704998, 17.746731>,  <24.809593, 31.434525, 18.017771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693914, 31.704998, 17.746731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048463, 0.717282, 0.695096,
		0.956041, 0.168182, -0.240207,
		-0.289199, 0.676182, -0.677601,
		24.607155, 31.907852, 17.543451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326269, 31.973339, 18.041555>,  <24.809593, 31.434525, 18.017771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326269, 31.973339, 18.041555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.013296, 32.148037, 17.863991>,  <24.825512, 32.252857, 17.757452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.013296, 32.148037, 17.863991>,  <25.326269, 31.973339, 18.041555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013296, 32.148037, 17.863991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032389, 0.740413, 0.671372,
		0.621893, 0.510925, -0.593468,
		-0.782432, 0.436743, -0.443909,
		24.778566, 32.279060, 17.730818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501606, 32.645164, 18.112211>,  <25.326269, 31.973339, 18.041555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501606, 32.645164, 18.112211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.117970, 32.724155, 18.031071>,  <24.887787, 32.771549, 17.982388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.117970, 32.724155, 18.031071>,  <25.501606, 32.645164, 18.112211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117970, 32.724155, 18.031071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026622, 0.650450, 0.759083,
		0.281843, 0.733430, -0.618583,
		-0.959091, 0.197474, -0.202850,
		24.830242, 32.783398, 17.970215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334866, 33.412113, 18.057663>,  <25.501606, 32.645164, 18.112211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334866, 33.412113, 18.057663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.974062, 33.252182, 18.122795>,  <24.757580, 33.156223, 18.161875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.974062, 33.252182, 18.122795>,  <25.334866, 33.412113, 18.057663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974062, 33.252182, 18.122795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187907, 0.703180, 0.685732,
		-0.388677, 0.587940, -0.709406,
		-0.902009, -0.399831, 0.162832,
		24.703459, 33.132233, 18.171644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933804, 34.000107, 18.022705>,  <25.334866, 33.412113, 18.057663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933804, 34.000107, 18.022705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.761101, 33.720856, 18.251160>,  <24.657478, 33.553303, 18.388233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.761101, 33.720856, 18.251160>,  <24.933804, 34.000107, 18.022705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.761101, 33.720856, 18.251160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338850, 0.712358, 0.614595,
		-0.835923, 0.071825, -0.544127,
		-0.431756, -0.698132, 0.571138,
		24.631575, 33.511417, 18.422501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254658, 34.304520, 18.183969>,  <24.933804, 34.000107, 18.022705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254658, 34.304520, 18.183969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.294388, 34.013630, 18.455639>,  <24.318226, 33.839096, 18.618641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.294388, 34.013630, 18.455639>,  <24.254658, 34.304520, 18.183969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294388, 34.013630, 18.455639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192315, 0.655651, 0.730162,
		-0.976293, -0.203140, -0.074732,
		0.099327, -0.727225, 0.679175,
		24.324186, 33.795464, 18.659391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.642775, 34.389111, 18.579453>,  <24.254658, 34.304520, 18.183969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.642775, 34.389111, 18.579453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.873093, 34.155880, 18.808704>,  <24.011284, 34.015942, 18.946257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.873093, 34.155880, 18.808704>,  <23.642775, 34.389111, 18.579453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.873093, 34.155880, 18.808704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166732, 0.602526, 0.780489,
		-0.800412, -0.544962, 0.249714,
		0.575796, -0.583078, 0.573131,
		24.045832, 33.980957, 18.980644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.199835, 34.283550, 19.092461>,  <23.642775, 34.389111, 18.579453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.199835, 34.283550, 19.092461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.569286, 34.221287, 19.232567>,  <23.790956, 34.183929, 19.316631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.569286, 34.221287, 19.232567>,  <23.199835, 34.283550, 19.092461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569286, 34.221287, 19.232567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244259, 0.465213, 0.850831,
		-0.295384, -0.871406, 0.391663,
		0.923627, -0.155655, 0.350265,
		23.846375, 34.174591, 19.337646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.118290, 34.056839, 19.792507>,  <23.199835, 34.283550, 19.092461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.118290, 34.056839, 19.792507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.496305, 34.187592, 19.789574>,  <23.723114, 34.266041, 19.787813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.496305, 34.187592, 19.789574>,  <23.118290, 34.056839, 19.792507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.496305, 34.187592, 19.789574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207809, 0.617809, 0.758372,
		0.252425, -0.715166, 0.651781,
		0.945038, 0.326878, -0.007333,
		23.779818, 34.285656, 19.787374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.331373, 33.976418, 20.393429>,  <23.118290, 34.056839, 19.792507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.331373, 33.976418, 20.393429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.579548, 34.256287, 20.251717>,  <23.728453, 34.424210, 20.166689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.579548, 34.256287, 20.251717>,  <23.331373, 33.976418, 20.393429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.579548, 34.256287, 20.251717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130873, 0.537777, 0.832868,
		0.773261, -0.470374, 0.425225,
		0.620436, 0.699674, -0.354282,
		23.765678, 34.466190, 20.145432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.661356, 34.098160, 20.913372>,  <23.331373, 33.976418, 20.393429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.661356, 34.098160, 20.913372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.727982, 34.430244, 20.700577>,  <23.767958, 34.629494, 20.572901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.727982, 34.430244, 20.700577>,  <23.661356, 34.098160, 20.913372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.727982, 34.430244, 20.700577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064036, 0.547492, 0.834358,
		0.983949, -0.104908, 0.144355,
		0.166564, 0.830209, -0.531986,
		23.777950, 34.679306, 20.540981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.144276, 34.372063, 21.289415>,  <23.661356, 34.098160, 20.913372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.144276, 34.372063, 21.289415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.033457, 34.696125, 21.082771>,  <23.966965, 34.890564, 20.958784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.033457, 34.696125, 21.082771>,  <24.144276, 34.372063, 21.289415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.033457, 34.696125, 21.082771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054215, 0.549980, 0.833416,
		0.959325, 0.202888, -0.196294,
		-0.277048, 0.810159, -0.516610,
		23.950342, 34.939175, 20.927788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640371, 34.934299, 21.426334>,  <24.144276, 34.372063, 21.289415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640371, 34.934299, 21.426334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.305794, 35.113525, 21.300098>,  <24.105047, 35.221062, 21.224356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.305794, 35.113525, 21.300098>,  <24.640371, 34.934299, 21.426334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.305794, 35.113525, 21.300098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148345, 0.739449, 0.656665,
		0.527592, 0.502447, -0.684977,
		-0.836445, 0.448065, -0.315592,
		24.054861, 35.247944, 21.205421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.827570, 35.720409, 21.460678>,  <24.640371, 34.934299, 21.426334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.827570, 35.720409, 21.460678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.429070, 35.685867, 21.462685>,  <24.189968, 35.665142, 21.463888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.429070, 35.685867, 21.462685>,  <24.827570, 35.720409, 21.460678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429070, 35.685867, 21.462685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045248, 0.569679, 0.820621,
		-0.073719, 0.817318, -0.571452,
		-0.996252, -0.086352, 0.005014,
		24.130194, 35.659962, 21.464190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619858, 36.424450, 21.629519>,  <24.827570, 35.720409, 21.460678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619858, 36.424450, 21.629519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.302073, 36.194065, 21.706562>,  <24.111401, 36.055836, 21.752789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.302073, 36.194065, 21.706562>,  <24.619858, 36.424450, 21.629519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302073, 36.194065, 21.706562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272360, 0.621367, 0.734659,
		-0.542813, 0.531202, -0.650522,
		-0.794464, -0.575959, 0.192608,
		24.063734, 36.021278, 21.764345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.251106, 36.864651, 21.984959>,  <24.619858, 36.424450, 21.629519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.251106, 36.864651, 21.984959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.015646, 36.550728, 22.062489>,  <23.874369, 36.362373, 22.109007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.015646, 36.550728, 22.062489>,  <24.251106, 36.864651, 21.984959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.015646, 36.550728, 22.062489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249039, 0.404162, 0.880132,
		-0.769069, 0.469822, -0.433358,
		-0.588653, -0.784806, 0.193825,
		23.839050, 36.315285, 22.120636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.508394, 37.043030, 22.131676>,  <24.251106, 36.864651, 21.984959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.508394, 37.043030, 22.131676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.576382, 36.697132, 22.320709>,  <23.617174, 36.489594, 22.434130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.576382, 36.697132, 22.320709>,  <23.508394, 37.043030, 22.131676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.576382, 36.697132, 22.320709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350091, 0.395293, 0.849223,
		-0.921166, -0.309787, -0.235550,
		0.169967, -0.864740, 0.472584,
		23.627373, 36.437710, 22.462484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.848473, 36.920204, 22.526875>,  <23.508394, 37.043030, 22.131676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.848473, 36.920204, 22.526875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.126240, 36.685520, 22.693516>,  <23.292900, 36.544708, 22.793501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.126240, 36.685520, 22.693516>,  <22.848473, 36.920204, 22.526875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.126240, 36.685520, 22.693516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356427, 0.222487, 0.907447,
		-0.625098, -0.778633, -0.054622,
		0.694415, -0.586712, 0.416602,
		23.334564, 36.509506, 22.818497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.606716, 36.583790, 23.189661>,  <22.848473, 36.920204, 22.526875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.606716, 36.583790, 23.189661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.004442, 36.566689, 23.228668>,  <23.243078, 36.556427, 23.252073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.004442, 36.566689, 23.228668>,  <22.606716, 36.583790, 23.189661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.004442, 36.566689, 23.228668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086744, 0.205881, 0.974725,
		-0.061748, -0.977643, 0.201002,
		0.994316, -0.042752, 0.097518,
		23.302736, 36.553864, 23.257923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.987724, 36.694767, 23.450451>,  <22.606716, 36.583790, 23.189661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.987724, 36.694767, 23.450451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.604996, 36.586655, 23.493240>,  <21.375359, 36.521790, 23.518913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.604996, 36.586655, 23.493240>,  <21.987724, 36.694767, 23.450451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.604996, 36.586655, 23.493240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059456, -0.542208, -0.838138,
		0.284533, -0.795588, 0.534865,
		-0.956821, -0.270279, 0.106974,
		21.317949, 36.505569, 23.525333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.940617, 35.940872, 23.214659>,  <21.987724, 36.694767, 23.450451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.940617, 35.940872, 23.214659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.571060, 36.093277, 23.200481>,  <21.349327, 36.184719, 23.191975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.571060, 36.093277, 23.200481>,  <21.940617, 35.940872, 23.214659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.571060, 36.093277, 23.200481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124985, -0.388012, -0.913140,
		-0.361661, -0.839216, 0.406102,
		-0.923894, 0.381004, -0.035439,
		21.293894, 36.207581, 23.189848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.411688, 35.355652, 23.166761>,  <21.940617, 35.940872, 23.214659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.411688, 35.355652, 23.166761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.225325, 35.675068, 23.014309>,  <21.113506, 35.866718, 22.922836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.225325, 35.675068, 23.014309>,  <21.411688, 35.355652, 23.166761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225325, 35.675068, 23.014309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271280, -0.538907, -0.797487,
		-0.842221, -0.268162, 0.467710,
		-0.465908, 0.798541, -0.381132,
		21.085552, 35.914631, 22.899969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.846521, 35.099636, 22.886539>,  <21.411688, 35.355652, 23.166761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.846521, 35.099636, 22.886539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.861971, 35.464355, 22.723011>,  <20.871241, 35.683186, 22.624893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.861971, 35.464355, 22.723011>,  <20.846521, 35.099636, 22.886539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.861971, 35.464355, 22.723011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291028, -0.381126, -0.877522,
		-0.955935, 0.152872, 0.250638,
		0.038624, 0.911797, -0.408822,
		20.873558, 35.737896, 22.600365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277901, 35.105488, 22.463161>,  <20.846521, 35.099636, 22.886539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277901, 35.105488, 22.463161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.498951, 35.399940, 22.306847>,  <20.631580, 35.576614, 22.213058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.498951, 35.399940, 22.306847>,  <20.277901, 35.105488, 22.463161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.498951, 35.399940, 22.306847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270313, -0.285227, -0.919552,
		-0.788376, 0.613802, 0.041363,
		0.552625, 0.736134, -0.390785,
		20.664738, 35.620781, 22.189611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939390, 35.224583, 21.948414>,  <20.277901, 35.105488, 22.463161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939390, 35.224583, 21.948414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.306608, 35.364418, 21.873596>,  <20.526939, 35.448318, 21.828707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.306608, 35.364418, 21.873596>,  <19.939390, 35.224583, 21.948414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.306608, 35.364418, 21.873596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108997, -0.231053, -0.966816,
		-0.381200, 0.907968, -0.174014,
		0.918045, 0.349584, -0.187043,
		20.582022, 35.469292, 21.817484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.938129, 35.665211, 21.331226>,  <19.939390, 35.224583, 21.948414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.938129, 35.665211, 21.331226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.309238, 35.518116, 21.356567>,  <20.531904, 35.429859, 21.371773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.309238, 35.518116, 21.356567>,  <19.938129, 35.665211, 21.331226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.309238, 35.518116, 21.356567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065840, -0.328435, -0.942229,
		0.367297, 0.870001, -0.328924,
		0.927770, -0.367735, 0.063352,
		20.587570, 35.407795, 21.375572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.163752, 35.724548, 20.664871>,  <19.938129, 35.665211, 21.331226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.163752, 35.724548, 20.664871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.449369, 35.481861, 20.804604>,  <20.620741, 35.336250, 20.888443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.449369, 35.481861, 20.804604>,  <20.163752, 35.724548, 20.664871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449369, 35.481861, 20.804604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030533, -0.525487, -0.850254,
		0.699434, 0.596453, -0.393746,
		0.714045, -0.606718, 0.349332,
		20.663584, 35.299847, 20.909403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.667816, 35.597267, 20.166653>,  <20.163752, 35.724548, 20.664871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.667816, 35.597267, 20.166653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.704290, 35.276787, 20.403214>,  <20.726175, 35.084499, 20.545149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.704290, 35.276787, 20.403214>,  <20.667816, 35.597267, 20.166653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.704290, 35.276787, 20.403214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043502, -0.596513, -0.801423,
		0.994883, 0.047353, -0.089249,
		0.091188, -0.801205, 0.591401,
		20.731647, 35.036427, 20.580633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116604, 35.084599, 19.791992>,  <20.667816, 35.597267, 20.166653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116604, 35.084599, 19.791992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.977106, 34.827900, 20.065205>,  <20.893408, 34.673882, 20.229132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.977106, 34.827900, 20.065205>,  <21.116604, 35.084599, 19.791992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.977106, 34.827900, 20.065205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109544, -0.695881, -0.709754,
		0.930794, -0.322345, 0.172385,
		-0.348745, -0.641751, 0.683032,
		20.872482, 34.635376, 20.270115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.499790, 34.427746, 19.816212>,  <21.116604, 35.084599, 19.791992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.499790, 34.427746, 19.816212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.145872, 34.330547, 19.975254>,  <20.933521, 34.272228, 20.070679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.145872, 34.330547, 19.975254>,  <21.499790, 34.427746, 19.816212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.145872, 34.330547, 19.975254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032632, -0.818858, -0.573068,
		0.464838, -0.520023, 0.716591,
		-0.884794, -0.243000, 0.397605,
		20.880434, 34.257648, 20.094536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.604176, 33.691357, 19.987747>,  <21.499790, 34.427746, 19.816212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.604176, 33.691357, 19.987747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.222366, 33.804569, 19.950268>,  <20.993280, 33.872498, 19.927780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.222366, 33.804569, 19.950268>,  <21.604176, 33.691357, 19.987747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.222366, 33.804569, 19.950268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163078, -0.758754, -0.630634,
		-0.249583, -0.586674, 0.770404,
		-0.954523, 0.283031, -0.093698,
		20.936008, 33.889477, 19.922159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.256195, 33.170586, 20.236778>,  <21.604176, 33.691357, 19.987747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.256195, 33.170586, 20.236778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.997221, 33.361454, 19.999077>,  <20.841837, 33.475975, 19.856457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.997221, 33.361454, 19.999077>,  <21.256195, 33.170586, 20.236778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.997221, 33.361454, 19.999077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033086, -0.761403, -0.647434,
		-0.761403, -0.438832, 0.477171,
		0.647434, -0.477171, 0.594254,
		20.802990, 33.504604, 19.820801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.797222, 32.666100, 20.072397>,  <21.256195, 33.170586, 20.236778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.797222, 32.666100, 20.072397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.769810, 32.957039, 19.799263>,  <20.753363, 33.131603, 19.635382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.769810, 32.957039, 19.799263>,  <20.797222, 32.666100, 20.072397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.769810, 32.957039, 19.799263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089945, -0.686163, -0.721866,
		-0.993586, 0.011947, 0.112445,
		-0.068531, 0.727350, -0.682837,
		20.749250, 33.175243, 19.594412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084089, 32.589188, 19.683929>,  <20.797222, 32.666100, 20.072397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084089, 32.589188, 19.683929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.359024, 32.744278, 19.438251>,  <20.523985, 32.837330, 19.290844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.359024, 32.744278, 19.438251>,  <20.084089, 32.589188, 19.683929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359024, 32.744278, 19.438251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309876, -0.608259, -0.730752,
		-0.656919, 0.692598, -0.297934,
		0.687338, 0.387722, -0.614197,
		20.565226, 32.860596, 19.253992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.010868, 32.393410, 18.994669>,  <20.084089, 32.589188, 19.683929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.010868, 32.393410, 18.994669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.350420, 32.563641, 18.869267>,  <20.554152, 32.665779, 18.794025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.350420, 32.563641, 18.869267>,  <20.010868, 32.393410, 18.994669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.350420, 32.563641, 18.869267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003896, -0.588046, -0.808818,
		-0.528573, 0.687810, -0.497522,
		0.848879, 0.425581, -0.313505,
		20.605083, 32.691315, 18.775215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079760, 32.187054, 18.278191>,  <20.010868, 32.393410, 18.994669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079760, 32.187054, 18.278191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.437164, 32.354248, 18.343822>,  <20.651608, 32.454563, 18.383202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.437164, 32.354248, 18.343822>,  <20.079760, 32.187054, 18.278191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437164, 32.354248, 18.343822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406593, -0.598040, -0.690674,
		-0.190565, 0.683840, -0.704306,
		0.893514, 0.417984, 0.164080,
		20.705219, 32.479645, 18.393045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.383673, 32.436535, 17.635117>,  <20.079760, 32.187054, 18.278191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.383673, 32.436535, 17.635117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.704643, 32.389519, 17.869141>,  <20.897226, 32.361309, 18.009554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.704643, 32.389519, 17.869141>,  <20.383673, 32.436535, 17.635117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.704643, 32.389519, 17.869141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437539, -0.550800, -0.710759,
		0.405794, 0.826319, -0.390548,
		0.802428, -0.117542, 0.585058,
		20.945372, 32.354256, 18.044659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917789, 32.623173, 17.197594>,  <20.383673, 32.436535, 17.635117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917789, 32.623173, 17.197594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056091, 32.386387, 17.488808>,  <21.139072, 32.244316, 17.663536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056091, 32.386387, 17.488808>,  <20.917789, 32.623173, 17.197594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056091, 32.386387, 17.488808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359389, -0.633174, -0.685515,
		0.866772, 0.498666, -0.006176,
		0.345753, -0.591965, 0.728033,
		21.159817, 32.208797, 17.707218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520521, 32.282150, 16.909149>,  <20.917789, 32.623173, 17.197594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520521, 32.282150, 16.909149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.394140, 32.046894, 17.206944>,  <21.318312, 31.905739, 17.385620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.394140, 32.046894, 17.206944>,  <21.520521, 32.282150, 16.909149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.394140, 32.046894, 17.206944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287082, -0.807162, -0.515824,
		0.904301, 0.050754, 0.423868,
		-0.315950, -0.588145, 0.744487,
		21.299355, 31.870451, 17.430290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.109028, 31.938822, 17.193504>,  <21.520521, 32.282150, 16.909149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.109028, 31.938822, 17.193504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.781294, 31.717327, 17.252922>,  <21.584654, 31.584431, 17.288572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.781294, 31.717327, 17.252922>,  <22.109028, 31.938822, 17.193504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781294, 31.717327, 17.252922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489914, -0.810811, -0.320266,
		0.297784, -0.189631, 0.935609,
		-0.819334, -0.553738, 0.148543,
		21.535494, 31.551205, 17.297485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.056078, 29.386839, 24.261446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447321, 29.466667, 24.285042>,  <28.682066, 29.514565, 24.299200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447321, 29.466667, 24.285042>,  <28.056078, 29.386839, 24.261446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447321, 29.466667, 24.285042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180584, 0.954820, -0.236025,
		-0.103428, 0.220205, 0.969955,
		0.978106, 0.199570, 0.058989,
		28.740753, 29.526539, 24.302738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185221, 29.985588, 24.593369>,  <28.056078, 29.386839, 24.261446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185221, 29.985588, 24.593369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516592, 29.945755, 24.372898>,  <28.715414, 29.921856, 24.240616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516592, 29.945755, 24.372898>,  <28.185221, 29.985588, 24.593369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516592, 29.945755, 24.372898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105864, 0.938492, -0.328673,
		0.550003, 0.330631, 0.766929,
		0.828426, -0.099581, -0.551175,
		28.765120, 29.915880, 24.207546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416407, 30.680916, 24.627903>,  <28.185221, 29.985588, 24.593369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416407, 30.680916, 24.627903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650221, 30.495136, 24.361790>,  <28.790510, 30.383669, 24.202122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650221, 30.495136, 24.361790>,  <28.416407, 30.680916, 24.627903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650221, 30.495136, 24.361790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083053, 0.849899, -0.520360,
		0.807105, 0.248916, 0.535372,
		0.584538, -0.464449, -0.665284,
		28.825583, 30.355801, 24.162205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109051, 31.047710, 24.617073>,  <28.416407, 30.680916, 24.627903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109051, 31.047710, 24.617073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091002, 30.877426, 24.255581>,  <29.080172, 30.775255, 24.038685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091002, 30.877426, 24.255581>,  <29.109051, 31.047710, 24.617073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091002, 30.877426, 24.255581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185466, 0.885357, -0.426317,
		0.981614, -0.186848, 0.039005,
		-0.045123, -0.425713, -0.903732,
		29.077465, 30.749712, 23.984461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694469, 31.351519, 24.175470>,  <29.109051, 31.047710, 24.617073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694469, 31.351519, 24.175470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414762, 31.194134, 23.936737>,  <29.246939, 31.099703, 23.793497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414762, 31.194134, 23.936737>,  <29.694469, 31.351519, 24.175470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414762, 31.194134, 23.936737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035864, 0.814538, -0.579001,
		0.713959, -0.426282, -0.555469,
		-0.699268, -0.393462, -0.596835,
		29.204983, 31.076096, 23.757687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975815, 31.375284, 23.598759>,  <29.694469, 31.351519, 24.175470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975815, 31.375284, 23.598759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587955, 31.327824, 23.513248>,  <29.355240, 31.299347, 23.461943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587955, 31.327824, 23.513248>,  <29.975815, 31.375284, 23.598759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587955, 31.327824, 23.513248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047224, 0.766998, -0.639909,
		0.239891, -0.630584, -0.738117,
		-0.969651, -0.118652, -0.213774,
		29.297060, 31.292229, 23.449116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944332, 31.685068, 22.924137>,  <29.975815, 31.375284, 23.598759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944332, 31.685068, 22.924137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552238, 31.650932, 22.995537>,  <29.316982, 31.630451, 23.038376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552238, 31.650932, 22.995537>,  <29.944332, 31.685068, 22.924137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552238, 31.650932, 22.995537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175654, 0.790573, -0.586635,
		-0.091052, -0.606392, -0.789935,
		-0.980232, -0.085341, 0.178499,
		29.258169, 31.625330, 23.049086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533909, 31.533327, 22.283754>,  <29.944332, 31.685068, 22.924137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533909, 31.533327, 22.283754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320440, 31.732094, 22.557476>,  <29.192360, 31.851353, 22.721708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320440, 31.732094, 22.557476>,  <29.533909, 31.533327, 22.283754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320440, 31.732094, 22.557476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062074, 0.783964, -0.617694,
		-0.843411, -0.372123, -0.387533,
		-0.533671, 0.496914, 0.684304,
		29.160339, 31.881168, 22.762768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106712, 31.988935, 21.863749>,  <29.533909, 31.533327, 22.283754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106712, 31.988935, 21.863749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060686, 32.141441, 22.230659>,  <29.033072, 32.232944, 22.450806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060686, 32.141441, 22.230659>,  <29.106712, 31.988935, 21.863749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060686, 32.141441, 22.230659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205590, 0.894276, -0.397495,
		-0.971850, -0.234321, -0.024515,
		-0.115064, 0.381265, 0.917277,
		29.026167, 32.255821, 22.505842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458755, 32.381725, 21.819056>,  <29.106712, 31.988935, 21.863749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458755, 32.381725, 21.819056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661728, 32.512222, 22.138073>,  <28.783512, 32.590519, 22.329483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661728, 32.512222, 22.138073>,  <28.458755, 32.381725, 21.819056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661728, 32.512222, 22.138073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265098, 0.939772, -0.215757,
		-0.819901, -0.101946, 0.563356,
		0.507431, 0.326244, 0.797546,
		28.813957, 32.610096, 22.377337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144848, 32.910870, 21.975775>,  <28.458755, 32.381725, 21.819056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144848, 32.910870, 21.975775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494307, 32.971531, 22.160702>,  <28.703981, 33.007927, 22.271658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494307, 32.971531, 22.160702>,  <28.144848, 32.910870, 21.975775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494307, 32.971531, 22.160702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053403, 0.914557, -0.400915,
		-0.483617, 0.374948, 0.790903,
		0.873649, 0.151653, 0.462319,
		28.756401, 33.017025, 22.299398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070303, 33.525467, 22.332386>,  <28.144848, 32.910870, 21.975775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070303, 33.525467, 22.332386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459766, 33.471771, 22.258663>,  <28.693445, 33.439556, 22.214430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459766, 33.471771, 22.258663>,  <28.070303, 33.525467, 22.332386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459766, 33.471771, 22.258663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073710, 0.950235, -0.302687,
		0.215768, 0.281128, 0.935099,
		0.973659, -0.134236, -0.184308,
		28.751863, 33.431499, 22.203371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602755, 34.076656, 22.573633>,  <28.070303, 33.525467, 22.332386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602755, 34.076656, 22.573633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730459, 33.903862, 22.236240>,  <28.807081, 33.800186, 22.033806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730459, 33.903862, 22.236240>,  <28.602755, 34.076656, 22.573633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730459, 33.903862, 22.236240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091405, 0.899948, -0.426309,
		0.943248, 0.059006, 0.326805,
		0.319262, -0.431987, -0.843480,
		28.826239, 33.774265, 21.983196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110168, 34.505253, 22.434896>,  <28.602755, 34.076656, 22.573633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110168, 34.505253, 22.434896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956215, 34.329388, 22.110291>,  <28.863842, 34.223869, 21.915527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956215, 34.329388, 22.110291>,  <29.110168, 34.505253, 22.434896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956215, 34.329388, 22.110291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150436, 0.837606, -0.525152,
		0.910623, -0.324204, -0.256239,
		-0.384884, -0.439668, -0.811515,
		28.840750, 34.197487, 21.866837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606777, 35.025444, 22.649204>,  <29.110168, 34.505253, 22.434896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606777, 35.025444, 22.649204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350586, 34.811981, 22.870110>,  <28.196871, 34.683903, 23.002653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350586, 34.811981, 22.870110>,  <28.606777, 35.025444, 22.649204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350586, 34.811981, 22.870110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700238, -0.110513, 0.705304,
		-0.315360, 0.838448, 0.444469,
		-0.640480, -0.533659, 0.552262,
		28.158442, 34.651882, 23.035788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477058, 35.381172, 23.357676>,  <28.606777, 35.025444, 22.649204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477058, 35.381172, 23.357676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422047, 34.985661, 23.381008>,  <28.389040, 34.748352, 23.395008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422047, 34.985661, 23.381008>,  <28.477058, 35.381172, 23.357676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422047, 34.985661, 23.381008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682861, -0.051992, 0.728696,
		-0.717486, 0.140048, 0.682349,
		-0.137529, -0.988779, 0.058329,
		28.380789, 34.689026, 23.398506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692863, 35.139992, 23.994133>,  <28.477058, 35.381172, 23.357676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692863, 35.139992, 23.994133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649567, 34.782074, 23.820866>,  <28.623589, 34.567326, 23.716906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649567, 34.782074, 23.820866>,  <28.692863, 35.139992, 23.994133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649567, 34.782074, 23.820866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858503, -0.303838, 0.413104,
		-0.501254, -0.327159, 0.801068,
		-0.108244, -0.894790, -0.433167,
		28.617094, 34.513638, 23.690916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863331, 34.643257, 24.554832>,  <28.692863, 35.139992, 23.994133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863331, 34.643257, 24.554832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942581, 34.464756, 24.205753>,  <28.990131, 34.357655, 23.996305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942581, 34.464756, 24.205753>,  <28.863331, 34.643257, 24.554832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942581, 34.464756, 24.205753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821214, -0.410503, 0.396352,
		-0.535120, -0.795199, 0.285140,
		0.198128, -0.446257, -0.872697,
		29.002020, 34.330879, 23.943945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115969, 33.987759, 24.802423>,  <28.863331, 34.643257, 24.554832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115969, 33.987759, 24.802423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229809, 34.005611, 24.419380>,  <29.298113, 34.016323, 24.189554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229809, 34.005611, 24.419380>,  <29.115969, 33.987759, 24.802423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229809, 34.005611, 24.419380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886847, -0.391561, 0.245321,
		-0.364011, -0.919069, -0.151024,
		0.284602, 0.044636, -0.957606,
		29.315189, 34.019001, 24.132099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316895, 33.252502, 24.642286>,  <29.115969, 33.987759, 24.802423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316895, 33.252502, 24.642286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499691, 33.500385, 24.387062>,  <29.609369, 33.649117, 24.233927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499691, 33.500385, 24.387062>,  <29.316895, 33.252502, 24.642286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499691, 33.500385, 24.387062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882329, -0.406556, 0.237083,
		-0.112485, -0.671324, -0.732579,
		0.456994, 0.619707, -0.638060,
		29.636789, 33.686298, 24.195644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756310, 32.830479, 24.413668>,  <29.316895, 33.252502, 24.642286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756310, 32.830479, 24.413668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902336, 33.185917, 24.302582>,  <29.989952, 33.399181, 24.235929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902336, 33.185917, 24.302582>,  <29.756310, 32.830479, 24.413668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902336, 33.185917, 24.302582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921028, -0.388222, -0.031466,
		-0.135775, -0.244296, -0.960148,
		0.365064, 0.888596, -0.277715,
		30.011856, 33.452496, 24.219267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070559, 32.720123, 23.715170>,  <29.756310, 32.830479, 24.413668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070559, 32.720123, 23.715170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230675, 33.018333, 23.928318>,  <30.326744, 33.197262, 24.056208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230675, 33.018333, 23.928318>,  <30.070559, 32.720123, 23.715170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230675, 33.018333, 23.928318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903848, -0.417072, -0.095448,
		0.151086, 0.519842, -0.840796,
		0.400290, 0.745530, 0.532872,
		30.350761, 33.241993, 24.088181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683090, 32.804569, 23.404306>,  <30.070559, 32.720123, 23.715170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683090, 32.804569, 23.404306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738682, 32.974091, 23.762318>,  <30.772038, 33.075802, 23.977125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738682, 32.974091, 23.762318>,  <30.683090, 32.804569, 23.404306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738682, 32.974091, 23.762318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888979, -0.451629, 0.075807,
		0.436349, 0.785128, -0.439516,
		0.138980, 0.423799, 0.895030,
		30.780376, 33.101231, 24.030827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330956, 32.962605, 23.342100>,  <30.683090, 32.804569, 23.404306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330956, 32.962605, 23.342100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264059, 32.976498, 23.736221>,  <31.223921, 32.984833, 23.972694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264059, 32.976498, 23.736221>,  <31.330956, 32.962605, 23.342100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264059, 32.976498, 23.736221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807998, -0.567838, 0.157164,
		0.564951, 0.822407, 0.066901,
		-0.167242, 0.034734, 0.985304,
		31.213886, 32.986919, 24.031813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936089, 32.913406, 23.560070>,  <31.330956, 32.962605, 23.342100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936089, 32.913406, 23.560070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754908, 32.844238, 23.909912>,  <31.646200, 32.802738, 24.119818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754908, 32.844238, 23.909912>,  <31.936089, 32.913406, 23.560070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754908, 32.844238, 23.909912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759913, -0.587902, 0.277315,
		0.466227, 0.790234, 0.397697,
		-0.452951, -0.172923, 0.874605,
		31.619022, 32.792362, 24.172293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419529, 33.135651, 24.115459>,  <31.936089, 32.913406, 23.560070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419529, 33.135651, 24.115459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162273, 32.860489, 24.250019>,  <32.007919, 32.695393, 24.330755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162273, 32.860489, 24.250019>,  <32.419529, 33.135651, 24.115459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162273, 32.860489, 24.250019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761920, -0.530962, 0.370887,
		-0.076519, 0.494840, 0.865609,
		-0.643135, -0.687904, 0.336400,
		31.969334, 32.654118, 24.350939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374393, 33.191269, 24.857744>,  <32.419529, 33.135651, 24.115459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374393, 33.191269, 24.857744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283413, 32.815258, 24.756065>,  <32.228825, 32.589653, 24.695059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283413, 32.815258, 24.756065>,  <32.374393, 33.191269, 24.857744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283413, 32.815258, 24.756065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517084, -0.337785, 0.786464,
		-0.825160, 0.047442, 0.562903,
		-0.227452, -0.940027, -0.254195,
		32.215176, 32.533249, 24.679808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603359, 32.912144, 25.409861>,  <32.374393, 33.191269, 24.857744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603359, 32.912144, 25.409861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511654, 32.589375, 25.192123>,  <32.456631, 32.395714, 25.061481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511654, 32.589375, 25.192123>,  <32.603359, 32.912144, 25.409861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511654, 32.589375, 25.192123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508736, -0.576112, 0.639753,
		-0.829835, -0.130254, 0.542594,
		-0.229264, -0.806926, -0.544343,
		32.442875, 32.347298, 25.028820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496151, 33.405437, 26.038809>,  <32.603359, 32.912144, 25.409861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496151, 33.405437, 26.038809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781826, 33.575962, 26.260868>,  <32.953232, 33.678276, 26.394104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781826, 33.575962, 26.260868>,  <32.496151, 33.405437, 26.038809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781826, 33.575962, 26.260868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087529, 0.732503, -0.675113,
		-0.694456, 0.530752, 0.485833,
		0.714192, 0.426312, 0.555147,
		32.996082, 33.703857, 26.427412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346622, 34.095673, 26.043947>,  <32.496151, 33.405437, 26.038809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346622, 34.095673, 26.043947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743313, 34.075008, 26.090946>,  <32.981327, 34.062611, 26.119146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743313, 34.075008, 26.090946>,  <32.346622, 34.095673, 26.043947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743313, 34.075008, 26.090946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123514, 0.633124, -0.764132,
		-0.034915, 0.772324, 0.634268,
		0.991728, -0.051662, 0.117498,
		33.040833, 34.059509, 26.126196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596661, 34.826305, 25.832367>,  <32.346622, 34.095673, 26.043947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596661, 34.826305, 25.832367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917946, 34.588139, 25.825047>,  <33.110718, 34.445240, 25.820654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917946, 34.588139, 25.825047>,  <32.596661, 34.826305, 25.832367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917946, 34.588139, 25.825047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242077, 0.354323, -0.903246,
		0.544292, 0.721065, 0.428732,
		0.803209, -0.595416, -0.018301,
		33.158909, 34.409515, 25.819555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239304, 35.237720, 25.752876>,  <32.596661, 34.826305, 25.832367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239304, 35.237720, 25.752876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347710, 34.878109, 25.615299>,  <33.412754, 34.662342, 25.532753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347710, 34.878109, 25.615299>,  <33.239304, 35.237720, 25.752876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347710, 34.878109, 25.615299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516179, 0.437331, -0.736411,
		0.812473, 0.022040, 0.582582,
		0.271011, -0.899030, -0.343943,
		33.429012, 34.608398, 25.512115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856579, 35.442780, 25.406410>,  <33.239304, 35.237720, 25.752876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856579, 35.442780, 25.406410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779953, 35.065971, 25.296207>,  <33.733978, 34.839886, 25.230085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779953, 35.065971, 25.296207>,  <33.856579, 35.442780, 25.406410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779953, 35.065971, 25.296207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429794, 0.171844, -0.886423,
		0.882371, -0.288220, 0.371955,
		-0.191567, -0.942018, -0.275506,
		33.722485, 34.783367, 25.213556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492088, 35.113724, 25.211267>,  <33.856579, 35.442780, 25.406410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492088, 35.113724, 25.211267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182690, 34.929039, 25.037586>,  <33.997051, 34.818226, 24.933378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182690, 34.929039, 25.037586>,  <34.492088, 35.113724, 25.211267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182690, 34.929039, 25.037586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418407, 0.142603, -0.896995,
		0.476073, -0.875491, 0.082883,
		-0.773492, -0.461714, -0.434201,
		33.950642, 34.790524, 24.907326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742905, 34.443176, 24.951626>,  <34.492088, 35.113724, 25.211267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742905, 34.443176, 24.951626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435207, 34.579544, 24.735462>,  <34.250587, 34.661366, 24.605764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435207, 34.579544, 24.735462>,  <34.742905, 34.443176, 24.951626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435207, 34.579544, 24.735462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613378, 0.157098, -0.774008,
		-0.178977, -0.926873, -0.329958,
		-0.769243, 0.340919, -0.540407,
		34.204433, 34.681820, 24.573339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811028, 34.109596, 24.331036>,  <34.742905, 34.443176, 24.951626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811028, 34.109596, 24.331036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558880, 34.408295, 24.246185>,  <34.407589, 34.587513, 24.195276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558880, 34.408295, 24.246185>,  <34.811028, 34.109596, 24.331036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558880, 34.408295, 24.246185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553320, 0.240556, -0.797477,
		-0.544487, -0.620080, -0.564831,
		-0.630373, 0.746748, -0.212123,
		34.369766, 34.632320, 24.182549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640182, 34.064980, 23.653393>,  <34.811028, 34.109596, 24.331036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640182, 34.064980, 23.653393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578075, 34.454350, 23.720730>,  <34.540813, 34.687973, 23.761133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578075, 34.454350, 23.720730>,  <34.640182, 34.064980, 23.653393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578075, 34.454350, 23.720730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562988, 0.227220, -0.794617,
		-0.811750, -0.028600, -0.583305,
		-0.155265, 0.973423, 0.168344,
		34.531494, 34.746376, 23.771233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565357, 34.376453, 22.918713>,  <34.640182, 34.064980, 23.653393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565357, 34.376453, 22.918713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612663, 34.709042, 23.135849>,  <34.641048, 34.908592, 23.266130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612663, 34.709042, 23.135849>,  <34.565357, 34.376453, 22.918713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612663, 34.709042, 23.135849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463956, 0.437067, -0.770531,
		-0.877929, 0.342980, -0.334075,
		0.118264, 0.831467, 0.542841,
		34.648144, 34.958481, 23.298702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374699, 34.973175, 22.529526>,  <34.565357, 34.376453, 22.918713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374699, 34.973175, 22.529526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606190, 35.144878, 22.806889>,  <34.745083, 35.247902, 22.973307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606190, 35.144878, 22.806889>,  <34.374699, 34.973175, 22.529526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606190, 35.144878, 22.806889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433655, 0.558104, -0.707435,
		-0.690665, 0.710110, 0.136839,
		0.578727, 0.429259, 0.693406,
		34.779808, 35.273655, 23.014910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424259, 35.620701, 22.267406>,  <34.374699, 34.973175, 22.529526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424259, 35.620701, 22.267406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719685, 35.607353, 22.536751>,  <34.896938, 35.599346, 22.698357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719685, 35.607353, 22.536751>,  <34.424259, 35.620701, 22.267406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719685, 35.607353, 22.536751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576621, 0.548791, -0.605257,
		-0.349337, 0.835293, 0.424557,
		0.738560, -0.033369, 0.673361,
		34.941254, 35.597343, 22.738760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.547609, 31.514688, 28.891714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934107, 31.434479, 28.956413>,  <32.166004, 31.386353, 28.995232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934107, 31.434479, 28.956413>,  <31.547609, 31.514688, 28.891714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934107, 31.434479, 28.956413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252807, 0.858907, -0.445384,
		-0.049615, 0.471240, 0.880608,
		0.966244, -0.200526, 0.161747,
		32.223980, 31.374321, 29.004938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855259, 32.182587, 28.964346>,  <31.547609, 31.514688, 28.891714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855259, 32.182587, 28.964346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.172668, 31.943344, 28.919468>,  <32.363113, 31.799799, 28.892542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.172668, 31.943344, 28.919468>,  <31.855259, 32.182587, 28.964346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172668, 31.943344, 28.919468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446274, 0.697298, -0.560906,
		0.413714, 0.395023, 0.820242,
		0.793525, -0.598107, -0.112193,
		32.410725, 31.763912, 28.885811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397537, 32.690517, 28.942823>,  <31.855259, 32.182587, 28.964346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397537, 32.690517, 28.942823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.567310, 32.362793, 28.788635>,  <32.669174, 32.166161, 28.696123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.567310, 32.362793, 28.788635>,  <32.397537, 32.690517, 28.942823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567310, 32.362793, 28.788635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394802, 0.550575, -0.735526,
		0.814853, 0.159999, 0.557149,
		0.424436, -0.819309, -0.385470,
		32.694641, 32.117001, 28.672995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123138, 32.833580, 28.898542>,  <32.397537, 32.690517, 28.942823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123138, 32.833580, 28.898542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.011642, 32.552704, 28.636478>,  <32.944744, 32.384178, 28.479240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.011642, 32.552704, 28.636478>,  <33.123138, 32.833580, 28.898542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011642, 32.552704, 28.636478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318190, 0.576139, -0.752873,
		0.906124, -0.418318, 0.062839,
		-0.278736, -0.702191, -0.655159,
		32.928020, 32.342045, 28.439930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799862, 32.745235, 28.429916>,  <33.123138, 32.833580, 28.898542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799862, 32.745235, 28.429916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.471996, 32.592243, 28.259335>,  <33.275276, 32.500446, 28.156986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.471996, 32.592243, 28.259335>,  <33.799862, 32.745235, 28.429916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471996, 32.592243, 28.259335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150893, 0.573998, -0.804834,
		0.552620, -0.724039, -0.412769,
		-0.819660, -0.382484, -0.426455,
		33.226097, 32.477501, 28.131399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966351, 32.522423, 27.732241>,  <33.799862, 32.745235, 28.429916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966351, 32.522423, 27.732241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.575470, 32.604786, 27.752975>,  <33.340942, 32.654202, 27.765415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.575470, 32.604786, 27.752975>,  <33.966351, 32.522423, 27.732241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575470, 32.604786, 27.752975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056737, 0.488465, -0.870737,
		-0.204609, -0.847942, -0.489009,
		-0.977198, 0.205906, 0.051835,
		33.282310, 32.666557, 27.768526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844822, 32.434464, 27.023802>,  <33.966351, 32.522423, 27.732241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844822, 32.434464, 27.023802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.525814, 32.619255, 27.178997>,  <33.334408, 32.730129, 27.272114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.525814, 32.619255, 27.178997>,  <33.844822, 32.434464, 27.023802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525814, 32.619255, 27.178997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035527, 0.606039, -0.794641,
		-0.602241, -0.647529, -0.466917,
		-0.797523, 0.461978, 0.387986,
		33.286556, 32.757847, 27.295393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231079, 32.418694, 26.476974>,  <33.844822, 32.434464, 27.023802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231079, 32.418694, 26.476974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.162796, 32.730167, 26.718475>,  <33.121826, 32.917049, 26.863375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.162796, 32.730167, 26.718475>,  <33.231079, 32.418694, 26.476974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162796, 32.730167, 26.718475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134936, 0.588496, -0.797160,
		-0.976038, -0.217552, 0.004609,
		-0.170711, 0.778681, 0.603750,
		33.111584, 32.963772, 26.899601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709938, 32.729229, 26.143620>,  <33.231079, 32.418694, 26.476974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709938, 32.729229, 26.143620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.857239, 33.013962, 26.382847>,  <32.945618, 33.184803, 26.526382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.857239, 33.013962, 26.382847>,  <32.709938, 32.729229, 26.143620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857239, 33.013962, 26.382847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013012, 0.639262, -0.768878,
		-0.929635, 0.290924, 0.226148,
		0.368253, 0.711833, 0.598066,
		32.967716, 33.227512, 26.562267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130196, 32.414371, 25.819216>,  <32.709938, 32.729229, 26.143620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130196, 32.414371, 25.819216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.325108, 32.197060, 25.545750>,  <32.442055, 32.066673, 25.381670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.325108, 32.197060, 25.545750>,  <32.130196, 32.414371, 25.819216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325108, 32.197060, 25.545750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237726, -0.670805, 0.702500,
		-0.840263, -0.504841, -0.197719,
		0.487282, -0.543282, -0.683667,
		32.471291, 32.034077, 25.340649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848820, 31.803726, 25.904770>,  <32.130196, 32.414371, 25.819216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848820, 31.803726, 25.904770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.197998, 31.705914, 25.735931>,  <32.407505, 31.647226, 25.634628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.197998, 31.705914, 25.735931>,  <31.848820, 31.803726, 25.904770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197998, 31.705914, 25.735931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093554, -0.765302, 0.636836,
		-0.478759, -0.595414, -0.645192,
		0.872948, -0.244531, -0.422098,
		32.459881, 31.632555, 25.609303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799126, 31.132587, 25.673491>,  <31.848820, 31.803726, 25.904770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799126, 31.132587, 25.673491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.193764, 31.194427, 25.694370>,  <32.430546, 31.231531, 25.706898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.193764, 31.194427, 25.694370>,  <31.799126, 31.132587, 25.673491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193764, 31.194427, 25.694370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091905, -0.790807, 0.605126,
		0.134832, -0.592219, -0.794416,
		0.986597, 0.154601, 0.052199,
		32.489742, 31.240808, 25.710030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052719, 30.502609, 25.394072>,  <31.799126, 31.132587, 25.673491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052719, 30.502609, 25.394072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.342922, 30.663555, 25.617409>,  <32.517044, 30.760122, 25.751411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.342922, 30.663555, 25.617409>,  <32.052719, 30.502609, 25.394072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342922, 30.663555, 25.617409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038841, -0.833932, 0.550498,
		0.687122, -0.377702, -0.620649,
		0.725503, 0.402366, 0.558343,
		32.560574, 30.784266, 25.784912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647858, 30.168921, 25.272369>,  <32.052719, 30.502609, 25.394072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647858, 30.168921, 25.272369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.716152, 30.324356, 25.634552>,  <32.757130, 30.417618, 25.851862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.716152, 30.324356, 25.634552>,  <32.647858, 30.168921, 25.272369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716152, 30.324356, 25.634552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075530, -0.921406, 0.381190,
		0.982418, 0.003307, -0.186665,
		0.170734, 0.388587, 0.905456,
		32.767372, 30.440931, 25.906189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248600, 29.778975, 25.507717>,  <32.647858, 30.168921, 25.272369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248600, 29.778975, 25.507717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.092159, 29.939137, 25.839191>,  <32.998295, 30.035234, 26.038076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.092159, 29.939137, 25.839191>,  <33.248600, 29.778975, 25.507717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092159, 29.939137, 25.839191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141336, -0.863592, 0.483977,
		0.909431, 0.306407, 0.281159,
		-0.391100, 0.400405, 0.828683,
		32.974831, 30.059258, 26.087797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522289, 29.379885, 26.004507>,  <33.248600, 29.778975, 25.507717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522289, 29.379885, 26.004507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.237209, 29.577568, 26.203632>,  <33.066162, 29.696178, 26.323107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.237209, 29.577568, 26.203632>,  <33.522289, 29.379885, 26.004507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237209, 29.577568, 26.203632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144396, -0.797834, 0.585330,
		0.686447, 0.345282, 0.639978,
		-0.712700, 0.494208, 0.497813,
		33.023399, 29.725830, 26.352976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763229, 29.354059, 26.595493>,  <33.522289, 29.379885, 26.004507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763229, 29.354059, 26.595493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373707, 29.415138, 26.662888>,  <33.139992, 29.451786, 26.703323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373707, 29.415138, 26.662888>,  <33.763229, 29.354059, 26.595493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373707, 29.415138, 26.662888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030252, -0.647381, 0.761566,
		0.225363, 0.746714, 0.625803,
		-0.973805, 0.152697, 0.168485,
		33.081566, 29.460947, 26.713432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717415, 29.386772, 27.315035>,  <33.763229, 29.354059, 26.595493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717415, 29.386772, 27.315035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.340637, 29.328159, 27.194195>,  <33.114571, 29.292992, 27.121691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.340637, 29.328159, 27.194195>,  <33.717415, 29.386772, 27.315035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340637, 29.328159, 27.194195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190871, -0.506532, 0.840829,
		-0.276234, 0.849678, 0.449157,
		-0.941946, -0.146534, -0.302101,
		33.058052, 29.284199, 27.103565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355026, 29.511648, 27.915949>,  <33.717415, 29.386772, 27.315035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355026, 29.511648, 27.915949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.123466, 29.282703, 27.683647>,  <32.984531, 29.145336, 27.544266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.123466, 29.282703, 27.683647>,  <33.355026, 29.511648, 27.915949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123466, 29.282703, 27.683647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298522, -0.514017, 0.804159,
		-0.758785, 0.638898, 0.126705,
		-0.578904, -0.572360, -0.580753,
		32.949795, 29.110996, 27.509420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824203, 29.337751, 28.322460>,  <33.355026, 29.511648, 27.915949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824203, 29.337751, 28.322460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.844250, 29.061646, 28.033733>,  <32.856277, 28.895981, 27.860497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.844250, 29.061646, 28.033733>,  <32.824203, 29.337751, 28.322460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844250, 29.061646, 28.033733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114721, -0.721920, 0.682400,
		-0.992133, 0.048606, -0.115370,
		0.050119, -0.690267, -0.721817,
		32.859287, 28.854565, 27.817188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281868, 28.780107, 28.418953>,  <32.824203, 29.337751, 28.322460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281868, 28.780107, 28.418953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.550907, 28.595009, 28.187962>,  <32.712330, 28.483950, 28.049366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.550907, 28.595009, 28.187962>,  <32.281868, 28.780107, 28.418953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550907, 28.595009, 28.187962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068656, -0.816019, 0.573933,
		-0.736818, -0.346378, -0.580621,
		0.672596, -0.462747, -0.577477,
		32.752686, 28.456184, 28.014719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928289, 28.170176, 28.210617>,  <32.281868, 28.780107, 28.418953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928289, 28.170176, 28.210617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.319618, 28.100155, 28.166355>,  <32.554417, 28.058142, 28.139797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.319618, 28.100155, 28.166355>,  <31.928289, 28.170176, 28.210617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319618, 28.100155, 28.166355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134279, -0.942974, 0.304580,
		-0.157663, -0.283118, -0.946037,
		0.978321, -0.175054, -0.110655,
		32.613113, 28.047638, 28.133158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878330, 27.465265, 28.049355>,  <31.928289, 28.170176, 28.210617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878330, 27.465265, 28.049355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.264507, 27.522823, 28.136272>,  <32.496212, 27.557358, 28.188423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.264507, 27.522823, 28.136272>,  <31.878330, 27.465265, 28.049355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264507, 27.522823, 28.136272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006292, -0.846385, 0.532534,
		0.260543, -0.512764, -0.818041,
		0.965442, 0.143895, 0.217294,
		32.554138, 27.565992, 28.201460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.152580, 26.240456, 27.510853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880795, 26.497513, 27.652466>,  <35.717724, 26.651747, 27.737434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880795, 26.497513, 27.652466>,  <36.152580, 26.240456, 27.510853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880795, 26.497513, 27.652466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138735, 0.361288, -0.922076,
		-0.720472, -0.675635, -0.156325,
		-0.679465, 0.642642, 0.354032,
		35.676956, 26.690306, 27.758675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657005, 26.230562, 26.970409>,  <36.152580, 26.240456, 27.510853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657005, 26.230562, 26.970409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515778, 26.520943, 27.206490>,  <35.431042, 26.695171, 27.348137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515778, 26.520943, 27.206490>,  <35.657005, 26.230562, 26.970409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515778, 26.520943, 27.206490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455906, 0.417368, -0.786100,
		-0.817001, -0.546625, 0.183605,
		-0.353071, 0.725951, 0.590200,
		35.409855, 26.738728, 27.383549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985001, 26.320011, 26.847996>,  <35.657005, 26.230562, 26.970409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985001, 26.320011, 26.847996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136963, 26.666306, 26.978333>,  <35.228142, 26.874083, 27.056534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136963, 26.666306, 26.978333>,  <34.985001, 26.320011, 26.847996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136963, 26.666306, 26.978333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428066, 0.476803, -0.767736,
		-0.820019, 0.152185, 0.551732,
		0.379905, 0.865736, 0.325842,
		35.250935, 26.926027, 27.076086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503162, 26.832388, 26.744205>,  <34.985001, 26.320011, 26.847996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503162, 26.832388, 26.744205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834953, 27.043957, 26.815987>,  <35.034027, 27.170898, 26.859055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834953, 27.043957, 26.815987>,  <34.503162, 26.832388, 26.744205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834953, 27.043957, 26.815987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238233, 0.625643, -0.742844,
		-0.505179, 0.573423, 0.644965,
		0.829481, 0.528921, 0.179453,
		35.083797, 27.202633, 26.869823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269833, 27.487055, 26.648153>,  <34.503162, 26.832388, 26.744205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269833, 27.487055, 26.648153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669090, 27.495274, 26.625210>,  <34.908646, 27.500204, 26.611444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669090, 27.495274, 26.625210>,  <34.269833, 27.487055, 26.648153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669090, 27.495274, 26.625210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058190, 0.600432, -0.797556,
		0.018053, 0.799412, 0.600512,
		0.998142, 0.020546, -0.057358,
		34.968533, 27.501438, 26.608002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514240, 28.169037, 26.577188>,  <34.269833, 27.487055, 26.648153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514240, 28.169037, 26.577188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791157, 27.938835, 26.403046>,  <34.957306, 27.800714, 26.298561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791157, 27.938835, 26.403046>,  <34.514240, 28.169037, 26.577188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791157, 27.938835, 26.403046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015502, 0.591302, -0.806301,
		0.721455, 0.564941, 0.400430,
		0.692288, -0.575502, -0.435356,
		34.998844, 27.766184, 26.272438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145084, 28.607290, 26.492199>,  <34.514240, 28.169037, 26.577188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145084, 28.607290, 26.492199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176552, 28.310371, 26.226025>,  <35.195431, 28.132219, 26.066320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176552, 28.310371, 26.226025>,  <35.145084, 28.607290, 26.492199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176552, 28.310371, 26.226025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023825, 0.668714, -0.743138,
		0.996616, 0.042608, 0.070292,
		0.078668, -0.742298, -0.665435,
		35.200153, 28.087683, 26.026394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593559, 28.923002, 25.980295>,  <35.145084, 28.607290, 26.492199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593559, 28.923002, 25.980295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.470924, 28.579315, 25.816467>,  <35.397343, 28.373102, 25.718170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.470924, 28.579315, 25.816467>,  <35.593559, 28.923002, 25.980295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470924, 28.579315, 25.816467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204163, 0.360916, -0.909977,
		0.929688, -0.362609, 0.064768,
		-0.306590, -0.859217, -0.409570,
		35.378948, 28.321550, 25.693596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164677, 28.608070, 25.614279>,  <35.593559, 28.923002, 25.980295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164677, 28.608070, 25.614279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829117, 28.438660, 25.477535>,  <35.627781, 28.337013, 25.395489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829117, 28.438660, 25.477535>,  <36.164677, 28.608070, 25.614279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829117, 28.438660, 25.477535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173909, 0.386592, -0.905705,
		0.515753, -0.819250, -0.250657,
		-0.838901, -0.423528, -0.341861,
		35.577446, 28.311602, 25.374977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356632, 28.462006, 24.974121>,  <36.164677, 28.608070, 25.614279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356632, 28.462006, 24.974121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.957375, 28.452000, 24.951923>,  <35.717819, 28.445995, 24.938604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.957375, 28.452000, 24.951923>,  <36.356632, 28.462006, 24.974121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957375, 28.452000, 24.951923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037994, 0.456218, -0.889057,
		0.047558, -0.889517, -0.454421,
		-0.998146, -0.025017, -0.055493,
		35.657932, 28.444494, 24.935276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132275, 28.112860, 24.307720>,  <36.356632, 28.462006, 24.974121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132275, 28.112860, 24.307720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830292, 28.345112, 24.429646>,  <35.649101, 28.484463, 24.502800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830292, 28.345112, 24.429646>,  <36.132275, 28.112860, 24.307720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830292, 28.345112, 24.429646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013581, 0.450870, -0.892487,
		-0.655636, -0.677927, -0.332501,
		-0.754956, 0.580630, 0.304813,
		35.603806, 28.519300, 24.521090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679714, 28.131159, 23.806389>,  <36.132275, 28.112860, 24.307720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679714, 28.131159, 23.806389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.555229, 28.440300, 24.027603>,  <35.480537, 28.625784, 24.160332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.555229, 28.440300, 24.027603>,  <35.679714, 28.131159, 23.806389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555229, 28.440300, 24.027603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197566, 0.516606, -0.833118,
		-0.929578, -0.368538, -0.008085,
		-0.311212, 0.772851, 0.553036,
		35.461864, 28.672155, 24.193514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127563, 28.301617, 23.435068>,  <35.679714, 28.131159, 23.806389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127563, 28.301617, 23.435068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252323, 28.611206, 23.655499>,  <35.327179, 28.796959, 23.787758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252323, 28.611206, 23.655499>,  <35.127563, 28.301617, 23.435068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252323, 28.611206, 23.655499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082196, 0.599816, -0.795905,
		-0.946554, 0.202943, 0.250698,
		0.311896, 0.773973, 0.551077,
		35.345890, 28.843397, 23.820822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628555, 28.822704, 23.473047>,  <35.127563, 28.301617, 23.435068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628555, 28.822704, 23.473047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.995262, 28.979584, 23.503284>,  <35.215286, 29.073711, 23.521427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.995262, 28.979584, 23.503284>,  <34.628555, 28.822704, 23.473047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995262, 28.979584, 23.503284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166461, 0.547206, -0.820278,
		-0.363076, 0.739423, 0.566947,
		0.916770, 0.392197, 0.075592,
		35.270294, 29.097242, 23.525963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902714, 29.199884, 23.453571>,  <34.628555, 28.822704, 23.473047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902714, 29.199884, 23.453571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622410, 29.027252, 23.226353>,  <33.454227, 28.923674, 23.090021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622410, 29.027252, 23.226353>,  <33.902714, 29.199884, 23.453571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622410, 29.027252, 23.226353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146791, -0.866445, 0.477206,
		-0.698134, 0.251022, 0.670520,
		-0.700758, -0.431580, -0.568047,
		33.412182, 28.897778, 23.055939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394733, 28.874563, 23.813387>,  <33.902714, 29.199884, 23.453571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394733, 28.874563, 23.813387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395184, 28.660007, 23.475800>,  <33.395454, 28.531275, 23.273247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395184, 28.660007, 23.475800>,  <33.394733, 28.874563, 23.813387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395184, 28.660007, 23.475800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209386, -0.825136, 0.524698,
		-0.977832, -0.177305, 0.111386,
		0.001123, -0.536389, -0.843970,
		33.395519, 28.499090, 23.222609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819901, 28.439487, 23.985842>,  <33.394733, 28.874563, 23.813387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819901, 28.439487, 23.985842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.972755, 28.269367, 23.657673>,  <33.064468, 28.167295, 23.460772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.972755, 28.269367, 23.657673>,  <32.819901, 28.439487, 23.985842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972755, 28.269367, 23.657673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325875, -0.892786, 0.311028,
		-0.864740, 0.148499, -0.479764,
		0.382139, -0.425302, -0.820419,
		33.087395, 28.141777, 23.411547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309204, 28.039455, 23.696836>,  <32.819901, 28.439487, 23.985842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309204, 28.039455, 23.696836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682037, 27.926495, 23.606091>,  <32.905739, 27.858719, 23.551643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682037, 27.926495, 23.606091>,  <32.309204, 28.039455, 23.696836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682037, 27.926495, 23.606091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091595, -0.789668, 0.606659,
		-0.350468, -0.544678, -0.761904,
		0.932085, -0.282401, -0.226864,
		32.961662, 27.841774, 23.538031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362770, 27.286402, 23.463602>,  <32.309204, 28.039455, 23.696836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362770, 27.286402, 23.463602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740017, 27.352505, 23.578991>,  <32.966366, 27.392166, 23.648224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740017, 27.352505, 23.578991>,  <32.362770, 27.286402, 23.463602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740017, 27.352505, 23.578991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047835, -0.791222, 0.609655,
		0.328997, -0.588776, -0.738312,
		0.943119, 0.165258, 0.288474,
		33.022953, 27.402082, 23.665533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652302, 26.622993, 23.418940>,  <32.362770, 27.286402, 23.463602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652302, 26.622993, 23.418940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923103, 26.825459, 23.632656>,  <33.085583, 26.946938, 23.760887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923103, 26.825459, 23.632656>,  <32.652302, 26.622993, 23.418940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923103, 26.825459, 23.632656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072989, -0.768553, 0.635608,
		0.732355, -0.391309, -0.557255,
		0.677000, 0.506165, 0.534292,
		33.126202, 26.977308, 23.792944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289158, 26.132139, 23.623568>,  <32.652302, 26.622993, 23.418940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289158, 26.132139, 23.623568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284153, 26.434895, 23.884937>,  <33.281151, 26.616549, 24.041759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284153, 26.434895, 23.884937>,  <33.289158, 26.132139, 23.623568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284153, 26.434895, 23.884937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058328, -0.651810, 0.756136,
		0.998219, 0.047571, -0.035995,
		-0.012509, 0.756889, 0.653424,
		33.280399, 26.661961, 24.080965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706882, 25.934618, 24.217216>,  <33.289158, 26.132139, 23.623568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706882, 25.934618, 24.217216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484558, 26.221741, 24.384941>,  <33.351162, 26.394014, 24.485577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484558, 26.221741, 24.384941>,  <33.706882, 25.934618, 24.217216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484558, 26.221741, 24.384941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021294, -0.491943, 0.870367,
		0.831033, 0.492692, 0.258145,
		-0.555815, 0.717807, 0.419312,
		33.317814, 26.437082, 24.510735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100925, 26.290026, 24.770214>,  <33.706882, 25.934618, 24.217216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100925, 26.290026, 24.770214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712406, 26.351238, 24.843063>,  <33.479294, 26.387966, 24.886772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712406, 26.351238, 24.843063>,  <34.100925, 26.290026, 24.770214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712406, 26.351238, 24.843063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099392, -0.434505, 0.895168,
		0.216121, 0.887574, 0.406823,
		-0.971294, 0.153030, 0.182123,
		33.421017, 26.397148, 24.897699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058533, 26.690308, 25.372322>,  <34.100925, 26.290026, 24.770214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058533, 26.690308, 25.372322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.705074, 26.511669, 25.316151>,  <33.493000, 26.404486, 25.282448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.705074, 26.511669, 25.316151>,  <34.058533, 26.690308, 25.372322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705074, 26.511669, 25.316151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064701, -0.413587, 0.908162,
		-0.463662, 0.793409, 0.394360,
		-0.883647, -0.446595, -0.140430,
		33.439980, 26.377691, 25.274021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758797, 26.679825, 26.077219>,  <34.058533, 26.690308, 25.372322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758797, 26.679825, 26.077219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.511028, 26.433964, 25.881866>,  <33.362366, 26.286448, 25.764654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.511028, 26.433964, 25.881866>,  <33.758797, 26.679825, 26.077219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511028, 26.433964, 25.881866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013430, -0.613712, 0.789416,
		-0.784941, 0.495543, 0.371893,
		-0.619424, -0.614651, -0.488383,
		33.325199, 26.249569, 25.735352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187302, 26.624113, 26.574951>,  <33.758797, 26.679825, 26.077219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187302, 26.624113, 26.574951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190285, 26.313240, 26.323257>,  <33.192074, 26.126717, 26.172241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190285, 26.313240, 26.323257>,  <33.187302, 26.624113, 26.574951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190285, 26.313240, 26.323257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233012, -0.613280, 0.754714,
		-0.972445, 0.140989, -0.185667,
		0.007459, -0.777181, -0.629233,
		33.192524, 26.080086, 26.134487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744488, 26.348557, 26.990183>,  <33.187302, 26.624113, 26.574951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744488, 26.348557, 26.990183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.870773, 26.076271, 26.725773>,  <32.946545, 25.912899, 26.567127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.870773, 26.076271, 26.725773>,  <32.744488, 26.348557, 26.990183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870773, 26.076271, 26.725773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163972, -0.725314, 0.668605,
		-0.934581, -0.102695, -0.340606,
		0.315709, -0.680716, -0.661025,
		32.965485, 25.872057, 26.527466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245342, 25.661007, 26.954710>,  <32.744488, 26.348557, 26.990183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245342, 25.661007, 26.954710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624519, 25.563896, 26.872292>,  <32.852028, 25.505629, 26.822842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624519, 25.563896, 26.872292>,  <32.245342, 25.661007, 26.954710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624519, 25.563896, 26.872292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089072, -0.823409, 0.560413,
		-0.305715, -0.512890, -0.802174,
		0.947948, -0.242778, -0.206045,
		32.908905, 25.491062, 26.810478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635010, 25.329826, 27.025183>,  <32.245342, 25.661007, 26.954710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635010, 25.329826, 27.025183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.273188, 25.293507, 27.191814>,  <31.056095, 25.271715, 27.291794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.273188, 25.293507, 27.191814>,  <31.635010, 25.329826, 27.025183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273188, 25.293507, 27.191814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331766, 0.763587, -0.553955,
		-0.267795, -0.639289, -0.720830,
		-0.904554, -0.090801, 0.416579,
		31.001822, 25.266266, 27.316788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226618, 25.478933, 26.471327>,  <31.635010, 25.329826, 27.025183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226618, 25.478933, 26.471327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.983818, 25.521770, 26.786308>,  <30.838139, 25.547474, 26.975298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.983818, 25.521770, 26.786308>,  <31.226618, 25.478933, 26.471327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983818, 25.521770, 26.786308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513157, 0.703789, -0.491275,
		-0.606815, -0.702290, -0.372242,
		-0.606997, 0.107095, 0.787455,
		30.801720, 25.553900, 27.022545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559050, 25.436195, 26.236290>,  <31.226618, 25.478933, 26.471327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559050, 25.436195, 26.236290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.541458, 25.633842, 26.583603>,  <30.530903, 25.752430, 26.791990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.541458, 25.633842, 26.583603>,  <30.559050, 25.436195, 26.236290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541458, 25.633842, 26.583603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427400, 0.776266, -0.463401,
		-0.902992, -0.391483, 0.177047,
		-0.043978, 0.494117, 0.868282,
		30.528265, 25.782078, 26.844088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853615, 25.685469, 26.326048>,  <30.559050, 25.436195, 26.236290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853615, 25.685469, 26.326048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.051493, 25.916153, 26.586105>,  <30.170219, 26.054564, 26.742140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.051493, 25.916153, 26.586105>,  <29.853615, 25.685469, 26.326048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051493, 25.916153, 26.586105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553747, 0.785738, -0.275644,
		-0.669809, -0.223656, 0.708050,
		0.494692, 0.576709, 0.650143,
		30.199900, 26.089167, 26.781149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366501, 26.051016, 26.605648>,  <29.853615, 25.685469, 26.326048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366501, 26.051016, 26.605648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.703878, 26.262817, 26.641937>,  <29.906305, 26.389898, 26.663712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.703878, 26.262817, 26.641937>,  <29.366501, 26.051016, 26.605648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703878, 26.262817, 26.641937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483388, 0.821710, -0.301874,
		-0.234392, 0.210759, 0.949021,
		0.843443, 0.529502, 0.090724,
		29.956911, 26.421667, 26.669155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041407, 26.721399, 26.931667>,  <29.366501, 26.051016, 26.605648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041407, 26.721399, 26.931667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.409389, 26.786171, 26.788864>,  <29.630180, 26.825033, 26.703182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.409389, 26.786171, 26.788864>,  <29.041407, 26.721399, 26.931667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409389, 26.786171, 26.788864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306378, 0.865129, -0.397094,
		0.244558, 0.474690, 0.845495,
		0.919959, 0.161928, -0.357009,
		29.685377, 26.834749, 26.681761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140797, 27.389650, 27.073029>,  <29.041407, 26.721399, 26.931667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140797, 27.389650, 27.073029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377029, 27.291813, 26.765423>,  <29.518768, 27.233110, 26.580858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377029, 27.291813, 26.765423>,  <29.140797, 27.389650, 27.073029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377029, 27.291813, 26.765423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335161, 0.792533, -0.509469,
		0.734084, 0.558628, 0.386077,
		0.590582, -0.244596, -0.769016,
		29.554205, 27.218433, 26.534718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397421, 28.027227, 26.777863>,  <29.140797, 27.389650, 27.073029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397421, 28.027227, 26.777863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.465603, 27.769413, 26.479729>,  <29.506512, 27.614725, 26.300848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.465603, 27.769413, 26.479729>,  <29.397421, 28.027227, 26.777863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465603, 27.769413, 26.479729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162992, 0.727540, -0.666423,
		0.971791, 0.235079, 0.018960,
		0.170456, -0.644534, -0.745333,
		29.516739, 27.576054, 26.256128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958366, 28.186529, 26.287685>,  <29.397421, 28.027227, 26.777863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958366, 28.186529, 26.287685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.677160, 27.972527, 26.100266>,  <29.508436, 27.844126, 25.987814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.677160, 27.972527, 26.100266>,  <29.958366, 28.186529, 26.287685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677160, 27.972527, 26.100266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195765, 0.778968, -0.595722,
		0.683701, -0.327075, -0.652361,
		-0.703014, -0.535006, -0.468551,
		29.466255, 27.812025, 25.959700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169275, 28.226492, 25.437176>,  <29.958366, 28.186529, 26.287685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169275, 28.226492, 25.437176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.783310, 28.135117, 25.488953>,  <29.551731, 28.080292, 25.520020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.783310, 28.135117, 25.488953>,  <30.169275, 28.226492, 25.437176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783310, 28.135117, 25.488953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248434, 0.634770, -0.731675,
		0.084977, -0.738161, -0.669251,
		-0.964914, -0.228440, 0.129443,
		29.493835, 28.066584, 25.527786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008432, 28.157755, 24.753681>,  <30.169275, 28.226492, 25.437176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008432, 28.157755, 24.753681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671246, 28.193909, 24.965809>,  <29.468933, 28.215601, 25.093086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671246, 28.193909, 24.965809>,  <30.008432, 28.157755, 24.753681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671246, 28.193909, 24.965809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344705, 0.666084, -0.661446,
		-0.413022, -0.740380, -0.530331,
		-0.842966, 0.090384, 0.530320,
		29.418356, 28.221024, 25.124905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562336, 28.030987, 24.165451>,  <30.008432, 28.157755, 24.753681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562336, 28.030987, 24.165451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.373384, 28.222279, 24.461601>,  <29.260014, 28.337053, 24.639292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.373384, 28.222279, 24.461601>,  <29.562336, 28.030987, 24.165451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373384, 28.222279, 24.461601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201335, 0.759246, -0.618878,
		-0.858092, -0.441409, -0.262368,
		-0.472380, 0.478230, 0.740374,
		29.231670, 28.365747, 24.683714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937902, 28.282753, 23.894573>,  <29.562336, 28.030987, 24.165451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937902, 28.282753, 23.894573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.005291, 28.516125, 24.212372>,  <29.045723, 28.656149, 24.403051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.005291, 28.516125, 24.212372>,  <28.937902, 28.282753, 23.894573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005291, 28.516125, 24.212372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185358, 0.810390, -0.555797,
		-0.968122, -0.053632, 0.244670,
		0.168470, 0.583431, 0.794498,
		29.055832, 28.691154, 24.450722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351837, 28.741531, 23.844540>,  <28.937902, 28.282753, 23.894573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351837, 28.741531, 23.844540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609671, 28.934837, 24.081509>,  <28.764370, 29.050821, 24.223690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609671, 28.934837, 24.081509>,  <28.351837, 28.741531, 23.844540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609671, 28.934837, 24.081509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051389, 0.800516, -0.597105,
		-0.762805, 0.354440, 0.540834,
		0.644584, 0.483267, 0.592423,
		28.803045, 29.079817, 24.259235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<47.682056, 30.762409, 15.617628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.045517, 30.758587, 15.784610>,  <48.263592, 30.756292, 15.884799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.045517, 30.758587, 15.784610>,  <47.682056, 30.762409, 15.617628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.045517, 30.758587, 15.784610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417163, -0.064596, 0.906533,
		0.018301, -0.997866, -0.062683,
		0.908648, -0.009558, 0.417455,
		48.318111, 30.755720, 15.909846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.655506, 30.226448, 16.072615>,  <47.682056, 30.762409, 15.617628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.655506, 30.226448, 16.072615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.949360, 30.477009, 16.176868>,  <48.125671, 30.627344, 16.239422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.949360, 30.477009, 16.176868>,  <47.655506, 30.226448, 16.072615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.949360, 30.477009, 16.176868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424650, 0.124923, 0.896698,
		0.529132, -0.769427, 0.357774,
		0.734637, 0.626400, 0.260636,
		48.169750, 30.664928, 16.255058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.865768, 30.054358, 16.733749>,  <47.655506, 30.226448, 16.072615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.865768, 30.054358, 16.733749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.990269, 30.433830, 16.711380>,  <48.064968, 30.661514, 16.697958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.990269, 30.433830, 16.711380>,  <47.865768, 30.054358, 16.733749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.990269, 30.433830, 16.711380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183261, 0.117657, 0.975998,
		0.932492, -0.293529, 0.210477,
		0.311248, 0.948682, -0.055922,
		48.083645, 30.718435, 16.694603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.375034, 30.203583, 17.360077>,  <47.865768, 30.054358, 16.733749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.375034, 30.203583, 17.360077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.244801, 30.555611, 17.221821>,  <48.166660, 30.766829, 17.138866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.244801, 30.555611, 17.221821>,  <48.375034, 30.203583, 17.360077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.244801, 30.555611, 17.221821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558652, 0.115873, 0.821268,
		0.762825, 0.460487, 0.453927,
		-0.325585, 0.880071, -0.345642,
		48.147125, 30.819632, 17.118128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.218872, 30.469090, 17.955805>,  <48.375034, 30.203583, 17.360077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.218872, 30.469090, 17.955805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.051670, 30.726017, 17.698837>,  <47.951351, 30.880175, 17.544657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.051670, 30.726017, 17.698837>,  <48.218872, 30.469090, 17.955805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.051670, 30.726017, 17.698837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777479, 0.112838, 0.618703,
		0.469895, 0.758085, 0.452224,
		-0.418002, 0.642320, -0.642417,
		47.926270, 30.918713, 17.506113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.008980, 31.023987, 18.376381>,  <48.218872, 30.469090, 17.955805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.008980, 31.023987, 18.376381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.799683, 31.026886, 18.035519>,  <47.674107, 31.028625, 17.831001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.799683, 31.026886, 18.035519>,  <48.008980, 31.023987, 18.376381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.799683, 31.026886, 18.035519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845316, 0.122301, 0.520079,
		0.107988, 0.992467, -0.057866,
		-0.523239, 0.007247, -0.852155,
		47.642712, 31.029060, 17.779873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.619507, 31.595942, 18.356594>,  <48.008980, 31.023987, 18.376381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.619507, 31.595942, 18.356594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.418438, 31.353687, 18.109848>,  <47.297794, 31.208334, 17.961802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.418438, 31.353687, 18.109848>,  <47.619507, 31.595942, 18.356594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418438, 31.353687, 18.109848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811095, 0.083557, 0.578915,
		-0.299069, 0.791341, -0.533232,
		-0.502675, -0.605637, -0.616864,
		47.267635, 31.171995, 17.924789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978893, 31.850174, 18.187569>,  <47.619507, 31.595942, 18.356594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978893, 31.850174, 18.187569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.919544, 31.461586, 18.113564>,  <46.883934, 31.228434, 18.069160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.919544, 31.461586, 18.113564>,  <46.978893, 31.850174, 18.187569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919544, 31.461586, 18.113564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844545, 0.027140, 0.534797,
		-0.514519, 0.235600, -0.824477,
		-0.148374, -0.971471, -0.185011,
		46.875031, 31.170145, 18.058060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325981, 31.944372, 18.132223>,  <46.978893, 31.850174, 18.187569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325981, 31.944372, 18.132223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.350071, 31.545101, 18.130726>,  <46.364525, 31.305538, 18.129827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.350071, 31.545101, 18.130726>,  <46.325981, 31.944372, 18.132223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350071, 31.545101, 18.130726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978275, -0.059771, 0.198507,
		-0.198369, -0.008295, -0.980092,
		0.060228, -0.998178, -0.003742,
		46.368137, 31.245647, 18.129602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644314, 31.634708, 17.809822>,  <46.325981, 31.944372, 18.132223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644314, 31.634708, 17.809822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.809402, 31.335861, 18.018234>,  <45.908455, 31.156553, 18.143282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.809402, 31.335861, 18.018234>,  <45.644314, 31.634708, 17.809822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809402, 31.335861, 18.018234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893547, -0.221112, 0.390747,
		-0.176728, -0.626835, -0.758845,
		0.412723, -0.747120, 0.521030,
		45.933220, 31.111725, 18.174543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259811, 30.969391, 17.633427>,  <45.644314, 31.634708, 17.809822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259811, 30.969391, 17.633427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.443966, 30.942921, 17.987526>,  <45.554459, 30.927038, 18.199986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.443966, 30.942921, 17.987526>,  <45.259811, 30.969391, 17.633427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443966, 30.942921, 17.987526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852395, -0.311453, 0.420023,
		0.247918, -0.947955, -0.199796,
		0.460390, -0.066174, 0.885247,
		45.582085, 30.923069, 18.253099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937801, 30.365555, 17.922115>,  <45.259811, 30.969391, 17.633427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937801, 30.365555, 17.922115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.117516, 30.543556, 18.231983>,  <45.225346, 30.650356, 18.417904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.117516, 30.543556, 18.231983>,  <44.937801, 30.365555, 17.922115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117516, 30.543556, 18.231983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777018, -0.233279, 0.584657,
		0.440888, -0.864612, 0.240965,
		0.449289, 0.445002, 0.774669,
		45.252304, 30.677057, 18.464384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758083, 29.844360, 18.399397>,  <44.937801, 30.365555, 17.922115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758083, 29.844360, 18.399397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.868099, 30.193714, 18.560173>,  <44.934109, 30.403326, 18.656639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.868099, 30.193714, 18.560173>,  <44.758083, 29.844360, 18.399397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868099, 30.193714, 18.560173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746361, -0.069571, 0.661895,
		0.606050, -0.482040, 0.632725,
		0.275040, 0.873383, 0.401939,
		44.950611, 30.455729, 18.680756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584141, 29.751326, 19.042830>,  <44.758083, 29.844360, 18.399397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584141, 29.751326, 19.042830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.605751, 30.150692, 19.036556>,  <44.618717, 30.390312, 19.032793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.605751, 30.150692, 19.036556>,  <44.584141, 29.751326, 19.042830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605751, 30.150692, 19.036556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819936, 0.053323, 0.569966,
		0.569900, -0.017935, 0.821518,
		0.054028, 0.998417, -0.015684,
		44.621960, 30.450216, 19.031851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400578, 29.969904, 19.710859>,  <44.584141, 29.751326, 19.042830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400578, 29.969904, 19.710859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.331799, 30.283798, 19.472660>,  <44.290531, 30.472136, 19.329741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.331799, 30.283798, 19.472660>,  <44.400578, 29.969904, 19.710859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331799, 30.283798, 19.472660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885356, 0.141954, 0.442712,
		0.431946, 0.603353, 0.670363,
		-0.171951, 0.784738, -0.595499,
		44.280212, 30.519220, 19.294010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115116, 30.521776, 20.085979>,  <44.400578, 29.969904, 19.710859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115116, 30.521776, 20.085979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.013027, 30.643127, 19.718758>,  <43.951775, 30.715939, 19.498425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.013027, 30.643127, 19.718758>,  <44.115116, 30.521776, 20.085979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013027, 30.643127, 19.718758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908173, 0.250602, 0.335292,
		0.331787, 0.919325, 0.211561,
		-0.255225, 0.303380, -0.918053,
		43.936459, 30.734142, 19.443342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000523, 31.212336, 20.206182>,  <44.115116, 30.521776, 20.085979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000523, 31.212336, 20.206182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.792561, 31.123158, 19.876335>,  <43.667782, 31.069651, 19.678427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.792561, 31.123158, 19.876335>,  <44.000523, 31.212336, 20.206182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792561, 31.123158, 19.876335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828825, 0.365310, 0.423791,
		0.206758, 0.903794, -0.374711,
		-0.519905, -0.222947, -0.824617,
		43.636589, 31.056273, 19.628950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503883, 31.815042, 20.090965>,  <44.000523, 31.212336, 20.206182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503883, 31.815042, 20.090965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.365723, 31.485554, 19.911106>,  <43.282825, 31.287861, 19.803190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.365723, 31.485554, 19.911106>,  <43.503883, 31.815042, 20.090965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365723, 31.485554, 19.911106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931720, 0.243691, 0.269283,
		-0.112240, 0.511954, -0.851649,
		-0.345399, -0.823722, -0.449645,
		43.262104, 31.238438, 19.776213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012890, 32.168171, 19.791239>,  <43.503883, 31.815042, 20.090965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012890, 32.168171, 19.791239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.925541, 31.777824, 19.790379>,  <42.873131, 31.543617, 19.789862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.925541, 31.777824, 19.790379>,  <43.012890, 32.168171, 19.791239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925541, 31.777824, 19.790379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931146, 0.207707, 0.299709,
		-0.292028, 0.067451, -0.954028,
		-0.218374, -0.975863, -0.002151,
		42.860027, 31.485065, 19.789734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381325, 32.014881, 19.405561>,  <43.012890, 32.168171, 19.791239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381325, 32.014881, 19.405561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.417912, 31.701328, 19.651215>,  <42.439865, 31.513195, 19.798607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.417912, 31.701328, 19.651215>,  <42.381325, 32.014881, 19.405561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417912, 31.701328, 19.651215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941122, 0.133511, 0.310587,
		-0.325458, -0.606381, -0.725520,
		0.091469, -0.783886, 0.614131,
		42.445351, 31.466162, 19.835453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821007, 31.799299, 19.368408>,  <42.381325, 32.014881, 19.405561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821007, 31.799299, 19.368408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.935585, 31.621048, 19.707668>,  <42.004333, 31.514097, 19.911224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.935585, 31.621048, 19.707668>,  <41.821007, 31.799299, 19.368408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935585, 31.621048, 19.707668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931441, 0.077829, 0.355471,
		-0.224419, -0.891829, -0.392782,
		0.286450, -0.445628, 0.848152,
		42.021519, 31.487360, 19.962114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747574, 32.505962, 19.497189>,  <41.821007, 31.799299, 19.368408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747574, 32.505962, 19.497189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.547771, 32.813885, 19.338245>,  <41.427891, 32.998638, 19.242880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.547771, 32.813885, 19.338245>,  <41.747574, 32.505962, 19.497189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547771, 32.813885, 19.338245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738473, 0.138559, -0.659892,
		-0.452931, -0.623060, -0.637691,
		-0.499510, 0.769804, -0.397355,
		41.397919, 33.044827, 19.219038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825668, 32.421127, 18.836992>,  <41.747574, 32.505962, 19.497189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825668, 32.421127, 18.836992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.699322, 32.800438, 18.849625>,  <41.623512, 33.028023, 18.857204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.699322, 32.800438, 18.849625>,  <41.825668, 32.421127, 18.836992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699322, 32.800438, 18.849625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733968, 0.265307, -0.625223,
		-0.601263, -0.174309, -0.779807,
		-0.315870, 0.948277, 0.031581,
		41.604561, 33.084923, 18.859098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657589, 32.655205, 18.250826>,  <41.825668, 32.421127, 18.836992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657589, 32.655205, 18.250826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.730263, 33.009571, 18.421535>,  <41.773869, 33.222191, 18.523960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.730263, 33.009571, 18.421535>,  <41.657589, 32.655205, 18.250826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730263, 33.009571, 18.421535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647957, 0.218600, -0.729634,
		-0.739690, 0.409095, -0.534321,
		0.181687, 0.885920, 0.426773,
		41.784767, 33.275349, 18.549568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695889, 33.119274, 17.703014>,  <41.657589, 32.655205, 18.250826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695889, 33.119274, 17.703014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.878460, 33.356232, 17.968567>,  <41.988003, 33.498405, 18.127897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.878460, 33.356232, 17.968567>,  <41.695889, 33.119274, 17.703014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878460, 33.356232, 17.968567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726428, 0.182743, -0.662501,
		-0.513782, 0.784647, -0.346924,
		0.456432, 0.592396, 0.663880,
		42.015388, 33.533951, 18.167730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875641, 33.841022, 17.408133>,  <41.695889, 33.119274, 17.703014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875641, 33.841022, 17.408133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.137928, 33.795177, 17.706635>,  <42.295300, 33.767670, 17.885736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.137928, 33.795177, 17.706635>,  <41.875641, 33.841022, 17.408133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137928, 33.795177, 17.706635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740027, 0.293472, -0.605172,
		-0.149643, 0.949072, 0.277254,
		0.655718, -0.114615, 0.746255,
		42.334644, 33.760792, 17.930511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353001, 34.301506, 17.149761>,  <41.875641, 33.841022, 17.408133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353001, 34.301506, 17.149761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.530407, 34.108223, 17.451702>,  <42.636852, 33.992252, 17.632868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.530407, 34.108223, 17.451702>,  <42.353001, 34.301506, 17.149761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530407, 34.108223, 17.451702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873623, 0.044952, -0.484522,
		0.200193, 0.874350, 0.442079,
		0.443514, -0.483209, 0.754854,
		42.663460, 33.963261, 17.678158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956791, 34.711597, 17.275629>,  <42.353001, 34.301506, 17.149761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956791, 34.711597, 17.275629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.021317, 34.342270, 17.415035>,  <43.060032, 34.120674, 17.498680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.021317, 34.342270, 17.415035>,  <42.956791, 34.711597, 17.275629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021317, 34.342270, 17.415035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785713, -0.093536, -0.611479,
		0.597187, 0.372476, 0.710373,
		0.161316, -0.923316, 0.348518,
		43.069710, 34.065273, 17.519590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721359, 34.667797, 17.432896>,  <42.956791, 34.711597, 17.275629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721359, 34.667797, 17.432896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.590122, 34.290138, 17.420601>,  <43.511379, 34.063545, 17.413223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.590122, 34.290138, 17.420601>,  <43.721359, 34.667797, 17.432896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590122, 34.290138, 17.420601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822537, -0.269531, -0.500786,
		0.464529, -0.189589, 0.865025,
		-0.328094, -0.944145, -0.030739,
		43.491695, 34.006893, 17.411379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343079, 34.242283, 17.559191>,  <43.721359, 34.667797, 17.432896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343079, 34.242283, 17.559191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.075390, 34.006359, 17.378410>,  <43.914776, 33.864803, 17.269941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.075390, 34.006359, 17.378410>,  <44.343079, 34.242283, 17.559191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075390, 34.006359, 17.378410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725474, -0.387080, -0.569084,
		0.160711, -0.708724, 0.686937,
		-0.669223, -0.589813, -0.451953,
		43.874622, 33.829414, 17.242825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731617, 33.544567, 17.429379>,  <44.343079, 34.242283, 17.559191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731617, 33.544567, 17.429379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.406982, 33.547977, 17.195709>,  <44.212204, 33.550022, 17.055508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.406982, 33.547977, 17.195709>,  <44.731617, 33.544567, 17.429379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406982, 33.547977, 17.195709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502563, -0.499705, -0.705496,
		-0.297930, -0.866153, 0.401268,
		-0.811583, 0.008526, -0.584174,
		44.163506, 33.550537, 17.020456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560604, 32.861137, 17.253212>,  <44.731617, 33.544567, 17.429379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560604, 32.861137, 17.253212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.438923, 33.119648, 16.973274>,  <44.365913, 33.274754, 16.805311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.438923, 33.119648, 16.973274>,  <44.560604, 32.861137, 17.253212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438923, 33.119648, 16.973274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555271, -0.476648, -0.681528,
		-0.774036, -0.595930, -0.213860,
		-0.304207, 0.646278, -0.699845,
		44.347660, 33.313530, 16.763321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545979, 32.414879, 16.710396>,  <44.560604, 32.861137, 17.253212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545979, 32.414879, 16.710396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.514439, 32.769501, 16.528057>,  <44.495514, 32.982277, 16.418653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.514439, 32.769501, 16.528057>,  <44.545979, 32.414879, 16.710396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514439, 32.769501, 16.528057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562627, -0.337907, -0.754500,
		-0.822942, -0.315961, -0.472159,
		-0.078847, 0.886560, -0.455846,
		44.490784, 33.035469, 16.391304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358624, 32.218082, 16.000273>,  <44.545979, 32.414879, 16.710396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358624, 32.218082, 16.000273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.503036, 32.591080, 16.004490>,  <44.589684, 32.814880, 16.007021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.503036, 32.591080, 16.004490>,  <44.358624, 32.218082, 16.000273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503036, 32.591080, 16.004490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682417, -0.256469, -0.684494,
		-0.635583, 0.254317, -0.728943,
		0.361029, 0.932495, 0.010543,
		44.611343, 32.870827, 16.007652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355648, 32.360294, 15.397932>,  <44.358624, 32.218082, 16.000273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355648, 32.360294, 15.397932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.618145, 32.627426, 15.538419>,  <44.775642, 32.787704, 15.622711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.618145, 32.627426, 15.538419>,  <44.355648, 32.360294, 15.397932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618145, 32.627426, 15.538419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690171, -0.343128, -0.637124,
		-0.304976, 0.660508, -0.686090,
		0.656242, 0.667827, 0.351217,
		44.815018, 32.827774, 15.643784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666550, 32.746777, 14.853979>,  <44.355648, 32.360294, 15.397932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666550, 32.746777, 14.853979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.940224, 32.764339, 15.145173>,  <45.104427, 32.774876, 15.319890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.940224, 32.764339, 15.145173>,  <44.666550, 32.746777, 14.853979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940224, 32.764339, 15.145173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721687, -0.184698, -0.667125,
		0.105165, 0.981814, -0.158055,
		0.684185, 0.043908, 0.727986,
		45.145477, 32.777512, 15.363569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257481, 32.969631, 14.460610>,  <44.666550, 32.746777, 14.853979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257481, 32.969631, 14.460610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.422752, 32.829292, 14.796750>,  <45.521915, 32.745090, 14.998434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.422752, 32.829292, 14.796750>,  <45.257481, 32.969631, 14.460610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422752, 32.829292, 14.796750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792453, -0.316128, -0.521614,
		0.448665, 0.881458, 0.147413,
		0.413180, -0.350848, 0.840350,
		45.546707, 32.724037, 15.048855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915043, 33.153667, 14.535081>,  <45.257481, 32.969631, 14.460610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915043, 33.153667, 14.535081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.912090, 32.825714, 14.764071>,  <45.910320, 32.628941, 14.901466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.912090, 32.825714, 14.764071>,  <45.915043, 33.153667, 14.535081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912090, 32.825714, 14.764071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909395, -0.243592, -0.337142,
		0.415869, 0.518119, 0.747399,
		-0.007380, -0.819888, 0.572477,
		45.909878, 32.579746, 14.935815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534870, 33.111996, 14.651548>,  <45.915043, 33.153667, 14.535081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534870, 33.111996, 14.651548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.422348, 32.746845, 14.769885>,  <46.354836, 32.527756, 14.840887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.422348, 32.746845, 14.769885>,  <46.534870, 33.111996, 14.651548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422348, 32.746845, 14.769885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841106, -0.382964, -0.381941,
		0.461962, 0.141393, 0.875557,
		-0.281303, -0.912878, 0.295841,
		46.337955, 32.472980, 14.858637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.154320, 32.838696, 14.935265>,  <46.534870, 33.111996, 14.651548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.154320, 32.838696, 14.935265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.936924, 32.511692, 14.859052>,  <46.806488, 32.315491, 14.813324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.936924, 32.511692, 14.859052>,  <47.154320, 32.838696, 14.935265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.936924, 32.511692, 14.859052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786785, -0.417001, -0.455061,
		0.292565, -0.397226, 0.869838,
		-0.543485, -0.817510, -0.190531,
		46.773880, 32.266438, 14.801892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474072, 32.219769, 15.231789>,  <47.154320, 32.838696, 14.935265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474072, 32.219769, 15.231789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.246311, 32.067242, 14.940480>,  <47.109653, 31.975725, 14.765696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.246311, 32.067242, 14.940480>,  <47.474072, 32.219769, 15.231789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.246311, 32.067242, 14.940480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787259, -0.507970, -0.349555,
		-0.236648, -0.772375, 0.589435,
		-0.569403, -0.381317, -0.728270,
		47.075489, 31.952847, 14.721999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.627846, 31.475517, 15.197575>,  <47.474072, 32.219769, 15.231789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.627846, 31.475517, 15.197575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.446320, 31.579590, 14.856668>,  <47.337406, 31.642033, 14.652123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.446320, 31.579590, 14.856668>,  <47.627846, 31.475517, 15.197575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446320, 31.579590, 14.856668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732093, -0.436415, -0.523050,
		-0.508030, -0.861306, 0.007574,
		-0.453812, 0.260180, -0.852268,
		47.310177, 31.657644, 14.600987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.256039, 26.860874, 27.803177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460411, 27.039406, 28.097046>,  <32.583035, 27.146524, 28.273367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460411, 27.039406, 28.097046>,  <32.256039, 26.860874, 27.803177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460411, 27.039406, 28.097046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187517, -0.776193, 0.601965,
		0.838921, -0.445325, -0.312886,
		0.510930, 0.446329, 0.734670,
		32.613689, 27.173306, 28.317448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698723, 26.395672, 28.079195>,  <32.256039, 26.860874, 27.803177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698723, 26.395672, 28.079195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682819, 26.653320, 28.384750>,  <32.673279, 26.807909, 28.568083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682819, 26.653320, 28.384750>,  <32.698723, 26.395672, 28.079195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682819, 26.653320, 28.384750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034081, -0.764922, 0.643221,
		0.998628, -0.000462, 0.052364,
		-0.039757, 0.644123, 0.763888,
		32.670891, 26.846558, 28.613916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318947, 26.240276, 28.526375>,  <32.698723, 26.395672, 28.079195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318947, 26.240276, 28.526375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060635, 26.449791, 28.748589>,  <32.905647, 26.575500, 28.881916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060635, 26.449791, 28.748589>,  <33.318947, 26.240276, 28.526375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060635, 26.449791, 28.748589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013056, -0.735059, 0.677877,
		0.763412, 0.430507, 0.481525,
		-0.645780, 0.523786, 0.555532,
		32.866901, 26.606926, 28.915249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526138, 26.094011, 29.245651>,  <33.318947, 26.240276, 28.526375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526138, 26.094011, 29.245651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177422, 26.263252, 29.344414>,  <32.968193, 26.364798, 29.403671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177422, 26.263252, 29.344414>,  <33.526138, 26.094011, 29.245651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177422, 26.263252, 29.344414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066516, -0.601588, 0.796032,
		0.485342, 0.677550, 0.552602,
		-0.871791, 0.423105, 0.246909,
		32.915886, 26.390184, 29.418486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511028, 26.366217, 30.068628>,  <33.526138, 26.094011, 29.245651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511028, 26.366217, 30.068628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147305, 26.290333, 29.920486>,  <32.929070, 26.244802, 29.831600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147305, 26.290333, 29.920486>,  <33.511028, 26.366217, 30.068628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147305, 26.290333, 29.920486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182519, -0.618003, 0.764695,
		-0.373952, 0.762943, 0.527331,
		-0.909311, -0.189711, -0.370355,
		32.874512, 26.233419, 29.809380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063107, 26.372663, 30.695396>,  <33.511028, 26.366217, 30.068628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063107, 26.372663, 30.695396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864491, 26.176971, 30.408592>,  <32.745319, 26.059555, 30.236509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864491, 26.176971, 30.408592>,  <33.063107, 26.372663, 30.695396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864491, 26.176971, 30.408592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372328, -0.626139, 0.685071,
		-0.784105, 0.607127, 0.128748,
		-0.496540, -0.489231, -0.717008,
		32.715530, 26.030203, 30.193489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529812, 26.036810, 31.039345>,  <33.063107, 26.372663, 30.695396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529812, 26.036810, 31.039345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544460, 25.837418, 30.692894>,  <32.553249, 25.717783, 30.485023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544460, 25.837418, 30.692894>,  <32.529812, 26.036810, 31.039345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544460, 25.837418, 30.692894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568209, -0.723358, 0.392290,
		-0.822069, 0.477777, -0.309728,
		0.036617, -0.498480, -0.866128,
		32.555447, 25.687874, 30.433056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884207, 26.042303, 30.886559>,  <32.529812, 26.036810, 31.039345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884207, 26.042303, 30.886559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072350, 25.734787, 30.713249>,  <32.185234, 25.550278, 30.609262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072350, 25.734787, 30.713249>,  <31.884207, 26.042303, 30.886559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072350, 25.734787, 30.713249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714461, -0.619934, 0.324387,
		-0.517987, 0.156980, -0.840861,
		0.470356, -0.768791, -0.433274,
		32.213455, 25.504150, 30.583267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422941, 25.591883, 30.540215>,  <31.884207, 26.042303, 30.886559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422941, 25.591883, 30.540215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734535, 25.348179, 30.599529>,  <31.921492, 25.201958, 30.635118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734535, 25.348179, 30.599529>,  <31.422941, 25.591883, 30.540215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734535, 25.348179, 30.599529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535378, -0.523129, 0.663104,
		-0.326427, -0.595937, -0.733692,
		0.778983, -0.609258, 0.148288,
		31.968231, 25.165401, 30.644016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053265, 24.886950, 30.603207>,  <31.422941, 25.591883, 30.540215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053265, 24.886950, 30.603207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426311, 24.831944, 30.736664>,  <31.650139, 24.798941, 30.816738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426311, 24.831944, 30.736664>,  <31.053265, 24.886950, 30.603207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426311, 24.831944, 30.736664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341706, -0.633805, 0.693922,
		0.116042, -0.761171, -0.638085,
		0.932615, -0.137513, 0.333645,
		31.706097, 24.790689, 30.836758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116459, 24.123966, 30.598085>,  <31.053265, 24.886950, 30.603207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116459, 24.123966, 30.598085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374004, 24.268902, 30.867649>,  <31.528532, 24.355864, 31.029387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.374004, 24.268902, 30.867649>,  <31.116459, 24.123966, 30.598085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374004, 24.268902, 30.867649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241844, -0.739234, 0.628526,
		0.725916, -0.567664, -0.388334,
		0.643861, 0.362341, 0.673908,
		31.567163, 24.377604, 31.069822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431433, 23.586006, 30.784248>,  <31.116459, 24.123966, 30.598085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431433, 23.586006, 30.784248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519413, 23.837612, 31.082500>,  <31.572201, 23.988575, 31.261452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519413, 23.837612, 31.082500>,  <31.431433, 23.586006, 30.784248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519413, 23.837612, 31.082500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348479, -0.663250, 0.662316,
		0.911144, -0.405513, 0.073316,
		0.219951, 0.629014, 0.745629,
		31.585398, 24.026316, 31.306189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694695, 23.118038, 31.361025>,  <31.431433, 23.586006, 30.784248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694695, 23.118038, 31.361025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.591244, 23.471325, 31.517509>,  <31.529173, 23.683296, 31.611401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.591244, 23.471325, 31.517509>,  <31.694695, 23.118038, 31.361025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591244, 23.471325, 31.517509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147102, -0.436275, 0.887708,
		0.954711, 0.172036, 0.242755,
		-0.258625, 0.883214, 0.391210,
		31.513657, 23.736290, 31.634872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789154, 22.388300, 31.535679>,  <31.694695, 23.118038, 31.361025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789154, 22.388300, 31.535679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824911, 22.689213, 31.796780>,  <31.846365, 22.869761, 31.953440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824911, 22.689213, 31.796780>,  <31.789154, 22.388300, 31.535679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824911, 22.689213, 31.796780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667940, 0.440875, -0.599571,
		-0.738827, 0.489595, -0.463068,
		0.089392, 0.752281, 0.652750,
		31.851728, 22.914898, 31.992605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119396, 21.681648, 31.364050>,  <31.789154, 22.388300, 31.535679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119396, 21.681648, 31.364050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177921, 21.439022, 31.051468>,  <32.213036, 21.293446, 30.863918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177921, 21.439022, 31.051468>,  <32.119396, 21.681648, 31.364050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177921, 21.439022, 31.051468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407970, 0.682649, -0.606259,
		0.901195, 0.407515, -0.147578,
		0.146316, -0.606565, -0.781454,
		32.221817, 21.257053, 30.817032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371403, 22.060350, 30.842524>,  <32.119396, 21.681648, 31.364050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371403, 22.060350, 30.842524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267555, 21.732506, 30.638237>,  <32.205246, 21.535799, 30.515665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267555, 21.732506, 30.638237>,  <32.371403, 22.060350, 30.842524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267555, 21.732506, 30.638237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358213, 0.572856, -0.737237,
		0.896816, -0.008457, -0.442322,
		-0.259622, -0.819612, -0.510718,
		32.189667, 21.486622, 30.485022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636822, 22.111227, 30.113218>,  <32.371403, 22.060350, 30.842524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636822, 22.111227, 30.113218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.311237, 21.878872, 30.110531>,  <32.115887, 21.739460, 30.108917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.311237, 21.878872, 30.110531>,  <32.636822, 22.111227, 30.113218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311237, 21.878872, 30.110531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327892, 0.468939, -0.820112,
		0.479567, -0.665316, -0.572164,
		-0.813943, -0.580906, -0.006736,
		32.067051, 21.704605, 30.108515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543484, 21.919250, 29.428120>,  <32.636822, 22.111227, 30.113218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543484, 21.919250, 29.428120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190132, 21.853695, 29.603748>,  <31.978121, 21.814362, 29.709126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190132, 21.853695, 29.603748>,  <32.543484, 21.919250, 29.428120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190132, 21.853695, 29.603748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468495, 0.333750, -0.817999,
		-0.012477, -0.928305, -0.371610,
		-0.883377, -0.163891, 0.439071,
		31.925119, 21.804527, 29.735470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085381, 21.760099, 28.800970>,  <32.543484, 21.919250, 29.428120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085381, 21.760099, 28.800970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819502, 21.845715, 29.087288>,  <31.659973, 21.897083, 29.259079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819502, 21.845715, 29.087288>,  <32.085381, 21.760099, 28.800970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819502, 21.845715, 29.087288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629342, 0.355900, -0.690843,
		-0.402617, -0.909683, -0.101864,
		-0.664701, 0.214037, 0.715793,
		31.620092, 21.909925, 29.302027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467676, 21.492741, 28.587566>,  <32.085381, 21.760099, 28.800970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467676, 21.492741, 28.587566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.396019, 21.797165, 28.836948>,  <31.353024, 21.979820, 28.986578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.396019, 21.797165, 28.836948>,  <31.467676, 21.492741, 28.587566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396019, 21.797165, 28.836948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552542, 0.446489, -0.703807,
		-0.814005, -0.470568, 0.340532,
		-0.179145, 0.761061, 0.623453,
		31.342276, 22.025482, 29.023985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772160, 21.775808, 28.440165>,  <31.467676, 21.492741, 28.587566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772160, 21.775808, 28.440165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.912891, 22.074928, 28.665379>,  <30.997332, 22.254400, 28.800507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.912891, 22.074928, 28.665379>,  <30.772160, 21.775808, 28.440165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912891, 22.074928, 28.665379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549576, 0.651932, -0.522448,
		-0.757748, -0.125618, 0.640342,
		0.351831, 0.747800, 0.563037,
		31.018440, 22.299269, 28.834290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250685, 22.318340, 28.336803>,  <30.772160, 21.775808, 28.440165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250685, 22.318340, 28.336803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.559425, 22.513561, 28.499798>,  <30.744671, 22.630693, 28.597595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.559425, 22.513561, 28.499798>,  <30.250685, 22.318340, 28.336803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559425, 22.513561, 28.499798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270485, 0.832075, -0.484241,
		-0.575397, 0.263543, 0.774251,
		0.771853, 0.488054, 0.407488,
		30.790981, 22.659977, 28.622044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980316, 23.000168, 28.603415>,  <30.250685, 22.318340, 28.336803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980316, 23.000168, 28.603415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374378, 23.052494, 28.558952>,  <30.610815, 23.083889, 28.532276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374378, 23.052494, 28.558952>,  <29.980316, 23.000168, 28.603415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374378, 23.052494, 28.558952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166013, 0.890786, -0.423013,
		0.043678, 0.435187, 0.899280,
		0.985156, 0.130816, -0.111154,
		30.669926, 23.091740, 28.525606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193434, 23.707579, 28.888212>,  <29.980316, 23.000168, 28.603415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193434, 23.707579, 28.888212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.471050, 23.594540, 28.623352>,  <30.637621, 23.526716, 28.464436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.471050, 23.594540, 28.623352>,  <30.193434, 23.707579, 28.888212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471050, 23.594540, 28.623352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116430, 0.951691, -0.284128,
		0.710458, 0.120103, 0.693416,
		0.694042, -0.282595, -0.662152,
		30.679262, 23.509762, 28.424706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524199, 24.285973, 28.879391>,  <30.193434, 23.707579, 28.888212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524199, 24.285973, 28.879391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.662584, 24.084141, 28.562984>,  <30.745615, 23.963041, 28.373140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.662584, 24.084141, 28.562984>,  <30.524199, 24.285973, 28.879391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662584, 24.084141, 28.562984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367583, 0.848576, -0.380528,
		0.863244, -0.159115, 0.479053,
		0.345965, -0.504581, -0.791016,
		30.766375, 23.932766, 28.325680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127556, 24.575890, 28.929132>,  <30.524199, 24.285973, 28.879391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127556, 24.575890, 28.929132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.034397, 24.427540, 28.569530>,  <30.978502, 24.338530, 28.353769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.034397, 24.427540, 28.569530>,  <31.127556, 24.575890, 28.929132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034397, 24.427540, 28.569530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289198, 0.856193, -0.428133,
		0.928506, -0.359702, -0.092149,
		-0.232898, -0.370874, -0.899006,
		30.964527, 24.316278, 28.299829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610031, 24.798664, 28.441458>,  <31.127556, 24.575890, 28.929132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610031, 24.798664, 28.441458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.314894, 24.708637, 28.186920>,  <31.137812, 24.654621, 28.034197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.314894, 24.708637, 28.186920>,  <31.610031, 24.798664, 28.441458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314894, 24.708637, 28.186920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086478, 0.903479, -0.419819,
		0.669410, -0.364790, -0.647162,
		-0.737843, -0.225065, -0.636344,
		31.093540, 24.641117, 27.996017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784389, 25.059885, 27.703941>,  <31.610031, 24.798664, 28.441458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784389, 25.059885, 27.703941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391296, 24.998856, 27.662067>,  <31.155441, 24.962238, 27.636944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391296, 24.998856, 27.662067>,  <31.784389, 25.059885, 27.703941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391296, 24.998856, 27.662067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069010, 0.827156, -0.557719,
		0.171682, -0.540864, -0.823403,
		-0.982733, -0.152573, -0.104682,
		31.096478, 24.953083, 27.630663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220024, 24.878462, 27.092329>,  <31.784389, 25.059885, 27.703941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220024, 24.878462, 27.092329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600105, 25.002293, 27.078030>,  <32.828156, 25.076591, 27.069450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600105, 25.002293, 27.078030>,  <32.220024, 24.878462, 27.092329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600105, 25.002293, 27.078030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271168, -0.764828, 0.584386,
		0.153569, -0.564979, -0.810688,
		0.950202, 0.309576, -0.035750,
		32.885166, 25.095165, 27.067305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476540, 24.285692, 27.089024>,  <32.220024, 24.878462, 27.092329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476540, 24.285692, 27.089024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782486, 24.531727, 27.165596>,  <32.966053, 24.679348, 27.211540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782486, 24.531727, 27.165596>,  <32.476540, 24.285692, 27.089024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782486, 24.531727, 27.165596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433309, -0.711135, 0.553652,
		0.476677, -0.340521, -0.810447,
		0.764867, 0.615088, 0.191431,
		33.011948, 24.716253, 27.223024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048470, 23.855753, 27.145618>,  <32.476540, 24.285692, 27.089024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048470, 23.855753, 27.145618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184517, 24.181152, 27.334316>,  <33.266144, 24.376392, 27.447535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184517, 24.181152, 27.334316>,  <33.048470, 23.855753, 27.145618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184517, 24.181152, 27.334316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585892, -0.575701, 0.570349,
		0.735560, 0.082404, -0.672429,
		0.340119, 0.813497, 0.471743,
		33.286552, 24.425201, 27.475840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803486, 23.776403, 27.232990>,  <33.048470, 23.855753, 27.145618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803486, 23.776403, 27.232990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.695580, 24.046303, 27.507782>,  <33.630836, 24.208242, 27.672657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.695580, 24.046303, 27.507782>,  <33.803486, 23.776403, 27.232990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695580, 24.046303, 27.507782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464651, -0.533660, 0.706616,
		0.843402, 0.509826, -0.169560,
		-0.269764, 0.674748, 0.686981,
		33.614651, 24.248728, 27.713877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487186, 23.977640, 27.678581>,  <33.803486, 23.776403, 27.232990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487186, 23.977640, 27.678581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156509, 24.065502, 27.885784>,  <33.958103, 24.118219, 28.010105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156509, 24.065502, 27.885784>,  <34.487186, 23.977640, 27.678581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156509, 24.065502, 27.885784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311318, -0.588311, 0.746305,
		0.468680, 0.778229, 0.417969,
		-0.826692, 0.219656, 0.518007,
		33.908501, 24.131399, 28.041185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676933, 24.300180, 28.399485>,  <34.487186, 23.977640, 27.678581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676933, 24.300180, 28.399485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308254, 24.151680, 28.444454>,  <34.087048, 24.062580, 28.471436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308254, 24.151680, 28.444454>,  <34.676933, 24.300180, 28.399485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308254, 24.151680, 28.444454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265247, -0.391736, 0.881015,
		-0.283038, 0.841852, 0.459537,
		-0.921701, -0.371252, 0.112423,
		34.031742, 24.040304, 28.478182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597260, 24.306870, 29.123022>,  <34.676933, 24.300180, 28.399485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597260, 24.306870, 29.123022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323486, 24.055893, 28.974503>,  <34.159222, 23.905306, 28.885391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323486, 24.055893, 28.974503>,  <34.597260, 24.306870, 29.123022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323486, 24.055893, 28.974503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049070, -0.547767, 0.835191,
		-0.727420, 0.553414, 0.405700,
		-0.684435, -0.627443, -0.371300,
		34.118156, 23.867661, 28.863113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531490, 24.714764, 29.765707>,  <34.597260, 24.306870, 29.123022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531490, 24.714764, 29.765707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900780, 24.822678, 29.875164>,  <35.122353, 24.887426, 29.940838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900780, 24.822678, 29.875164>,  <34.531490, 24.714764, 29.765707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900780, 24.822678, 29.875164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113852, 0.488100, -0.865330,
		-0.367020, 0.830044, 0.419908,
		0.923219, 0.269786, 0.273645,
		35.177746, 24.903614, 29.957258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481556, 25.382807, 29.704149>,  <34.531490, 24.714764, 29.765707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481556, 25.382807, 29.704149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873920, 25.319752, 29.658619>,  <35.109341, 25.281919, 29.631300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873920, 25.319752, 29.658619>,  <34.481556, 25.382807, 29.704149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873920, 25.319752, 29.658619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016778, 0.651860, -0.758153,
		0.193711, 0.741774, 0.642065,
		0.980915, -0.157635, -0.113826,
		35.168194, 25.272461, 29.624472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839508, 25.974360, 29.868713>,  <34.481556, 25.382807, 29.704149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839508, 25.974360, 29.868713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098335, 25.760918, 29.650883>,  <35.253632, 25.632853, 29.520184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098335, 25.760918, 29.650883>,  <34.839508, 25.974360, 29.868713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098335, 25.760918, 29.650883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060181, 0.747786, -0.661207,
		0.760050, 0.395076, 0.515984,
		0.647072, -0.533602, -0.544578,
		35.292458, 25.600838, 29.487509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316788, 26.518688, 29.631208>,  <34.839508, 25.974360, 29.868713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316788, 26.518688, 29.631208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406471, 26.199940, 29.406807>,  <35.460281, 26.008690, 29.272165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406471, 26.199940, 29.406807>,  <35.316788, 26.518688, 29.631208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406471, 26.199940, 29.406807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194989, 0.600700, -0.775332,
		0.954836, 0.064444, 0.290062,
		0.224206, -0.796873, -0.561003,
		35.473732, 25.960878, 29.238506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037415, 26.646496, 29.313459>,  <35.316788, 26.518688, 29.631208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037415, 26.646496, 29.313459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819218, 26.405472, 29.080441>,  <35.688301, 26.260859, 28.940630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819218, 26.405472, 29.080441>,  <36.037415, 26.646496, 29.313459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819218, 26.405472, 29.080441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213527, 0.572216, -0.791818,
		0.810460, -0.556319, -0.183477,
		-0.545492, -0.602560, -0.582547,
		35.655571, 26.224705, 28.905676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340221, 26.754519, 28.745375>,  <36.037415, 26.646496, 29.313459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340221, 26.754519, 28.745375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004192, 26.574326, 28.624481>,  <35.802574, 26.466209, 28.551945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004192, 26.574326, 28.624481>,  <36.340221, 26.754519, 28.745375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004192, 26.574326, 28.624481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004441, 0.551407, -0.834225,
		0.542438, -0.702161, -0.461228,
		-0.840084, -0.450467, -0.302222,
		35.752171, 26.439180, 28.533812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480984, 26.494648, 28.162273>,  <36.340221, 26.754519, 28.745375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480984, 26.494648, 28.162273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082626, 26.527485, 28.177567>,  <35.843613, 26.547186, 28.186743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082626, 26.527485, 28.177567>,  <36.480984, 26.494648, 28.162273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082626, 26.527485, 28.177567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006899, 0.352214, -0.935894,
		-0.090295, -0.932312, -0.350201,
		-0.995891, 0.082091, 0.038235,
		35.783859, 26.552113, 28.189037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.168339, 26.177349, 33.907085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.014839, 26.006416, 33.579639>,  <31.922739, 25.903856, 33.383171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.014839, 26.006416, 33.579639>,  <32.168339, 26.177349, 33.907085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014839, 26.006416, 33.579639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076186, 0.868808, -0.489253,
		0.920290, -0.250116, -0.300847,
		-0.383748, -0.427334, -0.818611,
		31.899715, 25.878216, 33.334057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572330, 26.250914, 33.408970>,  <32.168339, 26.177349, 33.907085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572330, 26.250914, 33.408970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224045, 26.195599, 33.220188>,  <32.015076, 26.162409, 33.106918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224045, 26.195599, 33.220188>,  <32.572330, 26.250914, 33.408970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224045, 26.195599, 33.220188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214991, 0.756069, -0.618173,
		0.442315, -0.639716, -0.628587,
		-0.870710, -0.138287, -0.471954,
		31.962831, 26.154112, 33.078602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687908, 26.405170, 32.860413>,  <32.572330, 26.250914, 33.408970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687908, 26.405170, 32.860413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.295750, 26.427689, 32.784882>,  <32.060455, 26.441200, 32.739563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.295750, 26.427689, 32.784882>,  <32.687908, 26.405170, 32.860413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295750, 26.427689, 32.784882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152467, 0.823796, -0.545998,
		0.124820, -0.564084, -0.816229,
		-0.980395, 0.056297, -0.188831,
		32.001633, 26.444578, 32.728233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569862, 26.542459, 32.091530>,  <32.687908, 26.405170, 32.860413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569862, 26.542459, 32.091530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.242088, 26.671642, 32.280941>,  <32.045425, 26.749153, 32.394588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.242088, 26.671642, 32.280941>,  <32.569862, 26.542459, 32.091530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242088, 26.671642, 32.280941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024823, 0.845369, -0.533606,
		-0.572641, -0.425498, -0.700738,
		-0.819431, 0.322959, 0.473531,
		31.996260, 26.768530, 32.423000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017174, 26.718002, 31.512077>,  <32.569862, 26.542459, 32.091530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017174, 26.718002, 31.512077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.934229, 26.911762, 31.852043>,  <31.884460, 27.028017, 32.056023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.934229, 26.911762, 31.852043>,  <32.017174, 26.718002, 31.512077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934229, 26.911762, 31.852043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014311, 0.867206, -0.497744,
		-0.978159, -0.115378, -0.172896,
		-0.207365, 0.484398, 0.849917,
		31.872019, 27.057081, 32.107018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495251, 27.105785, 31.292358>,  <32.017174, 26.718002, 31.512077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495251, 27.105785, 31.292358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638281, 27.293880, 31.615101>,  <31.724098, 27.406738, 31.808746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638281, 27.293880, 31.615101>,  <31.495251, 27.105785, 31.292358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638281, 27.293880, 31.615101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068562, 0.848427, -0.524853,
		-0.931365, 0.242993, 0.271135,
		0.357574, 0.470240, 0.806856,
		31.745552, 27.434952, 31.857157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135925, 27.643673, 31.336033>,  <31.495251, 27.105785, 31.292358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135925, 27.643673, 31.336033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.459154, 27.749580, 31.546524>,  <31.653091, 27.813126, 31.672819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.459154, 27.749580, 31.546524>,  <31.135925, 27.643673, 31.336033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459154, 27.749580, 31.546524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001764, 0.894383, -0.447299,
		-0.589081, 0.360521, 0.723193,
		0.808072, 0.264771, 0.526228,
		31.701576, 27.829012, 31.704393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038458, 28.413412, 31.445969>,  <31.135925, 27.643673, 31.336033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038458, 28.413412, 31.445969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.415075, 28.333378, 31.554386>,  <31.641045, 28.285357, 31.619436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.415075, 28.333378, 31.554386>,  <31.038458, 28.413412, 31.445969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415075, 28.333378, 31.554386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299895, 0.864343, -0.403701,
		-0.153502, 0.461386, 0.873819,
		0.941542, -0.200085, 0.271046,
		31.697538, 28.273352, 31.635700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272175, 28.989166, 31.814953>,  <31.038458, 28.413412, 31.445969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272175, 28.989166, 31.814953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.568932, 28.783848, 31.642384>,  <31.746986, 28.660658, 31.538841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.568932, 28.783848, 31.642384>,  <31.272175, 28.989166, 31.814953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568932, 28.783848, 31.642384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248410, 0.808035, -0.534203,
		0.622808, 0.289151, 0.726981,
		0.741892, -0.513295, -0.431422,
		31.791498, 28.629860, 31.512957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794580, 29.466736, 31.814621>,  <31.272175, 28.989166, 31.814953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794580, 29.466736, 31.814621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.886175, 29.192799, 31.537910>,  <31.941132, 29.028437, 31.371883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.886175, 29.192799, 31.537910>,  <31.794580, 29.466736, 31.814621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886175, 29.192799, 31.537910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411625, 0.712119, -0.568728,
		0.882117, -0.154523, 0.444963,
		0.228985, -0.684842, -0.691778,
		31.954870, 28.987347, 31.330378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379719, 29.718916, 31.609753>,  <31.794580, 29.466736, 31.814621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379719, 29.718916, 31.609753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.258114, 29.477676, 31.314770>,  <32.185150, 29.332932, 31.137779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.258114, 29.477676, 31.314770>,  <32.379719, 29.718916, 31.609753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258114, 29.477676, 31.314770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341795, 0.653510, -0.675352,
		0.889242, -0.457376, 0.007461,
		-0.304014, -0.603101, -0.737458,
		32.166908, 29.296745, 31.093533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911732, 29.739552, 31.134220>,  <32.379719, 29.718916, 31.609753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911732, 29.739552, 31.134220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598721, 29.609669, 30.921726>,  <32.410912, 29.531738, 30.794230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598721, 29.609669, 30.921726>,  <32.911732, 29.739552, 31.134220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598721, 29.609669, 30.921726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212687, 0.662495, -0.718237,
		0.585154, -0.675031, -0.449364,
		-0.782534, -0.324706, -0.531232,
		32.363960, 29.512257, 30.762356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476254, 29.300173, 30.922323>,  <32.911732, 29.739552, 31.134220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476254, 29.300173, 30.922323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.874752, 29.284393, 30.953136>,  <34.113850, 29.274925, 30.971624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.874752, 29.284393, 30.953136>,  <33.476254, 29.300173, 30.922323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874752, 29.284393, 30.953136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085057, -0.610761, 0.787233,
		0.015993, -0.790831, -0.611825,
		0.996248, -0.039450, 0.077034,
		34.173626, 29.272558, 30.976246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584522, 28.720455, 31.245203>,  <33.476254, 29.300173, 30.922323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584522, 28.720455, 31.245203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.941399, 28.894485, 31.293716>,  <34.155525, 28.998903, 31.322824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.941399, 28.894485, 31.293716>,  <33.584522, 28.720455, 31.245203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941399, 28.894485, 31.293716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227741, -0.665235, 0.711053,
		0.390044, -0.606772, -0.692599,
		0.892188, 0.435075, 0.121284,
		34.209057, 29.025007, 31.330101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027973, 28.147621, 31.143219>,  <33.584522, 28.720455, 31.245203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027973, 28.147621, 31.143219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.210236, 28.421227, 31.371078>,  <34.319595, 28.585390, 31.507793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.210236, 28.421227, 31.371078>,  <34.027973, 28.147621, 31.143219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210236, 28.421227, 31.371078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265030, -0.715169, 0.646755,
		0.849785, -0.143726, -0.507158,
		0.455659, 0.684015, 0.569648,
		34.346931, 28.626431, 31.541973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645344, 27.843443, 31.374136>,  <34.027973, 28.147621, 31.143219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645344, 27.843443, 31.374136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.616009, 28.174583, 31.596588>,  <34.598408, 28.373268, 31.730061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.616009, 28.174583, 31.596588>,  <34.645344, 27.843443, 31.374136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616009, 28.174583, 31.596588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389805, -0.489481, 0.780038,
		0.917973, 0.273987, -0.286805,
		-0.073335, 0.827852, 0.556132,
		34.594009, 28.422939, 31.763428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286972, 27.871542, 31.750675>,  <34.645344, 27.843443, 31.374136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286972, 27.871542, 31.750675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.008236, 28.086460, 31.940720>,  <34.840996, 28.215410, 32.054749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.008236, 28.086460, 31.940720>,  <35.286972, 27.871542, 31.750675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008236, 28.086460, 31.940720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208832, -0.481733, 0.851071,
		0.686155, 0.692276, 0.223484,
		-0.696836, 0.537296, 0.475113,
		34.799187, 28.247648, 32.083252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614712, 28.110571, 32.330978>,  <35.286972, 27.871542, 31.750675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614712, 28.110571, 32.330978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.226059, 28.134895, 32.422394>,  <34.992867, 28.149490, 32.477242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.226059, 28.134895, 32.422394>,  <35.614712, 28.110571, 32.330978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226059, 28.134895, 32.422394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179084, -0.441954, 0.878980,
		0.154455, 0.894974, 0.418527,
		-0.971634, 0.060812, 0.228537,
		34.934570, 28.153139, 32.490955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626530, 28.179449, 33.030388>,  <35.614712, 28.110571, 32.330978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626530, 28.179449, 33.030388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246109, 28.073082, 32.967400>,  <35.017857, 28.009262, 32.929607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246109, 28.073082, 32.967400>,  <35.626530, 28.179449, 33.030388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246109, 28.073082, 32.967400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036570, -0.602785, 0.797066,
		-0.306871, 0.752289, 0.583002,
		-0.951048, -0.265917, -0.157466,
		34.960796, 27.993307, 32.920158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362778, 28.046564, 33.675446>,  <35.626530, 28.179449, 33.030388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362778, 28.046564, 33.675446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.084965, 27.860401, 33.455986>,  <34.918278, 27.748703, 33.324310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.084965, 27.860401, 33.455986>,  <35.362778, 28.046564, 33.675446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084965, 27.860401, 33.455986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275698, -0.532213, 0.800463,
		-0.664540, 0.707211, 0.241329,
		-0.694534, -0.465405, -0.548653,
		34.876606, 27.720779, 33.291389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819946, 27.929703, 34.211750>,  <35.362778, 28.046564, 33.675446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819946, 27.929703, 34.211750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.766563, 27.678513, 33.905067>,  <34.734535, 27.527798, 33.721058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.766563, 27.678513, 33.905067>,  <34.819946, 27.929703, 34.211750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766563, 27.678513, 33.905067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342147, -0.696864, 0.630330,
		-0.930121, 0.346447, -0.121860,
		-0.133456, -0.627977, -0.766703,
		34.726528, 27.490120, 33.675056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274151, 27.487795, 34.344509>,  <34.819946, 27.929703, 34.211750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274151, 27.487795, 34.344509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.466087, 27.287727, 34.056183>,  <34.581249, 27.167686, 33.883186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.466087, 27.287727, 34.056183>,  <34.274151, 27.487795, 34.344509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466087, 27.287727, 34.056183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127986, -0.852700, 0.506480,
		-0.867969, -0.150776, -0.473177,
		0.479843, -0.500169, -0.720820,
		34.610039, 27.137676, 33.839935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818295, 26.810577, 34.202438>,  <34.274151, 27.487795, 34.344509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818295, 26.810577, 34.202438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177704, 26.745232, 34.039478>,  <34.393349, 26.706024, 33.941704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177704, 26.745232, 34.039478>,  <33.818295, 26.810577, 34.202438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177704, 26.745232, 34.039478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032696, -0.950490, 0.309030,
		-0.437716, -0.264349, -0.859375,
		0.898519, -0.163366, -0.407401,
		34.447258, 26.696222, 33.917259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808765, 26.132839, 33.873138>,  <33.818295, 26.810577, 34.202438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808765, 26.132839, 33.873138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.198589, 26.218678, 33.898983>,  <34.432484, 26.270182, 33.914490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.198589, 26.218678, 33.898983>,  <33.808765, 26.132839, 33.873138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198589, 26.218678, 33.898983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194967, -0.953995, 0.227773,
		0.110517, -0.209383, -0.971568,
		0.974563, 0.214597, 0.064610,
		34.490959, 26.283056, 33.918365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180336, 25.573174, 33.463329>,  <33.808765, 26.132839, 33.873138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180336, 25.573174, 33.463329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.434402, 25.738209, 33.724506>,  <34.586842, 25.837231, 33.881214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.434402, 25.738209, 33.724506>,  <34.180336, 25.573174, 33.463329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434402, 25.738209, 33.724506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138226, -0.892444, 0.429462,
		0.759906, -0.182526, -0.623881,
		0.635166, 0.412588, 0.652943,
		34.624954, 25.861984, 33.920391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858109, 25.194841, 33.375256>,  <34.180336, 25.573174, 33.463329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858109, 25.194841, 33.375256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.856789, 25.360970, 33.739124>,  <34.855995, 25.460646, 33.957443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.856789, 25.360970, 33.739124>,  <34.858109, 25.194841, 33.375256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856789, 25.360970, 33.739124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040753, -0.908863, 0.415099,
		0.999164, 0.038442, -0.013926,
		-0.003300, 0.415320, 0.909670,
		34.855797, 25.485565, 34.012024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884186, 24.356731, 33.169506>,  <34.858109, 25.194841, 33.375256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884186, 24.356731, 33.169506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.898987, 24.033501, 32.934338>,  <34.907867, 23.839563, 32.793236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.898987, 24.033501, 32.934338>,  <34.884186, 24.356731, 33.169506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898987, 24.033501, 32.934338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428440, 0.544335, -0.721206,
		0.902812, -0.225199, 0.366354,
		0.037005, -0.808075, -0.587917,
		34.910088, 23.791079, 32.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533417, 24.459625, 32.808842>,  <34.884186, 24.356731, 33.169506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533417, 24.459625, 32.808842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.312157, 24.213371, 32.584335>,  <35.179401, 24.065619, 32.449631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.312157, 24.213371, 32.584335>,  <35.533417, 24.459625, 32.808842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312157, 24.213371, 32.584335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340174, 0.448088, -0.826740,
		0.760467, -0.648239, -0.038437,
		-0.553148, -0.615633, -0.561270,
		35.146214, 24.028681, 32.415955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947224, 24.126293, 32.219280>,  <35.533417, 24.459625, 32.808842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947224, 24.126293, 32.219280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577118, 24.069443, 32.078598>,  <35.355057, 24.035332, 31.994190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577118, 24.069443, 32.078598>,  <35.947224, 24.126293, 32.219280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577118, 24.069443, 32.078598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270184, 0.403867, -0.874009,
		0.266260, -0.903710, -0.335282,
		-0.925260, -0.142126, -0.351702,
		35.299541, 24.026804, 31.973087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107876, 23.775217, 31.610907>,  <35.947224, 24.126293, 32.219280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107876, 23.775217, 31.610907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.750107, 23.951252, 31.579094>,  <35.535446, 24.056873, 31.560007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.750107, 23.951252, 31.579094>,  <36.107876, 23.775217, 31.610907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750107, 23.951252, 31.579094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255750, 0.357453, -0.898231,
		-0.366872, -0.823741, -0.432268,
		-0.894425, 0.440088, -0.079532,
		35.481781, 24.083279, 31.555235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913841, 23.674755, 30.955406>,  <36.107876, 23.775217, 31.610907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913841, 23.674755, 30.955406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.666637, 23.972614, 31.056252>,  <35.518314, 24.151329, 31.116758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.666637, 23.972614, 31.056252>,  <35.913841, 23.674755, 30.955406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666637, 23.972614, 31.056252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107041, 0.397403, -0.911380,
		-0.778846, -0.536259, -0.325308,
		-0.618013, 0.744646, 0.252114,
		35.481232, 24.196009, 31.131886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375713, 23.728481, 30.405031>,  <35.913841, 23.674755, 30.955406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375713, 23.728481, 30.405031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.368870, 24.090878, 30.574211>,  <35.364765, 24.308315, 30.675720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.368870, 24.090878, 30.574211>,  <35.375713, 23.728481, 30.405031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368870, 24.090878, 30.574211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026920, 0.422443, -0.905990,
		-0.999491, -0.026884, 0.017163,
		-0.017106, 0.905991, 0.422952,
		35.363739, 24.362675, 30.701097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813808, 24.014172, 30.127560>,  <35.375713, 23.728481, 30.405031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813808, 24.014172, 30.127560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.039520, 24.327488, 30.231903>,  <35.174946, 24.515478, 30.294508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.039520, 24.327488, 30.231903>,  <34.813808, 24.014172, 30.127560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039520, 24.327488, 30.231903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050056, 0.347845, -0.936215,
		-0.824065, 0.515229, 0.235490,
		0.564279, 0.783290, 0.260857,
		35.208805, 24.562475, 30.310160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189629, 24.070223, 29.762884>,  <34.813808, 24.014172, 30.127560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189629, 24.070223, 29.762884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098965, 23.787853, 29.494469>,  <34.044567, 23.618431, 29.333420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098965, 23.787853, 29.494469>,  <34.189629, 24.070223, 29.762884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098965, 23.787853, 29.494469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346361, -0.702354, 0.621878,
		-0.910308, -0.091470, 0.403699,
		-0.226656, -0.705926, -0.671040,
		34.030968, 23.576075, 29.293156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727329, 23.598919, 30.070932>,  <34.189629, 24.070223, 29.762884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727329, 23.598919, 30.070932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957451, 23.431484, 29.789845>,  <34.095524, 23.331024, 29.621193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957451, 23.431484, 29.789845>,  <33.727329, 23.598919, 30.070932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957451, 23.431484, 29.789845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292996, -0.696657, 0.654846,
		-0.763663, -0.582628, -0.278143,
		0.575302, -0.418587, -0.702719,
		34.130043, 23.305908, 29.579029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607822, 22.829643, 30.137869>,  <33.727329, 23.598919, 30.070932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607822, 22.829643, 30.137869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.922119, 22.840698, 29.890694>,  <34.110695, 22.847330, 29.742388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.922119, 22.840698, 29.890694>,  <33.607822, 22.829643, 30.137869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922119, 22.840698, 29.890694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294535, -0.895194, 0.334480,
		-0.543932, -0.444819, -0.711529,
		0.785740, 0.027635, -0.617940,
		34.157841, 22.848989, 29.705313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574650, 22.233320, 29.752115>,  <33.607822, 22.829643, 30.137869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574650, 22.233320, 29.752115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.951656, 22.366970, 29.753777>,  <34.177860, 22.447161, 29.754772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.951656, 22.366970, 29.753777>,  <33.574650, 22.233320, 29.752115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951656, 22.366970, 29.753777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310336, -0.879886, 0.359851,
		0.123888, -0.337878, -0.933001,
		0.942519, 0.334125, 0.004152,
		34.234413, 22.467207, 29.755022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925133, 21.706051, 29.432316>,  <33.574650, 22.233320, 29.752115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925133, 21.706051, 29.432316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.184917, 21.908737, 29.659100>,  <34.340786, 22.030348, 29.795170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.184917, 21.908737, 29.659100>,  <33.925133, 21.706051, 29.432316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184917, 21.908737, 29.659100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204079, -0.834409, 0.511970,
		0.732500, -0.216798, -0.645324,
		0.649458, 0.506715, 0.566960,
		34.379753, 22.060751, 29.829187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475224, 21.314840, 29.487616>,  <33.925133, 21.706051, 29.432316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475224, 21.314840, 29.487616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.544861, 21.568394, 29.789047>,  <34.586643, 21.720526, 29.969906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.544861, 21.568394, 29.789047>,  <34.475224, 21.314840, 29.487616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544861, 21.568394, 29.789047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301233, -0.762863, 0.572100,
		0.937523, 0.127403, -0.323758,
		0.174096, 0.633883, 0.753580,
		34.597088, 21.758558, 30.015121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073090, 21.060837, 29.739967>,  <34.475224, 21.314840, 29.487616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073090, 21.060837, 29.739967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974373, 21.292744, 30.050571>,  <34.915142, 21.431887, 30.236933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974373, 21.292744, 30.050571>,  <35.073090, 21.060837, 29.739967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974373, 21.292744, 30.050571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213985, -0.748912, 0.627169,
		0.945147, 0.320942, 0.060765,
		-0.246793, 0.579765, 0.776509,
		34.900333, 21.466673, 30.283524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584827, 20.937223, 30.230280>,  <35.073090, 21.060837, 29.739967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584827, 20.937223, 30.230280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.264820, 21.070034, 30.430172>,  <35.072815, 21.149721, 30.550106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.264820, 21.070034, 30.430172>,  <35.584827, 20.937223, 30.230280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264820, 21.070034, 30.430172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121393, -0.726111, 0.676777,
		0.587567, 0.602097, 0.540596,
		-0.800018, 0.332027, 0.499729,
		35.024815, 21.169641, 30.580091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889278, 21.036066, 30.969292>,  <35.584827, 20.937223, 30.230280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889278, 21.036066, 30.969292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.492947, 20.982109, 30.966305>,  <35.255146, 20.949736, 30.964514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.492947, 20.982109, 30.966305>,  <35.889278, 21.036066, 30.969292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492947, 20.982109, 30.966305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092819, -0.719865, 0.687880,
		-0.098163, 0.680881, 0.725786,
		-0.990832, -0.134891, -0.007465,
		35.195698, 20.941643, 30.964066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.186657, 33.080170, 21.053036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843191, 33.018948, 21.248695>,  <31.637112, 32.982216, 21.366091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843191, 33.018948, 21.248695>,  <32.186657, 33.080170, 21.053036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843191, 33.018948, 21.248695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344685, -0.878760, 0.330109,
		0.379323, 0.452056, 0.807316,
		-0.858665, -0.153051, 0.489151,
		31.585592, 32.973034, 21.395441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422211, 32.718285, 21.701555>,  <32.186657, 33.080170, 21.053036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422211, 32.718285, 21.701555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032204, 32.640553, 21.658504>,  <31.798201, 32.593914, 21.632673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032204, 32.640553, 21.658504>,  <32.422211, 32.718285, 21.701555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032204, 32.640553, 21.658504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122165, -0.873706, 0.470864,
		-0.185539, 0.445951, 0.875616,
		-0.975013, -0.194333, -0.107627,
		31.739700, 32.582253, 21.626217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114841, 32.533489, 22.385254>,  <32.422211, 32.718285, 21.701555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114841, 32.533489, 22.385254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899847, 32.379635, 22.085075>,  <31.770851, 32.287323, 21.904968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899847, 32.379635, 22.085075>,  <32.114841, 32.533489, 22.385254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899847, 32.379635, 22.085075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108907, -0.914128, 0.390525,
		-0.836211, 0.128173, 0.533219,
		-0.537485, -0.384633, -0.750445,
		31.738602, 32.264244, 21.859941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671686, 32.224998, 22.743357>,  <32.114841, 32.533489, 22.385254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671686, 32.224998, 22.743357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707020, 32.068600, 22.376900>,  <31.728220, 31.974760, 22.157024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707020, 32.068600, 22.376900>,  <31.671686, 32.224998, 22.743357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707020, 32.068600, 22.376900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125557, -0.908032, 0.399641,
		-0.988146, -0.150330, -0.031116,
		0.088332, -0.390997, -0.916143,
		31.733519, 31.951302, 22.102057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364462, 31.504419, 22.843796>,  <31.671686, 32.224998, 22.743357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364462, 31.504419, 22.843796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544662, 31.487789, 22.487072>,  <31.652782, 31.477810, 22.273039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544662, 31.487789, 22.487072>,  <31.364462, 31.504419, 22.843796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544662, 31.487789, 22.487072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325663, -0.922432, 0.207514,
		-0.831260, -0.383914, -0.402016,
		0.450500, -0.041577, -0.891808,
		31.679811, 31.475315, 22.219530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251774, 30.856012, 22.578915>,  <31.364462, 31.504419, 22.843796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251774, 30.856012, 22.578915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573189, 30.964691, 22.367062>,  <31.766037, 31.029898, 22.239950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573189, 30.964691, 22.367062>,  <31.251774, 30.856012, 22.578915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573189, 30.964691, 22.367062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395581, -0.908595, 0.134057,
		-0.444799, -0.317233, -0.837566,
		0.803536, 0.271697, -0.529633,
		31.814249, 31.046200, 22.208172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313040, 30.383450, 22.059130>,  <31.251774, 30.856012, 22.578915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313040, 30.383450, 22.059130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674622, 30.543777, 22.118748>,  <31.891571, 30.639975, 22.154518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674622, 30.543777, 22.118748>,  <31.313040, 30.383450, 22.059130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674622, 30.543777, 22.118748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395771, -0.916156, 0.063425,
		0.161969, 0.001654, -0.986794,
		0.903953, 0.400818, 0.149044,
		31.945808, 30.664022, 22.163462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795515, 30.062035, 21.537653>,  <31.313040, 30.383450, 22.059130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795515, 30.062035, 21.537653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026958, 30.221256, 21.822403>,  <32.165825, 30.316790, 21.993254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026958, 30.221256, 21.822403>,  <31.795515, 30.062035, 21.537653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026958, 30.221256, 21.822403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357327, -0.908311, 0.217462,
		0.733165, 0.128547, -0.667791,
		0.578608, 0.398055, 0.711875,
		32.200542, 30.340673, 22.035965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590439, 30.027458, 21.350496>,  <31.795515, 30.062035, 21.537653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590439, 30.027458, 21.350496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557201, 30.043755, 21.748779>,  <32.537258, 30.053532, 21.987749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557201, 30.043755, 21.748779>,  <32.590439, 30.027458, 21.350496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557201, 30.043755, 21.748779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511016, -0.856055, 0.077673,
		0.855545, 0.515277, 0.050313,
		-0.083094, 0.040742, 0.995709,
		32.532272, 30.055977, 22.047491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179028, 29.689487, 21.563612>,  <32.590439, 30.027458, 21.350496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179028, 29.689487, 21.563612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025715, 29.736996, 21.929996>,  <32.933727, 29.765501, 22.149828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025715, 29.736996, 21.929996>,  <33.179028, 29.689487, 21.563612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025715, 29.736996, 21.929996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542290, -0.773835, 0.327263,
		0.747672, 0.622152, 0.232191,
		-0.383285, 0.118771, 0.915962,
		32.910728, 29.772627, 22.204784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669991, 29.643345, 22.093765>,  <33.179028, 29.689487, 21.563612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669991, 29.643345, 22.093765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336582, 29.556450, 22.296959>,  <33.136536, 29.504313, 22.418875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336582, 29.556450, 22.296959>,  <33.669991, 29.643345, 22.093765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336582, 29.556450, 22.296959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424105, -0.840854, 0.336303,
		0.354083, 0.495754, 0.793003,
		-0.833523, -0.217237, 0.507984,
		33.086525, 29.491280, 22.449354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938858, 29.480511, 22.774246>,  <33.669991, 29.643345, 22.093765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938858, 29.480511, 22.774246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577366, 29.313450, 22.736645>,  <33.360470, 29.213213, 22.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577366, 29.313450, 22.736645>,  <33.938858, 29.480511, 22.774246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577366, 29.313450, 22.736645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364276, -0.865577, 0.343626,
		-0.224884, 0.276301, 0.934390,
		-0.903731, -0.417652, -0.094004,
		33.306248, 29.188154, 22.708443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596424, 29.643337, 23.053938>,  <33.938858, 29.480511, 22.774246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596424, 29.643337, 23.053938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978817, 29.587566, 23.157211>,  <35.208252, 29.554104, 23.219175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978817, 29.587566, 23.157211>,  <34.596424, 29.643337, 23.053938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978817, 29.587566, 23.157211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285556, 0.644503, -0.709277,
		-0.067507, 0.751782, 0.655947,
		0.955981, -0.139428, 0.258184,
		35.265610, 29.545738, 23.234667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883106, 30.331755, 23.242561>,  <34.596424, 29.643337, 23.053938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883106, 30.331755, 23.242561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205425, 30.120674, 23.135067>,  <35.398819, 29.994026, 23.070570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205425, 30.120674, 23.135067>,  <34.883106, 30.331755, 23.242561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205425, 30.120674, 23.135067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345369, 0.787406, -0.510600,
		0.481047, 0.318629, 0.816743,
		0.805800, -0.527700, -0.268735,
		35.447166, 29.962364, 23.054447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227711, 30.810787, 23.306089>,  <34.883106, 30.331755, 23.242561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227711, 30.810787, 23.306089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455704, 30.540039, 23.119770>,  <35.592499, 30.377590, 23.007978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455704, 30.540039, 23.119770>,  <35.227711, 30.810787, 23.306089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455704, 30.540039, 23.119770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520186, 0.736089, -0.433106,
		0.636026, 0.004560, 0.771654,
		0.569981, -0.676870, -0.465800,
		35.626698, 30.336979, 22.980030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859203, 30.963116, 23.441154>,  <35.227711, 30.810787, 23.306089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859203, 30.963116, 23.441154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898495, 30.737228, 23.113388>,  <35.922070, 30.601696, 22.916727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898495, 30.737228, 23.113388>,  <35.859203, 30.963116, 23.441154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898495, 30.737228, 23.113388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604527, 0.687924, -0.401630,
		0.790505, -0.455910, 0.408959,
		0.098225, -0.564717, -0.819418,
		35.927963, 30.567814, 22.867563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549660, 30.999088, 23.255575>,  <35.859203, 30.963116, 23.441154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549660, 30.999088, 23.255575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365997, 30.902355, 22.913654>,  <36.255798, 30.844315, 22.708502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365997, 30.902355, 22.913654>,  <36.549660, 30.999088, 23.255575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365997, 30.902355, 22.913654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659704, 0.551604, -0.510415,
		0.594950, -0.798279, -0.093734,
		-0.459158, -0.241835, -0.854804,
		36.228249, 30.829805, 22.657213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119335, 30.985596, 22.772999>,  <36.549660, 30.999088, 23.255575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119335, 30.985596, 22.772999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792213, 31.018646, 22.545185>,  <36.595940, 31.038477, 22.408497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792213, 31.018646, 22.545185>,  <37.119335, 30.985596, 22.772999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792213, 31.018646, 22.545185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465483, 0.676908, -0.570193,
		0.338411, -0.731415, -0.592039,
		-0.817804, 0.082624, -0.569535,
		36.546871, 31.043434, 22.374325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249836, 30.833344, 22.121563>,  <37.119335, 30.985596, 22.772999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249836, 30.833344, 22.121563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927757, 31.066200, 22.076374>,  <36.734509, 31.205915, 22.049261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927757, 31.066200, 22.076374>,  <37.249836, 30.833344, 22.121563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927757, 31.066200, 22.076374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552541, 0.667350, -0.499342,
		-0.215295, -0.464492, -0.859008,
		-0.805199, 0.582144, -0.112974,
		36.686199, 31.240843, 22.042482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425671, 31.127672, 21.529915>,  <37.249836, 30.833344, 22.121563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425671, 31.127672, 21.529915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131992, 31.368999, 21.654472>,  <36.955788, 31.513796, 21.729208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131992, 31.368999, 21.654472>,  <37.425671, 31.127672, 21.529915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131992, 31.368999, 21.654472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405439, 0.757489, -0.511692,
		-0.544592, -0.249429, -0.800752,
		-0.734192, 0.603320, 0.311395,
		36.911736, 31.549995, 21.747890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451229, 31.573193, 21.008965>,  <37.425671, 31.127672, 21.529915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451229, 31.573193, 21.008965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240528, 31.786758, 21.273529>,  <37.114105, 31.914898, 21.432268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240528, 31.786758, 21.273529>,  <37.451229, 31.573193, 21.008965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240528, 31.786758, 21.273529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182227, 0.830955, -0.525650,
		-0.830255, -0.156361, -0.535003,
		-0.526754, 0.533915, 0.661411,
		37.082500, 31.946934, 21.471952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200405, 32.040348, 20.634539>,  <37.451229, 31.573193, 21.008965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200405, 32.040348, 20.634539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151482, 32.214741, 20.991180>,  <37.122128, 32.319378, 21.205166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151482, 32.214741, 20.991180>,  <37.200405, 32.040348, 20.634539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151482, 32.214741, 20.991180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107067, 0.898902, -0.424866,
		-0.986701, 0.043499, -0.156619,
		-0.122304, 0.435985, 0.891605,
		37.114792, 32.345535, 21.258661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790192, 32.597973, 20.537659>,  <37.200405, 32.040348, 20.634539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790192, 32.597973, 20.537659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971359, 32.695877, 20.880577>,  <37.080059, 32.754620, 21.086329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971359, 32.695877, 20.880577>,  <36.790192, 32.597973, 20.537659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971359, 32.695877, 20.880577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091271, 0.943796, -0.317677,
		-0.886868, 0.222128, 0.405123,
		0.452918, 0.244762, 0.857296,
		37.107235, 32.769306, 21.137766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517632, 33.175941, 20.771866>,  <36.790192, 32.597973, 20.537659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517632, 33.175941, 20.771866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874504, 33.169594, 20.952423>,  <37.088627, 33.165783, 21.060757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874504, 33.169594, 20.952423>,  <36.517632, 33.175941, 20.771866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874504, 33.169594, 20.952423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142485, 0.958242, -0.247931,
		-0.428607, 0.285517, 0.857191,
		0.892185, -0.015872, 0.451391,
		37.142159, 33.164833, 21.087841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614861, 33.879189, 20.905384>,  <36.517632, 33.175941, 20.771866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614861, 33.879189, 20.905384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976318, 33.742355, 21.008461>,  <37.193192, 33.660255, 21.070307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976318, 33.742355, 21.008461>,  <36.614861, 33.879189, 20.905384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976318, 33.742355, 21.008461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406289, 0.875037, -0.263136,
		-0.135479, 0.342480, 0.929706,
		0.903645, -0.342080, 0.257695,
		37.247414, 33.639732, 21.085770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015030, 34.320129, 21.479105>,  <36.614861, 33.879189, 20.905384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015030, 34.320129, 21.479105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265957, 34.124470, 21.236713>,  <37.416512, 34.007076, 21.091278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265957, 34.124470, 21.236713>,  <37.015030, 34.320129, 21.479105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265957, 34.124470, 21.236713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460621, 0.860476, -0.217737,
		0.627936, -0.142537, 0.765100,
		0.627315, -0.489146, -0.605980,
		37.454151, 33.977726, 21.054920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188435, 34.794979, 22.167248>,  <37.015030, 34.320129, 21.479105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188435, 34.794979, 22.167248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171917, 35.149948, 22.350887>,  <37.162006, 35.362930, 22.461071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171917, 35.149948, 22.350887>,  <37.188435, 34.794979, 22.167248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171917, 35.149948, 22.350887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011204, -0.459875, 0.887913,
		0.999084, 0.031523, 0.028933,
		-0.041295, 0.887424, 0.459101,
		37.159527, 35.416176, 22.488617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752758, 34.907623, 22.600256>,  <37.188435, 34.794979, 22.167248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752758, 34.907623, 22.600256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451653, 35.116970, 22.759972>,  <37.270988, 35.242577, 22.855801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451653, 35.116970, 22.759972>,  <37.752758, 34.907623, 22.600256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451653, 35.116970, 22.759972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059930, -0.549551, 0.833308,
		0.655552, 0.651217, 0.382320,
		-0.752768, 0.523364, 0.399287,
		37.225822, 35.273979, 22.879757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921009, 35.072166, 23.262196>,  <37.752758, 34.907623, 22.600256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921009, 35.072166, 23.262196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528065, 35.031712, 23.199280>,  <37.292297, 35.007439, 23.161530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528065, 35.031712, 23.199280>,  <37.921009, 35.072166, 23.262196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528065, 35.031712, 23.199280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068338, -0.588781, 0.805398,
		-0.174065, 0.801940, 0.571484,
		-0.982360, -0.101137, -0.157289,
		37.233356, 35.001369, 23.152094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661240, 35.083118, 23.896900>,  <37.921009, 35.072166, 23.262196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661240, 35.083118, 23.896900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355892, 34.920502, 23.696106>,  <37.172684, 34.822929, 23.575628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355892, 34.920502, 23.696106>,  <37.661240, 35.083118, 23.896900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355892, 34.920502, 23.696106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229881, -0.555264, 0.799273,
		-0.603676, 0.725536, 0.330413,
		-0.763368, -0.406546, -0.501986,
		37.126881, 34.798538, 23.545509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162624, 35.039013, 24.363108>,  <37.661240, 35.083118, 23.896900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162624, 35.039013, 24.363108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009209, 34.798862, 24.082409>,  <36.917160, 34.654774, 23.913990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009209, 34.798862, 24.082409>,  <37.162624, 35.039013, 24.363108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009209, 34.798862, 24.082409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322291, -0.625074, 0.710922,
		-0.865463, 0.498834, 0.046246,
		-0.383539, -0.600372, -0.701748,
		36.894146, 34.618752, 23.871885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426109, 34.859634, 24.488617>,  <37.162624, 35.039013, 24.363108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426109, 34.859634, 24.488617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532032, 34.551132, 24.257084>,  <36.595585, 34.366032, 24.118164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532032, 34.551132, 24.257084>,  <36.426109, 34.859634, 24.488617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532032, 34.551132, 24.257084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296680, -0.636307, 0.712105,
		-0.917529, -0.016841, -0.397313,
		0.264806, -0.771252, -0.578834,
		36.611473, 34.319756, 24.083433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949371, 34.342304, 24.602760>,  <36.426109, 34.859634, 24.488617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949371, 34.342304, 24.602760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252708, 34.129780, 24.451698>,  <36.434711, 34.002266, 24.361061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252708, 34.129780, 24.451698>,  <35.949371, 34.342304, 24.602760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252708, 34.129780, 24.451698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198266, -0.739907, 0.642828,
		-0.620972, -0.412608, -0.666445,
		0.758343, -0.531311, -0.377656,
		36.480209, 33.970387, 24.338402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634216, 33.671005, 24.558338>,  <35.949371, 34.342304, 24.602760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634216, 33.671005, 24.558338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029427, 33.618881, 24.525284>,  <36.266552, 33.587605, 24.505451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029427, 33.618881, 24.525284>,  <35.634216, 33.671005, 24.558338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029427, 33.618881, 24.525284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069587, -0.854268, 0.515153,
		-0.137724, -0.503233, -0.853105,
		0.988023, -0.130314, -0.082635,
		36.325832, 33.579788, 24.500494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824860, 32.935162, 24.352047>,  <35.634216, 33.671005, 24.558338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824860, 32.935162, 24.352047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148098, 33.084404, 24.534378>,  <36.342041, 33.173950, 24.643776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148098, 33.084404, 24.534378>,  <35.824860, 32.935162, 24.352047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148098, 33.084404, 24.534378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035209, -0.803037, 0.594888,
		0.588002, -0.464676, -0.662065,
		0.808093, 0.373106, 0.455827,
		36.390526, 33.196335, 24.671125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336514, 32.364632, 24.335144>,  <35.824860, 32.935162, 24.352047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336514, 32.364632, 24.335144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460114, 32.613674, 24.622723>,  <36.534271, 32.763100, 24.795271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460114, 32.613674, 24.622723>,  <36.336514, 32.364632, 24.335144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460114, 32.613674, 24.622723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005122, -0.754842, 0.655887,
		0.951049, -0.206351, -0.230056,
		0.308998, 0.622602, 0.718948,
		36.552814, 32.800453, 24.838408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731762, 31.939880, 24.801556>,  <36.336514, 32.364632, 24.335144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731762, 31.939880, 24.801556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670277, 32.260448, 25.032761>,  <36.633385, 32.452789, 25.171484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670277, 32.260448, 25.032761>,  <36.731762, 31.939880, 24.801556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670277, 32.260448, 25.032761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077516, -0.592941, 0.801506,
		0.985070, 0.078399, 0.153267,
		-0.153715, 0.801420, 0.578011,
		36.624161, 32.500874, 25.206163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116467, 31.814899, 25.435883>,  <36.731762, 31.939880, 24.801556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116467, 31.814899, 25.435883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820889, 32.079319, 25.488003>,  <36.643543, 32.237972, 25.519276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820889, 32.079319, 25.488003>,  <37.116467, 31.814899, 25.435883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820889, 32.079319, 25.488003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306879, -0.502380, 0.808356,
		0.599823, 0.557342, 0.574092,
		-0.738943, 0.661048, 0.130303,
		36.599205, 32.277634, 25.527094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061962, 31.849960, 26.113098>,  <37.116467, 31.814899, 25.435883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061962, 31.849960, 26.113098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720474, 32.009007, 25.978603>,  <36.515579, 32.104435, 25.897907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720474, 32.009007, 25.978603>,  <37.061962, 31.849960, 26.113098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720474, 32.009007, 25.978603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475418, -0.331734, 0.814819,
		0.212445, 0.855484, 0.472244,
		-0.853724, 0.397618, -0.336237,
		36.464355, 32.128292, 25.877733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809696, 32.344452, 26.602633>,  <37.061962, 31.849960, 26.113098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809696, 32.344452, 26.602633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482628, 32.203018, 26.420910>,  <36.286388, 32.118156, 26.311876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482628, 32.203018, 26.420910>,  <36.809696, 32.344452, 26.602633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482628, 32.203018, 26.420910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378171, -0.265106, 0.886964,
		-0.434057, 0.897049, 0.083053,
		-0.817668, -0.353585, -0.454309,
		36.237328, 32.096943, 26.284616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155712, 32.518105, 26.941269>,  <36.809696, 32.344452, 26.602633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155712, 32.518105, 26.941269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061802, 32.194447, 26.725803>,  <36.005455, 32.000252, 26.596523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061802, 32.194447, 26.725803>,  <36.155712, 32.518105, 26.941269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061802, 32.194447, 26.725803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414842, -0.417750, 0.808326,
		-0.879082, 0.413240, -0.237589,
		-0.234780, -0.809147, -0.538666,
		35.991367, 31.951702, 26.564203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671783, 32.203606, 27.461489>,  <36.155712, 32.518105, 26.941269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671783, 32.203606, 27.461489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703178, 31.945786, 27.157280>,  <35.722015, 31.791094, 26.974754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703178, 31.945786, 27.157280>,  <35.671783, 32.203606, 27.461489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703178, 31.945786, 27.157280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351254, -0.731835, 0.583984,
		-0.932984, 0.221299, -0.283843,
		0.078492, -0.644549, -0.760523,
		35.726727, 31.752420, 26.929123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032131, 31.974024, 27.186726>,  <35.671783, 32.203606, 27.461489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032131, 31.974024, 27.186726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299957, 31.685524, 27.115749>,  <35.460651, 31.512424, 27.073164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299957, 31.685524, 27.115749>,  <35.032131, 31.974024, 27.186726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299957, 31.685524, 27.115749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496280, -0.612163, 0.615600,
		-0.552621, -0.324125, -0.767823,
		0.669564, -0.721249, -0.177437,
		35.500828, 31.469149, 27.062517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759731, 31.411112, 27.434919>,  <35.032131, 31.974024, 27.186726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759731, 31.411112, 27.434919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140480, 31.293728, 27.399555>,  <35.368931, 31.223297, 27.378336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140480, 31.293728, 27.399555>,  <34.759731, 31.411112, 27.434919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140480, 31.293728, 27.399555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156886, -0.714338, 0.681988,
		-0.263292, -0.635296, -0.726000,
		0.951874, -0.293461, -0.088410,
		35.426041, 31.205688, 27.373032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683548, 30.723225, 27.395012>,  <34.759731, 31.411112, 27.434919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683548, 30.723225, 27.395012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065350, 30.779179, 27.500351>,  <35.294430, 30.812750, 27.563555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065350, 30.779179, 27.500351>,  <34.683548, 30.723225, 27.395012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065350, 30.779179, 27.500351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070884, -0.751390, 0.656040,
		0.289646, -0.644861, -0.707290,
		0.954505, 0.139883, 0.263347,
		35.351700, 30.821144, 27.579355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977104, 30.075678, 27.317013>,  <34.683548, 30.723225, 27.395012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977104, 30.075678, 27.317013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211075, 30.280251, 27.568821>,  <35.351460, 30.402994, 27.719906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211075, 30.280251, 27.568821>,  <34.977104, 30.075678, 27.317013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211075, 30.280251, 27.568821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181043, -0.674239, 0.715978,
		0.790620, -0.532768, -0.301792,
		0.584930, 0.511429, 0.629521,
		35.386555, 30.433680, 27.757677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151512, 29.574148, 27.794167>,  <34.977104, 30.075678, 27.317013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151512, 29.574148, 27.794167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254787, 29.907654, 27.989380>,  <35.316753, 30.107758, 28.106508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254787, 29.907654, 27.989380>,  <35.151512, 29.574148, 27.794167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254787, 29.907654, 27.989380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043289, -0.494667, 0.868003,
		0.965125, -0.245231, -0.091622,
		0.258184, 0.833766, 0.488032,
		35.332241, 30.157784, 28.135790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597065, 29.432241, 28.283754>,  <35.151512, 29.574148, 27.794167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597065, 29.432241, 28.283754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441902, 29.769306, 28.433125>,  <35.348804, 29.971546, 28.522747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441902, 29.769306, 28.433125>,  <35.597065, 29.432241, 28.283754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441902, 29.769306, 28.433125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198531, -0.472028, 0.858938,
		0.900063, 0.259052, 0.350399,
		-0.387908, 0.842663, 0.373425,
		35.325531, 30.022104, 28.545153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819168, 29.455788, 28.910046>,  <35.597065, 29.432241, 28.283754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819168, 29.455788, 28.910046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503345, 29.701252, 28.911613>,  <35.313850, 29.848530, 28.912554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503345, 29.701252, 28.911613>,  <35.819168, 29.455788, 28.910046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503345, 29.701252, 28.911613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319522, -0.416545, 0.851115,
		0.523927, 0.670755, 0.524965,
		-0.789561, 0.613660, 0.003918,
		35.266476, 29.885349, 28.912788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841183, 29.930174, 29.551231>,  <35.819168, 29.455788, 28.910046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841183, 29.930174, 29.551231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453278, 29.926842, 29.453671>,  <35.220535, 29.924843, 29.395134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453278, 29.926842, 29.453671>,  <35.841183, 29.930174, 29.551231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453278, 29.926842, 29.453671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218576, -0.414870, 0.883237,
		-0.108547, 0.909843, 0.400504,
		-0.969764, -0.008333, -0.243903,
		35.162350, 29.924341, 29.380499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465572, 30.274137, 30.192734>,  <35.841183, 29.930174, 29.551231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465572, 30.274137, 30.192734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173008, 30.124580, 29.964615>,  <34.997467, 30.034845, 29.827744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173008, 30.124580, 29.964615>,  <35.465572, 30.274137, 30.192734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173008, 30.124580, 29.964615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495077, -0.283985, 0.821128,
		-0.468971, 0.882924, 0.022604,
		-0.731413, -0.373894, -0.570296,
		34.953583, 30.012413, 29.793526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898930, 30.478214, 30.468046>,  <35.465572, 30.274137, 30.192734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898930, 30.478214, 30.468046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778904, 30.159088, 30.258873>,  <34.706890, 29.967613, 30.133369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778904, 30.159088, 30.258873>,  <34.898930, 30.478214, 30.468046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778904, 30.159088, 30.258873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464538, -0.356589, 0.810585,
		-0.833168, 0.486146, -0.263617,
		-0.300060, -0.797813, -0.522932,
		34.688885, 29.919744, 30.101994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208302, 30.437059, 30.617882>,  <34.898930, 30.478214, 30.468046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208302, 30.437059, 30.617882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339848, 30.085754, 30.479031>,  <34.418777, 29.874971, 30.395720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339848, 30.085754, 30.479031>,  <34.208302, 30.437059, 30.617882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339848, 30.085754, 30.479031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528626, -0.475792, 0.702977,
		-0.782561, -0.047685, -0.620745,
		0.328867, -0.878264, -0.347129,
		34.438507, 29.822275, 30.374891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660152, 29.971807, 30.806412>,  <34.208302, 30.437059, 30.617882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660152, 29.971807, 30.806412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993271, 29.757370, 30.751205>,  <34.193142, 29.628708, 30.718082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993271, 29.757370, 30.751205>,  <33.660152, 29.971807, 30.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993271, 29.757370, 30.751205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276910, -0.619310, 0.734695,
		-0.479342, -0.573634, -0.664210,
		0.832798, -0.536096, -0.138016,
		34.243111, 29.596540, 30.709801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092968, 29.751101, 30.344788>,  <33.660152, 29.971807, 30.806412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092968, 29.751101, 30.344788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694027, 29.730503, 30.324226>,  <32.454662, 29.718145, 30.311890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694027, 29.730503, 30.324226>,  <33.092968, 29.751101, 30.344788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694027, 29.730503, 30.324226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015985, 0.534143, -0.845243,
		0.070978, -0.843825, -0.531905,
		-0.997350, -0.051491, -0.051401,
		32.394821, 29.715055, 30.308805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845329, 29.432272, 29.636894>,  <33.092968, 29.751101, 30.344788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845329, 29.432272, 29.636894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560406, 29.667049, 29.790836>,  <32.389450, 29.807917, 29.883202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560406, 29.667049, 29.790836>,  <32.845329, 29.432272, 29.636894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560406, 29.667049, 29.790836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100998, 0.628343, -0.771352,
		-0.694562, -0.510571, -0.506854,
		-0.712309, 0.586943, 0.384856,
		32.346714, 29.843132, 29.906294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478275, 29.624573, 29.111164>,  <32.845329, 29.432272, 29.636894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478275, 29.624573, 29.111164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353840, 29.888302, 29.384956>,  <32.279179, 30.046539, 29.549232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353840, 29.888302, 29.384956>,  <32.478275, 29.624573, 29.111164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353840, 29.888302, 29.384956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100053, 0.738937, -0.666304,
		-0.945099, -0.138796, -0.295843,
		-0.311089, 0.659324, 0.684482,
		32.260513, 30.086100, 29.590302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984272, 30.152658, 28.738621>,  <32.478275, 29.624573, 29.111164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984272, 30.152658, 28.738621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131241, 30.339199, 29.060493>,  <32.219421, 30.451124, 29.253618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131241, 30.339199, 29.060493>,  <31.984272, 30.152658, 28.738621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131241, 30.339199, 29.060493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075209, 0.847469, -0.525490,
		-0.927009, 0.253596, 0.276303,
		0.367421, 0.466354, 0.804684,
		32.241467, 30.479105, 29.301899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667728, 30.740416, 28.668489>,  <31.984272, 30.152658, 28.738621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667728, 30.740416, 28.668489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952677, 30.839767, 28.931042>,  <32.123646, 30.899380, 29.088573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952677, 30.839767, 28.931042>,  <31.667728, 30.740416, 28.668489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952677, 30.839767, 28.931042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174454, 0.843248, -0.508428,
		-0.679775, 0.476697, 0.557374,
		0.712371, 0.248381, 0.656380,
		32.166389, 30.914282, 29.127956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
