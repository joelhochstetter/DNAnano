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
	<35.797184, 53.261715, 49.983982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047073, 53.193943, 50.288879>,  <36.197006, 53.153278, 50.471817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047073, 53.193943, 50.288879>,  <35.797184, 53.261715, 49.983982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047073, 53.193943, 50.288879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498311, -0.665049, -0.556234,
		0.601175, 0.727325, -0.331038,
		0.624719, -0.169434, 0.762245,
		36.234489, 53.143112, 50.517551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483482, 53.344913, 49.786835>,  <35.797184, 53.261715, 49.983982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483482, 53.344913, 49.786835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445377, 53.080257, 50.084335>,  <36.422516, 52.921463, 50.262836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445377, 53.080257, 50.084335>,  <36.483482, 53.344913, 49.786835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445377, 53.080257, 50.084335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624458, -0.621573, -0.472969,
		0.775228, 0.419384, 0.472376,
		-0.095260, -0.661637, 0.743749,
		36.416798, 52.881767, 50.307461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112415, 53.192635, 50.102615>,  <36.483482, 53.344913, 49.786835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112415, 53.192635, 50.102615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882740, 52.866058, 50.127060>,  <36.744934, 52.670113, 50.141727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882740, 52.866058, 50.127060>,  <37.112415, 53.192635, 50.102615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882740, 52.866058, 50.127060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768762, -0.563316, -0.302787,
		0.281631, -0.126878, 0.951097,
		-0.574186, -0.816441, 0.061108,
		36.710484, 52.621124, 50.145393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521736, 52.650700, 50.463108>,  <37.112415, 53.192635, 50.102615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521736, 52.650700, 50.463108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239586, 52.500572, 50.222580>,  <37.070297, 52.410496, 50.078262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239586, 52.500572, 50.222580>,  <37.521736, 52.650700, 50.463108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239586, 52.500572, 50.222580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695787, -0.528622, -0.486250,
		-0.135372, -0.761377, 0.634018,
		-0.705376, -0.375317, -0.601317,
		37.027973, 52.387978, 50.042187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524906, 51.871799, 50.500648>,  <37.521736, 52.650700, 50.463108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524906, 51.871799, 50.500648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422962, 52.048515, 50.156586>,  <37.361797, 52.154545, 49.950150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422962, 52.048515, 50.156586>,  <37.524906, 51.871799, 50.500648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422962, 52.048515, 50.156586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800676, -0.402347, -0.443886,
		-0.542185, -0.801837, -0.251184,
		-0.254861, 0.441785, -0.860158,
		37.346504, 52.181049, 49.898537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928791, 51.724373, 49.801147>,  <37.524906, 51.871799, 50.500648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928791, 51.724373, 49.801147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043591, 51.503960, 49.487717>,  <38.112469, 51.371712, 49.299660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043591, 51.503960, 49.487717>,  <37.928791, 51.724373, 49.801147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043591, 51.503960, 49.487717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836401, -0.542902, 0.075442,
		-0.466976, 0.633732, -0.616699,
		0.286997, -0.551037, -0.783576,
		38.129688, 51.338650, 49.252644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986061, 50.990974, 50.049046>,  <37.928791, 51.724373, 49.801147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986061, 50.990974, 50.049046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298985, 50.802246, 50.211716>,  <38.486736, 50.689011, 50.309319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298985, 50.802246, 50.211716>,  <37.986061, 50.990974, 50.049046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298985, 50.802246, 50.211716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542757, 0.836678, -0.073380,
		-0.305635, 0.278132, 0.910621,
		0.782306, -0.471818, 0.406676,
		38.533676, 50.660702, 50.333717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345531, 51.401558, 50.477367>,  <37.986061, 50.990974, 50.049046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345531, 51.401558, 50.477367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621819, 51.122581, 50.400955>,  <38.787590, 50.955196, 50.355106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621819, 51.122581, 50.400955>,  <38.345531, 51.401558, 50.477367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621819, 51.122581, 50.400955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671463, 0.716640, -0.188585,
		0.268427, 0.001989, 0.963298,
		0.690713, -0.697440, -0.191030,
		38.829033, 50.913349, 50.343647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902111, 51.842731, 50.449051>,  <38.345531, 51.401558, 50.477367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902111, 51.842731, 50.449051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032352, 51.519527, 50.252640>,  <39.110497, 51.325607, 50.134792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032352, 51.519527, 50.252640>,  <38.902111, 51.842731, 50.449051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032352, 51.519527, 50.252640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559877, 0.583254, -0.588517,
		0.761920, -0.083293, 0.642293,
		0.325600, -0.808008, -0.491027,
		39.130032, 51.277126, 50.105331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597179, 51.699749, 50.544842>,  <38.902111, 51.842731, 50.449051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597179, 51.699749, 50.544842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479862, 51.570839, 50.184814>,  <39.409473, 51.493492, 49.968800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479862, 51.570839, 50.184814>,  <39.597179, 51.699749, 50.544842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479862, 51.570839, 50.184814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634686, 0.638428, -0.435412,
		0.714950, -0.698961, 0.017300,
		-0.293291, -0.322278, -0.900065,
		39.391876, 51.474155, 49.914795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135525, 51.455479, 50.172470>,  <39.597179, 51.699749, 50.544842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135525, 51.455479, 50.172470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873245, 51.583595, 49.898979>,  <39.715878, 51.660465, 49.734886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873245, 51.583595, 49.898979>,  <40.135525, 51.455479, 50.172470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873245, 51.583595, 49.898979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718780, 0.542008, -0.435412,
		0.231126, -0.776944, -0.585609,
		-0.655695, 0.320289, -0.683724,
		39.676537, 51.679684, 49.693863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507500, 51.429951, 50.823536>,  <40.135525, 51.455479, 50.172470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507500, 51.429951, 50.823536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686234, 51.776772, 50.735390>,  <40.793472, 51.984863, 50.682503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686234, 51.776772, 50.735390>,  <40.507500, 51.429951, 50.823536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686234, 51.776772, 50.735390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013328, 0.252746, 0.967441,
		0.894518, -0.429348, 0.124491,
		0.446834, 0.867052, -0.220363,
		40.820282, 52.036888, 50.669281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168621, 51.535488, 51.275810>,  <40.507500, 51.429951, 50.823536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168621, 51.535488, 51.275810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057026, 51.897915, 51.148560>,  <40.990067, 52.115372, 51.072208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057026, 51.897915, 51.148560>,  <41.168621, 51.535488, 51.275810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057026, 51.897915, 51.148560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245726, 0.387609, 0.888469,
		0.928323, 0.169702, -0.330784,
		-0.278990, 0.906069, -0.318126,
		40.973328, 52.169735, 51.053123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765278, 52.022701, 51.239895>,  <41.168621, 51.535488, 51.275810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765278, 52.022701, 51.239895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423023, 52.220139, 51.302193>,  <41.217670, 52.338600, 51.339569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423023, 52.220139, 51.302193>,  <41.765278, 52.022701, 51.239895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423023, 52.220139, 51.302193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410789, 0.464569, 0.784492,
		0.314866, 0.735216, -0.600263,
		-0.855635, 0.493592, 0.155741,
		41.166332, 52.368217, 51.348915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947964, 52.531796, 51.645992>,  <41.765278, 52.022701, 51.239895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947964, 52.531796, 51.645992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549576, 52.567291, 51.651127>,  <41.310543, 52.588589, 51.654209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549576, 52.567291, 51.651127>,  <41.947964, 52.531796, 51.645992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549576, 52.567291, 51.651127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056347, 0.508113, 0.859445,
		0.069742, 0.856707, -0.511067,
		-0.995972, 0.088736, 0.012836,
		41.250786, 52.593910, 51.654976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807758, 53.240368, 51.843788>,  <41.947964, 52.531796, 51.645992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807758, 53.240368, 51.843788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492607, 53.005070, 51.916687>,  <41.303516, 52.863892, 51.960426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492607, 53.005070, 51.916687>,  <41.807758, 53.240368, 51.843788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492607, 53.005070, 51.916687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158303, 0.479453, 0.863171,
		-0.595138, 0.651223, -0.470872,
		-0.787878, -0.588246, 0.182250,
		41.256245, 52.828594, 51.971363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307762, 53.082634, 52.263798>,  <41.807758, 53.240368, 51.843788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307762, 53.082634, 52.263798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031330, 53.371403, 52.249725>,  <41.865471, 53.544662, 52.241283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031330, 53.371403, 52.249725>,  <42.307762, 53.082634, 52.263798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031330, 53.371403, 52.249725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016088, 0.064025, 0.997819,
		0.722597, 0.689009, -0.055861,
		-0.691082, 0.721919, -0.035179,
		41.824005, 53.587978, 52.239170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485107, 53.803295, 52.447552>,  <42.307762, 53.082634, 52.263798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485107, 53.803295, 52.447552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123886, 53.684868, 52.572029>,  <41.907154, 53.613811, 52.646713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123886, 53.684868, 52.572029>,  <42.485107, 53.803295, 52.447552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123886, 53.684868, 52.572029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248688, 0.230323, 0.940801,
		-0.350213, 0.926983, -0.134366,
		-0.903053, -0.296065, 0.311191,
		41.852970, 53.596046, 52.665386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223911, 54.626205, 52.358780>,  <42.485107, 53.803295, 52.447552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223911, 54.626205, 52.358780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046776, 54.766365, 52.028664>,  <41.940495, 54.850460, 51.830593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046776, 54.766365, 52.028664>,  <42.223911, 54.626205, 52.358780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046776, 54.766365, 52.028664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602865, -0.797698, -0.015197,
		-0.663660, 0.490810, 0.564501,
		-0.442843, 0.350403, -0.825293,
		41.913921, 54.871487, 51.781075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853363, 54.426937, 52.867004>,  <42.223911, 54.626205, 52.358780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853363, 54.426937, 52.867004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756191, 54.154022, 53.142822>,  <42.697887, 53.990273, 53.308315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756191, 54.154022, 53.142822>,  <42.853363, 54.426937, 52.867004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756191, 54.154022, 53.142822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546706, -0.683492, -0.483685,
		0.801310, 0.259479, 0.539048,
		-0.242929, -0.682283, 0.689548,
		42.683311, 53.949337, 53.349686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489105, 54.201649, 53.226032>,  <42.853363, 54.426937, 52.867004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489105, 54.201649, 53.226032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199364, 53.925915, 53.221336>,  <43.025520, 53.760475, 53.218517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199364, 53.925915, 53.221336>,  <43.489105, 54.201649, 53.226032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199364, 53.925915, 53.221336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609875, -0.632728, -0.477187,
		0.321514, -0.352810, 0.878723,
		-0.724349, -0.689333, -0.011739,
		42.982059, 53.719116, 53.217815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724998, 53.548923, 53.415539>,  <43.489105, 54.201649, 53.226032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724998, 53.548923, 53.415539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401478, 53.473839, 53.192616>,  <43.207363, 53.428787, 53.058861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401478, 53.473839, 53.192616>,  <43.724998, 53.548923, 53.415539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401478, 53.473839, 53.192616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511236, -0.692805, -0.508585,
		-0.290639, -0.696264, 0.656311,
		-0.808805, -0.187715, -0.557312,
		43.158836, 53.417526, 53.025421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825649, 52.756245, 53.248451>,  <43.724998, 53.548923, 53.415539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825649, 52.756245, 53.248451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608467, 53.028992, 53.052391>,  <43.478157, 53.192642, 52.934753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608467, 53.028992, 53.052391>,  <43.825649, 52.756245, 53.248451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608467, 53.028992, 53.052391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524614, -0.180347, -0.832019,
		-0.655726, -0.708893, -0.259797,
		-0.542959, 0.681869, -0.490153,
		43.445580, 53.233551, 52.905346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489731, 53.134228, 53.131184>,  <43.825649, 52.756245, 53.248451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489731, 53.134228, 53.131184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695148, 53.124924, 53.474281>,  <44.818401, 53.119343, 53.680141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695148, 53.124924, 53.474281>,  <44.489731, 53.134228, 53.131184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695148, 53.124924, 53.474281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491034, -0.811805, -0.316003,
		0.703672, 0.583465, -0.405481,
		0.513548, -0.023257, 0.857746,
		44.849213, 53.117947, 53.731606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328224, 53.096828, 53.096535>,  <44.489731, 53.134228, 53.131184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328224, 53.096828, 53.096535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.179810, 52.905708, 53.415039>,  <45.090763, 52.791035, 53.606144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.179810, 52.905708, 53.415039>,  <45.328224, 53.096828, 53.096535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.179810, 52.905708, 53.415039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493303, -0.827893, -0.266919,
		0.786756, 0.293763, 0.542879,
		-0.371035, -0.477804, 0.796264,
		45.068501, 52.762367, 53.653919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689320, 53.020462, 53.706890>,  <45.328224, 53.096828, 53.096535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689320, 53.020462, 53.706890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668766, 53.309292, 53.430931>,  <45.656433, 53.482590, 53.265354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668766, 53.309292, 53.430931>,  <45.689320, 53.020462, 53.706890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668766, 53.309292, 53.430931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697104, 0.520603, 0.492968,
		0.715126, -0.455603, -0.530113,
		-0.051381, 0.722079, -0.689900,
		45.653351, 53.525917, 53.223961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292297, 53.096161, 53.455555>,  <45.689320, 53.020462, 53.706890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292297, 53.096161, 53.455555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108418, 53.450706, 53.433502>,  <45.998089, 53.663433, 53.420269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108418, 53.450706, 53.433502>,  <46.292297, 53.096161, 53.455555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.108418, 53.450706, 53.433502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711919, 0.404917, 0.573771,
		0.530892, 0.224513, -0.817158,
		-0.459700, 0.886361, -0.055132,
		45.970509, 53.716614, 53.416962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782761, 52.570499, 53.658092>,  <46.292297, 53.096161, 53.455555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782761, 52.570499, 53.658092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911198, 52.934578, 53.762733>,  <46.988262, 53.153027, 53.825520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911198, 52.934578, 53.762733>,  <46.782761, 52.570499, 53.658092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.911198, 52.934578, 53.762733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944762, -0.288679, -0.155206,
		-0.065749, 0.296989, -0.952615,
		0.321095, 0.910199, 0.261603,
		47.007526, 53.207638, 53.841213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.353161, 52.681812, 53.320999>,  <46.782761, 52.570499, 53.658092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.353161, 52.681812, 53.320999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.372669, 52.993050, 53.571503>,  <47.384377, 53.179790, 53.721806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.372669, 52.993050, 53.571503>,  <47.353161, 52.681812, 53.320999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.372669, 52.993050, 53.571503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998795, -0.041394, -0.026357,
		0.005415, 0.626786, -0.779172,
		0.048773, 0.778091, 0.626255,
		47.387302, 53.226479, 53.759380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.710785, 53.285397, 53.056896>,  <47.353161, 52.681812, 53.320999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.710785, 53.285397, 53.056896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757782, 53.202320, 53.445343>,  <47.785980, 53.152473, 53.678410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757782, 53.202320, 53.445343>,  <47.710785, 53.285397, 53.056896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757782, 53.202320, 53.445343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984424, 0.153145, -0.086350,
		-0.130787, 0.966132, 0.222447,
		0.117493, -0.207689, 0.971113,
		47.793030, 53.140015, 53.736675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.333561, 53.553020, 53.256416>,  <47.710785, 53.285397, 53.056896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.333561, 53.553020, 53.256416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.249409, 53.330368, 53.577888>,  <48.198917, 53.196777, 53.770771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.249409, 53.330368, 53.577888>,  <48.333561, 53.553020, 53.256416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.249409, 53.330368, 53.577888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977579, -0.127212, 0.167800,
		0.008835, 0.820962, 0.570914,
		-0.210384, -0.556631, 0.803679,
		48.186295, 53.163380, 53.818993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.691463, 53.763721, 53.976162>,  <48.333561, 53.553020, 53.256416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.691463, 53.763721, 53.976162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.625134, 53.371864, 53.930916>,  <48.585335, 53.136749, 53.903767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.625134, 53.371864, 53.930916>,  <48.691463, 53.763721, 53.976162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.625134, 53.371864, 53.930916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973286, -0.181056, 0.141185,
		-0.158792, -0.086683, 0.983499,
		-0.165830, -0.979645, -0.113118,
		48.575386, 53.077972, 53.896980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.319916, 53.609009, 54.021362>,  <48.691463, 53.763721, 53.976162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.319916, 53.609009, 54.021362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.117756, 53.266991, 54.067787>,  <48.996460, 53.061779, 54.095642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.117756, 53.266991, 54.067787>,  <49.319916, 53.609009, 54.021362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.117756, 53.266991, 54.067787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853196, -0.475086, 0.215292,
		-0.128946, 0.207831, 0.969628,
		-0.505401, -0.855044, 0.116060,
		48.966137, 53.010479, 54.102604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.027950, 53.400494, 53.753620>,  <49.319916, 53.609009, 54.021362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.027950, 53.400494, 53.753620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.312187, 53.521683, 53.499611>,  <50.482731, 53.594398, 53.347206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.312187, 53.521683, 53.499611>,  <50.027950, 53.400494, 53.753620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.312187, 53.521683, 53.499611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703528, -0.293085, 0.647418,
		0.010036, -0.906811, -0.421418,
		0.710597, 0.302977, -0.635026,
		50.525368, 53.612576, 53.309105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.806625, 53.879730, 53.213242>,  <50.027950, 53.400494, 53.753620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.806625, 53.879730, 53.213242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.667175, 54.028484, 52.869110>,  <49.583504, 54.117737, 52.662632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.667175, 54.028484, 52.869110>,  <49.806625, 53.879730, 53.213242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.667175, 54.028484, 52.869110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892814, 0.147558, 0.425571,
		0.285210, 0.916477, 0.280580,
		-0.348624, 0.371883, -0.860328,
		49.562588, 54.140049, 52.611012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.536629, 54.694790, 53.260281>,  <49.806625, 53.879730, 53.213242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.536629, 54.694790, 53.260281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.357185, 54.474834, 52.978466>,  <49.249519, 54.342861, 52.809380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.357185, 54.474834, 52.978466>,  <49.536629, 54.694790, 53.260281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.357185, 54.474834, 52.978466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875952, 0.114096, 0.468711,
		-0.177355, 0.827408, -0.532862,
		-0.448613, -0.549889, -0.704534,
		49.222603, 54.309868, 52.767105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.718979, 54.725864, 52.583466>,  <49.536629, 54.694790, 53.260281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.718979, 54.725864, 52.583466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.040428, 54.961437, 52.617729>,  <50.233299, 55.102783, 52.638287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.040428, 54.961437, 52.617729>,  <49.718979, 54.725864, 52.583466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.040428, 54.961437, 52.617729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374685, -0.612513, 0.696017,
		0.462378, -0.527241, -0.712898,
		0.803628, 0.588935, 0.085663,
		50.281517, 55.138119, 52.643429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.258114, 54.282345, 52.506706>,  <49.718979, 54.725864, 52.583466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.258114, 54.282345, 52.506706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.388351, 54.613430, 52.689522>,  <50.466496, 54.812080, 52.799210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.388351, 54.613430, 52.689522>,  <50.258114, 54.282345, 52.506706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.388351, 54.613430, 52.689522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404973, -0.558875, 0.723640,
		0.854392, -0.050524, -0.517167,
		0.325593, 0.827711, 0.457038,
		50.486031, 54.861744, 52.826633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.988316, 54.374626, 52.427597>,  <50.258114, 54.282345, 52.506706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.988316, 54.374626, 52.427597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.850212, 54.548630, 52.760239>,  <50.767349, 54.653034, 52.959824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.850212, 54.548630, 52.760239>,  <50.988316, 54.374626, 52.427597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.850212, 54.548630, 52.760239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678941, -0.495987, 0.541328,
		0.647949, 0.751506, -0.124105,
		-0.345256, 0.435013, 0.831602,
		50.746635, 54.679134, 53.009720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.570229, 54.740341, 52.751369>,  <50.988316, 54.374626, 52.427597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.570229, 54.740341, 52.751369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.322063, 54.608109, 53.035851>,  <51.173164, 54.528767, 53.206539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.322063, 54.608109, 53.035851>,  <51.570229, 54.740341, 52.751369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.322063, 54.608109, 53.035851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782617, -0.201997, 0.588820,
		-0.050996, 0.921906, 0.384043,
		-0.620412, -0.330586, 0.711198,
		51.135941, 54.508934, 53.249210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.935776, 54.785099, 53.374424>,  <51.570229, 54.740341, 52.751369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.935776, 54.785099, 53.374424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.621193, 54.567207, 53.490875>,  <51.432442, 54.436474, 53.560745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.621193, 54.567207, 53.490875>,  <51.935776, 54.785099, 53.374424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.621193, 54.567207, 53.490875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565890, -0.446608, 0.693044,
		-0.247498, 0.709798, 0.659494,
		-0.786456, -0.544728, 0.291132,
		51.385258, 54.403790, 53.578217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.671219, 54.942665, 54.111877>,  <51.935776, 54.785099, 53.374424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.671219, 54.942665, 54.111877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.597466, 54.558361, 54.028984>,  <51.553211, 54.327778, 53.979248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.597466, 54.558361, 54.028984>,  <51.671219, 54.942665, 54.111877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.597466, 54.558361, 54.028984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586522, -0.276753, 0.761183,
		-0.788666, 0.018802, 0.614535,
		-0.184386, -0.960757, -0.207238,
		51.542149, 54.270134, 53.966812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.147099, 54.501022, 54.553413>,  <51.671219, 54.942665, 54.111877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.147099, 54.501022, 54.553413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.461227, 54.314384, 54.390656>,  <51.649704, 54.202400, 54.293003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.461227, 54.314384, 54.390656>,  <51.147099, 54.501022, 54.553413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.461227, 54.314384, 54.390656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441624, -0.038391, 0.896379,
		-0.433868, -0.883636, 0.175911,
		0.785319, -0.466597, -0.406891,
		51.696823, 54.174404, 54.268589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.447044, 53.996788, 55.185669>,  <51.147099, 54.501022, 54.553413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.447044, 53.996788, 55.185669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.751362, 54.068237, 54.936096>,  <51.933952, 54.111107, 54.786354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.751362, 54.068237, 54.936096>,  <51.447044, 53.996788, 55.185669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.751362, 54.068237, 54.936096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597842, 0.181218, 0.780861,
		0.252546, -0.967086, 0.031082,
		0.760793, 0.178621, -0.623931,
		51.979599, 54.121822, 54.748917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.973801, 53.540863, 55.296707>,  <51.447044, 53.996788, 55.185669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.973801, 53.540863, 55.296707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.159973, 53.848686, 55.121819>,  <52.271675, 54.033379, 55.016888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.159973, 53.848686, 55.121819>,  <51.973801, 53.540863, 55.296707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.159973, 53.848686, 55.121819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679426, 0.005937, 0.733720,
		0.567232, -0.638555, -0.520091,
		0.465432, 0.769553, -0.437219,
		52.299603, 54.079552, 54.990654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.671204, 53.366535, 55.303398>,  <51.973801, 53.540863, 55.296707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.671204, 53.366535, 55.303398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.649563, 53.764904, 55.274521>,  <52.636578, 54.003925, 55.257195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.649563, 53.764904, 55.274521>,  <52.671204, 53.366535, 55.303398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.649563, 53.764904, 55.274521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551605, 0.090070, 0.829228,
		0.832349, 0.005039, -0.554229,
		-0.054098, 0.995923, -0.072190,
		52.633335, 54.063683, 55.252865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.285130, 53.591599, 55.600529>,  <52.671204, 53.366535, 55.303398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.285130, 53.591599, 55.600529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.065762, 53.925430, 55.579674>,  <52.934139, 54.125729, 55.567162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.065762, 53.925430, 55.579674>,  <53.285130, 53.591599, 55.600529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.065762, 53.925430, 55.579674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507066, 0.381492, 0.772883,
		0.664920, 0.397427, -0.632403,
		-0.548421, 0.834575, -0.052140,
		52.901234, 54.175804, 55.564034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.742752, 54.147247, 55.362667>,  <53.285130, 53.591599, 55.600529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.742752, 54.147247, 55.362667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.423431, 54.310379, 55.539932>,  <53.231838, 54.408257, 55.646290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.423431, 54.310379, 55.539932>,  <53.742752, 54.147247, 55.362667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.423431, 54.310379, 55.539932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600819, 0.590095, 0.539262,
		-0.041582, 0.696754, -0.716104,
		-0.798303, 0.407825, 0.443161,
		53.183941, 54.432728, 55.672882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.045681, 54.815994, 55.706341>,  <53.742752, 54.147247, 55.362667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.045681, 54.815994, 55.706341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.743881, 54.698364, 55.941032>,  <53.562801, 54.627785, 56.081848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.743881, 54.698364, 55.941032>,  <54.045681, 54.815994, 55.706341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.743881, 54.698364, 55.941032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434040, 0.446988, 0.782183,
		-0.492282, 0.844820, -0.209612,
		-0.754498, -0.294074, 0.586730,
		53.517532, 54.610142, 56.117050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.720947, 55.428379, 56.098354>,  <54.045681, 54.815994, 55.706341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.720947, 55.428379, 56.098354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.665638, 55.080341, 56.287590>,  <53.632454, 54.871517, 56.401131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.665638, 55.080341, 56.287590>,  <53.720947, 55.428379, 56.098354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.665638, 55.080341, 56.287590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365683, 0.399072, 0.840843,
		-0.920412, 0.289263, 0.263001,
		-0.138269, -0.870097, 0.473089,
		53.624157, 54.819313, 56.429516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.122875, 55.427269, 56.581215>,  <53.720947, 55.428379, 56.098354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.122875, 55.427269, 56.581215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.414368, 55.178474, 56.695816>,  <53.589264, 55.029198, 56.764576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.414368, 55.178474, 56.695816>,  <53.122875, 55.427269, 56.581215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.414368, 55.178474, 56.695816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016224, 0.433936, 0.900798,
		-0.684612, -0.651787, 0.326312,
		0.728727, -0.621991, 0.286503,
		53.632984, 54.991879, 56.781769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.974422, 55.095039, 57.243534>,  <53.122875, 55.427269, 56.581215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.974422, 55.095039, 57.243534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.366367, 55.106667, 57.164520>,  <53.601536, 55.113644, 57.117111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.366367, 55.106667, 57.164520>,  <52.974422, 55.095039, 57.243534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.366367, 55.106667, 57.164520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167625, 0.417689, 0.892994,
		0.108467, -0.908125, 0.404406,
		0.979866, 0.029072, -0.197530,
		53.660328, 55.115387, 57.105263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.440094, 54.795826, 57.758877>,  <52.974422, 55.095039, 57.243534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.440094, 54.795826, 57.758877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.646961, 55.076599, 57.562988>,  <53.771080, 55.245064, 57.445454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.646961, 55.076599, 57.562988>,  <53.440094, 54.795826, 57.758877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.646961, 55.076599, 57.562988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152609, 0.487387, 0.859747,
		0.842169, -0.519369, 0.144939,
		0.517167, 0.701933, -0.489723,
		53.802113, 55.287178, 57.416073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.075085, 55.074127, 57.856094>,  <53.440094, 54.795826, 57.758877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.075085, 55.074127, 57.856094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.444847, 54.979111, 57.736732>,  <54.666706, 54.922100, 57.665115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.444847, 54.979111, 57.736732>,  <54.075085, 55.074127, 57.856094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.444847, 54.979111, 57.736732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378510, 0.475037, 0.794399,
		-0.046952, -0.847297, 0.529040,
		0.924405, -0.237546, -0.298407,
		54.722168, 54.907848, 57.647209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.182030, 55.447132, 58.346390>,  <54.075085, 55.074127, 57.856094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.182030, 55.447132, 58.346390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.530762, 55.283600, 58.238487>,  <54.740002, 55.185482, 58.173748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.530762, 55.283600, 58.238487>,  <54.182030, 55.447132, 58.346390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.530762, 55.283600, 58.238487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444616, 0.429521, 0.786021,
		-0.205482, -0.805216, 0.556242,
		0.871834, -0.408827, -0.269753,
		54.792313, 55.160954, 58.157562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.425266, 55.168854, 58.987335>,  <54.182030, 55.447132, 58.346390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.425266, 55.168854, 58.987335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.708275, 55.253838, 58.717735>,  <54.878078, 55.304829, 58.555977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.708275, 55.253838, 58.717735>,  <54.425266, 55.168854, 58.987335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.708275, 55.253838, 58.717735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591156, 0.344668, 0.729205,
		0.387233, -0.914366, 0.118262,
		0.707521, 0.212461, -0.673999,
		54.920532, 55.317577, 58.515537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.066895, 54.850853, 59.321301>,  <54.425266, 55.168854, 58.987335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.066895, 54.850853, 59.321301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.153893, 55.106579, 59.026283>,  <55.206093, 55.260014, 58.849274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.153893, 55.106579, 59.026283>,  <55.066895, 54.850853, 59.321301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.153893, 55.106579, 59.026283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572129, 0.528709, 0.627005,
		0.790800, -0.558341, -0.250779,
		0.217494, 0.639314, -0.737546,
		55.219139, 55.298374, 58.805019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.849331, 54.931805, 59.216255>,  <55.066895, 54.850853, 59.321301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.849331, 54.931805, 59.216255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.627754, 55.251286, 59.122261>,  <55.494808, 55.442974, 59.065865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.627754, 55.251286, 59.122261>,  <55.849331, 54.931805, 59.216255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.627754, 55.251286, 59.122261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532380, 0.556816, 0.637595,
		0.640096, 0.228086, -0.733657,
		-0.553939, 0.798707, -0.234988,
		55.461571, 55.490898, 59.051765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.371639, 55.402203, 59.089409>,  <55.849331, 54.931805, 59.216255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.371639, 55.402203, 59.089409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.014931, 55.560925, 59.176399>,  <55.800907, 55.656158, 59.228592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.014931, 55.560925, 59.176399>,  <56.371639, 55.402203, 59.089409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.014931, 55.560925, 59.176399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434606, 0.617326, 0.655764,
		0.125953, 0.679308, -0.722964,
		-0.891770, 0.396800, 0.217477,
		55.747398, 55.679966, 59.241642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.349968, 56.167919, 59.061913>,  <56.371639, 55.402203, 59.089409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.349968, 56.167919, 59.061913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.103172, 55.987976, 59.320198>,  <55.955093, 55.880013, 59.475170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.103172, 55.987976, 59.320198>,  <56.349968, 56.167919, 59.061913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.103172, 55.987976, 59.320198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527612, 0.372338, 0.763538,
		-0.583907, 0.811785, 0.007620,
		-0.616991, -0.449856, 0.645718,
		55.918076, 55.853020, 59.513912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.405994, 56.425224, 59.763901>,  <56.349968, 56.167919, 59.061913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.405994, 56.425224, 59.763901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.571396, 56.645439, 60.053986>,  <56.670635, 56.777569, 60.228035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.571396, 56.645439, 60.053986>,  <56.405994, 56.425224, 59.763901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.571396, 56.645439, 60.053986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819718, -0.571798, -0.033317,
		0.396331, 0.608244, -0.687722,
		0.413503, 0.550533, 0.725210,
		56.695446, 56.810600, 60.271549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.039516, 56.559074, 59.560501>,  <56.405994, 56.425224, 59.763901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.039516, 56.559074, 59.560501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.023689, 56.552143, 59.960129>,  <57.014194, 56.547985, 60.199905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.023689, 56.552143, 59.960129>,  <57.039516, 56.559074, 59.560501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.023689, 56.552143, 59.960129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728032, -0.685334, 0.016946,
		0.684401, 0.728023, 0.039727,
		-0.039563, -0.017324, 0.999067,
		57.011822, 56.546947, 60.259850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.633213, 56.583481, 59.683117>,  <57.039516, 56.559074, 59.560501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.633213, 56.583481, 59.683117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.430382, 56.402660, 59.976654>,  <57.308685, 56.294167, 60.152775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.430382, 56.402660, 59.976654>,  <57.633213, 56.583481, 59.683117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.430382, 56.402660, 59.976654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683191, -0.729895, 0.022454,
		0.525477, 0.512740, 0.678949,
		-0.507074, -0.452052, 0.733842,
		57.278259, 56.267044, 60.196808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.135929, 56.161392, 59.866642>,  <57.633213, 56.583481, 59.683117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.135929, 56.161392, 59.866642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.811249, 55.986763, 60.021843>,  <57.616440, 55.881985, 60.114964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.811249, 55.986763, 60.021843>,  <58.135929, 56.161392, 59.866642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.811249, 55.986763, 60.021843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422658, -0.897531, -0.125690,
		0.403118, 0.061970, 0.913047,
		-0.811700, -0.436574, 0.388003,
		57.567738, 55.855789, 60.138245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.861355, 56.073711, 59.929771>,  <58.135929, 56.161392, 59.866642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.861355, 56.073711, 59.929771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.724983, 55.836308, 60.221390>,  <58.643158, 55.693867, 60.396362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.724983, 55.836308, 60.221390>,  <58.861355, 56.073711, 59.929771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.724983, 55.836308, 60.221390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065950, 0.758499, 0.648328,
		-0.937771, 0.269118, -0.219456,
		-0.340934, -0.593511, 0.729047,
		58.622704, 55.658253, 60.440105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.377522, 56.010208, 59.492073>,  <58.861355, 56.073711, 59.929771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.377522, 56.010208, 59.492073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.268684, 55.727280, 59.231102>,  <59.203381, 55.557522, 59.074520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.268684, 55.727280, 59.231102>,  <59.377522, 56.010208, 59.492073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.268684, 55.727280, 59.231102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819920, 0.184469, -0.541942,
		0.503681, -0.682397, 0.529755,
		-0.272096, -0.707323, -0.652425,
		59.187054, 55.515083, 59.035374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.001480, 55.921021, 59.217945>,  <59.377522, 56.010208, 59.492073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.001480, 55.921021, 59.217945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.665878, 55.897049, 59.001617>,  <59.464520, 55.882664, 58.871822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.665878, 55.897049, 59.001617>,  <60.001480, 55.921021, 59.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.665878, 55.897049, 59.001617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444135, 0.498788, -0.744282,
		0.314360, -0.864650, -0.391866,
		-0.839001, -0.059931, -0.540820,
		59.414177, 55.879070, 58.839371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.791012, 56.465145, 58.714218>,  <60.001480, 55.921021, 59.217945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.791012, 56.465145, 58.714218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.969818, 56.820492, 58.672302>,  <60.077103, 57.033699, 58.647152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.969818, 56.820492, 58.672302>,  <59.791012, 56.465145, 58.714218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.969818, 56.820492, 58.672302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430361, 0.110878, -0.895821,
		-0.784200, 0.445541, 0.431883,
		0.447012, 0.888369, -0.104793,
		60.103920, 57.087002, 58.640865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.113689, 56.352474, 58.704254>,  <59.791012, 56.465145, 58.714218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.113689, 56.352474, 58.704254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.744301, 56.374039, 58.552307>,  <58.522667, 56.386978, 58.461140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.744301, 56.374039, 58.552307>,  <59.113689, 56.352474, 58.704254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.744301, 56.374039, 58.552307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092471, 0.929620, 0.356729,
		0.372368, 0.364554, -0.853488,
		-0.923467, 0.053912, -0.379871,
		58.467262, 56.390213, 58.438347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.068573, 57.086563, 58.512764>,  <59.113689, 56.352474, 58.704254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.068573, 57.086563, 58.512764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.707153, 56.916565, 58.534561>,  <58.490299, 56.814564, 58.547642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.707153, 56.916565, 58.534561>,  <59.068573, 57.086563, 58.512764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.707153, 56.916565, 58.534561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382970, 0.858071, 0.342123,
		-0.192163, 0.288256, -0.938073,
		-0.903553, -0.424998, 0.054496,
		58.436089, 56.789066, 58.550911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.561337, 57.513897, 58.162945>,  <59.068573, 57.086563, 58.512764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.561337, 57.513897, 58.162945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.387093, 57.282295, 58.438622>,  <58.282547, 57.143333, 58.604027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.387093, 57.282295, 58.438622>,  <58.561337, 57.513897, 58.162945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.387093, 57.282295, 58.438622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331388, 0.815042, 0.475277,
		-0.836913, -0.021355, -0.546919,
		-0.435612, -0.579008, 0.689196,
		58.256409, 57.108593, 58.645382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.176537, 57.737854, 57.738468>,  <58.561337, 57.513897, 58.162945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.176537, 57.737854, 57.738468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.409714, 57.414131, 57.709656>,  <59.549622, 57.219898, 57.692368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.409714, 57.414131, 57.709656>,  <59.176537, 57.737854, 57.738468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.409714, 57.414131, 57.709656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508222, 0.432362, -0.744831,
		0.633942, 0.397591, 0.663354,
		0.582947, -0.809311, -0.072027,
		59.584599, 57.171337, 57.688049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.861965, 57.992989, 57.548752>,  <59.176537, 57.737854, 57.738468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.861965, 57.992989, 57.548752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.828888, 57.613865, 57.425575>,  <59.809040, 57.386391, 57.351669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.828888, 57.613865, 57.425575>,  <59.861965, 57.992989, 57.548752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.828888, 57.613865, 57.425575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654583, 0.181337, -0.733920,
		0.751454, -0.262259, 0.605422,
		-0.082692, -0.947806, -0.307937,
		59.804081, 57.329521, 57.333195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.493298, 57.529076, 57.427071>,  <59.861965, 57.992989, 57.548752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.493298, 57.529076, 57.427071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.217575, 57.384079, 57.176163>,  <60.052143, 57.297081, 57.025620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.217575, 57.384079, 57.176163>,  <60.493298, 57.529076, 57.427071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.217575, 57.384079, 57.176163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522929, 0.350287, -0.777074,
		0.501407, -0.863653, -0.051896,
		-0.689301, -0.362492, -0.627267,
		60.010784, 57.275333, 56.987984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.011578, 58.204227, 57.428593>,  <60.493298, 57.529076, 57.427071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.011578, 58.204227, 57.428593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.695236, 58.393227, 57.273003>,  <60.505432, 58.506626, 57.179649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.695236, 58.393227, 57.273003>,  <61.011578, 58.204227, 57.428593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.695236, 58.393227, 57.273003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133946, -0.753791, -0.643318,
		-0.597169, -0.456668, 0.659427,
		-0.790853, 0.472496, -0.388972,
		60.457981, 58.534977, 57.156311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.633636, 58.507229, 57.264427>,  <61.011578, 58.204227, 57.428593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.633636, 58.507229, 57.264427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.711555, 58.671097, 56.907951>,  <61.758308, 58.769417, 56.694065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.711555, 58.671097, 56.907951>,  <61.633636, 58.507229, 57.264427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.711555, 58.671097, 56.907951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426242, -0.853676, -0.299258,
		-0.883386, -0.321568, -0.340914,
		0.194799, 0.409673, -0.891191,
		61.769997, 58.793999, 56.640594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.180305, 58.303341, 57.730606>,  <61.633636, 58.507229, 57.264427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.180305, 58.303341, 57.730606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.088425, 58.090111, 57.404892>,  <62.033298, 57.962173, 57.209461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.088425, 58.090111, 57.404892>,  <62.180305, 58.303341, 57.730606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.088425, 58.090111, 57.404892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851819, -0.514824, 0.096746,
		-0.470788, -0.671403, 0.572343,
		-0.229700, -0.533080, -0.814287,
		62.019516, 57.930187, 57.160606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.169865, 57.567101, 57.822945>,  <62.180305, 58.303341, 57.730606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.169865, 57.567101, 57.822945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.289894, 57.659229, 57.452667>,  <62.361912, 57.714504, 57.230499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.289894, 57.659229, 57.452667>,  <62.169865, 57.567101, 57.822945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.289894, 57.659229, 57.452667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844439, -0.515520, 0.145471,
		-0.443709, -0.825344, -0.349185,
		0.300076, 0.230318, -0.925693,
		62.379917, 57.728325, 57.174961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.400528, 56.976826, 57.915733>,  <62.169865, 57.567101, 57.822945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.400528, 56.976826, 57.915733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.638184, 57.294205, 57.862915>,  <62.780777, 57.484631, 57.831223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.638184, 57.294205, 57.862915>,  <62.400528, 56.976826, 57.915733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.638184, 57.294205, 57.862915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801159, -0.569117, 0.185069,
		0.071691, -0.215749, -0.973813,
		0.594142, 0.793447, -0.132049,
		62.816425, 57.532238, 57.823299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.968697, 56.789356, 57.428528>,  <62.400528, 56.976826, 57.915733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.968697, 56.789356, 57.428528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.106621, 57.090698, 57.652512>,  <63.189377, 57.271503, 57.786903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.106621, 57.090698, 57.652512>,  <62.968697, 56.789356, 57.428528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.106621, 57.090698, 57.652512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818710, -0.533170, 0.213173,
		0.459150, 0.384942, -0.800625,
		0.344811, 0.753359, 0.559961,
		63.210064, 57.316708, 57.820499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.616669, 56.853096, 57.373032>,  <62.968697, 56.789356, 57.428528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.616669, 56.853096, 57.373032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.544212, 56.986107, 57.743248>,  <63.500740, 57.065914, 57.965378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.544212, 56.986107, 57.743248>,  <63.616669, 56.853096, 57.373032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.544212, 56.986107, 57.743248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804132, -0.491720, 0.334039,
		0.566181, 0.804761, -0.178324,
		-0.181136, 0.332523, 0.925537,
		63.489872, 57.085865, 58.020908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.176094, 57.300098, 57.635315>,  <63.616669, 56.853096, 57.373032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.176094, 57.300098, 57.635315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.974403, 57.138729, 57.940735>,  <63.853390, 57.041908, 58.123985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.974403, 57.138729, 57.940735>,  <64.176094, 57.300098, 57.635315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.974403, 57.138729, 57.940735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846851, -0.404144, 0.345704,
		0.169120, 0.820926, 0.545417,
		-0.504224, -0.403421, 0.763551,
		63.823135, 57.017704, 58.169800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.443573, 57.980698, 57.495979>,  <64.176094, 57.300098, 57.635315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.443573, 57.980698, 57.495979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.475594, 58.204479, 57.165985>,  <64.494804, 58.338749, 56.967987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.475594, 58.204479, 57.165985>,  <64.443573, 57.980698, 57.495979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.475594, 58.204479, 57.165985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760925, 0.500319, 0.413126,
		0.643881, -0.660828, -0.385646,
		0.080059, 0.559452, -0.824987,
		64.499611, 58.372314, 56.918488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.179657, 57.901237, 57.355015>,  <64.443573, 57.980698, 57.495979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.179657, 57.901237, 57.355015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.024872, 58.223480, 57.175568>,  <64.931999, 58.416824, 57.067898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.024872, 58.223480, 57.175568>,  <65.179657, 57.901237, 57.355015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.024872, 58.223480, 57.175568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772842, 0.548731, 0.318764,
		0.502969, -0.223361, -0.834945,
		-0.386961, 0.805608, -0.448617,
		64.908783, 58.465164, 57.040981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.135567, 57.870327, 58.066315>,  <65.179657, 57.901237, 57.355015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.135567, 57.870327, 58.066315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.161774, 57.684456, 58.419533>,  <65.177498, 57.572933, 58.631466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.161774, 57.684456, 58.419533>,  <65.135567, 57.870327, 58.066315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.161774, 57.684456, 58.419533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978093, -0.145323, -0.149047,
		0.197587, 0.873471, 0.444981,
		0.065522, -0.464682, 0.883050,
		65.181427, 57.545052, 58.684448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.666039, 58.177032, 58.567127>,  <65.135567, 57.870327, 58.066315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.666039, 58.177032, 58.567127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.577370, 57.787045, 58.573952>,  <65.524170, 57.553051, 58.578049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.577370, 57.787045, 58.573952>,  <65.666039, 58.177032, 58.567127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.577370, 57.787045, 58.573952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911285, -0.213358, -0.352190,
		0.347017, -0.062520, 0.935773,
		-0.221674, -0.974972, 0.017066,
		65.510864, 57.494553, 58.579071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.793175, 57.883503, 59.280018>,  <65.666039, 58.177032, 58.567127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.793175, 57.883503, 59.280018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.890289, 57.588017, 59.531525>,  <65.948563, 57.410725, 59.682426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.890289, 57.588017, 59.531525>,  <65.793175, 57.883503, 59.280018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.890289, 57.588017, 59.531525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520697, -0.447634, -0.726979,
		0.818490, 0.503902, 0.275966,
		0.242794, -0.738720, 0.628764,
		65.963127, 57.366402, 59.720154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.451874, 57.713833, 59.396843>,  <65.793175, 57.883503, 59.280018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.451874, 57.713833, 59.396843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.296265, 57.364269, 59.513420>,  <66.202896, 57.154530, 59.583366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.296265, 57.364269, 59.513420>,  <66.451874, 57.713833, 59.396843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.296265, 57.364269, 59.513420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646594, -0.484375, -0.589320,
		0.656179, -0.040818, 0.753500,
		-0.389031, -0.873908, 0.291444,
		66.179558, 57.102097, 59.600853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.993538, 57.197247, 59.448593>,  <66.451874, 57.713833, 59.396843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.993538, 57.197247, 59.448593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.649147, 57.003281, 59.387199>,  <66.442513, 56.886902, 59.350365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.649147, 57.003281, 59.387199>,  <66.993538, 57.197247, 59.448593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.649147, 57.003281, 59.387199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462374, -0.620471, -0.633424,
		0.211925, -0.616337, 0.758430,
		-0.860987, -0.484917, -0.153485,
		66.390854, 56.857807, 59.341152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.172760, 56.479824, 59.693409>,  <66.993538, 57.197247, 59.448593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.172760, 56.479824, 59.693409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.885254, 56.508942, 59.416840>,  <66.712746, 56.526413, 59.250896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.885254, 56.508942, 59.416840>,  <67.172760, 56.479824, 59.693409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.885254, 56.508942, 59.416840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426672, -0.739020, -0.521346,
		-0.548928, -0.669740, 0.500126,
		-0.718769, 0.072792, -0.691428,
		66.669624, 56.530781, 59.209412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.746086, 56.634083, 60.223438>,  <67.172760, 56.479824, 59.693409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.746086, 56.634083, 60.223438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.913818, 56.534355, 59.874268>,  <68.014458, 56.474518, 59.664764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.913818, 56.534355, 59.874268>,  <67.746086, 56.634083, 60.223438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.913818, 56.534355, 59.874268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889869, -0.077442, 0.449596,
		-0.179694, -0.965320, 0.189387,
		0.419337, -0.249319, -0.872924,
		68.039619, 56.459560, 59.612389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.038620, 55.959427, 60.291706>,  <67.746086, 56.634083, 60.223438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.038620, 55.959427, 60.291706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.232559, 56.183487, 60.023033>,  <68.348923, 56.317921, 59.861828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.232559, 56.183487, 60.023033>,  <68.038620, 55.959427, 60.291706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.232559, 56.183487, 60.023033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853203, -0.134092, 0.504048,
		0.192274, -0.817467, -0.542934,
		0.484846, 0.560148, -0.671683,
		68.378014, 56.351532, 59.821529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.526978, 55.553593, 59.986828>,  <68.038620, 55.959427, 60.291706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.526978, 55.553593, 59.986828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.631950, 55.939568, 59.985329>,  <68.694939, 56.171154, 59.984428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.631950, 55.939568, 59.985329>,  <68.526978, 55.553593, 59.986828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.631950, 55.939568, 59.985329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849269, -0.229134, 0.475648,
		0.458113, -0.128011, -0.879628,
		0.262440, 0.964941, -0.003746,
		68.710686, 56.229050, 59.984203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.167236, 55.654598, 59.578571>,  <68.526978, 55.553593, 59.986828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.167236, 55.654598, 59.578571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.161263, 55.932411, 59.866295>,  <69.157677, 56.099098, 60.038929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.161263, 55.932411, 59.866295>,  <69.167236, 55.654598, 59.578571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.161263, 55.932411, 59.866295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940724, -0.234029, 0.245495,
		0.338843, 0.680332, -0.649872,
		-0.014929, 0.694535, 0.719304,
		69.156784, 56.140770, 60.082085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.603783, 56.292179, 59.436581>,  <69.167236, 55.654598, 59.578571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.603783, 56.292179, 59.436581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.558174, 56.158634, 59.810860>,  <69.530807, 56.078506, 60.035427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.558174, 56.158634, 59.810860>,  <69.603783, 56.292179, 59.436581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.558174, 56.158634, 59.810860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992977, -0.068183, 0.096680,
		0.031522, 0.940154, 0.339289,
		-0.114028, -0.333859, 0.935701,
		69.523964, 56.058475, 60.091572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.896706, 56.852913, 59.858009>,  <69.603783, 56.292179, 59.436581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.896706, 56.852913, 59.858009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.932869, 56.468880, 59.963890>,  <69.954567, 56.238461, 60.027420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.932869, 56.468880, 59.963890>,  <69.896706, 56.852913, 59.858009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.932869, 56.468880, 59.963890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943288, -0.002696, -0.331965,
		0.319427, 0.279707, 0.905389,
		0.090412, -0.960082, 0.264705,
		69.959991, 56.180855, 60.043301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.145088, 56.933449, 60.546898>,  <69.896706, 56.852913, 59.858009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.145088, 56.933449, 60.546898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.379097, 56.629459, 60.433617>,  <70.519501, 56.447067, 60.365646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.379097, 56.629459, 60.433617>,  <70.145088, 56.933449, 60.546898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.379097, 56.629459, 60.433617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069960, 0.395178, -0.915937,
		0.808001, 0.516023, 0.284352,
		0.585014, -0.759971, -0.283203,
		70.554604, 56.401466, 60.348656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.848244, 57.103245, 60.424858>,  <70.145088, 56.933449, 60.546898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.848244, 57.103245, 60.424858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.784027, 56.775482, 60.204750>,  <70.745499, 56.578823, 60.072685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.784027, 56.775482, 60.204750>,  <70.848244, 57.103245, 60.424858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.784027, 56.775482, 60.204750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189868, 0.521454, -0.831887,
		0.968595, -0.238032, 0.071863,
		-0.160542, -0.819406, -0.550273,
		70.735863, 56.529659, 60.039669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.540787, 56.955029, 59.922012>,  <70.848244, 57.103245, 60.424858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.540787, 56.955029, 59.922012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.180138, 56.861881, 59.776222>,  <70.963745, 56.805992, 59.688747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.180138, 56.861881, 59.776222>,  <71.540787, 56.955029, 59.922012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.180138, 56.861881, 59.776222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317163, 0.216966, -0.923219,
		0.294067, -0.947997, -0.121765,
		-0.901628, -0.232869, -0.364472,
		70.909653, 56.792023, 59.666882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.353310, 56.788818, 60.108421>,  <71.540787, 56.955029, 59.922012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.353310, 56.788818, 60.108421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.659370, 57.046337, 60.105293>,  <72.843010, 57.200848, 60.103416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.659370, 57.046337, 60.105293>,  <72.353310, 56.788818, 60.108421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.659370, 57.046337, 60.105293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446656, 0.522026, -0.726627,
		-0.463719, 0.559476, 0.686987,
		0.765156, 0.643798, -0.007819,
		72.888916, 57.239475, 60.102947>
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
