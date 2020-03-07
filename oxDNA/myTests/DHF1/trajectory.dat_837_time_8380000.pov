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
	<1.821594, 5.481864, 0.600655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.672497, 5.355576, 0.949684>,  <1.583038, 5.279803, 1.159102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.672497, 5.355576, 0.949684>,  <1.821594, 5.481864, 0.600655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.672497, 5.355576, 0.949684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826936, -0.313606, -0.466720,
		0.420997, -0.895529, -0.144187,
		-0.372743, -0.315721, 0.872572,
		1.560674, 5.260859, 1.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.607714, 4.777259, 0.563420>,  <1.821594, 5.481864, 0.600655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.607714, 4.777259, 0.563420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.389164, 4.907501, 0.872084>,  <1.258034, 4.985646, 1.057282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.389164, 4.907501, 0.872084>,  <1.607714, 4.777259, 0.563420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.389164, 4.907501, 0.872084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828099, -0.347964, -0.439514,
		0.125402, -0.879149, 0.459751,
		-0.546375, 0.325604, 0.771658,
		1.225251, 5.005183, 1.103581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.969513, 4.429272, 0.423235>,  <1.607714, 4.777259, 0.563420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.969513, 4.429272, 0.423235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885021, 4.680473, 0.722834>,  <0.834326, 4.831194, 0.902593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885021, 4.680473, 0.722834>,  <0.969513, 4.429272, 0.423235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.885021, 4.680473, 0.722834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961245, 0.005432, -0.275641,
		-0.177172, -0.778192, 0.602518,
		-0.211228, 0.628004, 0.748996,
		0.821653, 4.868874, 0.947532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.386224, 4.085410, 0.664304>,  <0.969513, 4.429272, 0.423235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.386224, 4.085410, 0.664304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.405312, 4.478951, 0.733306>,  <0.416764, 4.715075, 0.774707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.405312, 4.478951, 0.733306>,  <0.386224, 4.085410, 0.664304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.405312, 4.478951, 0.733306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981043, 0.078638, -0.177115,
		-0.187821, -0.160783, 0.968954,
		0.047719, 0.983852, 0.172505,
		0.419627, 4.774106, 0.785057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.167412, 4.244326, 1.172399>,  <0.386224, 4.085410, 0.664304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.167412, 4.244326, 1.172399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.069950, 4.594177, 1.004754>,  <-0.011473, 4.804089, 0.904167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.069950, 4.594177, 1.004754>,  <-0.167412, 4.244326, 1.172399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.069950, 4.594177, 1.004754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950719, 0.129960, -0.281503,
		-0.191743, 0.467048, 0.863192,
		0.243656, 0.874630, -0.419112,
		0.003147, 4.856566, 0.879020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.714533, 4.791385, 1.449628>,  <-0.167412, 4.244326, 1.172399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.714533, 4.791385, 1.449628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.558304, 4.935654, 1.110837>,  <-0.464567, 5.022215, 0.907562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.558304, 4.935654, 1.110837>,  <-0.714533, 4.791385, 1.449628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.558304, 4.935654, 1.110837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906670, 0.310003, -0.286089,
		0.159381, 0.879667, 0.448088,
		0.390572, 0.360671, -0.846977,
		-0.441132, 5.043855, 0.856744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.952253, 5.431941, 1.366820>,  <-0.714533, 4.791385, 1.449628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.952253, 5.431941, 1.366820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.842709, 5.340164, 0.993220>,  <-0.776982, 5.285098, 0.769060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.842709, 5.340164, 0.993220>,  <-0.952253, 5.431941, 1.366820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.842709, 5.340164, 0.993220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947560, 0.101948, -0.302882,
		0.164713, 0.967969, -0.189490,
		0.273862, -0.229441, -0.934000,
		-0.760550, 5.271332, 0.713020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.417947, 5.761866, 0.929306>,  <-0.952253, 5.431941, 1.366820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.417947, 5.761866, 0.929306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.291519, 5.505569, 0.649434>,  <-1.215662, 5.351792, 0.481511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.291519, 5.505569, 0.649434>,  <-1.417947, 5.761866, 0.929306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.291519, 5.505569, 0.649434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915241, -0.011696, -0.402737,
		0.249867, 0.767668, -0.590129,
		0.316071, -0.640740, -0.699679,
		-1.196698, 5.313347, 0.439530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.387523, 4.193896, 0.471537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.326744, 4.030983, 0.111307>,  <2.290277, 3.933235, -0.104831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.326744, 4.030983, 0.111307>,  <2.387523, 4.193896, 0.471537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.326744, 4.030983, 0.111307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504478, 0.815490, -0.283687,
		0.849949, 0.411215, -0.329376,
		-0.151947, -0.407283, -0.900574,
		2.281160, 3.908798, -0.158865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.145546, 4.411640, 0.555401>,  <2.387523, 4.193896, 0.471537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.145546, 4.411640, 0.555401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.127296, 4.611626, 0.209464>,  <3.116347, 4.731617, 0.001902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.127296, 4.611626, 0.209464>,  <3.145546, 4.411640, 0.555401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.127296, 4.611626, 0.209464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953546, 0.279861, 0.111484,
		0.297774, -0.819580, -0.489508,
		-0.045625, 0.499966, -0.864843,
		3.113609, 4.761615, -0.049989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.775318, 4.188569, 0.188380>,  <3.145546, 4.411640, 0.555401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.775318, 4.188569, 0.188380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.662735, 4.559677, 0.090383>,  <3.595185, 4.782342, 0.031585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.662735, 4.559677, 0.090383>,  <3.775318, 4.188569, 0.188380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.662735, 4.559677, 0.090383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948644, 0.307455, 0.074471,
		0.144416, -0.211450, -0.966661,
		-0.281457, 0.927772, -0.244992,
		3.578298, 4.838009, 0.016886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.246504, 4.444237, -0.414342>,  <3.775318, 4.188569, 0.188380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.246504, 4.444237, -0.414342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.112305, 4.724976, -0.162993>,  <4.031785, 4.893419, -0.012184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.112305, 4.724976, -0.162993>,  <4.246504, 4.444237, -0.414342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.112305, 4.724976, -0.162993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929832, 0.353755, 0.101336,
		-0.151168, 0.618279, -0.771284,
		-0.335499, 0.701846, 0.628373,
		4.011655, 4.935529, 0.025519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.700649, 4.969056, -0.470906>,  <4.246504, 4.444237, -0.414342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.700649, 4.969056, -0.470906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.552727, 5.083847, -0.117435>,  <4.463974, 5.152722, 0.094648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.552727, 5.083847, -0.117435>,  <4.700649, 4.969056, -0.470906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.552727, 5.083847, -0.117435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921475, -0.008394, 0.388348,
		0.118865, 0.957900, -0.261339,
		-0.369805, 0.286978, 0.883679,
		4.441785, 5.169940, 0.147669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.067471, 5.515166, -0.249461>,  <4.700649, 4.969056, -0.470906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.067471, 5.515166, -0.249461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.917183, 5.372223, 0.092564>,  <4.827010, 5.286457, 0.297778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.917183, 5.372223, 0.092564>,  <5.067471, 5.515166, -0.249461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.917183, 5.372223, 0.092564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862570, 0.202494, 0.463648,
		-0.338833, 0.911752, 0.232164,
		-0.375721, -0.357357, 0.855061,
		4.804467, 5.265016, 0.349082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.340158, 5.950167, 0.344729>,  <5.067471, 5.515166, -0.249461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.340158, 5.950167, 0.344729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.227180, 5.595459, 0.491080>,  <5.159394, 5.382635, 0.578891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.227180, 5.595459, 0.491080>,  <5.340158, 5.950167, 0.344729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.227180, 5.595459, 0.491080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870887, -0.077113, 0.485396,
		-0.402220, 0.455735, 0.794056,
		-0.282444, -0.886769, 0.365878,
		5.142447, 5.329428, 0.600843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.678641, 6.077991, 0.910063>,  <5.340158, 5.950167, 0.344729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.678641, 6.077991, 0.910063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.590981, 5.689781, 0.869956>,  <5.538384, 5.456855, 0.845892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.590981, 5.689781, 0.869956>,  <5.678641, 6.077991, 0.910063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.590981, 5.689781, 0.869956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884894, -0.240995, 0.398602,
		-0.411017, -0.001373, 0.911626,
		-0.219150, -0.970525, -0.100268,
		5.525235, 5.398623, 0.839876>
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
