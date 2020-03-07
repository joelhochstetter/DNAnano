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
	<36.920162, 53.195648, 50.378906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625149, 52.981583, 50.214149>,  <36.448143, 52.853146, 50.115295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625149, 52.981583, 50.214149>,  <36.920162, 53.195648, 50.378906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625149, 52.981583, 50.214149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145379, -0.469798, 0.870721,
		-0.659481, 0.702062, 0.268689,
		-0.737530, -0.535162, -0.411888,
		36.403889, 52.821033, 50.090584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296303, 53.250500, 50.708641>,  <36.920162, 53.195648, 50.378906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296303, 53.250500, 50.708641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301273, 52.886086, 50.543785>,  <36.304256, 52.667435, 50.444874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301273, 52.886086, 50.543785>,  <36.296303, 53.250500, 50.708641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301273, 52.886086, 50.543785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030047, -0.412322, 0.910542,
		-0.999471, 0.001067, -0.032498,
		0.012428, -0.911037, -0.412136,
		36.305000, 52.612774, 50.420143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608047, 53.868839, 50.403637>,  <36.296303, 53.250500, 50.708641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608047, 53.868839, 50.403637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947006, 53.750664, 50.580105>,  <37.150383, 53.679760, 50.685986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947006, 53.750664, 50.580105>,  <36.608047, 53.868839, 50.403637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947006, 53.750664, 50.580105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526533, 0.360544, -0.769916,
		0.068399, 0.884718, 0.461082,
		0.847399, -0.295436, 0.441172,
		37.201225, 53.662033, 50.712456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112442, 54.437923, 50.375080>,  <36.608047, 53.868839, 50.403637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112442, 54.437923, 50.375080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303490, 54.086723, 50.387756>,  <37.418118, 53.876003, 50.395363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303490, 54.086723, 50.387756>,  <37.112442, 54.437923, 50.375080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303490, 54.086723, 50.387756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628473, 0.316233, -0.710647,
		0.613924, 0.359332, 0.702835,
		0.477618, -0.877996, 0.031687,
		37.446774, 53.823326, 50.397263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742573, 54.441628, 50.521198>,  <37.112442, 54.437923, 50.375080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742573, 54.441628, 50.521198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732872, 54.139400, 50.259350>,  <37.727051, 53.958065, 50.102242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732872, 54.139400, 50.259350>,  <37.742573, 54.441628, 50.521198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732872, 54.139400, 50.259350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551602, 0.536000, -0.639093,
		0.833755, -0.376589, 0.403774,
		-0.024252, -0.755569, -0.654620,
		37.725597, 53.912731, 50.062965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450939, 54.305954, 50.291485>,  <37.742573, 54.441628, 50.521198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450939, 54.305954, 50.291485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178219, 54.213829, 50.013748>,  <38.014587, 54.158554, 49.847107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178219, 54.213829, 50.013748>,  <38.450939, 54.305954, 50.291485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178219, 54.213829, 50.013748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482714, 0.571540, -0.663573,
		0.549663, -0.787593, -0.278510,
		-0.681805, -0.230301, -0.694336,
		37.973679, 54.144737, 49.805447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124126, 54.192310, 50.596535>,  <38.450939, 54.305954, 50.291485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124126, 54.192310, 50.596535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178810, 53.809544, 50.699005>,  <39.211620, 53.579884, 50.760487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178810, 53.809544, 50.699005>,  <39.124126, 54.192310, 50.596535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178810, 53.809544, 50.699005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691957, -0.092808, -0.715948,
		0.708877, 0.275137, 0.649456,
		0.136709, -0.956915, 0.256173,
		39.219822, 53.522469, 50.775856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754681, 54.044994, 50.967236>,  <39.124126, 54.192310, 50.596535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754681, 54.044994, 50.967236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643784, 53.741119, 50.731941>,  <39.577244, 53.558796, 50.590767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643784, 53.741119, 50.731941>,  <39.754681, 54.044994, 50.967236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643784, 53.741119, 50.731941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824949, 0.125635, -0.551068,
		0.492540, -0.638042, 0.591868,
		-0.277245, -0.759683, -0.588232,
		39.560612, 53.513214, 50.555473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198322, 53.378262, 50.958351>,  <39.754681, 54.044994, 50.967236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198322, 53.378262, 50.958351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009872, 53.408726, 50.606842>,  <39.896801, 53.427006, 50.395939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009872, 53.408726, 50.606842>,  <40.198322, 53.378262, 50.958351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009872, 53.408726, 50.606842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882050, 0.035042, -0.469850,
		-0.004989, -0.996480, -0.083685,
		-0.471129, 0.076159, -0.878771,
		39.868534, 53.431572, 50.343212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650387, 52.968857, 50.539093>,  <40.198322, 53.378262, 50.958351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650387, 52.968857, 50.539093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443317, 53.181564, 50.270996>,  <40.319077, 53.309189, 50.110138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443317, 53.181564, 50.270996>,  <40.650387, 52.968857, 50.539093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443317, 53.181564, 50.270996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817541, 0.076467, -0.570772,
		-0.252270, -0.843427, -0.474332,
		-0.517675, 0.531774, -0.670246,
		40.288013, 53.341095, 50.069923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671120, 52.622768, 49.961079>,  <40.650387, 52.968857, 50.539093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671120, 52.622768, 49.961079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605183, 53.000156, 49.846050>,  <40.565620, 53.226589, 49.777035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605183, 53.000156, 49.846050>,  <40.671120, 52.622768, 49.961079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605183, 53.000156, 49.846050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886727, 0.014088, -0.462078,
		-0.431905, -0.331164, -0.838921,
		-0.164842, 0.943468, -0.287568,
		40.555729, 53.283195, 49.759781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595963, 52.665375, 49.210262>,  <40.671120, 52.622768, 49.961079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595963, 52.665375, 49.210262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713089, 53.016838, 49.361107>,  <40.783363, 53.227715, 49.451614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713089, 53.016838, 49.361107>,  <40.595963, 52.665375, 49.210262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713089, 53.016838, 49.361107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792137, -0.002028, -0.610340,
		-0.535516, 0.477444, -0.696613,
		0.292816, 0.878660, 0.377115,
		40.800934, 53.280437, 49.474243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691116, 53.015285, 48.570515>,  <40.595963, 52.665375, 49.210262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691116, 53.015285, 48.570515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895370, 53.139214, 48.891331>,  <41.017921, 53.213570, 49.083820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895370, 53.139214, 48.891331>,  <40.691116, 53.015285, 48.570515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895370, 53.139214, 48.891331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836279, 0.037715, -0.547005,
		-0.199721, 0.950047, -0.239836,
		0.510635, 0.309819, 0.802038,
		41.048561, 53.232159, 49.131943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232830, 53.545536, 48.390522>,  <40.691116, 53.015285, 48.570515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232830, 53.545536, 48.390522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364803, 53.381161, 48.730469>,  <41.443989, 53.282536, 48.934437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364803, 53.381161, 48.730469>,  <41.232830, 53.545536, 48.390522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364803, 53.381161, 48.730469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902289, -0.127382, -0.411883,
		0.277517, 0.902718, 0.328761,
		0.329936, -0.410943, 0.849864,
		41.463783, 53.257877, 48.985428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866882, 53.854317, 48.529770>,  <41.232830, 53.545536, 48.390522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866882, 53.854317, 48.529770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869335, 53.485115, 48.683670>,  <41.870808, 53.263596, 48.776009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869335, 53.485115, 48.683670>,  <41.866882, 53.854317, 48.529770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869335, 53.485115, 48.683670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840185, -0.203889, -0.502512,
		0.542265, 0.326339, 0.774242,
		0.006130, -0.923002, 0.384747,
		41.871174, 53.208214, 48.799095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499096, 53.693394, 48.904133>,  <41.866882, 53.854317, 48.529770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499096, 53.693394, 48.904133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347771, 53.366665, 48.729927>,  <42.256977, 53.170628, 48.625404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347771, 53.366665, 48.729927>,  <42.499096, 53.693394, 48.904133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347771, 53.366665, 48.729927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869199, -0.151629, -0.470640,
		0.318393, -0.556600, 0.767347,
		-0.378310, -0.816826, -0.435519,
		42.234276, 53.121616, 48.599270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267529, 53.577141, 48.797657>,  <42.499096, 53.693394, 48.904133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267529, 53.577141, 48.797657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433891, 53.233978, 48.918339>,  <43.533710, 53.028080, 48.990746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433891, 53.233978, 48.918339>,  <43.267529, 53.577141, 48.797657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433891, 53.233978, 48.918339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152663, 0.392914, 0.906814,
		-0.896501, -0.331093, 0.294386,
		0.415908, -0.857902, 0.301703,
		43.558662, 52.976608, 49.008850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160156, 53.642231, 49.484627>,  <43.267529, 53.577141, 48.797657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160156, 53.642231, 49.484627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434032, 53.354752, 49.436192>,  <43.598358, 53.182262, 49.407131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434032, 53.354752, 49.436192>,  <43.160156, 53.642231, 49.484627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434032, 53.354752, 49.436192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421988, 0.255464, 0.869865,
		-0.594240, -0.646688, 0.478198,
		0.684693, -0.718703, -0.121088,
		43.639439, 53.139141, 49.399864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038494, 53.083546, 50.036713>,  <43.160156, 53.642231, 49.484627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038494, 53.083546, 50.036713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407440, 53.149567, 49.896996>,  <43.628807, 53.189178, 49.813168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407440, 53.149567, 49.896996>,  <43.038494, 53.083546, 50.036713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407440, 53.149567, 49.896996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282915, 0.327086, 0.901651,
		0.263067, -0.930469, 0.254997,
		0.922364, 0.165052, -0.349289,
		43.684151, 53.199085, 49.792210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182259, 52.428844, 50.417530>,  <43.038494, 53.083546, 50.036713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182259, 52.428844, 50.417530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468700, 52.250549, 50.202675>,  <43.640564, 52.143574, 50.073761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468700, 52.250549, 50.202675>,  <43.182259, 52.428844, 50.417530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468700, 52.250549, 50.202675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231051, 0.877536, -0.420173,
		0.658644, 0.176781, 0.731393,
		0.716103, -0.445734, -0.537139,
		43.683533, 52.116829, 50.041534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901802, 51.803013, 50.267376>,  <43.182259, 52.428844, 50.417530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901802, 51.803013, 50.267376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835964, 51.597736, 50.604313>,  <42.796459, 51.474571, 50.806477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835964, 51.597736, 50.604313>,  <42.901802, 51.803013, 50.267376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835964, 51.597736, 50.604313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548898, -0.661885, -0.510510,
		0.819523, -0.546389, -0.172745,
		-0.164599, -0.513194, 0.842341,
		42.786583, 51.443779, 50.857014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210255, 51.226643, 49.823597>,  <42.901802, 51.803013, 50.267376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210255, 51.226643, 49.823597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388187, 51.414154, 50.128849>,  <43.494946, 51.526661, 50.312000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388187, 51.414154, 50.128849>,  <43.210255, 51.226643, 49.823597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388187, 51.414154, 50.128849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881523, -0.379725, -0.280582,
		0.158249, 0.797530, -0.582154,
		0.444831, 0.468781, 0.763132,
		43.521637, 51.554787, 50.357788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733185, 51.378307, 49.494625>,  <43.210255, 51.226643, 49.823597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733185, 51.378307, 49.494625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792255, 51.366592, 49.890064>,  <43.827698, 51.359562, 50.127327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792255, 51.366592, 49.890064>,  <43.733185, 51.378307, 49.494625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792255, 51.366592, 49.890064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836716, -0.529261, -0.140671,
		0.527349, 0.847953, -0.053652,
		0.147678, -0.029291, 0.988602,
		43.836559, 51.357803, 50.186646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305183, 51.840889, 49.684235>,  <43.733185, 51.378307, 49.494625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305183, 51.840889, 49.684235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286133, 51.502792, 49.897141>,  <44.274704, 51.299934, 50.024883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286133, 51.502792, 49.897141>,  <44.305183, 51.840889, 49.684235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286133, 51.502792, 49.897141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894136, -0.273604, -0.354487,
		0.445255, 0.459032, 0.768790,
		-0.047623, -0.845240, 0.532261,
		44.271847, 51.249222, 50.056820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980274, 51.866528, 50.024616>,  <44.305183, 51.840889, 49.684235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980274, 51.866528, 50.024616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861095, 51.491364, 49.953568>,  <44.789589, 51.266266, 49.910938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861095, 51.491364, 49.953568>,  <44.980274, 51.866528, 50.024616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861095, 51.491364, 49.953568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935168, -0.249456, -0.251461,
		0.191540, -0.241027, 0.951430,
		-0.297949, -0.937912, -0.177620,
		44.771709, 51.209991, 49.900280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230522, 52.524620, 50.232990>,  <44.980274, 51.866528, 50.024616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230522, 52.524620, 50.232990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499878, 52.303349, 50.036812>,  <45.661491, 52.170586, 49.919106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499878, 52.303349, 50.036812>,  <45.230522, 52.524620, 50.232990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.499878, 52.303349, 50.036812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739178, -0.492359, -0.459562,
		0.012747, 0.671990, -0.740450,
		0.673389, -0.553183, -0.490445,
		45.701893, 52.137394, 49.889679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076260, 52.832272, 50.874874>,  <45.230522, 52.524620, 50.232990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076260, 52.832272, 50.874874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043110, 52.771832, 51.268890>,  <45.023220, 52.735569, 51.505299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043110, 52.771832, 51.268890>,  <45.076260, 52.832272, 50.874874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043110, 52.771832, 51.268890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960008, 0.253141, 0.119598,
		-0.267425, 0.955557, 0.124076,
		-0.082874, -0.151097, 0.985039,
		45.018250, 52.726501, 51.564404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249496, 53.468437, 51.208492>,  <45.076260, 52.832272, 50.874874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249496, 53.468437, 51.208492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312290, 53.147602, 51.438976>,  <45.349968, 52.955101, 51.577267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312290, 53.147602, 51.438976>,  <45.249496, 53.468437, 51.208492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312290, 53.147602, 51.438976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926339, 0.321877, 0.195681,
		-0.342420, 0.503044, 0.793533,
		0.156984, -0.802086, 0.576207,
		45.359386, 52.906975, 51.611839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287182, 53.661476, 51.936607>,  <45.249496, 53.468437, 51.208492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287182, 53.661476, 51.936607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490623, 53.330887, 51.840050>,  <45.612690, 53.132534, 51.782116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490623, 53.330887, 51.840050>,  <45.287182, 53.661476, 51.936607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490623, 53.330887, 51.840050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859237, 0.469272, 0.203702,
		-0.055076, -0.311015, 0.948808,
		0.508604, -0.826470, -0.241391,
		45.643204, 53.082947, 51.767632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699627, 53.517021, 52.512512>,  <45.287182, 53.661476, 51.936607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699627, 53.517021, 52.512512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873875, 53.352772, 52.192108>,  <45.978424, 53.254223, 51.999866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873875, 53.352772, 52.192108>,  <45.699627, 53.517021, 52.512512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873875, 53.352772, 52.192108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858040, 0.458370, 0.231654,
		0.272037, -0.788214, 0.552009,
		0.435618, -0.410628, -0.801013,
		46.004559, 53.229584, 51.951805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.261005, 53.048698, 52.682304>,  <45.699627, 53.517021, 52.512512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.261005, 53.048698, 52.682304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.338402, 53.211956, 52.325432>,  <46.384842, 53.309910, 52.111309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.338402, 53.211956, 52.325432>,  <46.261005, 53.048698, 52.682304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.338402, 53.211956, 52.325432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765506, 0.505971, 0.397486,
		0.613646, -0.759879, -0.214531,
		0.193495, 0.408140, -0.892178,
		46.396450, 53.334396, 52.057777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916412, 52.801403, 52.457558>,  <46.261005, 53.048698, 52.682304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916412, 52.801403, 52.457558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807835, 53.172249, 52.354195>,  <46.742687, 53.394756, 52.292179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807835, 53.172249, 52.354195>,  <46.916412, 52.801403, 52.457558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807835, 53.172249, 52.354195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864228, 0.352953, 0.358517,
		0.423592, -0.126004, -0.897047,
		-0.271441, 0.927118, -0.258404,
		46.726402, 53.450386, 52.276672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.314598, 53.117493, 51.869495>,  <46.916412, 52.801403, 52.457558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.314598, 53.117493, 51.869495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190800, 53.383556, 52.141312>,  <47.116520, 53.543194, 52.304401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190800, 53.383556, 52.141312>,  <47.314598, 53.117493, 51.869495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.190800, 53.383556, 52.141312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934665, 0.081314, 0.346105,
		0.174960, 0.742260, -0.646868,
		-0.309500, 0.665160, 0.679538,
		47.097950, 53.583103, 52.345173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.546928, 53.822243, 51.748756>,  <47.314598, 53.117493, 51.869495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.546928, 53.822243, 51.748756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514580, 53.698563, 52.127777>,  <47.495171, 53.624355, 52.355190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514580, 53.698563, 52.127777>,  <47.546928, 53.822243, 51.748756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.514580, 53.698563, 52.127777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995209, 0.027359, 0.093868,
		-0.054948, 0.950603, 0.305506,
		-0.080873, -0.309200, 0.947552,
		47.490318, 53.605804, 52.412045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.884190, 54.293167, 52.410931>,  <47.546928, 53.822243, 51.748756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.884190, 54.293167, 52.410931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.886276, 53.893326, 52.422012>,  <47.887527, 53.653419, 52.428661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.886276, 53.893326, 52.422012>,  <47.884190, 54.293167, 52.410931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.886276, 53.893326, 52.422012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992593, 0.008541, 0.121184,
		-0.121372, 0.026868, 0.992243,
		0.005218, -0.999602, 0.027706,
		47.887840, 53.593445, 52.430325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.949505, 54.575665, 53.019150>,  <47.884190, 54.293167, 52.410931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.949505, 54.575665, 53.019150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949692, 54.894382, 53.260849>,  <47.949802, 55.085613, 53.405869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.949692, 54.894382, 53.260849>,  <47.949505, 54.575665, 53.019150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.949692, 54.894382, 53.260849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871761, 0.295717, -0.390619,
		-0.489931, 0.526943, -0.694477,
		0.000465, 0.796795, 0.604250,
		47.949833, 55.133423, 53.442123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.366741, 54.302582, 53.646675>,  <47.949505, 54.575665, 53.019150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.366741, 54.302582, 53.646675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.700687, 54.205643, 53.844368>,  <48.901054, 54.147480, 53.962982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.700687, 54.205643, 53.844368>,  <48.366741, 54.302582, 53.646675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.700687, 54.205643, 53.844368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543106, 0.216509, -0.811270,
		0.089605, 0.945723, 0.312377,
		0.834869, -0.242348, 0.494228,
		48.951149, 54.132938, 53.992638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.956703, 54.836788, 53.529655>,  <48.366741, 54.302582, 53.646675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.956703, 54.836788, 53.529655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.046577, 54.452953, 53.597435>,  <49.100502, 54.222652, 53.638103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.046577, 54.452953, 53.597435>,  <48.956703, 54.836788, 53.529655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.046577, 54.452953, 53.597435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436615, -0.056319, -0.897884,
		0.871140, 0.275720, 0.406316,
		0.224681, -0.959587, 0.169445,
		49.113983, 54.165077, 53.648270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.634476, 54.709206, 53.605118>,  <48.956703, 54.836788, 53.529655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.634476, 54.709206, 53.605118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.419392, 54.427814, 53.419220>,  <49.290340, 54.258980, 53.307682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.419392, 54.427814, 53.419220>,  <49.634476, 54.709206, 53.605118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.419392, 54.427814, 53.419220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484282, 0.193523, -0.853241,
		0.690173, -0.683866, 0.236620,
		-0.537711, -0.703474, -0.464749,
		49.258080, 54.216774, 53.279797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.082005, 54.474007, 53.201004>,  <49.634476, 54.709206, 53.605118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.082005, 54.474007, 53.201004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.712875, 54.415756, 53.058346>,  <49.491398, 54.380806, 52.972752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.712875, 54.415756, 53.058346>,  <50.082005, 54.474007, 53.201004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.712875, 54.415756, 53.058346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320522, 0.223344, -0.920534,
		0.213685, -0.963804, -0.159440,
		-0.922824, -0.145600, -0.356645,
		49.436031, 54.372070, 52.951351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.399086, 55.061337, 53.608654>,  <50.082005, 54.474007, 53.201004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.399086, 55.061337, 53.608654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.778725, 55.065151, 53.482712>,  <51.006508, 55.067440, 53.407146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.778725, 55.065151, 53.482712>,  <50.399086, 55.061337, 53.608654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.778725, 55.065151, 53.482712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291666, 0.350913, 0.889826,
		0.118969, -0.936359, 0.330269,
		0.949093, 0.009534, -0.314853,
		51.063454, 55.068012, 53.388256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.725830, 54.731392, 54.141773>,  <50.399086, 55.061337, 53.608654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.725830, 54.731392, 54.141773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.023163, 54.952698, 53.991386>,  <51.201565, 55.085480, 53.901154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.023163, 54.952698, 53.991386>,  <50.725830, 54.731392, 54.141773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.023163, 54.952698, 53.991386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284819, 0.246770, 0.926274,
		0.605252, -0.795614, 0.025853,
		0.743336, 0.553266, -0.375964,
		51.246162, 55.118679, 53.878597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.392502, 54.535469, 54.519958>,  <50.725830, 54.731392, 54.141773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.392502, 54.535469, 54.519958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.359196, 54.908047, 54.378262>,  <51.339211, 55.131592, 54.293243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.359196, 54.908047, 54.378262>,  <51.392502, 54.535469, 54.519958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.359196, 54.908047, 54.378262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157500, 0.363306, 0.918260,
		0.984002, 0.020669, -0.176953,
		-0.083268, 0.931441, -0.354239,
		51.334217, 55.187477, 54.271992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.939323, 54.992622, 54.808540>,  <51.392502, 54.535469, 54.519958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.939323, 54.992622, 54.808540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.630680, 55.236107, 54.734688>,  <51.445496, 55.382198, 54.690376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.630680, 55.236107, 54.734688>,  <51.939323, 54.992622, 54.808540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.630680, 55.236107, 54.734688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106621, 0.409919, 0.905869,
		0.627101, 0.679289, -0.381198,
		-0.771607, 0.608715, -0.184634,
		51.399197, 55.418720, 54.679298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.229561, 55.614273, 55.006794>,  <51.939323, 54.992622, 54.808540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.229561, 55.614273, 55.006794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.831520, 55.642658, 55.034309>,  <51.592693, 55.659691, 55.050819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.831520, 55.642658, 55.034309>,  <52.229561, 55.614273, 55.006794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.831520, 55.642658, 55.034309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093515, 0.450971, 0.887626,
		0.031971, 0.889713, -0.455399,
		-0.995104, 0.070965, 0.068784,
		51.532990, 55.663948, 55.054943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.583042, 55.638298, 54.301342>,  <52.229561, 55.614273, 55.006794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.583042, 55.638298, 54.301342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.970039, 55.726852, 54.252434>,  <53.202236, 55.779984, 54.223087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.970039, 55.726852, 54.252434>,  <52.583042, 55.638298, 54.301342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.970039, 55.726852, 54.252434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183081, -0.279552, 0.942514,
		0.174477, -0.934259, -0.310995,
		0.967491, 0.221385, -0.122269,
		53.260288, 55.793266, 54.215752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.040932, 55.048367, 54.547718>,  <52.583042, 55.638298, 54.301342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.040932, 55.048367, 54.547718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.268585, 55.377090, 54.558372>,  <53.405178, 55.574326, 54.564766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.268585, 55.377090, 54.558372>,  <53.040932, 55.048367, 54.547718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.268585, 55.377090, 54.558372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318514, -0.250222, 0.914297,
		0.758045, -0.511874, -0.404169,
		0.569136, 0.821812, 0.026640,
		53.439327, 55.623634, 54.566364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.591789, 54.709206, 54.121113>,  <53.040932, 55.048367, 54.547718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.591789, 54.709206, 54.121113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.405407, 55.025768, 53.962845>,  <53.293579, 55.215706, 53.867882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.405407, 55.025768, 53.962845>,  <53.591789, 54.709206, 54.121113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.405407, 55.025768, 53.962845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830259, 0.545664, 0.113673,
		0.305867, -0.275546, -0.911329,
		-0.465957, 0.791407, -0.395675,
		53.265621, 55.263191, 53.844143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.955067, 54.927341, 53.562145>,  <53.591789, 54.709206, 54.121113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.955067, 54.927341, 53.562145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.753574, 55.223110, 53.740814>,  <53.632679, 55.400570, 53.848015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.753574, 55.223110, 53.740814>,  <53.955067, 54.927341, 53.562145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.753574, 55.223110, 53.740814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862458, 0.459925, 0.211272,
		-0.049216, 0.491659, -0.869396,
		-0.503731, 0.739419, 0.446671,
		53.602455, 55.444935, 53.874817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.289391, 55.534283, 53.368782>,  <53.955067, 54.927341, 53.562145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.289391, 55.534283, 53.368782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.073364, 55.623528, 53.693386>,  <53.943748, 55.677074, 53.888149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.073364, 55.623528, 53.693386>,  <54.289391, 55.534283, 53.368782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.073364, 55.623528, 53.693386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791477, 0.462505, 0.399567,
		-0.286179, 0.858084, -0.426372,
		-0.540061, 0.223116, 0.811513,
		53.911346, 55.690464, 53.936840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.745892, 55.851307, 53.048763>,  <54.289391, 55.534283, 53.368782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.745892, 55.851307, 53.048763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.806084, 55.957508, 53.429680>,  <54.842201, 56.021229, 53.658230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.806084, 55.957508, 53.429680>,  <54.745892, 55.851307, 53.048763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.806084, 55.957508, 53.429680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094255, -0.962728, 0.253517,
		0.984109, 0.051609, -0.169898,
		0.150482, 0.265502, 0.952294,
		54.851227, 56.037159, 53.715366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.312881, 55.647911, 53.246696>,  <54.745892, 55.851307, 53.048763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.312881, 55.647911, 53.246696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.057602, 55.660053, 53.554405>,  <54.904434, 55.667339, 53.739033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.057602, 55.660053, 53.554405>,  <55.312881, 55.647911, 53.246696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.057602, 55.660053, 53.554405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319496, -0.898671, 0.300520,
		0.700449, 0.437571, 0.563828,
		-0.638195, 0.030358, 0.769276,
		54.866142, 55.669159, 53.785187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.639111, 55.499615, 53.906567>,  <55.312881, 55.647911, 53.246696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.639111, 55.499615, 53.906567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.257828, 55.381214, 53.931137>,  <55.029057, 55.310173, 53.945881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.257828, 55.381214, 53.931137>,  <55.639111, 55.499615, 53.906567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.257828, 55.381214, 53.931137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302089, -0.940418, 0.156064,
		0.011572, 0.167318, 0.985835,
		-0.953209, -0.296004, 0.061428,
		54.971867, 55.292412, 53.949566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.602482, 55.074455, 54.538811>,  <55.639111, 55.499615, 53.906567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.602482, 55.074455, 54.538811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.363937, 54.958622, 54.239346>,  <55.220810, 54.889122, 54.059666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.363937, 54.958622, 54.239346>,  <55.602482, 55.074455, 54.538811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.363937, 54.958622, 54.239346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309052, -0.943595, 0.118807,
		-0.740839, -0.160524, 0.652218,
		-0.596359, -0.289587, -0.748663,
		55.185028, 54.871746, 54.014748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.082806, 55.618320, 54.958710>,  <55.602482, 55.074455, 54.538811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.082806, 55.618320, 54.958710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.265137, 55.303989, 54.791527>,  <56.374535, 55.115391, 54.691216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.265137, 55.303989, 54.791527>,  <56.082806, 55.618320, 54.958710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.265137, 55.303989, 54.791527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048496, -0.446958, 0.893240,
		-0.888745, -0.427435, -0.165627,
		0.455830, -0.785830, -0.417960,
		56.401886, 55.068241, 54.666138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.875778, 55.011509, 55.257618>,  <56.082806, 55.618320, 54.958710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.875778, 55.011509, 55.257618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.231445, 54.936020, 55.090874>,  <56.444843, 54.890728, 54.990826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.231445, 54.936020, 55.090874>,  <55.875778, 55.011509, 55.257618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.231445, 54.936020, 55.090874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205418, -0.649423, 0.732157,
		-0.408891, -0.736638, -0.538677,
		0.889163, -0.188719, -0.416862,
		56.498196, 54.879406, 54.965816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.005173, 54.320724, 55.088005>,  <55.875778, 55.011509, 55.257618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.005173, 54.320724, 55.088005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.347099, 54.508858, 55.175705>,  <56.552258, 54.621738, 55.228325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.347099, 54.508858, 55.175705>,  <56.005173, 54.320724, 55.088005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.347099, 54.508858, 55.175705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104054, -0.569276, 0.815535,
		0.508385, -0.674323, -0.535569,
		0.854820, 0.470334, 0.219246,
		56.603546, 54.649960, 55.241478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.666801, 53.934364, 54.997974>,  <56.005173, 54.320724, 55.088005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.666801, 53.934364, 54.997974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.673088, 54.182701, 55.311485>,  <56.676861, 54.331703, 55.499592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.673088, 54.182701, 55.311485>,  <56.666801, 53.934364, 54.997974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.673088, 54.182701, 55.311485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094893, -0.781261, 0.616949,
		0.995363, 0.064676, -0.071196,
		0.015721, 0.620844, 0.783776,
		56.677803, 54.368954, 55.546619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.198280, 53.733749, 55.584141>,  <56.666801, 53.934364, 54.997974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.198280, 53.733749, 55.584141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.859314, 53.916107, 55.692993>,  <56.655933, 54.025520, 55.758305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.859314, 53.916107, 55.692993>,  <57.198280, 53.733749, 55.584141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.859314, 53.916107, 55.692993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148893, -0.696035, 0.702401,
		0.509629, 0.554706, 0.657708,
		-0.847413, 0.455892, 0.272128,
		56.605091, 54.052876, 55.774632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.064022, 53.689476, 56.209770>,  <57.198280, 53.733749, 55.584141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.064022, 53.689476, 56.209770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.679283, 53.778542, 56.146187>,  <56.448441, 53.831982, 56.108036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.679283, 53.778542, 56.146187>,  <57.064022, 53.689476, 56.209770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.679283, 53.778542, 56.146187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262060, -0.583000, 0.769048,
		0.078570, 0.781364, 0.619110,
		-0.961848, 0.222668, -0.158958,
		56.390728, 53.845341, 56.098499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.890606, 54.181908, 56.764877>,  <57.064022, 53.689476, 56.209770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.890606, 54.181908, 56.764877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.035042, 54.553299, 56.730156>,  <57.121704, 54.776134, 56.709324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.035042, 54.553299, 56.730156>,  <56.890606, 54.181908, 56.764877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.035042, 54.553299, 56.730156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529984, -0.127742, 0.838331,
		0.767287, -0.348716, -0.538207,
		0.361091, 0.928482, -0.086799,
		57.143368, 54.831844, 56.704117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.693043, 54.277054, 56.535419>,  <56.890606, 54.181908, 56.764877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.693043, 54.277054, 56.535419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.507668, 54.512203, 56.800636>,  <57.396442, 54.653294, 56.959766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.507668, 54.512203, 56.800636>,  <57.693043, 54.277054, 56.535419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.507668, 54.512203, 56.800636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708713, -0.203263, 0.675582,
		0.531929, 0.783000, -0.322433,
		-0.463442, 0.587873, 0.663043,
		57.368633, 54.688564, 56.999550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.362545, 54.602589, 56.246964>,  <57.693043, 54.277054, 56.535419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.362545, 54.602589, 56.246964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.267006, 54.894100, 56.503662>,  <58.209682, 55.069008, 56.657681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.267006, 54.894100, 56.503662>,  <58.362545, 54.602589, 56.246964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.267006, 54.894100, 56.503662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342927, 0.681595, -0.646397,
		-0.908490, 0.065683, -0.412713,
		-0.238845, 0.728775, 0.641747,
		58.195351, 55.112732, 56.696186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.977486, 55.195087, 55.853203>,  <58.362545, 54.602589, 56.246964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.977486, 55.195087, 55.853203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.158852, 55.320702, 56.186859>,  <58.267673, 55.396072, 56.387054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.158852, 55.320702, 56.186859>,  <57.977486, 55.195087, 55.853203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.158852, 55.320702, 56.186859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412087, 0.755976, -0.508610,
		-0.790313, 0.574353, 0.213364,
		0.453420, 0.314037, 0.834141,
		58.294876, 55.414913, 56.437103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.855759, 55.957497, 55.916420>,  <57.977486, 55.195087, 55.853203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.855759, 55.957497, 55.916420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.189407, 55.923103, 56.134354>,  <58.389599, 55.902466, 56.265114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.189407, 55.923103, 56.134354>,  <57.855759, 55.957497, 55.916420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.189407, 55.923103, 56.134354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272620, 0.922958, -0.271711,
		-0.479493, 0.375173, 0.793304,
		0.834125, -0.085987, 0.544831,
		58.439644, 55.897308, 56.297802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.002884, 56.716465, 56.074120>,  <57.855759, 55.957497, 55.916420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.002884, 56.716465, 56.074120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.303947, 56.478664, 56.187309>,  <58.484585, 56.335983, 56.255222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.303947, 56.478664, 56.187309>,  <58.002884, 56.716465, 56.074120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.303947, 56.478664, 56.187309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638442, 0.764033, -0.092984,
		-0.160923, 0.250649, 0.954609,
		0.752659, -0.594499, 0.282975,
		58.529747, 56.300316, 56.272202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.301453, 57.061638, 56.631046>,  <58.002884, 56.716465, 56.074120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.301453, 57.061638, 56.631046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.562607, 56.845131, 56.419098>,  <58.719299, 56.715225, 56.291927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.562607, 56.845131, 56.419098>,  <58.301453, 57.061638, 56.631046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.562607, 56.845131, 56.419098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681674, 0.724863, 0.099473,
		0.330245, -0.426146, 0.842222,
		0.652885, -0.541270, -0.529875,
		58.758472, 56.682751, 56.260136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.688995, 56.960629, 57.129128>,  <58.301453, 57.061638, 56.631046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.688995, 56.960629, 57.129128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.051094, 56.794464, 57.093452>,  <59.268353, 56.694763, 57.072048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.051094, 56.794464, 57.093452>,  <58.688995, 56.960629, 57.129128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.051094, 56.794464, 57.093452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076847, -0.046370, 0.995964,
		-0.417874, -0.908450, -0.010053,
		0.905249, -0.415415, -0.089189,
		59.322670, 56.669842, 57.066696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.893608, 56.568672, 57.656467>,  <58.688995, 56.960629, 57.129128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.893608, 56.568672, 57.656467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.291718, 56.578594, 57.694038>,  <59.530582, 56.584549, 57.716583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.291718, 56.578594, 57.694038>,  <58.893608, 56.568672, 57.656467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.291718, 56.578594, 57.694038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096303, 0.379216, 0.920283,
		-0.012793, -0.924976, 0.379811,
		0.995270, 0.024804, 0.093929,
		59.590298, 56.586037, 57.722218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.393879, 56.032593, 57.935150>,  <58.893608, 56.568672, 57.656467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.393879, 56.032593, 57.935150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.047073, 56.061771, 57.737984>,  <57.838989, 56.079277, 57.619686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.047073, 56.061771, 57.737984>,  <58.393879, 56.032593, 57.935150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.047073, 56.061771, 57.737984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253231, 0.916461, -0.309797,
		0.429137, -0.393420, -0.813058,
		-0.867015, 0.072946, -0.492913,
		57.786968, 56.083656, 57.590111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.802635, 56.171360, 58.588230>,  <58.393879, 56.032593, 57.935150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.802635, 56.171360, 58.588230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.141647, 56.375069, 58.648010>,  <59.345055, 56.497295, 58.683876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.141647, 56.375069, 58.648010>,  <58.802635, 56.171360, 58.588230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.141647, 56.375069, 58.648010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339994, 0.304738, 0.889685,
		0.407552, -0.804844, 0.431425,
		0.847529, 0.509275, 0.149446,
		59.395905, 56.527851, 58.692844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.953190, 56.144730, 59.357494>,  <58.802635, 56.171360, 58.588230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.953190, 56.144730, 59.357494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.155159, 56.455593, 59.207253>,  <59.276340, 56.642113, 59.117107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.155159, 56.455593, 59.207253>,  <58.953190, 56.144730, 59.357494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.155159, 56.455593, 59.207253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232081, 0.541355, 0.808129,
		0.831377, -0.320876, 0.453708,
		0.504926, 0.777157, -0.375601,
		59.306637, 56.688740, 59.094574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.581020, 56.234585, 59.676762>,  <58.953190, 56.144730, 59.357494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.581020, 56.234585, 59.676762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.446991, 56.595119, 59.566986>,  <59.366573, 56.811440, 59.501122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.446991, 56.595119, 59.566986>,  <59.581020, 56.234585, 59.676762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.446991, 56.595119, 59.566986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059252, 0.310861, 0.948607,
		0.940327, 0.301593, -0.157568,
		-0.335075, 0.901336, -0.274440,
		59.346470, 56.865520, 59.484653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.956421, 56.449841, 60.312309>,  <59.581020, 56.234585, 59.676762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.956421, 56.449841, 60.312309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.875946, 56.694611, 60.006348>,  <59.827660, 56.841473, 59.822773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.875946, 56.694611, 60.006348>,  <59.956421, 56.449841, 60.312309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.875946, 56.694611, 60.006348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948164, -0.317744, -0.004804,
		-0.245982, 0.724286, 0.644129,
		-0.201189, 0.611922, -0.764902,
		59.815590, 56.878189, 59.776878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.562176, 56.932041, 60.257805>,  <59.956421, 56.449841, 60.312309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.562176, 56.932041, 60.257805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.856499, 56.683678, 60.149681>,  <61.033092, 56.534660, 60.084808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.856499, 56.683678, 60.149681>,  <60.562176, 56.932041, 60.257805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.856499, 56.683678, 60.149681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512435, 0.771461, -0.377171,
		0.442720, 0.139009, 0.885819,
		0.735805, -0.620906, -0.270309,
		61.077240, 56.497406, 60.068588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.117680, 57.281128, 60.589725>,  <60.562176, 56.932041, 60.257805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.117680, 57.281128, 60.589725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.223526, 57.052265, 60.279213>,  <61.287033, 56.914948, 60.092903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.223526, 57.052265, 60.279213>,  <61.117680, 57.281128, 60.589725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.223526, 57.052265, 60.279213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783953, 0.596417, -0.172352,
		0.561601, -0.562962, 0.606365,
		0.264618, -0.572154, -0.776284,
		61.302910, 56.880619, 60.046329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.735878, 56.939495, 60.763824>,  <61.117680, 57.281128, 60.589725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.735878, 56.939495, 60.763824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.656357, 57.072639, 60.395111>,  <61.608643, 57.152527, 60.173885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.656357, 57.072639, 60.395111>,  <61.735878, 56.939495, 60.763824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.656357, 57.072639, 60.395111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654255, 0.745355, 0.128047,
		0.729677, -0.577624, -0.365954,
		-0.198803, 0.332860, -0.921782,
		61.596714, 57.172497, 60.118576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.372208, 57.103901, 60.312069>,  <61.735878, 56.939495, 60.763824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.372208, 57.103901, 60.312069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.062271, 57.332642, 60.204292>,  <61.876308, 57.469887, 60.139626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.062271, 57.332642, 60.204292>,  <62.372208, 57.103901, 60.312069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.062271, 57.332642, 60.204292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531215, 0.820064, 0.212851,
		0.342679, 0.021795, -0.939200,
		-0.774843, 0.571856, -0.269441,
		61.829819, 57.504200, 60.123459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.978363, 57.142994, 59.871399>,  <62.372208, 57.103901, 60.312069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.978363, 57.142994, 59.871399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.730034, 57.396358, 59.686630>,  <62.581036, 57.548378, 59.575771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.730034, 57.396358, 59.686630>,  <62.978363, 57.142994, 59.871399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.730034, 57.396358, 59.686630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614268, 0.026941, -0.788637,
		-0.487091, -0.773343, -0.405813,
		-0.620820, 0.633416, -0.461917,
		62.543789, 57.586384, 59.548054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.842705, 56.858074, 59.192257>,  <62.978363, 57.142994, 59.871399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.842705, 56.858074, 59.192257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.802887, 57.256073, 59.188828>,  <62.778996, 57.494873, 59.186771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.802887, 57.256073, 59.188828>,  <62.842705, 56.858074, 59.192257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.802887, 57.256073, 59.188828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626665, 0.056003, -0.777273,
		-0.772904, -0.082746, -0.629104,
		-0.099548, 0.994996, -0.008569,
		62.773022, 57.554573, 59.186256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.168118, 57.120468, 58.523777>,  <62.842705, 56.858074, 59.192257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.168118, 57.120468, 58.523777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.052071, 57.464821, 58.690971>,  <62.982441, 57.671432, 58.791286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.052071, 57.464821, 58.690971>,  <63.168118, 57.120468, 58.523777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.052071, 57.464821, 58.690971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412325, 0.506594, -0.757199,
		-0.863609, -0.047331, -0.501936,
		-0.290117, 0.860884, 0.417983,
		62.965034, 57.723087, 58.816368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.263565, 57.511356, 58.013607>,  <63.168118, 57.120468, 58.523777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.263565, 57.511356, 58.013607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.639633, 57.517365, 57.877457>,  <63.865273, 57.520969, 57.795769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.639633, 57.517365, 57.877457>,  <63.263565, 57.511356, 58.013607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.639633, 57.517365, 57.877457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114586, 0.954774, -0.274365,
		0.320859, 0.296952, 0.899372,
		0.940170, 0.015023, -0.340374,
		63.921684, 57.521870, 57.775345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.763870, 58.151894, 58.267242>,  <63.263565, 57.511356, 58.013607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.763870, 58.151894, 58.267242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.844513, 58.009216, 57.902359>,  <63.892899, 57.923611, 57.683430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.844513, 58.009216, 57.902359>,  <63.763870, 58.151894, 58.267242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.844513, 58.009216, 57.902359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033748, 0.933310, -0.357482,
		0.978885, 0.041286, 0.200201,
		0.201608, -0.356690, -0.912210,
		63.904995, 57.902210, 57.628696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.484337, 58.034458, 58.459164>,  <63.763870, 58.151894, 58.267242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.484337, 58.034458, 58.459164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.465454, 58.313564, 58.173256>,  <64.454124, 58.481026, 58.001709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.465454, 58.313564, 58.173256>,  <64.484337, 58.034458, 58.459164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.465454, 58.313564, 58.173256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741286, 0.504095, 0.443152,
		0.669528, -0.508934, -0.541034,
		-0.047197, 0.697764, -0.714772,
		64.451294, 58.522892, 57.958824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.177803, 58.079803, 58.294792>,  <64.484337, 58.034458, 58.459164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.177803, 58.079803, 58.294792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.960793, 58.412540, 58.247993>,  <64.830582, 58.612183, 58.219913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.960793, 58.412540, 58.247993>,  <65.177803, 58.079803, 58.294792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.960793, 58.412540, 58.247993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716288, 0.530867, 0.452893,
		0.438849, 0.161903, -0.883855,
		-0.542534, 0.831846, -0.117001,
		64.798035, 58.662094, 58.212894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.568779, 58.535789, 57.985607>,  <65.177803, 58.079803, 58.294792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.568779, 58.535789, 57.985607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.305687, 58.765068, 58.181091>,  <65.147835, 58.902634, 58.298382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.305687, 58.765068, 58.181091>,  <65.568779, 58.535789, 57.985607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.305687, 58.765068, 58.181091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743288, 0.599069, 0.297723,
		-0.122115, 0.559071, -0.820078,
		-0.657732, 0.573197, 0.488706,
		65.108368, 58.937027, 58.327702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.750893, 58.056866, 57.434975>,  <65.568779, 58.535789, 57.985607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.750893, 58.056866, 57.434975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.999939, 58.039597, 57.122437>,  <66.149368, 58.029236, 56.934914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.999939, 58.039597, 57.122437>,  <65.750893, 58.056866, 57.434975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.999939, 58.039597, 57.122437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680209, 0.523499, 0.513094,
		0.386876, -0.850931, 0.355305,
		0.622610, -0.043178, -0.781340,
		66.186722, 58.026642, 56.888035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.469604, 57.718636, 57.569351>,  <65.750893, 58.056866, 57.434975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.469604, 57.718636, 57.569351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.472336, 58.001122, 57.286163>,  <66.473976, 58.170612, 57.116253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.472336, 58.001122, 57.286163>,  <66.469604, 57.718636, 57.569351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.472336, 58.001122, 57.286163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730381, 0.480040, 0.485906,
		0.683006, -0.520407, -0.512523,
		0.006837, 0.706214, -0.707966,
		66.474388, 58.212986, 57.073772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.190651, 57.872772, 57.460232>,  <66.469604, 57.718636, 57.569351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.190651, 57.872772, 57.460232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.994194, 58.187809, 57.311378>,  <66.876320, 58.376831, 57.222065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.994194, 58.187809, 57.311378>,  <67.190651, 57.872772, 57.460232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.994194, 58.187809, 57.311378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684419, 0.613174, 0.394446,
		0.538845, -0.060969, -0.840196,
		-0.491137, 0.787591, -0.372134,
		66.846855, 58.424088, 57.199738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.475243, 57.294189, 57.923122>,  <67.190651, 57.872772, 57.460232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.475243, 57.294189, 57.923122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.472298, 57.425087, 58.301086>,  <67.470528, 57.503628, 58.527866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.472298, 57.425087, 58.301086>,  <67.475243, 57.294189, 57.923122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.472298, 57.425087, 58.301086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302387, -0.901425, 0.309832,
		0.953157, -0.283447, 0.105593,
		-0.007363, 0.327248, 0.944910,
		67.470085, 57.523262, 58.584560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.038300, 56.936714, 58.363926>,  <67.475243, 57.294189, 57.923122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.038300, 56.936714, 58.363926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.691696, 57.032394, 58.539169>,  <67.483734, 57.089802, 58.644314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.691696, 57.032394, 58.539169>,  <68.038300, 56.936714, 58.363926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.691696, 57.032394, 58.539169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167269, -0.966101, 0.196646,
		0.470291, 0.097115, 0.877151,
		-0.866514, 0.239201, 0.438105,
		67.431740, 57.104156, 58.670601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.716377, 56.947102, 58.711967>,  <68.038300, 56.936714, 58.363926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.716377, 56.947102, 58.711967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.614410, 56.961433, 59.098488>,  <68.553230, 56.970032, 59.330399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.614410, 56.961433, 59.098488>,  <68.716377, 56.947102, 58.711967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.614410, 56.961433, 59.098488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937127, -0.237172, 0.256014,
		0.238351, 0.970807, 0.026887,
		-0.254917, 0.035825, 0.966299,
		68.537933, 56.972179, 59.388378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.223724, 57.217297, 58.951061>,  <68.716377, 56.947102, 58.711967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.223724, 57.217297, 58.951061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.048729, 57.019356, 59.251389>,  <68.943733, 56.900593, 59.431583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.048729, 57.019356, 59.251389>,  <69.223724, 57.217297, 58.951061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.048729, 57.019356, 59.251389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897423, -0.293053, 0.329774,
		0.056840, 0.818073, 0.572299,
		-0.437494, -0.494850, 0.750815,
		68.917480, 56.870899, 59.476631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.517387, 57.490143, 59.602604>,  <69.223724, 57.217297, 58.951061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.517387, 57.490143, 59.602604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.351814, 57.130650, 59.660492>,  <69.252472, 56.914955, 59.695225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.351814, 57.130650, 59.660492>,  <69.517387, 57.490143, 59.602604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.351814, 57.130650, 59.660492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896616, -0.375044, 0.235416,
		-0.157300, 0.227202, 0.961060,
		-0.413927, -0.898733, 0.144718,
		69.227638, 56.861031, 59.703907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.941971, 57.159218, 59.018253>,  <69.517387, 57.490143, 59.602604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.941971, 57.159218, 59.018253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.118263, 56.807175, 59.088860>,  <70.224037, 56.595947, 59.131222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.118263, 56.807175, 59.088860>,  <69.941971, 57.159218, 59.018253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.118263, 56.807175, 59.088860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742865, -0.468007, -0.478665,
		0.503889, 0.079838, -0.860071,
		0.440734, -0.880111, 0.176515,
		70.250481, 56.543140, 59.141815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.726822, 57.100475, 59.197197>,  <69.941971, 57.159218, 59.018253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.726822, 57.100475, 59.197197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.489716, 56.868015, 59.420227>,  <70.347450, 56.728539, 59.554047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.489716, 56.868015, 59.420227>,  <70.726822, 57.100475, 59.197197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.489716, 56.868015, 59.420227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797732, 0.328528, -0.505662,
		0.110686, -0.744536, -0.658342,
		-0.592767, -0.581150, 0.557576,
		70.311882, 56.693668, 59.587502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.203072, 57.444370, 59.684025>,  <70.726822, 57.100475, 59.197197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.203072, 57.444370, 59.684025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.560692, 57.603500, 59.601639>,  <71.775261, 57.698978, 59.552208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.560692, 57.603500, 59.601639>,  <71.203072, 57.444370, 59.684025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.560692, 57.603500, 59.601639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408977, 0.912454, -0.012868,
		0.182817, 0.095740, 0.978474,
		0.894045, 0.397821, -0.205968,
		71.828903, 57.722847, 59.539848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.279518, 58.062679, 60.152676>,  <71.203072, 57.444370, 59.684025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.279518, 58.062679, 60.152676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.505867, 58.083260, 59.823517>,  <71.641678, 58.095608, 59.626022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.505867, 58.083260, 59.823517>,  <71.279518, 58.062679, 60.152676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.505867, 58.083260, 59.823517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353054, 0.917041, -0.185441,
		0.745085, 0.395460, 0.537084,
		0.565863, 0.051451, -0.822892,
		71.675629, 58.098694, 59.576649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.957420, 57.839993, 60.040459>,  <71.279518, 58.062679, 60.152676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.957420, 57.839993, 60.040459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.188324, 58.165947, 60.061378>,  <72.326866, 58.361519, 60.073933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.188324, 58.165947, 60.061378>,  <71.957420, 57.839993, 60.040459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.188324, 58.165947, 60.061378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383363, -0.327009, 0.863770,
		0.720979, -0.478564, -0.501165,
		0.577254, 0.814888, 0.052303,
		72.361504, 58.410412, 60.077068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.676155, 57.699631, 60.211300>,  <71.957420, 57.839993, 60.040459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.676155, 57.699631, 60.211300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.610451, 58.076935, 60.326729>,  <72.571030, 58.303318, 60.395985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.610451, 58.076935, 60.326729>,  <72.676155, 57.699631, 60.211300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.610451, 58.076935, 60.326729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457300, -0.186385, 0.869561,
		0.874010, 0.274801, -0.400738,
		-0.164265, 0.943263, 0.288569,
		72.561172, 58.359913, 60.413300>
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
