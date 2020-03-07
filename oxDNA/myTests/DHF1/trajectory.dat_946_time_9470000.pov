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
	<1.215201, -0.863031, 2.942979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.543167, -0.666426, 2.825571>,  <1.739947, -0.548462, 2.755126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.543167, -0.666426, 2.825571>,  <1.215201, -0.863031, 2.942979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.543167, -0.666426, 2.825571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096100, 0.623604, 0.775811,
		0.564360, -0.607893, 0.558538,
		0.819916, 0.491512, -0.293519,
		1.789142, -0.518972, 2.737515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.780931, -0.822185, 3.431144>,  <1.215201, -0.863031, 2.942979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.780931, -0.822185, 3.431144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.807961, -0.489161, 3.211226>,  <1.824178, -0.289346, 3.079275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.807961, -0.489161, 3.211226>,  <1.780931, -0.822185, 3.431144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.807961, -0.489161, 3.211226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028116, 0.549247, 0.835187,
		0.997318, -0.071894, 0.013706,
		0.067573, 0.832561, -0.549795,
		1.828232, -0.239392, 3.046287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.306416, -0.425712, 3.775208>,  <1.780931, -0.822185, 3.431144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.306416, -0.425712, 3.775208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.016190, -0.197672, 3.621044>,  <1.842054, -0.060848, 3.528546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.016190, -0.197672, 3.621044>,  <2.306416, -0.425712, 3.775208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.016190, -0.197672, 3.621044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061318, 0.611396, 0.788945,
		0.685415, 0.548800, -0.478566,
		-0.725566, 0.570100, -0.385409,
		1.798520, -0.026642, 3.505421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.540713, 0.254696, 3.837212>,  <2.306416, -0.425712, 3.775208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.540713, 0.254696, 3.837212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.143890, 0.212151, 3.810345>,  <1.905797, 0.186623, 3.794224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.143890, 0.212151, 3.810345>,  <2.540713, 0.254696, 3.837212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.143890, 0.212151, 3.810345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111489, 0.496087, 0.861085,
		-0.058266, 0.861734, -0.504004,
		-0.992056, -0.106363, -0.067169,
		1.846274, 0.180242, 3.790194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.152860, 0.910035, 3.794776>,  <2.540713, 0.254696, 3.837212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.152860, 0.910035, 3.794776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.930908, 0.625526, 3.967381>,  <1.797737, 0.454821, 4.070943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.930908, 0.625526, 3.967381>,  <2.152860, 0.910035, 3.794776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.930908, 0.625526, 3.967381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033453, 0.499191, 0.865846,
		-0.831258, 0.494875, -0.253196,
		-0.554879, -0.711271, 0.431512,
		1.764444, 0.412145, 4.096834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.525792, 1.242693, 4.047325>,  <2.152860, 0.910035, 3.794776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.525792, 1.242693, 4.047325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.609467, 0.917814, 4.265160>,  <1.659671, 0.722887, 4.395861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.609467, 0.917814, 4.265160>,  <1.525792, 1.242693, 4.047325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.609467, 0.917814, 4.265160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223224, 0.502543, 0.835237,
		-0.952057, -0.296285, -0.076177,
		0.209186, -0.812198, 0.544588,
		1.672222, 0.674155, 4.428536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.891509, 0.927937, 4.466012>,  <1.525792, 1.242693, 4.047325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.891509, 0.927937, 4.466012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.272400, 0.915228, 4.587505>,  <1.500934, 0.907602, 4.660401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.272400, 0.915228, 4.587505>,  <0.891509, 0.927937, 4.466012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.272400, 0.915228, 4.587505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205948, 0.667573, 0.715494,
		-0.225498, -0.743866, 0.629138,
		0.952227, -0.031773, 0.303734,
		1.558068, 0.905696, 4.678626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.854711, 0.906390, 5.180259>,  <0.891509, 0.927937, 4.466012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.854711, 0.906390, 5.180259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.195656, 1.089657, 5.079412>,  <1.400222, 1.199617, 5.018904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.195656, 1.089657, 5.079412>,  <0.854711, 0.906390, 5.180259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.195656, 1.089657, 5.079412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056885, 0.560473, 0.826217,
		0.519848, -0.689895, 0.503789,
		0.852363, 0.458165, -0.252116,
		1.451364, 1.227107, 5.003777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.216338, 0.927648, 1.744834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.572517, 0.754662, 1.688160>,  <1.786225, 0.650870, 1.654156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.572517, 0.754662, 1.688160>,  <1.216338, 0.927648, 1.744834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.572517, 0.754662, 1.688160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172748, -0.033177, -0.984407,
		0.421022, 0.901039, -0.104250,
		0.890448, -0.432466, -0.141685,
		1.839652, 0.624922, 1.645655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.544277, 1.204453, 1.036464>,  <1.216338, 0.927648, 1.744834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.544277, 1.204453, 1.036464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.739044, 0.863235, 1.111542>,  <1.855904, 0.658505, 1.156588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.739044, 0.863235, 1.111542>,  <1.544277, 1.204453, 1.036464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.739044, 0.863235, 1.111542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061917, -0.248058, -0.966765,
		0.871251, 0.459113, -0.173602,
		0.486918, -0.853043, 0.187694,
		1.885119, 0.607323, 1.167850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.091462, 1.087579, 0.615949>,  <1.544277, 1.204453, 1.036464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.091462, 1.087579, 0.615949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.932022, 0.733185, 0.710732>,  <1.836358, 0.520548, 0.767601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.932022, 0.733185, 0.710732>,  <2.091462, 1.087579, 0.615949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.932022, 0.733185, 0.710732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119024, -0.206209, -0.971242,
		0.909369, -0.415339, -0.023259,
		-0.398599, -0.885986, 0.236955,
		1.812442, 0.467389, 0.781818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.504401, 0.603670, 0.122409>,  <2.091462, 1.087579, 0.615949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.504401, 0.603670, 0.122409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.145058, 0.500443, 0.264593>,  <1.929452, 0.438506, 0.349904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.145058, 0.500443, 0.264593>,  <2.504401, 0.603670, 0.122409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.145058, 0.500443, 0.264593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301956, -0.224895, -0.926415,
		0.319020, -0.939587, 0.124111,
		-0.898359, -0.258069, 0.355460,
		1.875550, 0.423022, 0.371231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.387464, -0.091341, 0.141832>,  <2.504401, 0.603670, 0.122409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.387464, -0.091341, 0.141832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.071014, 0.146580, 0.084795>,  <1.881145, 0.289332, 0.050573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.071014, 0.146580, 0.084795>,  <2.387464, -0.091341, 0.141832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.071014, 0.146580, 0.084795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056569, -0.303279, -0.951221,
		-0.609034, -0.744467, 0.273579,
		-0.791124, 0.594802, -0.142594,
		1.833677, 0.325020, 0.042017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.866268, -0.547332, -0.062452>,  <2.387464, -0.091341, 0.141832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.866268, -0.547332, -0.062452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.810692, -0.177055, -0.203188>,  <1.777346, 0.045110, -0.287630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.810692, -0.177055, -0.203188>,  <1.866268, -0.547332, -0.062452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.810692, -0.177055, -0.203188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062914, -0.362820, -0.929733,
		-0.988300, -0.107042, 0.108649,
		-0.138941, 0.925691, -0.351841,
		1.769009, 0.100652, -0.308740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.144027, -0.553544, -0.373937>,  <1.866268, -0.547332, -0.062452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.144027, -0.553544, -0.373937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.345848, -0.248920, -0.536642>,  <1.466940, -0.066146, -0.634265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.345848, -0.248920, -0.536642>,  <1.144027, -0.553544, -0.373937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.345848, -0.248920, -0.536642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051013, -0.444008, -0.894569,
		-0.861873, 0.472107, -0.185175,
		0.504551, 0.761559, -0.406763,
		1.497213, -0.020453, -0.658671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.868429, -0.422477, -1.090529>,  <1.144027, -0.553544, -0.373937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.868429, -0.422477, -1.090529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.256165, -0.324326, -1.085300>,  <1.488806, -0.265435, -1.082163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.256165, -0.324326, -1.085300>,  <0.868429, -0.422477, -1.090529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.256165, -0.324326, -1.085300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145417, -0.529950, -0.835468,
		-0.198079, 0.811753, -0.549383,
		0.969339, 0.245378, 0.013071,
		1.546966, -0.250712, -1.081379>
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
