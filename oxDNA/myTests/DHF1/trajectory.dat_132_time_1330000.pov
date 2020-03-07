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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.150324, 2.901265, 2.294768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.082651, 2.527470, 2.169479>,  <3.042048, 2.303192, 2.094306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.082651, 2.527470, 2.169479>,  <3.150324, 2.901265, 2.294768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.082651, 2.527470, 2.169479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809698, -0.312979, 0.496420,
		-0.561931, -0.169630, 0.809604,
		-0.169181, -0.934489, -0.313222,
		3.031897, 2.247123, 2.075513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.315990, 2.476935, 2.881018>,  <3.150324, 2.901265, 2.294768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.315990, 2.476935, 2.881018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.336668, 2.276226, 2.535637>,  <3.349075, 2.155801, 2.328408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.336668, 2.276226, 2.535637>,  <3.315990, 2.476935, 2.881018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.336668, 2.276226, 2.535637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861303, -0.415206, 0.292851,
		-0.505456, -0.758834, 0.410714,
		0.051694, -0.501772, -0.863454,
		3.352176, 2.125695, 2.276601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.709999, 1.911257, 3.168717>,  <3.315990, 2.476935, 2.881018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.709999, 1.911257, 3.168717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.685310, 1.900719, 2.769619>,  <3.670497, 1.894396, 2.530160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.685310, 1.900719, 2.769619>,  <3.709999, 1.911257, 3.168717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.685310, 1.900719, 2.769619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894273, -0.445396, -0.043559,
		-0.443245, -0.894946, 0.051051,
		-0.061721, -0.026346, -0.997746,
		3.666794, 1.892815, 2.470295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.942832, 1.138704, 2.855123>,  <3.709999, 1.911257, 3.168717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.942832, 1.138704, 2.855123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.009527, 1.471893, 2.644085>,  <4.049544, 1.671807, 2.517462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.009527, 1.471893, 2.644085>,  <3.942832, 1.138704, 2.855123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.009527, 1.471893, 2.644085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974222, -0.221640, -0.042041,
		-0.151954, -0.506984, -0.848456,
		0.166737, 0.832973, -0.527594,
		4.059548, 1.721785, 2.485807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.213904, 1.053360, 2.154441>,  <3.942832, 1.138704, 2.855123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.213904, 1.053360, 2.154441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.360741, 1.381618, 2.329613>,  <4.448843, 1.578574, 2.434716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.360741, 1.381618, 2.329613>,  <4.213904, 1.053360, 2.154441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.360741, 1.381618, 2.329613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928981, -0.347383, -0.127743,
		0.047297, 0.453721, -0.889888,
		0.367092, 0.820647, 0.437928,
		4.470868, 1.627813, 2.460991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.609625, 1.495392, 1.686220>,  <4.213904, 1.053360, 2.154441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.609625, 1.495392, 1.686220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.756102, 1.557289, 2.053253>,  <4.843987, 1.594428, 2.273473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.756102, 1.557289, 2.053253>,  <4.609625, 1.495392, 1.686220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.756102, 1.557289, 2.053253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922100, -0.192848, -0.335472,
		0.125042, 0.968950, -0.213309,
		0.366191, 0.154744, 0.917583,
		4.865959, 1.603712, 2.328528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.281852, 1.663261, 1.506369>,  <4.609625, 1.495392, 1.686220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.281852, 1.663261, 1.506369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.289644, 1.575043, 1.896442>,  <5.294320, 1.522112, 2.130486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.289644, 1.575043, 1.896442>,  <5.281852, 1.663261, 1.506369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.289644, 1.575043, 1.896442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973890, -0.216467, -0.068411,
		0.226183, 0.951053, 0.210569,
		0.019482, -0.220544, 0.975182,
		5.295489, 1.508879, 2.188997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.862780, 2.097229, 1.832910>,  <5.281852, 1.663261, 1.506369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.862780, 2.097229, 1.832910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.785002, 1.768261, 2.046757>,  <5.738335, 1.570880, 2.175065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.785002, 1.768261, 2.046757>,  <5.862780, 2.097229, 1.832910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.785002, 1.768261, 2.046757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964762, -0.258841, -0.047293,
		0.177275, 0.506583, 0.843770,
		-0.194444, -0.822420, 0.534618,
		5.726668, 1.521535, 2.207142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.438115, 0.812067, 2.314499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.194026, 0.525169, 2.449074>,  <2.047573, 0.353031, 2.529819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.194026, 0.525169, 2.449074>,  <2.438115, 0.812067, 2.314499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.194026, 0.525169, 2.449074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791979, 0.541581, -0.281885,
		0.019972, -0.438464, -0.898527,
		-0.610221, -0.717245, 0.336438,
		2.010960, 0.309996, 2.550005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.871172, 0.587273, 1.830247>,  <2.438115, 0.812067, 2.314499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.871172, 0.587273, 1.830247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.756123, 0.547127, 2.211235>,  <1.687094, 0.523039, 2.439828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.756123, 0.547127, 2.211235>,  <1.871172, 0.587273, 1.830247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.756123, 0.547127, 2.211235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821823, 0.536549, -0.191631,
		-0.491815, -0.837879, -0.236805,
		-0.287621, -0.100365, 0.952471,
		1.669837, 0.517017, 2.496976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.193566, 0.284607, 2.017012>,  <1.871172, 0.587273, 1.830247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.193566, 0.284607, 2.017012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.252842, 0.542938, 2.316597>,  <1.288408, 0.697937, 2.496348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.252842, 0.542938, 2.316597>,  <1.193566, 0.284607, 2.017012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.252842, 0.542938, 2.316597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860287, 0.457728, -0.224481,
		-0.487797, -0.611057, 0.623428,
		0.148190, 0.645828, 0.748963,
		1.297300, 0.736687, 2.541286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.587081, 0.331297, 2.328951>,  <1.193566, 0.284607, 2.017012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.587081, 0.331297, 2.328951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.778705, 0.671959, 2.413979>,  <0.893679, 0.876356, 2.464995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.778705, 0.671959, 2.413979>,  <0.587081, 0.331297, 2.328951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.778705, 0.671959, 2.413979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859843, 0.504009, -0.081515,
		-0.176559, -0.143725, 0.973740,
		0.479058, 0.851656, 0.212569,
		0.922422, 0.927456, 2.477749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.426144, 0.587404, 3.006291>,  <0.587081, 0.331297, 2.328951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.426144, 0.587404, 3.006291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.542663, 0.905487, 2.793579>,  <0.612575, 1.096337, 2.665952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.542663, 0.905487, 2.793579>,  <0.426144, 0.587404, 3.006291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.542663, 0.905487, 2.793579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822365, 0.492155, 0.285481,
		0.488739, 0.354168, 0.797307,
		0.291290, 0.795203, -0.531791,
		0.630053, 1.144049, 2.634045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.441608, 1.126740, 3.393299>,  <0.426144, 0.587404, 3.006291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.441608, 1.126740, 3.393299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.400072, 1.268463, 3.021561>,  <0.375150, 1.353497, 2.798518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.400072, 1.268463, 3.021561>,  <0.441608, 1.126740, 3.393299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.400072, 1.268463, 3.021561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828422, 0.486271, 0.277952,
		0.550394, 0.798754, 0.243021,
		-0.103841, 0.354307, -0.929346,
		0.368919, 1.374755, 2.742757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.291593, 1.782057, 3.539938>,  <0.441608, 1.126740, 3.393299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.291593, 1.782057, 3.539938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.153450, 1.742126, 3.166679>,  <0.070564, 1.718168, 2.942724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.153450, 1.742126, 3.166679>,  <0.291593, 1.782057, 3.539938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.153450, 1.742126, 3.166679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813745, 0.527168, 0.244771,
		0.467491, 0.843877, -0.263295,
		-0.345358, -0.099827, -0.933147,
		0.049843, 1.712178, 2.886735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.042098, 2.469751, 3.142216>,  <0.291593, 1.782057, 3.539938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.042098, 2.469751, 3.142216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.155361, 2.162560, 2.978989>,  <-0.273836, 1.978245, 2.881052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.155361, 2.162560, 2.978989>,  <0.042098, 2.469751, 3.142216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.155361, 2.162560, 2.978989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869503, 0.444816, 0.214715,
		0.016619, 0.460811, -0.887343,
		-0.493647, -0.767979, -0.408069,
		-0.303455, 1.932166, 2.856568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
