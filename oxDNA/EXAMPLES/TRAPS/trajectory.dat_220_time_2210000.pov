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
	<36.098755, 53.602028, 49.968086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421585, 53.405117, 50.098495>,  <36.615284, 53.286972, 50.176743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421585, 53.405117, 50.098495>,  <36.098755, 53.602028, 49.968086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421585, 53.405117, 50.098495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113756, 0.671458, 0.732259,
		-0.579383, -0.553903, 0.597919,
		0.807078, -0.492275, 0.326022,
		36.663708, 53.257435, 50.196301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210583, 53.663403, 50.687660>,  <36.098755, 53.602028, 49.968086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210583, 53.663403, 50.687660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581562, 53.533752, 50.613056>,  <36.804150, 53.455963, 50.568295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581562, 53.533752, 50.613056>,  <36.210583, 53.663403, 50.687660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581562, 53.533752, 50.613056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349398, 0.573299, 0.741114,
		-0.133284, -0.752511, 0.644952,
		0.927446, -0.324124, -0.186514,
		36.859795, 53.436516, 50.557102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568684, 53.307579, 51.303925>,  <36.210583, 53.663403, 50.687660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568684, 53.307579, 51.303925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824867, 53.483761, 51.052269>,  <36.978577, 53.589470, 50.901276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824867, 53.483761, 51.052269>,  <36.568684, 53.307579, 51.303925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824867, 53.483761, 51.052269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345339, 0.566539, 0.748180,
		0.685971, -0.696443, 0.210738,
		0.640456, 0.440455, -0.629139,
		37.017006, 53.615898, 50.863529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199947, 53.278351, 51.612606>,  <36.568684, 53.307579, 51.303925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199947, 53.278351, 51.612606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226501, 53.589291, 51.362381>,  <37.242435, 53.775852, 51.212246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226501, 53.589291, 51.362381>,  <37.199947, 53.278351, 51.612606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226501, 53.589291, 51.362381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543859, 0.497437, 0.675850,
		0.836547, -0.385085, -0.389742,
		0.066387, 0.777345, -0.625562,
		37.246418, 53.822495, 51.174713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855465, 53.416039, 51.440601>,  <37.199947, 53.278351, 51.612606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855465, 53.416039, 51.440601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671310, 53.765953, 51.380211>,  <37.560818, 53.975903, 51.343979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671310, 53.765953, 51.380211>,  <37.855465, 53.416039, 51.440601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671310, 53.765953, 51.380211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602681, 0.432877, 0.670368,
		0.651782, 0.217639, -0.726507,
		-0.460387, 0.874786, -0.150974,
		37.533195, 54.028389, 51.334919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237278, 54.015469, 51.113216>,  <37.855465, 53.416039, 51.440601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237278, 54.015469, 51.113216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951054, 54.180801, 51.338470>,  <37.779320, 54.280003, 51.473625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951054, 54.180801, 51.338470>,  <38.237278, 54.015469, 51.113216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951054, 54.180801, 51.338470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685449, 0.570841, 0.451996,
		-0.134637, 0.709434, -0.691792,
		-0.715565, 0.413332, 0.563137,
		37.736385, 54.304802, 51.507412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302036, 54.793312, 51.100643>,  <38.237278, 54.015469, 51.113216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302036, 54.793312, 51.100643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138229, 54.685822, 51.449375>,  <38.039948, 54.621326, 51.658615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138229, 54.685822, 51.449375>,  <38.302036, 54.793312, 51.100643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138229, 54.685822, 51.449375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599749, 0.640813, 0.479229,
		-0.687459, 0.719129, -0.101255,
		-0.409513, -0.268723, 0.871830,
		38.015377, 54.605206, 51.710922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146908, 55.438488, 51.540966>,  <38.302036, 54.793312, 51.100643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146908, 55.438488, 51.540966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201496, 55.119476, 51.776024>,  <38.234249, 54.928070, 51.917057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201496, 55.119476, 51.776024>,  <38.146908, 55.438488, 51.540966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201496, 55.119476, 51.776024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761167, 0.464074, 0.453057,
		-0.634035, 0.385463, 0.670386,
		0.136472, -0.797530, 0.587641,
		38.242439, 54.880219, 51.952316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220322, 55.775185, 52.226974>,  <38.146908, 55.438488, 51.540966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220322, 55.775185, 52.226974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383808, 55.410812, 52.204521>,  <38.481899, 55.192188, 52.191048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383808, 55.410812, 52.204521>,  <38.220322, 55.775185, 52.226974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383808, 55.410812, 52.204521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798214, 0.326963, 0.505915,
		-0.442500, -0.251586, 0.860755,
		0.408716, -0.910933, -0.056138,
		38.506424, 55.137531, 52.187679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423519, 55.533333, 52.928642>,  <38.220322, 55.775185, 52.226974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423519, 55.533333, 52.928642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668030, 55.393333, 52.644714>,  <38.814735, 55.309334, 52.474358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668030, 55.393333, 52.644714>,  <38.423519, 55.533333, 52.928642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668030, 55.393333, 52.644714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736797, 0.579097, 0.348967,
		0.288914, -0.736306, 0.611868,
		0.611277, -0.350001, -0.709817,
		38.851414, 55.288334, 52.431770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040009, 55.135376, 53.271011>,  <38.423519, 55.533333, 52.928642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040009, 55.135376, 53.271011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094940, 55.336121, 52.929420>,  <39.127899, 55.456566, 52.724464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094940, 55.336121, 52.929420>,  <39.040009, 55.135376, 53.271011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094940, 55.336121, 52.929420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767806, 0.490749, 0.411873,
		0.625791, -0.712253, -0.317934,
		0.137332, 0.501858, -0.853978,
		39.136139, 55.486679, 52.673225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698215, 55.029797, 52.893627>,  <39.040009, 55.135376, 53.271011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698215, 55.029797, 52.893627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565331, 55.404617, 52.850586>,  <39.485600, 55.629509, 52.824760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565331, 55.404617, 52.850586>,  <39.698215, 55.029797, 52.893627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565331, 55.404617, 52.850586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847410, 0.346613, 0.402189,
		0.414166, 0.042431, -0.909212,
		-0.332210, 0.937048, -0.107599,
		39.465668, 55.685730, 52.818306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318882, 55.433578, 52.612789>,  <39.698215, 55.029797, 52.893627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318882, 55.433578, 52.612789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053894, 55.633060, 52.836372>,  <39.894901, 55.752750, 52.970520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053894, 55.633060, 52.836372>,  <40.318882, 55.433578, 52.612789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053894, 55.633060, 52.836372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748792, 0.461867, 0.475382,
		-0.021090, 0.733468, -0.679396,
		-0.662469, 0.498701, 0.558957,
		39.855152, 55.782669, 53.004059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205185, 56.127209, 52.621346>,  <40.318882, 55.433578, 52.612789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205185, 56.127209, 52.621346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126411, 55.998222, 52.991695>,  <40.079147, 55.920830, 53.213905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126411, 55.998222, 52.991695>,  <40.205185, 56.127209, 52.621346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126411, 55.998222, 52.991695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880724, 0.356722, 0.311568,
		-0.430747, 0.876794, 0.213750,
		-0.196931, -0.322461, 0.925871,
		40.067333, 55.901485, 53.269455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046490, 56.603157, 53.289043>,  <40.205185, 56.127209, 52.621346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046490, 56.603157, 53.289043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216606, 56.269073, 53.428505>,  <40.318676, 56.068623, 53.512180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216606, 56.269073, 53.428505>,  <40.046490, 56.603157, 53.289043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216606, 56.269073, 53.428505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815683, 0.520631, 0.252198,
		-0.392157, 0.177134, 0.902683,
		0.425292, -0.835205, 0.348654,
		40.344193, 56.018513, 53.533100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454872, 56.866985, 53.787846>,  <40.046490, 56.603157, 53.289043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454872, 56.866985, 53.787846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595097, 56.497658, 53.725113>,  <40.679230, 56.276062, 53.687473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595097, 56.497658, 53.725113>,  <40.454872, 56.866985, 53.787846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595097, 56.497658, 53.725113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923205, 0.312530, 0.223647,
		-0.157482, -0.223190, 0.961970,
		0.350560, -0.923315, -0.156833,
		40.700264, 56.220665, 53.678062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004604, 56.787861, 54.220684>,  <40.454872, 56.866985, 53.787846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004604, 56.787861, 54.220684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104832, 56.534409, 53.927910>,  <41.164967, 56.382336, 53.752247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104832, 56.534409, 53.927910>,  <41.004604, 56.787861, 54.220684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104832, 56.534409, 53.927910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919092, 0.393202, -0.025753,
		0.304115, -0.666260, 0.680890,
		0.250569, -0.633632, -0.731933,
		41.180004, 56.344318, 53.708328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734856, 56.796654, 54.066772>,  <41.004604, 56.787861, 54.220684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734856, 56.796654, 54.066772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631714, 56.547173, 53.771610>,  <41.569828, 56.397484, 53.594513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631714, 56.547173, 53.771610>,  <41.734856, 56.796654, 54.066772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631714, 56.547173, 53.771610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911173, 0.097045, -0.400431,
		0.321359, -0.775616, 0.543275,
		-0.257859, -0.623700, -0.737907,
		41.554356, 56.360062, 53.550240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269936, 56.344463, 54.166618>,  <41.734856, 56.796654, 54.066772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269936, 56.344463, 54.166618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123775, 56.340111, 53.794304>,  <42.036079, 56.337498, 53.570915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123775, 56.340111, 53.794304>,  <42.269936, 56.344463, 54.166618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123775, 56.340111, 53.794304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929074, 0.057468, -0.365403,
		0.057468, -0.998288, -0.010885,
		0.365403, 0.010885, 0.930786,
		42.014156, 56.336845, 53.515068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601547, 55.833820, 53.789963>,  <42.269936, 56.344463, 54.166618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601547, 55.833820, 53.789963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503597, 56.141647, 53.554062>,  <42.444828, 56.326344, 53.412521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503597, 56.141647, 53.554062>,  <42.601547, 55.833820, 53.789963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503597, 56.141647, 53.554062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958682, 0.101352, -0.265814,
		-0.144789, -0.630472, -0.762588,
		-0.244878, 0.769567, -0.589747,
		42.430134, 56.372517, 53.377136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791691, 55.729225, 53.200935>,  <42.601547, 55.833820, 53.789963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791691, 55.729225, 53.200935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789173, 56.129021, 53.213463>,  <42.787663, 56.368896, 53.220978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789173, 56.129021, 53.213463>,  <42.791691, 55.729225, 53.200935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789173, 56.129021, 53.213463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978712, 0.012585, -0.204852,
		-0.205142, 0.029360, -0.978292,
		-0.006297, 0.999490, 0.031316,
		42.787285, 56.428867, 53.222858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159061, 56.038013, 52.611412>,  <42.791691, 55.729225, 53.200935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159061, 56.038013, 52.611412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172043, 56.265587, 52.940109>,  <43.179832, 56.402130, 53.137329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172043, 56.265587, 52.940109>,  <43.159061, 56.038013, 52.611412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172043, 56.265587, 52.940109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999469, -0.020972, -0.024954,
		0.003036, 0.822116, -0.569312,
		0.032454, 0.568933, 0.821743,
		43.181778, 56.436268, 53.186630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725178, 56.470318, 52.406345>,  <43.159061, 56.038013, 52.611412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725178, 56.470318, 52.406345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629089, 56.442734, 52.793652>,  <43.571438, 56.426182, 53.026035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629089, 56.442734, 52.793652>,  <43.725178, 56.470318, 52.406345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629089, 56.442734, 52.793652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961547, -0.153698, 0.227607,
		0.133124, 0.985708, 0.103232,
		-0.240221, -0.068962, 0.968266,
		43.557022, 56.422047, 53.084129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177765, 56.971203, 52.697750>,  <43.725178, 56.470318, 52.406345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177765, 56.971203, 52.697750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103729, 56.650009, 52.924362>,  <44.059307, 56.457294, 53.060329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103729, 56.650009, 52.924362>,  <44.177765, 56.971203, 52.697750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103729, 56.650009, 52.924362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979802, -0.106381, 0.169323,
		-0.075695, 0.586430, 0.806455,
		-0.185087, -0.802984, 0.566533,
		44.048203, 56.409115, 53.094322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595474, 57.018703, 53.379562>,  <44.177765, 56.971203, 52.697750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595474, 57.018703, 53.379562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497009, 56.650021, 53.259655>,  <44.437931, 56.428810, 53.187710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497009, 56.650021, 53.259655>,  <44.595474, 57.018703, 53.379562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497009, 56.650021, 53.259655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955579, -0.282519, 0.083973,
		-0.162088, -0.265777, 0.950310,
		-0.246163, -0.921708, -0.299764,
		44.423161, 56.373508, 53.169727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884453, 56.570789, 53.855400>,  <44.595474, 57.018703, 53.379562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884453, 56.570789, 53.855400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835663, 56.383556, 53.505310>,  <44.806389, 56.271217, 53.295254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835663, 56.383556, 53.505310>,  <44.884453, 56.570789, 53.855400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835663, 56.383556, 53.505310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949694, -0.311313, 0.034138,
		-0.288450, -0.827035, 0.482504,
		-0.121976, -0.468078, -0.875228,
		44.799068, 56.243134, 53.242741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078381, 55.789421, 53.946537>,  <44.884453, 56.570789, 53.855400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078381, 55.789421, 53.946537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110874, 55.907887, 53.565865>,  <45.130371, 55.978966, 53.337463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110874, 55.907887, 53.565865>,  <45.078381, 55.789421, 53.946537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110874, 55.907887, 53.565865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955317, -0.295399, -0.010388,
		-0.284201, -0.908310, -0.306926,
		0.081231, 0.296163, -0.951677,
		45.135242, 55.996735, 53.280361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428951, 55.306976, 53.412643>,  <45.078381, 55.789421, 53.946537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428951, 55.306976, 53.412643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480598, 55.692192, 53.318077>,  <45.511585, 55.923321, 53.261337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480598, 55.692192, 53.318077>,  <45.428951, 55.306976, 53.412643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480598, 55.692192, 53.318077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991081, -0.117393, 0.063061,
		0.032977, -0.242445, -0.969604,
		0.129114, 0.963036, -0.236412,
		45.519333, 55.981102, 53.247154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788334, 55.347416, 52.748775>,  <45.428951, 55.306976, 53.412643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788334, 55.347416, 52.748775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850475, 55.634621, 53.020164>,  <45.887760, 55.806942, 53.182999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850475, 55.634621, 53.020164>,  <45.788334, 55.347416, 52.748775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850475, 55.634621, 53.020164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919112, -0.356793, 0.167129,
		0.362074, 0.597627, -0.715363,
		0.155355, 0.718011, 0.678472,
		45.897083, 55.850025, 53.223705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471539, 55.662090, 52.703438>,  <45.788334, 55.347416, 52.748775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471539, 55.662090, 52.703438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340225, 55.673752, 53.081089>,  <46.261436, 55.680748, 53.307678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340225, 55.673752, 53.081089>,  <46.471539, 55.662090, 52.703438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340225, 55.673752, 53.081089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789040, -0.541015, 0.291065,
		0.519274, 0.840508, 0.154601,
		-0.328284, 0.029156, 0.944129,
		46.241741, 55.682499, 53.364326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857235, 55.358654, 53.206497>,  <46.471539, 55.662090, 52.703438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857235, 55.358654, 53.206497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113857, 55.560936, 52.975784>,  <47.267830, 55.682304, 52.837357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113857, 55.560936, 52.975784>,  <46.857235, 55.358654, 53.206497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.113857, 55.560936, 52.975784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588997, -0.806465, -0.051938,
		-0.491418, -0.306400, -0.815247,
		0.641554, 0.505701, -0.576780,
		47.306324, 55.712646, 52.802750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.546795, 55.132343, 53.217068>,  <46.857235, 55.358654, 53.206497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.546795, 55.132343, 53.217068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228245, 54.920570, 53.100121>,  <47.037113, 54.793507, 53.029953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228245, 54.920570, 53.100121>,  <47.546795, 55.132343, 53.217068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228245, 54.920570, 53.100121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112855, 0.344838, -0.931853,
		0.594178, -0.775102, -0.214872,
		-0.796377, -0.529437, -0.292369,
		46.989330, 54.761738, 53.012409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.110416, 54.997108, 53.888649>,  <47.546795, 55.132343, 53.217068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.110416, 54.997108, 53.888649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.460903, 55.091007, 54.056999>,  <48.671196, 55.147346, 54.158009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.460903, 55.091007, 54.056999>,  <48.110416, 54.997108, 53.888649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.460903, 55.091007, 54.056999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444678, 0.730474, 0.518333,
		-0.185761, -0.641327, 0.744441,
		0.876216, 0.234751, 0.420877,
		48.723766, 55.161434, 54.183262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.789558, 55.415565, 54.378757>,  <48.110416, 54.997108, 53.888649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.789558, 55.415565, 54.378757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.181835, 55.492168, 54.394569>,  <48.417202, 55.538128, 54.404057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.181835, 55.492168, 54.394569>,  <47.789558, 55.415565, 54.378757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.181835, 55.492168, 54.394569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188079, 0.868472, 0.458675,
		0.053507, -0.457256, 0.887724,
		0.980695, 0.191505, 0.039531,
		48.476044, 55.549622, 54.406429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.912018, 55.524288, 55.013733>,  <47.789558, 55.415565, 54.378757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.912018, 55.524288, 55.013733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.178188, 55.710865, 54.780617>,  <48.337891, 55.822811, 54.640747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.178188, 55.710865, 54.780617>,  <47.912018, 55.524288, 55.013733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.178188, 55.710865, 54.780617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295191, 0.881522, 0.368485,
		0.685620, -0.073164, 0.724274,
		0.665423, 0.466440, -0.582791,
		48.377815, 55.850796, 54.605778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.325970, 56.149548, 55.429031>,  <47.912018, 55.524288, 55.013733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.325970, 56.149548, 55.429031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.345470, 56.208206, 55.033836>,  <48.357170, 56.243401, 54.796719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.345470, 56.208206, 55.033836>,  <48.325970, 56.149548, 55.429031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.345470, 56.208206, 55.033836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169542, 0.976024, 0.136501,
		0.984316, 0.160851, 0.072444,
		0.048751, 0.146643, -0.987987,
		48.360096, 56.252197, 54.737442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.876343, 56.671013, 55.292755>,  <48.325970, 56.149548, 55.429031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.876343, 56.671013, 55.292755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.591892, 56.655319, 55.011971>,  <48.421223, 56.645901, 54.843498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.591892, 56.655319, 55.011971>,  <48.876343, 56.671013, 55.292755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.591892, 56.655319, 55.011971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248731, 0.947911, 0.198993,
		0.657592, 0.316110, -0.683847,
		-0.711130, -0.039238, -0.701965,
		48.378551, 56.643547, 54.801380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.752087, 57.437099, 55.291096>,  <48.876343, 56.671013, 55.292755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.752087, 57.437099, 55.291096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.745441, 57.836761, 55.276077>,  <48.741455, 58.076561, 55.267067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.745441, 57.836761, 55.276077>,  <48.752087, 57.437099, 55.291096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.745441, 57.836761, 55.276077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410564, 0.027419, 0.911419,
		0.911680, 0.030556, 0.409763,
		-0.016614, 0.999157, -0.037543,
		48.740456, 58.136509, 55.264816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.114517, 57.810669, 55.969730>,  <48.752087, 57.437099, 55.291096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.114517, 57.810669, 55.969730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.827541, 58.058662, 55.842667>,  <48.655357, 58.207458, 55.766430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.827541, 58.058662, 55.842667>,  <49.114517, 57.810669, 55.969730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.827541, 58.058662, 55.842667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292522, 0.145727, 0.945090,
		0.632229, 0.770965, 0.076808,
		-0.717438, 0.619982, -0.317657,
		48.612309, 58.244656, 55.747368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.588696, 58.149345, 55.417473>,  <49.114517, 57.810669, 55.969730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.588696, 58.149345, 55.417473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.600483, 58.397972, 55.730598>,  <49.607555, 58.547146, 55.918472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.600483, 58.397972, 55.730598>,  <49.588696, 58.149345, 55.417473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.600483, 58.397972, 55.730598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816959, -0.466224, 0.339431,
		0.575942, 0.629519, -0.521533,
		0.029473, 0.621563, 0.782809,
		49.609325, 58.584442, 55.965443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.331364, 58.141125, 55.721542>,  <49.588696, 58.149345, 55.417473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.331364, 58.141125, 55.721542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.110760, 58.197037, 56.050491>,  <49.978397, 58.230583, 56.247860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.110760, 58.197037, 56.050491>,  <50.331364, 58.141125, 55.721542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.110760, 58.197037, 56.050491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741222, -0.370130, 0.559995,
		0.382664, 0.918403, 0.100517,
		-0.551506, 0.139785, 0.822376,
		49.945309, 58.238972, 56.297203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.225616, 58.879749, 55.517334>,  <50.331364, 58.141125, 55.721542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.225616, 58.879749, 55.517334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.559330, 59.076164, 55.617615>,  <50.759560, 59.194012, 55.677784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.559330, 59.076164, 55.617615>,  <50.225616, 58.879749, 55.517334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.559330, 59.076164, 55.617615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540057, -0.819346, -0.192380,
		0.110946, 0.295894, -0.948756,
		0.834284, 0.491038, 0.250703,
		50.809616, 59.223476, 55.692825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.834167, 58.788712, 54.967979>,  <50.225616, 58.879749, 55.517334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.834167, 58.788712, 54.967979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.953907, 58.866417, 55.341644>,  <51.025749, 58.913040, 55.565842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.953907, 58.866417, 55.341644>,  <50.834167, 58.788712, 54.967979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.953907, 58.866417, 55.341644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506511, -0.862067, 0.016963,
		0.808603, 0.468083, -0.356454,
		0.299347, 0.194264, 0.934159,
		51.043713, 58.924698, 55.621891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.636883, 58.798141, 55.120880>,  <50.834167, 58.788712, 54.967979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.636883, 58.798141, 55.120880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.445450, 58.646759, 55.437798>,  <51.330589, 58.555927, 55.627949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.445450, 58.646759, 55.437798>,  <51.636883, 58.798141, 55.120880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.445450, 58.646759, 55.437798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631732, -0.775104, 0.011350,
		0.609812, 0.505948, 0.610038,
		-0.478585, -0.378459, 0.792291,
		51.301876, 58.533222, 55.675484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.875317, 59.394711, 54.699356>,  <51.636883, 58.798141, 55.120880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.875317, 59.394711, 54.699356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.122173, 59.182579, 54.931870>,  <52.270287, 59.055298, 55.071377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.122173, 59.182579, 54.931870>,  <51.875317, 59.394711, 54.699356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.122173, 59.182579, 54.931870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734058, 0.654080, -0.182589,
		-0.283373, 0.539378, 0.792951,
		0.617137, -0.530331, 0.581283,
		52.307316, 59.023479, 55.106255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.281563, 59.757973, 55.116150>,  <51.875317, 59.394711, 54.699356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.281563, 59.757973, 55.116150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.479908, 59.420212, 55.035057>,  <52.598915, 59.217556, 54.986401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.479908, 59.420212, 55.035057>,  <52.281563, 59.757973, 55.116150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.479908, 59.420212, 55.035057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532162, 0.479951, -0.697460,
		0.686240, 0.237959, 0.687351,
		0.495861, -0.844407, -0.202729,
		52.628666, 59.166889, 54.974239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.979931, 59.637165, 55.363762>,  <52.281563, 59.757973, 55.116150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.979931, 59.637165, 55.363762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.916073, 59.473396, 55.004456>,  <52.877758, 59.375137, 54.788872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.916073, 59.473396, 55.004456>,  <52.979931, 59.637165, 55.363762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.916073, 59.473396, 55.004456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492755, 0.755423, -0.431889,
		0.855397, -0.511578, 0.081140,
		-0.159650, -0.409419, -0.898269,
		52.868179, 59.350571, 54.734974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.627960, 59.426476, 54.987019>,  <52.979931, 59.637165, 55.363762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.627960, 59.426476, 54.987019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.327339, 59.531151, 54.744797>,  <53.146969, 59.593956, 54.599464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.327339, 59.531151, 54.744797>,  <53.627960, 59.426476, 54.987019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.327339, 59.531151, 54.744797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603113, 0.644471, -0.470012,
		0.267260, -0.718452, -0.642183,
		-0.751549, 0.261693, -0.605549,
		53.101875, 59.609657, 54.563133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.986427, 59.414547, 54.420212>,  <53.627960, 59.426476, 54.987019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.986427, 59.414547, 54.420212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.679733, 59.670528, 54.440521>,  <53.495716, 59.824116, 54.452705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.679733, 59.670528, 54.440521>,  <53.986427, 59.414547, 54.420212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.679733, 59.670528, 54.440521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610050, 0.750962, -0.252774,
		-0.199890, -0.162839, -0.966192,
		-0.766735, 0.639953, 0.050770,
		53.449715, 59.862514, 54.455753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.088528, 59.826630, 53.852196>,  <53.986427, 59.414547, 54.420212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.088528, 59.826630, 53.852196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.870152, 59.989799, 54.144920>,  <53.739128, 60.087700, 54.320557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.870152, 59.989799, 54.144920>,  <54.088528, 59.826630, 53.852196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.870152, 59.989799, 54.144920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476664, 0.869553, -0.129106,
		-0.689017, 0.278346, -0.669163,
		-0.545937, 0.407922, 0.731814,
		53.706371, 60.112175, 54.364464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.687771, 60.456211, 53.545883>,  <54.088528, 59.826630, 53.852196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.687771, 60.456211, 53.545883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.770988, 60.474438, 53.936707>,  <53.820919, 60.485374, 54.171200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.770988, 60.474438, 53.936707>,  <53.687771, 60.456211, 53.545883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.770988, 60.474438, 53.936707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611249, 0.773782, -0.166240,
		-0.763605, 0.631811, 0.133125,
		0.208042, 0.045569, 0.977058,
		53.833401, 60.488110, 54.229824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.726902, 61.140564, 53.737614>,  <53.687771, 60.456211, 53.545883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.726902, 61.140564, 53.737614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.938679, 60.941872, 54.012695>,  <54.065746, 60.822655, 54.177746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.938679, 60.941872, 54.012695>,  <53.726902, 61.140564, 53.737614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.938679, 60.941872, 54.012695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737970, 0.669516, -0.084546,
		-0.418435, 0.552270, 0.721048,
		0.529446, -0.496735, 0.687708,
		54.097511, 60.792850, 54.219009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.987354, 61.562962, 54.292233>,  <53.726902, 61.140564, 53.737614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.987354, 61.562962, 54.292233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.254333, 61.268486, 54.247429>,  <54.414520, 61.091801, 54.220547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.254333, 61.268486, 54.247429>,  <53.987354, 61.562962, 54.292233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.254333, 61.268486, 54.247429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744017, 0.665532, 0.059217,
		0.030952, -0.122862, 0.991941,
		0.667444, -0.736188, -0.112010,
		54.454567, 61.047630, 54.213825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.568726, 61.666836, 54.874149>,  <53.987354, 61.562962, 54.292233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.568726, 61.666836, 54.874149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.670135, 61.487572, 54.531250>,  <54.730980, 61.380013, 54.325508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.670135, 61.487572, 54.531250>,  <54.568726, 61.666836, 54.874149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.670135, 61.487572, 54.531250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791327, 0.605780, -0.082665,
		0.556352, -0.657407, 0.508220,
		0.253525, -0.448159, -0.857251,
		54.746193, 61.353123, 54.274075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.218636, 61.387672, 54.938217>,  <54.568726, 61.666836, 54.874149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.218636, 61.387672, 54.938217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.173233, 61.447464, 54.545326>,  <55.145992, 61.483337, 54.309593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.173233, 61.447464, 54.545326>,  <55.218636, 61.387672, 54.938217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.173233, 61.447464, 54.545326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841727, 0.539691, -0.015138,
		0.527836, -0.828487, -0.187078,
		-0.113506, 0.149479, -0.982228,
		55.139183, 61.492306, 54.250656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.893311, 61.216259, 54.501957>,  <55.218636, 61.387672, 54.938217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.893311, 61.216259, 54.501957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.714661, 61.504841, 54.290287>,  <55.607471, 61.677990, 54.163284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.714661, 61.504841, 54.290287>,  <55.893311, 61.216259, 54.501957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.714661, 61.504841, 54.290287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852008, 0.523502, -0.005376,
		0.273147, -0.453266, -0.848493,
		-0.446624, 0.721454, -0.529179,
		55.580673, 61.721275, 54.131535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.393250, 61.388168, 54.094257>,  <55.893311, 61.216259, 54.501957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.393250, 61.388168, 54.094257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.127693, 61.687141, 54.084419>,  <55.968361, 61.866524, 54.078514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.127693, 61.687141, 54.084419>,  <56.393250, 61.388168, 54.094257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.127693, 61.687141, 54.084419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701577, 0.633875, 0.325564,
		0.258929, 0.198880, -0.945200,
		-0.663887, 0.747428, -0.024599,
		55.928528, 61.911369, 54.077038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.626236, 61.989025, 53.688972>,  <56.393250, 61.388168, 54.094257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.626236, 61.989025, 53.688972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.380936, 62.079391, 53.991730>,  <56.233757, 62.133610, 54.173386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.380936, 62.079391, 53.991730>,  <56.626236, 61.989025, 53.688972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.380936, 62.079391, 53.991730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746979, 0.477400, 0.462723,
		-0.256806, 0.849148, -0.461517,
		-0.613248, 0.225913, 0.756895,
		56.196960, 62.147167, 54.218800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.505325, 62.651501, 53.882385>,  <56.626236, 61.989025, 53.688972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.505325, 62.651501, 53.882385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.449402, 62.440552, 54.217606>,  <56.415848, 62.313984, 54.418739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.449402, 62.440552, 54.217606>,  <56.505325, 62.651501, 53.882385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.449402, 62.440552, 54.217606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836844, 0.389485, 0.384699,
		-0.529289, 0.755103, 0.386876,
		-0.139805, -0.527371, 0.838054,
		56.407459, 62.282341, 54.469021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.534721, 63.171986, 54.400818>,  <56.505325, 62.651501, 53.882385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.534721, 63.171986, 54.400818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.640579, 62.811821, 54.538937>,  <56.704094, 62.595722, 54.621807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.640579, 62.811821, 54.538937>,  <56.534721, 63.171986, 54.400818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.640579, 62.811821, 54.538937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677115, 0.428446, 0.598289,
		-0.686645, 0.075471, 0.723065,
		0.264641, -0.900410, 0.345293,
		56.719971, 62.541698, 54.642525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.598240, 63.271198, 55.084042>,  <56.534721, 63.171986, 54.400818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.598240, 63.271198, 55.084042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.795547, 62.932579, 55.003998>,  <56.913933, 62.729408, 54.955971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.795547, 62.932579, 55.003998>,  <56.598240, 63.271198, 55.084042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.795547, 62.932579, 55.003998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737882, 0.285377, 0.611629,
		-0.460665, -0.449358, 0.765419,
		0.493273, -0.846544, -0.200110,
		56.943531, 62.678616, 54.943966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.807259, 62.882099, 55.703571>,  <56.598240, 63.271198, 55.084042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.807259, 62.882099, 55.703571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.082611, 62.873558, 55.413559>,  <57.247822, 62.868435, 55.239552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.082611, 62.873558, 55.413559>,  <56.807259, 62.882099, 55.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.082611, 62.873558, 55.413559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691733, 0.320078, 0.647345,
		0.218243, -0.947150, 0.235108,
		0.688385, -0.021353, -0.725030,
		57.289127, 62.867153, 55.196049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.385174, 62.452438, 55.861755>,  <56.807259, 62.882099, 55.703571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.385174, 62.452438, 55.861755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.498985, 62.757904, 55.629944>,  <57.567272, 62.941185, 55.490856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.498985, 62.757904, 55.629944>,  <57.385174, 62.452438, 55.861755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.498985, 62.757904, 55.629944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559949, 0.358290, 0.747051,
		0.778138, -0.537065, -0.325671,
		0.284531, 0.763668, -0.579528,
		57.584343, 62.987003, 55.456085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.063087, 62.624783, 56.012840>,  <57.385174, 62.452438, 55.861755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.063087, 62.624783, 56.012840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.917152, 62.959488, 55.849518>,  <57.829594, 63.160313, 55.751522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.917152, 62.959488, 55.849518>,  <58.063087, 62.624783, 56.012840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.917152, 62.959488, 55.849518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204597, 0.499868, 0.841589,
		0.908315, 0.223503, -0.353569,
		-0.364835, 0.836767, -0.408309,
		57.807701, 63.210518, 55.727024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.578987, 62.103691, 56.044617>,  <58.063087, 62.624783, 56.012840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.578987, 62.103691, 56.044617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.555130, 62.083611, 55.645836>,  <58.540817, 62.071564, 55.406567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.555130, 62.083611, 55.645836>,  <58.578987, 62.103691, 56.044617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.555130, 62.083611, 55.645836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960236, 0.270000, -0.071041,
		0.272745, -0.961550, 0.032103,
		-0.059642, -0.050202, -0.996956,
		58.537239, 62.068550, 55.346748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.588367, 61.526489, 56.616222>,  <58.578987, 62.103691, 56.044617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.588367, 61.526489, 56.616222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.940636, 61.337334, 56.604942>,  <59.151997, 61.223839, 56.598175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.940636, 61.337334, 56.604942>,  <58.588367, 61.526489, 56.616222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.940636, 61.337334, 56.604942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465184, 0.874505, -0.137277,
		0.089579, 0.107777, 0.990131,
		0.880670, -0.472890, -0.028202,
		59.204838, 61.195465, 56.596481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.150024, 61.779373, 57.167416>,  <58.588367, 61.526489, 56.616222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.150024, 61.779373, 57.167416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.259048, 61.638977, 56.809082>,  <59.324463, 61.554741, 56.594082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.259048, 61.638977, 56.809082>,  <59.150024, 61.779373, 57.167416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.259048, 61.638977, 56.809082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159809, 0.934667, -0.317582,
		0.948775, -0.056604, 0.310840,
		0.272556, -0.350989, -0.895835,
		59.340816, 61.533680, 56.540333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.871849, 61.891891, 56.920410>,  <59.150024, 61.779373, 57.167416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.871849, 61.891891, 56.920410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.605965, 61.900864, 56.621704>,  <59.446434, 61.906246, 56.442482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.605965, 61.900864, 56.621704>,  <59.871849, 61.891891, 56.920410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.605965, 61.900864, 56.621704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375383, 0.874242, -0.307878,
		0.645944, -0.484972, -0.589541,
		-0.664714, 0.022431, -0.746761,
		59.406551, 61.907593, 56.397675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.189816, 61.938202, 56.102833>,  <59.871849, 61.891891, 56.920410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.189816, 61.938202, 56.102833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.865349, 62.124657, 56.244102>,  <59.670670, 62.236530, 56.328865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.865349, 62.124657, 56.244102>,  <60.189816, 61.938202, 56.102833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.865349, 62.124657, 56.244102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342805, 0.868261, -0.358618,
		-0.473812, -0.169828, -0.864095,
		-0.811164, 0.466134, 0.353175,
		59.621998, 62.264496, 56.350056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.466507, 61.496994, 55.510796>,  <60.189816, 61.938202, 56.102833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.466507, 61.496994, 55.510796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.760063, 61.491264, 55.239151>,  <60.936199, 61.487827, 55.076164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.760063, 61.491264, 55.239151>,  <60.466507, 61.496994, 55.510796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.760063, 61.491264, 55.239151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576472, -0.515671, 0.633849,
		-0.359277, -0.856667, -0.370191,
		0.733894, -0.014322, -0.679113,
		60.980232, 61.486969, 55.035416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.792358, 60.868233, 55.437290>,  <60.466507, 61.496994, 55.510796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.792358, 60.868233, 55.437290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.068748, 61.132133, 55.319115>,  <61.234581, 61.290474, 55.248207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.068748, 61.132133, 55.319115>,  <60.792358, 60.868233, 55.437290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.068748, 61.132133, 55.319115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678981, -0.452073, 0.578458,
		0.248076, -0.600299, -0.760329,
		0.690972, 0.659751, -0.295443,
		61.276039, 61.330059, 55.230480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.438217, 60.644951, 55.021202>,  <60.792358, 60.868233, 55.437290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.438217, 60.644951, 55.021202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.523460, 60.950748, 55.264557>,  <61.574608, 61.134228, 55.410572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.523460, 60.950748, 55.264557>,  <61.438217, 60.644951, 55.021202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.523460, 60.950748, 55.264557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574627, -0.601684, 0.554780,
		0.790182, 0.231368, -0.567521,
		0.213110, 0.764490, 0.608390,
		61.587395, 61.180096, 55.447075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.245255, 60.776386, 55.120392>,  <61.438217, 60.644951, 55.021202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.245255, 60.776386, 55.120392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.001450, 60.879471, 55.420280>,  <61.855167, 60.941322, 55.600212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.001450, 60.879471, 55.420280>,  <62.245255, 60.776386, 55.120392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.001450, 60.879471, 55.420280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515143, -0.590073, 0.621644,
		0.602595, 0.765113, 0.226897,
		-0.609514, 0.257715, 0.749717,
		61.818596, 60.956787, 55.645195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.591511, 60.094273, 55.158684>,  <62.245255, 60.776386, 55.120392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.591511, 60.094273, 55.158684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.654221, 60.145813, 55.550362>,  <62.691845, 60.176735, 55.785370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.654221, 60.145813, 55.550362>,  <62.591511, 60.094273, 55.158684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.654221, 60.145813, 55.550362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987292, -0.046565, -0.151940,
		0.026019, 0.990570, -0.134511,
		0.156771, 0.128848, 0.979194,
		62.701252, 60.184467, 55.844120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.054420, 60.570625, 55.103855>,  <62.591511, 60.094273, 55.158684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.054420, 60.570625, 55.103855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.075081, 60.389755, 55.460030>,  <63.087479, 60.281235, 55.673733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.075081, 60.389755, 55.460030>,  <63.054420, 60.570625, 55.103855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.075081, 60.389755, 55.460030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973363, 0.222228, 0.056389,
		-0.223376, 0.863802, 0.451608,
		0.051651, -0.452174, 0.890433,
		63.090576, 60.254105, 55.727158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.406967, 61.050049, 55.653030>,  <63.054420, 60.570625, 55.103855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.406967, 61.050049, 55.653030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.454147, 60.655983, 55.702881>,  <63.482456, 60.419544, 55.732792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.454147, 60.655983, 55.702881>,  <63.406967, 61.050049, 55.653030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.454147, 60.655983, 55.702881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978752, 0.136533, 0.152980,
		-0.167726, 0.103931, 0.980340,
		0.117949, -0.985168, 0.124623,
		63.489532, 60.360432, 55.740269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.872490, 60.918926, 56.291821>,  <63.406967, 61.050049, 55.653030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.872490, 60.918926, 56.291821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.910721, 60.649254, 55.998878>,  <63.933659, 60.487450, 55.823112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.910721, 60.649254, 55.998878>,  <63.872490, 60.918926, 56.291821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.910721, 60.649254, 55.998878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978017, -0.073379, 0.195187,
		-0.185331, -0.734912, 0.652347,
		0.095577, -0.674181, -0.732356,
		63.939392, 60.446999, 55.779171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.200485, 60.266701, 56.554684>,  <63.872490, 60.918926, 56.291821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.200485, 60.266701, 56.554684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.271111, 60.366619, 56.173859>,  <64.313484, 60.426571, 55.945362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.271111, 60.366619, 56.173859>,  <64.200485, 60.266701, 56.554684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.271111, 60.366619, 56.173859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959677, 0.171267, 0.222908,
		0.218739, -0.953031, -0.209486,
		0.176561, 0.249798, -0.952065,
		64.324081, 60.441559, 55.888241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.826126, 59.949360, 56.291168>,  <64.200485, 60.266701, 56.554684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.826126, 59.949360, 56.291168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.803215, 60.277115, 56.063019>,  <64.789467, 60.473766, 55.926128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.803215, 60.277115, 56.063019>,  <64.826126, 59.949360, 56.291168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.803215, 60.277115, 56.063019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966519, 0.188643, 0.173938,
		0.250120, -0.541316, -0.802756,
		-0.057279, 0.819384, -0.570376,
		64.786034, 60.522930, 55.891907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.125526, 59.903141, 55.576546>,  <64.826126, 59.949360, 56.291168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.125526, 59.903141, 55.576546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.144417, 60.278610, 55.713165>,  <65.155754, 60.503891, 55.795135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.144417, 60.278610, 55.713165>,  <65.125526, 59.903141, 55.576546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.144417, 60.278610, 55.713165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997126, -0.064582, 0.039611,
		0.059240, 0.338695, -0.939029,
		0.047229, 0.938677, 0.341548,
		65.158585, 60.560215, 55.815628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.794518, 60.069756, 55.353512>,  <65.125526, 59.903141, 55.576546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.794518, 60.069756, 55.353512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.697304, 60.356133, 55.615311>,  <65.638977, 60.527958, 55.772388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.697304, 60.356133, 55.615311>,  <65.794518, 60.069756, 55.353512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.697304, 60.356133, 55.615311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966833, 0.124163, 0.223200,
		0.078533, 0.687035, -0.722368,
		-0.243037, 0.715938, 0.654497,
		65.624390, 60.570915, 55.811661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.298126, 60.632801, 55.291695>,  <65.794518, 60.069756, 55.353512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.298126, 60.632801, 55.291695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.118752, 60.684830, 55.645416>,  <66.011124, 60.716045, 55.857647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.118752, 60.684830, 55.645416>,  <66.298126, 60.632801, 55.291695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.118752, 60.684830, 55.645416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891377, 0.138121, 0.431706,
		-0.065988, 0.981837, -0.177880,
		-0.448434, 0.130071, 0.884301,
		65.984222, 60.723850, 55.910706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.316002, 61.298180, 55.540840>,  <66.298126, 60.632801, 55.291695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.316002, 61.298180, 55.540840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.325821, 61.027649, 55.835320>,  <66.331711, 60.865330, 56.012005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.325821, 61.027649, 55.835320>,  <66.316002, 61.298180, 55.540840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.325821, 61.027649, 55.835320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847502, 0.404665, 0.343490,
		-0.530223, 0.615492, 0.583123,
		0.024554, -0.676325, 0.736194,
		66.333191, 60.824753, 56.056179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.531410, 61.687160, 56.041344>,  <66.316002, 61.298180, 55.540840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.531410, 61.687160, 56.041344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.615089, 61.304619, 56.122940>,  <66.665298, 61.075092, 56.171898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.615089, 61.304619, 56.122940>,  <66.531410, 61.687160, 56.041344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.615089, 61.304619, 56.122940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906016, 0.268055, 0.327539,
		-0.367926, 0.116298, 0.922554,
		0.209203, -0.956358, 0.203992,
		66.677849, 61.017712, 56.184139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.485489, 61.487492, 56.808193>,  <66.531410, 61.687160, 56.041344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.485489, 61.487492, 56.808193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.754662, 61.308693, 56.572449>,  <66.916168, 61.201412, 56.431004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.754662, 61.308693, 56.572449>,  <66.485489, 61.487492, 56.808193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.754662, 61.308693, 56.572449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739550, 0.422384, 0.524077,
		0.014675, -0.788534, 0.614816,
		0.672941, -0.446996, -0.589359,
		66.956543, 61.174595, 56.395641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.951927, 61.127277, 57.156578>,  <66.485489, 61.487492, 56.808193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.951927, 61.127277, 57.156578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.138580, 61.250050, 56.824783>,  <67.250572, 61.323711, 56.625706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.138580, 61.250050, 56.824783>,  <66.951927, 61.127277, 57.156578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.138580, 61.250050, 56.824783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786398, 0.285220, 0.547930,
		0.404761, -0.907989, -0.108274,
		0.466633, 0.306927, -0.829487,
		67.278572, 61.342129, 56.575935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.647362, 60.997856, 57.188461>,  <66.951927, 61.127277, 57.156578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.647362, 60.997856, 57.188461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.627083, 61.314781, 56.945259>,  <67.614914, 61.504936, 56.799339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.627083, 61.314781, 56.945259>,  <67.647362, 60.997856, 57.188461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.627083, 61.314781, 56.945259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794316, 0.401008, 0.456348,
		0.605386, -0.459813, -0.649677,
		-0.050691, 0.792316, -0.608002,
		67.611877, 61.552475, 56.762859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.364571, 61.197632, 57.420422>,  <67.647362, 60.997856, 57.188461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.364571, 61.197632, 57.420422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.519669, 61.285225, 57.062271>,  <68.612732, 61.337780, 56.847382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.519669, 61.285225, 57.062271>,  <68.364571, 61.197632, 57.420422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.519669, 61.285225, 57.062271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151964, 0.942892, 0.296416,
		0.909153, -0.250999, 0.332327,
		0.387748, 0.218986, -0.895375,
		68.635994, 61.350922, 56.793659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.290474, 60.408649, 57.580070>,  <68.364571, 61.197632, 57.420422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.290474, 60.408649, 57.580070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.307411, 60.016151, 57.655289>,  <68.317574, 59.780651, 57.700420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.307411, 60.016151, 57.655289>,  <68.290474, 60.408649, 57.580070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.307411, 60.016151, 57.655289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989519, 0.015176, -0.143606,
		0.138059, 0.192153, 0.971605,
		0.042340, -0.981248, 0.188044,
		68.320114, 59.721779, 57.711700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.642189, 60.082588, 58.246429>,  <68.290474, 60.408649, 57.580070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.642189, 60.082588, 58.246429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.655937, 59.840797, 57.928078>,  <68.664185, 59.695724, 57.737064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.655937, 59.840797, 57.928078>,  <68.642189, 60.082588, 58.246429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.655937, 59.840797, 57.928078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969195, 0.214497, -0.121048,
		0.243885, -0.767204, 0.593227,
		0.034377, -0.604474, -0.795882,
		68.666252, 59.659454, 57.689312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.344101, 59.887806, 58.149570>,  <68.642189, 60.082588, 58.246429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.344101, 59.887806, 58.149570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.207634, 59.776405, 57.790451>,  <69.125755, 59.709564, 57.574978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.207634, 59.776405, 57.790451>,  <69.344101, 59.887806, 58.149570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.207634, 59.776405, 57.790451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936873, -0.022829, -0.348924,
		0.076681, -0.960164, 0.268710,
		-0.341159, -0.278503, -0.897801,
		69.105286, 59.692856, 57.521111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.597061, 59.148323, 57.927826>,  <69.344101, 59.887806, 58.149570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.597061, 59.148323, 57.927826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.527039, 59.394466, 57.620399>,  <69.485023, 59.542152, 57.435944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.527039, 59.394466, 57.620399>,  <69.597061, 59.148323, 57.927826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.527039, 59.394466, 57.620399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935431, -0.139562, -0.324794,
		-0.307128, -0.775793, -0.551197,
		-0.175047, 0.615360, -0.768564,
		69.474525, 59.579075, 57.389832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.225479, 59.198742, 58.288467>,  <69.597061, 59.148323, 57.927826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.225479, 59.198742, 58.288467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.466789, 59.463791, 58.466003>,  <70.611572, 59.622818, 58.572525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.466789, 59.463791, 58.466003>,  <70.225479, 59.198742, 58.288467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.466789, 59.463791, 58.466003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476110, -0.745689, 0.466120,
		0.639824, -0.069885, -0.765337,
		0.603278, 0.662619, 0.443837,
		70.647774, 59.662579, 58.599155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.798798, 59.050556, 58.048267>,  <70.225479, 59.198742, 58.288467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.798798, 59.050556, 58.048267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.878387, 59.224968, 58.399330>,  <70.926140, 59.329617, 58.609966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.878387, 59.224968, 58.399330>,  <70.798798, 59.050556, 58.048267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.878387, 59.224968, 58.399330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682024, -0.704718, 0.195488,
		0.703741, 0.559685, -0.437610,
		0.198980, 0.436033, 0.877657,
		70.938080, 59.355778, 58.662628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.407974, 58.717674, 58.215752>,  <70.798798, 59.050556, 58.048267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.407974, 58.717674, 58.215752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.338318, 58.958439, 58.527489>,  <71.296524, 59.102898, 58.714531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.338318, 58.958439, 58.527489>,  <71.407974, 58.717674, 58.215752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.338318, 58.958439, 58.527489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655246, -0.519961, 0.547990,
		0.735072, 0.606085, -0.303860,
		-0.174133, 0.601915, 0.779343,
		71.286079, 59.139015, 58.761292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.028267, 58.922501, 58.486866>,  <71.407974, 58.717674, 58.215752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.028267, 58.922501, 58.486866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.757347, 58.916470, 58.781090>,  <71.594795, 58.912849, 58.957623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.757347, 58.916470, 58.781090>,  <72.028267, 58.922501, 58.486866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.757347, 58.916470, 58.781090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633597, -0.520112, 0.572746,
		0.373938, 0.853965, 0.361820,
		-0.677292, -0.015077, 0.735560,
		71.554161, 58.911945, 59.001759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.171989, 59.352394, 59.132584>,  <72.028267, 58.922501, 58.486866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.171989, 59.352394, 59.132584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.999771, 58.996426, 59.192795>,  <71.896439, 58.782845, 59.228920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.999771, 58.996426, 59.192795>,  <72.171989, 59.352394, 59.132584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.999771, 58.996426, 59.192795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770897, -0.275850, 0.574129,
		-0.469409, 0.363234, 0.804808,
		-0.430550, -0.889926, 0.150529,
		71.870605, 58.729446, 59.237953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.402618, 59.214622, 59.727875>,  <72.171989, 59.352394, 59.132584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.402618, 59.214622, 59.727875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.303093, 58.848072, 59.602440>,  <72.243378, 58.628139, 59.527180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.303093, 58.848072, 59.602440>,  <72.402618, 59.214622, 59.727875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.303093, 58.848072, 59.602440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863252, -0.356635, 0.357221,
		-0.439186, -0.181819, 0.879805,
		-0.248820, -0.916380, -0.313585,
		72.228447, 58.573158, 59.508366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.434021, 58.749378, 60.349823>,  <72.402618, 59.214622, 59.727875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.434021, 58.749378, 60.349823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.509026, 58.552567, 60.009766>,  <72.554031, 58.434479, 59.805733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.509026, 58.552567, 60.009766>,  <72.434021, 58.749378, 60.349823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.509026, 58.552567, 60.009766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846462, -0.358156, 0.393987,
		-0.498338, -0.793491, 0.349329,
		0.187511, -0.492032, -0.850143,
		72.565277, 58.404957, 59.754723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.914207, 58.363300, 60.537670>,  <72.434021, 58.749378, 60.349823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.914207, 58.363300, 60.537670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.955208, 58.260967, 60.153160>,  <72.979805, 58.199566, 59.922455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.955208, 58.260967, 60.153160>,  <72.914207, 58.363300, 60.537670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.955208, 58.260967, 60.153160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983258, -0.120313, 0.136857,
		-0.150666, -0.959205, 0.239218,
		0.102493, -0.255832, -0.961273,
		72.985954, 58.184219, 59.864777>
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
