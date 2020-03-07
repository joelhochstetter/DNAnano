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
	<3.105518, 3.653258, 4.614265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.172649, 3.749161, 4.231779>,  <3.212928, 3.806702, 4.002286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.172649, 3.749161, 4.231779>,  <3.105518, 3.653258, 4.614265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.172649, 3.749161, 4.231779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233052, -0.932831, -0.274797,
		-0.957873, 0.268967, -0.100679,
		0.167828, 0.239757, -0.956217,
		3.222998, 3.821088, 3.944914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.493598, 3.768564, 4.255536>,  <3.105518, 3.653258, 4.614265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.493598, 3.768564, 4.255536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.814476, 3.598656, 4.087702>,  <3.007003, 3.496711, 3.987001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.814476, 3.598656, 4.087702>,  <2.493598, 3.768564, 4.255536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.814476, 3.598656, 4.087702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485754, -0.872938, -0.044977,
		-0.347166, 0.239896, -0.906601,
		0.802196, -0.424770, -0.419584,
		3.055135, 3.471225, 3.961826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.218931, 3.440654, 3.733271>,  <2.493598, 3.768564, 4.255536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.218931, 3.440654, 3.733271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.543205, 3.233093, 3.841736>,  <2.737770, 3.108557, 3.906816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.543205, 3.233093, 3.841736>,  <2.218931, 3.440654, 3.733271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.543205, 3.233093, 3.841736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553871, -0.829828, 0.067917,
		0.189777, -0.205250, -0.960134,
		0.810686, -0.518901, 0.271164,
		2.786411, 3.077423, 3.923085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.409728, 2.871083, 3.227970>,  <2.218931, 3.440654, 3.733271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.409728, 2.871083, 3.227970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.533070, 2.769363, 3.594630>,  <2.607075, 2.708332, 3.814626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.533070, 2.769363, 3.594630>,  <2.409728, 2.871083, 3.227970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.533070, 2.769363, 3.594630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543013, -0.838241, -0.049882,
		0.781060, -0.482372, -0.396563,
		0.308354, -0.254300, 0.916651,
		2.625576, 2.693074, 3.869626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.714855, 2.250447, 3.128976>,  <2.409728, 2.871083, 3.227970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.714855, 2.250447, 3.128976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595314, 2.282825, 3.509320>,  <2.523590, 2.302252, 3.737526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595314, 2.282825, 3.509320>,  <2.714855, 2.250447, 3.128976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.595314, 2.282825, 3.509320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505191, -0.858744, -0.085676,
		0.809610, -0.505971, 0.297530,
		-0.298852, 0.080945, 0.950860,
		2.505658, 2.307109, 3.794578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.782932, 1.567918, 3.425259>,  <2.714855, 2.250447, 3.128976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.782932, 1.567918, 3.425259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.535721, 1.755157, 3.677901>,  <2.387394, 1.867501, 3.829486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.535721, 1.755157, 3.677901>,  <2.782932, 1.567918, 3.425259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.535721, 1.755157, 3.677901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650404, -0.755744, -0.076320,
		0.441606, -0.457966, 0.771525,
		-0.618028, 0.468099, 0.631605,
		2.350312, 1.895587, 3.867383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.661323, 1.169728, 4.037713>,  <2.782932, 1.567918, 3.425259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.661323, 1.169728, 4.037713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.342613, 1.397823, 3.957735>,  <2.151387, 1.534681, 3.909749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.342613, 1.397823, 3.957735>,  <2.661323, 1.169728, 4.037713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.342613, 1.397823, 3.957735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590529, -0.804965, 0.057503,
		-0.128157, 0.163889, 0.978118,
		-0.796775, 0.570238, -0.199943,
		2.103581, 1.568895, 3.897752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.188857, 0.913750, 4.430854>,  <2.661323, 1.169728, 4.037713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.188857, 0.913750, 4.430854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.989578, 1.123081, 4.154325>,  <1.870011, 1.248680, 3.988407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.989578, 1.123081, 4.154325>,  <2.188857, 0.913750, 4.430854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.989578, 1.123081, 4.154325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668356, -0.739708, -0.078308,
		-0.552358, 0.423038, 0.718289,
		-0.498197, 0.523327, -0.691323,
		1.840119, 1.280079, 3.946928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.343205, 1.818764, 1.886123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.232941, 1.992741, 2.229013>,  <2.166782, 2.097127, 2.434748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.232941, 1.992741, 2.229013>,  <2.343205, 1.818764, 1.886123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.232941, 1.992741, 2.229013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929067, 0.108285, -0.353707,
		-0.246667, -0.893924, 0.374240,
		-0.275662, 0.434942, 0.857226,
		2.150242, 2.123223, 2.486181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.661617, 1.578096, 2.090760>,  <2.343205, 1.818764, 1.886123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.661617, 1.578096, 2.090760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.709770, 1.947254, 2.237059>,  <1.738662, 2.168749, 2.324838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.709770, 1.947254, 2.237059>,  <1.661617, 1.578096, 2.090760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.709770, 1.947254, 2.237059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952201, 0.211539, -0.220372,
		-0.280751, -0.321736, 0.904248,
		0.120382, 0.922896, 0.365748,
		1.745885, 2.224123, 2.346783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.138220, 1.708744, 2.540092>,  <1.661617, 1.578096, 2.090760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.138220, 1.708744, 2.540092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265709, 2.046772, 2.368383>,  <1.342202, 2.249589, 2.265358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265709, 2.046772, 2.368383>,  <1.138220, 1.708744, 2.540092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.265709, 2.046772, 2.368383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889876, 0.110826, -0.442536,
		-0.326399, 0.523044, 0.787330,
		0.318722, 0.845069, -0.429271,
		1.361326, 2.300293, 2.239602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.085799, 2.179158, 3.225781>,  <1.138220, 1.708744, 2.540092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.085799, 2.179158, 3.225781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.301109, 1.916847, 3.437523>,  <1.430295, 1.759461, 3.564568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.301109, 1.916847, 3.437523>,  <1.085799, 2.179158, 3.225781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.301109, 1.916847, 3.437523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557906, 0.748049, 0.359393,
		-0.631666, 0.101878, 0.768517,
		0.538275, -0.655777, 0.529356,
		1.462592, 1.720114, 3.596330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.098967, 2.352480, 3.983082>,  <1.085799, 2.179158, 3.225781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.098967, 2.352480, 3.983082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423660, 2.119705, 3.963326>,  <1.618476, 1.980040, 3.951473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423660, 2.119705, 3.963326>,  <1.098967, 2.352480, 3.983082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.423660, 2.119705, 3.963326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571785, 0.774642, 0.270170,
		-0.118963, -0.247545, 0.961545,
		0.811733, -0.581937, -0.049389,
		1.667180, 1.945124, 3.948510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.548060, 2.600052, 4.580197>,  <1.098967, 2.352480, 3.983082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.548060, 2.600052, 4.580197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.797394, 2.352203, 4.389400>,  <1.946994, 2.203494, 4.274922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.797394, 2.352203, 4.389400>,  <1.548060, 2.600052, 4.580197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.797394, 2.352203, 4.389400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749488, 0.647370, 0.138488,
		0.222980, -0.443824, 0.867929,
		0.623335, -0.619623, -0.476991,
		1.984394, 2.166317, 4.246303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.062548, 2.423384, 5.016028>,  <1.548060, 2.600052, 4.580197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.062548, 2.423384, 5.016028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.196579, 2.398750, 4.639957>,  <2.276998, 2.383970, 4.414315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.196579, 2.398750, 4.639957>,  <2.062548, 2.423384, 5.016028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.196579, 2.398750, 4.639957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662712, 0.724706, 0.188718,
		0.669728, -0.686301, 0.283646,
		0.335078, -0.061586, -0.940176,
		2.297102, 2.380275, 4.357905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.814575, 2.287941, 5.092750>,  <2.062548, 2.423384, 5.016028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.814575, 2.287941, 5.092750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.758583, 2.456879, 4.734526>,  <2.724988, 2.558242, 4.519591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.758583, 2.456879, 4.734526>,  <2.814575, 2.287941, 5.092750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.758583, 2.456879, 4.734526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765062, 0.620297, 0.172949,
		0.628558, -0.660951, -0.409950,
		-0.139980, 0.422345, -0.895561,
		2.716589, 2.583582, 4.465858>
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
