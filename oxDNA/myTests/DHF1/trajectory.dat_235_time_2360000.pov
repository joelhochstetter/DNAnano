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
	<1.690652, 0.363488, 5.514145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.884468, 0.635612, 5.294182>,  <2.000757, 0.798887, 5.162204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.884468, 0.635612, 5.294182>,  <1.690652, 0.363488, 5.514145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.884468, 0.635612, 5.294182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017197, -0.635918, -0.771565,
		-0.874600, 0.364397, -0.319827,
		0.484540, 0.680311, -0.549908,
		2.029830, 0.839706, 5.129210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.344179, 0.717741, 4.945404>,  <1.690652, 0.363488, 5.514145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.344179, 0.717741, 4.945404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.733837, 0.683563, 4.861748>,  <1.967632, 0.663056, 4.811554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.733837, 0.683563, 4.861748>,  <1.344179, 0.717741, 4.945404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.733837, 0.683563, 4.861748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215663, -0.627493, -0.748160,
		-0.067308, 0.773920, -0.629696,
		0.974146, -0.085445, -0.209141,
		2.026081, 0.657930, 4.799006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.330463, 0.814714, 4.281919>,  <1.344179, 0.717741, 4.945404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.330463, 0.814714, 4.281919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.667290, 0.617470, 4.369339>,  <1.869386, 0.499123, 4.421791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.667290, 0.617470, 4.369339>,  <1.330463, 0.814714, 4.281919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.667290, 0.617470, 4.369339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009948, -0.419321, -0.907784,
		0.539280, 0.762241, -0.358002,
		0.842068, -0.493111, 0.218549,
		1.919910, 0.469537, 4.434904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.921238, 0.941296, 3.767852>,  <1.330463, 0.814714, 4.281919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.921238, 0.941296, 3.767852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.919689, 0.571030, 3.919182>,  <1.918760, 0.348870, 4.009980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.919689, 0.571030, 3.919182>,  <1.921238, 0.941296, 3.767852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.919689, 0.571030, 3.919182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013307, -0.378246, -0.925609,
		0.999904, -0.008618, -0.010853,
		-0.003871, -0.925665, 0.378324,
		1.918528, 0.293330, 4.032679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.398739, 0.487795, 3.419514>,  <1.921238, 0.941296, 3.767852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.398739, 0.487795, 3.419514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.092079, 0.278023, 3.567688>,  <1.908083, 0.152160, 3.656592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.092079, 0.278023, 3.567688>,  <2.398739, 0.487795, 3.419514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.092079, 0.278023, 3.567688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045563, -0.531052, -0.846114,
		0.640447, -0.665551, 0.383236,
		-0.766649, -0.524430, 0.370435,
		1.862084, 0.120694, 3.678818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.510278, -0.216900, 3.245805>,  <2.398739, 0.487795, 3.419514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.510278, -0.216900, 3.245805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.116753, -0.166420, 3.296692>,  <1.880637, -0.136132, 3.327224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.116753, -0.166420, 3.296692>,  <2.510278, -0.216900, 3.245805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.116753, -0.166420, 3.296692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179194, -0.696307, -0.695015,
		0.000871, -0.706562, 0.707651,
		-0.983813, 0.126201, 0.127218,
		1.821609, -0.128560, 3.334857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.288067, -0.951651, 3.204093>,  <2.510278, -0.216900, 3.245805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.288067, -0.951651, 3.204093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.953686, -0.735207, 3.167473>,  <1.753057, -0.605340, 3.145501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.953686, -0.735207, 3.167473>,  <2.288067, -0.951651, 3.204093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.953686, -0.735207, 3.167473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428352, -0.747621, -0.507521,
		-0.343070, -0.385048, 0.856762,
		-0.835953, 0.541111, -0.091551,
		1.702900, -0.572873, 3.140007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.736860, -1.390085, 3.424287>,  <2.288067, -0.951651, 3.204093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.736860, -1.390085, 3.424287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.627266, -1.122627, 3.147781>,  <1.561510, -0.962153, 2.981878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.627266, -1.122627, 3.147781>,  <1.736860, -1.390085, 3.424287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.627266, -1.122627, 3.147781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466031, -0.721049, -0.512741,
		-0.841277, 0.181668, 0.509166,
		-0.273985, 0.668644, -0.691265,
		1.545071, -0.922034, 2.940402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.044444, 3.651468, 2.454247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.256046, 3.563843, 2.126305>,  <2.383008, 3.511268, 1.929539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.256046, 3.563843, 2.126305>,  <2.044444, 3.651468, 2.454247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.256046, 3.563843, 2.126305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325157, -0.944699, 0.042614,
		-0.783853, 0.244039, -0.570982,
		0.529007, -0.219062, -0.819856,
		2.414748, 3.498124, 1.880348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.532458, 3.435762, 1.982614>,  <2.044444, 3.651468, 2.454247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.532458, 3.435762, 1.982614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.191429, 3.614449, 1.874123>,  <0.986812, 3.721661, 1.809028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.191429, 3.614449, 1.874123>,  <1.532458, 3.435762, 1.982614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.191429, 3.614449, 1.874123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064703, 0.605223, 0.793422,
		0.518589, 0.658900, -0.544900,
		-0.852572, 0.446717, -0.271229,
		0.935658, 3.748464, 1.792754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.722404, 4.149697, 1.822470>,  <1.532458, 3.435762, 1.982614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.722404, 4.149697, 1.822470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.352968, 4.083580, 1.960838>,  <1.131307, 4.043910, 2.043859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.352968, 4.083580, 1.960838>,  <1.722404, 4.149697, 1.822470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.352968, 4.083580, 1.960838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176311, 0.618086, 0.766084,
		-0.340436, 0.768536, -0.541715,
		-0.923590, -0.165292, 0.345920,
		1.075891, 4.033992, 2.064614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.432858, 4.780684, 1.913804>,  <1.722404, 4.149697, 1.822470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.432858, 4.780684, 1.913804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.269958, 4.536064, 2.185143>,  <1.172219, 4.389292, 2.347945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.269958, 4.536064, 2.185143>,  <1.432858, 4.780684, 1.913804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.269958, 4.536064, 2.185143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320228, 0.599966, 0.733140,
		-0.855337, 0.515797, -0.048500,
		-0.407250, -0.611551, 0.678346,
		1.147784, 4.352599, 2.388646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.056423, 5.137150, 2.356918>,  <1.432858, 4.780684, 1.913804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.056423, 5.137150, 2.356918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.127289, 4.803658, 2.566109>,  <1.169808, 4.603562, 2.691623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.127289, 4.803658, 2.566109>,  <1.056423, 5.137150, 2.356918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.127289, 4.803658, 2.566109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136903, 0.547093, 0.825801,
		-0.974613, -0.074705, 0.211066,
		0.177164, -0.833732, 0.522977,
		1.180438, 4.553538, 2.723002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.650011, 5.112432, 2.895457>,  <1.056423, 5.137150, 2.356918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.650011, 5.112432, 2.895457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.985674, 4.913239, 2.982933>,  <1.187072, 4.793722, 3.035419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.985674, 4.913239, 2.982933>,  <0.650011, 5.112432, 2.895457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.985674, 4.913239, 2.982933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047588, 0.467771, 0.882568,
		-0.541803, -0.730206, 0.416231,
		0.839157, -0.497985, 0.218691,
		1.237421, 4.763843, 3.048540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.616792, 4.822464, 3.620126>,  <0.650011, 5.112432, 2.895457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.616792, 4.822464, 3.620126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.011312, 4.820122, 3.554184>,  <1.248025, 4.818716, 3.514619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.011312, 4.820122, 3.554184>,  <0.616792, 4.822464, 3.620126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.011312, 4.820122, 3.554184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159494, 0.288966, 0.943960,
		0.042108, -0.957322, 0.285941,
		0.986301, -0.005858, -0.164855,
		1.307203, 4.818365, 3.504727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.828516, 4.524183, 4.214314>,  <0.616792, 4.822464, 3.620126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.828516, 4.524183, 4.214314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.130322, 4.721413, 4.041069>,  <1.311405, 4.839750, 3.937122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.130322, 4.721413, 4.041069>,  <0.828516, 4.524183, 4.214314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.130322, 4.721413, 4.041069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072460, 0.593324, 0.801696,
		0.652273, -0.636273, 0.411942,
		0.754513, 0.493076, -0.433114,
		1.356676, 4.869335, 3.911135>
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
