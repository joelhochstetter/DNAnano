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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<49.576660, 39.958969, 44.658947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.719101, 40.190720, 44.952209>,  <49.804565, 40.329769, 45.128166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.719101, 40.190720, 44.952209>,  <49.576660, 39.958969, 44.658947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.719101, 40.190720, 44.952209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811513, -0.197249, 0.550037,
		0.463292, -0.790833, 0.399930,
		0.356101, 0.579376, 0.733155,
		49.825932, 40.364532, 45.172157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.653378, 39.576126, 45.321823>,  <49.576660, 39.958969, 44.658947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.653378, 39.576126, 45.321823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.616684, 39.954536, 45.446163>,  <49.594669, 40.181583, 45.520767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.616684, 39.954536, 45.446163>,  <49.653378, 39.576126, 45.321823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.616684, 39.954536, 45.446163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738504, -0.274035, 0.616049,
		0.667980, -0.173050, 0.723780,
		-0.091733, 0.946023, 0.310848,
		49.589165, 40.238342, 45.539417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.445827, 39.562546, 46.076172>,  <49.653378, 39.576126, 45.321823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.445827, 39.562546, 46.076172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.353165, 39.943596, 45.997345>,  <49.297569, 40.172226, 45.950050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.353165, 39.943596, 45.997345>,  <49.445827, 39.562546, 46.076172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.353165, 39.943596, 45.997345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867678, -0.110742, 0.484635,
		0.439854, 0.283258, 0.852228,
		-0.231654, 0.952629, -0.197066,
		49.283669, 40.229385, 45.938225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.253643, 39.879303, 46.718349>,  <49.445827, 39.562546, 46.076172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.253643, 39.879303, 46.718349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.096664, 40.116470, 46.437088>,  <49.002476, 40.258770, 46.268330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.096664, 40.116470, 46.437088>,  <49.253643, 39.879303, 46.718349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.096664, 40.116470, 46.437088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866718, 0.017494, 0.498491,
		0.307868, 0.805069, 0.507031,
		-0.392450, 0.592923, -0.703154,
		48.978928, 40.294346, 46.226143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.944595, 40.470394, 47.035213>,  <49.253643, 39.879303, 46.718349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.944595, 40.470394, 47.035213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.753998, 40.439354, 46.684914>,  <48.639641, 40.420731, 46.474735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.753998, 40.439354, 46.684914>,  <48.944595, 40.470394, 47.035213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.753998, 40.439354, 46.684914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830992, -0.285494, 0.477436,
		-0.287069, 0.955234, 0.071552,
		-0.476491, -0.077598, -0.875748,
		48.611050, 40.416073, 46.422188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.447945, 40.959148, 47.045071>,  <48.944595, 40.470394, 47.035213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.447945, 40.959148, 47.045071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.343300, 40.677177, 46.781364>,  <48.280514, 40.507996, 46.623138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.343300, 40.677177, 46.781364>,  <48.447945, 40.959148, 47.045071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.343300, 40.677177, 46.781364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885864, -0.095789, 0.453950,
		-0.383153, 0.702779, -0.599413,
		-0.261609, -0.704930, -0.659268,
		48.264816, 40.465698, 46.583584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.715931, 41.119270, 46.936787>,  <48.447945, 40.959148, 47.045071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.715931, 41.119270, 46.936787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774345, 40.761986, 46.766685>,  <47.809395, 40.547615, 46.664623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774345, 40.761986, 46.766685>,  <47.715931, 41.119270, 46.936787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.774345, 40.761986, 46.766685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940988, -0.258083, 0.218942,
		-0.305313, 0.368187, -0.878193,
		0.146036, -0.893214, -0.425255,
		47.818157, 40.494022, 46.639111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.153938, 41.039742, 46.480907>,  <47.715931, 41.119270, 46.936787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.153938, 41.039742, 46.480907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.304306, 40.690544, 46.605206>,  <47.394527, 40.481026, 46.679783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.304306, 40.690544, 46.605206>,  <47.153938, 41.039742, 46.480907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.304306, 40.690544, 46.605206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923997, -0.327769, 0.196966,
		-0.070099, -0.361169, -0.929862,
		0.375918, -0.872997, 0.310744,
		47.417080, 40.428646, 46.698429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582218, 40.726677, 46.451107>,  <47.153938, 41.039742, 46.480907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582218, 40.726677, 46.451107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818535, 40.462311, 46.636215>,  <46.960327, 40.303692, 46.747280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818535, 40.462311, 46.636215>,  <46.582218, 40.726677, 46.451107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818535, 40.462311, 46.636215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801566, -0.415438, 0.430003,
		-0.091943, -0.624985, -0.775204,
		0.590795, -0.660913, 0.462770,
		46.995773, 40.264038, 46.775047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311401, 40.001209, 46.343323>,  <46.582218, 40.726677, 46.451107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.311401, 40.001209, 46.343323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552689, 39.964691, 46.660255>,  <46.697460, 39.942780, 46.850414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552689, 39.964691, 46.660255>,  <46.311401, 40.001209, 46.343323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552689, 39.964691, 46.660255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696735, -0.543825, 0.467777,
		0.388186, -0.834219, -0.391651,
		0.603218, -0.091292, 0.792334,
		46.733654, 39.937302, 46.897957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385029, 39.288876, 46.523857>,  <46.311401, 40.001209, 46.343323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385029, 39.288876, 46.523857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503639, 39.450600, 46.869946>,  <46.574806, 39.547634, 47.077599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503639, 39.450600, 46.869946>,  <46.385029, 39.288876, 46.523857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503639, 39.450600, 46.869946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606709, -0.619913, 0.497608,
		0.737550, -0.672488, 0.061482,
		0.296522, 0.404312, 0.865221,
		46.592594, 39.571892, 47.129513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441471, 38.718719, 46.946365>,  <46.385029, 39.288876, 46.523857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441471, 38.718719, 46.946365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417572, 39.019249, 47.209255>,  <46.403233, 39.199566, 47.366989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417572, 39.019249, 47.209255>,  <46.441471, 38.718719, 46.946365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417572, 39.019249, 47.209255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606758, -0.550137, 0.573754,
		0.792638, -0.364496, 0.488741,
		-0.059743, 0.751327, 0.657220,
		46.399651, 39.244648, 47.406422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463894, 38.432457, 47.663105>,  <46.441471, 38.718719, 46.946365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463894, 38.432457, 47.663105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292953, 38.792183, 47.700222>,  <46.190392, 39.008018, 47.722492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292953, 38.792183, 47.700222>,  <46.463894, 38.432457, 47.663105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292953, 38.792183, 47.700222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676575, -0.386199, 0.626974,
		0.599683, 0.205153, 0.773493,
		-0.427348, 0.899312, 0.092796,
		46.164749, 39.061977, 47.728062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407650, 38.507488, 48.326775>,  <46.463894, 38.432457, 47.663105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407650, 38.507488, 48.326775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152786, 38.788536, 48.200062>,  <45.999866, 38.957165, 48.124035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152786, 38.788536, 48.200062>,  <46.407650, 38.507488, 48.326775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152786, 38.788536, 48.200062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617172, -0.218937, 0.755754,
		0.461654, 0.677045, 0.573136,
		-0.637161, 0.702621, -0.316780,
		45.961639, 38.999321, 48.105026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361534, 39.055088, 48.893436>,  <46.407650, 38.507488, 48.326775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361534, 39.055088, 48.893436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019089, 39.065392, 48.686977>,  <45.813622, 39.071575, 48.563103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019089, 39.065392, 48.686977>,  <46.361534, 39.055088, 48.893436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019089, 39.065392, 48.686977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516401, -0.003799, 0.856339,
		0.020097, 0.999661, 0.016553,
		-0.856111, 0.025758, -0.516149,
		45.762257, 39.073120, 48.532131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864063, 39.418755, 49.275337>,  <46.361534, 39.055088, 48.893436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864063, 39.418755, 49.275337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609276, 39.229530, 49.031868>,  <45.456402, 39.115993, 48.885788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609276, 39.229530, 49.031868>,  <45.864063, 39.418755, 49.275337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609276, 39.229530, 49.031868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668812, -0.053525, 0.741503,
		-0.383358, 0.879400, -0.282298,
		-0.636967, -0.473065, -0.608672,
		45.418186, 39.087612, 48.849266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255356, 39.725502, 49.392937>,  <45.864063, 39.418755, 49.275337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255356, 39.725502, 49.392937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114380, 39.413963, 49.185406>,  <45.029793, 39.227039, 49.060886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114380, 39.413963, 49.185406>,  <45.255356, 39.725502, 49.392937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114380, 39.413963, 49.185406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796825, -0.040988, 0.602819,
		-0.490771, 0.625870, -0.606161,
		-0.352441, -0.778849, -0.518824,
		45.008648, 39.180309, 49.029758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437084, 39.740417, 49.197269>,  <45.255356, 39.725502, 49.392937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437084, 39.740417, 49.197269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579300, 39.367340, 49.221519>,  <44.664631, 39.143494, 49.236069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579300, 39.367340, 49.221519>,  <44.437084, 39.740417, 49.197269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579300, 39.367340, 49.221519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757497, -0.249545, 0.603262,
		-0.547528, -0.260410, -0.795235,
		0.355542, -0.932692, 0.060627,
		44.685963, 39.087532, 49.239708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847378, 39.295902, 49.034092>,  <44.437084, 39.740417, 49.197269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847378, 39.295902, 49.034092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124557, 39.115425, 49.259033>,  <44.290867, 39.007141, 49.393997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124557, 39.115425, 49.259033>,  <43.847378, 39.295902, 49.034092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124557, 39.115425, 49.259033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696985, -0.219650, 0.682617,
		-0.184464, -0.864978, -0.466676,
		0.692954, -0.451184, 0.562359,
		44.332443, 38.980068, 49.427742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455654, 38.837818, 49.482544>,  <43.847378, 39.295902, 49.034092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455654, 38.837818, 49.482544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811249, 38.783295, 49.657410>,  <44.024605, 38.750580, 49.762329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811249, 38.783295, 49.657410>,  <43.455654, 38.837818, 49.482544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811249, 38.783295, 49.657410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455555, -0.360269, 0.814049,
		0.046540, -0.922837, -0.382370,
		0.888990, -0.136304, 0.437169,
		44.077946, 38.742401, 49.788559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494514, 38.119877, 49.757000>,  <43.455654, 38.837818, 49.482544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494514, 38.119877, 49.757000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772797, 38.326500, 49.956661>,  <43.939766, 38.450474, 50.076458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772797, 38.326500, 49.956661>,  <43.494514, 38.119877, 49.757000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772797, 38.326500, 49.956661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401901, -0.296035, 0.866510,
		0.595373, -0.803448, 0.001654,
		0.695705, 0.516561, 0.499158,
		43.981510, 38.481468, 50.106407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806911, 37.655689, 50.238602>,  <43.494514, 38.119877, 49.757000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806911, 37.655689, 50.238602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865318, 38.026054, 50.377956>,  <43.900360, 38.248272, 50.461571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865318, 38.026054, 50.377956>,  <43.806911, 37.655689, 50.238602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865318, 38.026054, 50.377956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343388, -0.282830, 0.895596,
		0.927774, -0.250401, 0.276649,
		0.146013, 0.925908, 0.348387,
		43.909122, 38.303825, 50.482471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978439, 37.535828, 50.919788>,  <43.806911, 37.655689, 50.238602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978439, 37.535828, 50.919788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878281, 37.923065, 50.915924>,  <43.818184, 38.155407, 50.913605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878281, 37.923065, 50.915924>,  <43.978439, 37.535828, 50.919788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878281, 37.923065, 50.915924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359134, -0.083617, 0.929533,
		0.899068, 0.236223, 0.368613,
		-0.250399, 0.968095, -0.009658,
		43.803162, 38.213493, 50.913025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202286, 37.664196, 51.562492>,  <43.978439, 37.535828, 50.919788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202286, 37.664196, 51.562492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966103, 37.969429, 51.457371>,  <43.824394, 38.152569, 51.394299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966103, 37.969429, 51.457371>,  <44.202286, 37.664196, 51.562492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966103, 37.969429, 51.457371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464575, -0.055093, 0.883819,
		0.659945, 0.643952, 0.387038,
		-0.590460, 0.763080, -0.262806,
		43.788963, 38.198353, 51.378529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162182, 38.035286, 52.137138>,  <44.202286, 37.664196, 51.562492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162182, 38.035286, 52.137138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840309, 38.129585, 51.919182>,  <43.647186, 38.186165, 51.788406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840309, 38.129585, 51.919182>,  <44.162182, 38.035286, 52.137138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840309, 38.129585, 51.919182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557769, 0.014268, 0.829874,
		0.203418, 0.971709, 0.120013,
		-0.804683, 0.235750, -0.544891,
		43.598904, 38.200310, 51.755714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843887, 38.718983, 52.300716>,  <44.162182, 38.035286, 52.137138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843887, 38.718983, 52.300716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544792, 38.532082, 52.112011>,  <43.365334, 38.419941, 51.998787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544792, 38.532082, 52.112011>,  <43.843887, 38.718983, 52.300716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544792, 38.532082, 52.112011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644439, 0.339538, 0.685136,
		-0.159949, 0.816327, -0.555002,
		-0.747740, -0.467252, -0.471764,
		43.320469, 38.391907, 51.970482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310558, 39.198833, 52.286667>,  <43.843887, 38.718983, 52.300716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310558, 39.198833, 52.286667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130733, 38.844414, 52.241386>,  <43.022839, 38.631763, 52.214218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130733, 38.844414, 52.241386>,  <43.310558, 39.198833, 52.286667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130733, 38.844414, 52.241386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654404, 0.240439, 0.716899,
		-0.607990, 0.396367, -0.687925,
		-0.449559, -0.886048, -0.113199,
		42.995865, 38.578598, 52.207428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551758, 39.350365, 52.311207>,  <43.310558, 39.198833, 52.286667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551758, 39.350365, 52.311207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581779, 38.958000, 52.382965>,  <42.599792, 38.722584, 52.426022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581779, 38.958000, 52.382965>,  <42.551758, 39.350365, 52.311207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581779, 38.958000, 52.382965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699069, 0.076536, 0.710947,
		-0.711105, -0.178773, -0.679978,
		0.075056, -0.980909, 0.179400,
		42.604298, 38.663727, 52.436787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895123, 39.138882, 52.459488>,  <42.551758, 39.350365, 52.311207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895123, 39.138882, 52.459488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137947, 38.862312, 52.616161>,  <42.283642, 38.696373, 52.710167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137947, 38.862312, 52.616161>,  <41.895123, 39.138882, 52.459488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137947, 38.862312, 52.616161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652155, -0.151836, 0.742724,
		-0.454063, -0.706317, -0.543087,
		0.607059, -0.691421, 0.391685,
		42.320065, 38.654884, 52.733665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517803, 38.542061, 52.640846>,  <41.895123, 39.138882, 52.459488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517803, 38.542061, 52.640846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829735, 38.499924, 52.887672>,  <42.016895, 38.474644, 53.035767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829735, 38.499924, 52.887672>,  <41.517803, 38.542061, 52.640846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829735, 38.499924, 52.887672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621855, -0.243518, 0.744309,
		0.071861, -0.964159, -0.255408,
		0.779829, -0.105340, 0.617066,
		42.063683, 38.468323, 53.072792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280800, 38.012482, 53.094547>,  <41.517803, 38.542061, 52.640846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280800, 38.012482, 53.094547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594948, 38.159943, 53.293457>,  <41.783436, 38.248417, 53.412804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594948, 38.159943, 53.293457>,  <41.280800, 38.012482, 53.094547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594948, 38.159943, 53.293457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420173, -0.272454, 0.865577,
		0.454581, -0.888744, -0.059081,
		0.785373, 0.368651, 0.497278,
		41.830559, 38.270538, 53.442642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381866, 37.534580, 53.543064>,  <41.280800, 38.012482, 53.094547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381866, 37.534580, 53.543064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568100, 37.860054, 53.682289>,  <41.679840, 38.055340, 53.765823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568100, 37.860054, 53.682289>,  <41.381866, 37.534580, 53.543064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568100, 37.860054, 53.682289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342927, -0.196693, 0.918539,
		0.815861, -0.547020, 0.187456,
		0.465588, 0.813684, 0.348061,
		41.707775, 38.104160, 53.786709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746338, 37.201035, 54.062065>,  <41.381866, 37.534580, 53.543064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746338, 37.201035, 54.062065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669060, 37.591484, 54.101761>,  <41.622692, 37.825756, 54.125576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669060, 37.591484, 54.101761>,  <41.746338, 37.201035, 54.062065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669060, 37.591484, 54.101761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401041, -0.170871, 0.899983,
		0.895455, 0.134078, 0.424480,
		-0.193199, 0.976128, 0.099236,
		41.611099, 37.884323, 54.131531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829994, 37.358761, 54.793819>,  <41.746338, 37.201035, 54.062065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829994, 37.358761, 54.793819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643135, 37.691803, 54.674797>,  <41.531021, 37.891628, 54.603386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643135, 37.691803, 54.674797>,  <41.829994, 37.358761, 54.793819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643135, 37.691803, 54.674797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430675, 0.079638, 0.898987,
		0.772200, 0.548106, 0.321381,
		-0.467146, 0.832609, -0.297552,
		41.502991, 37.941586, 54.585533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784836, 37.751549, 55.430420>,  <41.829994, 37.358761, 54.793819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784836, 37.751549, 55.430420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507736, 37.925117, 55.200005>,  <41.341476, 38.029259, 55.061756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507736, 37.925117, 55.200005>,  <41.784836, 37.751549, 55.430420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507736, 37.925117, 55.200005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499462, 0.287509, 0.817237,
		0.520229, 0.853846, 0.017555,
		-0.692748, 0.433918, -0.576035,
		41.299911, 38.055294, 55.027195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596653, 38.272198, 55.835743>,  <41.784836, 37.751549, 55.430420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596653, 38.272198, 55.835743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278984, 38.253601, 55.593376>,  <41.088383, 38.242443, 55.447956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278984, 38.253601, 55.593376>,  <41.596653, 38.272198, 55.835743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278984, 38.253601, 55.593376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594760, 0.264115, 0.759278,
		0.124732, 0.963370, -0.237403,
		-0.794168, -0.046492, -0.605918,
		41.040733, 38.239655, 55.411602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256699, 38.863632, 56.006329>,  <41.596653, 38.272198, 55.835743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256699, 38.863632, 56.006329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982449, 38.618973, 55.848442>,  <40.817898, 38.472176, 55.753708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982449, 38.618973, 55.848442>,  <41.256699, 38.863632, 56.006329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982449, 38.618973, 55.848442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679873, 0.344236, 0.647514,
		-0.260174, 0.712312, -0.651860,
		-0.685625, -0.611648, -0.394720,
		40.776760, 38.435478, 55.730026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588909, 39.243073, 55.890057>,  <41.256699, 38.863632, 56.006329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588909, 39.243073, 55.890057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468498, 38.862717, 55.918869>,  <40.396252, 38.634502, 55.936157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468498, 38.862717, 55.918869>,  <40.588909, 39.243073, 55.890057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468498, 38.862717, 55.918869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680134, 0.267031, 0.682725,
		-0.668430, 0.156532, -0.727117,
		-0.301031, -0.950890, 0.072029,
		40.378189, 38.577450, 55.940479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893753, 39.327793, 55.895271>,  <40.588909, 39.243073, 55.890057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893753, 39.327793, 55.895271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952095, 38.959267, 56.039440>,  <39.987099, 38.738152, 56.125942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952095, 38.959267, 56.039440>,  <39.893753, 39.327793, 55.895271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952095, 38.959267, 56.039440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637696, 0.190978, 0.746238,
		-0.756353, -0.338684, -0.559663,
		0.145856, -0.921314, 0.360424,
		39.995853, 38.682873, 56.147568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248524, 39.156796, 56.086945>,  <39.893753, 39.327793, 55.895271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248524, 39.156796, 56.086945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491669, 38.919418, 56.297974>,  <39.637554, 38.776993, 56.424591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491669, 38.919418, 56.297974>,  <39.248524, 39.156796, 56.086945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491669, 38.919418, 56.297974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466376, 0.270906, 0.842083,
		-0.642647, -0.757918, -0.112092,
		0.607863, -0.593439, 0.527572,
		39.674026, 38.741386, 56.456245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787167, 38.882843, 56.571861>,  <39.248524, 39.156796, 56.086945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787167, 38.882843, 56.571861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159271, 38.832924, 56.709866>,  <39.382534, 38.802975, 56.792667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159271, 38.832924, 56.709866>,  <38.787167, 38.882843, 56.571861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159271, 38.832924, 56.709866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298612, 0.288820, 0.909623,
		-0.213163, -0.949215, 0.231414,
		0.930265, -0.124795, 0.345013,
		39.438351, 38.795486, 56.813370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634735, 38.401279, 57.072685>,  <38.787167, 38.882843, 56.571861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634735, 38.401279, 57.072685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961452, 38.613930, 57.162331>,  <39.157482, 38.741520, 57.216118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961452, 38.613930, 57.162331>,  <38.634735, 38.401279, 57.072685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961452, 38.613930, 57.162331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407883, 0.257377, 0.876007,
		0.408025, -0.806927, 0.427064,
		0.816790, 0.531626, 0.224115,
		39.206490, 38.773418, 57.229565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952385, 37.969967, 57.525269>,  <38.634735, 38.401279, 57.072685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952385, 37.969967, 57.525269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985073, 38.367310, 57.557686>,  <39.004684, 38.605717, 57.577137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985073, 38.367310, 57.557686>,  <38.952385, 37.969967, 57.525269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985073, 38.367310, 57.557686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427019, -0.038577, 0.903420,
		0.900543, -0.108431, 0.421029,
		0.081716, 0.993355, 0.081042,
		39.009586, 38.665318, 57.581997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123283, 38.097900, 58.205082>,  <38.952385, 37.969967, 57.525269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123283, 38.097900, 58.205082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986961, 38.454117, 58.084564>,  <38.905167, 38.667847, 58.012253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986961, 38.454117, 58.084564>,  <39.123283, 38.097900, 58.205082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986961, 38.454117, 58.084564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443510, 0.130281, 0.886750,
		0.828944, 0.435838, 0.350566,
		-0.340808, 0.890546, -0.301295,
		38.884720, 38.721279, 57.994175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462574, 38.673550, 58.566330>,  <39.123283, 38.097900, 58.205082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462574, 38.673550, 58.566330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074604, 38.728096, 58.485687>,  <38.841820, 38.760826, 58.437302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074604, 38.728096, 58.485687>,  <39.462574, 38.673550, 58.566330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074604, 38.728096, 58.485687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210894, -0.057355, 0.975825,
		0.121508, 0.988997, 0.084390,
		-0.969927, 0.136368, -0.201605,
		38.783627, 38.769005, 58.425205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256470, 39.279667, 58.958637>,  <39.462574, 38.673550, 58.566330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256470, 39.279667, 58.958637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988312, 38.987213, 58.908028>,  <38.827415, 38.811741, 58.877663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988312, 38.987213, 58.908028>,  <39.256470, 39.279667, 58.958637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988312, 38.987213, 58.908028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086657, -0.092208, 0.991962,
		-0.736924, 0.675974, -0.001542,
		-0.670398, -0.731134, -0.126528,
		38.787193, 38.767872, 58.870068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552589, 39.357349, 59.341953>,  <39.256470, 39.279667, 58.958637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552589, 39.357349, 59.341953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683395, 38.983002, 59.289486>,  <38.761879, 38.758392, 59.258007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683395, 38.983002, 59.289486>,  <38.552589, 39.357349, 59.341953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683395, 38.983002, 59.289486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077907, -0.165025, 0.983208,
		-0.941804, -0.311301, -0.126876,
		0.327011, -0.935874, -0.131169,
		38.781498, 38.702240, 59.250134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926346, 39.715824, 59.773438>,  <38.552589, 39.357349, 59.341953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926346, 39.715824, 59.773438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103058, 40.053474, 59.894951>,  <39.209084, 40.256065, 59.967857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103058, 40.053474, 59.894951>,  <38.926346, 39.715824, 59.773438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103058, 40.053474, 59.894951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868106, -0.316806, -0.382134,
		-0.226331, 0.432530, -0.872750,
		0.441777, 0.844128, 0.303779,
		39.235592, 40.306713, 59.986084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311977, 39.983192, 59.163666>,  <38.926346, 39.715824, 59.773438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311977, 39.983192, 59.163666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472763, 40.147079, 59.491215>,  <39.569237, 40.245411, 59.687744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472763, 40.147079, 59.491215>,  <39.311977, 39.983192, 59.163666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472763, 40.147079, 59.491215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912918, -0.110235, -0.392975,
		-0.070738, 0.905529, -0.418346,
		0.401967, 0.409714, 0.818876,
		39.593353, 40.269993, 59.736877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594528, 40.559406, 58.923225>,  <39.311977, 39.983192, 59.163666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594528, 40.559406, 58.923225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779770, 40.447838, 59.259735>,  <39.890915, 40.380898, 59.461639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779770, 40.447838, 59.259735>,  <39.594528, 40.559406, 58.923225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779770, 40.447838, 59.259735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878433, 0.018222, -0.477517,
		0.117860, 0.960141, 0.253452,
		0.463102, -0.278921, 0.841272,
		39.918701, 40.364162, 59.512115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222874, 40.990288, 59.186554>,  <39.594528, 40.559406, 58.923225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222874, 40.990288, 59.186554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232941, 40.611267, 59.313995>,  <40.238979, 40.383854, 59.390461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232941, 40.611267, 59.313995>,  <40.222874, 40.990288, 59.186554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232941, 40.611267, 59.313995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920278, -0.102520, -0.377594,
		0.390454, 0.302707, 0.869433,
		0.025166, -0.947554, 0.318604,
		40.240490, 40.327000, 59.409576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878822, 40.880089, 59.493980>,  <40.222874, 40.990288, 59.186554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878822, 40.880089, 59.493980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736832, 40.513290, 59.421188>,  <40.651638, 40.293213, 59.377514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736832, 40.513290, 59.421188>,  <40.878822, 40.880089, 59.493980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736832, 40.513290, 59.421188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871583, -0.254201, -0.419196,
		0.338140, -0.307416, 0.889470,
		-0.354972, -0.916993, -0.181983,
		40.630341, 40.238194, 59.366592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375614, 40.390259, 59.744785>,  <40.878822, 40.880089, 59.493980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375614, 40.390259, 59.744785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164192, 40.248352, 59.436302>,  <41.037338, 40.163208, 59.251213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164192, 40.248352, 59.436302>,  <41.375614, 40.390259, 59.744785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164192, 40.248352, 59.436302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834296, -0.049317, -0.549107,
		0.156774, -0.933652, 0.322051,
		-0.528557, -0.354771, -0.771210,
		41.005627, 40.141922, 59.204941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741947, 39.911037, 59.568310>,  <41.375614, 40.390259, 59.744785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741947, 39.911037, 59.568310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518127, 39.951645, 59.239288>,  <41.383835, 39.976009, 59.041874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518127, 39.951645, 59.239288>,  <41.741947, 39.911037, 59.568310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518127, 39.951645, 59.239288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816190, -0.104935, -0.568175,
		-0.143996, -0.989283, -0.024144,
		-0.559552, 0.101521, -0.822553,
		41.350262, 39.982101, 58.992523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932961, 39.345161, 59.139576>,  <41.741947, 39.911037, 59.568310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932961, 39.345161, 59.139576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784454, 39.627365, 58.898109>,  <41.695351, 39.796688, 58.753227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784454, 39.627365, 58.898109>,  <41.932961, 39.345161, 59.139576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784454, 39.627365, 58.898109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803950, -0.081037, -0.589150,
		-0.464570, -0.704053, -0.537107,
		-0.371267, 0.705508, -0.603670,
		41.673073, 39.839016, 58.717007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137875, 39.184280, 58.465225>,  <41.932961, 39.345161, 59.139576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137875, 39.184280, 58.465225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053871, 39.573433, 58.426460>,  <42.003468, 39.806927, 58.403202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053871, 39.573433, 58.426460>,  <42.137875, 39.184280, 58.465225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053871, 39.573433, 58.426460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698955, 0.080085, -0.710667,
		-0.683636, -0.216984, -0.696821,
		-0.210009, 0.972884, -0.096913,
		41.990868, 39.865299, 58.397385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087490, 39.327488, 57.775986>,  <42.137875, 39.184280, 58.465225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087490, 39.327488, 57.775986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145813, 39.699280, 57.911526>,  <42.180805, 39.922356, 57.992847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145813, 39.699280, 57.911526>,  <42.087490, 39.327488, 57.775986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145813, 39.699280, 57.911526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627518, 0.177899, -0.758006,
		-0.764829, 0.323151, -0.557324,
		0.145803, 0.929476, 0.338846,
		42.189552, 39.978123, 58.013180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125912, 39.722797, 57.168434>,  <42.087490, 39.327488, 57.775986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125912, 39.722797, 57.168434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273682, 39.973579, 57.442795>,  <42.362343, 40.124050, 57.607410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273682, 39.973579, 57.442795>,  <42.125912, 39.722797, 57.168434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273682, 39.973579, 57.442795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644090, 0.359294, -0.675319,
		-0.669833, 0.691258, -0.271084,
		0.369421, 0.626954, 0.685899,
		42.384506, 40.161667, 57.648563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159859, 40.422977, 56.830227>,  <42.125912, 39.722797, 57.168434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159859, 40.422977, 56.830227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413258, 40.422440, 57.139725>,  <42.565296, 40.422115, 57.325424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413258, 40.422440, 57.139725>,  <42.159859, 40.422977, 56.830227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413258, 40.422440, 57.139725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753185, 0.230055, -0.616269,
		-0.177175, 0.973177, 0.146752,
		0.633500, -0.001343, 0.773742,
		42.603306, 40.422035, 57.371849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561104, 40.950771, 56.689362>,  <42.159859, 40.422977, 56.830227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561104, 40.950771, 56.689362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762142, 40.712723, 56.940193>,  <42.882767, 40.569893, 57.090691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762142, 40.712723, 56.940193>,  <42.561104, 40.950771, 56.689362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762142, 40.712723, 56.940193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858599, 0.258861, -0.442491,
		0.101009, 0.760804, 0.641073,
		0.502598, -0.595120, 0.627079,
		42.912922, 40.534187, 57.128315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939556, 41.339069, 57.021458>,  <42.561104, 40.950771, 56.689362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939556, 41.339069, 57.021458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108624, 40.976837, 57.035782>,  <43.210064, 40.759499, 57.044376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108624, 40.976837, 57.035782>,  <42.939556, 41.339069, 57.021458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108624, 40.976837, 57.035782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824354, 0.367737, -0.430360,
		0.376555, 0.211420, 0.901947,
		0.422666, -0.905578, 0.035811,
		43.235424, 40.705162, 57.046524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683033, 41.467957, 57.078976>,  <42.939556, 41.339069, 57.021458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683033, 41.467957, 57.078976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669998, 41.084892, 56.964561>,  <43.662178, 40.855053, 56.895912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669998, 41.084892, 56.964561>,  <43.683033, 41.467957, 57.078976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669998, 41.084892, 56.964561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836841, 0.130334, -0.531705,
		0.546475, -0.256691, 0.797166,
		-0.032586, -0.957665, -0.286034,
		43.660221, 40.797592, 56.878750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366253, 41.227146, 57.023727>,  <43.683033, 41.467957, 57.078976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366253, 41.227146, 57.023727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153248, 40.981369, 56.790871>,  <44.025444, 40.833904, 56.651157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153248, 40.981369, 56.790871>,  <44.366253, 41.227146, 57.023727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153248, 40.981369, 56.790871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705703, 0.057449, -0.706174,
		0.467345, -0.786869, 0.403020,
		-0.532514, -0.614440, -0.582145,
		43.993492, 40.797035, 56.616226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813850, 40.656940, 56.771706>,  <44.366253, 41.227146, 57.023727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813850, 40.656940, 56.771706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517601, 40.685966, 56.504509>,  <44.339851, 40.703381, 56.344189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517601, 40.685966, 56.504509>,  <44.813850, 40.656940, 56.771706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517601, 40.685966, 56.504509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669171, -0.010269, -0.743038,
		-0.060781, -0.997311, -0.040956,
		-0.740619, 0.072569, -0.667995,
		44.295414, 40.707737, 56.304111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033253, 40.292007, 56.259289>,  <44.813850, 40.656940, 56.771706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033253, 40.292007, 56.259289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735580, 40.464630, 56.055344>,  <44.556976, 40.568203, 55.932976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735580, 40.464630, 56.055344>,  <45.033253, 40.292007, 56.259289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735580, 40.464630, 56.055344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582875, 0.046704, -0.811218,
		-0.326279, -0.900874, -0.286303,
		-0.744177, 0.431562, -0.509859,
		44.512329, 40.594097, 55.902386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923901, 39.875401, 55.609653>,  <45.033253, 40.292007, 56.259289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923901, 39.875401, 55.609653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780716, 40.243759, 55.547928>,  <44.694805, 40.464775, 55.510895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780716, 40.243759, 55.547928>,  <44.923901, 39.875401, 55.609653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780716, 40.243759, 55.547928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528013, 0.063335, -0.846871,
		-0.770110, -0.384621, -0.508918,
		-0.357957, 0.920899, -0.154310,
		44.673328, 40.520027, 55.501637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707294, 39.865932, 54.963562>,  <44.923901, 39.875401, 55.609653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707294, 39.865932, 54.963562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797729, 40.243736, 55.058880>,  <44.851990, 40.470421, 55.116070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797729, 40.243736, 55.058880>,  <44.707294, 39.865932, 54.963562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797729, 40.243736, 55.058880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619694, 0.049286, -0.783294,
		-0.751575, 0.324760, -0.574165,
		0.226085, 0.944511, 0.238294,
		44.865555, 40.527088, 55.130367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638412, 40.203449, 54.337479>,  <44.707294, 39.865932, 54.963562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638412, 40.203449, 54.337479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840103, 40.464035, 54.564232>,  <44.961117, 40.620388, 54.700283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840103, 40.464035, 54.564232>,  <44.638412, 40.203449, 54.337479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840103, 40.464035, 54.564232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544659, 0.269502, -0.794176,
		-0.670152, 0.709199, -0.218936,
		0.504226, 0.651464, 0.566879,
		44.991371, 40.659473, 54.734295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826900, 40.671192, 53.855408>,  <44.638412, 40.203449, 54.337479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826900, 40.671192, 53.855408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069946, 40.760414, 54.160313>,  <45.215775, 40.813950, 54.343258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069946, 40.760414, 54.160313>,  <44.826900, 40.671192, 53.855408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069946, 40.760414, 54.160313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716601, 0.259871, -0.647263,
		-0.342467, 0.939528, -0.001940,
		0.607618, 0.223057, 0.762264,
		45.252232, 40.827332, 54.388992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082432, 41.253017, 53.693371>,  <44.826900, 40.671192, 53.855408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082432, 41.253017, 53.693371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346298, 41.112328, 53.959042>,  <45.504616, 41.027912, 54.118443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346298, 41.112328, 53.959042>,  <45.082432, 41.253017, 53.693371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346298, 41.112328, 53.959042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751526, 0.317222, -0.578428,
		-0.007243, 0.880715, 0.473591,
		0.659663, -0.351727, 0.664178,
		45.544197, 41.006809, 54.158295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574932, 41.846382, 53.954895>,  <45.082432, 41.253017, 53.693371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574932, 41.846382, 53.954895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743378, 41.486626, 54.001823>,  <45.844444, 41.270771, 54.029980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743378, 41.486626, 54.001823>,  <45.574932, 41.846382, 53.954895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743378, 41.486626, 54.001823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785103, 0.296681, -0.543685,
		0.454177, 0.321062, 0.831049,
		0.421113, -0.899389, 0.117321,
		45.869713, 41.216808, 54.037018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259888, 42.012100, 54.150211>,  <45.574932, 41.846382, 53.954895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259888, 42.012100, 54.150211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320015, 41.640747, 54.014267>,  <46.356091, 41.417934, 53.932701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320015, 41.640747, 54.014267>,  <46.259888, 42.012100, 54.150211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320015, 41.640747, 54.014267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816735, 0.310317, -0.486464,
		0.557090, -0.204451, 0.804891,
		0.150314, -0.928387, -0.339857,
		46.365108, 41.362232, 53.912312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.077263, 41.871307, 54.109505>,  <46.259888, 42.012100, 54.150211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.077263, 41.871307, 54.109505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863503, 41.621147, 53.882072>,  <46.735245, 41.471050, 53.745613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863503, 41.621147, 53.882072>,  <47.077263, 41.871307, 54.109505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863503, 41.621147, 53.882072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753600, -0.047918, -0.655584,
		0.382759, -0.778830, 0.496911,
		-0.534399, -0.625403, -0.568585,
		46.703182, 41.433525, 53.711498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.559673, 41.382668, 53.968044>,  <47.077263, 41.871307, 54.109505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.559673, 41.382668, 53.968044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264595, 41.323509, 53.704552>,  <47.087547, 41.288013, 53.546455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264595, 41.323509, 53.704552>,  <47.559673, 41.382668, 53.968044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.264595, 41.323509, 53.704552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624990, 0.219388, -0.749171,
		0.255317, -0.964363, -0.069409,
		-0.737700, -0.147895, -0.658730,
		47.043285, 41.279140, 53.506931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.912689, 40.769844, 53.451126>,  <47.559673, 41.382668, 53.968044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.912689, 40.769844, 53.451126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.598152, 40.906662, 53.245338>,  <47.409431, 40.988754, 53.121868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.598152, 40.906662, 53.245338>,  <47.912689, 40.769844, 53.451126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.598152, 40.906662, 53.245338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589141, 0.164491, -0.791111,
		-0.185974, -0.925173, -0.330861,
		-0.786338, 0.342050, -0.514465,
		47.362251, 41.009277, 53.091000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866974, 40.432331, 52.717777>,  <47.912689, 40.769844, 53.451126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866974, 40.432331, 52.717777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684204, 40.787971, 52.706978>,  <47.574543, 41.001354, 52.700497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684204, 40.787971, 52.706978>,  <47.866974, 40.432331, 52.717777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.684204, 40.787971, 52.706978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500369, 0.231812, -0.834203,
		-0.735428, -0.394675, -0.550797,
		-0.456920, 0.889098, -0.027002,
		47.547127, 41.054699, 52.698875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536392, 40.503296, 52.081181>,  <47.866974, 40.432331, 52.717777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536392, 40.503296, 52.081181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583656, 40.870544, 52.232494>,  <47.612015, 41.090893, 52.323280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583656, 40.870544, 52.232494>,  <47.536392, 40.503296, 52.081181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583656, 40.870544, 52.232494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456996, 0.287931, -0.841576,
		-0.881586, 0.272315, -0.385554,
		0.118161, 0.918118, 0.378283,
		47.619106, 41.145981, 52.345978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.241230, 40.954292, 51.626968>,  <47.536392, 40.503296, 52.081181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.241230, 40.954292, 51.626968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487480, 41.170448, 51.856396>,  <47.635231, 41.300140, 51.994053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487480, 41.170448, 51.856396>,  <47.241230, 40.954292, 51.626968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.487480, 41.170448, 51.856396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532194, 0.251690, -0.808345,
		-0.581184, 0.802889, -0.132646,
		0.615625, 0.540390, 0.573571,
		47.672169, 41.332565, 52.028465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239578, 41.524864, 51.259090>,  <47.241230, 40.954292, 51.626968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239578, 41.524864, 51.259090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.561615, 41.585281, 51.488529>,  <47.754837, 41.621532, 51.626190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.561615, 41.585281, 51.488529>,  <47.239578, 41.524864, 51.259090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.561615, 41.585281, 51.488529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497236, 0.355371, -0.791497,
		-0.323390, 0.922441, 0.211001,
		0.805093, 0.151045, 0.573594,
		47.803143, 41.630596, 51.660606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.451813, 42.120972, 51.016361>,  <47.239578, 41.524864, 51.259090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.451813, 42.120972, 51.016361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.768692, 41.968483, 51.206978>,  <47.958820, 41.876987, 51.321346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.768692, 41.968483, 51.206978>,  <47.451813, 42.120972, 51.016361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.768692, 41.968483, 51.206978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599029, 0.336632, -0.726528,
		0.116552, 0.861015, 0.495044,
		0.792199, -0.381224, 0.476538,
		48.006351, 41.854115, 51.349937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.050293, 42.649197, 50.911503>,  <47.451813, 42.120972, 51.016361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.050293, 42.649197, 50.911503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.214455, 42.296326, 51.003883>,  <48.312950, 42.084602, 51.059311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.214455, 42.296326, 51.003883>,  <48.050293, 42.649197, 50.911503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.214455, 42.296326, 51.003883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676568, 0.124752, -0.725736,
		0.611413, 0.454099, 0.648049,
		0.410401, -0.882174, 0.230954,
		48.337574, 42.031673, 51.073170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.782635, 42.717941, 50.832573>,  <48.050293, 42.649197, 50.911503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.782635, 42.717941, 50.832573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.718712, 42.323570, 50.812965>,  <48.680359, 42.086948, 50.801201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.718712, 42.323570, 50.812965>,  <48.782635, 42.717941, 50.832573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.718712, 42.323570, 50.812965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573832, -0.052377, -0.817296,
		0.803231, -0.158733, 0.574129,
		-0.159803, -0.985931, -0.049015,
		48.670773, 42.027790, 50.798260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.432377, 42.462505, 50.761856>,  <48.782635, 42.717941, 50.832573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.432377, 42.462505, 50.761856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.176750, 42.192177, 50.614960>,  <49.023376, 42.029980, 50.526821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.176750, 42.192177, 50.614960>,  <49.432377, 42.462505, 50.761856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.176750, 42.192177, 50.614960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584285, -0.116046, -0.803209,
		0.500209, -0.727873, 0.469033,
		-0.639063, -0.675821, -0.367238,
		48.985031, 41.989429, 50.504787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.852379, 42.081955, 50.385838>,  <49.432377, 42.462505, 50.761856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.852379, 42.081955, 50.385838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.501495, 41.963203, 50.234909>,  <49.290966, 41.891953, 50.144352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.501495, 41.963203, 50.234909>,  <49.852379, 42.081955, 50.385838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.501495, 41.963203, 50.234909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453319, -0.253263, -0.854611,
		0.158156, -0.920717, 0.356745,
		-0.877205, -0.296881, -0.377323,
		49.238335, 41.874138, 50.121712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.893406, 41.512520, 49.900856>,  <49.852379, 42.081955, 50.385838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.893406, 41.512520, 49.900856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.516853, 41.601288, 49.799221>,  <49.290924, 41.654549, 49.738239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.516853, 41.601288, 49.799221>,  <49.893406, 41.512520, 49.900856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.516853, 41.601288, 49.799221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180498, -0.304970, -0.935101,
		-0.285002, -0.926146, 0.247037,
		-0.941379, 0.221916, -0.254084,
		49.234440, 41.667862, 49.722996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.584579, 40.956238, 49.616592>,  <49.893406, 41.512520, 49.900856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.584579, 40.956238, 49.616592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.394257, 41.269554, 49.456562>,  <49.280064, 41.457542, 49.360542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.394257, 41.269554, 49.456562>,  <49.584579, 40.956238, 49.616592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.394257, 41.269554, 49.456562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141124, -0.380983, -0.913748,
		-0.868154, -0.491228, 0.070733,
		-0.475807, 0.783292, -0.400076,
		49.251514, 41.504543, 49.336540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.156158, 40.749649, 49.023643>,  <49.584579, 40.956238, 49.616592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.156158, 40.749649, 49.023643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.204735, 41.144119, 48.978539>,  <49.233879, 41.380802, 48.951473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.204735, 41.144119, 48.978539>,  <49.156158, 40.749649, 49.023643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.204735, 41.144119, 48.978539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212807, -0.136831, -0.967466,
		-0.969518, 0.093490, -0.226482,
		0.121439, 0.986173, -0.112765,
		49.241165, 41.439972, 48.944710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.939102, 40.920815, 48.384403>,  <49.156158, 40.749649, 49.023643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.939102, 40.920815, 48.384403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.185509, 41.218605, 48.487385>,  <49.333351, 41.397282, 48.549171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.185509, 41.218605, 48.487385>,  <48.939102, 40.920815, 48.384403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.185509, 41.218605, 48.487385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467851, -0.082832, -0.879917,
		-0.633754, 0.662489, -0.399330,
		0.616013, 0.744478, 0.257451,
		49.370312, 41.441948, 48.564621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.941090, 41.175640, 47.772869>,  <48.939102, 40.920815, 48.384403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.941090, 41.175640, 47.772869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.233711, 41.367180, 47.966995>,  <49.409283, 41.482105, 48.083473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.233711, 41.367180, 47.966995>,  <48.941090, 41.175640, 47.772869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.233711, 41.367180, 47.966995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543578, 0.020014, -0.839120,
		-0.411525, 0.877669, -0.245651,
		0.731553, 0.478850, 0.485318,
		49.453178, 41.510834, 48.112591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.018581, 41.701302, 47.332932>,  <48.941090, 41.175640, 47.772869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.018581, 41.701302, 47.332932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.348770, 41.697701, 47.558681>,  <49.546883, 41.695541, 47.694134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.348770, 41.697701, 47.558681>,  <49.018581, 41.701302, 47.332932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.348770, 41.697701, 47.558681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562319, 0.099895, -0.820864,
		-0.048989, 0.994957, 0.087522,
		0.825468, -0.009002, 0.564377,
		49.596409, 41.695000, 47.727993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.439785, 42.279343, 47.266174>,  <49.018581, 41.701302, 47.332932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.439785, 42.279343, 47.266174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.672958, 41.975937, 47.382687>,  <49.812862, 41.793896, 47.452595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.672958, 41.975937, 47.382687>,  <49.439785, 42.279343, 47.266174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.672958, 41.975937, 47.382687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538019, 0.091705, -0.837929,
		0.608868, 0.645174, 0.461552,
		0.582937, -0.758512, 0.291280,
		49.847839, 41.748383, 47.470070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.113663, 42.526661, 47.231007>,  <49.439785, 42.279343, 47.266174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.113663, 42.526661, 47.231007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.178787, 42.133896, 47.192356>,  <50.217861, 41.898235, 47.169167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.178787, 42.133896, 47.192356>,  <50.113663, 42.526661, 47.231007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.178787, 42.133896, 47.192356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569053, 0.173456, -0.803798,
		0.806021, 0.075884, 0.587002,
		0.162815, -0.981914, -0.096628,
		50.227631, 41.839321, 47.163368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.486023, 43.188614, 47.403599>,  <50.113663, 42.526661, 47.231007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.486023, 43.188614, 47.403599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.510864, 43.570312, 47.286594>,  <50.525768, 43.799332, 47.216393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.510864, 43.570312, 47.286594>,  <50.486023, 43.188614, 47.403599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.510864, 43.570312, 47.286594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574511, 0.273829, 0.771333,
		0.816137, 0.120146, 0.565230,
		0.062104, 0.954245, -0.292507,
		50.529495, 43.856586, 47.198841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.661602, 43.645176, 47.949181>,  <50.486023, 43.188614, 47.403599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.661602, 43.645176, 47.949181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.457550, 43.889359, 47.706821>,  <50.335121, 44.035870, 47.561405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.457550, 43.889359, 47.706821>,  <50.661602, 43.645176, 47.949181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.457550, 43.889359, 47.706821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678931, 0.146677, 0.719401,
		0.528037, 0.778347, 0.339637,
		-0.510127, 0.610461, -0.605895,
		50.304512, 44.072498, 47.525051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.421917, 44.131508, 48.419048>,  <50.661602, 43.645176, 47.949181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.421917, 44.131508, 48.419048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.199409, 44.219452, 48.098492>,  <50.065907, 44.272217, 47.906158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.199409, 44.219452, 48.098492>,  <50.421917, 44.131508, 48.419048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.199409, 44.219452, 48.098492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773374, 0.215905, 0.596051,
		0.304071, 0.951340, 0.049932,
		-0.556267, 0.219858, -0.801392,
		50.032528, 44.285408, 47.858074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.071671, 44.795597, 48.531227>,  <50.421917, 44.131508, 48.419048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.071671, 44.795597, 48.531227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.855141, 44.600327, 48.257393>,  <49.725224, 44.483166, 48.093094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.855141, 44.600327, 48.257393>,  <50.071671, 44.795597, 48.531227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.855141, 44.600327, 48.257393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833318, 0.203021, 0.514163,
		-0.112015, 0.848805, -0.516704,
		-0.541326, -0.488173, -0.684583,
		49.692741, 44.453876, 48.052017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.565350, 45.271084, 48.293755>,  <50.071671, 44.795597, 48.531227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.565350, 45.271084, 48.293755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.445488, 44.893341, 48.239498>,  <49.373569, 44.666695, 48.206944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.445488, 44.893341, 48.239498>,  <49.565350, 45.271084, 48.293755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.445488, 44.893341, 48.239498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739358, 0.140009, 0.658595,
		-0.602958, 0.297638, -0.740171,
		-0.299654, -0.944357, -0.135641,
		49.355591, 44.610035, 48.198807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.012913, 45.394993, 48.071945>,  <49.565350, 45.271084, 48.293755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.012913, 45.394993, 48.071945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.985062, 45.024040, 48.218975>,  <48.968349, 44.801468, 48.307194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.985062, 45.024040, 48.218975>,  <49.012913, 45.394993, 48.071945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.985062, 45.024040, 48.218975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907085, 0.212202, 0.363548,
		-0.415149, -0.308108, -0.855991,
		-0.069631, -0.927383, 0.367576,
		48.964172, 44.745827, 48.329247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.261574, 45.176670, 48.138119>,  <49.012913, 45.394993, 48.071945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.261574, 45.176670, 48.138119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.434166, 44.907166, 48.378078>,  <48.537720, 44.745464, 48.522053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.434166, 44.907166, 48.378078>,  <48.261574, 45.176670, 48.138119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.434166, 44.907166, 48.378078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804602, 0.013317, 0.593665,
		-0.407976, -0.738831, -0.536362,
		0.431475, -0.673759, 0.599898,
		48.563610, 44.705036, 48.558048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770321, 44.571476, 48.202400>,  <48.261574, 45.176670, 48.138119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770321, 44.571476, 48.202400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.014130, 44.539886, 48.517929>,  <48.160416, 44.520931, 48.707245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.014130, 44.539886, 48.517929>,  <47.770321, 44.571476, 48.202400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.014130, 44.539886, 48.517929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792179, -0.098967, 0.602210,
		0.030511, -0.991952, -0.122882,
		0.609525, -0.078971, 0.788823,
		48.196987, 44.516193, 48.754578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.448391, 44.046486, 48.592667>,  <47.770321, 44.571476, 48.202400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.448391, 44.046486, 48.592667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669540, 44.243202, 48.861729>,  <47.802231, 44.361233, 49.023167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669540, 44.243202, 48.861729>,  <47.448391, 44.046486, 48.592667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669540, 44.243202, 48.861729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682184, -0.196408, 0.704307,
		0.478488, -0.848271, 0.226903,
		0.552878, 0.491793, 0.672656,
		47.835403, 44.390739, 49.063526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.346134, 43.711246, 49.133110>,  <47.448391, 44.046486, 48.592667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.346134, 43.711246, 49.133110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516403, 44.025826, 49.312130>,  <47.618565, 44.214573, 49.419544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516403, 44.025826, 49.312130>,  <47.346134, 43.711246, 49.133110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.516403, 44.025826, 49.312130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450577, -0.244703, 0.858546,
		0.784717, -0.567119, 0.250190,
		0.425675, 0.786446, 0.447554,
		47.644104, 44.261761, 49.446396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.720043, 43.492054, 49.769863>,  <47.346134, 43.711246, 49.133110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.720043, 43.492054, 49.769863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641792, 43.880714, 49.822975>,  <47.594841, 44.113911, 49.854843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641792, 43.880714, 49.822975>,  <47.720043, 43.492054, 49.769863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.641792, 43.880714, 49.822975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382607, -0.200289, 0.901940,
		0.902963, 0.125639, 0.410941,
		-0.195626, 0.971647, 0.132783,
		47.583103, 44.172207, 49.862812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.717480, 43.560806, 50.510864>,  <47.720043, 43.492054, 49.769863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.717480, 43.560806, 50.510864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535400, 43.895645, 50.389496>,  <47.426155, 44.096550, 50.316677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535400, 43.895645, 50.389496>,  <47.717480, 43.560806, 50.510864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.535400, 43.895645, 50.389496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505535, 0.037543, 0.861989,
		0.732961, 0.545762, 0.406094,
		-0.455194, 0.837099, -0.303419,
		47.398842, 44.146774, 50.298470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.802319, 44.025883, 51.145538>,  <47.717480, 43.560806, 50.510864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.802319, 44.025883, 51.145538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506950, 44.171036, 50.918186>,  <47.329731, 44.258129, 50.781776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506950, 44.171036, 50.918186>,  <47.802319, 44.025883, 51.145538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.506950, 44.171036, 50.918186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566809, 0.122620, 0.814673,
		0.365325, 0.923732, 0.115139,
		-0.738421, 0.362882, -0.568376,
		47.285423, 44.279900, 50.747673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.578949, 44.736336, 51.491425>,  <47.802319, 44.025883, 51.145538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.578949, 44.736336, 51.491425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278603, 44.603317, 51.263172>,  <47.098396, 44.523506, 51.126221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278603, 44.603317, 51.263172>,  <47.578949, 44.736336, 51.491425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278603, 44.603317, 51.263172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634334, 0.122510, 0.763290,
		-0.183918, 0.935097, -0.302931,
		-0.750862, -0.332542, -0.570633,
		47.053345, 44.503555, 51.091984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.087452, 45.155060, 51.541004>,  <47.578949, 44.736336, 51.491425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.087452, 45.155060, 51.541004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895294, 44.825813, 51.419872>,  <46.779999, 44.628265, 51.347191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895294, 44.825813, 51.419872>,  <47.087452, 45.155060, 51.541004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895294, 44.825813, 51.419872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467369, -0.051925, 0.882536,
		-0.742153, 0.565497, -0.359754,
		-0.480391, -0.823114, -0.302832,
		46.751179, 44.578880, 51.329021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365028, 45.199661, 51.718758>,  <47.087452, 45.155060, 51.541004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365028, 45.199661, 51.718758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424347, 44.809639, 51.652687>,  <46.459938, 44.575626, 51.613045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424347, 44.809639, 51.652687>,  <46.365028, 45.199661, 51.718758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424347, 44.809639, 51.652687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481303, -0.217069, 0.849252,
		-0.863919, -0.046440, -0.501485,
		0.148296, -0.975051, -0.165179,
		46.468834, 44.517124, 51.603134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692131, 44.778885, 51.705883>,  <46.365028, 45.199661, 51.718758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692131, 44.778885, 51.705883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965744, 44.500450, 51.793121>,  <46.129910, 44.333389, 51.845463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965744, 44.500450, 51.793121>,  <45.692131, 44.778885, 51.705883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965744, 44.500450, 51.793121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572935, -0.327622, 0.751272,
		-0.451502, -0.638843, -0.622917,
		0.684026, -0.696091, 0.218094,
		46.170952, 44.291622, 51.858551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317837, 44.204296, 51.898529>,  <45.692131, 44.778885, 51.705883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317837, 44.204296, 51.898529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690079, 44.117432, 52.016384>,  <45.913425, 44.065311, 52.087097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690079, 44.117432, 52.016384>,  <45.317837, 44.204296, 51.898529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690079, 44.117432, 52.016384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365679, -0.586189, 0.722953,
		0.015715, -0.780528, -0.624923,
		0.930608, -0.217160, 0.294635,
		45.969261, 44.052284, 52.104774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404663, 43.470524, 51.912674>,  <45.317837, 44.204296, 51.898529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404663, 43.470524, 51.912674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674149, 43.602890, 52.176979>,  <45.835838, 43.682308, 52.335564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674149, 43.602890, 52.176979>,  <45.404663, 43.470524, 51.912674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674149, 43.602890, 52.176979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398498, -0.590319, 0.701942,
		0.622343, -0.736220, -0.265837,
		0.673713, 0.330913, 0.660763,
		45.876263, 43.702164, 52.375210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668732, 42.864277, 52.378124>,  <45.404663, 43.470524, 51.912674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668732, 42.864277, 52.378124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753143, 43.188744, 52.596291>,  <45.803791, 43.383423, 52.727188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753143, 43.188744, 52.596291>,  <45.668732, 42.864277, 52.378124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753143, 43.188744, 52.596291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307551, -0.474540, 0.824757,
		0.927836, -0.341787, 0.149336,
		0.211025, 0.811168, 0.545413,
		45.816452, 43.432095, 52.759914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865204, 42.554150, 52.999615>,  <45.668732, 42.864277, 52.378124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865204, 42.554150, 52.999615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799492, 42.941017, 53.077179>,  <45.760067, 43.173138, 53.123718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799492, 42.941017, 53.077179>,  <45.865204, 42.554150, 52.999615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799492, 42.941017, 53.077179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363710, -0.242118, 0.899496,
		0.916912, 0.077242, 0.391543,
		-0.164278, 0.967167, 0.193907,
		45.750210, 43.231167, 53.135349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138836, 42.776134, 53.696346>,  <45.865204, 42.554150, 52.999615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138836, 42.776134, 53.696346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853279, 43.050293, 53.638947>,  <45.681946, 43.214790, 53.604507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853279, 43.050293, 53.638947>,  <46.138836, 42.776134, 53.696346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853279, 43.050293, 53.638947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408525, -0.241199, 0.880301,
		0.568746, 0.687059, 0.452192,
		-0.713887, 0.685400, -0.143500,
		45.639114, 43.255913, 53.595898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.964306, 42.952259, 54.495502>,  <46.138836, 42.776134, 53.696346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.964306, 42.952259, 54.495502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.687889, 43.123199, 54.262321>,  <45.522038, 43.225765, 54.122414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.687889, 43.123199, 54.262321>,  <45.964306, 42.952259, 54.495502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.687889, 43.123199, 54.262321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669402, -0.074109, 0.739195,
		0.272697, 0.901041, 0.337285,
		-0.691041, 0.427356, -0.582949,
		45.480576, 43.251408, 54.087437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714191, 43.575367, 54.828094>,  <45.964306, 42.952259, 54.495502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714191, 43.575367, 54.828094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441505, 43.420425, 54.579826>,  <45.277893, 43.327461, 54.430866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441505, 43.420425, 54.579826>,  <45.714191, 43.575367, 54.828094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441505, 43.420425, 54.579826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669626, -0.011413, 0.742611,
		-0.294734, 0.921862, -0.251599,
		-0.681714, -0.387350, -0.620666,
		45.236992, 43.304222, 54.393627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077427, 43.991440, 54.988552>,  <45.714191, 43.575367, 54.828094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077427, 43.991440, 54.988552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959961, 43.656136, 54.804779>,  <44.889481, 43.454952, 54.694515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959961, 43.656136, 54.804779>,  <45.077427, 43.991440, 54.988552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959961, 43.656136, 54.804779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770378, -0.077008, 0.632920,
		-0.565931, 0.539807, -0.623162,
		-0.293666, -0.838259, -0.459437,
		44.871861, 43.404659, 54.666946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363533, 44.178036, 54.867252>,  <45.077427, 43.991440, 54.988552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363533, 44.178036, 54.867252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396946, 43.780022, 54.845619>,  <44.416992, 43.541214, 54.832642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396946, 43.780022, 54.845619>,  <44.363533, 44.178036, 54.867252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396946, 43.780022, 54.845619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870023, -0.099280, 0.482911,
		-0.485883, 0.006713, -0.873998,
		0.083529, -0.995037, -0.054080,
		44.422005, 43.481510, 54.829395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792431, 43.955273, 54.691040>,  <44.363533, 44.178036, 54.867252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792431, 43.955273, 54.691040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935616, 43.622093, 54.859825>,  <44.021526, 43.422184, 54.961098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935616, 43.622093, 54.859825>,  <43.792431, 43.955273, 54.691040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935616, 43.622093, 54.859825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917885, -0.230986, 0.322696,
		-0.171322, -0.502829, -0.847238,
		0.357961, -0.832951, 0.421966,
		44.043003, 43.372208, 54.986416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304211, 43.361610, 54.464123>,  <43.792431, 43.955273, 54.691040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304211, 43.361610, 54.464123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473640, 43.243843, 54.806793>,  <43.575298, 43.173183, 55.012398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473640, 43.243843, 54.806793>,  <43.304211, 43.361610, 54.464123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473640, 43.243843, 54.806793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885153, -0.335570, 0.322331,
		0.192576, -0.894825, -0.402744,
		0.423579, -0.294417, 0.856680,
		43.600716, 43.155518, 55.063797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936085, 42.687737, 54.626637>,  <43.304211, 43.361610, 54.464123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936085, 42.687737, 54.626637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102486, 42.791893, 54.975151>,  <43.202324, 42.854385, 55.184261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102486, 42.791893, 54.975151>,  <42.936085, 42.687737, 54.626637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102486, 42.791893, 54.975151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819776, -0.307312, 0.483245,
		0.393589, -0.915291, 0.085619,
		0.415998, 0.260388, 0.871288,
		43.227283, 42.870010, 55.236538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857738, 42.152393, 55.091888>,  <42.936085, 42.687737, 54.626637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857738, 42.152393, 55.091888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885971, 42.467812, 55.336254>,  <42.902912, 42.657063, 55.482872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885971, 42.467812, 55.336254>,  <42.857738, 42.152393, 55.091888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885971, 42.467812, 55.336254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767073, -0.348602, 0.538587,
		0.637666, -0.506632, 0.580264,
		0.070584, 0.788544, 0.610915,
		42.907146, 42.704376, 55.519527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717861, 41.914604, 55.723782>,  <42.857738, 42.152393, 55.091888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717861, 41.914604, 55.723782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667450, 42.304451, 55.797791>,  <42.637203, 42.538361, 55.842194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667450, 42.304451, 55.797791>,  <42.717861, 41.914604, 55.723782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667450, 42.304451, 55.797791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753887, -0.215318, 0.620720,
		0.644805, -0.061258, 0.761889,
		-0.126024, 0.974621, 0.185019,
		42.629642, 42.596836, 55.853298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533085, 41.881985, 56.312275>,  <42.717861, 41.914604, 55.723782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533085, 41.881985, 56.312275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401329, 42.246048, 56.211784>,  <42.322273, 42.464485, 56.151489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401329, 42.246048, 56.211784>,  <42.533085, 41.881985, 56.312275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401329, 42.246048, 56.211784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676943, -0.042156, 0.734827,
		0.658217, 0.412115, 0.630010,
		-0.329392, 0.910156, -0.251230,
		42.302513, 42.519096, 56.136414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426128, 42.112621, 56.895046>,  <42.533085, 41.881985, 56.312275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426128, 42.112621, 56.895046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205070, 42.313950, 56.629341>,  <42.072437, 42.434746, 56.469917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205070, 42.313950, 56.629341>,  <42.426128, 42.112621, 56.895046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205070, 42.313950, 56.629341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832991, -0.308109, 0.459559,
		0.026641, 0.807300, 0.589539,
		-0.552645, 0.503324, -0.664266,
		42.039276, 42.464947, 56.430061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939533, 42.365841, 57.280613>,  <42.426128, 42.112621, 56.895046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939533, 42.365841, 57.280613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762413, 42.398239, 56.923431>,  <41.656139, 42.417679, 56.709122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762413, 42.398239, 56.923431>,  <41.939533, 42.365841, 57.280613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762413, 42.398239, 56.923431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889454, -0.165328, 0.426073,
		-0.113120, 0.982907, 0.145250,
		-0.442805, 0.080995, -0.892952,
		41.629570, 42.422539, 56.655544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292068, 42.750820, 57.358643>,  <41.939533, 42.365841, 57.280613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292068, 42.750820, 57.358643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236610, 42.573982, 57.004166>,  <41.203335, 42.467880, 56.791481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236610, 42.573982, 57.004166>,  <41.292068, 42.750820, 57.358643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236610, 42.573982, 57.004166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985270, -0.028867, 0.168550,
		-0.100096, 0.896505, -0.431577,
		-0.138648, -0.442091, -0.886190,
		41.195015, 42.441357, 56.738308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731510, 43.073498, 57.037380>,  <41.292068, 42.750820, 57.358643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731510, 43.073498, 57.037380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741463, 42.709732, 56.871323>,  <40.747437, 42.491474, 56.771687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741463, 42.709732, 56.871323>,  <40.731510, 43.073498, 57.037380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741463, 42.709732, 56.871323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951246, -0.149245, 0.269919,
		-0.307427, 0.388189, -0.868791,
		0.024883, -0.909415, -0.415145,
		40.748928, 42.436909, 56.746780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171909, 43.046745, 56.694126>,  <40.731510, 43.073498, 57.037380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171909, 43.046745, 56.694126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259357, 42.658653, 56.735821>,  <40.311825, 42.425800, 56.760838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259357, 42.658653, 56.735821>,  <40.171909, 43.046745, 56.694126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259357, 42.658653, 56.735821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911039, -0.164668, 0.378011,
		-0.349592, -0.177600, -0.919915,
		0.218616, -0.970228, 0.104234,
		40.324944, 42.367584, 56.767090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567646, 42.591473, 56.454586>,  <40.171909, 43.046745, 56.694126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567646, 42.591473, 56.454586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785442, 42.347153, 56.684525>,  <39.916122, 42.200562, 56.822487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785442, 42.347153, 56.684525>,  <39.567646, 42.591473, 56.454586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785442, 42.347153, 56.684525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811745, -0.211181, 0.544493,
		-0.211181, -0.763101, -0.610802,
		-0.544493, 0.610802, -0.574846,
		39.948792, 42.163914, 56.856979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818768, 42.744854, 56.297806>,  <39.567646, 42.591473, 56.454586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818768, 42.744854, 56.297806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505203, 42.785637, 56.052826>,  <38.317066, 42.810108, 55.905838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505203, 42.785637, 56.052826>,  <38.818768, 42.744854, 56.297806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505203, 42.785637, 56.052826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618858, 0.207852, -0.757504,
		0.050063, -0.972832, -0.226036,
		-0.783906, 0.101961, -0.612450,
		38.270031, 42.816223, 55.869091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924530, 42.325222, 55.699005>,  <38.818768, 42.744854, 56.297806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924530, 42.325222, 55.699005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696976, 42.643150, 55.614502>,  <38.560444, 42.833908, 55.563801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696976, 42.643150, 55.614502>,  <38.924530, 42.325222, 55.699005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696976, 42.643150, 55.614502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622126, 0.247898, -0.742635,
		-0.537892, -0.553901, -0.635504,
		-0.568886, 0.794821, -0.211253,
		38.526310, 42.881596, 55.551125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758774, 42.384727, 54.904308>,  <38.924530, 42.325222, 55.699005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758774, 42.384727, 54.904308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720818, 42.735352, 55.093044>,  <38.698044, 42.945724, 55.206287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720818, 42.735352, 55.093044>,  <38.758774, 42.384727, 54.904308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720818, 42.735352, 55.093044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566728, 0.437245, -0.698309,
		-0.818422, 0.201142, -0.538264,
		-0.094894, 0.876561, 0.471844,
		38.692348, 42.998322, 55.234596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558891, 42.860695, 54.419476>,  <38.758774, 42.384727, 54.904308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558891, 42.860695, 54.419476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755531, 43.064919, 54.701656>,  <38.873516, 43.187450, 54.870964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755531, 43.064919, 54.701656>,  <38.558891, 42.860695, 54.419476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755531, 43.064919, 54.701656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597933, 0.391049, -0.699683,
		-0.633094, 0.765777, -0.113040,
		0.491597, 0.510555, 0.705454,
		38.903011, 43.218086, 54.913292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397125, 43.584316, 54.136459>,  <38.558891, 42.860695, 54.419476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397125, 43.584316, 54.136459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721077, 43.583778, 54.371094>,  <38.915447, 43.583458, 54.511875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721077, 43.583778, 54.371094>,  <38.397125, 43.584316, 54.136459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721077, 43.583778, 54.371094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575371, 0.196461, -0.793947,
		-0.114177, 0.980511, 0.159882,
		0.809884, -0.001341, 0.586589,
		38.964043, 43.583378, 54.547070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762535, 44.072071, 53.876854>,  <38.397125, 43.584316, 54.136459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762535, 44.072071, 53.876854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036278, 43.922195, 54.127060>,  <39.200523, 43.832272, 54.277184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036278, 43.922195, 54.127060>,  <38.762535, 44.072071, 53.876854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036278, 43.922195, 54.127060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727178, 0.287670, -0.623264,
		0.053587, 0.881394, 0.469332,
		0.684354, -0.374687, 0.625515,
		39.241585, 43.809788, 54.314713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235504, 44.556812, 53.894283>,  <38.762535, 44.072071, 53.876854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235504, 44.556812, 53.894283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435745, 44.243042, 54.040745>,  <39.555889, 44.054779, 54.128624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435745, 44.243042, 54.040745>,  <39.235504, 44.556812, 53.894283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435745, 44.243042, 54.040745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819775, 0.293655, -0.491666,
		0.278154, 0.546293, 0.790060,
		0.500599, -0.784430, 0.366157,
		39.585926, 44.007713, 54.150593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850307, 44.889271, 54.221836>,  <39.235504, 44.556812, 53.894283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850307, 44.889271, 54.221836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923294, 44.503525, 54.145206>,  <39.967087, 44.272076, 54.099228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923294, 44.503525, 54.145206>,  <39.850307, 44.889271, 54.221836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923294, 44.503525, 54.145206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871652, 0.248812, -0.422274,
		0.454893, -0.089938, 0.885993,
		0.182467, -0.964367, -0.191577,
		39.978035, 44.214214, 54.087734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457451, 44.726280, 54.466084>,  <39.850307, 44.889271, 54.221836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457451, 44.726280, 54.466084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391350, 44.452286, 54.182259>,  <40.351688, 44.287888, 54.011963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391350, 44.452286, 54.182259>,  <40.457451, 44.726280, 54.466084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391350, 44.452286, 54.182259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929759, 0.131800, -0.343768,
		0.328997, -0.716534, 0.615093,
		-0.165252, -0.684987, -0.709566,
		40.341774, 44.246788, 53.969387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196827, 44.548378, 54.260635>,  <40.457451, 44.726280, 54.466084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196827, 44.548378, 54.260635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976589, 44.420616, 53.952137>,  <40.844448, 44.343960, 53.767036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976589, 44.420616, 53.952137>,  <41.196827, 44.548378, 54.260635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976589, 44.420616, 53.952137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789319, 0.101511, -0.605533,
		0.271701, -0.942165, 0.196222,
		-0.550593, -0.319406, -0.771250,
		40.811413, 44.324795, 53.720760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625576, 44.096916, 53.923878>,  <41.196827, 44.548378, 54.260635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625576, 44.096916, 53.923878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358177, 44.194901, 53.642994>,  <41.197739, 44.253689, 53.474464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358177, 44.194901, 53.642994>,  <41.625576, 44.096916, 53.923878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358177, 44.194901, 53.642994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741326, 0.143936, -0.655528,
		-0.059504, -0.958790, -0.277815,
		-0.668501, 0.244959, -0.702211,
		41.157627, 44.268387, 53.432331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758442, 43.636620, 53.351398>,  <41.625576, 44.096916, 53.923878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758442, 43.636620, 53.351398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572369, 43.950111, 53.186779>,  <41.460724, 44.138206, 53.088009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572369, 43.950111, 53.186779>,  <41.758442, 43.636620, 53.351398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572369, 43.950111, 53.186779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698107, 0.038944, -0.714933,
		-0.544288, -0.619880, -0.565243,
		-0.465185, 0.783730, -0.411546,
		41.432812, 44.185230, 53.063316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709431, 43.564270, 52.652050>,  <41.758442, 43.636620, 53.351398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709431, 43.564270, 52.652050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669937, 43.962311, 52.653633>,  <41.646240, 44.201138, 52.654583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669937, 43.962311, 52.653633>,  <41.709431, 43.564270, 52.652050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669937, 43.962311, 52.653633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547001, 0.057596, -0.835148,
		-0.831289, -0.080290, -0.550011,
		-0.098732, 0.995106, 0.003960,
		41.640316, 44.260841, 52.654819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508080, 43.835369, 51.942219>,  <41.709431, 43.564270, 52.652050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508080, 43.835369, 51.942219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690643, 44.132675, 52.137867>,  <41.800182, 44.311058, 52.255257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690643, 44.132675, 52.137867>,  <41.508080, 43.835369, 51.942219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690643, 44.132675, 52.137867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522506, 0.221063, -0.823480,
		-0.720195, 0.631413, -0.287468,
		0.456407, 0.743269, 0.489125,
		41.827564, 44.355656, 52.284603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757690, 44.277020, 51.500210>,  <41.508080, 43.835369, 51.942219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757690, 44.277020, 51.500210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987770, 44.419548, 51.794743>,  <42.125816, 44.505066, 51.971462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987770, 44.419548, 51.794743>,  <41.757690, 44.277020, 51.500210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987770, 44.419548, 51.794743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735401, 0.168954, -0.656232,
		-0.358233, 0.918962, -0.164854,
		0.575200, 0.356318, 0.736331,
		42.160332, 44.526443, 52.015640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040794, 44.810776, 51.198700>,  <41.757690, 44.277020, 51.500210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040794, 44.810776, 51.198700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269016, 44.730835, 51.517326>,  <42.405949, 44.682869, 51.708504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269016, 44.730835, 51.517326>,  <42.040794, 44.810776, 51.198700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269016, 44.730835, 51.517326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820850, 0.169354, -0.545458,
		-0.025890, 0.965079, 0.260676,
		0.570557, -0.199854, 0.796570,
		42.440182, 44.670879, 51.756298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595581, 45.260204, 51.111027>,  <42.040794, 44.810776, 51.198700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595581, 45.260204, 51.111027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743195, 45.017036, 51.392235>,  <42.831764, 44.871136, 51.560959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743195, 45.017036, 51.392235>,  <42.595581, 45.260204, 51.111027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743195, 45.017036, 51.392235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891295, 0.017070, -0.453102,
		0.263451, 0.793813, 0.548138,
		0.369035, -0.607923, 0.703024,
		42.853905, 44.834660, 51.603142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175030, 45.502209, 51.332954>,  <42.595581, 45.260204, 51.111027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175030, 45.502209, 51.332954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207760, 45.108498, 51.395576>,  <43.227398, 44.872272, 51.433147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207760, 45.108498, 51.395576>,  <43.175030, 45.502209, 51.332954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207760, 45.108498, 51.395576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843762, -0.015192, -0.536503,
		0.530444, 0.175991, 0.829250,
		0.081822, -0.984275, 0.156553,
		43.232307, 44.813213, 51.442543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878040, 45.435486, 51.537792>,  <43.175030, 45.502209, 51.332954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878040, 45.435486, 51.537792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729958, 45.086700, 51.409649>,  <43.641109, 44.877430, 51.332764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729958, 45.086700, 51.409649>,  <43.878040, 45.435486, 51.537792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729958, 45.086700, 51.409649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661823, -0.005568, -0.749639,
		0.651874, -0.489540, 0.579147,
		-0.370203, -0.871963, -0.320360,
		43.618896, 44.825111, 51.313541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399757, 45.048584, 51.544460>,  <43.878040, 45.435486, 51.537792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399757, 45.048584, 51.544460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138912, 44.897545, 51.281502>,  <43.982407, 44.806919, 51.123726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138912, 44.897545, 51.281502>,  <44.399757, 45.048584, 51.544460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138912, 44.897545, 51.281502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685723, 0.076033, -0.723880,
		0.323321, -0.922842, 0.209348,
		-0.652110, -0.377601, -0.657397,
		43.943279, 44.784264, 51.084282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884720, 44.729191, 51.171730>,  <44.399757, 45.048584, 51.544460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884720, 44.729191, 51.171730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544785, 44.720741, 50.961082>,  <44.340824, 44.715672, 50.834694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544785, 44.720741, 50.961082>,  <44.884720, 44.729191, 51.171730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544785, 44.720741, 50.961082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519431, 0.135616, -0.843682,
		0.089240, -0.990536, -0.104280,
		-0.849840, -0.021124, -0.526618,
		44.289833, 44.714405, 50.803097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028275, 44.293026, 50.626263>,  <44.884720, 44.729191, 51.171730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028275, 44.293026, 50.626263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720554, 44.535011, 50.544090>,  <44.535923, 44.680202, 50.494789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720554, 44.535011, 50.544090>,  <45.028275, 44.293026, 50.626263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720554, 44.535011, 50.544090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427594, 0.248626, -0.869108,
		-0.474702, -0.756443, -0.449946,
		-0.769299, 0.604962, -0.205427,
		44.489765, 44.716499, 50.482464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740543, 44.152222, 49.962158>,  <45.028275, 44.293026, 50.626263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740543, 44.152222, 49.962158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608852, 44.522980, 50.034233>,  <44.529839, 44.745434, 50.077477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608852, 44.522980, 50.034233>,  <44.740543, 44.152222, 49.962158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608852, 44.522980, 50.034233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344820, 0.295665, -0.890888,
		-0.879038, -0.231174, -0.416955,
		-0.329230, 0.926898, 0.180187,
		44.510082, 44.801048, 50.088291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625286, 44.391617, 49.329075>,  <44.740543, 44.152222, 49.962158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625286, 44.391617, 49.329075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670349, 44.727936, 49.540874>,  <44.697388, 44.929726, 49.667953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670349, 44.727936, 49.540874>,  <44.625286, 44.391617, 49.329075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670349, 44.727936, 49.540874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453280, 0.430729, -0.780391,
		-0.884221, 0.327929, -0.332591,
		0.112656, 0.840794, 0.529503,
		44.704147, 44.980175, 49.699726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288803, 44.940987, 48.925781>,  <44.625286, 44.391617, 49.329075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288803, 44.940987, 48.925781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545853, 45.124329, 49.171364>,  <44.700085, 45.234333, 49.318714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545853, 45.124329, 49.171364>,  <44.288803, 44.940987, 48.925781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545853, 45.124329, 49.171364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533117, 0.308025, -0.787976,
		-0.550288, 0.833684, -0.046413,
		0.642627, 0.458358, 0.613954,
		44.738640, 45.261837, 49.355549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390396, 45.591656, 48.657593>,  <44.288803, 44.940987, 48.925781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390396, 45.591656, 48.657593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708916, 45.553352, 48.896503>,  <44.900028, 45.530373, 49.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708916, 45.553352, 48.896503>,  <44.390396, 45.591656, 48.657593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708916, 45.553352, 48.896503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564801, 0.471244, -0.677443,
		-0.216596, 0.876789, 0.429333,
		0.796295, -0.095756, 0.597281,
		44.947803, 45.524624, 49.075687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653717, 46.187592, 48.702339>,  <44.390396, 45.591656, 48.657593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653717, 46.187592, 48.702339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956825, 45.939384, 48.783077>,  <45.138691, 45.790459, 48.831520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956825, 45.939384, 48.783077>,  <44.653717, 46.187592, 48.702339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956825, 45.939384, 48.783077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561473, 0.462451, -0.686212,
		0.332462, 0.633323, 0.698835,
		0.757771, -0.620517, 0.201846,
		45.184158, 45.753231, 48.843632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157631, 46.595055, 48.579750>,  <44.653717, 46.187592, 48.702339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157631, 46.595055, 48.579750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348640, 46.244041, 48.597202>,  <45.463245, 46.033432, 48.607674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348640, 46.244041, 48.597202>,  <45.157631, 46.595055, 48.579750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348640, 46.244041, 48.597202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396749, 0.171052, -0.901849,
		0.783941, 0.447965, 0.429842,
		0.477522, -0.877536, 0.043635,
		45.491898, 45.980782, 48.610294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862431, 46.756031, 48.458199>,  <45.157631, 46.595055, 48.579750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862431, 46.756031, 48.458199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817169, 46.371780, 48.356689>,  <45.790012, 46.141232, 48.295784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817169, 46.371780, 48.356689>,  <45.862431, 46.756031, 48.458199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817169, 46.371780, 48.356689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506652, 0.163920, -0.846424,
		0.854692, -0.224352, 0.468153,
		-0.113157, -0.960623, -0.253769,
		45.783222, 46.083595, 48.280560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490055, 46.526295, 48.270737>,  <45.862431, 46.756031, 48.458199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490055, 46.526295, 48.270737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234207, 46.269714, 48.101299>,  <46.080700, 46.115765, 47.999638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234207, 46.269714, 48.101299>,  <46.490055, 46.526295, 48.270737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234207, 46.269714, 48.101299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526958, 0.035304, -0.849158,
		0.559649, -0.766350, 0.315438,
		-0.639616, -0.641453, -0.423591,
		46.042324, 46.077278, 47.974220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992218, 46.013359, 48.069046>,  <46.490055, 46.526295, 48.270737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992218, 46.013359, 48.069046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647278, 45.994164, 47.867435>,  <46.440311, 45.982647, 47.746468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647278, 45.994164, 47.867435>,  <46.992218, 46.013359, 48.069046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647278, 45.994164, 47.867435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474310, 0.271722, -0.837375,
		0.177140, -0.961178, -0.211559,
		-0.862352, -0.047988, -0.504029,
		46.388573, 45.979767, 47.716228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.089825, 45.635620, 47.459438>,  <46.992218, 46.013359, 48.069046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.089825, 45.635620, 47.459438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756325, 45.834877, 47.364178>,  <46.556225, 45.954430, 47.307022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756325, 45.834877, 47.364178>,  <47.089825, 45.635620, 47.459438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756325, 45.834877, 47.364178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353608, 0.150476, -0.923211,
		-0.424055, -0.853939, -0.301607,
		-0.833750, 0.498143, -0.238150,
		46.506199, 45.984318, 47.292732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778801, 45.126530, 46.944393>,  <47.089825, 45.635620, 47.459438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778801, 45.126530, 46.944393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633743, 45.497704, 46.909927>,  <46.546707, 45.720409, 46.889248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633743, 45.497704, 46.909927>,  <46.778801, 45.126530, 46.944393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633743, 45.497704, 46.909927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106580, -0.050554, -0.993018,
		-0.925812, -0.369297, -0.080566,
		-0.362646, 0.927935, -0.086163,
		46.524948, 45.776085, 46.884079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435673, 45.066254, 46.316074>,  <46.778801, 45.126530, 46.944393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435673, 45.066254, 46.316074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467339, 45.455032, 46.404671>,  <46.486340, 45.688297, 46.457829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467339, 45.455032, 46.404671>,  <46.435673, 45.066254, 46.316074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.467339, 45.455032, 46.404671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044252, 0.218545, -0.974823,
		-0.995879, 0.086975, -0.025709,
		0.079167, 0.971943, 0.221493,
		46.491089, 45.746616, 46.471119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825821, 45.447929, 45.965191>,  <46.435673, 45.066254, 46.316074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825821, 45.447929, 45.965191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140778, 45.686478, 46.027622>,  <46.329750, 45.829605, 46.065083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140778, 45.686478, 46.027622>,  <45.825821, 45.447929, 45.965191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140778, 45.686478, 46.027622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031906, 0.213425, -0.976438,
		-0.615630, 0.773817, 0.149021,
		0.787389, 0.596371, 0.156080,
		46.376995, 45.865387, 46.074448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674271, 46.117462, 45.601082>,  <45.825821, 45.447929, 45.965191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674271, 46.117462, 45.601082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067604, 46.063240, 45.649559>,  <46.303604, 46.030708, 45.678646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067604, 46.063240, 45.649559>,  <45.674271, 46.117462, 45.601082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067604, 46.063240, 45.649559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147721, 0.206936, -0.967138,
		0.106019, 0.968918, 0.223511,
		0.983330, -0.135552, 0.121190,
		46.362602, 46.022575, 45.685917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914154, 46.477985, 45.114201>,  <45.674271, 46.117462, 45.601082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914154, 46.477985, 45.114201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235634, 46.261276, 45.212624>,  <46.428524, 46.131252, 45.271679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235634, 46.261276, 45.212624>,  <45.914154, 46.477985, 45.114201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235634, 46.261276, 45.212624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330197, 0.062061, -0.941869,
		0.495005, 0.838233, 0.228770,
		0.803704, -0.541769, 0.246062,
		46.476746, 46.098747, 45.286442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466263, 46.881332, 44.706268>,  <45.914154, 46.477985, 45.114201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466263, 46.881332, 44.706268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657410, 46.543877, 44.804180>,  <46.772099, 46.341404, 44.862926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657410, 46.543877, 44.804180>,  <46.466263, 46.881332, 44.706268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657410, 46.543877, 44.804180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417142, -0.027294, -0.908431,
		0.773067, 0.536220, 0.338874,
		0.477870, -0.843637, 0.244780,
		46.800770, 46.290787, 44.877613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.137802, 47.016064, 44.495922>,  <46.466263, 46.881332, 44.706268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.137802, 47.016064, 44.495922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.080330, 46.620399, 44.508018>,  <47.045845, 46.382999, 44.515278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.080330, 46.620399, 44.508018>,  <47.137802, 47.016064, 44.495922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.080330, 46.620399, 44.508018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500237, -0.098961, -0.860215,
		0.853885, -0.108469, 0.509034,
		-0.143681, -0.989162, 0.030241,
		47.037224, 46.323650, 44.517090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.791191, 46.785847, 44.299927>,  <47.137802, 47.016064, 44.495922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.791191, 46.785847, 44.299927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538994, 46.480827, 44.241959>,  <47.387676, 46.297817, 44.207176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538994, 46.480827, 44.241959>,  <47.791191, 46.785847, 44.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.538994, 46.480827, 44.241959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422106, -0.180153, -0.888466,
		0.651387, -0.621344, 0.435461,
		-0.630493, -0.762546, -0.144924,
		47.349846, 46.252064, 44.198483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.101711, 40.931511, 49.184982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.150124, 40.558952, 49.322296>,  <41.179173, 40.335415, 49.404686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.150124, 40.558952, 49.322296>,  <41.101711, 40.931511, 49.184982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150124, 40.558952, 49.322296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548223, -0.225581, -0.805335,
		0.827528, 0.285668, 0.483313,
		0.121032, -0.931401, 0.343284,
		41.186432, 40.279533, 49.425282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852093, 40.820702, 49.211403>,  <41.101711, 40.931511, 49.184982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852093, 40.820702, 49.211403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.645279, 40.479836, 49.179153>,  <41.521191, 40.275318, 49.159805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.645279, 40.479836, 49.179153>,  <41.852093, 40.820702, 49.211403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645279, 40.479836, 49.179153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584015, -0.282335, -0.761060,
		0.625784, -0.440576, 0.643651,
		-0.517031, -0.852161, -0.080623,
		41.490170, 40.224186, 49.154968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371506, 40.478973, 49.029427>,  <41.852093, 40.820702, 49.211403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371506, 40.478973, 49.029427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.073578, 40.219933, 48.965115>,  <41.894821, 40.064507, 48.926529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.073578, 40.219933, 48.965115>,  <42.371506, 40.478973, 49.029427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073578, 40.219933, 48.965115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549826, -0.459130, -0.697776,
		0.378063, -0.608119, 0.698039,
		-0.744821, -0.647604, -0.160780,
		41.850132, 40.025650, 48.916882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592918, 39.824478, 49.127686>,  <42.371506, 40.478973, 49.029427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592918, 39.824478, 49.127686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.309708, 39.835182, 48.845413>,  <42.139782, 39.841602, 48.676052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.309708, 39.835182, 48.845413>,  <42.592918, 39.824478, 49.127686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309708, 39.835182, 48.845413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619334, -0.456595, -0.638707,
		-0.339298, -0.889272, 0.306711,
		-0.708027, 0.026755, -0.705678,
		42.097298, 39.843208, 48.633709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676304, 39.270771, 48.635708>,  <42.592918, 39.824478, 49.127686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676304, 39.270771, 48.635708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.428520, 39.508972, 48.431103>,  <42.279850, 39.651894, 48.308338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.428520, 39.508972, 48.431103>,  <42.676304, 39.270771, 48.635708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428520, 39.508972, 48.431103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469548, -0.241114, -0.849346,
		-0.629123, -0.766314, -0.130258,
		-0.619459, 0.595505, -0.511512,
		42.242683, 39.687622, 48.277649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508423, 38.937778, 47.933723>,  <42.676304, 39.270771, 48.635708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508423, 38.937778, 47.933723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452717, 39.332970, 47.906868>,  <42.419292, 39.570084, 47.890755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452717, 39.332970, 47.906868>,  <42.508423, 38.937778, 47.933723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452717, 39.332970, 47.906868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536346, 0.018262, -0.843801,
		-0.832429, -0.153523, -0.532440,
		-0.139266, 0.987976, -0.067139,
		42.410938, 39.629364, 47.886726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637802, 38.961723, 47.266739>,  <42.508423, 38.937778, 47.933723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637802, 38.961723, 47.266739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.628609, 39.347054, 47.373672>,  <42.623093, 39.578251, 47.437832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.628609, 39.347054, 47.373672>,  <42.637802, 38.961723, 47.266739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628609, 39.347054, 47.373672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721012, 0.201212, -0.663065,
		-0.692541, 0.177510, -0.699197,
		-0.022986, 0.963330, 0.267334,
		42.621712, 39.636051, 47.453873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707821, 39.305309, 46.637848>,  <42.637802, 38.961723, 47.266739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707821, 39.305309, 46.637848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.805443, 39.580292, 46.911446>,  <42.864014, 39.745281, 47.075603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.805443, 39.580292, 46.911446>,  <42.707821, 39.305309, 46.637848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805443, 39.580292, 46.911446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732648, 0.331392, -0.594480,
		-0.635347, 0.646210, -0.422784,
		0.244052, 0.687453, 0.683993,
		42.878658, 39.786526, 47.116642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845104, 39.949146, 46.237160>,  <42.707821, 39.305309, 46.637848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845104, 39.949146, 46.237160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.017128, 40.019028, 46.591454>,  <43.120342, 40.060955, 46.804031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.017128, 40.019028, 46.591454>,  <42.845104, 39.949146, 46.237160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017128, 40.019028, 46.591454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774930, 0.431915, -0.461446,
		-0.463179, 0.884833, 0.050366,
		0.430056, 0.174702, 0.885737,
		43.146145, 40.071438, 46.857174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120922, 40.588345, 46.095047>,  <42.845104, 39.949146, 46.237160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120922, 40.588345, 46.095047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.301544, 40.482262, 46.435814>,  <43.409920, 40.418613, 46.640274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.301544, 40.482262, 46.435814>,  <43.120922, 40.588345, 46.095047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301544, 40.482262, 46.435814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771529, 0.595632, -0.223528,
		-0.448148, 0.758214, 0.473576,
		0.451559, -0.265205, 0.851916,
		43.437012, 40.402699, 46.691387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254665, 41.171104, 46.621067>,  <43.120922, 40.588345, 46.095047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254665, 41.171104, 46.621067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.540714, 40.893539, 46.654716>,  <43.712345, 40.727001, 46.674908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.540714, 40.893539, 46.654716>,  <43.254665, 41.171104, 46.621067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540714, 40.893539, 46.654716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689231, 0.679965, -0.250216,
		0.116427, 0.236916, 0.964529,
		0.715126, -0.693915, 0.084123,
		43.755253, 40.685364, 46.679955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761082, 41.492554, 46.935566>,  <43.254665, 41.171104, 46.621067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761082, 41.492554, 46.935566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.942017, 41.172913, 46.777161>,  <44.050579, 40.981129, 46.682117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.942017, 41.172913, 46.777161>,  <43.761082, 41.492554, 46.935566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942017, 41.172913, 46.777161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738009, 0.584693, -0.336863,
		0.500733, -0.139883, 0.854224,
		0.452337, -0.799104, -0.396010,
		44.077717, 40.933182, 46.658356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392830, 41.538895, 47.130821>,  <43.761082, 41.492554, 46.935566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392830, 41.538895, 47.130821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.449715, 41.294151, 46.819592>,  <44.483845, 41.147305, 46.632854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.449715, 41.294151, 46.819592>,  <44.392830, 41.538895, 47.130821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449715, 41.294151, 46.819592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753215, 0.576901, -0.315995,
		0.642218, -0.541121, 0.542903,
		0.142210, -0.611860, -0.778077,
		44.492378, 41.110592, 46.586170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.058224, 41.478130, 47.062927>,  <44.392830, 41.538895, 47.130821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.058224, 41.478130, 47.062927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.912300, 41.400276, 46.698723>,  <44.824745, 41.353565, 46.480198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.912300, 41.400276, 46.698723>,  <45.058224, 41.478130, 47.062927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912300, 41.400276, 46.698723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810036, 0.415826, -0.413437,
		0.459084, -0.888373, 0.005963,
		-0.364807, -0.194633, -0.910513,
		44.802856, 41.341885, 46.425568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674366, 41.172802, 46.599060>,  <45.058224, 41.478130, 47.062927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674366, 41.172802, 46.599060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.383842, 41.301697, 46.356197>,  <45.209530, 41.379032, 46.210480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.383842, 41.301697, 46.356197>,  <45.674366, 41.172802, 46.599060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383842, 41.301697, 46.356197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686794, 0.376273, -0.621878,
		0.028064, -0.868667, -0.494602,
		-0.726310, 0.322237, -0.607155,
		45.165951, 41.398369, 46.174049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865639, 40.951206, 45.942848>,  <45.674366, 41.172802, 46.599060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865639, 40.951206, 45.942848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.607491, 41.250847, 45.883068>,  <45.452602, 41.430634, 45.847198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.607491, 41.250847, 45.883068>,  <45.865639, 40.951206, 45.942848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607491, 41.250847, 45.883068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623856, 0.403992, -0.669025,
		-0.440793, -0.525006, -0.728060,
		-0.645372, 0.749106, -0.149451,
		45.413879, 41.475578, 45.838234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796787, 40.969803, 45.229801>,  <45.865639, 40.951206, 45.942848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796787, 40.969803, 45.229801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.665962, 41.325943, 45.356487>,  <45.587467, 41.539627, 45.432499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.665962, 41.325943, 45.356487>,  <45.796787, 40.969803, 45.229801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665962, 41.325943, 45.356487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496772, 0.447087, -0.743862,
		-0.803896, -0.085954, -0.588526,
		-0.327060, 0.890351, 0.316712,
		45.567844, 41.593048, 45.451500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845486, 41.286709, 44.697609>,  <45.796787, 40.969803, 45.229801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845486, 41.286709, 44.697609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.762695, 41.594727, 44.938999>,  <45.713020, 41.779537, 45.083832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.762695, 41.594727, 44.938999>,  <45.845486, 41.286709, 44.697609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762695, 41.594727, 44.938999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410398, 0.628279, -0.660938,
		-0.888106, 0.110865, -0.446068,
		-0.206980, 0.770049, 0.603477,
		45.700600, 41.825741, 45.120041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568291, 41.768623, 44.265530>,  <45.845486, 41.286709, 44.697609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568291, 41.768623, 44.265530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.743050, 41.932724, 44.585732>,  <45.847904, 42.031185, 44.777851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.743050, 41.932724, 44.585732>,  <45.568291, 41.768623, 44.265530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743050, 41.932724, 44.585732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520842, 0.610191, -0.596985,
		-0.733378, 0.677759, 0.052913,
		0.436899, 0.410256, 0.800505,
		45.874119, 42.055801, 44.825882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564522, 42.378048, 44.052826>,  <45.568291, 41.768623, 44.265530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564522, 42.378048, 44.052826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.838013, 42.362480, 44.344307>,  <46.002106, 42.353138, 44.519196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.838013, 42.362480, 44.344307>,  <45.564522, 42.378048, 44.052826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838013, 42.362480, 44.344307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525487, 0.719137, -0.454647,
		-0.506340, 0.693777, 0.512145,
		0.683727, -0.038919, 0.728700,
		46.043129, 42.350803, 44.562916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721554, 43.113689, 44.261204>,  <45.564522, 42.378048, 44.052826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721554, 43.113689, 44.261204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.045059, 42.924515, 44.401051>,  <46.239162, 42.811008, 44.484959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.045059, 42.924515, 44.401051>,  <45.721554, 43.113689, 44.261204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045059, 42.924515, 44.401051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587642, 0.625570, -0.513166,
		0.023988, 0.620478, 0.783857,
		0.808765, -0.472937, 0.349613,
		46.287689, 42.782635, 44.505936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191593, 43.627552, 44.440739>,  <45.721554, 43.113689, 44.261204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191593, 43.627552, 44.440739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.449234, 43.324768, 44.396660>,  <46.603817, 43.143097, 44.370213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.449234, 43.324768, 44.396660>,  <46.191593, 43.627552, 44.440739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449234, 43.324768, 44.396660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519195, 0.538412, -0.663739,
		0.561756, 0.370301, 0.739802,
		0.644101, -0.756961, -0.110198,
		46.642464, 43.097679, 44.363602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869911, 44.256565, 44.575779>,  <46.191593, 43.627552, 44.440739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869911, 44.256565, 44.575779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.755684, 44.551918, 44.331402>,  <45.687149, 44.729130, 44.184776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.755684, 44.551918, 44.331402>,  <45.869911, 44.256565, 44.575779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755684, 44.551918, 44.331402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694800, 0.279563, 0.662644,
		0.660079, 0.613711, 0.433191,
		-0.285567, 0.738379, -0.610940,
		45.670013, 44.773430, 44.148121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912415, 44.864414, 44.964607>,  <45.869911, 44.256565, 44.575779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912415, 44.864414, 44.964607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.679367, 44.952927, 44.651791>,  <45.539539, 45.006035, 44.464100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.679367, 44.952927, 44.651791>,  <45.912415, 44.864414, 44.964607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679367, 44.952927, 44.651791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688870, 0.376172, 0.619640,
		0.431299, 0.899738, -0.066728,
		-0.582615, 0.221283, -0.782045,
		45.504581, 45.019310, 44.417175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686886, 45.479305, 45.190346>,  <45.912415, 44.864414, 44.964607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686886, 45.479305, 45.190346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.442284, 45.375092, 44.891502>,  <45.295521, 45.312561, 44.712196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.442284, 45.375092, 44.891502>,  <45.686886, 45.479305, 45.190346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442284, 45.375092, 44.891502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781457, 0.346866, 0.518661,
		0.124016, 0.901002, -0.415711,
		-0.611510, -0.260538, -0.747111,
		45.258831, 45.296928, 44.667370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188217, 46.112225, 45.062038>,  <45.686886, 45.479305, 45.190346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188217, 46.112225, 45.062038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.038002, 45.765686, 44.930336>,  <44.947872, 45.557762, 44.851315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.038002, 45.765686, 44.930336>,  <45.188217, 46.112225, 45.062038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038002, 45.765686, 44.930336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870137, 0.207261, 0.447107,
		-0.319108, 0.454405, -0.831677,
		-0.375542, -0.866348, -0.329256,
		44.925339, 45.505783, 44.831558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535782, 46.310883, 45.001629>,  <45.188217, 46.112225, 45.062038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535782, 46.310883, 45.001629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.531963, 45.910904, 45.003006>,  <44.529671, 45.670918, 45.003830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.531963, 45.910904, 45.003006>,  <44.535782, 46.310883, 45.001629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531963, 45.910904, 45.003006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934599, 0.010145, 0.355559,
		-0.355576, 0.000180, -0.934647,
		-0.009546, -0.999949, 0.003439,
		44.529099, 45.610920, 45.004036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843952, 46.122334, 44.842079>,  <44.535782, 46.310883, 45.001629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843952, 46.122334, 44.842079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.979366, 45.791656, 45.021847>,  <44.060616, 45.593250, 45.129707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.979366, 45.791656, 45.021847>,  <43.843952, 46.122334, 44.842079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979366, 45.791656, 45.021847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801961, -0.003665, 0.597365,
		-0.492190, -0.562644, -0.664215,
		0.338538, -0.826691, 0.449415,
		44.080929, 45.543648, 45.156670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228325, 45.740585, 45.025162>,  <43.843952, 46.122334, 44.842079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228325, 45.740585, 45.025162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.498249, 45.555511, 45.255138>,  <43.660202, 45.444469, 45.393124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.498249, 45.555511, 45.255138>,  <43.228325, 45.740585, 45.025162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498249, 45.555511, 45.255138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698448, -0.148811, 0.700019,
		-0.238330, -0.873945, -0.423579,
		0.674811, -0.462684, 0.574939,
		43.700691, 45.416706, 45.427620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931374, 45.038593, 45.241856>,  <43.228325, 45.740585, 45.025162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931374, 45.038593, 45.241856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.209343, 45.137024, 45.512123>,  <43.376125, 45.196083, 45.674282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.209343, 45.137024, 45.512123>,  <42.931374, 45.038593, 45.241856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209343, 45.137024, 45.512123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636793, -0.225884, 0.737205,
		0.334029, -0.942563, -0.000275,
		0.694924, 0.246073, 0.675669,
		43.417820, 45.210846, 45.714825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949749, 44.477032, 45.756199>,  <42.931374, 45.038593, 45.241856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949749, 44.477032, 45.756199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.112358, 44.790443, 45.944168>,  <43.209923, 44.978489, 46.056950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.112358, 44.790443, 45.944168>,  <42.949749, 44.477032, 45.756199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112358, 44.790443, 45.944168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375214, -0.325788, 0.867800,
		0.833037, -0.529104, 0.161548,
		0.406526, 0.783525, 0.469920,
		43.234318, 45.025501, 46.085144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528515, 44.260532, 46.217876>,  <42.949749, 44.477032, 45.756199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528515, 44.260532, 46.217876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.383747, 44.610718, 46.345985>,  <43.296886, 44.820831, 46.422852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.383747, 44.610718, 46.345985>,  <43.528515, 44.260532, 46.217876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383747, 44.610718, 46.345985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532852, -0.476182, 0.699514,
		0.764908, 0.082511, 0.638833,
		-0.361918, 0.875467, 0.320269,
		43.275173, 44.873360, 46.442066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686523, 44.319424, 47.010468>,  <43.528515, 44.260532, 46.217876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686523, 44.319424, 47.010468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.393013, 44.572548, 46.911572>,  <43.216908, 44.724422, 46.852234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.393013, 44.572548, 46.911572>,  <43.686523, 44.319424, 47.010468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393013, 44.572548, 46.911572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509867, -0.272412, 0.815983,
		0.449011, 0.724806, 0.522538,
		-0.733775, 0.632809, -0.247239,
		43.172882, 44.762390, 46.837399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554653, 44.556904, 47.626240>,  <43.686523, 44.319424, 47.010468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554653, 44.556904, 47.626240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.233803, 44.683441, 47.423649>,  <43.041294, 44.759365, 47.302094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.233803, 44.683441, 47.423649>,  <43.554653, 44.556904, 47.626240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233803, 44.683441, 47.423649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595826, -0.367404, 0.714147,
		0.039836, 0.874608, 0.483192,
		-0.802125, 0.316347, -0.506478,
		42.993164, 44.778347, 47.271706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108757, 44.905643, 48.104900>,  <43.554653, 44.556904, 47.626240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108757, 44.905643, 48.104900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.869411, 44.821312, 47.795704>,  <42.725803, 44.770714, 47.610188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.869411, 44.821312, 47.795704>,  <43.108757, 44.905643, 48.104900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869411, 44.821312, 47.795704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734072, -0.242378, 0.634343,
		-0.321095, 0.946997, -0.009735,
		-0.598361, -0.210831, -0.772991,
		42.689903, 44.758064, 47.563808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409172, 45.105648, 48.213528>,  <43.108757, 44.905643, 48.104900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409172, 45.105648, 48.213528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.325909, 44.833847, 47.932117>,  <42.275951, 44.670769, 47.763271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.325909, 44.833847, 47.932117>,  <42.409172, 45.105648, 48.213528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325909, 44.833847, 47.932117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636757, -0.451838, 0.624807,
		-0.742437, 0.578033, -0.338624,
		-0.208155, -0.679500, -0.703527,
		42.263462, 44.629997, 47.721058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803623, 44.906853, 48.372227>,  <42.409172, 45.105648, 48.213528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803623, 44.906853, 48.372227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.913742, 44.609230, 48.128723>,  <41.979813, 44.430656, 47.982620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.913742, 44.609230, 48.128723>,  <41.803623, 44.906853, 48.372227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913742, 44.609230, 48.128723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615022, -0.623000, 0.483341,
		-0.738892, 0.241340, -0.629121,
		0.275293, -0.744060, -0.608759,
		41.996330, 44.386013, 47.946095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244770, 44.576229, 48.184860>,  <41.803623, 44.906853, 48.372227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244770, 44.576229, 48.184860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.544853, 44.317879, 48.128231>,  <41.724903, 44.162868, 48.094254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.544853, 44.317879, 48.128231>,  <41.244770, 44.576229, 48.184860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544853, 44.317879, 48.128231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536128, -0.719498, 0.441464,
		-0.386988, -0.255289, -0.886040,
		0.750205, -0.645872, -0.141569,
		41.769917, 44.124119, 48.085762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995049, 43.995846, 47.776905>,  <41.244770, 44.576229, 48.184860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995049, 43.995846, 47.776905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.297901, 43.873009, 48.007538>,  <41.479614, 43.799309, 48.145916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.297901, 43.873009, 48.007538>,  <40.995049, 43.995846, 47.776905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297901, 43.873009, 48.007538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572974, -0.736109, 0.360339,
		0.313771, -0.603191, -0.733286,
		0.757132, -0.307090, 0.576583,
		41.525040, 43.780880, 48.180511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873341, 43.253124, 47.816265>,  <40.995049, 43.995846, 47.776905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873341, 43.253124, 47.816265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.132965, 43.309502, 48.115292>,  <41.288738, 43.343327, 48.294708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.132965, 43.309502, 48.115292>,  <40.873341, 43.253124, 47.816265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132965, 43.309502, 48.115292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454386, -0.716307, 0.529563,
		0.610127, -0.683402, -0.400883,
		0.649060, 0.140945, 0.747567,
		41.327682, 43.351784, 48.339561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.846874, 42.569988, 48.058220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017860, 42.780632, 48.352146>,  <41.120453, 42.907021, 48.528503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017860, 42.780632, 48.352146>,  <40.846874, 42.569988, 48.058220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017860, 42.780632, 48.352146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463988, -0.569798, 0.678267,
		0.775880, -0.630880, 0.000773,
		0.427465, 0.526612, 0.734816,
		41.146099, 42.938614, 48.572590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184971, 42.064896, 48.555096>,  <40.846874, 42.569988, 48.058220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184971, 42.064896, 48.555096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.106346, 42.394913, 48.767006>,  <41.059170, 42.592922, 48.894154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.106346, 42.394913, 48.767006>,  <41.184971, 42.064896, 48.555096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106346, 42.394913, 48.767006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371170, -0.562717, 0.738635,
		0.907522, -0.051449, 0.416842,
		-0.196562, 0.825047, 0.529774,
		41.047379, 42.642426, 48.925938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248768, 41.807499, 49.216412>,  <41.184971, 42.064896, 48.555096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248768, 41.807499, 49.216412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062778, 42.158722, 49.261673>,  <40.951183, 42.369457, 49.288830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062778, 42.158722, 49.261673>,  <41.248768, 41.807499, 49.216412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062778, 42.158722, 49.261673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438435, -0.339422, 0.832207,
		0.769136, 0.337345, 0.542796,
		-0.464977, 0.878061, 0.113158,
		40.923286, 42.422142, 49.295620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537720, 42.092560, 49.848026>,  <41.248768, 41.807499, 49.216412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537720, 42.092560, 49.848026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175087, 42.244583, 49.774628>,  <40.957508, 42.335796, 49.730591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175087, 42.244583, 49.774628>,  <41.537720, 42.092560, 49.848026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175087, 42.244583, 49.774628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318490, -0.330832, 0.888321,
		0.276912, 0.863772, 0.420971,
		-0.906578, 0.380062, -0.183492,
		40.903114, 42.358601, 49.719582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294411, 42.319450, 50.515408>,  <41.537720, 42.092560, 49.848026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294411, 42.319450, 50.515408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.952995, 42.311348, 50.307156>,  <40.748146, 42.306484, 50.182205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.952995, 42.311348, 50.307156>,  <41.294411, 42.319450, 50.515408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952995, 42.311348, 50.307156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503114, -0.227677, 0.833690,
		-0.135426, 0.973526, 0.184139,
		-0.853543, -0.020260, -0.520628,
		40.696934, 42.305271, 50.150967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835243, 42.783028, 50.861031>,  <41.294411, 42.319450, 50.515408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835243, 42.783028, 50.861031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.588860, 42.533592, 50.668480>,  <40.441029, 42.383930, 50.552948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.588860, 42.533592, 50.668480>,  <40.835243, 42.783028, 50.861031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588860, 42.533592, 50.668480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548231, -0.099488, 0.830388,
		-0.565715, 0.775393, -0.280592,
		-0.615962, -0.623592, -0.481377,
		40.404072, 42.346516, 50.524067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227058, 43.187973, 50.926533>,  <40.835243, 42.783028, 50.861031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227058, 43.187973, 50.926533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.146255, 42.804276, 50.847485>,  <40.097775, 42.574059, 50.800056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.146255, 42.804276, 50.847485>,  <40.227058, 43.187973, 50.926533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146255, 42.804276, 50.847485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790761, 0.040698, 0.610771,
		-0.577833, 0.279647, -0.766751,
		-0.202005, -0.959240, -0.197617,
		40.085655, 42.516502, 50.788200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453293, 43.122986, 50.772770>,  <40.227058, 43.187973, 50.926533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453293, 43.122986, 50.772770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574047, 42.753212, 50.865971>,  <39.646500, 42.531349, 50.921890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574047, 42.753212, 50.865971>,  <39.453293, 43.122986, 50.772770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574047, 42.753212, 50.865971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768973, -0.091654, 0.632677,
		-0.563512, -0.370168, -0.738532,
		0.301886, -0.924432, 0.233001,
		39.664612, 42.475883, 50.935871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834869, 42.806431, 50.907162>,  <39.453293, 43.122986, 50.772770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834869, 42.806431, 50.907162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.098042, 42.556564, 51.075409>,  <39.255947, 42.406647, 51.176357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.098042, 42.556564, 51.075409>,  <38.834869, 42.806431, 50.907162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098042, 42.556564, 51.075409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706583, -0.318839, 0.631729,
		-0.260505, -0.712841, -0.651149,
		0.657934, -0.624660, 0.420622,
		39.295422, 42.369167, 51.201595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386589, 42.370552, 51.027813>,  <38.834869, 42.806431, 50.907162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386589, 42.370552, 51.027813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.703766, 42.253700, 51.241692>,  <38.894073, 42.183590, 51.370018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.703766, 42.253700, 51.241692>,  <38.386589, 42.370552, 51.027813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703766, 42.253700, 51.241692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607573, -0.445078, 0.657845,
		0.045807, -0.846502, -0.530411,
		0.792942, -0.292129, 0.534700,
		38.941647, 42.166061, 51.402100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405872, 41.578724, 51.079662>,  <38.386589, 42.370552, 51.027813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405872, 41.578724, 51.079662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.623474, 41.702446, 51.391659>,  <38.754036, 41.776680, 51.578857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.623474, 41.702446, 51.391659>,  <38.405872, 41.578724, 51.079662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623474, 41.702446, 51.391659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652929, -0.427805, 0.625033,
		0.527009, -0.849302, -0.030777,
		0.544008, 0.309303, 0.779991,
		38.786678, 41.795238, 51.625656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532852, 41.044590, 51.512012>,  <38.405872, 41.578724, 51.079662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532852, 41.044590, 51.512012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572746, 41.360100, 51.754627>,  <38.596684, 41.549404, 51.900196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572746, 41.360100, 51.754627>,  <38.532852, 41.044590, 51.512012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572746, 41.360100, 51.754627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566632, -0.456057, 0.686251,
		0.817913, -0.412127, 0.401459,
		0.099734, 0.788773, 0.606539,
		38.602665, 41.596733, 51.936588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617805, 40.766415, 52.209637>,  <38.532852, 41.044590, 51.512012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617805, 40.766415, 52.209637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534523, 41.150330, 52.284966>,  <38.484554, 41.380676, 52.330162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534523, 41.150330, 52.284966>,  <38.617805, 40.766415, 52.209637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534523, 41.150330, 52.284966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478508, -0.267876, 0.836225,
		0.853042, 0.083994, 0.515038,
		-0.208204, 0.959785, 0.188317,
		38.472061, 41.438267, 52.341461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712067, 40.761013, 52.962223>,  <38.617805, 40.766415, 52.209637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712067, 40.761013, 52.962223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.498337, 41.084251, 52.863049>,  <38.370098, 41.278194, 52.803543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.498337, 41.084251, 52.863049>,  <38.712067, 40.761013, 52.962223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498337, 41.084251, 52.863049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461523, -0.033168, 0.886508,
		0.708163, 0.588112, 0.390679,
		-0.534324, 0.808099, -0.247939,
		38.338039, 41.326679, 52.788666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855938, 41.270760, 53.477562>,  <38.712067, 40.761013, 52.962223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855938, 41.270760, 53.477562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494091, 41.338402, 53.321068>,  <38.276981, 41.378986, 53.227169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494091, 41.338402, 53.321068>,  <38.855938, 41.270760, 53.477562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494091, 41.338402, 53.321068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408916, -0.085444, 0.908563,
		0.120211, 0.981888, 0.146443,
		-0.904620, 0.169102, -0.391239,
		38.222706, 41.389133, 53.203697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486912, 41.790447, 53.981403>,  <38.855938, 41.270760, 53.477562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486912, 41.790447, 53.981403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.210709, 41.605316, 53.759052>,  <38.044987, 41.494240, 53.625641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.210709, 41.605316, 53.759052>,  <38.486912, 41.790447, 53.981403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210709, 41.605316, 53.759052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629675, 0.006418, 0.776832,
		-0.355970, 0.886427, -0.295861,
		-0.690504, -0.462825, -0.555876,
		38.003559, 41.466469, 53.592289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904224, 42.124134, 54.205200>,  <38.486912, 41.790447, 53.981403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904224, 42.124134, 54.205200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761452, 41.794998, 54.028320>,  <37.675789, 41.597519, 53.922192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761452, 41.794998, 54.028320>,  <37.904224, 42.124134, 54.205200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761452, 41.794998, 54.028320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653974, -0.117910, 0.747272,
		-0.667022, 0.555912, -0.496028,
		-0.356931, -0.822836, -0.442200,
		37.654373, 41.548149, 53.895660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147877, 42.136837, 54.256134>,  <37.904224, 42.124134, 54.205200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147877, 42.136837, 54.256134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.238518, 41.759903, 54.157623>,  <37.292904, 41.533741, 54.098518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.238518, 41.759903, 54.157623>,  <37.147877, 42.136837, 54.256134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238518, 41.759903, 54.157623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450415, -0.325576, 0.831340,
		-0.863584, -0.077458, -0.498219,
		0.226603, -0.942338, -0.246274,
		37.306499, 41.477203, 54.083740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525455, 41.886219, 54.374783>,  <37.147877, 42.136837, 54.256134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525455, 41.886219, 54.374783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799080, 41.594528, 54.381641>,  <36.963253, 41.419514, 54.385757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799080, 41.594528, 54.381641>,  <36.525455, 41.886219, 54.374783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799080, 41.594528, 54.381641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434409, -0.388388, 0.812677,
		-0.585966, -0.563367, -0.582462,
		0.684057, -0.729227, 0.017150,
		37.004295, 41.375759, 54.386787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122635, 41.307503, 54.488346>,  <36.525455, 41.886219, 54.374783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122635, 41.307503, 54.488346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493031, 41.220451, 54.611755>,  <36.715267, 41.168221, 54.685802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493031, 41.220451, 54.611755>,  <36.122635, 41.307503, 54.488346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493031, 41.220451, 54.611755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374469, -0.425115, 0.824045,
		-0.048179, -0.878587, -0.475146,
		0.925987, -0.217629, 0.308522,
		36.770828, 41.155163, 54.704311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103436, 40.617962, 54.647770>,  <36.122635, 41.307503, 54.488346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103436, 40.617962, 54.647770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.440025, 40.732964, 54.830750>,  <36.641979, 40.801964, 54.940536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.440025, 40.732964, 54.830750>,  <36.103436, 40.617962, 54.647770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440025, 40.732964, 54.830750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271072, -0.507749, 0.817748,
		0.467377, -0.812116, -0.349323,
		0.841474, 0.287504, 0.457452,
		36.692467, 40.819214, 54.967983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396343, 39.997711, 54.942841>,  <36.103436, 40.617962, 54.647770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396343, 39.997711, 54.942841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544754, 40.305397, 55.150936>,  <36.633801, 40.490009, 55.275795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544754, 40.305397, 55.150936>,  <36.396343, 39.997711, 54.942841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544754, 40.305397, 55.150936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332738, -0.412911, 0.847815,
		0.866963, -0.487666, 0.102746,
		0.371025, 0.769212, 0.520244,
		36.656063, 40.536160, 55.307011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867352, 39.808372, 55.441631>,  <36.396343, 39.997711, 54.942841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867352, 39.808372, 55.441631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666958, 40.140327, 55.539860>,  <36.546722, 40.339500, 55.598797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666958, 40.140327, 55.539860>,  <36.867352, 39.808372, 55.441631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666958, 40.140327, 55.539860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375418, -0.464048, 0.802322,
		0.779795, 0.309755, 0.544033,
		-0.500981, 0.829886, 0.245575,
		36.516663, 40.389294, 55.613533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285145, 39.223930, 55.181049>,  <36.867352, 39.808372, 55.441631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285145, 39.223930, 55.181049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420883, 39.575935, 55.048134>,  <37.502327, 39.787140, 54.968384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420883, 39.575935, 55.048134>,  <37.285145, 39.223930, 55.181049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420883, 39.575935, 55.048134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104371, -0.315848, -0.943052,
		-0.934852, 0.354707, -0.015335,
		0.339350, 0.880013, -0.332292,
		37.522690, 39.839939, 54.948444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999069, 39.019840, 55.887386>,  <37.285145, 39.223930, 55.181049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999069, 39.019840, 55.887386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068161, 38.627159, 55.855324>,  <37.109615, 38.391552, 55.836086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068161, 38.627159, 55.855324>,  <36.999069, 39.019840, 55.887386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068161, 38.627159, 55.855324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637627, 0.173473, -0.750559,
		0.750730, 0.078539, 0.655924,
		0.172733, -0.981702, -0.080153,
		37.119980, 38.332649, 55.831280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826561, 38.933002, 55.846226>,  <36.999069, 39.019840, 55.887386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826561, 38.933002, 55.846226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.662445, 38.602707, 55.691402>,  <37.563976, 38.404530, 55.598507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.662445, 38.602707, 55.691402>,  <37.826561, 38.933002, 55.846226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662445, 38.602707, 55.691402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643450, 0.038643, -0.764512,
		0.646247, -0.562723, 0.515469,
		-0.410289, -0.825742, -0.387058,
		37.539360, 38.354984, 55.575287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354797, 38.581654, 55.594090>,  <37.826561, 38.933002, 55.846226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354797, 38.581654, 55.594090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063156, 38.399551, 55.389679>,  <37.888172, 38.290291, 55.267033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063156, 38.399551, 55.389679>,  <38.354797, 38.581654, 55.594090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063156, 38.399551, 55.389679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528014, 0.100891, -0.843222,
		0.435436, -0.884628, 0.166818,
		-0.729107, -0.455251, -0.511027,
		37.844425, 38.262978, 55.236370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691536, 38.061939, 55.268028>,  <38.354797, 38.581654, 55.594090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691536, 38.061939, 55.268028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347771, 38.135757, 55.077297>,  <38.141514, 38.180046, 54.962860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347771, 38.135757, 55.077297>,  <38.691536, 38.061939, 55.268028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347771, 38.135757, 55.077297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508352, 0.208603, -0.835502,
		-0.054719, -0.960432, -0.273088,
		-0.859409, 0.184543, -0.476823,
		38.089947, 38.191120, 54.934250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824856, 37.691978, 54.695240>,  <38.691536, 38.061939, 55.268028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824856, 37.691978, 54.695240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524864, 37.939903, 54.602837>,  <38.344868, 38.088657, 54.547394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524864, 37.939903, 54.602837>,  <38.824856, 37.691978, 54.695240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524864, 37.939903, 54.602837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453877, 0.228159, -0.861359,
		-0.481175, -0.750850, -0.452433,
		-0.749978, 0.619813, -0.231010,
		38.299870, 38.125847, 54.533535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572548, 37.500561, 54.013241>,  <38.824856, 37.691978, 54.695240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572548, 37.500561, 54.013241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435944, 37.870483, 54.080299>,  <38.353981, 38.092438, 54.120533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.435944, 37.870483, 54.080299>,  <38.572548, 37.500561, 54.013241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435944, 37.870483, 54.080299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486287, 0.326497, -0.810509,
		-0.804299, -0.195274, -0.561223,
		-0.341509, 0.924807, 0.167642,
		38.333492, 38.147926, 54.130592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652977, 37.670269, 53.324596>,  <38.572548, 37.500561, 54.013241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652977, 37.670269, 53.324596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595284, 37.981850, 53.568707>,  <38.560665, 38.168797, 53.715172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595284, 37.981850, 53.568707>,  <38.652977, 37.670269, 53.324596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595284, 37.981850, 53.568707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441681, 0.602560, -0.664710,
		-0.885502, 0.173671, -0.430958,
		-0.144237, 0.778948, 0.610275,
		38.552013, 38.215534, 53.751789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210747, 38.209145, 53.020260>,  <38.652977, 37.670269, 53.324596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210747, 38.209145, 53.020260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469070, 38.340714, 53.295868>,  <38.624065, 38.419655, 53.461231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.469070, 38.340714, 53.295868>,  <38.210747, 38.209145, 53.020260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469070, 38.340714, 53.295868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476752, 0.531157, -0.700414,
		-0.596358, 0.780822, 0.186210,
		0.645805, 0.328922, 0.689018,
		38.662811, 38.439388, 53.502575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535057, 38.728481, 52.676624>,  <38.210747, 38.209145, 53.020260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535057, 38.728481, 52.676624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753082, 38.774658, 53.008789>,  <38.883896, 38.802364, 53.208088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753082, 38.774658, 53.008789>,  <38.535057, 38.728481, 52.676624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753082, 38.774658, 53.008789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606623, 0.629391, -0.485670,
		-0.578718, 0.768466, 0.273029,
		0.545063, 0.115440, 0.830409,
		38.916599, 38.809292, 53.257912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516838, 39.488129, 52.934086>,  <38.535057, 38.728481, 52.676624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516838, 39.488129, 52.934086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850456, 39.302681, 53.053699>,  <39.050629, 39.191410, 53.125465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850456, 39.302681, 53.053699>,  <38.516838, 39.488129, 52.934086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850456, 39.302681, 53.053699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549237, 0.646695, -0.529268,
		0.051998, 0.605673, 0.794013,
		0.834048, -0.463622, 0.299031,
		39.100670, 39.163593, 53.143410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971165, 40.017570, 53.014530>,  <38.516838, 39.488129, 52.934086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971165, 40.017570, 53.014530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.194462, 39.690804, 52.956543>,  <39.328438, 39.494743, 52.921749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.194462, 39.690804, 52.956543>,  <38.971165, 40.017570, 53.014530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194462, 39.690804, 52.956543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538653, 0.489748, -0.685565,
		0.631048, 0.304621, 0.713431,
		0.558239, -0.816917, -0.144969,
		39.361935, 39.445728, 52.913052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661114, 40.341709, 52.906040>,  <38.971165, 40.017570, 53.014530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661114, 40.341709, 52.906040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693428, 39.970398, 52.760838>,  <39.712818, 39.747612, 52.673717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693428, 39.970398, 52.760838>,  <39.661114, 40.341709, 52.906040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693428, 39.970398, 52.760838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564889, 0.342699, -0.750638,
		0.821203, -0.144418, 0.552060,
		0.080785, -0.928278, -0.363006,
		39.717663, 39.691914, 52.651936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388710, 40.187965, 52.732590>,  <39.661114, 40.341709, 52.906040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388710, 40.187965, 52.732590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.147968, 39.952530, 52.516689>,  <40.003521, 39.811268, 52.387150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.147968, 39.952530, 52.516689>,  <40.388710, 40.187965, 52.732590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147968, 39.952530, 52.516689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412064, 0.350065, -0.841224,
		0.684085, -0.728707, 0.031849,
		-0.601856, -0.588592, -0.539748,
		39.967411, 39.775951, 52.354763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833378, 39.846653, 52.324036>,  <40.388710, 40.187965, 52.732590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833378, 39.846653, 52.324036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.473621, 39.848061, 52.149181>,  <40.257767, 39.848907, 52.044270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.473621, 39.848061, 52.149181>,  <40.833378, 39.846653, 52.324036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473621, 39.848061, 52.149181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408294, 0.364076, -0.837105,
		0.156202, -0.931363, -0.328884,
		-0.899387, 0.003524, -0.437140,
		40.203804, 39.849117, 52.018040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027077, 39.553783, 51.712658>,  <40.833378, 39.846653, 52.324036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027077, 39.553783, 51.712658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.663284, 39.709366, 51.653931>,  <40.445007, 39.802715, 51.618694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.663284, 39.709366, 51.653931>,  <41.027077, 39.553783, 51.712658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663284, 39.709366, 51.653931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224107, 0.161234, -0.961134,
		-0.350169, -0.907037, -0.233808,
		-0.909482, 0.388957, -0.146814,
		40.390438, 39.826054, 51.609886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789963, 39.322929, 51.096359>,  <41.027077, 39.553783, 51.712658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789963, 39.322929, 51.096359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.575253, 39.655693, 51.152637>,  <40.446426, 39.855350, 51.186405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.575253, 39.655693, 51.152637>,  <40.789963, 39.322929, 51.096359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575253, 39.655693, 51.152637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167023, 0.268231, -0.948765,
		-0.827025, -0.485778, -0.282929,
		-0.536779, 0.831909, 0.140698,
		40.414219, 39.905266, 51.194847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181435, 39.281460, 50.620220>,  <40.789963, 39.322929, 51.096359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181435, 39.281460, 50.620220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.294239, 39.652588, 50.717888>,  <40.361919, 39.875267, 50.776489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.294239, 39.652588, 50.717888>,  <40.181435, 39.281460, 50.620220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294239, 39.652588, 50.717888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145474, 0.210200, -0.966775,
		-0.948318, 0.308159, -0.075695,
		0.282009, 0.927822, 0.244166,
		40.378841, 39.930935, 50.791138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788078, 39.790562, 50.238945>,  <40.181435, 39.281460, 50.620220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788078, 39.790562, 50.238945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138084, 39.945976, 50.354446>,  <40.348087, 40.039227, 50.423748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138084, 39.945976, 50.354446>,  <39.788078, 39.790562, 50.238945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138084, 39.945976, 50.354446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293045, 0.049642, -0.954809,
		-0.385312, 0.920095, -0.070421,
		0.875020, 0.388536, 0.288757,
		40.400589, 40.062538, 50.441074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989693, 40.137295, 49.712940>,  <39.788078, 39.790562, 50.238945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989693, 40.137295, 49.712940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.331421, 40.173508, 49.917664>,  <40.536457, 40.195236, 50.040497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.331421, 40.173508, 49.917664>,  <39.989693, 40.137295, 49.712940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331421, 40.173508, 49.917664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514019, -0.001308, -0.857778,
		-0.076987, 0.995893, -0.047653,
		0.854317, 0.090533, 0.511807,
		40.587715, 40.200668, 50.071205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337231, 40.713169, 49.383270>,  <39.989693, 40.137295, 49.712940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337231, 40.713169, 49.383270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.589191, 40.471519, 49.578518>,  <40.740368, 40.326530, 49.695667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.589191, 40.471519, 49.578518>,  <40.337231, 40.713169, 49.383270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589191, 40.471519, 49.578518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548153, -0.099435, -0.830446,
		0.550227, 0.790664, 0.268517,
		0.629904, -0.604122, 0.488116,
		40.778164, 40.290283, 49.724953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.955658, 45.087685, 46.565418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275436, 45.009064, 46.792488>,  <42.467304, 44.961891, 46.928730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275436, 45.009064, 46.792488>,  <41.955658, 45.087685, 46.565418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275436, 45.009064, 46.792488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541421, 0.645185, -0.539072,
		-0.260300, 0.738310, 0.622207,
		0.799442, -0.196556, 0.567678,
		42.515270, 44.950096, 46.962791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332581, 45.702168, 46.854359>,  <41.955658, 45.087685, 46.565418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332581, 45.702168, 46.854359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590782, 45.397675, 46.829544>,  <42.745701, 45.214977, 46.814655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590782, 45.397675, 46.829544>,  <42.332581, 45.702168, 46.854359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590782, 45.397675, 46.829544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503113, 0.484919, -0.715353,
		0.574635, 0.430550, 0.696004,
		0.645501, -0.761236, -0.062036,
		42.784431, 45.169304, 46.810932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949165, 46.053604, 46.789215>,  <42.332581, 45.702168, 46.854359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949165, 46.053604, 46.789215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015537, 45.679848, 46.663120>,  <43.055363, 45.455593, 46.587463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015537, 45.679848, 46.663120>,  <42.949165, 46.053604, 46.789215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015537, 45.679848, 46.663120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590352, 0.350182, -0.727226,
		0.789906, -0.065429, 0.609728,
		0.165934, -0.934394, -0.315237,
		43.065319, 45.399529, 46.568550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703480, 46.039448, 46.757126>,  <42.949165, 46.053604, 46.789215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703480, 46.039448, 46.757126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596458, 45.714813, 46.549377>,  <43.532246, 45.520035, 46.424728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596458, 45.714813, 46.549377>,  <43.703480, 46.039448, 46.757126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596458, 45.714813, 46.549377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756798, 0.156622, -0.634607,
		0.596382, -0.562852, 0.572300,
		-0.267555, -0.811583, -0.519371,
		43.516193, 45.471336, 46.393566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359116, 45.706573, 46.436100>,  <43.703480, 46.039448, 46.757126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359116, 45.706573, 46.436100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056076, 45.543037, 46.232571>,  <43.874252, 45.444916, 46.110455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056076, 45.543037, 46.232571>,  <44.359116, 45.706573, 46.436100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056076, 45.543037, 46.232571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612730, -0.176784, -0.770266,
		0.224964, -0.895320, 0.384439,
		-0.757597, -0.408840, -0.508819,
		43.828796, 45.420387, 46.079926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594006, 45.008842, 46.310844>,  <44.359116, 45.706573, 46.436100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594006, 45.008842, 46.310844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.334167, 45.124596, 46.029625>,  <44.178265, 45.194046, 45.860893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.334167, 45.124596, 46.029625>,  <44.594006, 45.008842, 46.310844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334167, 45.124596, 46.029625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693129, -0.154557, -0.704049,
		-0.312400, -0.944654, -0.100178,
		-0.649599, 0.289381, -0.703050,
		44.139286, 45.211411, 45.818710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740662, 44.586132, 45.781872>,  <44.594006, 45.008842, 46.310844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740662, 44.586132, 45.781872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519508, 44.859566, 45.591278>,  <44.386818, 45.023624, 45.476921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519508, 44.859566, 45.591278>,  <44.740662, 44.586132, 45.781872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519508, 44.859566, 45.591278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562379, -0.115829, -0.818727,
		-0.614860, -0.720621, -0.320394,
		-0.552880, 0.683585, -0.476481,
		44.353645, 45.064640, 45.448334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523746, 44.293186, 45.128643>,  <44.740662, 44.586132, 45.781872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523746, 44.293186, 45.128643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512825, 44.691780, 45.096947>,  <44.506271, 44.930935, 45.077930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512825, 44.691780, 45.096947>,  <44.523746, 44.293186, 45.128643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512825, 44.691780, 45.096947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622351, -0.045091, -0.781438,
		-0.782262, -0.070648, -0.618930,
		-0.027299, 0.996482, -0.079241,
		44.504635, 44.990726, 45.073174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401806, 44.383728, 44.429264>,  <44.523746, 44.293186, 45.128643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401806, 44.383728, 44.429264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.554420, 44.736931, 44.538609>,  <44.645988, 44.948853, 44.604214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.554420, 44.736931, 44.538609>,  <44.401806, 44.383728, 44.429264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.554420, 44.736931, 44.538609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638089, -0.037636, -0.769042,
		-0.668782, 0.467847, -0.577797,
		0.381540, 0.883008, 0.273358,
		44.668884, 45.001835, 44.620617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319981, 44.908997, 43.874653>,  <44.401806, 44.383728, 44.429264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319981, 44.908997, 43.874653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631683, 45.019348, 44.099743>,  <44.818703, 45.085560, 44.234795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631683, 45.019348, 44.099743>,  <44.319981, 44.908997, 43.874653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631683, 45.019348, 44.099743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566315, 0.074606, -0.820805,
		-0.268425, 0.958293, -0.098098,
		0.779253, 0.275879, 0.562722,
		44.865459, 45.102112, 44.268559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712437, 45.351181, 43.450218>,  <44.319981, 44.908997, 43.874653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712437, 45.351181, 43.450218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951725, 45.247414, 43.753490>,  <45.095299, 45.185154, 43.935452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951725, 45.247414, 43.753490>,  <44.712437, 45.351181, 43.450218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951725, 45.247414, 43.753490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732110, -0.207744, -0.648736,
		0.325799, 0.943158, 0.065643,
		0.598223, -0.259415, 0.758177,
		45.131191, 45.169590, 43.980946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286961, 45.794037, 43.333572>,  <44.712437, 45.351181, 43.450218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286961, 45.794037, 43.333572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382568, 45.478882, 43.560589>,  <45.439934, 45.289791, 43.696800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382568, 45.478882, 43.560589>,  <45.286961, 45.794037, 43.333572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382568, 45.478882, 43.560589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762257, -0.209834, -0.612318,
		0.601527, 0.578971, 0.550417,
		0.239018, -0.787885, 0.567545,
		45.454273, 45.242516, 43.730854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897137, 45.851707, 43.429710>,  <45.286961, 45.794037, 43.333572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897137, 45.851707, 43.429710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806602, 45.463669, 43.464794>,  <45.752281, 45.230846, 43.485844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806602, 45.463669, 43.464794>,  <45.897137, 45.851707, 43.429710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806602, 45.463669, 43.464794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687679, -0.222909, -0.690948,
		0.689835, -0.096070, 0.717564,
		-0.226331, -0.970094, 0.087705,
		45.738705, 45.172642, 43.491104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.558472, 45.533848, 43.378586>,  <45.897137, 45.851707, 43.429710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.558472, 45.533848, 43.378586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280342, 45.253174, 43.316410>,  <46.113464, 45.084770, 43.279102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280342, 45.253174, 43.316410>,  <46.558472, 45.533848, 43.378586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280342, 45.253174, 43.316410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596904, -0.443368, -0.668678,
		0.400280, -0.557735, 0.727123,
		-0.695328, -0.701681, -0.155443,
		46.071743, 45.042671, 43.269775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646732, 45.141468, 44.007263>,  <46.558472, 45.533848, 43.378586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646732, 45.141468, 44.007263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.886604, 45.446220, 44.105175>,  <47.030525, 45.629074, 44.163921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.886604, 45.446220, 44.105175>,  <46.646732, 45.141468, 44.007263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886604, 45.446220, 44.105175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388771, 0.010007, 0.921280,
		0.699460, -0.647635, 0.302200,
		0.599677, 0.761885, 0.244782,
		47.066509, 45.674786, 44.178608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.866238, 45.128067, 44.719734>,  <46.646732, 45.141468, 44.007263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.866238, 45.128067, 44.719734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.969650, 45.508217, 44.650501>,  <47.031696, 45.736305, 44.608963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.969650, 45.508217, 44.650501>,  <46.866238, 45.128067, 44.719734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969650, 45.508217, 44.650501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293798, 0.248038, 0.923125,
		0.920242, -0.187806, 0.343342,
		0.258531, 0.950372, -0.173078,
		47.047211, 45.793327, 44.598579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316696, 45.158012, 45.193275>,  <46.866238, 45.128067, 44.719734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316696, 45.158012, 45.193275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.154572, 45.509888, 45.093777>,  <47.057297, 45.721012, 45.034077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.154572, 45.509888, 45.093777>,  <47.316696, 45.158012, 45.193275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.154572, 45.509888, 45.093777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226656, 0.166900, 0.959568,
		0.885637, 0.445300, 0.131741,
		-0.405308, 0.879689, -0.248743,
		47.032978, 45.773796, 45.019154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584389, 45.582066, 45.622086>,  <47.316696, 45.158012, 45.193275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584389, 45.582066, 45.622086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.233910, 45.736191, 45.506279>,  <47.023624, 45.828667, 45.436794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.233910, 45.736191, 45.506279>,  <47.584389, 45.582066, 45.622086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.233910, 45.736191, 45.506279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141280, 0.368971, 0.918640,
		0.460786, 0.845810, -0.268853,
		-0.876194, 0.385313, -0.289513,
		46.971050, 45.851784, 45.419426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.605446, 46.241314, 45.864601>,  <47.584389, 45.582066, 45.622086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.605446, 46.241314, 45.864601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.221664, 46.136726, 45.822479>,  <46.991398, 46.073975, 45.797207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.221664, 46.136726, 45.822479>,  <47.605446, 46.241314, 45.864601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221664, 46.136726, 45.822479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156152, 0.181999, 0.970821,
		-0.234675, 0.947898, -0.215448,
		-0.959450, -0.261470, -0.105306,
		46.933830, 46.058285, 45.790886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.295322, 46.740459, 46.273125>,  <47.605446, 46.241314, 45.864601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.295322, 46.740459, 46.273125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.999168, 46.479393, 46.208805>,  <46.821476, 46.322754, 46.170212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.999168, 46.479393, 46.208805>,  <47.295322, 46.740459, 46.273125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.999168, 46.479393, 46.208805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264734, 0.063239, 0.962246,
		-0.617857, 0.755001, -0.219604,
		-0.740385, -0.652666, -0.160801,
		46.777054, 46.283592, 46.160564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656643, 47.048931, 46.652199>,  <47.295322, 46.740459, 46.273125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656643, 47.048931, 46.652199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596634, 46.657166, 46.598175>,  <46.560631, 46.422108, 46.565762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596634, 46.657166, 46.598175>,  <46.656643, 47.048931, 46.652199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596634, 46.657166, 46.598175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356507, -0.073831, 0.931371,
		-0.922170, 0.187873, -0.338092,
		-0.150018, -0.979415, -0.135063,
		46.551628, 46.363342, 46.557655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.964302, 47.052212, 46.779022>,  <46.656643, 47.048931, 46.652199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.964302, 47.052212, 46.779022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.129845, 46.691055, 46.825520>,  <46.229168, 46.474361, 46.853416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.129845, 46.691055, 46.825520>,  <45.964302, 47.052212, 46.779022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129845, 46.691055, 46.825520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425109, -0.078767, 0.901709,
		-0.804989, -0.422591, -0.416425,
		0.413854, -0.902892, 0.116240,
		46.254002, 46.420189, 46.860394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388103, 46.537594, 46.958237>,  <45.964302, 47.052212, 46.779022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388103, 46.537594, 46.958237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.730042, 46.359818, 47.065353>,  <45.935204, 46.253151, 47.129623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.730042, 46.359818, 47.065353>,  <45.388103, 46.537594, 46.958237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730042, 46.359818, 47.065353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491542, -0.528311, 0.692297,
		-0.166210, -0.723436, -0.670086,
		0.854845, -0.444442, 0.267789,
		45.986496, 46.226486, 47.145691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182545, 45.895687, 47.025585>,  <45.388103, 46.537594, 46.958237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182545, 45.895687, 47.025585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540237, 45.920753, 47.202862>,  <45.754852, 45.935795, 47.309227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540237, 45.920753, 47.202862>,  <45.182545, 45.895687, 47.025585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540237, 45.920753, 47.202862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343944, -0.537441, 0.769974,
		0.286445, -0.840970, -0.459042,
		0.894233, 0.062670, 0.443194,
		45.808506, 45.939556, 47.335819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248810, 45.242142, 47.320549>,  <45.182545, 45.895687, 47.025585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248810, 45.242142, 47.320549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487228, 45.496490, 47.516666>,  <45.630280, 45.649101, 47.634338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487228, 45.496490, 47.516666>,  <45.248810, 45.242142, 47.320549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487228, 45.496490, 47.516666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299937, -0.390095, 0.870554,
		0.744823, -0.665951, -0.041794,
		0.596050, 0.635873, 0.490295,
		45.666042, 45.687252, 47.663754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593754, 44.878792, 47.899994>,  <45.248810, 45.242142, 47.320549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593754, 44.878792, 47.899994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.632477, 45.257812, 48.021835>,  <45.655712, 45.485226, 48.094940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.632477, 45.257812, 48.021835>,  <45.593754, 44.878792, 47.899994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632477, 45.257812, 48.021835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241663, -0.274500, 0.930725,
		0.965519, -0.163714, 0.202412,
		0.096810, 0.947548, 0.304599,
		45.661518, 45.542076, 48.113216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081554, 44.802948, 48.464901>,  <45.593754, 44.878792, 47.899994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081554, 44.802948, 48.464901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.895561, 45.152130, 48.523869>,  <45.783966, 45.361641, 48.559250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.895561, 45.152130, 48.523869>,  <46.081554, 44.802948, 48.464901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895561, 45.152130, 48.523869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211143, -0.271055, 0.939121,
		0.859771, 0.405552, 0.310356,
		-0.464986, 0.872959, 0.147416,
		45.756065, 45.414017, 48.568092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224846, 45.057606, 49.168346>,  <46.081554, 44.802948, 48.464901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224846, 45.057606, 49.168346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.900085, 45.271210, 49.073986>,  <45.705227, 45.399372, 49.017372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.900085, 45.271210, 49.073986>,  <46.224846, 45.057606, 49.168346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900085, 45.271210, 49.073986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385938, -0.187785, 0.903210,
		0.438022, 0.824362, 0.358557,
		-0.811904, 0.534007, -0.235899,
		45.656513, 45.431412, 49.003216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699131, 45.110764, 49.857628>,  <46.224846, 45.057606, 49.168346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699131, 45.110764, 49.857628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.940117, 44.829407, 50.008507>,  <47.084709, 44.660591, 50.099033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.940117, 44.829407, 50.008507>,  <46.699131, 45.110764, 49.857628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.940117, 44.829407, 50.008507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670835, 0.190184, -0.716805,
		0.432460, 0.684884, 0.586441,
		0.602460, -0.703394, 0.377197,
		47.120853, 44.618389, 50.121666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.345905, 45.425011, 50.080368>,  <46.699131, 45.110764, 49.857628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.345905, 45.425011, 50.080368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.418045, 45.040138, 49.998703>,  <47.461330, 44.809216, 49.949703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.418045, 45.040138, 49.998703>,  <47.345905, 45.425011, 50.080368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418045, 45.040138, 49.998703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659347, 0.272286, -0.700801,
		0.729887, -0.008221, 0.683518,
		0.180351, -0.962181, -0.204158,
		47.472149, 44.751484, 49.937454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054882, 45.330551, 50.104565>,  <47.345905, 45.425011, 50.080368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054882, 45.330551, 50.104565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.906685, 45.019829, 49.900879>,  <47.817764, 44.833393, 49.778667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.906685, 45.019829, 49.900879>,  <48.054882, 45.330551, 50.104565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.906685, 45.019829, 49.900879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793290, 0.020526, -0.608498,
		0.483139, -0.629400, 0.608631,
		-0.370496, -0.776810, -0.509214,
		47.795536, 44.786785, 49.748116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.692074, 45.014153, 49.806637>,  <48.054882, 45.330551, 50.104565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.692074, 45.014153, 49.806637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.427803, 44.798134, 49.598080>,  <48.269241, 44.668522, 49.472946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.427803, 44.798134, 49.598080>,  <48.692074, 45.014153, 49.806637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.427803, 44.798134, 49.598080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719704, -0.258257, -0.644461,
		0.213388, -0.801029, 0.559301,
		-0.660676, -0.540052, -0.521394,
		48.229599, 44.636120, 49.441662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.123299, 44.478527, 49.670696>,  <48.692074, 45.014153, 49.806637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.123299, 44.478527, 49.670696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.832359, 44.500153, 49.397041>,  <48.657795, 44.513130, 49.232849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.832359, 44.500153, 49.397041>,  <49.123299, 44.478527, 49.670696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.832359, 44.500153, 49.397041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615466, -0.389603, -0.685136,
		-0.303583, -0.919394, 0.250102,
		-0.727350, 0.054066, -0.684133,
		48.614155, 44.516373, 49.191803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.085842, 43.822163, 49.389053>,  <49.123299, 44.478527, 49.670696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.085842, 43.822163, 49.389053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.947395, 44.099449, 49.136181>,  <48.864326, 44.265820, 48.984455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.947395, 44.099449, 49.136181>,  <49.085842, 43.822163, 49.389053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.947395, 44.099449, 49.136181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668777, -0.290281, -0.684452,
		-0.657984, -0.659688, -0.363137,
		-0.346113, 0.693216, -0.632184,
		48.843563, 44.307415, 48.946526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.016689, 43.495968, 48.679485>,  <49.085842, 43.822163, 49.389053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.016689, 43.495968, 48.679485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.969582, 43.880226, 48.578857>,  <48.941319, 44.110783, 48.518482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.969582, 43.880226, 48.578857>,  <49.016689, 43.495968, 48.679485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.969582, 43.880226, 48.578857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629325, -0.123764, -0.767224,
		-0.768167, -0.248670, -0.589985,
		-0.117767, 0.960648, -0.251566,
		48.934250, 44.168419, 48.503387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.825153, 43.476704, 47.986996>,  <49.016689, 43.495968, 48.679485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.825153, 43.476704, 47.986996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.966728, 43.848427, 48.029148>,  <49.051674, 44.071461, 48.054440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.966728, 43.848427, 48.029148>,  <48.825153, 43.476704, 47.986996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.966728, 43.848427, 48.029148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660913, -0.168800, -0.731232,
		-0.661755, 0.328458, -0.673940,
		0.353940, 0.929313, 0.105378,
		49.072910, 44.127220, 48.060760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.982376, 43.736553, 47.284031>,  <48.825153, 43.476704, 47.986996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.982376, 43.736553, 47.284031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.215370, 43.970657, 47.509659>,  <49.355167, 44.111118, 47.645035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.215370, 43.970657, 47.509659>,  <48.982376, 43.736553, 47.284031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.215370, 43.970657, 47.509659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730572, -0.072739, -0.678950,
		-0.356332, 0.807577, -0.469944,
		0.582488, 0.585259, 0.564074,
		49.390118, 44.146236, 47.678883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.208725, 44.349293, 46.874725>,  <48.982376, 43.736553, 47.284031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.208725, 44.349293, 46.874725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.476624, 44.356255, 47.171680>,  <49.637363, 44.360432, 47.349854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.476624, 44.356255, 47.171680>,  <49.208725, 44.349293, 46.874725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.476624, 44.356255, 47.171680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741506, -0.069636, -0.667323,
		0.040085, 0.997421, -0.059541,
		0.669748, 0.017400, 0.742385,
		49.677547, 44.361473, 47.394398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.732414, 44.833824, 46.649216>,  <49.208725, 44.349293, 46.874725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.732414, 44.833824, 46.649216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.906525, 44.598679, 46.921963>,  <50.010990, 44.457592, 47.085613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.906525, 44.598679, 46.921963>,  <49.732414, 44.833824, 46.649216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.906525, 44.598679, 46.921963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768235, -0.152369, -0.621771,
		0.469414, 0.794479, 0.385297,
		0.435277, -0.587866, 0.681871,
		50.037109, 44.422318, 47.126526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.386471, 45.138496, 46.822659>,  <49.732414, 44.833824, 46.649216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.386471, 45.138496, 46.822659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<50.427017, 44.752449, 46.919212>,  <50.451344, 44.520821, 46.977142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<50.427017, 44.752449, 46.919212>,  <50.386471, 45.138496, 46.822659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.427017, 44.752449, 46.919212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834324, -0.049687, -0.549031,
		0.541875, 0.257044, 0.800187,
		0.101367, -0.965122, 0.241382,
		50.457428, 44.462914, 46.991627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<45.395920, 44.497543, 53.326057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514771, 44.119492, 53.271736>,  <45.586082, 43.892658, 53.239143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514771, 44.119492, 53.271736>,  <45.395920, 44.497543, 53.326057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514771, 44.119492, 53.271736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483837, 0.271643, -0.831933,
		0.823175, 0.181485, 0.538002,
		0.297128, -0.945131, -0.135800,
		45.603909, 43.835953, 53.230995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086197, 44.477127, 53.418488>,  <45.395920, 44.497543, 53.326057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086197, 44.477127, 53.418488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016869, 44.146385, 53.204468>,  <45.975273, 43.947941, 53.076057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016869, 44.146385, 53.204468>,  <46.086197, 44.477127, 53.418488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016869, 44.146385, 53.204468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559693, 0.364324, -0.744320,
		0.810373, -0.428469, 0.399638,
		-0.173321, -0.826851, -0.535049,
		45.964870, 43.898331, 53.043953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.798321, 44.221107, 53.163158>,  <46.086197, 44.477127, 53.418488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.798321, 44.221107, 53.163158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510078, 44.076523, 52.926491>,  <46.337132, 43.989773, 52.784492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510078, 44.076523, 52.926491>,  <46.798321, 44.221107, 53.163158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510078, 44.076523, 52.926491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529782, 0.263440, -0.806182,
		0.447271, -0.894397, 0.001657,
		-0.720610, -0.361460, -0.591665,
		46.293896, 43.968086, 52.748993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.167023, 43.821484, 52.556782>,  <46.798321, 44.221107, 53.163158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.167023, 43.821484, 52.556782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793968, 43.880653, 52.425140>,  <46.570137, 43.916157, 52.346157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793968, 43.880653, 52.425140>,  <47.167023, 43.821484, 52.556782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.793968, 43.880653, 52.425140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357472, 0.254917, -0.898461,
		-0.049013, -0.955581, -0.290624,
		-0.932637, 0.147926, -0.329099,
		46.514175, 43.925030, 52.326412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.135662, 43.462887, 51.954308>,  <47.167023, 43.821484, 52.556782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.135662, 43.462887, 51.954308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835579, 43.727097, 51.942310>,  <46.655529, 43.885620, 51.935112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835579, 43.727097, 51.942310>,  <47.135662, 43.462887, 51.954308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835579, 43.727097, 51.942310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212748, 0.198195, -0.956795,
		-0.626040, -0.724176, -0.289212,
		-0.750208, 0.660522, -0.029989,
		46.610516, 43.925255, 51.933315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647568, 43.203411, 51.467392>,  <47.135662, 43.462887, 51.954308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647568, 43.203411, 51.467392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605934, 43.598869, 51.510757>,  <46.580956, 43.836143, 51.536777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605934, 43.598869, 51.510757>,  <46.647568, 43.203411, 51.467392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605934, 43.598869, 51.510757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271394, 0.133098, -0.953221,
		-0.956824, -0.069791, -0.282165,
		-0.104082, 0.988642, 0.108411,
		46.574711, 43.895462, 51.543282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434628, 43.499973, 50.834660>,  <46.647568, 43.203411, 51.467392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434628, 43.499973, 50.834660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547577, 43.843498, 51.005638>,  <46.615345, 44.049614, 51.108223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547577, 43.843498, 51.005638>,  <46.434628, 43.499973, 50.834660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547577, 43.843498, 51.005638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255885, 0.362003, -0.896369,
		-0.924548, 0.362486, -0.117537,
		0.282373, 0.858812, 0.427443,
		46.632290, 44.101143, 51.133873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061066, 43.945038, 50.463364>,  <46.434628, 43.499973, 50.834660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061066, 43.945038, 50.463364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.373482, 44.134483, 50.626179>,  <46.560932, 44.248150, 50.723866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.373482, 44.134483, 50.626179>,  <46.061066, 43.945038, 50.463364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373482, 44.134483, 50.626179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233371, 0.383211, -0.893693,
		-0.579241, 0.792997, 0.188775,
		0.781036, 0.473609, 0.407034,
		46.607792, 44.276566, 50.748287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197533, 44.701115, 50.212608>,  <46.061066, 43.945038, 50.463364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197533, 44.701115, 50.212608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554817, 44.583809, 50.348946>,  <46.769188, 44.513428, 50.430748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554817, 44.583809, 50.348946>,  <46.197533, 44.701115, 50.212608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554817, 44.583809, 50.348946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438372, 0.399350, -0.805202,
		0.100021, 0.868630, 0.485261,
		0.893211, -0.293262, 0.340840,
		46.822781, 44.495831, 50.451199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951145, 45.331665, 49.839642>,  <46.197533, 44.701115, 50.212608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951145, 45.331665, 49.839642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637177, 45.409706, 49.604412>,  <45.448795, 45.456532, 49.463272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637177, 45.409706, 49.604412>,  <45.951145, 45.331665, 49.839642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637177, 45.409706, 49.604412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612192, -0.097897, 0.784625,
		0.095514, 0.975884, 0.196283,
		-0.784919, 0.195106, -0.588078,
		45.401699, 45.468239, 49.427990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557003, 45.816948, 50.245461>,  <45.951145, 45.331665, 49.839642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557003, 45.816948, 50.245461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302879, 45.651245, 49.984760>,  <45.150406, 45.551823, 49.828339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302879, 45.651245, 49.984760>,  <45.557003, 45.816948, 50.245461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302879, 45.651245, 49.984760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609196, -0.249857, 0.752630,
		-0.474624, 0.875195, -0.093626,
		-0.635305, -0.414252, -0.651754,
		45.112289, 45.526970, 49.789234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868988, 46.026978, 50.414040>,  <45.557003, 45.816948, 50.245461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868988, 46.026978, 50.414040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829872, 45.690498, 50.201313>,  <44.806404, 45.488613, 50.073677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829872, 45.690498, 50.201313>,  <44.868988, 46.026978, 50.414040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829872, 45.690498, 50.201313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712925, -0.313642, 0.627189,
		-0.694389, 0.440477, -0.569038,
		-0.097788, -0.841195, -0.531816,
		44.800537, 45.438141, 50.041767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157093, 45.965496, 50.437374>,  <44.868988, 46.026978, 50.414040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157093, 45.965496, 50.437374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271244, 45.609215, 50.295830>,  <44.339733, 45.395447, 50.210903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271244, 45.609215, 50.295830>,  <44.157093, 45.965496, 50.437374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271244, 45.609215, 50.295830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690174, -0.447162, 0.568952,
		-0.664997, 0.081860, -0.742346,
		0.285374, -0.890699, -0.353859,
		44.356857, 45.342007, 50.189671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620583, 45.600941, 50.163082>,  <44.157093, 45.965496, 50.437374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620583, 45.600941, 50.163082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874771, 45.313080, 50.274994>,  <44.027283, 45.140362, 50.342140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874771, 45.313080, 50.274994>,  <43.620583, 45.600941, 50.163082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874771, 45.313080, 50.274994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762376, -0.527398, 0.375011,
		-0.122324, -0.451604, -0.883793,
		0.635467, -0.719656, 0.279779,
		44.065411, 45.097183, 50.358929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289757, 44.883102, 50.038567>,  <43.620583, 45.600941, 50.163082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289757, 44.883102, 50.038567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605835, 44.793877, 50.266891>,  <43.795483, 44.740341, 50.403889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605835, 44.793877, 50.266891>,  <43.289757, 44.883102, 50.038567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605835, 44.793877, 50.266891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598567, -0.480852, 0.640702,
		0.131559, -0.847952, -0.513488,
		0.790197, -0.223067, 0.570816,
		43.842896, 44.726955, 50.438137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183098, 44.152344, 50.282204>,  <43.289757, 44.883102, 50.038567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183098, 44.152344, 50.282204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423290, 44.336761, 50.543541>,  <43.567406, 44.447414, 50.700344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423290, 44.336761, 50.543541>,  <43.183098, 44.152344, 50.282204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423290, 44.336761, 50.543541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590329, -0.295527, 0.751116,
		0.539381, -0.836719, 0.094712,
		0.600482, 0.461049, 0.653341,
		43.603436, 44.475075, 50.739544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276100, 43.644455, 50.887516>,  <43.183098, 44.152344, 50.282204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276100, 43.644455, 50.887516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364136, 44.010979, 51.021351>,  <43.416958, 44.230892, 51.101650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364136, 44.010979, 51.021351>,  <43.276100, 43.644455, 50.887516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364136, 44.010979, 51.021351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613790, -0.136502, 0.777579,
		0.758172, -0.376499, 0.532376,
		0.220087, 0.916306, 0.334583,
		43.430161, 44.285870, 51.121727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268681, 43.549080, 51.628544>,  <43.276100, 43.644455, 50.887516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268681, 43.549080, 51.628544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264236, 43.946136, 51.580322>,  <43.261570, 44.184372, 51.551388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264236, 43.946136, 51.580322>,  <43.268681, 43.549080, 51.628544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264236, 43.946136, 51.580322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730434, 0.074278, 0.678933,
		0.682893, 0.095606, 0.724235,
		-0.011115, 0.992644, -0.120558,
		43.260902, 44.243931, 51.544155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313747, 43.877213, 52.300102>,  <43.268681, 43.549080, 51.628544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313747, 43.877213, 52.300102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161728, 44.168983, 52.072594>,  <43.070515, 44.344048, 51.936089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161728, 44.168983, 52.072594>,  <43.313747, 43.877213, 52.300102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161728, 44.168983, 52.072594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713649, 0.159955, 0.681997,
		0.588444, 0.665095, 0.459763,
		-0.380051, 0.729426, -0.568769,
		43.047714, 44.387810, 51.901962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283497, 44.532207, 52.701954>,  <43.313747, 43.877213, 52.300102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283497, 44.532207, 52.701954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005829, 44.546890, 52.414406>,  <42.839230, 44.555698, 52.241875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005829, 44.546890, 52.414406>,  <43.283497, 44.532207, 52.701954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005829, 44.546890, 52.414406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703211, 0.178651, 0.688170,
		0.153688, 0.983227, -0.098202,
		-0.694171, 0.036707, -0.718873,
		42.797577, 44.557903, 52.198746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751354, 44.878826, 53.095947>,  <43.283497, 44.532207, 52.701954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751354, 44.878826, 53.095947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561905, 44.818359, 52.748882>,  <42.448235, 44.782082, 52.540646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561905, 44.818359, 52.748882>,  <42.751354, 44.878826, 53.095947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561905, 44.818359, 52.748882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876044, -0.020604, 0.481791,
		-0.090706, 0.988294, -0.122666,
		-0.473623, -0.151163, -0.867658,
		42.419819, 44.773010, 52.488586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209911, 45.410839, 52.958721>,  <42.751354, 44.878826, 53.095947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209911, 45.410839, 52.958721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077435, 45.103088, 52.740231>,  <41.997948, 44.918438, 52.609135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077435, 45.103088, 52.740231>,  <42.209911, 45.410839, 52.958721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077435, 45.103088, 52.740231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844486, -0.016532, 0.535323,
		-0.420896, 0.638580, -0.644253,
		-0.331195, -0.769378, -0.546230,
		41.978077, 44.872276, 52.576363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467915, 45.522785, 52.749714>,  <42.209911, 45.410839, 52.958721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467915, 45.522785, 52.749714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511337, 45.126114, 52.722054>,  <41.537392, 44.888111, 52.705456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511337, 45.126114, 52.722054>,  <41.467915, 45.522785, 52.749714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511337, 45.126114, 52.722054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780793, -0.128118, 0.611513,
		-0.615286, -0.012391, -0.788207,
		0.108560, -0.991682, -0.069154,
		41.543907, 44.828609, 52.701305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.732304, 37.385136, 52.496033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.677662, 37.781281, 52.486916>,  <42.644878, 38.018967, 52.481445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.677662, 37.781281, 52.486916>,  <42.732304, 37.385136, 52.496033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677662, 37.781281, 52.486916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376508, 0.030622, -0.925907,
		-0.916287, -0.135061, -0.377063,
		-0.136601, 0.990364, -0.022793,
		42.636681, 38.078388, 52.480080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391479, 37.454239, 51.870560>,  <42.732304, 37.385136, 52.496033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391479, 37.454239, 51.870560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.577972, 37.789696, 51.983212>,  <42.689869, 37.990971, 52.050804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.577972, 37.789696, 51.983212>,  <42.391479, 37.454239, 51.870560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577972, 37.789696, 51.983212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479365, 0.028072, -0.877166,
		-0.743532, 0.543964, -0.388927,
		0.466229, 0.838639, 0.281630,
		42.717842, 38.041286, 52.067699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405415, 37.895847, 51.261471>,  <42.391479, 37.454239, 51.870560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405415, 37.895847, 51.261471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.692928, 38.025848, 51.507309>,  <42.865437, 38.103848, 51.654812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.692928, 38.025848, 51.507309>,  <42.405415, 37.895847, 51.261471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692928, 38.025848, 51.507309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569427, 0.231975, -0.788632,
		-0.398878, 0.916821, -0.018326,
		0.718783, 0.325003, 0.614593,
		42.908562, 38.123348, 51.691689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593555, 38.523609, 51.031441>,  <42.405415, 37.895847, 51.261471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593555, 38.523609, 51.031441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.901291, 38.443825, 51.274200>,  <43.085934, 38.395954, 51.419857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.901291, 38.443825, 51.274200>,  <42.593555, 38.523609, 51.031441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901291, 38.443825, 51.274200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637442, 0.302441, -0.708659,
		-0.042201, 0.932065, 0.359826,
		0.769342, -0.199462, 0.606901,
		43.132092, 38.383987, 51.456272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896381, 39.087563, 50.917683>,  <42.593555, 38.523609, 51.031441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896381, 39.087563, 50.917683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.167953, 38.838470, 51.073254>,  <43.330898, 38.689014, 51.166595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.167953, 38.838470, 51.073254>,  <42.896381, 39.087563, 50.917683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167953, 38.838470, 51.073254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657164, 0.279205, -0.700128,
		0.327399, 0.730926, 0.598796,
		0.678929, -0.622729, 0.388927,
		43.371632, 38.651653, 51.189930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446011, 39.423183, 50.956772>,  <42.896381, 39.087563, 50.917683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446011, 39.423183, 50.956772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.577084, 39.045471, 50.944427>,  <43.655727, 38.818844, 50.937019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.577084, 39.045471, 50.944427>,  <43.446011, 39.423183, 50.956772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577084, 39.045471, 50.944427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597378, 0.232387, -0.767552,
		0.731957, 0.233081, 0.640243,
		0.327686, -0.944282, -0.030860,
		43.675388, 38.762188, 50.935169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201683, 39.423206, 50.960953>,  <43.446011, 39.423183, 50.956772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201683, 39.423206, 50.960953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.099060, 39.071152, 50.801186>,  <44.037487, 38.859917, 50.705326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.099060, 39.071152, 50.801186>,  <44.201683, 39.423206, 50.960953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099060, 39.071152, 50.801186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648279, 0.149811, -0.746519,
		0.716878, -0.450456, 0.532142,
		-0.256554, -0.880140, -0.399418,
		44.022095, 38.807110, 50.681362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874264, 39.168171, 50.711620>,  <44.201683, 39.423206, 50.960953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874264, 39.168171, 50.711620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.583878, 38.968834, 50.522038>,  <44.409645, 38.849232, 50.408287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.583878, 38.968834, 50.522038>,  <44.874264, 39.168171, 50.711620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583878, 38.968834, 50.522038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530884, 0.032027, -0.846839,
		0.437195, -0.866389, 0.241312,
		-0.725963, -0.498343, -0.473954,
		44.366089, 38.819332, 50.379852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231228, 38.689285, 50.333023>,  <44.874264, 39.168171, 50.711620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231228, 38.689285, 50.333023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.865623, 38.680267, 50.170998>,  <44.646259, 38.674854, 50.073780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.865623, 38.680267, 50.170998>,  <45.231228, 38.689285, 50.333023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865623, 38.680267, 50.170998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404211, -0.135863, -0.904519,
		-0.034638, -0.990471, 0.133295,
		-0.914010, -0.022549, -0.405066,
		44.591419, 38.673504, 50.049477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035980, 38.039791, 49.922722>,  <45.231228, 38.689285, 50.333023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035980, 38.039791, 49.922722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.821087, 38.343254, 49.775311>,  <44.692150, 38.525333, 49.686863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.821087, 38.343254, 49.775311>,  <45.035980, 38.039791, 49.922722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821087, 38.343254, 49.775311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455487, -0.106783, -0.883815,
		-0.709867, -0.642677, -0.288193,
		-0.537233, 0.758659, -0.368533,
		44.659916, 38.570850, 49.664749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909416, 37.830578, 49.258545>,  <45.035980, 38.039791, 49.922722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909416, 37.830578, 49.258545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.817207, 38.219398, 49.240765>,  <44.761883, 38.452690, 49.230095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.817207, 38.219398, 49.240765>,  <44.909416, 37.830578, 49.258545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817207, 38.219398, 49.240765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550953, 0.092730, -0.829368,
		-0.802066, -0.215682, -0.556931,
		-0.230524, 0.972051, -0.044455,
		44.748051, 38.511013, 49.227428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637779, 38.031750, 48.542046>,  <44.909416, 37.830578, 49.258545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637779, 38.031750, 48.542046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.762962, 38.380836, 48.691933>,  <44.838074, 38.590290, 48.781864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.762962, 38.380836, 48.691933>,  <44.637779, 38.031750, 48.542046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762962, 38.380836, 48.691933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590236, 0.130388, -0.796630,
		-0.744094, 0.470489, -0.474304,
		0.312962, 0.872719, 0.374721,
		44.856850, 38.642651, 48.804348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663509, 38.438023, 47.957203>,  <44.637779, 38.031750, 48.542046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663509, 38.438023, 47.957203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.881416, 38.638275, 48.226303>,  <45.012161, 38.758427, 48.387764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.881416, 38.638275, 48.226303>,  <44.663509, 38.438023, 47.957203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881416, 38.638275, 48.226303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651369, 0.252644, -0.715465,
		-0.528150, 0.827973, -0.188463,
		0.544771, 0.500632, 0.672750,
		45.044849, 38.788464, 48.428127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751907, 39.137058, 47.696800>,  <44.663509, 38.438023, 47.957203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751907, 39.137058, 47.696800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.053749, 39.107727, 47.957626>,  <45.234856, 39.090126, 48.114124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.053749, 39.107727, 47.957626>,  <44.751907, 39.137058, 47.696800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053749, 39.107727, 47.957626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616638, 0.419002, -0.666480,
		-0.224344, 0.905019, 0.361401,
		0.754605, -0.073333, 0.652069,
		45.280132, 39.085728, 48.153248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241020, 39.749348, 47.463139>,  <44.751907, 39.137058, 47.696800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241020, 39.749348, 47.463139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.001724, 39.998611, 47.261631>,  <43.858147, 40.148170, 47.140724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.001724, 39.998611, 47.261631>,  <44.241020, 39.749348, 47.463139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001724, 39.998611, 47.261631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782762, -0.319936, 0.533783,
		0.171456, 0.713663, 0.679182,
		-0.598236, 0.623159, -0.503773,
		43.822254, 40.185558, 47.110500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856300, 40.230598, 47.911995>,  <44.241020, 39.749348, 47.463139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856300, 40.230598, 47.911995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.613956, 40.199173, 47.595322>,  <43.468552, 40.180317, 47.405319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.613956, 40.199173, 47.595322>,  <43.856300, 40.230598, 47.911995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613956, 40.199173, 47.595322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705693, -0.406389, 0.580384,
		-0.367331, 0.910316, 0.190770,
		-0.605860, -0.078568, -0.791682,
		43.432198, 40.175602, 47.357819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284847, 40.741356, 47.934963>,  <43.856300, 40.230598, 47.911995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284847, 40.741356, 47.934963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.148033, 40.451469, 47.695698>,  <43.065945, 40.277538, 47.552139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.148033, 40.451469, 47.695698>,  <43.284847, 40.741356, 47.934963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148033, 40.451469, 47.695698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817519, -0.084373, 0.569687,
		-0.463330, 0.683865, -0.563609,
		-0.342036, -0.724714, -0.598165,
		43.045422, 40.234055, 47.516247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489536, 40.858604, 47.898670>,  <43.284847, 40.741356, 47.934963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489536, 40.858604, 47.898670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.538132, 40.479820, 47.779667>,  <42.567287, 40.252552, 47.708263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.538132, 40.479820, 47.779667>,  <42.489536, 40.858604, 47.898670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538132, 40.479820, 47.779667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905025, -0.228769, 0.358600,
		-0.407640, 0.225689, -0.884813,
		0.121486, -0.946958, -0.297509,
		42.574577, 40.195732, 47.690414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935406, 40.734303, 47.547173>,  <42.489536, 40.858604, 47.898670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935406, 40.734303, 47.547173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085556, 40.377632, 47.648376>,  <42.175648, 40.163631, 47.709099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085556, 40.377632, 47.648376>,  <41.935406, 40.734303, 47.547173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085556, 40.377632, 47.648376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846182, -0.218285, 0.486136,
		-0.378247, -0.396573, -0.836456,
		0.375374, -0.891674, 0.253007,
		42.198170, 40.110130, 47.724277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350018, 40.303680, 47.577637>,  <41.935406, 40.734303, 47.547173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350018, 40.303680, 47.577637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620892, 40.125122, 47.811611>,  <41.783417, 40.017986, 47.951996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620892, 40.125122, 47.811611>,  <41.350018, 40.303680, 47.577637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620892, 40.125122, 47.811611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715596, -0.214476, 0.664773,
		-0.171298, -0.868752, -0.464680,
		0.677185, -0.446397, 0.584936,
		41.824047, 39.991203, 47.987091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974289, 39.796135, 47.937801>,  <41.350018, 40.303680, 47.577637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974289, 39.796135, 47.937801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.320724, 39.834045, 48.134129>,  <41.528587, 39.856792, 48.251926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.320724, 39.834045, 48.134129>,  <40.974289, 39.796135, 47.937801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320724, 39.834045, 48.134129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495338, 0.030539, 0.868164,
		0.067289, -0.995030, 0.073394,
		0.866090, 0.094773, 0.490821,
		41.580551, 39.862476, 48.281376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874615, 39.369057, 48.505383>,  <40.974289, 39.796135, 47.937801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874615, 39.369057, 48.505383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.191490, 39.570381, 48.643433>,  <41.381615, 39.691177, 48.726261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.191490, 39.570381, 48.643433>,  <40.874615, 39.369057, 48.505383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191490, 39.570381, 48.643433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467662, 0.137337, 0.873173,
		0.392084, -0.853119, 0.344179,
		0.792189, 0.503316, 0.345123,
		41.429146, 39.721375, 48.746971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903294, 39.025143, 49.165390>,  <40.874615, 39.369057, 48.505383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903294, 39.025143, 49.165390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.103771, 39.371101, 49.176441>,  <41.224056, 39.578678, 49.183071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.103771, 39.371101, 49.176441>,  <40.903294, 39.025143, 49.165390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103771, 39.371101, 49.176441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389783, 0.197136, 0.899559,
		0.772579, -0.461618, 0.435925,
		0.501189, 0.864897, 0.027628,
		41.254128, 39.630569, 49.184731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213242, 39.095192, 49.895214>,  <40.903294, 39.025143, 49.165390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213242, 39.095192, 49.895214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200970, 39.465561, 49.744633>,  <41.193607, 39.687782, 49.654282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200970, 39.465561, 49.744633>,  <41.213242, 39.095192, 49.895214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200970, 39.465561, 49.744633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206078, 0.362681, 0.908842,
		0.978054, 0.105463, 0.179685,
		-0.030681, 0.925927, -0.376455,
		41.191765, 39.743340, 49.631695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477413, 39.489822, 50.439434>,  <41.213242, 39.095192, 49.895214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477413, 39.489822, 50.439434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.281998, 39.756943, 50.214806>,  <41.164749, 39.917213, 50.080029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.281998, 39.756943, 50.214806>,  <41.477413, 39.489822, 50.439434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281998, 39.756943, 50.214806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307459, 0.470574, 0.827060,
		0.816575, 0.576715, -0.024574,
		-0.488542, 0.667802, -0.561576,
		41.135433, 39.957283, 50.046333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631947, 40.086861, 50.747108>,  <41.477413, 39.489822, 50.439434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631947, 40.086861, 50.747108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.304016, 40.146126, 50.525864>,  <41.107258, 40.181683, 50.393116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.304016, 40.146126, 50.525864>,  <41.631947, 40.086861, 50.747108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304016, 40.146126, 50.525864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501463, 0.280576, 0.818420,
		0.276447, 0.948328, -0.155726,
		-0.819824, 0.148159, -0.553116,
		41.058067, 40.190575, 50.359928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319603, 40.792118, 50.904194>,  <41.631947, 40.086861, 50.747108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319603, 40.792118, 50.904194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.035950, 40.555084, 50.751369>,  <40.865757, 40.412865, 50.659676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.035950, 40.555084, 50.751369>,  <41.319603, 40.792118, 50.904194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035950, 40.555084, 50.751369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572045, 0.166766, 0.803090,
		-0.412185, 0.788055, -0.457245,
		-0.709132, -0.592587, -0.382065,
		40.823212, 40.377308, 50.636749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734196, 41.144432, 51.111240>,  <41.319603, 40.792118, 50.904194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734196, 41.144432, 51.111240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643906, 40.765022, 51.022381>,  <40.589729, 40.537376, 50.969067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643906, 40.765022, 51.022381>,  <40.734196, 41.144432, 51.111240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643906, 40.765022, 51.022381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536208, -0.069413, 0.841227,
		-0.813344, 0.309005, -0.492937,
		-0.225727, -0.948524, -0.222148,
		40.576187, 40.480465, 50.955738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063919, 41.211552, 50.972050>,  <40.734196, 41.144432, 51.111240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063919, 41.211552, 50.972050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.934082, 41.589584, 50.987362>,  <39.856178, 41.816402, 50.996548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.934082, 41.589584, 50.987362>,  <40.063919, 41.211552, 50.972050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934082, 41.589584, 50.987362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257586, 0.127262, -0.957838,
		-0.910104, -0.301048, -0.284747,
		-0.324592, 0.945079, 0.038276,
		39.836704, 41.873108, 50.998844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723846, 41.328609, 50.381077>,  <40.063919, 41.211552, 50.972050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723846, 41.328609, 50.381077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830284, 41.688766, 50.518764>,  <39.894146, 41.904861, 50.601376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830284, 41.688766, 50.518764>,  <39.723846, 41.328609, 50.381077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830284, 41.688766, 50.518764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337406, 0.247504, -0.908239,
		-0.902968, 0.357816, -0.237939,
		0.266092, 0.900394, 0.344218,
		39.910110, 41.958885, 50.622028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538399, 41.682335, 49.862255>,  <39.723846, 41.328609, 50.381077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538399, 41.682335, 49.862255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793530, 41.905624, 50.074505>,  <39.946609, 42.039600, 50.201855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793530, 41.905624, 50.074505>,  <39.538399, 41.682335, 49.862255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793530, 41.905624, 50.074505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378519, 0.372807, -0.847194,
		-0.670746, 0.741214, 0.026487,
		0.637827, 0.558226, 0.530623,
		39.984879, 42.073093, 50.233692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592113, 42.206993, 49.413368>,  <39.538399, 41.682335, 49.862255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592113, 42.206993, 49.413368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.917763, 42.261047, 49.639267>,  <40.113152, 42.293480, 49.774807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.917763, 42.261047, 49.639267>,  <39.592113, 42.206993, 49.413368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917763, 42.261047, 49.639267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525475, 0.242466, -0.815528,
		-0.247140, 0.960702, 0.126386,
		0.814124, 0.135136, 0.564748,
		40.161999, 42.301590, 49.808693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731121, 42.936321, 49.581081>,  <39.592113, 42.206993, 49.413368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731121, 42.936321, 49.581081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082542, 42.746376, 49.601677>,  <40.293396, 42.632408, 49.614033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082542, 42.746376, 49.601677>,  <39.731121, 42.936321, 49.581081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082542, 42.746376, 49.601677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384751, 0.639698, -0.665397,
		0.283034, 0.604396, 0.744712,
		0.878554, -0.474859, 0.051486,
		40.346107, 42.603920, 49.617123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249531, 43.508961, 49.558064>,  <39.731121, 42.936321, 49.581081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249531, 43.508961, 49.558064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.461090, 43.175125, 49.496445>,  <40.588028, 42.974823, 49.459473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.461090, 43.175125, 49.496445>,  <40.249531, 43.508961, 49.558064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461090, 43.175125, 49.496445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575385, 0.486049, -0.657790,
		0.623856, 0.259271, 0.737280,
		0.528900, -0.834587, -0.154044,
		40.619759, 42.924747, 49.450230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873333, 43.677464, 49.658070>,  <40.249531, 43.508961, 49.558064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873333, 43.677464, 49.658070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.925819, 43.360672, 49.419556>,  <40.957310, 43.170597, 49.276447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.925819, 43.360672, 49.419556>,  <40.873333, 43.677464, 49.658070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925819, 43.360672, 49.419556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696801, 0.501523, -0.512779,
		0.705161, -0.348211, 0.617655,
		0.131213, -0.791974, -0.596288,
		40.965183, 43.123081, 49.240669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604710, 43.589706, 49.569283>,  <40.873333, 43.677464, 49.658070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604710, 43.589706, 49.569283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473732, 43.399384, 49.242752>,  <41.395145, 43.285191, 49.046833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473732, 43.399384, 49.242752>,  <41.604710, 43.589706, 49.569283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473732, 43.399384, 49.242752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693300, 0.465996, -0.549712,
		0.641962, -0.745957, 0.177292,
		-0.327444, -0.475810, -0.816324,
		41.375500, 43.256641, 48.997856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209560, 43.354973, 49.281521>,  <41.604710, 43.589706, 49.569283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209560, 43.354973, 49.281521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.929768, 43.376701, 48.996487>,  <41.761894, 43.389736, 48.825466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.929768, 43.376701, 48.996487>,  <42.209560, 43.354973, 49.281521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929768, 43.376701, 48.996487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591743, 0.603107, -0.534884,
		0.400713, -0.795808, -0.454001,
		-0.699477, 0.054317, -0.712588,
		41.719925, 43.392998, 48.782711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618462, 43.389923, 48.746677>,  <42.209560, 43.354973, 49.281521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618462, 43.389923, 48.746677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.272049, 43.518272, 48.593304>,  <42.064201, 43.595284, 48.501278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.272049, 43.518272, 48.593304>,  <42.618462, 43.389923, 48.746677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272049, 43.518272, 48.593304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499563, 0.586854, -0.637212,
		0.020555, -0.743398, -0.668533,
		-0.866034, 0.320876, -0.383437,
		42.012238, 43.614536, 48.478271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748272, 43.302547, 48.052219>,  <42.618462, 43.389923, 48.746677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748272, 43.302547, 48.052219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.448143, 43.566353, 48.070362>,  <42.268066, 43.724636, 48.081249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.448143, 43.566353, 48.070362>,  <42.748272, 43.302547, 48.052219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448143, 43.566353, 48.070362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416649, 0.525053, -0.742106,
		-0.513249, -0.537917, -0.668745,
		-0.750319, 0.659518, 0.045361,
		42.223049, 43.764210, 48.083969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543736, 43.384914, 47.364635>,  <42.748272, 43.302547, 48.052219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543736, 43.384914, 47.364635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.379433, 43.697792, 47.552017>,  <42.280849, 43.885517, 47.664448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.379433, 43.697792, 47.552017>,  <42.543736, 43.384914, 47.364635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379433, 43.697792, 47.552017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230178, 0.586123, -0.776838,
		-0.882209, -0.211267, -0.420800,
		-0.410761, 0.782193, 0.468455,
		42.256203, 43.932449, 47.692554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139786, 43.732094, 46.831650>,  <42.543736, 43.384914, 47.364635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139786, 43.732094, 46.831650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.219788, 43.980568, 47.134735>,  <42.267788, 44.129650, 47.316586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.219788, 43.980568, 47.134735>,  <42.139786, 43.732094, 46.831650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219788, 43.980568, 47.134735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320242, 0.689420, -0.649727,
		-0.925981, 0.372603, -0.061038,
		0.200009, 0.621182, 0.757713,
		42.279789, 44.166924, 47.362049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921173, 44.378925, 46.595047>,  <42.139786, 43.732094, 46.831650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921173, 44.378925, 46.595047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.172283, 44.459709, 46.895744>,  <42.322948, 44.508179, 47.076164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.172283, 44.459709, 46.895744>,  <41.921173, 44.378925, 46.595047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172283, 44.459709, 46.895744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432877, 0.712068, -0.552790,
		-0.646932, 0.672437, 0.359593,
		0.627771, 0.201958, 0.751742,
		42.360615, 44.520298, 47.121265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.846111, 45.223774, 52.602829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027695, 44.898766, 52.749107>,  <41.136646, 44.703762, 52.836876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027695, 44.898766, 52.749107>,  <40.846111, 45.223774, 52.602829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027695, 44.898766, 52.749107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809806, -0.205035, 0.549705,
		-0.371665, -0.545686, -0.751061,
		0.453960, -0.812520, 0.365695,
		41.163883, 44.655010, 52.858814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279781, 44.683498, 52.586605>,  <40.846111, 45.223774, 52.602829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279781, 44.683498, 52.586605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.553402, 44.553970, 52.848053>,  <40.717575, 44.476254, 53.004921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.553402, 44.553970, 52.848053>,  <40.279781, 44.683498, 52.586605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553402, 44.553970, 52.848053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723079, -0.183032, 0.666075,
		-0.096053, -0.928247, -0.359348,
		0.684054, -0.323815, 0.653616,
		40.758617, 44.456825, 53.044136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993385, 44.032318, 52.783421>,  <40.279781, 44.683498, 52.586605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993385, 44.032318, 52.783421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.261818, 44.106667, 53.070503>,  <40.422878, 44.151276, 53.242752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.261818, 44.106667, 53.070503>,  <39.993385, 44.032318, 52.783421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261818, 44.106667, 53.070503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644995, -0.330959, 0.688802,
		0.365562, -0.925158, -0.102212,
		0.671079, 0.185873, 0.717708,
		40.463142, 44.162430, 53.285816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079582, 43.400791, 53.068432>,  <39.993385, 44.032318, 52.783421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079582, 43.400791, 53.068432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145576, 43.686707, 53.340271>,  <40.185173, 43.858257, 53.503376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145576, 43.686707, 53.340271>,  <40.079582, 43.400791, 53.068432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145576, 43.686707, 53.340271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637270, -0.448642, 0.626584,
		0.752772, -0.536468, 0.381493,
		0.164988, 0.714789, 0.679600,
		40.195072, 43.901142, 53.544151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236324, 42.989956, 53.704048>,  <40.079582, 43.400791, 53.068432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236324, 42.989956, 53.704048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.147278, 43.364403, 53.812950>,  <40.093849, 43.589073, 53.878292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.147278, 43.364403, 53.812950>,  <40.236324, 42.989956, 53.704048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147278, 43.364403, 53.812950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596478, -0.351679, 0.721481,
		0.771140, -0.001783, 0.636663,
		-0.222615, 0.936119, 0.272257,
		40.080494, 43.645237, 53.894627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294674, 42.932106, 54.428322>,  <40.236324, 42.989956, 53.704048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294674, 42.932106, 54.428322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076588, 43.258217, 54.350288>,  <39.945736, 43.453884, 54.303471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076588, 43.258217, 54.350288>,  <40.294674, 42.932106, 54.428322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076588, 43.258217, 54.350288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662098, -0.276064, 0.696717,
		0.514166, 0.509023, 0.690311,
		-0.545215, 0.815281, -0.195081,
		39.913025, 43.502800, 54.291763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107407, 43.165619, 55.022812>,  <40.294674, 42.932106, 54.428322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107407, 43.165619, 55.022812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.853680, 43.389023, 54.809006>,  <39.701443, 43.523067, 54.680721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.853680, 43.389023, 54.809006>,  <40.107407, 43.165619, 55.022812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853680, 43.389023, 54.809006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666951, -0.045730, 0.743697,
		0.390921, 0.828234, 0.401508,
		-0.634316, 0.558513, -0.534515,
		39.663383, 43.556576, 54.648651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957878, 43.699234, 55.464184>,  <40.107407, 43.165619, 55.022812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957878, 43.699234, 55.464184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.655495, 43.671539, 55.203804>,  <39.474064, 43.654922, 55.047577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.655495, 43.671539, 55.203804>,  <39.957878, 43.699234, 55.464184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655495, 43.671539, 55.203804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635401, -0.161557, 0.755092,
		-0.157447, 0.984432, 0.078136,
		-0.755960, -0.069239, -0.650946,
		39.428707, 43.650768, 55.008522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409874, 44.018211, 55.786747>,  <39.957878, 43.699234, 55.464184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409874, 44.018211, 55.786747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243927, 43.793648, 55.500332>,  <39.144360, 43.658909, 55.328484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243927, 43.793648, 55.500332>,  <39.409874, 44.018211, 55.786747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243927, 43.793648, 55.500332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707298, -0.296060, 0.641932,
		-0.572377, 0.772765, -0.274259,
		-0.414866, -0.561410, -0.716034,
		39.119469, 43.625225, 55.285522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649563, 44.166096, 55.817825>,  <39.409874, 44.018211, 55.786747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649563, 44.166096, 55.817825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.656509, 43.811104, 55.633617>,  <38.660675, 43.598110, 55.523094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.656509, 43.811104, 55.633617>,  <38.649563, 44.166096, 55.817825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656509, 43.811104, 55.633617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782657, -0.298689, 0.546107,
		-0.622211, 0.350944, -0.699780,
		0.017364, -0.887481, -0.460517,
		38.661720, 43.544861, 55.495461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945793, 44.016533, 55.720943>,  <38.649563, 44.166096, 55.817825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945793, 44.016533, 55.720943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138809, 43.671272, 55.661453>,  <38.254620, 43.464115, 55.625759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138809, 43.671272, 55.661453>,  <37.945793, 44.016533, 55.720943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138809, 43.671272, 55.661453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720720, -0.487786, 0.492571,
		-0.497712, -0.130495, -0.857469,
		0.482540, -0.863155, -0.148727,
		38.283573, 43.412327, 55.616837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417011, 43.532562, 55.465607>,  <37.945793, 44.016533, 55.720943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417011, 43.532562, 55.465607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723351, 43.344162, 55.640709>,  <37.907154, 43.231121, 55.745770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723351, 43.344162, 55.640709>,  <37.417011, 43.532562, 55.465607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723351, 43.344162, 55.640709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633540, -0.436241, 0.639000,
		-0.110001, -0.766716, -0.632493,
		0.765850, -0.471000, 0.437758,
		37.953106, 43.202862, 55.772038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234840, 42.750877, 55.632607>,  <37.417011, 43.532562, 55.465607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234840, 42.750877, 55.632607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489243, 42.932350, 55.882301>,  <37.641884, 43.041233, 56.032116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489243, 42.932350, 55.882301>,  <37.234840, 42.750877, 55.632607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489243, 42.932350, 55.882301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613559, -0.193303, 0.765623,
		0.468014, -0.869948, 0.155416,
		0.636010, 0.453679, 0.624233,
		37.680046, 43.068455, 56.069572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369747, 42.298920, 56.224739>,  <37.234840, 42.750877, 55.632607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369747, 42.298920, 56.224739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350761, 42.687538, 56.317551>,  <37.339371, 42.920712, 56.373238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350761, 42.687538, 56.317551>,  <37.369747, 42.298920, 56.224739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350761, 42.687538, 56.317551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615947, -0.211334, 0.758912,
		0.786357, -0.106898, 0.608454,
		-0.047461, 0.971551, 0.232028,
		37.336525, 42.979004, 56.387157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184086, 41.595436, 55.849659>,  <37.369747, 42.298920, 56.224739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184086, 41.595436, 55.849659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043953, 41.252419, 55.698990>,  <36.959873, 41.046608, 55.608589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043953, 41.252419, 55.698990>,  <37.184086, 41.595436, 55.849659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043953, 41.252419, 55.698990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489208, 0.175417, -0.854344,
		0.798714, -0.483576, 0.358064,
		-0.350330, -0.857545, -0.376677,
		36.938854, 40.995155, 55.585987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727997, 41.202000, 55.548656>,  <37.184086, 41.595436, 55.849659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727997, 41.202000, 55.548656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.396099, 41.088966, 55.356129>,  <37.196960, 41.021149, 55.240612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.396099, 41.088966, 55.356129>,  <37.727997, 41.202000, 55.548656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396099, 41.088966, 55.356129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472817, 0.102373, -0.875194,
		0.296587, -0.953765, 0.048665,
		-0.829747, -0.282580, -0.481319,
		37.147175, 41.004192, 55.211735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979130, 40.799137, 55.004955>,  <37.727997, 41.202000, 55.548656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979130, 40.799137, 55.004955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607574, 40.919548, 54.918663>,  <37.384640, 40.991795, 54.866886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607574, 40.919548, 54.918663>,  <37.979130, 40.799137, 55.004955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607574, 40.919548, 54.918663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271230, 0.156303, -0.949739,
		-0.252178, -0.940719, -0.226837,
		-0.928892, 0.301028, -0.215735,
		37.328907, 41.009857, 54.853943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844452, 40.416958, 54.347553>,  <37.979130, 40.799137, 55.004955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844452, 40.416958, 54.347553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591778, 40.725067, 54.382530>,  <37.440174, 40.909931, 54.403515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591778, 40.725067, 54.382530>,  <37.844452, 40.416958, 54.347553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591778, 40.725067, 54.382530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148952, 0.231294, -0.961414,
		-0.760777, -0.594291, -0.260840,
		-0.631690, 0.770274, 0.087442,
		37.402271, 40.956150, 54.408764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438820, 40.205795, 53.815254>,  <37.844452, 40.416958, 54.347553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438820, 40.205795, 53.815254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.411034, 40.597908, 53.889240>,  <37.394360, 40.833176, 53.933632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.411034, 40.597908, 53.889240>,  <37.438820, 40.205795, 53.815254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411034, 40.597908, 53.889240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308903, 0.197442, -0.930374,
		-0.948553, -0.007494, -0.316529,
		-0.069468, 0.980286, 0.184970,
		37.390194, 40.891994, 53.944733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333996, 40.461960, 53.173336>,  <37.438820, 40.205795, 53.815254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333996, 40.461960, 53.173336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424812, 40.780281, 53.397888>,  <37.479301, 40.971275, 53.532619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424812, 40.780281, 53.397888>,  <37.333996, 40.461960, 53.173336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424812, 40.780281, 53.397888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478547, 0.410882, -0.775995,
		-0.848202, 0.444830, -0.287542,
		0.227040, 0.795803, 0.561383,
		37.492924, 41.019024, 53.566303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995445, 41.104328, 52.942360>,  <37.333996, 40.461960, 53.173336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995445, 41.104328, 52.942360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.324192, 41.219658, 53.138889>,  <37.521442, 41.288857, 53.256805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.324192, 41.219658, 53.138889>,  <36.995445, 41.104328, 52.942360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324192, 41.219658, 53.138889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341399, 0.441143, -0.829964,
		-0.456042, 0.849860, 0.264129,
		0.821871, 0.288325, 0.491321,
		37.570755, 41.306156, 53.286285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098778, 41.734425, 52.692268>,  <36.995445, 41.104328, 52.942360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098778, 41.734425, 52.692268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442909, 41.608444, 52.852592>,  <37.649387, 41.532856, 52.948788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442909, 41.608444, 52.852592>,  <37.098778, 41.734425, 52.692268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442909, 41.608444, 52.852592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494544, 0.325091, -0.806066,
		0.123567, 0.891697, 0.435439,
		0.860324, -0.314947, 0.400813,
		37.701008, 41.513962, 52.972836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471188, 42.245163, 52.560093>,  <37.098778, 41.734425, 52.692268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471188, 42.245163, 52.560093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739426, 41.953812, 52.616329>,  <37.900368, 41.778999, 52.650070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739426, 41.953812, 52.616329>,  <37.471188, 42.245163, 52.560093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739426, 41.953812, 52.616329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608981, 0.432307, -0.665021,
		0.423607, 0.531579, 0.733472,
		0.670596, -0.728378, 0.140593,
		37.940605, 41.735298, 52.658508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112762, 42.604553, 52.677475>,  <37.471188, 42.245163, 52.560093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112762, 42.604553, 52.677475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221237, 42.234344, 52.571747>,  <38.286320, 42.012218, 52.508308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221237, 42.234344, 52.571747>,  <38.112762, 42.604553, 52.677475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221237, 42.234344, 52.571747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731042, 0.376683, -0.568935,
		0.626129, -0.038945, 0.778747,
		0.271183, -0.925523, -0.264323,
		38.302593, 41.956688, 52.492451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786877, 42.629349, 52.656780>,  <38.112762, 42.604553, 52.677475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786877, 42.629349, 52.656780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724632, 42.291977, 52.451096>,  <38.687286, 42.089554, 52.327682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724632, 42.291977, 52.451096>,  <38.786877, 42.629349, 52.656780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724632, 42.291977, 52.451096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807171, 0.191510, -0.558391,
		0.569438, -0.501952, 0.650987,
		-0.155615, -0.843426, -0.514214,
		38.677948, 42.038948, 52.296833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399261, 42.287376, 52.669853>,  <38.786877, 42.629349, 52.656780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399261, 42.287376, 52.669853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205093, 42.145500, 52.350212>,  <39.088593, 42.060375, 52.158428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205093, 42.145500, 52.350212>,  <39.399261, 42.287376, 52.669853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205093, 42.145500, 52.350212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825511, 0.115067, -0.552532,
		0.287927, -0.927877, 0.236942,
		-0.485418, -0.354687, -0.799104,
		39.059467, 42.039093, 52.110481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970284, 41.957260, 52.275913>,  <39.399261, 42.287376, 52.669853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970284, 41.957260, 52.275913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671173, 41.993538, 52.012825>,  <39.491707, 42.015305, 51.854973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671173, 41.993538, 52.012825>,  <39.970284, 41.957260, 52.275913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671173, 41.993538, 52.012825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660406, -0.000563, -0.750908,
		-0.068472, -0.995879, -0.059473,
		-0.747780, 0.090692, -0.657723,
		39.446838, 42.020744, 51.815510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076118, 41.493721, 51.763157>,  <39.970284, 41.957260, 52.275913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076118, 41.493721, 51.763157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.835400, 41.754181, 51.578182>,  <39.690968, 41.910458, 51.467197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.835400, 41.754181, 51.578182>,  <40.076118, 41.493721, 51.763157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835400, 41.754181, 51.578182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612036, 0.004018, -0.790820,
		-0.513084, -0.758939, -0.400945,
		-0.601795, 0.651150, -0.462436,
		39.654861, 41.949524, 51.439453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771584, 40.784679, 51.639893>,  <40.076118, 41.493721, 51.763157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771584, 40.784679, 51.639893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.896378, 40.484283, 51.407108>,  <39.971252, 40.304047, 51.267437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.896378, 40.484283, 51.407108>,  <39.771584, 40.784679, 51.639893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896378, 40.484283, 51.407108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136050, -0.641534, 0.754934,
		-0.940295, -0.156353, -0.302322,
		0.311986, -0.750991, -0.581960,
		39.989975, 40.258987, 51.232521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208820, 40.307972, 51.358555>,  <39.771584, 40.784679, 51.639893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208820, 40.307972, 51.358555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568420, 40.150200, 51.434681>,  <39.784180, 40.055534, 51.480358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568420, 40.150200, 51.434681>,  <39.208820, 40.307972, 51.358555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568420, 40.150200, 51.434681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415181, -0.629302, 0.656966,
		-0.139363, -0.669629, -0.729504,
		0.899001, -0.394432, 0.190316,
		39.838120, 40.031872, 51.491776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073170, 39.681198, 51.411839>,  <39.208820, 40.307972, 51.358555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073170, 39.681198, 51.411839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428886, 39.721451, 51.590294>,  <39.642315, 39.745602, 51.697369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428886, 39.721451, 51.590294>,  <39.073170, 39.681198, 51.411839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428886, 39.721451, 51.590294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316845, -0.567905, 0.759666,
		0.329809, -0.816919, -0.473148,
		0.889289, 0.100630, 0.446137,
		39.695675, 39.751640, 51.724136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237202, 38.961105, 51.676353>,  <39.073170, 39.681198, 51.411839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237202, 38.961105, 51.676353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.478333, 39.210022, 51.876091>,  <39.623013, 39.359371, 51.995934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.478333, 39.210022, 51.876091>,  <39.237202, 38.961105, 51.676353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478333, 39.210022, 51.876091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238773, -0.456463, 0.857105,
		0.761305, -0.635918, -0.126582,
		0.602828, 0.622295, 0.499347,
		39.659180, 39.396709, 52.025894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683128, 38.536430, 52.082275>,  <39.237202, 38.961105, 51.676353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683128, 38.536430, 52.082275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.723824, 38.877502, 52.287251>,  <39.748241, 39.082146, 52.410236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.723824, 38.877502, 52.287251>,  <39.683128, 38.536430, 52.082275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723824, 38.877502, 52.287251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295924, -0.465852, 0.833913,
		0.949778, -0.236483, 0.204933,
		0.101738, 0.852677, 0.512437,
		39.754345, 39.133305, 52.440983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915386, 38.293346, 52.684097>,  <39.683128, 38.536430, 52.082275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915386, 38.293346, 52.684097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752644, 38.653923, 52.743252>,  <39.654999, 38.870270, 52.778744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752644, 38.653923, 52.743252>,  <39.915386, 38.293346, 52.684097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752644, 38.653923, 52.743252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513564, -0.359604, 0.779061,
		0.755458, 0.241020, 0.609256,
		-0.406860, 0.901440, 0.147886,
		39.630585, 38.924355, 52.787617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186775, 38.522991, 53.368767>,  <39.915386, 38.293346, 52.684097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186775, 38.522991, 53.368767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.842728, 38.719124, 53.312515>,  <39.636299, 38.836803, 53.278763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.842728, 38.719124, 53.312515>,  <40.186775, 38.522991, 53.368767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842728, 38.719124, 53.312515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351991, -0.370987, 0.859344,
		0.369189, 0.788637, 0.491683,
		-0.860118, 0.490328, -0.140629,
		39.584694, 38.866222, 53.270329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416573, 38.436176, 54.116287>,  <40.186775, 38.522991, 53.368767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416573, 38.436176, 54.116287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678123, 38.364914, 54.410416>,  <40.835052, 38.322155, 54.586895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678123, 38.364914, 54.410416>,  <40.416573, 38.436176, 54.116287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678123, 38.364914, 54.410416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752116, 0.047395, -0.657325,
		0.082257, 0.982860, 0.164986,
		0.653877, -0.178158, 0.735326,
		40.874287, 38.311466, 54.631012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852016, 39.007484, 54.174328>,  <40.416573, 38.436176, 54.116287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852016, 39.007484, 54.174328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.046299, 38.678391, 54.292450>,  <41.162868, 38.480934, 54.363323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.046299, 38.678391, 54.292450>,  <40.852016, 39.007484, 54.174328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046299, 38.678391, 54.292450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715502, 0.180127, -0.674989,
		0.502143, 0.539134, 0.676155,
		0.485704, -0.822732, 0.295302,
		41.192009, 38.431572, 54.381042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490509, 39.268780, 54.328197>,  <40.852016, 39.007484, 54.174328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490509, 39.268780, 54.328197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.536282, 38.874008, 54.282822>,  <41.563744, 38.637146, 54.255596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.536282, 38.874008, 54.282822>,  <41.490509, 39.268780, 54.328197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536282, 38.874008, 54.282822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855813, 0.155920, -0.493228,
		0.504470, -0.040639, 0.862472,
		0.114432, -0.986933, -0.113436,
		41.570610, 38.577927, 54.248791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196846, 39.181816, 54.313545>,  <41.490509, 39.268780, 54.328197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196846, 39.181816, 54.313545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.039864, 38.846153, 54.162926>,  <41.945675, 38.644756, 54.072556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.039864, 38.846153, 54.162926>,  <42.196846, 39.181816, 54.313545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039864, 38.846153, 54.162926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712141, -0.018139, -0.701803,
		0.582094, -0.543584, 0.604718,
		-0.392457, -0.839159, -0.376549,
		41.922127, 38.594406, 54.049961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798119, 38.846504, 54.071159>,  <42.196846, 39.181816, 54.313545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798119, 38.846504, 54.071159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.501102, 38.660110, 53.878704>,  <42.322895, 38.548275, 53.763229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.501102, 38.660110, 53.878704>,  <42.798119, 38.846504, 54.071159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501102, 38.660110, 53.878704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561687, -0.041873, -0.826290,
		0.364893, -0.883800, 0.292831,
		-0.742537, -0.465987, -0.481140,
		42.278343, 38.520313, 53.734364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078655, 38.175529, 53.791241>,  <42.798119, 38.846504, 54.071159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078655, 38.175529, 53.791241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.759872, 38.274094, 53.570644>,  <42.568604, 38.333233, 53.438286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.759872, 38.274094, 53.570644>,  <43.078655, 38.175529, 53.791241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759872, 38.274094, 53.570644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567995, -0.004939, -0.823017,
		-0.205526, -0.969152, -0.136025,
		-0.796957, 0.246413, -0.551489,
		42.520786, 38.348019, 53.405197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250122, 37.835823, 53.203087>,  <43.078655, 38.175529, 53.791241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250122, 37.835823, 53.203087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.970467, 38.093445, 53.078899>,  <42.802673, 38.248020, 53.004387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.970467, 38.093445, 53.078899>,  <43.250122, 37.835823, 53.203087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970467, 38.093445, 53.078899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335135, -0.088376, -0.938016,
		-0.631576, -0.759854, -0.154060,
		-0.699140, 0.644059, -0.310470,
		42.760723, 38.286663, 52.985760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.792915, 41.479767, 57.527531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.516296, 41.669937, 57.310005>,  <40.350327, 41.784039, 57.179489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.516296, 41.669937, 57.310005>,  <40.792915, 41.479767, 57.527531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516296, 41.669937, 57.310005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682156, 0.182272, -0.708124,
		-0.237537, -0.860668, -0.450364,
		-0.691548, 0.475424, -0.543813,
		40.308830, 41.812565, 57.146862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764076, 41.108387, 56.862648>,  <40.792915, 41.479767, 57.527531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764076, 41.108387, 56.862648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639381, 41.487755, 56.839577>,  <40.564564, 41.715374, 56.825733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639381, 41.487755, 56.839577>,  <40.764076, 41.108387, 56.862648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639381, 41.487755, 56.839577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732073, 0.201041, -0.650886,
		-0.605716, -0.245125, -0.756982,
		-0.311733, 0.948418, -0.057675,
		40.545860, 41.772282, 56.822273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777145, 41.309216, 56.171749>,  <40.764076, 41.108387, 56.862648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777145, 41.309216, 56.171749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773422, 41.666481, 56.351601>,  <40.771187, 41.880840, 56.459511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773422, 41.666481, 56.351601>,  <40.777145, 41.309216, 56.171749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773422, 41.666481, 56.351601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711210, 0.321993, -0.624900,
		-0.702918, 0.313965, -0.638227,
		-0.009308, 0.893167, 0.449629,
		40.770630, 41.934429, 56.486488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893005, 41.867916, 55.585476>,  <40.777145, 41.309216, 56.171749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893005, 41.867916, 55.585476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.976013, 42.070107, 55.920483>,  <41.025818, 42.191422, 56.121487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.976013, 42.070107, 55.920483>,  <40.893005, 41.867916, 55.585476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976013, 42.070107, 55.920483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778386, 0.433230, -0.454343,
		-0.592497, 0.746192, -0.303555,
		0.207518, 0.505480, 0.837512,
		41.038269, 42.221752, 56.171738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117359, 42.512547, 55.418610>,  <40.893005, 41.867916, 55.585476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117359, 42.512547, 55.418610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.267273, 42.478905, 55.787926>,  <41.357224, 42.458717, 56.009514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.267273, 42.478905, 55.787926>,  <41.117359, 42.512547, 55.418610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267273, 42.478905, 55.787926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879675, 0.346733, -0.325497,
		-0.292758, 0.934185, 0.203938,
		0.374786, -0.084108, 0.923288,
		41.379707, 42.453671, 56.064911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369682, 43.220081, 55.649094>,  <41.117359, 42.512547, 55.418610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369682, 43.220081, 55.649094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.577682, 42.965424, 55.876877>,  <41.702484, 42.812630, 56.013546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.577682, 42.965424, 55.876877>,  <41.369682, 43.220081, 55.649094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577682, 42.965424, 55.876877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838365, 0.508050, -0.197558,
		-0.163536, 0.580141, 0.797930,
		0.520000, -0.636649, 0.569454,
		41.733681, 42.774429, 56.047714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847683, 43.665920, 55.961567>,  <41.369682, 43.220081, 55.649094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847683, 43.665920, 55.961567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.978989, 43.290451, 56.003780>,  <42.057770, 43.065170, 56.029110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.978989, 43.290451, 56.003780>,  <41.847683, 43.665920, 55.961567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978989, 43.290451, 56.003780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894955, 0.273325, -0.352632,
		0.302161, 0.210204, 0.929792,
		0.328260, -0.938673, 0.105535,
		42.077465, 43.008850, 56.035442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550552, 43.837418, 56.156616>,  <41.847683, 43.665920, 55.961567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550552, 43.837418, 56.156616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.562260, 43.449432, 56.060024>,  <42.569283, 43.216640, 56.002068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.562260, 43.449432, 56.060024>,  <42.550552, 43.837418, 56.156616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562260, 43.449432, 56.060024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855798, 0.149144, -0.495344,
		0.516481, -0.192161, 0.834459,
		0.029269, -0.969964, -0.241481,
		42.571041, 43.158443, 55.987579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166447, 43.657276, 56.340996>,  <42.550552, 43.837418, 56.156616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166447, 43.657276, 56.340996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.067101, 43.375923, 56.074593>,  <43.007492, 43.207111, 55.914749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.067101, 43.375923, 56.074593>,  <43.166447, 43.657276, 56.340996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067101, 43.375923, 56.074593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958557, -0.079391, -0.273617,
		0.139581, -0.706368, 0.693946,
		-0.248367, -0.703378, -0.666013,
		42.992592, 43.164909, 55.874790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747185, 43.176136, 56.358940>,  <43.166447, 43.657276, 56.340996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747185, 43.176136, 56.358940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.584534, 43.083038, 56.005562>,  <43.486942, 43.027180, 55.793533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.584534, 43.083038, 56.005562>,  <43.747185, 43.176136, 56.358940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584534, 43.083038, 56.005562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901218, 0.056444, -0.429675,
		0.149871, -0.970898, 0.186804,
		-0.406626, -0.232747, -0.883450,
		43.462547, 43.013214, 55.740528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346394, 42.862095, 56.092308>,  <43.747185, 43.176136, 56.358940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346394, 42.862095, 56.092308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.115326, 42.940979, 55.775471>,  <43.976685, 42.988308, 55.585369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.115326, 42.940979, 55.775471>,  <44.346394, 42.862095, 56.092308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115326, 42.940979, 55.775471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802117, -0.042784, -0.595632,
		-0.151353, -0.979427, -0.133471,
		-0.577668, 0.197211, -0.792091,
		43.942024, 43.000141, 55.537842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452137, 42.328293, 55.634472>,  <44.346394, 42.862095, 56.092308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452137, 42.328293, 55.634472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.330063, 42.651291, 55.432552>,  <44.256821, 42.845089, 55.311401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.330063, 42.651291, 55.432552>,  <44.452137, 42.328293, 55.634472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330063, 42.651291, 55.432552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780835, -0.091250, -0.618037,
		-0.545123, -0.582776, -0.602672,
		-0.305184, 0.807493, -0.504795,
		44.238506, 42.893539, 55.281113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195778, 41.683697, 55.301876>,  <44.452137, 42.328293, 55.634472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195778, 41.683697, 55.301876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.330193, 41.311142, 55.357880>,  <44.410839, 41.087608, 55.391479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.330193, 41.311142, 55.357880>,  <44.195778, 41.683697, 55.301876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330193, 41.311142, 55.357880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726758, -0.161861, 0.667550,
		-0.599085, -0.326071, -0.731283,
		0.336035, -0.931386, 0.140006,
		44.431004, 41.031727, 55.399883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566708, 41.237431, 55.239231>,  <44.195778, 41.683697, 55.301876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566708, 41.237431, 55.239231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.840103, 41.041344, 55.455578>,  <44.004139, 40.923691, 55.585388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.840103, 41.041344, 55.455578>,  <43.566708, 41.237431, 55.239231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840103, 41.041344, 55.455578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718333, -0.319944, 0.617765,
		-0.129788, -0.810758, -0.570812,
		0.683486, -0.490212, 0.540869,
		44.045147, 40.894279, 55.617840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337360, 40.474285, 55.460575>,  <43.566708, 41.237431, 55.239231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337360, 40.474285, 55.460575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.615417, 40.575424, 55.729748>,  <43.782253, 40.636108, 55.891251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.615417, 40.575424, 55.729748>,  <43.337360, 40.474285, 55.460575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615417, 40.575424, 55.729748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549300, -0.417032, 0.724122,
		0.463728, -0.873013, -0.151009,
		0.695144, 0.252847, 0.672936,
		43.823959, 40.651279, 55.931629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269382, 39.985283, 55.955292>,  <43.337360, 40.474285, 55.460575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269382, 39.985283, 55.955292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.506344, 40.233765, 56.160488>,  <43.648521, 40.382854, 56.283607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.506344, 40.233765, 56.160488>,  <43.269382, 39.985283, 55.955292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506344, 40.233765, 56.160488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484646, -0.233864, 0.842868,
		0.643568, -0.747935, 0.162525,
		0.592401, 0.621210, 0.512991,
		43.684063, 40.420128, 56.314384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599842, 39.579922, 56.466339>,  <43.269382, 39.985283, 55.955292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599842, 39.579922, 56.466339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.613853, 39.953651, 56.608215>,  <43.622261, 40.177891, 56.693340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.613853, 39.953651, 56.608215>,  <43.599842, 39.579922, 56.466339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613853, 39.953651, 56.608215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386588, -0.314610, 0.866932,
		0.921587, -0.167487, 0.350179,
		0.035030, 0.934328, 0.354689,
		43.624363, 40.233952, 56.714622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750893, 39.495499, 57.122433>,  <43.599842, 39.579922, 56.466339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750893, 39.495499, 57.122433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.583912, 39.858665, 57.107391>,  <43.483723, 40.076565, 57.098366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.583912, 39.858665, 57.107391>,  <43.750893, 39.495499, 57.122433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583912, 39.858665, 57.107391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533359, -0.211314, 0.819069,
		0.735703, 0.361979, 0.572461,
		-0.417455, 0.907919, -0.037600,
		43.458675, 40.131042, 57.096111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551720, 39.711864, 57.877834>,  <43.750893, 39.495499, 57.122433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551720, 39.711864, 57.877834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.360039, 39.982765, 57.654518>,  <43.245029, 40.145306, 57.520527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.360039, 39.982765, 57.654518>,  <43.551720, 39.711864, 57.877834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360039, 39.982765, 57.654518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678115, 0.118172, 0.725394,
		0.557252, 0.726195, 0.402630,
		-0.479198, 0.677256, -0.558295,
		43.216278, 40.185944, 57.487030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318470, 40.271801, 58.400063>,  <43.551720, 39.711864, 57.877834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318470, 40.271801, 58.400063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.102032, 40.333168, 58.069324>,  <42.972168, 40.369987, 57.870880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.102032, 40.333168, 58.069324>,  <43.318470, 40.271801, 58.400063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102032, 40.333168, 58.069324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812473, 0.158381, 0.561073,
		0.217035, 0.975387, 0.038949,
		-0.541094, 0.153418, -0.826850,
		42.939705, 40.379192, 57.821270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955402, 40.902584, 58.508305>,  <43.318470, 40.271801, 58.400063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955402, 40.902584, 58.508305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.752945, 40.677727, 58.246674>,  <42.631470, 40.542812, 58.089695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.752945, 40.677727, 58.246674>,  <42.955402, 40.902584, 58.508305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752945, 40.677727, 58.246674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819127, 0.075996, 0.568555,
		-0.269901, 0.823543, -0.498930,
		-0.506146, -0.562141, -0.654075,
		42.601101, 40.509083, 58.050449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278900, 41.191242, 58.381252>,  <42.955402, 40.902584, 58.508305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278900, 41.191242, 58.381252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.261162, 40.803200, 58.285820>,  <42.250519, 40.570374, 58.228561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.261162, 40.803200, 58.285820>,  <42.278900, 41.191242, 58.381252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261162, 40.803200, 58.285820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848017, -0.089695, 0.522323,
		-0.528110, 0.225487, -0.818692,
		-0.044345, -0.970109, -0.238585,
		42.247860, 40.512169, 58.214245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608486, 41.102562, 58.317822>,  <42.278900, 41.191242, 58.381252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608486, 41.102562, 58.317822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.727608, 40.722404, 58.353722>,  <41.799080, 40.494308, 58.375259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.727608, 40.722404, 58.353722>,  <41.608486, 41.102562, 58.317822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727608, 40.722404, 58.353722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863401, -0.228047, 0.450036,
		-0.407247, -0.211512, -0.888489,
		0.297805, -0.950399, 0.089748,
		41.816948, 40.437286, 58.380646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120380, 40.756306, 57.964207>,  <41.608486, 41.102562, 58.317822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120380, 40.756306, 57.964207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.282860, 40.482330, 58.206154>,  <41.380348, 40.317947, 58.351322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.282860, 40.482330, 58.206154>,  <41.120380, 40.756306, 57.964207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282860, 40.482330, 58.206154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892715, -0.156126, 0.422710,
		-0.195094, -0.711678, -0.674873,
		0.406199, -0.684937, 0.604866,
		41.404720, 40.276852, 58.387615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665695, 40.123718, 57.896049>,  <41.120380, 40.756306, 57.964207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665695, 40.123718, 57.896049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.872635, 40.098953, 58.237461>,  <40.996799, 40.084095, 58.442307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.872635, 40.098953, 58.237461>,  <40.665695, 40.123718, 57.896049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872635, 40.098953, 58.237461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839687, -0.229197, 0.492337,
		0.165143, -0.971409, -0.170566,
		0.517353, -0.061916, 0.853529,
		41.027840, 40.080379, 58.493519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428005, 39.570827, 58.164829>,  <40.665695, 40.123718, 57.896049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428005, 39.570827, 58.164829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.579933, 39.782043, 58.468651>,  <40.671089, 39.908772, 58.650944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.579933, 39.782043, 58.468651>,  <40.428005, 39.570827, 58.164829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579933, 39.782043, 58.468651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860859, -0.098798, 0.499160,
		0.338618, -0.843453, 0.417043,
		0.379815, 0.528040, 0.759549,
		40.693878, 39.940456, 58.696514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322052, 39.331947, 57.528973>,  <40.428005, 39.570827, 58.164829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322052, 39.331947, 57.528973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983189, 39.129799, 57.463341>,  <39.779869, 39.008511, 57.423962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983189, 39.129799, 57.463341>,  <40.322052, 39.331947, 57.528973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983189, 39.129799, 57.463341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431618, -0.474429, -0.767218,
		0.309884, -0.720776, 0.620044,
		-0.847159, -0.505371, -0.164082,
		39.729042, 38.978188, 57.414116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608467, 38.761482, 57.334961>,  <40.322052, 39.331947, 57.528973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608467, 38.761482, 57.334961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.243217, 38.750443, 57.172256>,  <40.024067, 38.743820, 57.074635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.243217, 38.750443, 57.172256>,  <40.608467, 38.761482, 57.334961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243217, 38.750443, 57.172256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340353, -0.600849, -0.723285,
		-0.224438, -0.798886, 0.558040,
		-0.913120, -0.027598, -0.406756,
		39.969280, 38.742165, 57.050228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489548, 37.994446, 57.143658>,  <40.608467, 38.761482, 57.334961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489548, 37.994446, 57.143658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.250755, 38.234879, 56.931126>,  <40.107479, 38.379139, 56.803604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.250755, 38.234879, 56.931126>,  <40.489548, 37.994446, 57.143658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250755, 38.234879, 56.931126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195482, -0.533351, -0.822997,
		-0.778077, -0.595177, 0.200898,
		-0.596978, 0.601083, -0.531335,
		40.071663, 38.415203, 56.771725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247574, 37.524643, 56.699028>,  <40.489548, 37.994446, 57.143658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247574, 37.524643, 56.699028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.193642, 37.886955, 56.538338>,  <40.161282, 38.104343, 56.441925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.193642, 37.886955, 56.538338>,  <40.247574, 37.524643, 56.699028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193642, 37.886955, 56.538338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394440, -0.322859, -0.860337,
		-0.908977, -0.274454, -0.313745,
		-0.134827, 0.905780, -0.401727,
		40.153194, 38.158688, 56.417820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805107, 37.443340, 55.985455>,  <40.247574, 37.524643, 56.699028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805107, 37.443340, 55.985455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.007942, 37.788048, 55.979485>,  <40.129642, 37.994873, 55.975903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.007942, 37.788048, 55.979485>,  <39.805107, 37.443340, 55.985455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007942, 37.788048, 55.979485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417816, -0.260922, -0.870258,
		-0.753854, 0.435059, -0.492369,
		0.507084, 0.861768, -0.014922,
		40.160069, 38.046577, 55.975006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817940, 37.654015, 55.301983>,  <39.805107, 37.443340, 55.985455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817940, 37.654015, 55.301983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114876, 37.886368, 55.435555>,  <40.293037, 38.025780, 55.515697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114876, 37.886368, 55.435555>,  <39.817940, 37.654015, 55.301983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114876, 37.886368, 55.435555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479065, -0.111719, -0.870641,
		-0.468432, 0.806286, -0.361212,
		0.742340, 0.580880, 0.333930,
		40.337578, 38.060631, 55.535732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009575, 38.053249, 54.701077>,  <39.817940, 37.654015, 55.301983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009575, 38.053249, 54.701077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330505, 38.116287, 54.931358>,  <40.523064, 38.154110, 55.069527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330505, 38.116287, 54.931358>,  <40.009575, 38.053249, 54.701077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330505, 38.116287, 54.931358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596261, -0.167587, -0.785104,
		-0.027244, 0.973180, -0.228424,
		0.802328, 0.157590, 0.575703,
		40.571205, 38.163563, 55.104069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665230, 38.648827, 54.382671>,  <40.009575, 38.053249, 54.701077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665230, 38.648827, 54.382671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.456028, 38.720802, 54.049423>,  <39.330509, 38.763988, 53.849476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.456028, 38.720802, 54.049423>,  <39.665230, 38.648827, 54.382671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456028, 38.720802, 54.049423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851901, -0.141393, 0.504254,
		-0.027063, 0.973463, 0.227238,
		-0.523003, 0.179938, -0.833121,
		39.299126, 38.774784, 53.799488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179939, 39.105381, 54.538643>,  <39.665230, 38.648827, 54.382671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179939, 39.105381, 54.538643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038601, 38.913528, 54.217369>,  <38.953796, 38.798416, 54.024605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038601, 38.913528, 54.217369>,  <39.179939, 39.105381, 54.538643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038601, 38.913528, 54.217369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899638, -0.061200, 0.432327,
		-0.256512, 0.875334, -0.409868,
		-0.353347, -0.479629, -0.803182,
		38.932598, 38.769638, 53.976414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569954, 39.361843, 54.441944>,  <39.179939, 39.105381, 54.538643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569954, 39.361843, 54.441944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.548847, 39.014534, 54.244637>,  <38.536182, 38.806149, 54.126251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.548847, 39.014534, 54.244637>,  <38.569954, 39.361843, 54.441944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548847, 39.014534, 54.244637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921086, -0.148502, 0.359928,
		-0.385768, 0.473339, -0.791917,
		-0.052766, -0.868272, -0.493274,
		38.533016, 38.754051, 54.096653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869480, 39.315113, 54.464638>,  <38.569954, 39.361843, 54.441944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869480, 39.315113, 54.464638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018349, 38.962685, 54.347885>,  <38.107670, 38.751228, 54.277836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018349, 38.962685, 54.347885>,  <37.869480, 39.315113, 54.464638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018349, 38.962685, 54.347885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715672, -0.472651, 0.514212,
		-0.591017, 0.017514, -0.806469,
		0.372172, -0.881076, -0.291879,
		38.130001, 38.698360, 54.260323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325382, 38.865707, 54.132584>,  <37.869480, 39.315113, 54.464638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325382, 38.865707, 54.132584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.614643, 38.629341, 54.275620>,  <37.788200, 38.487522, 54.361439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.614643, 38.629341, 54.275620>,  <37.325382, 38.865707, 54.132584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614643, 38.629341, 54.275620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658069, -0.432258, 0.616520,
		-0.209740, -0.681157, -0.701451,
		0.723155, -0.590913, 0.357587,
		37.831589, 38.452068, 54.382896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001736, 38.205112, 54.238075>,  <37.325382, 38.865707, 54.132584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001736, 38.205112, 54.238075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331818, 38.201195, 54.463974>,  <37.529869, 38.198845, 54.599514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331818, 38.201195, 54.463974>,  <37.001736, 38.205112, 54.238075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331818, 38.201195, 54.463974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550572, -0.237195, 0.800381,
		0.126115, -0.971413, -0.201129,
		0.825207, -0.009796, 0.564746,
		37.579380, 38.198257, 54.633396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937695, 37.584225, 54.636112>,  <37.001736, 38.205112, 54.238075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937695, 37.584225, 54.636112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215855, 37.802002, 54.823727>,  <37.382751, 37.932671, 54.936295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215855, 37.802002, 54.823727>,  <36.937695, 37.584225, 54.636112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215855, 37.802002, 54.823727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402134, -0.246104, 0.881885,
		0.595569, -0.801880, 0.047799,
		0.695403, 0.544445, 0.469036,
		37.424477, 37.965336, 54.964436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901829, 37.290653, 55.148682>,  <36.937695, 37.584225, 54.636112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901829, 37.290653, 55.148682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110794, 37.608063, 55.273525>,  <37.236172, 37.798508, 55.348431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110794, 37.608063, 55.273525>,  <36.901829, 37.290653, 55.148682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110794, 37.608063, 55.273525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358347, -0.127822, 0.924797,
		0.773740, -0.594966, 0.217580,
		0.522411, 0.793522, 0.312105,
		37.267517, 37.846119, 55.367157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218449, 37.043228, 55.826279>,  <36.901829, 37.290653, 55.148682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218449, 37.043228, 55.826279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184433, 37.441055, 55.802258>,  <37.164024, 37.679752, 55.787846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184433, 37.441055, 55.802258>,  <37.218449, 37.043228, 55.826279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184433, 37.441055, 55.802258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415513, 0.019380, 0.909381,
		0.905604, 0.102280, 0.411607,
		-0.085035, 0.994567, -0.060049,
		37.158924, 37.739426, 55.784245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<47.333176, 41.980461, 44.129921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.152771, 42.327736, 44.212723>,  <47.044529, 42.536098, 44.262405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.152771, 42.327736, 44.212723>,  <47.333176, 41.980461, 44.129921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152771, 42.327736, 44.212723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566400, -0.457654, 0.685378,
		0.689771, 0.191863, 0.698144,
		-0.451007, 0.868182, 0.207006,
		47.017467, 42.588192, 44.274826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316536, 42.102242, 44.880573>,  <47.333176, 41.980461, 44.129921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316536, 42.102242, 44.880573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.992409, 42.298714, 44.752747>,  <46.797932, 42.416595, 44.676052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.992409, 42.298714, 44.752747>,  <47.316536, 42.102242, 44.880573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.992409, 42.298714, 44.752747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529192, -0.379185, 0.759061,
		0.251660, 0.784195, 0.567190,
		-0.810322, 0.491178, -0.319565,
		46.749313, 42.446068, 44.656876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.917305, 42.100594, 45.485561>,  <47.316536, 42.102242, 44.880573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.917305, 42.100594, 45.485561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.636368, 42.219131, 45.226673>,  <46.467804, 42.290253, 45.071339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.636368, 42.219131, 45.226673>,  <46.917305, 42.100594, 45.485561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636368, 42.219131, 45.226673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710678, -0.343826, 0.613776,
		-0.040642, 0.891046, 0.452089,
		-0.702343, 0.296345, -0.647221,
		46.425667, 42.308033, 45.032505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454681, 42.522392, 45.849346>,  <46.917305, 42.100594, 45.485561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454681, 42.522392, 45.849346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.257469, 42.391777, 45.526783>,  <46.139141, 42.313408, 45.333244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.257469, 42.391777, 45.526783>,  <46.454681, 42.522392, 45.849346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257469, 42.391777, 45.526783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716993, -0.372507, 0.589203,
		-0.492788, 0.868685, -0.050466,
		-0.493032, -0.326536, -0.806408,
		46.109558, 42.293816, 45.284863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712357, 42.767506, 46.022713>,  <46.454681, 42.522392, 45.849346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712357, 42.767506, 46.022713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.707939, 42.477509, 45.747246>,  <45.705288, 42.303513, 45.581966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.707939, 42.477509, 45.747246>,  <45.712357, 42.767506, 46.022713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707939, 42.477509, 45.747246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732251, -0.463142, 0.499307,
		-0.680945, 0.509793, -0.525761,
		-0.011041, -0.724990, -0.688671,
		45.704628, 42.260010, 45.540646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998920, 42.624622, 45.958160>,  <45.712357, 42.767506, 46.022713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998920, 42.624622, 45.958160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.200493, 42.319939, 45.795258>,  <45.321438, 42.137131, 45.697517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.200493, 42.319939, 45.795258>,  <44.998920, 42.624622, 45.958160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200493, 42.319939, 45.795258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678499, -0.640864, 0.359073,
		-0.534502, 0.095373, -0.839769,
		0.503931, -0.761707, -0.407254,
		45.351673, 42.091427, 45.673080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466793, 42.339687, 45.583847>,  <44.998920, 42.624622, 45.958160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466793, 42.339687, 45.583847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.755341, 42.070427, 45.648952>,  <44.928471, 41.908871, 45.688015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.755341, 42.070427, 45.648952>,  <44.466793, 42.339687, 45.583847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755341, 42.070427, 45.648952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678760, -0.640532, 0.359172,
		-0.137524, -0.369571, -0.918969,
		0.721368, -0.673154, 0.162762,
		44.971752, 41.868481, 45.697781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272213, 41.639755, 45.219360>,  <44.466793, 42.339687, 45.583847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272213, 41.639755, 45.219360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.527412, 41.581322, 45.521782>,  <44.680531, 41.546261, 45.703236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.527412, 41.581322, 45.521782>,  <44.272213, 41.639755, 45.219360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527412, 41.581322, 45.521782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581856, -0.734574, 0.349062,
		0.504386, -0.662616, -0.553656,
		0.637995, -0.146086, 0.756056,
		44.718811, 41.537495, 45.748600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378239, 40.945835, 45.280014>,  <44.272213, 41.639755, 45.219360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378239, 40.945835, 45.280014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.514702, 41.065773, 45.636375>,  <44.596581, 41.137737, 45.850193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.514702, 41.065773, 45.636375>,  <44.378239, 40.945835, 45.280014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514702, 41.065773, 45.636375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448162, -0.781228, 0.434549,
		0.826295, -0.547518, -0.132143,
		0.341157, 0.299844, 0.890901,
		44.617050, 41.155727, 45.903645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614925, 40.365688, 45.565014>,  <44.378239, 40.945835, 45.280014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614925, 40.365688, 45.565014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.525177, 40.625488, 45.855618>,  <44.471329, 40.781368, 46.029980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.525177, 40.625488, 45.855618>,  <44.614925, 40.365688, 45.565014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525177, 40.625488, 45.855618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465815, -0.726311, 0.505460,
		0.855964, -0.225008, 0.465507,
		-0.224371, 0.649495, 0.726508,
		44.457867, 40.820335, 46.073570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777679, 39.958069, 46.111588>,  <44.614925, 40.365688, 45.565014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777679, 39.958069, 46.111588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.563606, 40.256195, 46.270626>,  <44.435162, 40.435070, 46.366047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.563606, 40.256195, 46.270626>,  <44.777679, 39.958069, 46.111588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563606, 40.256195, 46.270626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484980, -0.656471, 0.577789,
		0.691644, 0.116399, 0.712797,
		-0.535184, 0.745317, 0.397593,
		44.403049, 40.479790, 46.389904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734859, 39.855366, 46.880047>,  <44.777679, 39.958069, 46.111588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734859, 39.855366, 46.880047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.425499, 40.095970, 46.800007>,  <44.239883, 40.240334, 46.751984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.425499, 40.095970, 46.800007>,  <44.734859, 39.855366, 46.880047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425499, 40.095970, 46.800007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523759, -0.428516, 0.736241,
		0.357111, 0.674212, 0.646460,
		-0.773400, 0.601509, -0.200097,
		44.193478, 40.276424, 46.739979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053257, 39.803623, 47.611942>,  <44.734859, 39.855366, 46.880047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053257, 39.803623, 47.611942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.329033, 39.563034, 47.773392>,  <45.494499, 39.418682, 47.870262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.329033, 39.563034, 47.773392>,  <45.053257, 39.803623, 47.611942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329033, 39.563034, 47.773392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716902, 0.486909, -0.498970,
		0.103591, 0.633363, 0.766890,
		0.689435, -0.601474, 0.403620,
		45.535862, 39.382591, 47.894478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.578049, 40.260738, 47.803638>,  <45.053257, 39.803623, 47.611942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.578049, 40.260738, 47.803638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.751671, 39.900818, 47.785980>,  <45.855843, 39.684864, 47.775387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.751671, 39.900818, 47.785980>,  <45.578049, 40.260738, 47.803638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751671, 39.900818, 47.785980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802894, 0.408603, -0.434055,
		0.408603, 0.152959, 0.899804,
		0.434055, -0.899804, -0.044147,
		45.881889, 39.630878, 47.772736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.270119, 40.320797, 48.193069>,  <45.578049, 40.260738, 47.803638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.270119, 40.320797, 48.193069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.284508, 40.009689, 47.942062>,  <46.293140, 39.823025, 47.791458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.284508, 40.009689, 47.942062>,  <46.270119, 40.320797, 48.193069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284508, 40.009689, 47.942062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823088, 0.379182, -0.422785,
		0.566774, -0.501296, 0.653812,
		0.035973, -0.777768, -0.627521,
		46.295300, 39.776360, 47.753807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921375, 40.276299, 48.146080>,  <46.270119, 40.320797, 48.193069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921375, 40.276299, 48.146080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.796432, 40.066788, 47.829071>,  <46.721466, 39.941082, 47.638866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.796432, 40.066788, 47.829071>,  <46.921375, 40.276299, 48.146080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.796432, 40.066788, 47.829071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856318, 0.205943, -0.473611,
		0.411282, -0.826584, 0.384195,
		-0.312357, -0.523780, -0.792519,
		46.702724, 39.909653, 47.591316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.422859, 39.777374, 47.952389>,  <46.921375, 40.276299, 48.146080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.422859, 39.777374, 47.952389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.205711, 39.864159, 47.627865>,  <47.075420, 39.916229, 47.433151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.205711, 39.864159, 47.627865>,  <47.422859, 39.777374, 47.952389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.205711, 39.864159, 47.627865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837111, 0.217261, -0.502038,
		0.067342, -0.951696, -0.299567,
		-0.542872, 0.216962, -0.811306,
		47.042850, 39.929249, 47.384472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.859566, 39.575802, 47.542248>,  <47.422859, 39.777374, 47.952389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.859566, 39.575802, 47.542248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.598885, 39.774574, 47.313042>,  <47.442474, 39.893837, 47.175518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.598885, 39.774574, 47.313042>,  <47.859566, 39.575802, 47.542248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.598885, 39.774574, 47.313042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738523, 0.243602, -0.628683,
		-0.172826, -0.832896, -0.525752,
		-0.651702, 0.496932, -0.573012,
		47.403374, 39.923653, 47.141136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.887547, 39.278408, 46.960964>,  <47.859566, 39.575802, 47.542248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.887547, 39.278408, 46.960964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.747490, 39.647697, 46.897640>,  <47.663456, 39.869270, 46.859646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.747490, 39.647697, 46.897640>,  <47.887547, 39.278408, 46.960964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747490, 39.647697, 46.897640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722354, 0.158541, -0.673105,
		-0.596326, -0.350038, -0.722404,
		-0.350143, 0.923222, -0.158309,
		47.642448, 39.924664, 46.850147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.906174, 39.286320, 46.271610>,  <47.887547, 39.278408, 46.960964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.906174, 39.286320, 46.271610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.885735, 39.677040, 46.354797>,  <47.873470, 39.911472, 46.404709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.885735, 39.677040, 46.354797>,  <47.906174, 39.286320, 46.271610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.885735, 39.677040, 46.354797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649915, 0.190637, -0.735709,
		-0.758287, 0.097565, -0.644579,
		-0.051101, 0.976800, 0.207967,
		47.870403, 39.970081, 46.417187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.994068, 39.659252, 45.585297>,  <47.906174, 39.286320, 46.271610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.994068, 39.659252, 45.585297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.067757, 39.933670, 45.866840>,  <48.111969, 40.098320, 46.035767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.067757, 39.933670, 45.866840>,  <47.994068, 39.659252, 45.585297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.067757, 39.933670, 45.866840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746903, 0.367783, -0.553961,
		-0.638905, 0.627762, -0.444652,
		0.184220, 0.686040, 0.703855,
		48.123024, 40.139481, 46.077995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.045589, 40.323544, 45.283405>,  <47.994068, 39.659252, 45.585297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.045589, 40.323544, 45.283405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.237778, 40.330101, 45.634148>,  <48.353092, 40.334034, 45.844593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.237778, 40.330101, 45.634148>,  <48.045589, 40.323544, 45.283405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.237778, 40.330101, 45.634148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801100, 0.398690, -0.446414,
		-0.356911, 0.916939, 0.178427,
		0.480472, 0.016392, 0.876857,
		48.381920, 40.335018, 45.897205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.380146, 40.994747, 45.336094>,  <48.045589, 40.323544, 45.283405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.380146, 40.994747, 45.336094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.572243, 40.758560, 45.595543>,  <48.687500, 40.616848, 45.751213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.572243, 40.758560, 45.595543>,  <48.380146, 40.994747, 45.336094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.572243, 40.758560, 45.595543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875206, 0.371595, -0.309727,
		-0.058141, 0.716423, 0.695239,
		0.480243, -0.590470, 0.648623,
		48.716316, 40.581421, 45.790131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.918301, 41.396122, 45.497478>,  <48.380146, 40.994747, 45.336094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.918301, 41.396122, 45.497478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.024300, 41.028259, 45.613422>,  <49.087898, 40.807541, 45.682987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.024300, 41.028259, 45.613422>,  <48.918301, 41.396122, 45.497478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.024300, 41.028259, 45.613422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942070, 0.182820, -0.281214,
		0.205628, 0.347587, 0.914823,
		0.264994, -0.919652, 0.289858,
		49.103798, 40.752365, 45.700378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.553825, 41.464169, 45.910694>,  <48.918301, 41.396122, 45.497478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.553825, 41.464169, 45.910694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.540794, 41.090576, 45.768360>,  <49.532974, 40.866421, 45.682961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.540794, 41.090576, 45.768360>,  <49.553825, 41.464169, 45.910694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.540794, 41.090576, 45.768360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892992, 0.132699, -0.430066,
		0.448892, -0.331766, 0.829715,
		-0.032578, -0.933982, -0.355832,
		49.531021, 40.810383, 45.661610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.200165, 41.184757, 46.084591>,  <49.553825, 41.464169, 45.910694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.200165, 41.184757, 46.084591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.107651, 40.920189, 45.799206>,  <50.052143, 40.761448, 45.627975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.107651, 40.920189, 45.799206>,  <50.200165, 41.184757, 46.084591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.107651, 40.920189, 45.799206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832488, 0.244952, -0.496954,
		0.503460, -0.708886, 0.493973,
		-0.231284, -0.661423, -0.713462,
		50.038265, 40.721764, 45.585167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.763611, 40.649601, 45.998955>,  <50.200165, 41.184757, 46.084591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.763611, 40.649601, 45.998955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.546272, 40.678497, 45.664398>,  <50.415867, 40.695835, 45.463665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.546272, 40.678497, 45.664398>,  <50.763611, 40.649601, 45.998955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.546272, 40.678497, 45.664398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818183, 0.268693, -0.508311,
		0.188012, -0.960513, -0.205100,
		-0.543348, 0.072241, -0.836393,
		50.383266, 40.700169, 45.413479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.328278, 40.735165, 46.621758>,  <50.763611, 40.649601, 45.998955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.328278, 40.735165, 46.621758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.479805, 41.081993, 46.751175>,  <50.570721, 41.290092, 46.828827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.479805, 41.081993, 46.751175>,  <50.328278, 40.735165, 46.621758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.479805, 41.081993, 46.751175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543245, -0.074699, 0.836245,
		0.749254, -0.492549, 0.442735,
		0.378820, 0.867073, 0.323543,
		50.593452, 41.342113, 46.848236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.525639, 40.596195, 47.290920>,  <50.328278, 40.735165, 46.621758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.525639, 40.596195, 47.290920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.452484, 40.987411, 47.250931>,  <50.408592, 41.222141, 47.226936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.452484, 40.987411, 47.250931>,  <50.525639, 40.596195, 47.290920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.452484, 40.987411, 47.250931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619958, -0.035805, 0.783817,
		0.763023, 0.205332, 0.612891,
		-0.182887, 0.978037, -0.099977,
		50.397617, 41.280823, 47.220936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.545048, 40.828064, 48.018791>,  <50.525639, 40.596195, 47.290920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.545048, 40.828064, 48.018791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.329475, 41.116264, 47.844234>,  <50.200134, 41.289185, 47.739498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.329475, 41.116264, 47.844234>,  <50.545048, 40.828064, 48.018791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.329475, 41.116264, 47.844234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520511, 0.122479, 0.845025,
		0.662288, 0.682555, 0.309019,
		-0.538928, 0.720498, -0.436394,
		50.167797, 41.332413, 47.713318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.663395, 41.378628, 48.436501>,  <50.545048, 40.828064, 48.018791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.663395, 41.378628, 48.436501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.327370, 41.454369, 48.233154>,  <50.125755, 41.499813, 48.111149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.327370, 41.454369, 48.233154>,  <50.663395, 41.378628, 48.436501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.327370, 41.454369, 48.233154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422794, 0.358631, 0.832244,
		0.339900, 0.914073, -0.221218,
		-0.840067, 0.189350, -0.508363,
		50.075348, 41.511173, 48.080647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.488659, 42.102146, 48.607193>,  <50.663395, 41.378628, 48.436501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.488659, 42.102146, 48.607193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.157425, 41.916924, 48.480797>,  <49.958683, 41.805790, 48.404957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.157425, 41.916924, 48.480797>,  <50.488659, 42.102146, 48.607193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.157425, 41.916924, 48.480797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498152, 0.349252, 0.793642,
		-0.257143, 0.814615, -0.519885,
		-0.828083, -0.463061, -0.315994,
		49.909000, 41.778004, 48.385998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.016766, 42.600559, 48.718418>,  <50.488659, 42.102146, 48.607193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.016766, 42.600559, 48.718418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.821983, 42.253304, 48.680031>,  <49.705116, 42.044949, 48.656998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.821983, 42.253304, 48.680031>,  <50.016766, 42.600559, 48.718418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.821983, 42.253304, 48.680031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625135, 0.269677, 0.732448,
		-0.609986, 0.416663, -0.674025,
		-0.486953, -0.868140, -0.095971,
		49.675896, 41.992863, 48.651241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.372021, 42.749466, 48.880932>,  <50.016766, 42.600559, 48.718418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.372021, 42.749466, 48.880932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.348740, 42.350288, 48.891724>,  <49.334770, 42.110783, 48.898197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.348740, 42.350288, 48.891724>,  <49.372021, 42.749466, 48.880932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.348740, 42.350288, 48.891724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621625, 0.057374, 0.781211,
		-0.781150, 0.028698, -0.623684,
		-0.058202, -0.997940, 0.026979,
		49.331280, 42.050907, 48.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.633499, 42.576469, 48.880878>,  <49.372021, 42.749466, 48.880932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.633499, 42.576469, 48.880878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.822975, 42.262383, 49.040401>,  <48.936661, 42.073929, 49.136116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.822975, 42.262383, 49.040401>,  <48.633499, 42.576469, 48.880878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.822975, 42.262383, 49.040401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587116, 0.055967, 0.807565,
		-0.656436, -0.616683, -0.434504,
		0.473694, -0.785219, 0.398804,
		48.965084, 42.026817, 49.160042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.117493, 42.095314, 49.265179>,  <48.633499, 42.576469, 48.880878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.117493, 42.095314, 49.265179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.475159, 41.981728, 49.403645>,  <48.689758, 41.913574, 49.486725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.475159, 41.981728, 49.403645>,  <48.117493, 42.095314, 49.265179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.475159, 41.981728, 49.403645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391220, -0.119522, 0.912503,
		-0.217746, -0.951356, -0.217966,
		0.894167, -0.283967, 0.346164,
		48.743408, 41.896538, 49.507492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.016335, 41.560032, 49.717026>,  <48.117493, 42.095314, 49.265179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.016335, 41.560032, 49.717026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.390114, 41.652336, 49.825508>,  <48.614384, 41.707718, 49.890598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.390114, 41.652336, 49.825508>,  <48.016335, 41.560032, 49.717026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.390114, 41.652336, 49.825508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226334, -0.203076, 0.952645,
		0.274908, -0.951583, -0.137536,
		0.934451, 0.230761, 0.271203,
		48.670448, 41.721565, 49.906868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.221451, 41.017017, 50.146542>,  <48.016335, 41.560032, 49.717026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.221451, 41.017017, 50.146542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.456253, 41.324760, 50.247356>,  <48.597134, 41.509407, 50.307846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.456253, 41.324760, 50.247356>,  <48.221451, 41.017017, 50.146542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.456253, 41.324760, 50.247356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311062, -0.073081, 0.947576,
		0.747441, -0.634628, 0.196418,
		0.587003, 0.769355, 0.252032,
		48.632355, 41.555569, 50.322968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.563000, 40.720936, 50.669571>,  <48.221451, 41.017017, 50.146542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.563000, 40.720936, 50.669571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.569824, 41.118813, 50.710155>,  <48.573917, 41.357540, 50.734505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.569824, 41.118813, 50.710155>,  <48.563000, 40.720936, 50.669571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.569824, 41.118813, 50.710155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351741, -0.089020, 0.931855,
		0.935942, -0.051583, 0.348356,
		0.017057, 0.994693, 0.101461,
		48.574940, 41.417221, 50.740593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.719353, 40.833221, 51.289543>,  <48.563000, 40.720936, 50.669571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.719353, 40.833221, 51.289543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.615456, 41.215912, 51.237064>,  <48.553116, 41.445526, 51.205578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.615456, 41.215912, 51.237064>,  <48.719353, 40.833221, 51.289543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.615456, 41.215912, 51.237064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467825, -0.005811, 0.883802,
		0.844791, 0.290943, 0.449088,
		-0.259746, 0.956723, -0.131201,
		48.537533, 41.502930, 51.197704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.053909, 41.225487, 51.816952>,  <48.719353, 40.833221, 51.289543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.053909, 41.225487, 51.816952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.724174, 41.415619, 51.693970>,  <48.526333, 41.529697, 51.620182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.724174, 41.415619, 51.693970>,  <49.053909, 41.225487, 51.816952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.724174, 41.415619, 51.693970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408150, -0.122708, 0.904630,
		0.392268, 0.871210, 0.295158,
		-0.824341, 0.475327, -0.307450,
		48.476871, 41.558216, 51.601734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.921841, 41.763756, 52.350487>,  <49.053909, 41.225487, 51.816952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.921841, 41.763756, 52.350487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.590370, 41.701340, 52.135475>,  <48.391487, 41.663891, 52.006466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.590370, 41.701340, 52.135475>,  <48.921841, 41.763756, 52.350487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.590370, 41.701340, 52.135475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546527, 0.018267, 0.837242,
		-0.120826, 0.987581, -0.100418,
		-0.828679, -0.156042, -0.537533,
		48.341766, 41.654526, 51.974216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.384914, 42.208328, 52.622238>,  <48.921841, 41.763756, 52.350487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.384914, 42.208328, 52.622238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.168793, 41.926521, 52.438183>,  <48.039120, 41.757435, 52.327751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.168793, 41.926521, 52.438183>,  <48.384914, 42.208328, 52.622238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.168793, 41.926521, 52.438183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590447, -0.072185, 0.803842,
		-0.599537, 0.706003, -0.376980,
		-0.540303, -0.704520, -0.460135,
		48.006702, 41.715164, 52.300144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.729984, 42.400616, 52.762497>,  <48.384914, 42.208328, 52.622238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.729984, 42.400616, 52.762497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.697304, 42.018188, 52.649879>,  <47.677696, 41.788734, 52.582310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.697304, 42.018188, 52.649879>,  <47.729984, 42.400616, 52.762497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.697304, 42.018188, 52.649879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820349, -0.095909, 0.563764,
		-0.565997, 0.277023, -0.776470,
		-0.081705, -0.956065, -0.281540,
		47.672791, 41.731369, 52.565418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.914799, 42.238449, 52.700371>,  <47.729984, 42.400616, 52.762497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.914799, 42.238449, 52.700371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.120178, 41.895454, 52.713554>,  <47.243404, 41.689655, 52.721466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.120178, 41.895454, 52.713554>,  <46.914799, 42.238449, 52.700371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120178, 41.895454, 52.713554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702737, -0.398116, 0.589630,
		-0.492478, -0.325907, -0.807000,
		0.513444, -0.857490, 0.032963,
		47.274212, 41.638206, 52.723442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497971, 41.765526, 52.416676>,  <46.914799, 42.238449, 52.700371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497971, 41.765526, 52.416676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.750893, 41.543900, 52.633266>,  <46.902645, 41.410923, 52.763222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.750893, 41.543900, 52.633266>,  <46.497971, 41.765526, 52.416676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750893, 41.543900, 52.633266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774715, -0.453059, 0.441082,
		0.000930, -0.698388, -0.715719,
		0.632309, -0.554068, 0.541473,
		46.940586, 41.377678, 52.795708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211723, 40.997433, 52.564022>,  <46.497971, 41.765526, 52.416676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211723, 40.997433, 52.564022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.460533, 41.096970, 52.860985>,  <46.609818, 41.156693, 53.039162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.460533, 41.096970, 52.860985>,  <46.211723, 40.997433, 52.564022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460533, 41.096970, 52.860985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665412, -0.331751, 0.668707,
		0.412694, -0.909957, -0.040776,
		0.622022, 0.248839, 0.742407,
		46.647141, 41.171619, 53.083706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209572, 40.445019, 52.958157>,  <46.211723, 40.997433, 52.564022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209572, 40.445019, 52.958157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.343216, 40.729126, 53.205990>,  <46.423401, 40.899590, 53.354691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.343216, 40.729126, 53.205990>,  <46.209572, 40.445019, 52.958157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343216, 40.729126, 53.205990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607563, -0.340264, 0.717696,
		0.720582, -0.616225, 0.317850,
		0.334109, 0.710273, 0.619584,
		46.443447, 40.942207, 53.391865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502193, 40.097481, 53.650658>,  <46.209572, 40.445019, 52.958157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502193, 40.097481, 53.650658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.443512, 40.484421, 53.733318>,  <46.408302, 40.716587, 53.782913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.443512, 40.484421, 53.733318>,  <46.502193, 40.097481, 53.650658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443512, 40.484421, 53.733318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771849, -0.242599, 0.587703,
		0.618650, -0.073287, 0.782241,
		-0.146700, 0.967354, 0.206651,
		46.399502, 40.774628, 53.795315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.485542, 40.033409, 54.371677>,  <46.502193, 40.097481, 53.650658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.485542, 40.033409, 54.371677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.320633, 40.379028, 54.256123>,  <46.221687, 40.586399, 54.186790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.320633, 40.379028, 54.256123>,  <46.485542, 40.033409, 54.371677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320633, 40.379028, 54.256123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701904, -0.099084, 0.705346,
		0.580826, 0.493567, 0.647327,
		-0.412276, 0.864045, -0.288886,
		46.196949, 40.638241, 54.169456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331657, 40.406742, 54.966888>,  <46.485542, 40.033409, 54.371677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331657, 40.406742, 54.966888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.093979, 40.610153, 54.717625>,  <45.951370, 40.732201, 54.568066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.093979, 40.610153, 54.717625>,  <46.331657, 40.406742, 54.966888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093979, 40.610153, 54.717625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682018, 0.092135, 0.725508,
		0.426359, 0.856099, 0.292082,
		-0.594196, 0.508532, -0.623158,
		45.915722, 40.762714, 54.530678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162231, 41.075874, 55.305347>,  <46.331657, 40.406742, 54.966888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162231, 41.075874, 55.305347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.889282, 40.979774, 55.029190>,  <45.725513, 40.922115, 54.863495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.889282, 40.979774, 55.029190>,  <46.162231, 41.075874, 55.305347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889282, 40.979774, 55.029190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730884, 0.207326, 0.650250,
		-0.013089, 0.948311, -0.317072,
		-0.682376, -0.240254, -0.690392,
		45.684570, 40.907700, 54.822071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586166, 41.594814, 55.366238>,  <46.162231, 41.075874, 55.305347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586166, 41.594814, 55.366238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.412872, 41.280106, 55.190372>,  <45.308895, 41.091282, 55.084854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.412872, 41.280106, 55.190372>,  <45.586166, 41.594814, 55.366238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412872, 41.280106, 55.190372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735456, 0.026636, 0.677049,
		-0.520970, 0.616674, -0.590173,
		-0.433238, -0.786768, -0.439660,
		45.282902, 41.044075, 55.058475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913574, 41.797379, 55.321404>,  <45.586166, 41.594814, 55.366238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913574, 41.797379, 55.321404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.893890, 41.400627, 55.274498>,  <44.882080, 41.162575, 55.246353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.893890, 41.400627, 55.274498>,  <44.913574, 41.797379, 55.321404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893890, 41.400627, 55.274498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782926, -0.034591, 0.621153,
		-0.620166, 0.122381, -0.774866,
		-0.049214, -0.991880, -0.117268,
		44.879128, 41.103062, 55.239319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596325, 42.198963, 54.802757>,  <44.913574, 41.797379, 55.321404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596325, 42.198963, 54.802757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.531460, 42.593323, 54.819260>,  <44.492538, 42.829941, 54.829159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.531460, 42.593323, 54.819260>,  <44.596325, 42.198963, 54.802757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531460, 42.593323, 54.819260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650609, 0.138262, -0.746721,
		-0.741896, -0.094253, -0.663857,
		-0.162167, 0.985901, 0.041254,
		44.482811, 42.889091, 54.831635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399471, 42.373196, 54.103458>,  <44.596325, 42.198963, 54.802757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399471, 42.373196, 54.103458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.561069, 42.689285, 54.287777>,  <44.658028, 42.878937, 54.398369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.561069, 42.689285, 54.287777>,  <44.399471, 42.373196, 54.103458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561069, 42.689285, 54.287777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551110, 0.191798, -0.812091,
		-0.730111, 0.582036, -0.358012,
		0.404000, 0.790220, 0.460799,
		44.682270, 42.926350, 54.426018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418583, 42.864792, 53.520557>,  <44.399471, 42.373196, 54.103458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418583, 42.864792, 53.520557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.661911, 43.008339, 53.803730>,  <44.807907, 43.094467, 53.973633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.661911, 43.008339, 53.803730>,  <44.418583, 42.864792, 53.520557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661911, 43.008339, 53.803730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523806, 0.488597, -0.697783,
		-0.596303, 0.795291, 0.109246,
		0.608317, 0.358866, 0.707930,
		44.844406, 43.115997, 54.016109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432846, 43.577766, 53.391258>,  <44.418583, 42.864792, 53.520557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432846, 43.577766, 53.391258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.759289, 43.487457, 53.604050>,  <44.955154, 43.433270, 53.731724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.759289, 43.487457, 53.604050>,  <44.432846, 43.577766, 53.391258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759289, 43.487457, 53.604050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569167, 0.473478, -0.672211,
		-0.100111, 0.851378, 0.514911,
		0.816105, -0.225775, 0.531976,
		45.004120, 43.419724, 53.763641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776154, 44.165878, 53.459545>,  <44.432846, 43.577766, 53.391258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776154, 44.165878, 53.459545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.046139, 43.872253, 53.489418>,  <45.208130, 43.696079, 53.507343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.046139, 43.872253, 53.489418>,  <44.776154, 44.165878, 53.459545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046139, 43.872253, 53.489418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439094, 0.318265, -0.840181,
		0.592975, 0.599884, 0.537139,
		0.674964, -0.734061, 0.074682,
		45.248627, 43.652035, 53.511822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
