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
	<2.819600, 2.887696, 2.501992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.829212, 3.076725, 2.149607>,  <2.834980, 3.190142, 1.938175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.829212, 3.076725, 2.149607>,  <2.819600, 2.887696, 2.501992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.829212, 3.076725, 2.149607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994101, -0.104523, -0.028952,
		-0.105763, -0.875072, -0.472296,
		0.024031, 0.472572, -0.880964,
		2.836421, 3.218497, 1.885317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.024440, 2.424240, 1.840984>,  <2.819600, 2.887696, 2.501992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.024440, 2.424240, 1.840984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.116550, 2.813316, 1.852621>,  <3.171817, 3.046762, 1.859602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.116550, 2.813316, 1.852621>,  <3.024440, 2.424240, 1.840984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.116550, 2.813316, 1.852621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968490, -0.231990, 0.090592,
		0.094866, 0.007313, -0.995463,
		0.230275, 0.972691, 0.029091,
		3.185633, 3.105124, 1.861348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.559478, 2.670946, 1.238015>,  <3.024440, 2.424240, 1.840984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.559478, 2.670946, 1.238015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.602287, 2.888721, 1.570794>,  <3.627973, 3.019387, 1.770461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.602287, 2.888721, 1.570794>,  <3.559478, 2.670946, 1.238015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.602287, 2.888721, 1.570794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987405, -0.156264, -0.024760,
		0.116523, 0.824117, -0.554305,
		0.107024, 0.544438, 0.831946,
		3.634394, 3.052053, 1.820377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.932786, 3.384005, 1.202355>,  <3.559478, 2.670946, 1.238015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.932786, 3.384005, 1.202355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.973186, 3.150627, 1.524694>,  <3.997427, 3.010600, 1.718097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.973186, 3.150627, 1.524694>,  <3.932786, 3.384005, 1.202355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.973186, 3.150627, 1.524694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911106, -0.271097, -0.310470,
		0.399606, 0.765570, 0.504200,
		0.101000, -0.583445, 0.805848,
		4.003487, 2.975594, 1.766448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.194002, 3.586230, 1.271129>,  <3.932786, 3.384005, 1.202355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.194002, 3.586230, 1.271129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.218220, 3.897671, 1.520966>,  <3.232750, 4.084535, 1.670868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.218220, 3.897671, 1.520966>,  <3.194002, 3.586230, 1.271129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.218220, 3.897671, 1.520966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411398, 0.550655, -0.726313,
		-0.909443, 0.300930, -0.286976,
		0.060545, 0.778601, 0.624592,
		3.236383, 4.131251, 1.708343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.970924, 4.180339, 0.898205>,  <3.194002, 3.586230, 1.271129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.970924, 4.180339, 0.898205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.163118, 4.327061, 1.216849>,  <3.278435, 4.415094, 1.408035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.163118, 4.327061, 1.216849>,  <2.970924, 4.180339, 0.898205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.163118, 4.327061, 1.216849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603358, 0.520948, -0.603798,
		-0.636468, 0.770758, 0.028994,
		0.480486, 0.366805, 0.796610,
		3.307264, 4.437102, 1.455832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.935423, 4.903976, 0.927930>,  <2.970924, 4.180339, 0.898205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.935423, 4.903976, 0.927930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.260782, 4.691139, 1.021961>,  <3.455998, 4.563437, 1.078379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.260782, 4.691139, 1.021961>,  <2.935423, 4.903976, 0.927930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.260782, 4.691139, 1.021961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539328, 0.538401, -0.647495,
		0.217962, 0.653454, 0.724907,
		0.813399, -0.532092, 0.235076,
		3.504802, 4.531512, 1.092484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.568676, 5.338157, 1.205288>,  <2.935423, 4.903976, 0.927930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.568676, 5.338157, 1.205288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.719780, 5.002396, 1.048980>,  <3.810442, 4.800939, 0.955196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.719780, 5.002396, 1.048980>,  <3.568676, 5.338157, 1.205288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.719780, 5.002396, 1.048980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629752, 0.542316, -0.556152,
		0.678756, -0.035996, 0.733481,
		0.377759, -0.839403, -0.390768,
		3.833108, 4.750575, 0.931750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.312242, 1.609480, 3.692296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.301500, 1.453613, 3.324070>,  <-0.295054, 1.360093, 3.103135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.301500, 1.453613, 3.324070>,  <-0.312242, 1.609480, 3.692296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.301500, 1.453613, 3.324070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375672, 0.857327, -0.351938,
		0.926363, -0.336379, 0.169412,
		0.026857, -0.389666, -0.920565,
		-0.293443, 1.336713, 3.047901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.355636, 1.575249, 3.336875>,  <-0.312242, 1.609480, 3.692296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.355636, 1.575249, 3.336875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.042812, 1.628395, 3.093324>,  <-0.144882, 1.660283, 2.947194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.042812, 1.628395, 3.093324>,  <0.355636, 1.575249, 3.336875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.042812, 1.628395, 3.093324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289649, 0.942565, -0.166354,
		0.551804, -0.306459, -0.775626,
		-0.782059, 0.132865, -0.608877,
		-0.191805, 1.668254, 2.910661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.595225, 1.736263, 2.579740>,  <0.355636, 1.575249, 3.336875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.595225, 1.736263, 2.579740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.247916, 1.901024, 2.690332>,  <0.039531, 1.999881, 2.756688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.247916, 1.901024, 2.690332>,  <0.595225, 1.736263, 2.579740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.247916, 1.901024, 2.690332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412954, 0.908948, -0.057299,
		-0.274909, 0.064423, -0.959309,
		-0.868271, 0.411903, 0.276482,
		-0.012565, 2.024595, 2.773277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.593653, 2.483917, 2.166834>,  <0.595225, 1.736263, 2.579740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.593653, 2.483917, 2.166834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.438646, 2.425823, 2.530974>,  <0.345642, 2.390967, 2.749458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.438646, 2.425823, 2.530974>,  <0.593653, 2.483917, 2.166834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.438646, 2.425823, 2.530974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461729, 0.824138, 0.328028,
		-0.797895, 0.547452, -0.252310,
		-0.387518, -0.145233, 0.910350,
		0.322391, 2.382253, 2.804079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.078824, 3.067155, 2.441633>,  <0.593653, 2.483917, 2.166834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.078824, 3.067155, 2.441633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.288538, 2.882744, 2.728012>,  <0.414366, 2.772097, 2.899839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.288538, 2.882744, 2.728012>,  <0.078824, 3.067155, 2.441633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.288538, 2.882744, 2.728012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414507, 0.872601, 0.258362,
		-0.743848, 0.161310, 0.648590,
		0.524284, -0.461028, 0.715947,
		0.445823, 2.744436, 2.942796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.188240, 3.557515, 2.895575>,  <0.078824, 3.067155, 2.441633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.188240, 3.557515, 2.895575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.451055, 3.284752, 3.024139>,  <0.608744, 3.121094, 3.101278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.451055, 3.284752, 3.024139>,  <0.188240, 3.557515, 2.895575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.451055, 3.284752, 3.024139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537539, 0.722708, 0.434448,
		-0.528539, -0.112678, 0.841398,
		0.657038, -0.681907, 0.321411,
		0.648166, 3.080180, 3.120563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.392521, 3.716199, 3.572937>,  <0.188240, 3.557515, 2.895575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.392521, 3.716199, 3.572937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.702044, 3.517271, 3.416021>,  <0.887758, 3.397914, 3.321872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.702044, 3.517271, 3.416021>,  <0.392521, 3.716199, 3.572937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.702044, 3.517271, 3.416021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622560, 0.711314, 0.326267,
		0.116782, -0.496692, 0.860034,
		0.773809, -0.497321, -0.392289,
		0.934187, 3.368075, 3.298334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.973323, 3.498759, 4.010237>,  <0.392521, 3.716199, 3.572937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.973323, 3.498759, 4.010237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.112807, 3.555906, 3.639726>,  <1.196498, 3.590195, 3.417420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.112807, 3.555906, 3.639726>,  <0.973323, 3.498759, 4.010237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.112807, 3.555906, 3.639726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621214, 0.704796, 0.342574,
		0.701773, -0.694878, 0.157034,
		0.348723, 0.142857, -0.926274,
		1.217421, 3.598767, 3.361843>
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
