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
	<3.423669, 3.855368, 3.867131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.120483, 3.786369, 3.615501>,  <2.938572, 3.744970, 3.464523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.120483, 3.786369, 3.615501>,  <3.423669, 3.855368, 3.867131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.120483, 3.786369, 3.615501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651871, 0.165496, 0.740051,
		-0.023547, 0.971008, -0.237885,
		-0.757964, -0.172496, -0.629075,
		2.893094, 3.734621, 3.426779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.917167, 4.449585, 3.869034>,  <3.423669, 3.855368, 3.867131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.917167, 4.449585, 3.869034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.719528, 4.107796, 3.804855>,  <2.600945, 3.902722, 3.766348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.719528, 4.107796, 3.804855>,  <2.917167, 4.449585, 3.869034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.719528, 4.107796, 3.804855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685858, 0.269675, 0.675925,
		-0.534291, 0.444016, -0.719293,
		-0.494097, -0.854473, -0.160447,
		2.571299, 3.851454, 3.756721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.235289, 4.534333, 4.097000>,  <2.917167, 4.449585, 3.869034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.235289, 4.534333, 4.097000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.240570, 4.137825, 4.044525>,  <2.243739, 3.899920, 4.013040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.240570, 4.137825, 4.044525>,  <2.235289, 4.534333, 4.097000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.240570, 4.137825, 4.044525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742862, -0.097545, 0.662300,
		-0.669315, 0.088710, -0.737664,
		0.013203, -0.991270, -0.131188,
		2.244531, 3.840444, 4.005169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.621317, 4.331657, 3.827405>,  <2.235289, 4.534333, 4.097000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.621317, 4.331657, 3.827405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.790337, 4.040634, 4.043594>,  <1.891748, 3.866020, 4.173308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.790337, 4.040634, 4.043594>,  <1.621317, 4.331657, 3.827405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.790337, 4.040634, 4.043594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759210, 0.041568, 0.649517,
		-0.495027, -0.684786, -0.534805,
		0.422549, -0.727558, 0.540474,
		1.917101, 3.822367, 4.205737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.990155, 4.117054, 4.205863>,  <1.621317, 4.331657, 3.827405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.990155, 4.117054, 4.205863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.301102, 3.965363, 4.406616>,  <1.487670, 3.874348, 4.527068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.301102, 3.965363, 4.406616>,  <0.990155, 4.117054, 4.205863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.301102, 3.965363, 4.406616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541725, 0.001949, 0.840554,
		-0.319740, -0.925301, -0.203922,
		0.777367, -0.379229, 0.501882,
		1.534312, 3.851594, 4.557181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.620064, 3.682080, 4.731886>,  <0.990155, 4.117054, 4.205863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.620064, 3.682080, 4.731886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.991516, 3.759567, 4.858452>,  <1.214388, 3.806060, 4.934391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.991516, 3.759567, 4.858452>,  <0.620064, 3.682080, 4.731886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.991516, 3.759567, 4.858452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344296, 0.132253, 0.929499,
		0.138271, -0.972090, 0.189530,
		0.928623, 0.193777, 0.316400,
		1.270105, 3.817683, 4.953376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.690780, 3.249236, 5.332654>,  <0.620064, 3.682080, 4.731886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.690780, 3.249236, 5.332654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.946312, 3.556892, 5.339790>,  <1.099631, 3.741486, 5.344072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.946312, 3.556892, 5.339790>,  <0.690780, 3.249236, 5.332654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.946312, 3.556892, 5.339790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284225, 0.214395, 0.934479,
		0.714921, -0.602044, 0.355571,
		0.638831, 0.769141, 0.017840,
		1.137961, 3.787635, 5.345142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.253571, 3.123986, 5.851883>,  <0.690780, 3.249236, 5.332654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.253571, 3.123986, 5.851883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.187469, 3.510689, 5.773834>,  <1.147808, 3.742710, 5.727005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.187469, 3.510689, 5.773834>,  <1.253571, 3.123986, 5.851883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.187469, 3.510689, 5.773834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007647, 0.196580, 0.980458,
		0.986221, 0.163517, -0.025093,
		-0.165254, 0.966757, -0.195122,
		1.137893, 3.800716, 5.715298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.431769, 3.950190, 2.100122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.420509, 4.333565, 1.986557>,  <0.413754, 4.563590, 1.918418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.420509, 4.333565, 1.986557>,  <0.431769, 3.950190, 2.100122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.420509, 4.333565, 1.986557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502709, -0.231921, -0.832764,
		-0.863997, -0.166167, -0.475287,
		-0.028149, 0.958437, -0.283912,
		0.412065, 4.621096, 1.901383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.240565, 3.939925, 1.357377>,  <0.431769, 3.950190, 2.100122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.240565, 3.939925, 1.357377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.403736, 4.296844, 1.434731>,  <0.501639, 4.510996, 1.481143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.403736, 4.296844, 1.434731>,  <0.240565, 3.939925, 1.357377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.403736, 4.296844, 1.434731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635729, -0.125567, -0.761630,
		-0.655320, 0.433630, -0.618483,
		0.407927, 0.892299, 0.193384,
		0.526114, 4.564534, 1.492746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.304392, 4.300640, 0.727361>,  <0.240565, 3.939925, 1.357377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.304392, 4.300640, 0.727361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.581482, 4.424255, 0.988014>,  <0.747736, 4.498425, 1.144406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.581482, 4.424255, 0.988014>,  <0.304392, 4.300640, 0.727361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.581482, 4.424255, 0.988014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707522, -0.116066, -0.697095,
		-0.139797, 0.943941, -0.299053,
		0.692726, 0.309039, 0.651633,
		0.789300, 4.516967, 1.183504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.679469, 4.803092, 0.427639>,  <0.304392, 4.300640, 0.727361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.679469, 4.803092, 0.427639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.908089, 4.614975, 0.696609>,  <1.045261, 4.502105, 0.857992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.908089, 4.614975, 0.696609>,  <0.679469, 4.803092, 0.427639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.908089, 4.614975, 0.696609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659035, -0.225135, -0.717626,
		0.488880, 0.853311, 0.181263,
		0.571550, -0.470291, 0.672426,
		1.079554, 4.473887, 0.898337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.415567, 4.979632, 0.367359>,  <0.679469, 4.803092, 0.427639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.415567, 4.979632, 0.367359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.397068, 4.618950, 0.539307>,  <1.385968, 4.402541, 0.642475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.397068, 4.618950, 0.539307>,  <1.415567, 4.979632, 0.367359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.397068, 4.618950, 0.539307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527354, -0.387516, -0.756127,
		0.848386, 0.191724, 0.493440,
		-0.046248, -0.901706, 0.429870,
		1.383194, 4.348438, 0.668268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.029774, 4.736214, 0.328360>,  <1.415567, 4.979632, 0.367359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.029774, 4.736214, 0.328360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800392, 4.411514, 0.372566>,  <1.662763, 4.216694, 0.399090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800392, 4.411514, 0.372566>,  <2.029774, 4.736214, 0.328360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.800392, 4.411514, 0.372566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561874, -0.487881, -0.668034,
		0.596195, -0.320990, 0.735878,
		-0.573454, -0.811749, 0.110516,
		1.628356, 4.167989, 0.405721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.461392, 4.087137, 0.427809>,  <2.029774, 4.736214, 0.328360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.461392, 4.087137, 0.427809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.098248, 4.004593, 0.281822>,  <1.880361, 3.955066, 0.194230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.098248, 4.004593, 0.281822>,  <2.461392, 4.087137, 0.427809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.098248, 4.004593, 0.281822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408105, -0.634480, -0.656418,
		-0.096106, -0.744883, 0.660237,
		-0.907862, -0.206361, -0.364968,
		1.825889, 3.942685, 0.172332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.311836, 3.411257, 0.436642>,  <2.461392, 4.087137, 0.427809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.311836, 3.411257, 0.436642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115688, 3.588272, 0.136322>,  <1.998000, 3.694481, -0.043870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115688, 3.588272, 0.136322>,  <2.311836, 3.411257, 0.436642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.115688, 3.588272, 0.136322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433377, -0.623605, -0.650617,
		-0.756124, -0.644421, 0.114010,
		-0.490368, 0.442538, -0.750799,
		1.968578, 3.721033, -0.088918>
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
