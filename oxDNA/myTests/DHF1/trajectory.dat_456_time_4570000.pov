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
	<3.518775, 1.571934, 1.633746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.174182, 1.758163, 1.714828>,  <2.967426, 1.869901, 1.763478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.174182, 1.758163, 1.714828>,  <3.518775, 1.571934, 1.633746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.174182, 1.758163, 1.714828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420755, 0.431003, 0.798249,
		0.284277, 0.772967, -0.567194,
		-0.861482, 0.465574, 0.202706,
		2.915737, 1.897836, 1.775640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.785320, 2.254170, 1.976056>,  <3.518775, 1.571934, 1.633746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.785320, 2.254170, 1.976056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.394625, 2.235954, 2.059875>,  <3.160208, 2.225025, 2.110167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.394625, 2.235954, 2.059875>,  <3.785320, 2.254170, 1.976056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.394625, 2.235954, 2.059875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155869, 0.520340, 0.839613,
		-0.147273, 0.852744, -0.501137,
		-0.976737, -0.045540, 0.209548,
		3.101604, 2.222292, 2.122740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.615280, 2.760566, 2.457404>,  <3.785320, 2.254170, 1.976056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.615280, 2.760566, 2.457404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.294281, 2.524796, 2.494438>,  <3.101681, 2.383333, 2.516659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.294281, 2.524796, 2.494438>,  <3.615280, 2.760566, 2.457404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.294281, 2.524796, 2.494438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049032, 0.089502, 0.994779,
		-0.594636, 0.802848, -0.042924,
		-0.802499, -0.589427, 0.092586,
		3.053531, 2.347968, 2.522214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.171392, 3.048241, 2.992827>,  <3.615280, 2.760566, 2.457404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.171392, 3.048241, 2.992827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.051205, 2.669075, 2.950539>,  <2.979092, 2.441576, 2.925166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.051205, 2.669075, 2.950539>,  <3.171392, 3.048241, 2.992827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.051205, 2.669075, 2.950539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106529, -0.076796, 0.991339,
		-0.947824, 0.309130, -0.077905,
		-0.300470, -0.947914, -0.105720,
		2.961064, 2.384701, 2.918823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.580196, 3.032048, 3.348689>,  <3.171392, 3.048241, 2.992827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.580196, 3.032048, 3.348689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.699335, 2.653038, 3.302238>,  <2.770818, 2.425632, 3.274368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.699335, 2.653038, 3.302238>,  <2.580196, 3.032048, 3.348689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.699335, 2.653038, 3.302238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017197, -0.126953, 0.991760,
		-0.954459, -0.293395, -0.054107,
		0.297847, -0.947524, -0.116125,
		2.788689, 2.368781, 3.267401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.106845, 2.593028, 3.804472>,  <2.580196, 3.032048, 3.348689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.106845, 2.593028, 3.804472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.433537, 2.368515, 3.750931>,  <2.629551, 2.233807, 3.718806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.433537, 2.368515, 3.750931>,  <2.106845, 2.593028, 3.804472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.433537, 2.368515, 3.750931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005304, -0.224661, 0.974422,
		-0.576998, -0.796548, -0.180511,
		0.816728, -0.561282, -0.133854,
		2.678555, 2.200130, 3.710775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.967326, 2.020619, 4.201224>,  <2.106845, 2.593028, 3.804472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.967326, 2.020619, 4.201224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.363402, 2.004601, 4.147682>,  <2.601048, 1.994990, 4.115557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.363402, 2.004601, 4.147682>,  <1.967326, 2.020619, 4.201224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.363402, 2.004601, 4.147682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123466, -0.197656, 0.972465,
		-0.065398, -0.979453, -0.190774,
		0.990192, -0.040043, -0.133855,
		2.660460, 1.992587, 4.107525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.232706, 1.396923, 4.569508>,  <1.967326, 2.020619, 4.201224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.232706, 1.396923, 4.569508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.548676, 1.637993, 4.524254>,  <2.738259, 1.782635, 4.497101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.548676, 1.637993, 4.524254>,  <2.232706, 1.396923, 4.569508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.548676, 1.637993, 4.524254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208082, -0.089897, 0.973972,
		0.576818, -0.792907, -0.196418,
		0.789926, 0.602675, -0.113136,
		2.785654, 1.818795, 4.490313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.517146, 3.123988, 5.667340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.161110, 3.223030, 5.514275>,  <1.947488, 3.282455, 5.422435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.161110, 3.223030, 5.514275>,  <2.517146, 3.123988, 5.667340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.161110, 3.223030, 5.514275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148774, -0.635751, -0.757421,
		-0.430820, -0.731104, 0.529039,
		-0.890090, 0.247605, -0.382663,
		1.894083, 3.297312, 5.399476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.740658, 2.662080, 5.261259>,  <2.517146, 3.123988, 5.667340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.740658, 2.662080, 5.261259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.052055, 2.413391, 5.226830>,  <3.238894, 2.264178, 5.206172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.052055, 2.413391, 5.226830>,  <2.740658, 2.662080, 5.261259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.052055, 2.413391, 5.226830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197483, -0.112458, -0.973834,
		0.595776, 0.775122, -0.210328,
		0.778493, -0.621723, -0.086073,
		3.285603, 2.226874, 5.201007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.252982, 2.900761, 4.789132>,  <2.740658, 2.662080, 5.261259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.252982, 2.900761, 4.789132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.263838, 2.502556, 4.825394>,  <3.270351, 2.263633, 4.847150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.263838, 2.502556, 4.825394>,  <3.252982, 2.900761, 4.789132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.263838, 2.502556, 4.825394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155566, -0.093788, -0.983363,
		0.987453, 0.012586, -0.157413,
		0.027140, -0.995513, 0.090653,
		3.271980, 2.203902, 4.852590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.763320, 2.574228, 4.297869>,  <3.252982, 2.900761, 4.789132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.763320, 2.574228, 4.297869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.474962, 2.309586, 4.380417>,  <3.301948, 2.150800, 4.429945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.474962, 2.309586, 4.380417>,  <3.763320, 2.574228, 4.297869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.474962, 2.309586, 4.380417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030259, -0.267441, -0.963099,
		0.692384, -0.700537, 0.172777,
		-0.720895, -0.661606, 0.206370,
		3.258694, 2.111104, 4.442328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.950871, 2.104384, 3.852342>,  <3.763320, 2.574228, 4.297869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.950871, 2.104384, 3.852342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.562035, 2.065163, 3.937592>,  <3.328732, 2.041630, 3.988741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.562035, 2.065163, 3.937592>,  <3.950871, 2.104384, 3.852342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.562035, 2.065163, 3.937592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196159, -0.158576, -0.967665,
		0.128679, -0.982466, 0.134916,
		-0.972092, -0.098053, 0.213125,
		3.270407, 2.035747, 4.001529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.699350, 1.409615, 3.588694>,  <3.950871, 2.104384, 3.852342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.699350, 1.409615, 3.588694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.386250, 1.657097, 3.615540>,  <3.198389, 1.805586, 3.631647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.386250, 1.657097, 3.615540>,  <3.699350, 1.409615, 3.588694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.386250, 1.657097, 3.615540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214562, -0.167064, -0.962316,
		-0.584178, -0.767654, 0.263521,
		-0.782751, 0.618706, 0.067114,
		3.151424, 1.842708, 3.635674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.233438, 1.141281, 3.189716>,  <3.699350, 1.409615, 3.588694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.233438, 1.141281, 3.189716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.067041, 1.503616, 3.221733>,  <2.967203, 1.721018, 3.240943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.067041, 1.503616, 3.221733>,  <3.233438, 1.141281, 3.189716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.067041, 1.503616, 3.221733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252134, -0.030321, -0.967217,
		-0.873716, -0.422536, 0.241006,
		-0.415991, 0.905839, 0.080043,
		2.942244, 1.775368, 3.245746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.621737, 1.084885, 2.874950>,  <3.233438, 1.141281, 3.189716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.621737, 1.084885, 2.874950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.744724, 1.465508, 2.874031>,  <2.818516, 1.693881, 2.873480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.744724, 1.465508, 2.874031>,  <2.621737, 1.084885, 2.874950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.744724, 1.465508, 2.874031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235603, 0.073789, -0.969044,
		-0.921930, 0.298491, 0.246877,
		0.307468, 0.951556, -0.002297,
		2.836965, 1.750974, 2.873342>
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
