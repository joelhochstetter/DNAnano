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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.101301, 35.038929, 34.673656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246758, 35.124146, 35.036396>,  <24.334030, 35.175274, 35.254040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246758, 35.124146, 35.036396>,  <24.101301, 35.038929, 34.673656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246758, 35.124146, 35.036396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928992, -0.010989, -0.369936,
		-0.068845, 0.976982, -0.201907,
		0.363639, 0.213038, 0.906852,
		24.355850, 35.188057, 35.308453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575102, 35.509239, 34.619049>,  <24.101301, 35.038929, 34.673656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575102, 35.509239, 34.619049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681845, 35.336716, 34.963783>,  <24.745890, 35.233200, 35.170624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681845, 35.336716, 34.963783>,  <24.575102, 35.509239, 34.619049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681845, 35.336716, 34.963783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961751, 0.061820, -0.266857,
		0.061820, 0.900083, 0.431310,
		0.266857, -0.431310, 0.861835,
		24.761902, 35.207321, 35.222332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110067, 35.938583, 34.902187>,  <24.575102, 35.509239, 34.619049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110067, 35.938583, 34.902187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130234, 35.574406, 35.066410>,  <25.142334, 35.355900, 35.164944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130234, 35.574406, 35.066410>,  <25.110067, 35.938583, 34.902187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130234, 35.574406, 35.066410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989436, -0.010413, -0.144594,
		0.135919, 0.413509, 0.900298,
		0.050416, -0.910441, 0.410556,
		25.145359, 35.301273, 35.189575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613144, 36.078945, 35.390163>,  <25.110067, 35.938583, 34.902187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613144, 36.078945, 35.390163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567501, 35.716503, 35.227215>,  <25.540115, 35.499039, 35.129444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567501, 35.716503, 35.227215>,  <25.613144, 36.078945, 35.390163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567501, 35.716503, 35.227215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898400, 0.080930, -0.431658,
		0.424096, -0.415239, 0.804810,
		-0.114108, -0.906105, -0.407373,
		25.533268, 35.444672, 35.105003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173508, 35.586338, 35.536198>,  <25.613144, 36.078945, 35.390163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173508, 35.586338, 35.536198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016701, 35.496967, 35.179234>,  <25.922617, 35.443344, 34.965054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016701, 35.496967, 35.179234>,  <26.173508, 35.586338, 35.536198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016701, 35.496967, 35.179234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912293, 0.030552, -0.408396,
		0.118512, -0.974241, 0.191856,
		-0.392015, -0.223429, -0.892414,
		25.899096, 35.429939, 34.911510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378717, 34.907898, 35.085491>,  <26.173508, 35.586338, 35.536198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378717, 34.907898, 35.085491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310186, 35.227215, 34.854538>,  <26.269068, 35.418804, 34.715965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310186, 35.227215, 34.854538>,  <26.378717, 34.907898, 35.085491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310186, 35.227215, 34.854538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981120, 0.084874, -0.173785,
		-0.089726, -0.596260, -0.797762,
		-0.171330, 0.798292, -0.577387,
		26.258787, 35.466702, 34.681320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609337, 34.804371, 34.463203>,  <26.378717, 34.907898, 35.085491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609337, 34.804371, 34.463203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617868, 35.201359, 34.511463>,  <26.622988, 35.439552, 34.540417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617868, 35.201359, 34.511463>,  <26.609337, 34.804371, 34.463203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617868, 35.201359, 34.511463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944120, 0.019706, -0.329012,
		-0.328910, 0.120922, -0.936587,
		0.021328, 0.992466, 0.120646,
		26.624268, 35.499100, 34.547657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883099, 35.089886, 33.908623>,  <26.609337, 34.804371, 34.463203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883099, 35.089886, 33.908623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963161, 35.376698, 34.175701>,  <27.011198, 35.548782, 34.335949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963161, 35.376698, 34.175701>,  <26.883099, 35.089886, 33.908623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963161, 35.376698, 34.175701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979643, -0.135761, -0.147877,
		-0.015385, 0.683699, -0.729602,
		0.200155, 0.717025, 0.667692,
		27.023209, 35.591805, 34.376007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366959, 35.443192, 33.636303>,  <26.883099, 35.089886, 33.908623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366959, 35.443192, 33.636303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397945, 35.543846, 34.022190>,  <27.416538, 35.604240, 34.253723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397945, 35.543846, 34.022190>,  <27.366959, 35.443192, 33.636303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397945, 35.543846, 34.022190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991686, -0.119177, -0.048546,
		0.102756, 0.960455, -0.258780,
		0.077467, 0.251640, 0.964716,
		27.421185, 35.619339, 34.311604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979206, 35.881859, 33.712982>,  <27.366959, 35.443192, 33.636303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979206, 35.881859, 33.712982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898661, 35.721184, 34.070328>,  <27.850332, 35.624779, 34.284737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898661, 35.721184, 34.070328>,  <27.979206, 35.881859, 33.712982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898661, 35.721184, 34.070328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954042, -0.287080, 0.085961,
		0.221937, 0.869615, 0.441037,
		-0.201366, -0.401690, 0.893363,
		27.838251, 35.600677, 34.338337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568213, 35.926395, 34.013615>,  <27.979206, 35.881859, 33.712982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568213, 35.926395, 34.013615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374458, 35.691669, 34.273159>,  <28.258205, 35.550835, 34.428886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374458, 35.691669, 34.273159>,  <28.568213, 35.926395, 34.013615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374458, 35.691669, 34.273159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851640, -0.486006, 0.196233,
		0.200198, 0.647648, 0.735168,
		-0.484386, -0.586813, 0.648861,
		28.229143, 35.515625, 34.467815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014225, 35.900360, 34.690704>,  <28.568213, 35.926395, 34.013615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014225, 35.900360, 34.690704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786293, 35.585827, 34.595230>,  <28.649534, 35.397106, 34.537945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786293, 35.585827, 34.595230>,  <29.014225, 35.900360, 34.690704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786293, 35.585827, 34.595230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788291, -0.605107, 0.111548,
		-0.232147, -0.124593, 0.964668,
		-0.569829, -0.786334, -0.238689,
		28.615345, 35.349926, 34.523624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593521, 35.634396, 34.281731>,  <29.014225, 35.900360, 34.690704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593521, 35.634396, 34.281731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891470, 35.827583, 34.465866>,  <30.070238, 35.943497, 34.576347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891470, 35.827583, 34.465866>,  <29.593521, 35.634396, 34.281731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891470, 35.827583, 34.465866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444007, 0.156183, -0.882306,
		-0.498021, 0.861597, -0.098104,
		0.744871, 0.482966, 0.460338,
		30.114931, 35.972473, 34.603966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123882, 35.098644, 34.065479>,  <29.593521, 35.634396, 34.281731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123882, 35.098644, 34.065479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147854, 34.958099, 34.439209>,  <29.162237, 34.873772, 34.663445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147854, 34.958099, 34.439209>,  <29.123882, 35.098644, 34.065479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147854, 34.958099, 34.439209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990455, 0.095461, 0.099426,
		-0.124125, -0.931361, -0.342285,
		0.059927, -0.351359, 0.934321,
		29.165833, 34.852692, 34.719505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650305, 34.596836, 34.100620>,  <29.123882, 35.098644, 34.065479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650305, 34.596836, 34.100620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725010, 34.778664, 34.448982>,  <28.769833, 34.887760, 34.658001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725010, 34.778664, 34.448982>,  <28.650305, 34.596836, 34.100620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725010, 34.778664, 34.448982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922376, 0.386273, -0.003814,
		-0.338143, -0.802594, 0.491429,
		0.186765, 0.454572, 0.870909,
		28.781040, 34.915035, 34.710255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133728, 34.326694, 34.570297>,  <28.650305, 34.596836, 34.100620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133728, 34.326694, 34.570297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296774, 34.662449, 34.714119>,  <28.394602, 34.863903, 34.800411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296774, 34.662449, 34.714119>,  <28.133728, 34.326694, 34.570297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296774, 34.662449, 34.714119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909827, 0.406900, 0.081524,
		-0.077871, -0.360359, 0.929558,
		0.407615, 0.839388, 0.359550,
		28.419058, 34.914265, 34.821983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838331, 34.558598, 35.234798>,  <28.133728, 34.326694, 34.570297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838331, 34.558598, 35.234798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967588, 34.872189, 35.022774>,  <28.045143, 35.060341, 34.895561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967588, 34.872189, 35.022774>,  <27.838331, 34.558598, 35.234798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967588, 34.872189, 35.022774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857212, 0.479794, 0.187045,
		0.400958, 0.393930, 0.827074,
		0.323142, 0.783975, -0.530059,
		28.064531, 35.107380, 34.863754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585209, 35.169666, 35.529495>,  <27.838331, 34.558598, 35.234798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585209, 35.169666, 35.529495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657669, 35.300888, 35.158646>,  <27.701145, 35.379623, 34.936134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657669, 35.300888, 35.158646>,  <27.585209, 35.169666, 35.529495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657669, 35.300888, 35.158646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867411, 0.497550, 0.006571,
		0.463447, 0.803009, 0.374691,
		0.181151, 0.328057, -0.927126,
		27.712015, 35.399303, 34.880508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507807, 35.898277, 35.584946>,  <27.585209, 35.169666, 35.529495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507807, 35.898277, 35.584946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471813, 35.810318, 35.196400>,  <27.450216, 35.757542, 34.963272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471813, 35.810318, 35.196400>,  <27.507807, 35.898277, 35.584946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471813, 35.810318, 35.196400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844752, 0.533466, -0.042511,
		0.527537, 0.816737, -0.233764,
		-0.089985, -0.219899, -0.971363,
		27.444817, 35.744347, 34.904991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222004, 36.448582, 35.300289>,  <27.507807, 35.898277, 35.584946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222004, 36.448582, 35.300289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148205, 36.172607, 35.020302>,  <27.103926, 36.007023, 34.852310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148205, 36.172607, 35.020302>,  <27.222004, 36.448582, 35.300289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148205, 36.172607, 35.020302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922880, 0.366550, -0.118041,
		0.338014, 0.624208, -0.704352,
		-0.184498, -0.689932, -0.699968,
		27.092855, 35.965630, 34.810310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775087, 36.781540, 34.713043>,  <27.222004, 36.448582, 35.300289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775087, 36.781540, 34.713043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738094, 36.386307, 34.762264>,  <26.715899, 36.149166, 34.791798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738094, 36.386307, 34.762264>,  <26.775087, 36.781540, 34.713043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738094, 36.386307, 34.762264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990844, 0.079118, -0.109405,
		0.098365, -0.132046, -0.986351,
		-0.092485, -0.988081, 0.123055,
		26.710348, 36.089882, 34.799179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295322, 36.481598, 34.311913>,  <26.775087, 36.781540, 34.713043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295322, 36.481598, 34.311913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312002, 36.221905, 34.615692>,  <26.322010, 36.066090, 34.797958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312002, 36.221905, 34.615692>,  <26.295322, 36.481598, 34.311913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312002, 36.221905, 34.615692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998530, -0.053413, 0.009167,
		0.034613, -0.758712, -0.650506,
		0.041701, -0.649233, 0.759445,
		26.324512, 36.027134, 34.843525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106245, 35.706635, 34.129745>,  <26.295322, 36.481598, 34.311913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106245, 35.706635, 34.129745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023045, 35.893909, 34.473267>,  <25.973124, 36.006275, 34.679379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023045, 35.893909, 34.473267>,  <26.106245, 35.706635, 34.129745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023045, 35.893909, 34.473267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964532, 0.047710, -0.259619,
		-0.162523, -0.882343, 0.441654,
		-0.208002, 0.468183, 0.858801,
		25.960644, 36.034363, 34.730907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073847, 35.526501, 33.448490>,  <26.106245, 35.706635, 34.129745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073847, 35.526501, 33.448490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380535, 35.601616, 33.202930>,  <26.564548, 35.646687, 33.055595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380535, 35.601616, 33.202930>,  <26.073847, 35.526501, 33.448490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380535, 35.601616, 33.202930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318007, -0.719595, -0.617296,
		-0.557680, 0.668519, -0.492012,
		0.766723, 0.187790, -0.613898,
		26.610552, 35.657951, 33.018761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888714, 35.501682, 32.709461>,  <26.073847, 35.526501, 33.448490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888714, 35.501682, 32.709461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280962, 35.424850, 32.694050>,  <26.516312, 35.378750, 32.684803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280962, 35.424850, 32.694050>,  <25.888714, 35.501682, 32.709461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280962, 35.424850, 32.694050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142850, -0.566509, -0.811579,
		0.134064, 0.801356, -0.582971,
		0.980623, -0.192080, -0.038525,
		26.575150, 35.367226, 32.682491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961502, 35.665337, 32.003468>,  <25.888714, 35.501682, 32.709461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961502, 35.665337, 32.003468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289629, 35.474361, 32.129410>,  <26.486506, 35.359776, 32.204975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289629, 35.474361, 32.129410>,  <25.961502, 35.665337, 32.003468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289629, 35.474361, 32.129410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146753, -0.356372, -0.922747,
		0.552758, 0.803152, -0.222273,
		0.820319, -0.477437, 0.314852,
		26.535725, 35.331131, 32.223866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394840, 35.711632, 31.471279>,  <25.961502, 35.665337, 32.003468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394840, 35.711632, 31.471279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538214, 35.409122, 31.690216>,  <26.624237, 35.227619, 31.821577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538214, 35.409122, 31.690216>,  <26.394840, 35.711632, 31.471279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538214, 35.409122, 31.690216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128736, -0.540655, -0.831336,
		0.924636, 0.368441, -0.096430,
		0.358434, -0.756269, 0.547341,
		26.645744, 35.182243, 31.854418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966845, 35.384949, 31.154865>,  <26.394840, 35.711632, 31.471279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966845, 35.384949, 31.154865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826115, 35.090546, 31.386213>,  <26.741676, 34.913902, 31.525023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826115, 35.090546, 31.386213>,  <26.966845, 35.384949, 31.154865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826115, 35.090546, 31.386213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150998, -0.654404, -0.740915,
		0.923807, -0.173340, 0.341371,
		-0.351825, -0.736009, 0.578369,
		26.720568, 34.869743, 31.559725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416388, 34.836502, 31.516258>,  <26.966845, 35.384949, 31.154865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416388, 34.836502, 31.516258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061794, 34.726421, 31.367441>,  <26.849039, 34.660374, 31.278151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061794, 34.726421, 31.367441>,  <27.416388, 34.836502, 31.516258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061794, 34.726421, 31.367441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460220, -0.440119, -0.771034,
		0.048447, -0.854728, 0.516810,
		-0.886482, -0.275201, -0.372041,
		26.795849, 34.643860, 31.255829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534592, 35.502888, 31.870674>,  <27.416388, 34.836502, 31.516258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534592, 35.502888, 31.870674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922047, 35.476318, 31.774902>,  <28.154520, 35.460377, 31.717440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922047, 35.476318, 31.774902>,  <27.534592, 35.502888, 31.870674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922047, 35.476318, 31.774902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008893, 0.953727, -0.300543,
		0.248313, 0.293247, 0.923226,
		0.968639, -0.066419, -0.239431,
		28.212639, 35.456394, 31.703074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040449, 35.980621, 32.238667>,  <27.534592, 35.502888, 31.870674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040449, 35.980621, 32.238667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151014, 35.903797, 31.862007>,  <28.217354, 35.857704, 31.636011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151014, 35.903797, 31.862007>,  <28.040449, 35.980621, 32.238667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151014, 35.903797, 31.862007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055794, 0.974968, -0.215229,
		0.959418, 0.112030, 0.258777,
		0.276412, -0.192057, -0.941653,
		28.233938, 35.846180, 31.579512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556639, 36.430054, 32.067368>,  <28.040449, 35.980621, 32.238667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556639, 36.430054, 32.067368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430775, 36.317654, 31.704704>,  <28.355257, 36.250214, 31.487106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430775, 36.317654, 31.704704>,  <28.556639, 36.430054, 32.067368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430775, 36.317654, 31.704704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071835, 0.959488, -0.272439,
		0.946482, -0.020596, -0.322097,
		-0.314659, -0.280996, -0.906659,
		28.336376, 36.233356, 31.432707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923000, 36.789482, 31.426682>,  <28.556639, 36.430054, 32.067368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923000, 36.789482, 31.426682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541807, 36.676735, 31.382177>,  <28.313091, 36.609089, 31.355474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541807, 36.676735, 31.382177>,  <28.923000, 36.789482, 31.426682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541807, 36.676735, 31.382177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262375, 0.951199, -0.162421,
		0.151613, -0.125592, -0.980429,
		-0.952981, -0.281865, -0.111262,
		28.255913, 36.592175, 31.348799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573408, 36.978477, 30.717119>,  <28.923000, 36.789482, 31.426682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573408, 36.978477, 30.717119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336140, 36.973705, 31.039114>,  <28.193779, 36.970840, 31.232311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336140, 36.973705, 31.039114>,  <28.573408, 36.978477, 30.717119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336140, 36.973705, 31.039114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186424, 0.974749, -0.122921,
		-0.783196, -0.222982, -0.580416,
		-0.593170, -0.011932, 0.804989,
		28.158188, 36.970127, 31.280611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932732, 37.372574, 30.624779>,  <28.573408, 36.978477, 30.717119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932732, 37.372574, 30.624779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067654, 37.405525, 30.999893>,  <28.148607, 37.425297, 31.224962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067654, 37.405525, 30.999893>,  <27.932732, 37.372574, 30.624779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067654, 37.405525, 30.999893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202949, 0.979103, -0.013007,
		-0.919259, -0.185935, 0.346973,
		0.337304, 0.082375, 0.937785,
		28.168844, 37.430237, 31.281229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374231, 36.886898, 30.752399>,  <27.932732, 37.372574, 30.624779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374231, 36.886898, 30.752399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750956, 36.833199, 30.629131>,  <27.976990, 36.800980, 30.555170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750956, 36.833199, 30.629131>,  <27.374231, 36.886898, 30.752399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750956, 36.833199, 30.629131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001038, -0.915618, 0.402048,
		-0.336139, -0.378974, -0.862200,
		0.941812, -0.134249, -0.308168,
		28.033499, 36.792923, 30.536680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549456, 36.287750, 30.328245>,  <27.374231, 36.886898, 30.752399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549456, 36.287750, 30.328245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888105, 36.348881, 30.532154>,  <28.091295, 36.385559, 30.654499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888105, 36.348881, 30.532154>,  <27.549456, 36.287750, 30.328245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888105, 36.348881, 30.532154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002077, -0.956923, 0.290333,
		0.532185, -0.246862, -0.809838,
		0.846626, 0.152829, 0.509773,
		28.142094, 36.394730, 30.685085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006231, 35.647144, 30.324028>,  <27.549456, 36.287750, 30.328245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006231, 35.647144, 30.324028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136196, 35.864231, 30.633839>,  <28.214174, 35.994484, 30.819725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136196, 35.864231, 30.633839>,  <28.006231, 35.647144, 30.324028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136196, 35.864231, 30.633839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259507, -0.838686, 0.478813,
		0.909445, 0.045424, -0.413337,
		0.324910, 0.542717, 0.774526,
		28.233669, 36.027046, 30.866196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659805, 35.511375, 30.404930>,  <28.006231, 35.647144, 30.324028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659805, 35.511375, 30.404930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495314, 35.602837, 30.757885>,  <28.396618, 35.657711, 30.969658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495314, 35.602837, 30.757885>,  <28.659805, 35.511375, 30.404930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495314, 35.602837, 30.757885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156919, -0.935819, 0.315626,
		0.897924, 0.268258, 0.348956,
		-0.411229, 0.228650, 0.882388,
		28.371944, 35.671432, 31.022602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034992, 35.143639, 30.949127>,  <28.659805, 35.511375, 30.404930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034992, 35.143639, 30.949127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686447, 35.251163, 31.113308>,  <28.477320, 35.315678, 31.211817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686447, 35.251163, 31.113308>,  <29.034992, 35.143639, 30.949127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686447, 35.251163, 31.113308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028003, -0.807953, 0.588581,
		0.489843, 0.524360, 0.696492,
		-0.871361, 0.268808, 0.410454,
		28.425039, 35.331806, 31.236444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025496, 35.034824, 31.706182>,  <29.034992, 35.143639, 30.949127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025496, 35.034824, 31.706182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669407, 34.949268, 31.545305>,  <28.455753, 34.897934, 31.448778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669407, 34.949268, 31.545305>,  <29.025496, 35.034824, 31.706182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669407, 34.949268, 31.545305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025262, -0.858372, 0.512406,
		-0.454830, 0.466314, 0.758736,
		-0.890220, -0.213891, -0.402194,
		28.402342, 34.885101, 31.424646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555040, 34.937767, 32.160145>,  <29.025496, 35.034824, 31.706182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555040, 34.937767, 32.160145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377777, 34.739277, 31.861515>,  <28.271420, 34.620182, 31.682337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377777, 34.739277, 31.861515>,  <28.555040, 34.937767, 32.160145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377777, 34.739277, 31.861515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015180, -0.836853, 0.547217,
		-0.896316, 0.231170, 0.378389,
		-0.443157, -0.496223, -0.746576,
		28.244831, 34.590408, 31.637543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139555, 34.544155, 32.650883>,  <28.555040, 34.937767, 32.160145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139555, 34.544155, 32.650883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306400, 34.183620, 32.697548>,  <28.406507, 33.967300, 32.725548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306400, 34.183620, 32.697548>,  <28.139555, 34.544155, 32.650883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306400, 34.183620, 32.697548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490022, -0.331137, -0.806367,
		0.765438, 0.279180, -0.579796,
		0.417113, -0.901336, 0.116660,
		28.431534, 33.913219, 32.732548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633324, 34.232109, 32.083290>,  <28.139555, 34.544155, 32.650883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633324, 34.232109, 32.083290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433605, 33.949486, 32.283882>,  <28.313774, 33.779911, 32.404236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433605, 33.949486, 32.283882>,  <28.633324, 34.232109, 32.083290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433605, 33.949486, 32.283882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254381, -0.433738, -0.864385,
		0.828246, -0.559152, 0.036830,
		-0.499298, -0.706555, 0.501480,
		28.283815, 33.737518, 32.434326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825148, 33.508625, 31.977757>,  <28.633324, 34.232109, 32.083290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825148, 33.508625, 31.977757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437330, 33.448341, 32.054977>,  <28.204639, 33.412170, 32.101311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437330, 33.448341, 32.054977>,  <28.825148, 33.508625, 31.977757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437330, 33.448341, 32.054977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118418, -0.401506, -0.908169,
		0.214382, -0.903371, 0.371431,
		-0.969545, -0.150711, 0.193051,
		28.146467, 33.403130, 32.112892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431034, 33.139423, 32.305874>,  <28.825148, 33.508625, 31.977757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431034, 33.139423, 32.305874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575531, 33.488655, 32.174881>,  <29.662230, 33.698193, 32.096287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575531, 33.488655, 32.174881>,  <29.431034, 33.139423, 32.305874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575531, 33.488655, 32.174881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917084, -0.396189, -0.044629,
		-0.168709, -0.284207, -0.943803,
		0.361240, 0.873075, -0.327483,
		29.683903, 33.750576, 32.076637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940592, 32.998535, 31.728678>,  <29.431034, 33.139423, 32.305874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940592, 32.998535, 31.728678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004803, 33.329140, 31.944494>,  <30.043329, 33.527504, 32.073986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004803, 33.329140, 31.944494>,  <29.940592, 32.998535, 31.728678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004803, 33.329140, 31.944494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925594, -0.315897, 0.208529,
		0.342792, 0.465923, -0.815726,
		0.160527, 0.826514, 0.539543,
		30.052961, 33.577095, 32.106358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345726, 33.583416, 31.364742>,  <29.940592, 32.998535, 31.728678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345726, 33.583416, 31.364742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394691, 33.558254, 31.760935>,  <30.424070, 33.543159, 31.998652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394691, 33.558254, 31.760935>,  <30.345726, 33.583416, 31.364742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394691, 33.558254, 31.760935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885545, -0.443700, -0.137624,
		0.448134, 0.893965, 0.001387,
		0.122416, -0.062902, 0.990484,
		30.431416, 33.539383, 32.058079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096056, 33.689297, 31.627310>,  <30.345726, 33.583416, 31.364742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096056, 33.689297, 31.627310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948240, 33.497597, 31.945747>,  <30.859550, 33.382576, 32.136810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948240, 33.497597, 31.945747>,  <31.096056, 33.689297, 31.627310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948240, 33.497597, 31.945747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877712, -0.461296, 0.129726,
		0.305063, 0.746678, 0.591108,
		-0.369539, -0.479248, 0.796092,
		30.837379, 33.353821, 32.184574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688732, 33.434284, 31.988983>,  <31.096056, 33.689297, 31.627310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688732, 33.434284, 31.988983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427305, 33.245693, 32.225815>,  <31.270449, 33.132538, 32.367912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427305, 33.245693, 32.225815>,  <31.688732, 33.434284, 31.988983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427305, 33.245693, 32.225815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737144, -0.573949, 0.356653,
		0.171667, 0.669543, 0.722664,
		-0.653567, -0.471481, 0.592077,
		31.231236, 33.104248, 32.403439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224354, 32.833683, 31.904528>,  <31.688732, 33.434284, 31.988983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224354, 32.833683, 31.904528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515209, 32.736584, 31.647673>,  <32.689724, 32.678326, 31.493559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515209, 32.736584, 31.647673>,  <32.224354, 32.833683, 31.904528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515209, 32.736584, 31.647673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396599, 0.912046, 0.104315,
		0.560338, -0.330524, 0.759458,
		0.727139, -0.242748, -0.642139,
		32.733353, 32.663757, 31.455030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951393, 33.077457, 32.095112>,  <32.224354, 32.833683, 31.904528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951393, 33.077457, 32.095112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903316, 33.079212, 31.698017>,  <32.874470, 33.080265, 31.459759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903316, 33.079212, 31.698017>,  <32.951393, 33.077457, 32.095112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903316, 33.079212, 31.698017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102430, 0.994708, -0.008003,
		0.987453, -0.102648, -0.120003,
		-0.120189, 0.004389, -0.992741,
		32.867260, 33.080528, 31.400194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580639, 33.137886, 31.737883>,  <32.951393, 33.077457, 32.095112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580639, 33.137886, 31.737883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751762, 33.393734, 31.993341>,  <33.854435, 33.547241, 32.146618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751762, 33.393734, 31.993341>,  <33.580639, 33.137886, 31.737883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751762, 33.393734, 31.993341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901548, 0.251354, 0.352183,
		0.064734, -0.726439, 0.684175,
		0.427810, 0.639615, 0.638649,
		33.880104, 33.585617, 32.184937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029724, 32.651176, 31.928871>,  <33.580639, 33.137886, 31.737883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029724, 32.651176, 31.928871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152687, 32.604809, 31.551075>,  <34.226467, 32.576988, 31.324398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152687, 32.604809, 31.551075>,  <34.029724, 32.651176, 31.928871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152687, 32.604809, 31.551075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946065, -0.069441, 0.316447,
		-0.102269, -0.990828, 0.088320,
		0.307411, -0.115919, -0.944490,
		34.244911, 32.570034, 31.267729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430717, 31.988731, 31.783566>,  <34.029724, 32.651176, 31.928871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430717, 31.988731, 31.783566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544064, 32.290459, 31.546684>,  <34.612072, 32.471497, 31.404556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544064, 32.290459, 31.546684>,  <34.430717, 31.988731, 31.783566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544064, 32.290459, 31.546684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908646, -0.013693, 0.417342,
		0.306700, -0.656365, -0.689289,
		0.283367, 0.754319, -0.592204,
		34.629074, 32.516754, 31.369022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227436, 31.849813, 31.605726>,  <34.430717, 31.988731, 31.783566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227436, 31.849813, 31.605726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201405, 32.241463, 31.528696>,  <35.185787, 32.476452, 31.482477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201405, 32.241463, 31.528696>,  <35.227436, 31.849813, 31.605726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201405, 32.241463, 31.528696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857060, 0.153683, 0.491762,
		0.511091, -0.133047, -0.849167,
		-0.065075, 0.979122, -0.192575,
		35.181881, 32.535198, 31.470924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912853, 32.082253, 31.323547>,  <35.227436, 31.849813, 31.605726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912853, 32.082253, 31.323547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707455, 32.388210, 31.479115>,  <35.584217, 32.571785, 31.572454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707455, 32.388210, 31.479115>,  <35.912853, 32.082253, 31.323547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707455, 32.388210, 31.479115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818165, 0.299780, 0.490650,
		0.258706, 0.570147, -0.779746,
		-0.513495, 0.764895, 0.388919,
		35.553406, 32.617680, 31.595791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343662, 32.690941, 31.281260>,  <35.912853, 32.082253, 31.323547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343662, 32.690941, 31.281260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075043, 32.698738, 31.577541>,  <35.913872, 32.703415, 31.755310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075043, 32.698738, 31.577541>,  <36.343662, 32.690941, 31.281260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075043, 32.698738, 31.577541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735262, -0.106231, 0.669406,
		0.091732, 0.994150, 0.057009,
		-0.671547, 0.019490, 0.740706,
		35.873577, 32.704586, 31.799753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840183, 33.025005, 31.784386>,  <36.343662, 32.690941, 31.281260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840183, 33.025005, 31.784386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512604, 32.882675, 31.964478>,  <36.316055, 32.797276, 32.072533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512604, 32.882675, 31.964478>,  <36.840183, 33.025005, 31.784386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512604, 32.882675, 31.964478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465479, 0.046975, 0.883811,
		-0.335636, 0.933369, 0.127161,
		-0.818949, -0.355830, 0.450231,
		36.266918, 32.775925, 32.099548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789875, 32.682922, 32.428574>,  <36.840183, 33.025005, 31.784386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789875, 32.682922, 32.428574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754738, 33.067310, 32.533504>,  <36.733654, 33.297943, 32.596462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754738, 33.067310, 32.533504>,  <36.789875, 32.682922, 32.428574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754738, 33.067310, 32.533504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899122, 0.036869, -0.436143,
		-0.428793, -0.274175, 0.860793,
		-0.087843, 0.960973, 0.262326,
		36.728386, 33.355602, 32.612202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289700, 32.740993, 33.046963>,  <36.789875, 32.682922, 32.428574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289700, 32.740993, 33.046963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341805, 33.016853, 32.762032>,  <36.373066, 33.182369, 32.591072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341805, 33.016853, 32.762032>,  <36.289700, 32.740993, 33.046963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341805, 33.016853, 32.762032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813397, -0.336483, -0.474516,
		-0.566937, 0.641218, 0.517129,
		0.130263, 0.689651, -0.712329,
		36.380882, 33.223747, 32.548332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708652, 33.136723, 32.869316>,  <36.289700, 32.740993, 33.046963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708652, 33.136723, 32.869316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887653, 33.196835, 32.516689>,  <35.995052, 33.232903, 32.305115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887653, 33.196835, 32.516689>,  <35.708652, 33.136723, 32.869316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887653, 33.196835, 32.516689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829365, -0.298993, -0.471971,
		-0.334509, 0.942348, -0.009165,
		0.447501, 0.150277, -0.881567,
		36.021904, 33.241917, 32.252220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144073, 33.304276, 32.507561>,  <35.708652, 33.136723, 32.869316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144073, 33.304276, 32.507561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434887, 33.231625, 32.242702>,  <35.609375, 33.188034, 32.083786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434887, 33.231625, 32.242702>,  <35.144073, 33.304276, 32.507561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434887, 33.231625, 32.242702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682385, -0.297907, -0.667534,
		-0.076014, 0.937156, -0.340529,
		0.727030, -0.181630, -0.662146,
		35.652996, 33.177135, 32.044060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001785, 33.749363, 31.932707>,  <35.144073, 33.304276, 32.507561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001785, 33.749363, 31.932707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188377, 33.417339, 31.810459>,  <35.300331, 33.218124, 31.737110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188377, 33.417339, 31.810459>,  <35.001785, 33.749363, 31.932707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188377, 33.417339, 31.810459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694004, -0.129237, -0.708277,
		0.548413, 0.542496, -0.636350,
		0.466478, -0.830058, -0.305619,
		35.328320, 33.168324, 31.718773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263542, 33.768421, 31.138086>,  <35.001785, 33.749363, 31.932707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263542, 33.768421, 31.138086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222664, 33.384571, 31.242910>,  <35.198135, 33.154263, 31.305805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222664, 33.384571, 31.242910>,  <35.263542, 33.768421, 31.138086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222664, 33.384571, 31.242910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779728, -0.086312, -0.620141,
		0.617722, -0.267712, -0.739426,
		-0.102198, -0.959625, 0.262059,
		35.192005, 33.096684, 31.321527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949337, 33.477921, 30.537926>,  <35.263542, 33.768421, 31.138086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949337, 33.477921, 30.537926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870682, 33.194450, 30.808954>,  <34.823486, 33.024368, 30.971571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870682, 33.194450, 30.808954>,  <34.949337, 33.477921, 30.537926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870682, 33.194450, 30.808954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853360, -0.216596, -0.474197,
		0.482814, -0.671460, -0.562167,
		-0.196641, -0.708680, 0.677573,
		34.811691, 32.981846, 31.012226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260880, 33.305698, 30.412771>,  <34.949337, 33.477921, 30.537926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260880, 33.305698, 30.412771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240585, 33.579094, 30.121492>,  <34.228409, 33.743130, 29.946724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240585, 33.579094, 30.121492>,  <34.260880, 33.305698, 30.412771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240585, 33.579094, 30.121492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598515, -0.562893, -0.570028,
		-0.799504, -0.464757, -0.380519,
		-0.050733, 0.683485, -0.728199,
		34.225365, 33.784138, 29.903032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002346, 33.091862, 29.660748>,  <34.260880, 33.305698, 30.412771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002346, 33.091862, 29.660748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266361, 33.391689, 29.640778>,  <34.424770, 33.571587, 29.628796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266361, 33.391689, 29.640778>,  <34.002346, 33.091862, 29.660748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266361, 33.391689, 29.640778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627266, -0.586477, -0.512427,
		-0.413378, 0.306909, -0.857278,
		0.660042, 0.749568, -0.049923,
		34.464375, 33.616558, 29.625801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240326, 33.154430, 28.968662>,  <34.002346, 33.091862, 29.660748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240326, 33.154430, 28.968662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532814, 33.353542, 29.155228>,  <34.708305, 33.473007, 29.267166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532814, 33.353542, 29.155228>,  <34.240326, 33.154430, 28.968662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532814, 33.353542, 29.155228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681714, -0.508928, -0.525603,
		-0.024261, 0.702290, -0.711477,
		0.731217, 0.497775, 0.466414,
		34.752178, 33.502876, 29.295153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772198, 33.295013, 28.509764>,  <34.240326, 33.154430, 28.968662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772198, 33.295013, 28.509764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980930, 33.387054, 28.838333>,  <35.106171, 33.442280, 29.035475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980930, 33.387054, 28.838333>,  <34.772198, 33.295013, 28.509764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980930, 33.387054, 28.838333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806524, -0.446743, -0.387221,
		0.277864, 0.864565, -0.418712,
		0.521834, 0.230106, 0.821426,
		35.137482, 33.456085, 29.084761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439236, 33.786869, 28.309822>,  <34.772198, 33.295013, 28.509764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439236, 33.786869, 28.309822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522961, 33.605503, 28.656372>,  <35.573196, 33.496685, 28.864302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522961, 33.605503, 28.656372>,  <35.439236, 33.786869, 28.309822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522961, 33.605503, 28.656372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825453, -0.393056, -0.405134,
		0.524226, 0.799952, 0.291999,
		0.209316, -0.453414, 0.866373,
		35.585754, 33.469479, 28.916285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036667, 34.009148, 28.498899>,  <35.439236, 33.786869, 28.309822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036667, 34.009148, 28.498899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012379, 33.667175, 28.704967>,  <35.997807, 33.461990, 28.828609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012379, 33.667175, 28.704967>,  <36.036667, 34.009148, 28.498899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012379, 33.667175, 28.704967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869880, -0.298441, -0.392737,
		0.489512, 0.424289, 0.761811,
		-0.060722, -0.854934, 0.515171,
		35.994164, 33.410694, 28.859518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721519, 33.922489, 28.803686>,  <36.036667, 34.009148, 28.498899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721519, 33.922489, 28.803686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547859, 33.563026, 28.828741>,  <36.443661, 33.347347, 28.843775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547859, 33.563026, 28.828741>,  <36.721519, 33.922489, 28.803686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547859, 33.563026, 28.828741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854999, -0.432961, -0.285519,
		0.283704, -0.070404, 0.956324,
		-0.434153, -0.898659, 0.062637,
		36.417614, 33.293430, 28.847532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240902, 33.433468, 29.127083>,  <36.721519, 33.922489, 28.803686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240902, 33.433468, 29.127083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977348, 33.190315, 28.949837>,  <36.819214, 33.044426, 28.843489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977348, 33.190315, 28.949837>,  <37.240902, 33.433468, 29.127083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977348, 33.190315, 28.949837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751464, -0.505122, -0.424445,
		0.034184, -0.612647, 0.789617,
		-0.658888, -0.607878, -0.443115,
		36.779682, 33.007954, 28.816902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534771, 32.836384, 29.198156>,  <37.240902, 33.433468, 29.127083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534771, 32.836384, 29.198156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272312, 32.773670, 28.902887>,  <37.114838, 32.736042, 28.725727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272312, 32.773670, 28.902887>,  <37.534771, 32.836384, 29.198156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272312, 32.773670, 28.902887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705964, -0.473141, -0.527023,
		-0.266630, -0.866924, 0.421131,
		-0.656143, -0.156783, -0.738170,
		37.075470, 32.726635, 28.681437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643566, 32.207111, 28.956015>,  <37.534771, 32.836384, 29.198156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643566, 32.207111, 28.956015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464329, 32.398785, 28.654131>,  <37.356785, 32.513790, 28.473000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464329, 32.398785, 28.654131>,  <37.643566, 32.207111, 28.956015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464329, 32.398785, 28.654131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681012, -0.363952, -0.635422,
		-0.579165, -0.798698, -0.163247,
		-0.448096, 0.479188, -0.754711,
		37.329899, 32.542542, 28.427717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582573, 31.696959, 28.435759>,  <37.643566, 32.207111, 28.956015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582573, 31.696959, 28.435759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515869, 32.033970, 28.230883>,  <37.475845, 32.236176, 28.107956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515869, 32.033970, 28.230883>,  <37.582573, 31.696959, 28.435759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515869, 32.033970, 28.230883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464469, -0.391096, -0.794552,
		-0.869747, -0.370395, -0.326109,
		-0.166758, 0.842527, -0.512191,
		37.465843, 32.286728, 28.077225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364719, 31.504152, 27.792355>,  <37.582573, 31.696959, 28.435759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364719, 31.504152, 27.792355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507965, 31.875448, 27.752117>,  <37.593914, 32.098225, 27.727974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507965, 31.875448, 27.752117>,  <37.364719, 31.504152, 27.792355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507965, 31.875448, 27.752117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462050, -0.269812, -0.844814,
		-0.811333, 0.256065, -0.525519,
		0.358118, 0.928241, -0.100593,
		37.615402, 32.153919, 27.721939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165539, 31.786783, 27.087164>,  <37.364719, 31.504152, 27.792355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165539, 31.786783, 27.087164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469364, 32.031460, 27.175613>,  <37.651661, 32.178265, 27.228683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469364, 32.031460, 27.175613>,  <37.165539, 31.786783, 27.087164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469364, 32.031460, 27.175613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394383, -0.162787, -0.904413,
		-0.517225, 0.774168, -0.364888,
		0.759566, 0.611690, 0.221121,
		37.697235, 32.214966, 27.241949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138298, 32.290325, 26.591722>,  <37.165539, 31.786783, 27.087164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138298, 32.290325, 26.591722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504498, 32.288456, 26.752638>,  <37.724216, 32.287334, 26.849186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504498, 32.288456, 26.752638>,  <37.138298, 32.290325, 26.591722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504498, 32.288456, 26.752638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396109, 0.185400, -0.899291,
		-0.070382, 0.982652, 0.171585,
		0.915502, -0.004673, 0.402286,
		37.779148, 32.287056, 26.873323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428932, 32.844032, 26.399298>,  <37.138298, 32.290325, 26.591722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428932, 32.844032, 26.399298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769028, 32.660767, 26.502972>,  <37.973083, 32.550808, 26.565176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769028, 32.660767, 26.502972>,  <37.428932, 32.844032, 26.399298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769028, 32.660767, 26.502972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310809, 0.039560, -0.949649,
		0.424844, 0.887985, 0.176038,
		0.850238, -0.458167, 0.259187,
		38.024097, 32.523315, 26.580729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942127, 33.308582, 26.223591>,  <37.428932, 32.844032, 26.399298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942127, 33.308582, 26.223591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115734, 32.948715, 26.242479>,  <38.219898, 32.732796, 26.253813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115734, 32.948715, 26.242479>,  <37.942127, 33.308582, 26.223591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115734, 32.948715, 26.242479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390572, 0.140668, -0.909761,
		0.811840, 0.413293, 0.412437,
		0.434015, -0.899667, 0.047221,
		38.245937, 32.678814, 26.256645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743790, 33.387363, 25.991957>,  <37.942127, 33.308582, 26.223591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743790, 33.387363, 25.991957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659435, 32.997452, 25.962757>,  <38.608822, 32.763504, 25.945236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659435, 32.997452, 25.962757>,  <38.743790, 33.387363, 25.991957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659435, 32.997452, 25.962757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056101, 0.062488, -0.996468,
		0.975899, -0.214239, 0.041508,
		-0.210888, -0.974780, -0.073001,
		38.596169, 32.705017, 25.940857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310215, 33.106419, 25.689960>,  <38.743790, 33.387363, 25.991957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310215, 33.106419, 25.689960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012283, 32.844963, 25.636307>,  <38.833527, 32.688091, 25.604115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012283, 32.844963, 25.636307>,  <39.310215, 33.106419, 25.689960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012283, 32.844963, 25.636307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284442, -0.129185, -0.949950,
		0.603594, -0.745701, 0.282142,
		-0.744827, -0.653637, -0.134133,
		38.788834, 32.648872, 25.596067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544456, 32.586712, 25.288986>,  <39.310215, 33.106419, 25.689960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544456, 32.586712, 25.288986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149830, 32.543602, 25.239870>,  <38.913055, 32.517735, 25.210402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149830, 32.543602, 25.239870>,  <39.544456, 32.586712, 25.288986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149830, 32.543602, 25.239870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147779, -0.268180, -0.951967,
		0.069669, -0.957321, 0.280503,
		-0.986564, -0.107775, -0.122788,
		38.853859, 32.511269, 25.203033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596554, 32.052593, 24.851099>,  <39.544456, 32.586712, 25.288986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596554, 32.052593, 24.851099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234516, 32.220333, 24.822943>,  <39.017296, 32.320976, 24.806049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234516, 32.220333, 24.822943>,  <39.596554, 32.052593, 24.851099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234516, 32.220333, 24.822943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025163, -0.112434, -0.993340,
		-0.424471, -0.900836, 0.091211,
		-0.905092, 0.419349, -0.070393,
		38.962990, 32.346138, 24.801825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299950, 31.584085, 24.434477>,  <39.596554, 32.052593, 24.851099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299950, 31.584085, 24.434477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110985, 31.933786, 24.389736>,  <38.997608, 32.143608, 24.362892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110985, 31.933786, 24.389736>,  <39.299950, 31.584085, 24.434477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110985, 31.933786, 24.389736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018596, -0.116991, -0.992959,
		-0.881184, -0.471162, 0.039009,
		-0.472408, 0.874254, -0.111852,
		38.969261, 32.196064, 24.356180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792686, 31.434179, 23.938786>,  <39.299950, 31.584085, 24.434477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792686, 31.434179, 23.938786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807281, 31.833391, 23.959209>,  <38.816036, 32.072918, 23.971464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807281, 31.833391, 23.959209>,  <38.792686, 31.434179, 23.938786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807281, 31.833391, 23.959209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092686, 0.054254, -0.994216,
		-0.995027, 0.031542, 0.094483,
		0.036486, 0.998029, 0.051061,
		38.818226, 32.132801, 23.974527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194843, 31.611115, 23.560413>,  <38.792686, 31.434179, 23.938786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194843, 31.611115, 23.560413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476723, 31.894215, 23.580399>,  <38.645851, 32.064075, 23.592390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476723, 31.894215, 23.580399>,  <38.194843, 31.611115, 23.560413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476723, 31.894215, 23.580399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033895, 0.103923, -0.994008,
		-0.708700, 0.698779, 0.097224,
		0.704696, 0.707748, 0.049965,
		38.688133, 32.106541, 23.595388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034695, 31.994081, 23.002651>,  <38.194843, 31.611115, 23.560413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034695, 31.994081, 23.002651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405361, 32.096478, 23.112747>,  <38.627762, 32.157917, 23.178804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405361, 32.096478, 23.112747>,  <38.034695, 31.994081, 23.002651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405361, 32.096478, 23.112747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224529, 0.210274, -0.951510,
		-0.301453, 0.943532, 0.137377,
		0.926668, 0.255991, 0.275238,
		38.683361, 32.173275, 23.195318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058811, 32.622780, 22.632425>,  <38.034695, 31.994081, 23.002651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058811, 32.622780, 22.632425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428120, 32.486515, 22.703432>,  <38.649704, 32.404755, 22.746037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428120, 32.486515, 22.703432>,  <38.058811, 32.622780, 22.632425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428120, 32.486515, 22.703432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233053, 0.129381, -0.963819,
		0.305371, 0.931240, 0.198847,
		0.923274, -0.340665, 0.177519,
		38.705101, 32.384315, 22.756687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440735, 33.052467, 22.331375>,  <38.058811, 32.622780, 22.632425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440735, 33.052467, 22.331375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701557, 32.750420, 22.358557>,  <38.858051, 32.569191, 22.374866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701557, 32.750420, 22.358557>,  <38.440735, 33.052467, 22.331375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701557, 32.750420, 22.358557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356441, 0.226215, -0.906519,
		0.669156, 0.615325, 0.416660,
		0.652058, -0.755117, 0.067954,
		38.897175, 32.523884, 22.378942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022648, 33.363636, 22.112551>,  <38.440735, 33.052467, 22.331375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022648, 33.363636, 22.112551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084866, 32.969505, 22.084467>,  <39.122196, 32.733025, 22.067617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084866, 32.969505, 22.084467>,  <39.022648, 33.363636, 22.112551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084866, 32.969505, 22.084467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499986, 0.139828, -0.854671,
		0.851950, 0.097840, 0.514401,
		0.155549, -0.985330, -0.070208,
		39.131531, 32.673904, 22.063404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666073, 33.343552, 21.823807>,  <39.022648, 33.363636, 22.112551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666073, 33.343552, 21.823807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545258, 32.972450, 21.736137>,  <39.472767, 32.749790, 21.683537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545258, 32.972450, 21.736137>,  <39.666073, 33.343552, 21.823807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545258, 32.972450, 21.736137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260688, 0.140763, -0.955106,
		0.916959, -0.345617, 0.199339,
		-0.302041, -0.927758, -0.219172,
		39.454643, 32.694122, 21.670385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184929, 33.037140, 21.482485>,  <39.666073, 33.343552, 21.823807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184929, 33.037140, 21.482485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856277, 32.830025, 21.387138>,  <39.659084, 32.705757, 21.329929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856277, 32.830025, 21.387138>,  <40.184929, 33.037140, 21.482485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856277, 32.830025, 21.387138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237067, 0.069895, -0.968976,
		0.518384, -0.852649, 0.065323,
		-0.821631, -0.517788, -0.238367,
		39.609787, 32.674690, 21.315628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364807, 32.322735, 21.175552>,  <40.184929, 33.037140, 21.482485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364807, 32.322735, 21.175552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997349, 32.386856, 21.031111>,  <39.776875, 32.425327, 20.944447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997349, 32.386856, 21.031111>,  <40.364807, 32.322735, 21.175552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997349, 32.386856, 21.031111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332042, -0.182056, -0.925529,
		-0.214106, -0.970133, 0.114018,
		-0.918644, 0.160302, -0.361105,
		39.721756, 32.434944, 20.922779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309650, 31.864660, 20.605124>,  <40.364807, 32.322735, 21.175552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309650, 31.864660, 20.605124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037369, 32.151863, 20.547010>,  <39.874001, 32.324184, 20.512142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037369, 32.151863, 20.547010>,  <40.309650, 31.864660, 20.605124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037369, 32.151863, 20.547010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180749, -0.027575, -0.983143,
		-0.709910, -0.695489, -0.111008,
		-0.680704, 0.718008, -0.145285,
		39.833157, 32.367264, 20.503426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854546, 31.656443, 20.102577>,  <40.309650, 31.864660, 20.605124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854546, 31.656443, 20.102577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845665, 32.056343, 20.103155>,  <39.840336, 32.296284, 20.103502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845665, 32.056343, 20.103155>,  <39.854546, 31.656443, 20.102577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845665, 32.056343, 20.103155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228826, 0.006488, -0.973446,
		-0.973214, -0.021278, -0.228913,
		-0.022198, 0.999753, 0.001445,
		39.839005, 32.356270, 20.103588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640663, 31.701065, 19.418308>,  <39.854546, 31.656443, 20.102577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640663, 31.701065, 19.418308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740765, 32.071861, 19.530066>,  <39.800827, 32.294338, 19.597120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740765, 32.071861, 19.530066>,  <39.640663, 31.701065, 19.418308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740765, 32.071861, 19.530066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430917, 0.151772, -0.889537,
		-0.866997, 0.343005, -0.361475,
		0.250253, 0.926991, 0.279392,
		39.815842, 32.349960, 19.613884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501446, 32.177773, 18.800087>,  <39.640663, 31.701065, 19.418308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501446, 32.177773, 18.800087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756260, 32.365685, 19.044540>,  <39.909149, 32.478432, 19.191212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756260, 32.365685, 19.044540>,  <39.501446, 32.177773, 18.800087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756260, 32.365685, 19.044540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510216, 0.337314, -0.791138,
		-0.577806, 0.815797, -0.024808,
		0.637040, 0.469782, 0.611134,
		39.947372, 32.506618, 19.227880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582588, 32.858856, 18.417261>,  <39.501446, 32.177773, 18.800087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582588, 32.858856, 18.417261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901695, 32.807041, 18.652813>,  <40.093159, 32.775951, 18.794144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901695, 32.807041, 18.652813>,  <39.582588, 32.858856, 18.417261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901695, 32.807041, 18.652813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586459, 0.393626, -0.707901,
		-0.140098, 0.910098, 0.389993,
		0.797771, -0.129540, 0.588882,
		40.141026, 32.768181, 18.829477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975609, 33.475197, 18.340408>,  <39.582588, 32.858856, 18.417261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975609, 33.475197, 18.340408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225235, 33.190704, 18.469835>,  <40.375011, 33.020008, 18.547491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225235, 33.190704, 18.469835>,  <39.975609, 33.475197, 18.340408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225235, 33.190704, 18.469835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712151, 0.347317, -0.610092,
		0.321537, 0.611164, 0.723252,
		0.624064, -0.711231, 0.323565,
		40.412453, 32.977337, 18.566904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573135, 33.822861, 18.471916>,  <39.975609, 33.475197, 18.340408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573135, 33.822861, 18.471916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701771, 33.445316, 18.441710>,  <40.778954, 33.218788, 18.423586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701771, 33.445316, 18.441710>,  <40.573135, 33.822861, 18.471916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701771, 33.445316, 18.441710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706163, 0.292204, -0.644942,
		0.630804, 0.154079, 0.760491,
		0.321590, -0.943863, -0.075518,
		40.798248, 33.162159, 18.419054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281075, 33.924358, 18.573563>,  <40.573135, 33.822861, 18.471916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281075, 33.924358, 18.573563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213905, 33.571907, 18.396740>,  <41.173603, 33.360435, 18.290646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213905, 33.571907, 18.396740>,  <41.281075, 33.924358, 18.573563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213905, 33.571907, 18.396740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642493, 0.242277, -0.726983,
		0.747666, -0.406098, 0.525434,
		-0.167925, -0.881128, -0.442057,
		41.163528, 33.307568, 18.264122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946190, 33.902119, 18.307735>,  <41.281075, 33.924358, 18.573563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946190, 33.902119, 18.307735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727371, 33.640232, 18.099089>,  <41.596081, 33.483101, 17.973900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727371, 33.640232, 18.099089>,  <41.946190, 33.902119, 18.307735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727371, 33.640232, 18.099089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576568, 0.157060, -0.801811,
		0.606883, -0.739379, 0.291568,
		-0.547049, -0.654715, -0.521619,
		41.563255, 33.443817, 17.942602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423851, 33.519680, 17.898037>,  <41.946190, 33.902119, 18.307735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423851, 33.519680, 17.898037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069260, 33.439419, 17.731236>,  <41.856506, 33.391262, 17.631155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069260, 33.439419, 17.731236>,  <42.423851, 33.519680, 17.898037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069260, 33.439419, 17.731236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409179, 0.081054, -0.908847,
		0.216165, -0.976303, 0.010251,
		-0.886479, -0.200655, -0.417004,
		41.803314, 33.379223, 17.606134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569618, 32.947647, 17.407766>,  <42.423851, 33.519680, 17.898037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569618, 32.947647, 17.407766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232826, 33.121593, 17.280045>,  <42.030750, 33.225960, 17.203411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232826, 33.121593, 17.280045>,  <42.569618, 32.947647, 17.407766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232826, 33.121593, 17.280045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429091, 0.181031, -0.884934,
		-0.327024, -0.882110, -0.339023,
		-0.841983, 0.434866, -0.319304,
		41.980232, 33.252052, 17.184254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482426, 32.613800, 16.768507>,  <42.569618, 32.947647, 17.407766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482426, 32.613800, 16.768507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271881, 32.953583, 16.753773>,  <42.145554, 33.157452, 16.744932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271881, 32.953583, 16.753773>,  <42.482426, 32.613800, 16.768507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271881, 32.953583, 16.753773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415095, 0.218921, -0.883046,
		-0.742048, -0.480095, -0.467839,
		-0.526366, 0.849460, -0.036836,
		42.113972, 33.208420, 16.742722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071106, 32.667797, 16.126051>,  <42.482426, 32.613800, 16.768507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071106, 32.667797, 16.126051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121101, 33.043961, 16.252542>,  <42.151096, 33.269661, 16.328438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121101, 33.043961, 16.252542>,  <42.071106, 32.667797, 16.126051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121101, 33.043961, 16.252542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523981, 0.208091, -0.825919,
		-0.842510, 0.268926, -0.466751,
		0.124984, 0.940413, 0.316231,
		42.158596, 33.326084, 16.347412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969334, 33.044044, 15.533831>,  <42.071106, 32.667797, 16.126051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969334, 33.044044, 15.533831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180267, 33.279572, 15.778847>,  <42.306828, 33.420887, 15.925857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180267, 33.279572, 15.778847>,  <41.969334, 33.044044, 15.533831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180267, 33.279572, 15.778847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558719, 0.302821, -0.772096,
		-0.640116, 0.749393, -0.169296,
		0.527337, 0.588820, 0.612541,
		42.338467, 33.456219, 15.962609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921589, 33.733204, 15.257637>,  <41.969334, 33.044044, 15.533831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921589, 33.733204, 15.257637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248386, 33.688824, 15.483987>,  <42.444466, 33.662197, 15.619797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248386, 33.688824, 15.483987>,  <41.921589, 33.733204, 15.257637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248386, 33.688824, 15.483987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558211, 0.398318, -0.727834,
		-0.144646, 0.910513, 0.387356,
		0.816993, -0.110947, 0.565874,
		42.493484, 33.655540, 15.653749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354992, 34.274734, 15.370574>,  <41.921589, 33.733204, 15.257637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354992, 34.274734, 15.370574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607792, 33.965618, 15.347367>,  <42.759472, 33.780148, 15.333444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607792, 33.965618, 15.347367>,  <42.354992, 34.274734, 15.370574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607792, 33.965618, 15.347367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437014, 0.417217, -0.796837,
		0.639996, 0.478247, 0.601402,
		0.632000, -0.772794, -0.058017,
		42.797390, 33.733780, 15.329963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488075, 34.773014, 15.842165>,  <42.354992, 34.274734, 15.370574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488075, 34.773014, 15.842165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733612, 35.086346, 15.881356>,  <42.880936, 35.274345, 15.904871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733612, 35.086346, 15.881356>,  <42.488075, 34.773014, 15.842165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733612, 35.086346, 15.881356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260425, -0.083770, -0.961853,
		-0.745237, 0.615941, -0.255419,
		0.613841, 0.783326, 0.097978,
		42.917763, 35.321342, 15.910749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247116, 35.228214, 15.355916>,  <42.488075, 34.773014, 15.842165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247116, 35.228214, 15.355916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626453, 35.316032, 15.447515>,  <42.854057, 35.368721, 15.502476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626453, 35.316032, 15.447515>,  <42.247116, 35.228214, 15.355916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626453, 35.316032, 15.447515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278672, -0.231562, -0.932052,
		-0.151597, 0.947724, -0.280781,
		0.948346, 0.219542, 0.229000,
		42.910957, 35.381893, 15.516215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601635, 35.649353, 14.882032>,  <42.247116, 35.228214, 15.355916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601635, 35.649353, 14.882032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906384, 35.438992, 15.033278>,  <43.089233, 35.312775, 15.124024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906384, 35.438992, 15.033278>,  <42.601635, 35.649353, 14.882032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906384, 35.438992, 15.033278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090170, -0.491957, -0.865937,
		0.641418, 0.693830, -0.327389,
		0.761874, -0.525907, 0.378113,
		43.134945, 35.281219, 15.146711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297615, 35.701080, 14.475018>,  <42.601635, 35.649353, 14.882032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297615, 35.701080, 14.475018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257977, 35.349335, 14.661304>,  <43.234196, 35.138287, 14.773075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257977, 35.349335, 14.661304>,  <43.297615, 35.701080, 14.475018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257977, 35.349335, 14.661304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168574, -0.476090, -0.863088,
		0.980695, -0.007018, 0.195416,
		-0.099093, -0.879369, 0.465716,
		43.228249, 35.085526, 14.801019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958885, 35.278164, 14.570637>,  <43.297615, 35.701080, 14.475018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958885, 35.278164, 14.570637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609406, 35.093971, 14.507883>,  <43.399719, 34.983456, 14.470231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609406, 35.093971, 14.507883>,  <43.958885, 35.278164, 14.570637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609406, 35.093971, 14.507883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381714, -0.448999, -0.807895,
		0.301580, -0.765739, 0.568061,
		-0.873695, -0.460481, -0.156885,
		43.347298, 34.955826, 14.460817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153076, 35.182640, 15.367675>,  <43.958885, 35.278164, 14.570637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153076, 35.182640, 15.367675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806435, 35.367157, 15.291564>,  <43.598450, 35.477867, 15.245897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806435, 35.367157, 15.291564>,  <44.153076, 35.182640, 15.367675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806435, 35.367157, 15.291564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137068, 0.146593, 0.979654,
		0.479804, 0.875052, -0.063809,
		-0.866603, 0.461296, -0.190278,
		43.546455, 35.505547, 15.234481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084743, 35.924515, 15.700698>,  <44.153076, 35.182640, 15.367675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084743, 35.924515, 15.700698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728798, 35.747169, 15.657673>,  <43.515232, 35.640762, 15.631858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728798, 35.747169, 15.657673>,  <44.084743, 35.924515, 15.700698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728798, 35.747169, 15.657673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219745, 0.209912, 0.952706,
		-0.399817, 0.871415, -0.284220,
		-0.889864, -0.443364, -0.107562,
		43.461838, 35.614159, 15.625404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611195, 36.421616, 16.036491>,  <44.084743, 35.924515, 15.700698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611195, 36.421616, 16.036491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395157, 36.088135, 15.990479>,  <43.265533, 35.888046, 15.962872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395157, 36.088135, 15.990479>,  <43.611195, 36.421616, 16.036491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395157, 36.088135, 15.990479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292985, 0.058127, 0.954348,
		-0.788958, 0.549143, -0.275658,
		-0.540097, -0.833704, -0.115031,
		43.233128, 35.838024, 15.955969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982006, 36.584591, 16.392963>,  <43.611195, 36.421616, 16.036491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982006, 36.584591, 16.392963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953213, 36.186371, 16.368633>,  <42.935936, 35.947437, 16.354034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953213, 36.186371, 16.368633>,  <42.982006, 36.584591, 16.392963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953213, 36.186371, 16.368633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488968, -0.017931, 0.872117,
		-0.869327, 0.092519, -0.485501,
		-0.071982, -0.995549, -0.060827,
		42.931618, 35.887707, 16.350386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300068, 36.458946, 16.613207>,  <42.982006, 36.584591, 16.392963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300068, 36.458946, 16.613207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529392, 36.136539, 16.672064>,  <42.666988, 35.943096, 16.707378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529392, 36.136539, 16.672064>,  <42.300068, 36.458946, 16.613207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529392, 36.136539, 16.672064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471624, -0.177793, 0.863690,
		-0.669988, -0.564559, -0.482068,
		0.573312, -0.806017, 0.147140,
		42.701385, 35.894733, 16.716206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748936, 35.955917, 16.825642>,  <42.300068, 36.458946, 16.613207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748936, 35.955917, 16.825642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120506, 35.837624, 16.914761>,  <42.343449, 35.766647, 16.968231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120506, 35.837624, 16.914761>,  <41.748936, 35.955917, 16.825642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120506, 35.837624, 16.914761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296745, -0.234744, 0.925655,
		-0.221425, -0.925986, -0.305812,
		0.928931, -0.295711, 0.222804,
		42.399185, 35.748905, 16.981600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560955, 35.305561, 17.072865>,  <41.748936, 35.955917, 16.825642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560955, 35.305561, 17.072865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912746, 35.417110, 17.227139>,  <42.123821, 35.484039, 17.319702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912746, 35.417110, 17.227139>,  <41.560955, 35.305561, 17.072865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912746, 35.417110, 17.227139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319195, -0.255492, 0.912600,
		0.353043, -0.925717, -0.135683,
		0.879475, 0.278877, 0.385684,
		42.176590, 35.500774, 17.342844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876293, 34.689766, 17.549471>,  <41.560955, 35.305561, 17.072865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876293, 34.689766, 17.549471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015549, 35.043221, 17.674686>,  <42.099102, 35.255291, 17.749815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015549, 35.043221, 17.674686>,  <41.876293, 34.689766, 17.549471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015549, 35.043221, 17.674686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263812, -0.228085, 0.937220,
		0.899558, -0.408864, 0.153708,
		0.348136, 0.883633, 0.313039,
		42.119991, 35.308311, 17.768599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289001, 34.518551, 18.097174>,  <41.876293, 34.689766, 17.549471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289001, 34.518551, 18.097174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227104, 34.910709, 18.145954>,  <42.189964, 35.146004, 18.175222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227104, 34.910709, 18.145954>,  <42.289001, 34.518551, 18.097174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227104, 34.910709, 18.145954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158462, -0.146468, 0.976441,
		0.975163, 0.131777, 0.178021,
		-0.154747, 0.980399, 0.121949,
		42.180679, 35.204830, 18.182539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594238, 34.676014, 18.689058>,  <42.289001, 34.518551, 18.097174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594238, 34.676014, 18.689058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349289, 34.987534, 18.634699>,  <42.202320, 35.174446, 18.602083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349289, 34.987534, 18.634699>,  <42.594238, 34.676014, 18.689058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349289, 34.987534, 18.634699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325845, -0.092023, 0.940934,
		0.720292, 0.620488, 0.310120,
		-0.612377, 0.778798, -0.135899,
		42.165577, 35.221172, 18.593929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793564, 35.115040, 19.216036>,  <42.594238, 34.676014, 18.689058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793564, 35.115040, 19.216036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424606, 35.221287, 19.103863>,  <42.203232, 35.285034, 19.036558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424606, 35.221287, 19.103863>,  <42.793564, 35.115040, 19.216036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424606, 35.221287, 19.103863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303539, -0.049462, 0.951534,
		0.238873, 0.962809, 0.126248,
		-0.922390, 0.265617, -0.280435,
		42.147888, 35.300972, 19.019732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481670, 35.547131, 19.736652>,  <42.793564, 35.115040, 19.216036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481670, 35.547131, 19.736652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140411, 35.460678, 19.546734>,  <41.935658, 35.408806, 19.432783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140411, 35.460678, 19.546734>,  <42.481670, 35.547131, 19.736652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140411, 35.460678, 19.546734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491451, 0.027698, 0.870464,
		-0.174980, 0.975972, -0.129847,
		-0.853146, -0.216127, -0.474796,
		41.884468, 35.395840, 19.404295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062847, 35.942329, 20.085093>,  <42.481670, 35.547131, 19.736652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062847, 35.942329, 20.085093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810455, 35.685467, 19.910963>,  <41.659019, 35.531349, 19.806486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810455, 35.685467, 19.910963>,  <42.062847, 35.942329, 20.085093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810455, 35.685467, 19.910963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641820, 0.116857, 0.757900,
		-0.435818, 0.757616, -0.485882,
		-0.630976, -0.642154, -0.435324,
		41.621162, 35.492821, 19.780365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337868, 36.179436, 20.298737>,  <42.062847, 35.942329, 20.085093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337868, 36.179436, 20.298737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305008, 35.804394, 20.163595>,  <41.285290, 35.579369, 20.082510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305008, 35.804394, 20.163595>,  <41.337868, 36.179436, 20.298737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305008, 35.804394, 20.163595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614106, -0.219372, 0.758123,
		-0.784936, 0.269760, -0.557767,
		-0.082153, -0.937606, -0.337854,
		41.280361, 35.523113, 20.062239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603195, 36.063343, 20.186457>,  <41.337868, 36.179436, 20.298737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603195, 36.063343, 20.186457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812893, 35.731083, 20.261497>,  <40.938713, 35.531727, 20.306522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812893, 35.731083, 20.261497>,  <40.603195, 36.063343, 20.186457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812893, 35.731083, 20.261497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588614, -0.194258, 0.784728,
		-0.615388, -0.521813, -0.590769,
		0.524243, -0.830647, 0.187603,
		40.970165, 35.481888, 20.317778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116714, 35.504150, 20.223562>,  <40.603195, 36.063343, 20.186457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116714, 35.504150, 20.223562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440598, 35.405563, 20.436588>,  <40.634926, 35.346409, 20.564404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440598, 35.405563, 20.436588>,  <40.116714, 35.504150, 20.223562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440598, 35.405563, 20.436588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586607, -0.365147, 0.722883,
		0.016295, -0.897731, -0.440243,
		0.809708, -0.246470, 0.532565,
		40.683510, 35.331623, 20.596357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957882, 34.877457, 20.500164>,  <40.116714, 35.504150, 20.223562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957882, 34.877457, 20.500164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266651, 35.016762, 20.712896>,  <40.451912, 35.100346, 20.840536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266651, 35.016762, 20.712896>,  <39.957882, 34.877457, 20.500164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266651, 35.016762, 20.712896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488463, -0.210488, 0.846817,
		0.406856, -0.913460, 0.007631,
		0.771927, 0.348260, 0.531830,
		40.498230, 35.121239, 20.872446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142948, 34.384628, 21.136911>,  <39.957882, 34.877457, 20.500164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142948, 34.384628, 21.136911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289623, 34.752045, 21.195990>,  <40.377628, 34.972496, 21.231436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289623, 34.752045, 21.195990>,  <40.142948, 34.384628, 21.136911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289623, 34.752045, 21.195990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442931, 0.032758, 0.895957,
		0.818139, -0.393956, 0.418864,
		0.366689, 0.918546, 0.147694,
		40.399632, 35.027607, 21.240297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387859, 34.551105, 21.780111>,  <40.142948, 34.384628, 21.136911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387859, 34.551105, 21.780111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309441, 34.933968, 21.694866>,  <40.262390, 35.163685, 21.643719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309441, 34.933968, 21.694866>,  <40.387859, 34.551105, 21.780111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309441, 34.933968, 21.694866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375526, 0.127480, 0.918003,
		0.905840, 0.260000, 0.334445,
		-0.196045, 0.957157, -0.213113,
		40.250626, 35.221115, 21.630932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378452, 34.970715, 22.426390>,  <40.387859, 34.551105, 21.780111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378452, 34.970715, 22.426390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188618, 35.227692, 22.185709>,  <40.074718, 35.381878, 22.041302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188618, 35.227692, 22.185709>,  <40.378452, 34.970715, 22.426390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188618, 35.227692, 22.185709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589963, 0.275149, 0.759103,
		0.653234, 0.715239, 0.248434,
		-0.474584, 0.642438, -0.601701,
		40.046242, 35.420422, 22.005199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283478, 35.545876, 22.756432>,  <40.378452, 34.970715, 22.426390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283478, 35.545876, 22.756432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014103, 35.582375, 22.462996>,  <39.852478, 35.604275, 22.286934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014103, 35.582375, 22.462996>,  <40.283478, 35.545876, 22.756432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014103, 35.582375, 22.462996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702334, 0.230662, 0.673440,
		0.230662, 0.968746, -0.091249,
		-0.673440, 0.091249, -0.733588,
		39.812073, 35.609749, 22.242920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817879, 36.122070, 22.979769>,  <40.283478, 35.545876, 22.756432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817879, 36.122070, 22.979769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616844, 35.878075, 22.734715>,  <39.496223, 35.731678, 22.587683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616844, 35.878075, 22.734715>,  <39.817879, 36.122070, 22.979769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616844, 35.878075, 22.734715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806715, 0.076121, 0.586017,
		-0.310828, 0.788748, -0.530342,
		-0.502590, -0.609986, -0.612634,
		39.466068, 35.695080, 22.550924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279980, 36.486397, 22.838186>,  <39.817879, 36.122070, 22.979769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279980, 36.486397, 22.838186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174068, 36.114220, 22.736862>,  <39.110523, 35.890915, 22.676067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174068, 36.114220, 22.736862>,  <39.279980, 36.486397, 22.838186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174068, 36.114220, 22.736862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834718, 0.089615, 0.543338,
		-0.482844, 0.355309, -0.800386,
		-0.264779, -0.930443, -0.253313,
		39.094635, 35.835087, 22.660868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560795, 36.508446, 22.555202>,  <39.279980, 36.486397, 22.838186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560795, 36.508446, 22.555202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610588, 36.141727, 22.706991>,  <38.640465, 35.921696, 22.798063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610588, 36.141727, 22.706991>,  <38.560795, 36.508446, 22.555202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610588, 36.141727, 22.706991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893888, 0.062375, 0.443929,
		-0.430660, -0.394465, -0.811745,
		0.124482, -0.916791, 0.379470,
		38.647934, 35.866692, 22.820831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923809, 36.336201, 22.597296>,  <38.560795, 36.508446, 22.555202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923809, 36.336201, 22.597296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092140, 36.028557, 22.789703>,  <38.193138, 35.843971, 22.905148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092140, 36.028557, 22.789703>,  <37.923809, 36.336201, 22.597296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092140, 36.028557, 22.789703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849132, -0.147401, 0.507196,
		-0.319187, -0.621888, -0.715105,
		0.420827, -0.769108, 0.481017,
		38.218388, 35.797825, 22.934010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319351, 35.926243, 22.963232>,  <37.923809, 36.336201, 22.597296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319351, 35.926243, 22.963232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658520, 35.817081, 23.145025>,  <37.862022, 35.751587, 23.254101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658520, 35.817081, 23.145025>,  <37.319351, 35.926243, 22.963232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658520, 35.817081, 23.145025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452327, 0.074650, 0.888722,
		-0.276460, -0.959142, -0.060143,
		0.847921, -0.272900, 0.454484,
		37.912895, 35.735210, 23.281370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050472, 35.602848, 23.533220>,  <37.319351, 35.926243, 22.963232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050472, 35.602848, 23.533220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417297, 35.724003, 23.636955>,  <37.637390, 35.796696, 23.699196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417297, 35.724003, 23.636955>,  <37.050472, 35.602848, 23.533220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417297, 35.724003, 23.636955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360871, 0.353775, 0.862911,
		0.169619, -0.884930, 0.433737,
		0.917062, 0.302890, 0.259339,
		37.692417, 35.814869, 23.714756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151695, 35.267147, 24.226622>,  <37.050472, 35.602848, 23.533220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151695, 35.267147, 24.226622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380333, 35.591831, 24.178616>,  <37.517513, 35.786644, 24.149813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380333, 35.591831, 24.178616>,  <37.151695, 35.267147, 24.226622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380333, 35.591831, 24.178616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259165, 0.317371, 0.912200,
		0.778536, -0.490300, 0.391774,
		0.571590, 0.811715, -0.120016,
		37.551811, 35.835346, 24.142611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483921, 35.366943, 24.948015>,  <37.151695, 35.267147, 24.226622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483921, 35.366943, 24.948015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528065, 35.711662, 24.749973>,  <37.554550, 35.918491, 24.631147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528065, 35.711662, 24.749973>,  <37.483921, 35.366943, 24.948015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528065, 35.711662, 24.749973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204860, 0.507177, 0.837140,
		0.972549, 0.009038, 0.232521,
		0.110363, 0.861794, -0.495107,
		37.561172, 35.970200, 24.601440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810951, 35.741207, 25.418491>,  <37.483921, 35.366943, 24.948015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810951, 35.741207, 25.418491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672199, 36.030270, 25.179344>,  <37.588947, 36.203705, 25.035856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672199, 36.030270, 25.179344>,  <37.810951, 35.741207, 25.418491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672199, 36.030270, 25.179344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302136, 0.517369, 0.800652,
		0.887912, 0.458367, 0.038875,
		-0.346880, 0.722654, -0.597867,
		37.568134, 36.247066, 24.999985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129280, 36.366901, 25.625090>,  <37.810951, 35.741207, 25.418491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129280, 36.366901, 25.625090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757706, 36.374199, 25.477173>,  <37.534760, 36.378578, 25.388422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757706, 36.374199, 25.477173>,  <38.129280, 36.366901, 25.625090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757706, 36.374199, 25.477173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324651, 0.440027, 0.837245,
		0.177996, 0.897799, -0.402833,
		-0.928935, 0.018246, -0.369794,
		37.479027, 36.379673, 25.366234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797443, 36.766338, 26.105850>,  <38.129280, 36.366901, 25.625090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797443, 36.766338, 26.105850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486061, 36.664520, 25.876343>,  <37.299232, 36.603428, 25.738638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486061, 36.664520, 25.876343>,  <37.797443, 36.766338, 26.105850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486061, 36.664520, 25.876343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627696, 0.318352, 0.710387,
		0.001832, 0.913158, -0.407602,
		-0.778457, -0.254549, -0.573768,
		37.252525, 36.588154, 25.704212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344582, 37.369579, 26.174629>,  <37.797443, 36.766338, 26.105850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344582, 37.369579, 26.174629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121021, 37.062637, 26.048901>,  <36.986885, 36.878471, 25.973463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121021, 37.062637, 26.048901>,  <37.344582, 37.369579, 26.174629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121021, 37.062637, 26.048901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686311, 0.215304, 0.694709,
		-0.465416, 0.603992, -0.646979,
		-0.558896, -0.767358, -0.314321,
		36.953354, 36.832432, 25.954605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672558, 37.637283, 26.146990>,  <37.344582, 37.369579, 26.174629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672558, 37.637283, 26.146990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665066, 37.237640, 26.162136>,  <36.660572, 36.997856, 26.171223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665066, 37.237640, 26.162136>,  <36.672558, 37.637283, 26.146990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665066, 37.237640, 26.162136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712948, 0.039896, 0.700082,
		-0.700967, -0.013884, -0.713058,
		-0.018728, -0.999107, 0.037864,
		36.659447, 36.937908, 26.173496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996681, 37.430367, 26.168604>,  <36.672558, 37.637283, 26.146990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996681, 37.430367, 26.168604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170147, 37.090527, 26.288685>,  <36.274227, 36.886623, 26.360733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170147, 37.090527, 26.288685>,  <35.996681, 37.430367, 26.168604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170147, 37.090527, 26.288685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810834, -0.222613, 0.541288,
		-0.393047, -0.478152, -0.785420,
		0.433662, -0.849597, 0.300204,
		36.300247, 36.835648, 26.378746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428814, 36.978588, 26.367929>,  <35.996681, 37.430367, 26.168604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428814, 36.978588, 26.367929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728333, 36.808125, 26.570980>,  <35.908043, 36.705845, 26.692810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728333, 36.808125, 26.570980>,  <35.428814, 36.978588, 26.367929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728333, 36.808125, 26.570980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625481, -0.200993, 0.753907,
		-0.219255, -0.882037, -0.417059,
		0.748800, -0.426160, 0.507628,
		35.952972, 36.680275, 26.723269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162777, 36.352089, 26.655359>,  <35.428814, 36.978588, 26.367929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162777, 36.352089, 26.655359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482361, 36.420410, 26.886007>,  <35.674110, 36.461403, 27.024397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482361, 36.420410, 26.886007>,  <35.162777, 36.352089, 26.655359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482361, 36.420410, 26.886007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469425, -0.422198, 0.775492,
		0.375906, -0.890267, -0.257139,
		0.798958, 0.170805, 0.576620,
		35.722050, 36.471653, 27.058994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292965, 35.746887, 27.088264>,  <35.162777, 36.352089, 26.655359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292965, 35.746887, 27.088264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481129, 36.051067, 27.267345>,  <35.594028, 36.233574, 27.374794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481129, 36.051067, 27.267345>,  <35.292965, 35.746887, 27.088264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481129, 36.051067, 27.267345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346822, -0.307193, 0.886198,
		0.811436, -0.572149, 0.119233,
		0.470410, 0.760446, 0.447701,
		35.622253, 36.279202, 27.401655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672714, 35.452656, 27.646082>,  <35.292965, 35.746887, 27.088264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672714, 35.452656, 27.646082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644394, 35.843185, 27.727835>,  <35.627403, 36.077503, 27.776886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644394, 35.843185, 27.727835>,  <35.672714, 35.452656, 27.646082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644394, 35.843185, 27.727835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234079, -0.215439, 0.948047,
		0.969636, 0.019282, 0.243791,
		-0.070802, 0.976327, 0.204384,
		35.623154, 36.136082, 27.789150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914734, 35.444237, 28.371706>,  <35.672714, 35.452656, 27.646082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914734, 35.444237, 28.371706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736439, 35.793617, 28.293312>,  <35.629463, 36.003246, 28.246275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736439, 35.793617, 28.293312>,  <35.914734, 35.444237, 28.371706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736439, 35.793617, 28.293312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279693, 0.072088, 0.957379,
		0.850348, 0.481554, 0.212164,
		-0.445735, 0.873447, -0.195987,
		35.602718, 36.055653, 28.234516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227882, 35.883621, 28.823092>,  <35.914734, 35.444237, 28.371706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227882, 35.883621, 28.823092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889637, 36.069828, 28.718607>,  <35.686691, 36.181553, 28.655916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889637, 36.069828, 28.718607>,  <36.227882, 35.883621, 28.823092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889637, 36.069828, 28.718607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214891, 0.151066, 0.964884,
		0.488629, 0.872051, -0.027708,
		-0.845614, 0.465516, -0.261211,
		35.635952, 36.209484, 28.640244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133400, 36.487782, 29.247877>,  <36.227882, 35.883621, 28.823092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133400, 36.487782, 29.247877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768551, 36.376892, 29.127096>,  <35.549641, 36.310360, 29.054628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768551, 36.376892, 29.127096>,  <36.133400, 36.487782, 29.247877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768551, 36.376892, 29.127096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327352, 0.049270, 0.943617,
		-0.246713, 0.959542, -0.135689,
		-0.912125, -0.277221, -0.301953,
		35.494915, 36.293724, 29.036510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608803, 37.071571, 29.220390>,  <36.133400, 36.487782, 29.247877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608803, 37.071571, 29.220390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831242, 36.971882, 29.537539>,  <36.964706, 36.912067, 29.727827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831242, 36.971882, 29.537539>,  <36.608803, 37.071571, 29.220390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831242, 36.971882, 29.537539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778072, -0.179238, -0.602061,
		0.292162, 0.951714, 0.094243,
		0.556098, -0.249227, 0.792869,
		36.998070, 36.897114, 29.775398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225006, 37.522594, 29.281658>,  <36.608803, 37.071571, 29.220390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225006, 37.522594, 29.281658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313705, 37.171356, 29.451260>,  <37.366924, 36.960613, 29.553020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313705, 37.171356, 29.451260>,  <37.225006, 37.522594, 29.281658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313705, 37.171356, 29.451260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850749, -0.038263, -0.524177,
		0.476501, 0.476955, 0.738553,
		0.221750, -0.878094, 0.424001,
		37.380230, 36.907928, 29.578461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986874, 37.582611, 29.377319>,  <37.225006, 37.522594, 29.281658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986874, 37.582611, 29.377319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871147, 37.204342, 29.436636>,  <37.801712, 36.977379, 29.472225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871147, 37.204342, 29.436636>,  <37.986874, 37.582611, 29.377319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871147, 37.204342, 29.436636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772574, -0.322157, -0.547123,
		0.565174, -0.043728, 0.823812,
		-0.289321, -0.945676, 0.148292,
		37.784351, 36.920639, 29.481123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602776, 37.257065, 29.581297>,  <37.986874, 37.582611, 29.377319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602776, 37.257065, 29.581297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370480, 36.964149, 29.439032>,  <38.231102, 36.788399, 29.353672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370480, 36.964149, 29.439032>,  <38.602776, 37.257065, 29.581297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370480, 36.964149, 29.439032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793914, -0.412786, -0.446438,
		0.180110, -0.541629, 0.821095,
		-0.580741, -0.732288, -0.355661,
		38.196259, 36.744465, 29.332333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970348, 36.587635, 29.655287>,  <38.602776, 37.257065, 29.581297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970348, 36.587635, 29.655287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688480, 36.528355, 29.377731>,  <38.519360, 36.492786, 29.211199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688480, 36.528355, 29.377731>,  <38.970348, 36.587635, 29.655287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688480, 36.528355, 29.377731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670645, -0.458444, -0.583150,
		-0.231686, -0.876279, 0.422441,
		-0.704668, -0.148200, -0.693887,
		38.477081, 36.483894, 29.169565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985130, 35.862854, 29.525339>,  <38.970348, 36.587635, 29.655287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985130, 35.862854, 29.525339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808823, 36.015804, 29.200499>,  <38.703037, 36.107574, 29.005594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808823, 36.015804, 29.200499>,  <38.985130, 35.862854, 29.525339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808823, 36.015804, 29.200499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610334, -0.535732, -0.583510,
		-0.658189, -0.752848, 0.002758,
		-0.440771, 0.382377, -0.812101,
		38.676590, 36.130516, 28.956867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854729, 35.271870, 28.965990>,  <38.985130, 35.862854, 29.525339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854729, 35.271870, 28.965990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824482, 35.622959, 28.776724>,  <38.806332, 35.833614, 28.663164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824482, 35.622959, 28.776724>,  <38.854729, 35.271870, 28.965990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824482, 35.622959, 28.776724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486786, -0.381639, -0.785742,
		-0.870242, -0.289748, -0.398404,
		-0.075621, 0.877723, -0.473163,
		38.801796, 35.886276, 28.634775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781231, 35.104046, 28.281517>,  <38.854729, 35.271870, 28.965990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781231, 35.104046, 28.281517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883892, 35.489685, 28.254240>,  <38.945488, 35.721069, 28.237875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883892, 35.489685, 28.254240>,  <38.781231, 35.104046, 28.281517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883892, 35.489685, 28.254240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590581, -0.212289, -0.778555,
		-0.765077, 0.159548, -0.623860,
		0.256655, 0.964094, -0.068191,
		38.960888, 35.778912, 28.233782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991585, 35.151974, 27.586012>,  <38.781231, 35.104046, 28.281517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991585, 35.151974, 27.586012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132267, 35.492966, 27.740713>,  <39.216675, 35.697563, 27.833534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132267, 35.492966, 27.740713>,  <38.991585, 35.151974, 27.586012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132267, 35.492966, 27.740713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710895, 0.025575, -0.702833,
		-0.609044, 0.522129, -0.597031,
		0.351701, 0.852483, 0.386755,
		39.237778, 35.748711, 27.856739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181595, 35.552677, 27.031569>,  <38.991585, 35.151974, 27.586012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181595, 35.552677, 27.031569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386040, 35.725315, 27.328888>,  <39.508705, 35.828899, 27.507280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386040, 35.725315, 27.328888>,  <39.181595, 35.552677, 27.031569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386040, 35.725315, 27.328888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796088, 0.088334, -0.598699,
		-0.324055, 0.897731, -0.298441,
		0.511108, 0.431597, 0.743298,
		39.539371, 35.854794, 27.551878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372368, 36.166058, 26.686529>,  <39.181595, 35.552677, 27.031569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372368, 36.166058, 26.686529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636604, 36.143471, 26.985977>,  <39.795147, 36.129917, 27.165646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636604, 36.143471, 26.985977>,  <39.372368, 36.166058, 26.686529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636604, 36.143471, 26.985977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744998, 0.172448, -0.644391,
		-0.092711, 0.983399, 0.155986,
		0.660592, -0.056467, 0.748618,
		39.834782, 36.126530, 27.210562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755199, 36.641075, 26.689760>,  <39.372368, 36.166058, 26.686529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755199, 36.641075, 26.689760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988113, 36.375969, 26.878094>,  <40.127861, 36.216908, 26.991095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988113, 36.375969, 26.878094>,  <39.755199, 36.641075, 26.689760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988113, 36.375969, 26.878094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683357, 0.085271, -0.725088,
		0.440413, 0.743959, 0.502556,
		0.582289, -0.662763, 0.470835,
		40.162800, 36.177139, 27.019344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473999, 36.835419, 26.700483>,  <39.755199, 36.641075, 26.689760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473999, 36.835419, 26.700483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482834, 36.438309, 26.747671>,  <40.488136, 36.200043, 26.775984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482834, 36.438309, 26.747671>,  <40.473999, 36.835419, 26.700483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482834, 36.438309, 26.747671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770329, -0.058313, -0.634975,
		0.637264, 0.104902, 0.763473,
		0.022090, -0.992771, 0.117969,
		40.489460, 36.140476, 26.783062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193645, 36.718281, 26.481043>,  <40.473999, 36.835419, 26.700483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193645, 36.718281, 26.481043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067421, 36.341766, 26.529051>,  <40.991684, 36.115860, 26.557856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067421, 36.341766, 26.529051>,  <41.193645, 36.718281, 26.481043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067421, 36.341766, 26.529051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648352, -0.306236, -0.697036,
		0.692863, -0.142143, 0.706920,
		-0.315563, -0.941284, 0.120021,
		40.972752, 36.059380, 26.565058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816051, 36.225422, 26.564238>,  <41.193645, 36.718281, 26.481043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816051, 36.225422, 26.564238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496513, 36.025864, 26.429802>,  <41.304790, 35.906128, 26.349140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496513, 36.025864, 26.429802>,  <41.816051, 36.225422, 26.564238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496513, 36.025864, 26.429802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509159, -0.263267, -0.819419,
		0.320323, -0.825709, 0.464326,
		-0.798843, -0.498894, -0.336087,
		41.256859, 35.876194, 26.328976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039215, 35.575344, 26.372768>,  <41.816051, 36.225422, 26.564238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039215, 35.575344, 26.372768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696484, 35.634983, 26.175337>,  <41.490845, 35.670765, 26.056877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696484, 35.634983, 26.175337>,  <42.039215, 35.575344, 26.372768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696484, 35.634983, 26.175337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459627, -0.212934, -0.862207,
		-0.233646, -0.965625, 0.113922,
		-0.856827, 0.149089, -0.493579,
		41.439438, 35.679710, 26.027264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914822, 35.030453, 25.943069>,  <42.039215, 35.575344, 26.372768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914822, 35.030453, 25.943069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675713, 35.293491, 25.759666>,  <41.532246, 35.451317, 25.649624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675713, 35.293491, 25.759666>,  <41.914822, 35.030453, 25.943069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675713, 35.293491, 25.759666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263113, -0.379326, -0.887064,
		-0.757258, -0.650902, 0.053727,
		-0.597772, 0.657600, -0.458509,
		41.496380, 35.490772, 25.622114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618710, 34.644135, 25.420753>,  <41.914822, 35.030453, 25.943069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618710, 34.644135, 25.420753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572742, 35.027092, 25.314781>,  <41.545162, 35.256866, 25.251198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572742, 35.027092, 25.314781>,  <41.618710, 34.644135, 25.420753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572742, 35.027092, 25.314781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118691, -0.251555, -0.960538,
		-0.986259, -0.141831, -0.084725,
		-0.114921, 0.957395, -0.264932,
		41.538265, 35.314312, 25.235302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141270, 34.742249, 24.816059>,  <41.618710, 34.644135, 25.420753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141270, 34.742249, 24.816059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353859, 35.081001, 24.808908>,  <41.481415, 35.284252, 24.804619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353859, 35.081001, 24.808908>,  <41.141270, 34.742249, 24.816059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353859, 35.081001, 24.808908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153433, -0.117002, -0.981208,
		-0.833061, 0.518746, -0.192124,
		0.531477, 0.846884, -0.017876,
		41.513302, 35.335068, 24.803545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917645, 35.082294, 24.284365>,  <41.141270, 34.742249, 24.816059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917645, 35.082294, 24.284365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283009, 35.234024, 24.343422>,  <41.502228, 35.325062, 24.378857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283009, 35.234024, 24.343422>,  <40.917645, 35.082294, 24.284365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283009, 35.234024, 24.343422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238291, -0.204248, -0.949474,
		-0.330002, 0.902439, -0.276951,
		0.913409, 0.379323, 0.147641,
		41.557030, 35.347820, 24.387714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987705, 35.508991, 23.668459>,  <40.917645, 35.082294, 24.284365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987705, 35.508991, 23.668459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346424, 35.421032, 23.822031>,  <41.561657, 35.368256, 23.914173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346424, 35.421032, 23.822031>,  <40.987705, 35.508991, 23.668459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346424, 35.421032, 23.822031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385937, -0.035537, -0.921840,
		0.216355, 0.974875, 0.052997,
		0.896796, -0.219898, 0.383929,
		41.615463, 35.355064, 23.937210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608601, 35.966614, 23.361872>,  <40.987705, 35.508991, 23.668459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608601, 35.966614, 23.361872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779736, 35.635834, 23.507807>,  <41.882416, 35.437366, 23.595367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779736, 35.635834, 23.507807>,  <41.608601, 35.966614, 23.361872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779736, 35.635834, 23.507807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558866, -0.075208, -0.825840,
		0.710370, 0.557218, 0.429980,
		0.427835, -0.826954, 0.364836,
		41.908085, 35.387749, 23.617258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294128, 36.009716, 23.189726>,  <41.608601, 35.966614, 23.361872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294128, 36.009716, 23.189726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223564, 35.621033, 23.252544>,  <42.181225, 35.387821, 23.290236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223564, 35.621033, 23.252544>,  <42.294128, 36.009716, 23.189726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223564, 35.621033, 23.252544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397906, -0.216330, -0.891556,
		0.900306, -0.094791, 0.424811,
		-0.176411, -0.971708, 0.157045,
		42.170639, 35.329521, 23.299658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877552, 35.677593, 23.032881>,  <42.294128, 36.009716, 23.189726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877552, 35.677593, 23.032881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596703, 35.392902, 23.024248>,  <42.428192, 35.222088, 23.019068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596703, 35.392902, 23.024248>,  <42.877552, 35.677593, 23.032881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596703, 35.392902, 23.024248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348617, -0.317166, -0.881970,
		0.620880, -0.626775, 0.470810,
		-0.702122, -0.711730, -0.021582,
		42.386066, 35.179382, 23.017773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297413, 35.177807, 22.711462>,  <42.877552, 35.677593, 23.032881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297413, 35.177807, 22.711462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916767, 35.059673, 22.677496>,  <42.688381, 34.988792, 22.657116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916767, 35.059673, 22.677496>,  <43.297413, 35.177807, 22.711462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916767, 35.059673, 22.677496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184754, -0.329047, -0.926064,
		0.245559, -0.896942, 0.367690,
		-0.951613, -0.295335, -0.084914,
		42.631283, 34.971073, 22.652021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333889, 34.440098, 22.600292>,  <43.297413, 35.177807, 22.711462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333889, 34.440098, 22.600292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987457, 34.544472, 22.429733>,  <42.779598, 34.607094, 22.327398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987457, 34.544472, 22.429733>,  <43.333889, 34.440098, 22.600292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987457, 34.544472, 22.429733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256166, -0.500810, -0.826782,
		-0.429274, -0.825291, 0.366903,
		-0.866085, 0.260928, -0.426396,
		42.727631, 34.622749, 22.301815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016666, 33.856365, 22.275167>,  <43.333889, 34.440098, 22.600292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016666, 33.856365, 22.275167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864468, 34.178596, 22.093498>,  <42.773148, 34.371933, 21.984497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864468, 34.178596, 22.093498>,  <43.016666, 33.856365, 22.275167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864468, 34.178596, 22.093498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062377, -0.467640, -0.881716,
		-0.922677, -0.363818, 0.127685,
		-0.380495, 0.805574, -0.454174,
		42.750320, 34.420269, 21.957247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621429, 33.608459, 21.833008>,  <43.016666, 33.856365, 22.275167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621429, 33.608459, 21.833008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664444, 33.974476, 21.677505>,  <42.690254, 34.194088, 21.584204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664444, 33.974476, 21.677505>,  <42.621429, 33.608459, 21.833008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664444, 33.974476, 21.677505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011989, -0.392190, -0.919806,
		-0.994128, 0.094254, -0.053147,
		0.107539, 0.915043, -0.388757,
		42.696705, 34.248989, 21.560879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320446, 33.494209, 21.168804>,  <42.621429, 33.608459, 21.833008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320446, 33.494209, 21.168804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522285, 33.838219, 21.138510>,  <42.643391, 34.044624, 21.120333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522285, 33.838219, 21.138510>,  <42.320446, 33.494209, 21.168804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522285, 33.838219, 21.138510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319383, -0.267445, -0.909103,
		-0.802107, 0.434543, -0.409630,
		0.504598, 0.860026, -0.075734,
		42.673664, 34.096226, 21.115789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220345, 33.621662, 20.550241>,  <42.320446, 33.494209, 21.168804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220345, 33.621662, 20.550241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527924, 33.854877, 20.655157>,  <42.712471, 33.994804, 20.718107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527924, 33.854877, 20.655157>,  <42.220345, 33.621662, 20.550241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527924, 33.854877, 20.655157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461013, -0.221430, -0.859323,
		-0.442937, 0.781690, -0.439054,
		0.768943, 0.583035, 0.262289,
		42.758606, 34.029789, 20.733845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419006, 33.903687, 19.965965>,  <42.220345, 33.621662, 20.550241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419006, 33.903687, 19.965965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746349, 33.973953, 20.184845>,  <42.942757, 34.016113, 20.316174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746349, 33.973953, 20.184845>,  <42.419006, 33.903687, 19.965965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746349, 33.973953, 20.184845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567144, -0.092917, -0.818360,
		-0.092917, 0.980054, -0.175670,
		0.818360, 0.175670, 0.547199,
		42.991856, 34.026653, 20.349005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856438, 34.441010, 19.664972>,  <42.419006, 33.903687, 19.965965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856438, 34.441010, 19.664972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118710, 34.216675, 19.867176>,  <43.276073, 34.082073, 19.988499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118710, 34.216675, 19.867176>,  <42.856438, 34.441010, 19.664972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118710, 34.216675, 19.867176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529208, -0.136171, -0.837494,
		0.538537, 0.816648, 0.207517,
		0.655680, -0.560841, 0.505510,
		43.315414, 34.048424, 20.018829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427792, 34.589108, 19.471701>,  <42.856438, 34.441010, 19.664972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427792, 34.589108, 19.471701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538773, 34.238846, 19.629818>,  <43.605362, 34.028690, 19.724688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538773, 34.238846, 19.629818>,  <43.427792, 34.589108, 19.471701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538773, 34.238846, 19.629818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598763, -0.164166, -0.783921,
		0.751336, 0.454185, 0.478760,
		0.277449, -0.875652, 0.395293,
		43.622005, 33.976151, 19.748405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171768, 34.617188, 19.363159>,  <43.427792, 34.589108, 19.471701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171768, 34.617188, 19.363159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085033, 34.238991, 19.460335>,  <44.032993, 34.012074, 19.518641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085033, 34.238991, 19.460335>,  <44.171768, 34.617188, 19.363159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085033, 34.238991, 19.460335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786946, -0.316559, -0.529628,
		0.577665, 0.076335, 0.812696,
		-0.216838, -0.945496, 0.242937,
		44.019981, 33.955341, 19.533216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803566, 34.370152, 19.371916>,  <44.171768, 34.617188, 19.363159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803566, 34.370152, 19.371916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590290, 34.031757, 19.371021>,  <44.462322, 33.828720, 19.370483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590290, 34.031757, 19.371021>,  <44.803566, 34.370152, 19.371916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590290, 34.031757, 19.371021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706059, -0.443541, -0.552044,
		0.466031, -0.295927, 0.833812,
		-0.533194, -0.845990, -0.002238,
		44.430332, 33.777962, 19.370350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282207, 33.906952, 19.531569>,  <44.803566, 34.370152, 19.371916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282207, 33.906952, 19.531569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978111, 33.701260, 19.372778>,  <44.795654, 33.577843, 19.277504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978111, 33.701260, 19.372778>,  <45.282207, 33.906952, 19.531569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978111, 33.701260, 19.372778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649275, -0.581084, -0.490697,
		0.021654, -0.630798, 0.775645,
		-0.760245, -0.514233, -0.396978,
		44.750038, 33.546989, 19.253685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395786, 33.213894, 19.633139>,  <45.282207, 33.906952, 19.531569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395786, 33.213894, 19.633139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163174, 33.235661, 19.308460>,  <45.023605, 33.248722, 19.113653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163174, 33.235661, 19.308460>,  <45.395786, 33.213894, 19.633139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163174, 33.235661, 19.308460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703165, -0.468142, -0.535165,
		-0.409113, -0.881976, 0.233976,
		-0.581537, 0.054419, -0.811698,
		44.988712, 33.251987, 19.064951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696690, 32.642513, 19.280359>,  <45.395786, 33.213894, 19.633139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696690, 32.642513, 19.280359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480671, 32.861397, 19.024574>,  <45.351059, 32.992729, 18.871103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480671, 32.861397, 19.024574>,  <45.696690, 32.642513, 19.280359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480671, 32.861397, 19.024574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609866, -0.269174, -0.745391,
		-0.580013, -0.792531, -0.188360,
		-0.540044, 0.547211, -0.639462,
		45.318657, 33.025558, 18.832735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083855, 32.242130, 18.759935>,  <45.696690, 32.642513, 19.280359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083855, 32.242130, 18.759935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170864, 31.876551, 18.896978>,  <46.223068, 31.657202, 18.979204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170864, 31.876551, 18.896978>,  <46.083855, 32.242130, 18.759935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170864, 31.876551, 18.896978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698979, 0.099137, 0.708237,
		-0.681258, -0.393532, -0.617268,
		0.217520, -0.913950, 0.342608,
		46.236118, 31.602365, 18.999762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.451420, 31.909391, 18.916119>,  <46.083855, 32.242130, 18.759935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.451420, 31.909391, 18.916119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724434, 31.706377, 19.126471>,  <45.888245, 31.584568, 19.252682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724434, 31.706377, 19.126471>,  <45.451420, 31.909391, 18.916119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724434, 31.706377, 19.126471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579960, 0.061729, 0.812303,
		-0.444734, -0.859418, -0.252217,
		0.682538, -0.507534, 0.525881,
		45.929195, 31.554117, 19.284235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113277, 31.342358, 19.220510>,  <45.451420, 31.909391, 18.916119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113277, 31.342358, 19.220510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442551, 31.429583, 19.430201>,  <45.640114, 31.481918, 19.556015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442551, 31.429583, 19.430201>,  <45.113277, 31.342358, 19.220510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442551, 31.429583, 19.430201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539120, 0.010607, 0.842162,
		0.178086, -0.975876, 0.126295,
		0.823186, 0.218066, 0.524226,
		45.689507, 31.495001, 19.587469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870594, 31.131929, 19.889463>,  <45.113277, 31.342358, 19.220510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870594, 31.131929, 19.889463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238514, 31.250082, 19.992785>,  <45.459267, 31.320974, 20.054777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238514, 31.250082, 19.992785>,  <44.870594, 31.131929, 19.889463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238514, 31.250082, 19.992785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345227, 0.296272, 0.890529,
		0.186517, -0.908280, 0.374484,
		0.919799, 0.295381, 0.258303,
		45.514454, 31.338697, 20.070274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070511, 30.718052, 20.442904>,  <44.870594, 31.131929, 19.889463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070511, 30.718052, 20.442904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258427, 31.071056, 20.434231>,  <45.371178, 31.282860, 20.429028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258427, 31.071056, 20.434231>,  <45.070511, 30.718052, 20.442904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258427, 31.071056, 20.434231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361713, 0.214840, 0.907198,
		0.805269, -0.418352, 0.420146,
		0.469792, 0.882511, -0.021680,
		45.399364, 31.335810, 20.427727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405624, 30.860363, 21.126192>,  <45.070511, 30.718052, 20.442904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405624, 30.860363, 21.126192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355747, 31.221918, 20.962513>,  <45.325821, 31.438850, 20.864305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355747, 31.221918, 20.962513>,  <45.405624, 30.860363, 21.126192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355747, 31.221918, 20.962513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375346, 0.338794, 0.862748,
		0.918459, 0.261166, 0.297026,
		-0.124690, 0.903886, -0.409197,
		45.318340, 31.493084, 20.839754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724720, 31.300146, 21.588367>,  <45.405624, 30.860363, 21.126192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724720, 31.300146, 21.588367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492401, 31.542530, 21.370934>,  <45.353008, 31.687962, 21.240473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492401, 31.542530, 21.370934>,  <45.724720, 31.300146, 21.588367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492401, 31.542530, 21.370934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262649, 0.492553, 0.829703,
		0.770513, 0.624661, -0.126918,
		-0.580797, 0.605962, -0.543585,
		45.318161, 31.724319, 21.207857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845539, 32.042953, 21.827740>,  <45.724720, 31.300146, 21.588367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845539, 32.042953, 21.827740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476784, 32.039604, 21.672791>,  <45.255531, 32.037594, 21.579821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476784, 32.039604, 21.672791>,  <45.845539, 32.042953, 21.827740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476784, 32.039604, 21.672791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362873, 0.369148, 0.855601,
		0.135836, 0.929333, -0.343350,
		-0.921885, -0.008371, -0.387374,
		45.200218, 32.037094, 21.556578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524345, 32.727898, 22.056629>,  <45.845539, 32.042953, 21.827740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524345, 32.727898, 22.056629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225590, 32.486446, 21.945068>,  <45.046337, 32.341576, 21.878132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225590, 32.486446, 21.945068>,  <45.524345, 32.727898, 22.056629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225590, 32.486446, 21.945068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527275, 0.282093, 0.801501,
		-0.405133, 0.745692, -0.528971,
		-0.746893, -0.603628, -0.278900,
		45.001522, 32.305359, 21.861399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887737, 33.203018, 22.167761>,  <45.524345, 32.727898, 22.056629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887737, 33.203018, 22.167761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803905, 32.812046, 22.157089>,  <44.753609, 32.577465, 22.150686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803905, 32.812046, 22.157089>,  <44.887737, 33.203018, 22.167761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803905, 32.812046, 22.157089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562232, 0.098140, 0.821136,
		-0.799983, 0.187091, -0.570109,
		-0.209578, -0.977428, -0.026679,
		44.741032, 32.518818, 22.149086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150059, 33.167049, 22.323410>,  <44.887737, 33.203018, 22.167761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150059, 33.167049, 22.323410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327866, 32.820877, 22.415871>,  <44.434547, 32.613174, 22.471348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327866, 32.820877, 22.415871>,  <44.150059, 33.167049, 22.323410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327866, 32.820877, 22.415871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566773, -0.071901, 0.820730,
		-0.693667, -0.495838, -0.522466,
		0.444515, -0.865434, 0.231152,
		44.461220, 32.561249, 22.485216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650738, 32.766018, 22.589443>,  <44.150059, 33.167049, 22.323410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650738, 32.766018, 22.589443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966026, 32.560513, 22.724945>,  <44.155201, 32.437210, 22.806246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966026, 32.560513, 22.724945>,  <43.650738, 32.766018, 22.589443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966026, 32.560513, 22.724945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489181, -0.189106, 0.851435,
		-0.373378, -0.836829, -0.400382,
		0.788220, -0.513766, 0.338753,
		44.202492, 32.406384, 22.826571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446354, 32.121826, 22.879658>,  <43.650738, 32.766018, 22.589443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446354, 32.121826, 22.879658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798096, 32.208515, 23.049257>,  <44.009140, 32.260529, 23.151016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798096, 32.208515, 23.049257>,  <43.446354, 32.121826, 22.879658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798096, 32.208515, 23.049257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394315, -0.167746, 0.903536,
		0.266942, -0.961713, -0.062050,
		0.879351, 0.216724, 0.423997,
		44.061901, 32.273533, 23.176456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606049, 31.586771, 23.282635>,  <43.446354, 32.121826, 22.879658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606049, 31.586771, 23.282635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785988, 31.916130, 23.420994>,  <43.893951, 32.113747, 23.504009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785988, 31.916130, 23.420994>,  <43.606049, 31.586771, 23.282635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785988, 31.916130, 23.420994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508109, -0.082553, 0.857327,
		0.734478, -0.561425, 0.381240,
		0.449853, 0.823399, 0.345898,
		43.920944, 32.163151, 23.524763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723381, 31.402899, 24.025179>,  <43.606049, 31.586771, 23.282635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723381, 31.402899, 24.025179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832634, 31.785984, 23.988989>,  <43.898186, 32.015835, 23.967274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832634, 31.785984, 23.988989>,  <43.723381, 31.402899, 24.025179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832634, 31.785984, 23.988989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375340, 0.192698, 0.906635,
		0.885729, -0.213675, 0.412100,
		0.273136, 0.957711, -0.090477,
		43.914574, 32.073296, 23.961845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887669, 31.580624, 24.742157>,  <43.723381, 31.402899, 24.025179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887669, 31.580624, 24.742157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828121, 31.928799, 24.554464>,  <43.792393, 32.137703, 24.441849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828121, 31.928799, 24.554464>,  <43.887669, 31.580624, 24.742157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828121, 31.928799, 24.554464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336356, 0.401652, 0.851787,
		0.929893, 0.284637, 0.232981,
		-0.148873, 0.870435, -0.469232,
		43.783459, 32.189930, 24.413694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096512, 32.132229, 25.262606>,  <43.887669, 31.580624, 24.742157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096512, 32.132229, 25.262606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903248, 32.335304, 24.977282>,  <43.787289, 32.457150, 24.806087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903248, 32.335304, 24.977282>,  <44.096512, 32.132229, 25.262606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903248, 32.335304, 24.977282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494593, 0.513998, 0.700845,
		0.722452, 0.691416, 0.002759,
		-0.483157, 0.507691, -0.713309,
		43.758301, 32.487610, 24.763288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146706, 32.851231, 25.434391>,  <44.096512, 32.132229, 25.262606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146706, 32.851231, 25.434391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820915, 32.806553, 25.206656>,  <43.625439, 32.779747, 25.070013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820915, 32.806553, 25.206656>,  <44.146706, 32.851231, 25.434391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820915, 32.806553, 25.206656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545721, 0.480684, 0.686390,
		0.197008, 0.869752, -0.452460,
		-0.814479, -0.111692, -0.569340,
		43.576572, 32.773045, 25.035852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828938, 33.582848, 25.294506>,  <44.146706, 32.851231, 25.434391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828938, 33.582848, 25.294506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557648, 33.289032, 25.285892>,  <43.394875, 33.112743, 25.280725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557648, 33.289032, 25.285892>,  <43.828938, 33.582848, 25.294506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557648, 33.289032, 25.285892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503648, 0.443296, 0.741503,
		-0.535119, 0.513750, -0.670603,
		-0.678223, -0.734541, -0.021533,
		43.354179, 33.068668, 25.279432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199604, 33.880810, 25.480795>,  <43.828938, 33.582848, 25.294506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199604, 33.880810, 25.480795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054386, 33.508171, 25.473537>,  <42.967255, 33.284588, 25.469183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054386, 33.508171, 25.473537>,  <43.199604, 33.880810, 25.480795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054386, 33.508171, 25.473537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723832, 0.269713, 0.635077,
		-0.586740, 0.243697, -0.772236,
		-0.363048, -0.931594, -0.018144,
		42.945473, 33.228691, 25.468094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373543, 33.950798, 25.375731>,  <43.199604, 33.880810, 25.480795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373543, 33.950798, 25.375731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505322, 33.623081, 25.563440>,  <42.584389, 33.426449, 25.676067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505322, 33.623081, 25.563440>,  <42.373543, 33.950798, 25.375731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505322, 33.623081, 25.563440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711926, 0.110919, 0.693440,
		-0.620184, -0.562539, -0.546737,
		0.329443, -0.819297, 0.469277,
		42.604156, 33.377293, 25.704224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786854, 33.485088, 25.434956>,  <42.373543, 33.950798, 25.375731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786854, 33.485088, 25.434956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052227, 33.395187, 25.720427>,  <42.211452, 33.341248, 25.891708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052227, 33.395187, 25.720427>,  <41.786854, 33.485088, 25.434956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052227, 33.395187, 25.720427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718811, 0.073386, 0.691321,
		-0.207754, -0.971648, -0.112871,
		0.663438, -0.224757, 0.713677,
		42.251259, 33.327759, 25.934530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368565, 33.249775, 25.966709>,  <41.786854, 33.485088, 25.434956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368565, 33.249775, 25.966709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707386, 33.332436, 26.162582>,  <41.910679, 33.382034, 26.280107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707386, 33.332436, 26.162582>,  <41.368565, 33.249775, 25.966709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707386, 33.332436, 26.162582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524033, 0.170777, 0.834401,
		0.088805, -0.963395, 0.252951,
		0.847056, 0.206654, 0.489685,
		41.961502, 33.394432, 26.309488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408936, 32.865074, 26.573853>,  <41.368565, 33.249775, 25.966709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408936, 32.865074, 26.573853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693253, 33.121136, 26.690458>,  <41.863842, 33.274773, 26.760422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693253, 33.121136, 26.690458>,  <41.408936, 32.865074, 26.573853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693253, 33.121136, 26.690458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465156, 0.116896, 0.877477,
		0.527641, -0.759304, 0.380859,
		0.710792, 0.640151, 0.291515,
		41.906490, 33.313183, 26.777912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597229, 32.690956, 27.260275>,  <41.408936, 32.865074, 26.573853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597229, 32.690956, 27.260275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712112, 33.073528, 27.239317>,  <41.781044, 33.303074, 27.226742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712112, 33.073528, 27.239317>,  <41.597229, 32.690956, 27.260275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712112, 33.073528, 27.239317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238926, 0.124502, 0.963023,
		0.927592, -0.264069, 0.264275,
		0.287207, 0.956434, -0.052394,
		41.798275, 33.360458, 27.223598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060658, 32.856701, 27.808487>,  <41.597229, 32.690956, 27.260275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060658, 32.856701, 27.808487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941357, 33.226715, 27.714380>,  <41.869778, 33.448723, 27.657917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941357, 33.226715, 27.714380>,  <42.060658, 32.856701, 27.808487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941357, 33.226715, 27.714380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036715, 0.235182, 0.971258,
		0.953781, 0.298317, -0.036181,
		-0.298252, 0.925038, -0.235265,
		41.851883, 33.504227, 27.643801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370804, 33.172203, 28.288807>,  <42.060658, 32.856701, 27.808487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370804, 33.172203, 28.288807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097012, 33.433643, 28.159628>,  <41.932735, 33.590508, 28.082121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097012, 33.433643, 28.159628>,  <42.370804, 33.172203, 28.288807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097012, 33.433643, 28.159628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173013, 0.284694, 0.942876,
		0.708206, 0.701253, -0.081785,
		-0.684479, 0.653601, -0.322948,
		41.891666, 33.629723, 28.062744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568264, 33.759995, 28.550522>,  <42.370804, 33.172203, 28.288807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568264, 33.759995, 28.550522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175854, 33.800606, 28.484463>,  <41.940407, 33.824974, 28.444828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175854, 33.800606, 28.484463>,  <42.568264, 33.759995, 28.550522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175854, 33.800606, 28.484463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128785, 0.295410, 0.946650,
		0.144901, 0.949960, -0.276730,
		-0.981029, 0.101532, -0.165146,
		41.881546, 33.831066, 28.434919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329754, 34.361267, 28.988092>,  <42.568264, 33.759995, 28.550522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329754, 34.361267, 28.988092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976627, 34.190273, 28.910229>,  <41.764751, 34.087677, 28.863510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976627, 34.190273, 28.910229>,  <42.329754, 34.361267, 28.988092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976627, 34.190273, 28.910229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285422, 0.159076, 0.945108,
		-0.373049, 0.889919, -0.262448,
		-0.882818, -0.427480, -0.194659,
		41.711781, 34.062031, 28.851831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800785, 34.821373, 29.251356>,  <42.329754, 34.361267, 28.988092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800785, 34.821373, 29.251356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649811, 34.451530, 29.230808>,  <41.559227, 34.229626, 29.218479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649811, 34.451530, 29.230808>,  <41.800785, 34.821373, 29.251356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649811, 34.451530, 29.230808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252905, 0.049558, 0.966221,
		-0.890832, 0.377677, -0.252544,
		-0.377435, -0.924610, -0.051368,
		41.536579, 34.174149, 29.215399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172653, 34.821533, 29.715956>,  <41.800785, 34.821373, 29.251356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172653, 34.821533, 29.715956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268482, 34.434772, 29.680832>,  <41.325981, 34.202717, 29.659758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268482, 34.434772, 29.680832>,  <41.172653, 34.821533, 29.715956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268482, 34.434772, 29.680832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182087, -0.133586, 0.974166,
		-0.953651, -0.217395, -0.208063,
		0.239573, -0.966900, -0.087809,
		41.340355, 34.144703, 29.654490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575787, 34.480785, 30.092852>,  <41.172653, 34.821533, 29.715956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575787, 34.480785, 30.092852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872223, 34.215874, 30.048704>,  <41.050083, 34.056927, 30.022215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872223, 34.215874, 30.048704>,  <40.575787, 34.480785, 30.092852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872223, 34.215874, 30.048704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047227, -0.215397, 0.975384,
		-0.669747, -0.717631, -0.190905,
		0.741087, -0.662276, -0.110370,
		41.094547, 34.017193, 30.015593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315853, 33.815773, 30.529022>,  <40.575787, 34.480785, 30.092852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315853, 33.815773, 30.529022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706131, 33.742043, 30.481611>,  <40.940296, 33.697803, 30.453165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706131, 33.742043, 30.481611>,  <40.315853, 33.815773, 30.529022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706131, 33.742043, 30.481611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108061, -0.065873, 0.991960,
		-0.190653, -0.980655, -0.044353,
		0.975692, -0.184327, -0.118530,
		40.998840, 33.686745, 30.446053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486309, 33.122429, 30.959932>,  <40.315853, 33.815773, 30.529022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486309, 33.122429, 30.959932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821541, 33.326889, 30.883673>,  <41.022678, 33.449566, 30.837917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821541, 33.326889, 30.883673>,  <40.486309, 33.122429, 30.959932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821541, 33.326889, 30.883673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325501, -0.188068, 0.926650,
		0.437806, -0.838661, -0.323997,
		0.838078, 0.511154, -0.190648,
		41.072964, 33.480236, 30.826479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995121, 32.604919, 31.032385>,  <40.486309, 33.122429, 30.959932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995121, 32.604919, 31.032385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192448, 32.947285, 31.094433>,  <41.310844, 33.152702, 31.131662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192448, 32.947285, 31.094433>,  <40.995121, 32.604919, 31.032385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192448, 32.947285, 31.094433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222200, -0.296409, 0.928854,
		0.840993, -0.423747, -0.336405,
		0.493312, 0.855909, 0.155121,
		41.340443, 33.204056, 31.140968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663540, 32.412739, 31.270199>,  <40.995121, 32.604919, 31.032385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663540, 32.412739, 31.270199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623802, 32.782360, 31.417850>,  <41.599960, 33.004131, 31.506441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623802, 32.782360, 31.417850>,  <41.663540, 32.412739, 31.270199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623802, 32.782360, 31.417850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400894, -0.302353, 0.864793,
		0.910721, 0.233897, -0.340409,
		-0.099349, 0.924053, 0.369128,
		41.593998, 33.059578, 31.528589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327522, 32.627449, 31.545465>,  <41.663540, 32.412739, 31.270199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327522, 32.627449, 31.545465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039516, 32.850792, 31.710300>,  <41.866714, 32.984798, 31.809202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039516, 32.850792, 31.710300>,  <42.327522, 32.627449, 31.545465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039516, 32.850792, 31.710300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361995, -0.204433, 0.909487,
		0.592067, 0.804015, -0.054931,
		-0.720011, 0.558361, 0.412087,
		41.823513, 33.018299, 31.833927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665054, 32.914761, 32.062515>,  <42.327522, 32.627449, 31.545465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665054, 32.914761, 32.062515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286278, 32.989929, 32.166809>,  <42.059010, 33.035030, 32.229385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286278, 32.989929, 32.166809>,  <42.665054, 32.914761, 32.062515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286278, 32.989929, 32.166809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213180, -0.239844, 0.947116,
		0.240515, 0.952450, 0.187059,
		-0.946946, 0.187919, 0.260730,
		42.002193, 33.046307, 32.245029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758015, 33.393284, 32.642147>,  <42.665054, 32.914761, 32.062515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758015, 33.393284, 32.642147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389980, 33.237686, 32.660603>,  <42.169159, 33.144329, 32.671677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389980, 33.237686, 32.660603>,  <42.758015, 33.393284, 32.642147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389980, 33.237686, 32.660603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140443, -0.217626, 0.965875,
		-0.365677, 0.895167, 0.254866,
		-0.920085, -0.388992, 0.046139,
		42.113956, 33.120987, 32.674446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493580, 33.675716, 33.245808>,  <42.758015, 33.393284, 32.642147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493580, 33.675716, 33.245808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267239, 33.352180, 33.181816>,  <42.131432, 33.158058, 33.143421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267239, 33.352180, 33.181816>,  <42.493580, 33.675716, 33.245808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267239, 33.352180, 33.181816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151312, -0.088863, 0.984484,
		-0.810501, 0.581282, -0.072103,
		-0.565855, -0.808835, -0.159978,
		42.097481, 33.109531, 33.133823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789612, 33.789364, 33.557598>,  <42.493580, 33.675716, 33.245808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789612, 33.789364, 33.557598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890820, 33.402634, 33.543587>,  <41.951546, 33.170597, 33.535179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890820, 33.402634, 33.543587>,  <41.789612, 33.789364, 33.557598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890820, 33.402634, 33.543587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014522, -0.040001, 0.999094,
		-0.967353, -0.252281, -0.024162,
		0.253019, -0.966827, -0.035032,
		41.966724, 33.112587, 33.533077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320744, 33.437820, 34.039078>,  <41.789612, 33.789364, 33.557598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320744, 33.437820, 34.039078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607014, 33.165020, 33.978836>,  <41.778774, 33.001339, 33.942692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607014, 33.165020, 33.978836>,  <41.320744, 33.437820, 34.039078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607014, 33.165020, 33.978836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002443, -0.213191, 0.977007,
		-0.698428, -0.699589, -0.150909,
		0.715676, -0.682001, -0.150608,
		41.821716, 32.960419, 33.933655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052273, 32.762047, 34.183926>,  <41.320744, 33.437820, 34.039078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052273, 32.762047, 34.183926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450031, 32.733624, 34.215256>,  <41.688686, 32.716568, 34.234055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450031, 32.733624, 34.215256>,  <41.052273, 32.762047, 34.183926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450031, 32.733624, 34.215256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097206, -0.322343, 0.941619,
		-0.041660, -0.943952, -0.327442,
		0.994392, -0.071058, 0.078329,
		41.748348, 32.712307, 34.238754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251621, 32.085381, 34.412289>,  <41.052273, 32.762047, 34.183926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251621, 32.085381, 34.412289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576401, 32.303200, 34.496391>,  <41.771267, 32.433891, 34.546852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576401, 32.303200, 34.496391>,  <41.251621, 32.085381, 34.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576401, 32.303200, 34.496391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003254, -0.355968, 0.934492,
		0.583724, -0.759441, -0.287255,
		0.811945, 0.544551, 0.210259,
		41.819984, 32.466564, 34.559467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786213, 31.579432, 34.751427>,  <41.251621, 32.085381, 34.412289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786213, 31.579432, 34.751427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869507, 31.955669, 34.858696>,  <41.919483, 32.181412, 34.923058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869507, 31.955669, 34.858696>,  <41.786213, 31.579432, 34.751427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869507, 31.955669, 34.858696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136478, -0.299444, 0.944302,
		0.968510, -0.160040, -0.190726,
		0.208237, 0.940596, 0.268173,
		41.931976, 32.237846, 34.939148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459908, 31.707031, 34.902321>,  <41.786213, 31.579432, 34.751427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459908, 31.707031, 34.902321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214417, 31.942568, 35.112690>,  <42.067120, 32.083889, 35.238911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214417, 31.942568, 35.112690>,  <42.459908, 31.707031, 34.902321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214417, 31.942568, 35.112690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208631, -0.521502, 0.827351,
		0.761451, 0.617495, 0.197211,
		-0.613731, 0.588843, 0.525926,
		42.030296, 32.119221, 35.270470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603237, 31.480661, 35.541317>,  <42.459908, 31.707031, 34.902321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603237, 31.480661, 35.541317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353882, 31.776237, 35.643578>,  <42.204269, 31.953583, 35.704933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353882, 31.776237, 35.643578>,  <42.603237, 31.480661, 35.541317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353882, 31.776237, 35.643578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068106, -0.274396, 0.959202,
		0.778940, 0.615367, 0.120730,
		-0.623389, 0.738939, 0.255648,
		42.166866, 31.997919, 35.720272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899334, 31.725548, 36.211933>,  <42.603237, 31.480661, 35.541317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899334, 31.725548, 36.211933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516609, 31.839119, 36.186989>,  <42.286972, 31.907261, 36.172024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516609, 31.839119, 36.186989>,  <42.899334, 31.725548, 36.211933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516609, 31.839119, 36.186989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192706, -0.458919, 0.867328,
		0.217642, 0.841889, 0.493816,
		-0.956816, 0.283928, -0.062357,
		42.229565, 31.924297, 36.168282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793251, 32.214497, 36.705578>,  <42.899334, 31.725548, 36.211933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793251, 32.214497, 36.705578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481129, 31.984116, 36.608093>,  <42.293854, 31.845886, 36.549603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481129, 31.984116, 36.608093>,  <42.793251, 32.214497, 36.705578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481129, 31.984116, 36.608093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079625, -0.478016, 0.874734,
		-0.620305, 0.663157, 0.418861,
		-0.780308, -0.575954, -0.243712,
		42.247036, 31.811329, 36.534981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395256, 32.140453, 37.350952>,  <42.793251, 32.214497, 36.705578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395256, 32.140453, 37.350952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312927, 31.836515, 37.104286>,  <42.263531, 31.654152, 36.956287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312927, 31.836515, 37.104286>,  <42.395256, 32.140453, 37.350952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312927, 31.836515, 37.104286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083057, -0.641444, 0.762661,
		-0.975058, 0.105755, 0.195135,
		-0.205824, -0.759846, -0.616661,
		42.251179, 31.608562, 36.919289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793255, 31.756462, 37.669395>,  <42.395256, 32.140453, 37.350952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793255, 31.756462, 37.669395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035797, 31.534767, 37.441303>,  <42.181320, 31.401751, 37.304447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035797, 31.534767, 37.441303>,  <41.793255, 31.756462, 37.669395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035797, 31.534767, 37.441303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238861, -0.557028, 0.795403,
		-0.758475, -0.618498, -0.205369,
		0.606351, -0.554238, -0.570226,
		42.217701, 31.368496, 37.270237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596508, 31.032248, 37.811199>,  <41.793255, 31.756462, 37.669395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596508, 31.032248, 37.811199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965252, 31.061270, 37.658928>,  <42.186497, 31.078682, 37.567566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965252, 31.061270, 37.658928>,  <41.596508, 31.032248, 37.811199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965252, 31.061270, 37.658928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307768, -0.734003, 0.605408,
		-0.235492, -0.675259, -0.698976,
		0.921858, 0.072554, -0.380675,
		42.241810, 31.083036, 37.544724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074043, 30.558052, 37.408268>,  <41.596508, 31.032248, 37.811199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074043, 30.558052, 37.408268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467304, 30.597595, 37.346775>,  <41.703262, 30.621321, 37.309879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467304, 30.597595, 37.346775>,  <41.074043, 30.558052, 37.408268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467304, 30.597595, 37.346775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160146, -0.871309, 0.463869,
		-0.088092, -0.480674, -0.872463,
		0.983155, 0.098858, -0.153733,
		41.762249, 30.627253, 37.300655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340164, 29.904310, 37.243374>,  <41.074043, 30.558052, 37.408268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340164, 29.904310, 37.243374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658871, 30.107630, 37.374088>,  <41.850094, 30.229622, 37.452518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658871, 30.107630, 37.374088>,  <41.340164, 29.904310, 37.243374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658871, 30.107630, 37.374088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303170, -0.804047, 0.511465,
		0.522728, -0.308448, -0.794742,
		0.796770, 0.508300, 0.326786,
		41.897903, 30.260120, 37.472122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840927, 29.441565, 37.066345>,  <41.340164, 29.904310, 37.243374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840927, 29.441565, 37.066345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987366, 29.691969, 37.341759>,  <42.075230, 29.842213, 37.507008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987366, 29.691969, 37.341759>,  <41.840927, 29.441565, 37.066345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987366, 29.691969, 37.341759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182464, -0.773830, 0.606543,
		0.912512, -0.096422, -0.397523,
		0.366099, 0.626012, 0.688536,
		42.097195, 29.879772, 37.548321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354977, 29.158882, 37.314621>,  <41.840927, 29.441565, 37.066345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354977, 29.158882, 37.314621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306320, 29.420141, 37.613579>,  <42.277126, 29.576897, 37.792953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306320, 29.420141, 37.613579>,  <42.354977, 29.158882, 37.314621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306320, 29.420141, 37.613579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346092, -0.677822, 0.648673,
		0.930281, 0.337575, -0.143595,
		-0.121644, 0.653146, 0.747398,
		42.269829, 29.616085, 37.837799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012589, 29.139652, 37.682880>,  <42.354977, 29.158882, 37.314621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012589, 29.139652, 37.682880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701656, 29.251528, 37.908279>,  <42.515095, 29.318653, 38.043518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701656, 29.251528, 37.908279>,  <43.012589, 29.139652, 37.682880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701656, 29.251528, 37.908279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331226, -0.579557, 0.744583,
		0.534829, 0.765433, 0.357869,
		-0.777333, 0.279689, 0.563495,
		42.468456, 29.335434, 38.077328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286842, 29.114756, 38.406662>,  <43.012589, 29.139652, 37.682880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286842, 29.114756, 38.406662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888367, 29.110920, 38.441341>,  <42.649281, 29.108618, 38.462151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888367, 29.110920, 38.441341>,  <43.286842, 29.114756, 38.406662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888367, 29.110920, 38.441341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073702, -0.624179, 0.777797,
		0.046659, 0.781222, 0.622506,
		-0.996188, -0.009589, 0.086701,
		42.589512, 29.108044, 38.467350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195484, 29.184645, 39.115589>,  <43.286842, 29.114756, 38.406662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195484, 29.184645, 39.115589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862865, 29.013569, 38.973820>,  <42.663296, 28.910923, 38.888756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862865, 29.013569, 38.973820>,  <43.195484, 29.184645, 39.115589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862865, 29.013569, 38.973820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072633, -0.716319, 0.693982,
		-0.550691, 0.551332, 0.626715,
		-0.831543, -0.427690, -0.354426,
		42.613403, 28.885262, 38.867493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606781, 29.134804, 39.559372>,  <43.195484, 29.184645, 39.115589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606781, 29.134804, 39.559372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583382, 28.826574, 39.305508>,  <42.569344, 28.641636, 39.153191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583382, 28.826574, 39.305508>,  <42.606781, 29.134804, 39.559372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583382, 28.826574, 39.305508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102587, -0.637024, 0.763988,
		-0.993003, -0.020417, 0.116314,
		-0.058497, -0.770574, -0.634661,
		42.565834, 28.595402, 39.115108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316120, 28.513769, 39.991287>,  <42.606781, 29.134804, 39.559372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316120, 28.513769, 39.991287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452129, 28.343761, 39.655731>,  <42.533733, 28.241756, 39.454395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452129, 28.343761, 39.655731>,  <42.316120, 28.513769, 39.991287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452129, 28.343761, 39.655731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166522, -0.850737, 0.498514,
		-0.925557, -0.309200, -0.218493,
		0.340021, -0.425020, -0.838895,
		42.554134, 28.216255, 39.404064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970654, 27.758747, 39.762817>,  <42.316120, 28.513769, 39.991287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970654, 27.758747, 39.762817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355331, 27.799398, 39.660980>,  <42.586136, 27.823790, 39.599876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355331, 27.799398, 39.660980>,  <41.970654, 27.758747, 39.762817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355331, 27.799398, 39.660980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229587, -0.806080, 0.545459,
		-0.149790, -0.583016, -0.798533,
		0.961693, 0.101628, -0.254595,
		42.643841, 27.829887, 39.584602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207825, 27.143148, 39.522118>,  <41.970654, 27.758747, 39.762817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207825, 27.143148, 39.522118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548515, 27.328491, 39.619991>,  <42.752930, 27.439697, 39.678715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548515, 27.328491, 39.619991>,  <42.207825, 27.143148, 39.522118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548515, 27.328491, 39.619991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251777, -0.771411, 0.584408,
		0.459539, -0.436148, -0.773691,
		0.851723, 0.463356, 0.244682,
		42.804031, 27.467499, 39.693398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809261, 26.956787, 39.116802>,  <42.207825, 27.143148, 39.522118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809261, 26.956787, 39.116802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935226, 27.327597, 39.198250>,  <43.010807, 27.550081, 39.247116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935226, 27.327597, 39.198250>,  <42.809261, 26.956787, 39.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935226, 27.327597, 39.198250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923457, -0.348814, 0.159864,
		0.219222, 0.137689, -0.965911,
		0.314912, 0.927022, 0.203617,
		43.029701, 27.605703, 39.259335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621151, 27.708120, 38.862152>,  <42.809261, 26.956787, 39.116802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621151, 27.708120, 38.862152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333881, 27.898874, 39.064857>,  <42.161522, 28.013327, 39.186481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333881, 27.898874, 39.064857>,  <42.621151, 27.708120, 38.862152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333881, 27.898874, 39.064857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181306, 0.831329, -0.525377,
		-0.671831, -0.285432, -0.683499,
		-0.718172, 0.476887, 0.506762,
		42.118431, 28.041941, 39.216885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014439, 27.973341, 38.406891>,  <42.621151, 27.708120, 38.862152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014439, 27.973341, 38.406891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108437, 28.204071, 38.719826>,  <42.164833, 28.342508, 38.907585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108437, 28.204071, 38.719826>,  <42.014439, 27.973341, 38.406891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108437, 28.204071, 38.719826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056716, 0.811642, -0.581396,
		-0.970341, 0.092253, 0.223445,
		0.234993, 0.576825, 0.782337,
		42.178936, 28.377119, 38.954525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456894, 28.485310, 38.375687>,  <42.014439, 27.973341, 38.406891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456894, 28.485310, 38.375687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796421, 28.611813, 38.545151>,  <42.000137, 28.687716, 38.646828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796421, 28.611813, 38.545151>,  <41.456894, 28.485310, 38.375687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796421, 28.611813, 38.545151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059500, 0.853399, -0.517851,
		-0.525323, 0.414355, 0.743200,
		0.848820, 0.316259, 0.423656,
		42.051067, 28.706690, 38.672249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319614, 29.078493, 38.750732>,  <41.456894, 28.485310, 38.375687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319614, 29.078493, 38.750732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711803, 29.107380, 38.677567>,  <41.947117, 29.124712, 38.633667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711803, 29.107380, 38.677567>,  <41.319614, 29.078493, 38.750732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711803, 29.107380, 38.677567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146290, 0.889442, -0.433004,
		0.131419, 0.451307, 0.882639,
		0.980474, 0.072216, -0.182911,
		42.005947, 29.129045, 38.622692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523117, 29.739159, 38.847836>,  <41.319614, 29.078493, 38.750732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523117, 29.739159, 38.847836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833546, 29.640205, 38.615795>,  <42.019802, 29.580833, 38.476570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833546, 29.640205, 38.615795>,  <41.523117, 29.739159, 38.847836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833546, 29.640205, 38.615795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067997, 0.881664, -0.466952,
		0.626971, 0.401833, 0.667411,
		0.776069, -0.247383, -0.580102,
		42.066368, 29.565990, 38.441765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837158, 30.312826, 38.713005>,  <41.523117, 29.739159, 38.847836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837158, 30.312826, 38.713005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042206, 30.086893, 38.454334>,  <42.165234, 29.951332, 38.299133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042206, 30.086893, 38.454334>,  <41.837158, 30.312826, 38.713005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042206, 30.086893, 38.454334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013252, 0.747863, -0.663720,
		0.858516, 0.348802, 0.375881,
		0.512615, -0.564833, -0.646675,
		42.195992, 29.917442, 38.260330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456955, 30.650528, 38.534794>,  <41.837158, 30.312826, 38.713005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456955, 30.650528, 38.534794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360512, 30.409246, 38.230686>,  <42.302647, 30.264477, 38.048222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360512, 30.409246, 38.230686>,  <42.456955, 30.650528, 38.534794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360512, 30.409246, 38.230686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022254, 0.779740, -0.625708,
		0.970243, -0.167783, -0.174579,
		-0.241110, -0.603203, -0.760271,
		42.288177, 30.228285, 38.002605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903488, 30.830257, 37.936996>,  <42.456955, 30.650528, 38.534794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903488, 30.830257, 37.936996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576431, 30.651325, 37.792027>,  <42.380196, 30.543966, 37.705044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576431, 30.651325, 37.792027>,  <42.903488, 30.830257, 37.936996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576431, 30.651325, 37.792027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007370, 0.621323, -0.783520,
		0.575673, -0.643314, -0.504726,
		-0.817647, -0.447331, -0.362420,
		42.331139, 30.517126, 37.683300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822624, 31.275431, 37.397289>,  <42.903488, 30.830257, 37.936996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822624, 31.275431, 37.397289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157585, 31.228371, 37.610798>,  <43.358562, 31.200134, 37.738903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157585, 31.228371, 37.610798>,  <42.822624, 31.275431, 37.397289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157585, 31.228371, 37.610798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204208, 0.838502, 0.505186,
		-0.507001, -0.532046, 0.678142,
		0.837406, -0.117648, 0.533770,
		43.408806, 31.193077, 37.770927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998188, 30.676308, 36.997902>,  <42.822624, 31.275431, 37.397289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998188, 30.676308, 36.997902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614929, 30.673380, 37.112373>,  <42.384972, 30.671623, 37.181057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614929, 30.673380, 37.112373>,  <42.998188, 30.676308, 36.997902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614929, 30.673380, 37.112373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245421, 0.535635, -0.808000,
		-0.147371, -0.844418, -0.515015,
		-0.958149, -0.007319, 0.286175,
		42.327484, 30.671185, 37.198227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492226, 30.384737, 36.521828>,  <42.998188, 30.676308, 36.997902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492226, 30.384737, 36.521828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336876, 30.681021, 36.741104>,  <42.243668, 30.858791, 36.872669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336876, 30.681021, 36.741104>,  <42.492226, 30.384737, 36.521828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336876, 30.681021, 36.741104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148531, 0.536794, -0.830536,
		-0.909453, -0.403981, -0.098458,
		-0.388372, 0.740710, 0.548194,
		42.220364, 30.903234, 36.905563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988434, 30.571692, 36.183517>,  <42.492226, 30.384737, 36.521828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988434, 30.571692, 36.183517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056881, 30.891203, 36.414227>,  <42.097950, 31.082911, 36.552650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056881, 30.891203, 36.414227>,  <41.988434, 30.571692, 36.183517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056881, 30.891203, 36.414227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332547, 0.597880, -0.729350,
		-0.927432, -0.066996, 0.367943,
		0.171122, 0.798781, 0.576772,
		42.108219, 31.130836, 36.587257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338383, 30.985004, 36.170143>,  <41.988434, 30.571692, 36.183517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338383, 30.985004, 36.170143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636944, 31.234812, 36.262112>,  <41.816078, 31.384697, 36.317291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636944, 31.234812, 36.262112>,  <41.338383, 30.985004, 36.170143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636944, 31.234812, 36.262112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382085, 0.685017, -0.620293,
		-0.544886, 0.375135, 0.749915,
		0.746399, 0.624520, 0.229923,
		41.860863, 31.422167, 36.331089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008293, 31.665808, 36.407967>,  <41.338383, 30.985004, 36.170143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008293, 31.665808, 36.407967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379154, 31.707993, 36.264156>,  <41.601673, 31.733303, 36.177872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379154, 31.707993, 36.264156>,  <41.008293, 31.665808, 36.407967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379154, 31.707993, 36.264156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295176, 0.796604, -0.527535,
		0.230765, 0.595231, 0.769706,
		0.927156, 0.105462, -0.359526,
		41.657303, 31.739632, 36.156300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996395, 32.283955, 36.046463>,  <41.008293, 31.665808, 36.407967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996395, 32.283955, 36.046463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384090, 32.202450, 36.101685>,  <41.616707, 32.153549, 36.134819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384090, 32.202450, 36.101685>,  <40.996395, 32.283955, 36.046463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384090, 32.202450, 36.101685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240481, 0.664561, -0.707479,
		0.052409, 0.718916, 0.693119,
		0.969238, -0.203760, 0.138057,
		41.674862, 32.141323, 36.143101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407784, 32.972328, 36.084618>,  <40.996395, 32.283955, 36.046463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407784, 32.972328, 36.084618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637897, 32.665672, 35.970554>,  <41.775967, 32.481678, 35.902115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637897, 32.665672, 35.970554>,  <41.407784, 32.972328, 36.084618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637897, 32.665672, 35.970554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338079, 0.540313, -0.770561,
		0.744818, 0.346883, 0.570017,
		0.575282, -0.766638, -0.285161,
		41.810482, 32.435680, 35.885006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936245, 33.277718, 35.834904>,  <41.407784, 32.972328, 36.084618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936245, 33.277718, 35.834904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990444, 32.930103, 35.644573>,  <42.022964, 32.721535, 35.530376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990444, 32.930103, 35.644573>,  <41.936245, 33.277718, 35.834904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990444, 32.930103, 35.644573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116665, 0.490909, -0.863364,
		0.983885, 0.061471, 0.167904,
		0.135497, -0.869040, -0.475826,
		42.031094, 32.669392, 35.501827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341824, 33.412193, 35.292542>,  <41.936245, 33.277718, 35.834904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341824, 33.412193, 35.292542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183811, 33.062141, 35.180752>,  <42.089005, 32.852112, 35.113678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183811, 33.062141, 35.180752>,  <42.341824, 33.412193, 35.292542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183811, 33.062141, 35.180752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071021, 0.274210, -0.959044,
		0.915916, -0.398704, -0.046170,
		-0.395035, -0.875125, -0.279470,
		42.065300, 32.799603, 35.096912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790821, 33.205173, 34.664112>,  <42.341824, 33.412193, 35.292542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790821, 33.205173, 34.664112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479221, 32.954536, 34.654831>,  <42.292263, 32.804153, 34.649261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479221, 32.954536, 34.654831>,  <42.790821, 33.205173, 34.664112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479221, 32.954536, 34.654831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040627, -0.013504, -0.999083,
		0.625709, -0.779226, 0.035977,
		-0.778998, -0.626597, -0.023208,
		42.245522, 32.766556, 34.647869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020470, 32.533787, 34.242889>,  <42.790821, 33.205173, 34.664112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020470, 32.533787, 34.242889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629242, 32.616718, 34.250782>,  <42.394505, 32.666477, 34.255516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629242, 32.616718, 34.250782>,  <43.020470, 32.533787, 34.242889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629242, 32.616718, 34.250782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080043, -0.286760, -0.954653,
		-0.192266, -0.935299, 0.297067,
		-0.978073, 0.207325, 0.019730,
		42.335819, 32.678917, 34.256702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767887, 32.134346, 33.723778>,  <43.020470, 32.533787, 34.242889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767887, 32.134346, 33.723778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456665, 32.370068, 33.810818>,  <42.269932, 32.511501, 33.863041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456665, 32.370068, 33.810818>,  <42.767887, 32.134346, 33.723778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456665, 32.370068, 33.810818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313499, -0.064083, -0.947424,
		-0.544379, -0.805364, 0.234607,
		-0.778055, 0.589307, 0.217595,
		42.223248, 32.546860, 33.876095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140961, 31.834225, 33.420319>,  <42.767887, 32.134346, 33.723778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140961, 31.834225, 33.420319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114792, 32.232536, 33.446056>,  <42.099091, 32.471523, 33.461498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114792, 32.232536, 33.446056>,  <42.140961, 31.834225, 33.420319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114792, 32.232536, 33.446056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176638, 0.051907, -0.982906,
		-0.982099, -0.075670, 0.172497,
		-0.065423, 0.995781, 0.064344,
		42.095165, 32.531269, 33.465359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819576, 31.380302, 33.494202>,  <42.140961, 31.834225, 33.420319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819576, 31.380302, 33.494202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127888, 31.627691, 33.433037>,  <43.312874, 31.776125, 33.396339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127888, 31.627691, 33.433037>,  <42.819576, 31.380302, 33.494202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127888, 31.627691, 33.433037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476471, -0.400270, 0.782790,
		0.422929, -0.676220, -0.603206,
		0.770783, 0.618475, -0.152913,
		43.359123, 31.813234, 33.387161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939285, 30.942745, 34.069725>,  <42.819576, 31.380302, 33.494202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939285, 30.942745, 34.069725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041210, 30.571609, 34.178673>,  <43.102364, 30.348928, 34.244041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041210, 30.571609, 34.178673>,  <42.939285, 30.942745, 34.069725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041210, 30.571609, 34.178673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699386, -0.017677, -0.714525,
		0.667780, 0.372558, 0.644415,
		0.254811, -0.927841, 0.272366,
		43.117653, 30.293257, 34.260384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631218, 31.164711, 34.199471>,  <42.939285, 30.942745, 34.069725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631218, 31.164711, 34.199471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612915, 31.109751, 34.595253>,  <43.601933, 31.076775, 34.832722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612915, 31.109751, 34.595253>,  <43.631218, 31.164711, 34.199471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612915, 31.109751, 34.595253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842404, 0.527047, 0.112144,
		-0.536900, 0.838655, 0.091629,
		-0.045758, -0.137399, 0.989458,
		43.599186, 31.068531, 34.892090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361839, 31.765102, 34.449509>,  <43.631218, 31.164711, 34.199471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361839, 31.765102, 34.449509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628674, 31.528318, 34.630432>,  <43.788773, 31.386248, 34.738987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628674, 31.528318, 34.630432>,  <43.361839, 31.765102, 34.449509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628674, 31.528318, 34.630432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691327, 0.718129, -0.079741,
		-0.277613, 0.365888, 0.888289,
		0.667082, -0.591961, 0.452310,
		43.828796, 31.350731, 34.766125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637497, 31.982393, 35.191040>,  <43.361839, 31.765102, 34.449509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637497, 31.982393, 35.191040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879421, 31.808222, 34.924328>,  <44.024578, 31.703720, 34.764301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879421, 31.808222, 34.924328>,  <43.637497, 31.982393, 35.191040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879421, 31.808222, 34.924328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693993, 0.698858, 0.173123,
		0.390605, -0.567451, 0.724863,
		0.604815, -0.435427, -0.666784,
		44.060867, 31.677593, 34.724293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212814, 31.955172, 35.593472>,  <43.637497, 31.982393, 35.191040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212814, 31.955172, 35.593472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287022, 31.926777, 35.201443>,  <44.331547, 31.909740, 34.966225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287022, 31.926777, 35.201443>,  <44.212814, 31.955172, 35.593472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287022, 31.926777, 35.201443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800018, 0.590047, 0.108699,
		0.570574, -0.804242, 0.166255,
		0.185518, -0.070987, -0.980074,
		44.342678, 31.905481, 34.907421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903923, 32.333057, 35.414207>,  <44.212814, 31.955172, 35.593472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903923, 32.333057, 35.414207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799610, 32.380390, 35.030960>,  <44.737022, 32.408791, 34.801010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799610, 32.380390, 35.030960>,  <44.903923, 32.333057, 35.414207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799610, 32.380390, 35.030960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811448, 0.564545, -0.151133,
		0.523017, -0.816875, -0.243244,
		-0.260779, 0.118335, -0.958118,
		44.721378, 32.415890, 34.743523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369694, 32.147614, 34.949139>,  <44.903923, 32.333057, 35.414207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369694, 32.147614, 34.949139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149532, 32.469975, 34.861885>,  <45.017437, 32.663391, 34.809532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149532, 32.469975, 34.861885>,  <45.369694, 32.147614, 34.949139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149532, 32.469975, 34.861885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833115, 0.547219, -0.080441,
		0.054538, -0.226003, -0.972599,
		-0.550405, 0.805899, -0.218130,
		44.984409, 32.711746, 34.796448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.821995, 32.674381, 34.658333>,  <45.369694, 32.147614, 34.949139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.821995, 32.674381, 34.658333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505722, 32.904285, 34.742683>,  <45.315960, 33.042229, 34.793293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505722, 32.904285, 34.742683>,  <45.821995, 32.674381, 34.658333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505722, 32.904285, 34.742683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606135, 0.783385, 0.137510,
		-0.086163, 0.236547, -0.967792,
		-0.790681, 0.574764, 0.210878,
		45.268517, 33.076714, 34.805946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953644, 33.303226, 34.132065>,  <45.821995, 32.674381, 34.658333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953644, 33.303226, 34.132065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.729671, 33.375328, 34.455540>,  <45.595287, 33.418591, 34.649624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.729671, 33.375328, 34.455540>,  <45.953644, 33.303226, 34.132065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729671, 33.375328, 34.455540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502856, 0.849660, 0.158790,
		-0.658490, 0.495567, -0.566395,
		-0.559935, 0.180253, 0.808692,
		45.561691, 33.429405, 34.698147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459175, 33.943581, 34.120239>,  <45.953644, 33.303226, 34.132065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459175, 33.943581, 34.120239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661018, 33.839668, 34.449574>,  <45.782124, 33.777321, 34.647175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661018, 33.839668, 34.449574>,  <45.459175, 33.943581, 34.120239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661018, 33.839668, 34.449574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473919, 0.880478, -0.012646,
		-0.721646, 0.396577, 0.567410,
		0.504606, -0.259780, 0.823339,
		45.812401, 33.761734, 34.696575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410461, 34.597565, 34.653648>,  <45.459175, 33.943581, 34.120239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410461, 34.597565, 34.653648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709766, 34.347313, 34.741909>,  <45.889351, 34.197163, 34.794865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709766, 34.347313, 34.741909>,  <45.410461, 34.597565, 34.653648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709766, 34.347313, 34.741909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633940, 0.772342, 0.040098,
		-0.195505, 0.109876, 0.974528,
		0.748264, -0.625631, 0.220652,
		45.934246, 34.159622, 34.808105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624870, 34.641151, 35.363064>,  <45.410461, 34.597565, 34.653648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624870, 34.641151, 35.363064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910461, 34.545490, 35.099842>,  <46.081818, 34.488094, 34.941910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910461, 34.545490, 35.099842>,  <45.624870, 34.641151, 35.363064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910461, 34.545490, 35.099842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500228, 0.831843, 0.240434,
		0.489899, -0.500843, 0.713550,
		0.713982, -0.239150, -0.658056,
		46.124657, 34.473747, 34.902424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232323, 33.860806, 35.446472>,  <45.624870, 34.641151, 35.363064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232323, 33.860806, 35.446472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423588, 33.512939, 35.397423>,  <45.538345, 33.304218, 35.367992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423588, 33.512939, 35.397423>,  <45.232323, 33.860806, 35.446472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423588, 33.512939, 35.397423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795181, 0.369401, 0.480864,
		-0.372895, -0.327441, 0.868177,
		0.478160, -0.869670, -0.122627,
		45.567036, 33.252037, 35.360634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659267, 33.871548, 36.054188>,  <45.232323, 33.860806, 35.446472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659267, 33.871548, 36.054188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808273, 33.652008, 35.754856>,  <45.897678, 33.520283, 35.575256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808273, 33.652008, 35.754856>,  <45.659267, 33.871548, 36.054188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808273, 33.652008, 35.754856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897267, 0.418893, 0.139430,
		0.236942, -0.723388, 0.648513,
		0.372519, -0.548852, -0.748325,
		45.920029, 33.487354, 35.530357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208511, 33.276741, 36.204533>,  <45.659267, 33.871548, 36.054188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208511, 33.276741, 36.204533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260906, 33.475422, 35.861340>,  <46.292343, 33.594631, 35.655426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260906, 33.475422, 35.861340>,  <46.208511, 33.276741, 36.204533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260906, 33.475422, 35.861340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936800, 0.221189, 0.271075,
		0.324419, -0.839262, -0.436338,
		0.130990, 0.496704, -0.857979,
		46.300201, 33.624432, 35.603947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727390, 33.051395, 35.917198>,  <46.208511, 33.276741, 36.204533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727390, 33.051395, 35.917198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686558, 33.424397, 35.778618>,  <46.662056, 33.648197, 35.695469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686558, 33.424397, 35.778618>,  <46.727390, 33.051395, 35.917198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686558, 33.424397, 35.778618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989355, 0.131479, 0.062365,
		0.103705, -0.336393, -0.935994,
		-0.102084, 0.932498, -0.346448,
		46.655933, 33.704147, 35.674683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326103, 33.155552, 35.402138>,  <46.727390, 33.051395, 35.917198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326103, 33.155552, 35.402138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196758, 33.483727, 35.590744>,  <47.119152, 33.680630, 35.703907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196758, 33.483727, 35.590744>,  <47.326103, 33.155552, 35.402138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.196758, 33.483727, 35.590744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943650, 0.242477, 0.225233,
		0.070458, 0.517774, -0.852611,
		-0.323358, 0.820436, 0.471513,
		47.099751, 33.729858, 35.732197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.644226, 33.780399, 35.112076>,  <47.326103, 33.155552, 35.402138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.644226, 33.780399, 35.112076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582649, 33.853710, 35.500450>,  <47.545704, 33.897697, 35.733475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582649, 33.853710, 35.500450>,  <47.644226, 33.780399, 35.112076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.582649, 33.853710, 35.500450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939941, 0.330139, 0.086709,
		-0.304652, 0.925970, -0.223087,
		-0.153940, 0.183272, 0.970935,
		47.536469, 33.908691, 35.791729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.862152, 34.462524, 35.234398>,  <47.644226, 33.780399, 35.112076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.862152, 34.462524, 35.234398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873150, 34.267269, 35.583332>,  <47.879749, 34.150116, 35.792690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873150, 34.267269, 35.583332>,  <47.862152, 34.462524, 35.234398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.873150, 34.267269, 35.583332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970807, 0.221056, 0.093105,
		-0.238282, 0.844306, 0.479968,
		0.027491, -0.488141, 0.872332,
		47.881397, 34.120827, 35.845032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.580723, 34.911339, 34.714382>,  <47.862152, 34.462524, 35.234398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.580723, 34.911339, 34.714382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.864918, 35.149609, 34.864250>,  <48.035435, 35.292568, 34.954170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.864918, 35.149609, 34.864250>,  <47.580723, 34.911339, 34.714382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.864918, 35.149609, 34.864250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114313, -0.623051, 0.773783,
		0.694360, -0.506936, -0.510765,
		0.710491, 0.595671, 0.374672,
		48.078064, 35.328308, 34.976650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.606182, 29.476664, 24.032948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368614, 29.695673, 23.797159>,  <41.226074, 29.827078, 23.655685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368614, 29.695673, 23.797159>,  <41.606182, 29.476664, 24.032948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368614, 29.695673, 23.797159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350885, 0.483051, 0.802210,
		0.723973, 0.683286, -0.094777,
		-0.593921, 0.547522, -0.589472,
		41.190437, 29.859930, 23.620317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676609, 30.245052, 24.240786>,  <41.606182, 29.476664, 24.032948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676609, 30.245052, 24.240786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.325768, 30.185556, 24.058107>,  <41.115265, 30.149858, 23.948502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.325768, 30.185556, 24.058107>,  <41.676609, 30.245052, 24.240786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325768, 30.185556, 24.058107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479592, 0.322992, 0.815884,
		0.026156, 0.934641, -0.354631,
		-0.877102, -0.148738, -0.456695,
		41.062637, 30.140936, 23.921099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295868, 30.926262, 24.230356>,  <41.676609, 30.245052, 24.240786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295868, 30.926262, 24.230356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.036777, 30.624008, 24.191431>,  <40.881325, 30.442656, 24.168076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.036777, 30.624008, 24.191431>,  <41.295868, 30.926262, 24.230356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036777, 30.624008, 24.191431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330353, 0.163464, 0.929595,
		-0.686526, 0.634269, -0.355506,
		-0.647725, -0.755634, -0.097311,
		40.842461, 30.397318, 24.162237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652866, 31.164482, 24.337639>,  <41.295868, 30.926262, 24.230356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652866, 31.164482, 24.337639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.664803, 30.778273, 24.441076>,  <40.671963, 30.546547, 24.503138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.664803, 30.778273, 24.441076>,  <40.652866, 31.164482, 24.337639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664803, 30.778273, 24.441076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442781, 0.219172, 0.869430,
		-0.896133, -0.140441, -0.420977,
		0.029837, -0.965526, 0.258592,
		40.673752, 30.488615, 24.518654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996010, 31.159866, 24.626600>,  <40.652866, 31.164482, 24.337639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996010, 31.159866, 24.626600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.193130, 30.826401, 24.726320>,  <40.311401, 30.626322, 24.786152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.193130, 30.826401, 24.726320>,  <39.996010, 31.159866, 24.626600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193130, 30.826401, 24.726320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493032, -0.031446, 0.869443,
		-0.716986, -0.551373, -0.426520,
		0.492799, -0.833666, 0.249299,
		40.340969, 30.576302, 24.801109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532635, 30.748999, 24.946072>,  <39.996010, 31.159866, 24.626600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532635, 30.748999, 24.946072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.879257, 30.603098, 25.082331>,  <40.087231, 30.515558, 25.164085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.879257, 30.603098, 25.082331>,  <39.532635, 30.748999, 24.946072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879257, 30.603098, 25.082331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407366, -0.122608, 0.904998,
		-0.288333, -0.922998, -0.254833,
		0.866555, -0.364751, 0.340646,
		40.139225, 30.493673, 25.184525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360634, 30.247932, 25.391449>,  <39.532635, 30.748999, 24.946072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360634, 30.247932, 25.391449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.742802, 30.288187, 25.502476>,  <39.972103, 30.312340, 25.569092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.742802, 30.288187, 25.502476>,  <39.360634, 30.247932, 25.391449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742802, 30.288187, 25.502476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213172, -0.415327, 0.884342,
		0.204279, -0.904088, -0.375359,
		0.955420, 0.100637, 0.277569,
		40.029427, 30.318378, 25.585747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560860, 29.703175, 25.869467>,  <39.360634, 30.247932, 25.391449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560860, 29.703175, 25.869467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833046, 29.979319, 25.967749>,  <39.996357, 30.145006, 26.026718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833046, 29.979319, 25.967749>,  <39.560860, 29.703175, 25.869467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833046, 29.979319, 25.967749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153327, -0.193741, 0.968997,
		0.716561, -0.697041, -0.025983,
		0.680464, 0.690361, 0.245703,
		40.037186, 30.186426, 26.041460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938866, 29.533209, 26.549807>,  <39.560860, 29.703175, 25.869467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938866, 29.533209, 26.549807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973728, 29.930120, 26.514511>,  <39.994644, 30.168268, 26.493334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973728, 29.930120, 26.514511>,  <39.938866, 29.533209, 26.549807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973728, 29.930120, 26.514511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211920, 0.105017, 0.971628,
		0.973393, -0.065982, 0.219436,
		0.087154, 0.992279, -0.088240,
		39.999874, 30.227804, 26.488039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216167, 29.691168, 27.171263>,  <39.938866, 29.533209, 26.549807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216167, 29.691168, 27.171263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076942, 30.038244, 27.029297>,  <39.993408, 30.246490, 26.944118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076942, 30.038244, 27.029297>,  <40.216167, 29.691168, 27.171263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076942, 30.038244, 27.029297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219775, 0.292511, 0.930665,
		0.911347, 0.401928, 0.088887,
		-0.348060, 0.867693, -0.354913,
		39.972523, 30.298552, 26.922823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536964, 30.150618, 27.608793>,  <40.216167, 29.691168, 27.171263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536964, 30.150618, 27.608793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.206837, 30.307142, 27.445959>,  <40.008759, 30.401056, 27.348259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.206837, 30.307142, 27.445959>,  <40.536964, 30.150618, 27.608793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206837, 30.307142, 27.445959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266393, 0.365833, 0.891741,
		0.497871, 0.844419, -0.197688,
		-0.825324, 0.391309, -0.407085,
		39.959240, 30.424536, 27.323833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619843, 30.860298, 27.773945>,  <40.536964, 30.150618, 27.608793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619843, 30.860298, 27.773945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.237503, 30.764126, 27.706354>,  <40.008099, 30.706423, 27.665800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.237503, 30.764126, 27.706354>,  <40.619843, 30.860298, 27.773945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237503, 30.764126, 27.706354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258355, 0.413493, 0.873084,
		-0.140046, 0.878189, -0.457352,
		-0.955845, -0.240431, -0.168977,
		39.950748, 30.691996, 27.655661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262394, 31.390142, 28.146513>,  <40.619843, 30.860298, 27.773945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262394, 31.390142, 28.146513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976624, 31.118258, 28.080067>,  <39.805161, 30.955128, 28.040199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976624, 31.118258, 28.080067>,  <40.262394, 31.390142, 28.146513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976624, 31.118258, 28.080067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515755, 0.351107, 0.781487,
		-0.472861, 0.643986, -0.601402,
		-0.714423, -0.679710, -0.166114,
		39.762299, 30.914345, 28.030231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632267, 31.761003, 28.171644>,  <40.262394, 31.390142, 28.146513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632267, 31.761003, 28.171644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558014, 31.377331, 28.256977>,  <39.513462, 31.147127, 28.308178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558014, 31.377331, 28.256977>,  <39.632267, 31.761003, 28.171644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558014, 31.377331, 28.256977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414785, 0.273305, 0.867904,
		-0.890784, 0.072620, -0.448588,
		-0.185629, -0.959182, 0.213334,
		39.502327, 31.089577, 28.320978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022133, 31.712814, 28.527050>,  <39.632267, 31.761003, 28.171644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022133, 31.712814, 28.527050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142418, 31.340063, 28.608217>,  <39.214588, 31.116413, 28.656918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142418, 31.340063, 28.608217>,  <39.022133, 31.712814, 28.527050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142418, 31.340063, 28.608217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409252, 0.066094, 0.910024,
		-0.861442, -0.356702, -0.361498,
		0.300715, -0.931877, 0.202917,
		39.232632, 31.060499, 28.669092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393867, 31.343056, 28.906548>,  <39.022133, 31.712814, 28.527050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393867, 31.343056, 28.906548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750004, 31.185232, 28.997425>,  <38.963684, 31.090538, 29.051952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750004, 31.185232, 28.997425>,  <38.393867, 31.343056, 28.906548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750004, 31.185232, 28.997425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192317, 0.126390, 0.973160,
		-0.412684, -0.910137, 0.036650,
		0.890340, -0.394559, 0.227194,
		39.017105, 31.066864, 29.065584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295322, 30.768642, 29.436705>,  <38.393867, 31.343056, 28.906548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295322, 30.768642, 29.436705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678810, 30.878588, 29.465839>,  <38.908905, 30.944555, 29.483320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678810, 30.878588, 29.465839>,  <38.295322, 30.768642, 29.436705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678810, 30.878588, 29.465839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074471, -0.004499, 0.997213,
		0.274425, -0.961473, 0.016156,
		0.958720, 0.274863, 0.072837,
		38.966427, 30.961046, 29.487690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562561, 30.352268, 29.975159>,  <38.295322, 30.768642, 29.436705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562561, 30.352268, 29.975159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822235, 30.656084, 29.958899>,  <38.978039, 30.838373, 29.949142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822235, 30.656084, 29.958899>,  <38.562561, 30.352268, 29.975159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822235, 30.656084, 29.958899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044904, 0.015079, 0.998877,
		0.759302, -0.650284, -0.024317,
		0.649188, 0.759541, -0.040650,
		39.016991, 30.883947, 29.946703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183250, 30.171932, 30.271202>,  <38.562561, 30.352268, 29.975159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183250, 30.171932, 30.271202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167961, 30.571278, 30.288216>,  <39.158787, 30.810884, 30.298424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167961, 30.571278, 30.288216>,  <39.183250, 30.171932, 30.271202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167961, 30.571278, 30.288216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140864, -0.036757, 0.989346,
		0.989291, 0.043806, -0.139228,
		-0.038222, 0.998364, 0.042534,
		39.156494, 30.870787, 30.300976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420597, 30.224339, 30.940538>,  <39.183250, 30.171932, 30.271202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420597, 30.224339, 30.940538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297211, 30.593885, 30.849926>,  <39.223179, 30.815613, 30.795559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297211, 30.593885, 30.849926>,  <39.420597, 30.224339, 30.940538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297211, 30.593885, 30.849926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122100, 0.197717, 0.972625,
		0.943366, 0.327684, 0.051814,
		-0.308469, 0.923867, -0.226530,
		39.204670, 30.871046, 30.781967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866764, 30.631231, 31.332796>,  <39.420597, 30.224339, 30.940538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866764, 30.631231, 31.332796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537407, 30.841879, 31.248234>,  <39.339790, 30.968267, 31.197496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537407, 30.841879, 31.248234>,  <39.866764, 30.631231, 31.332796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537407, 30.841879, 31.248234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271101, -0.037771, 0.961809,
		0.498521, 0.849263, 0.173867,
		-0.823396, 0.526618, -0.211406,
		39.290386, 30.999865, 31.184813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354065, 31.054111, 31.711462>,  <39.866764, 30.631231, 31.332796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354065, 31.054111, 31.711462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.739120, 31.130110, 31.788635>,  <40.970154, 31.175709, 31.834940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.739120, 31.130110, 31.788635>,  <40.354065, 31.054111, 31.711462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739120, 31.130110, 31.788635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225392, -0.167353, -0.959787,
		-0.150069, 0.967416, -0.203925,
		0.962641, 0.189998, 0.192933,
		41.027912, 31.187109, 31.846516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553131, 31.564791, 31.298878>,  <40.354065, 31.054111, 31.711462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553131, 31.564791, 31.298878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.890591, 31.375130, 31.399620>,  <41.093067, 31.261333, 31.460066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.890591, 31.375130, 31.399620>,  <40.553131, 31.564791, 31.298878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890591, 31.375130, 31.399620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213069, -0.134891, -0.967681,
		0.492802, 0.870048, -0.012774,
		0.843652, -0.474153, 0.251855,
		41.143684, 31.232883, 31.475176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066185, 31.894171, 30.850883>,  <40.553131, 31.564791, 31.298878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066185, 31.894171, 30.850883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.212383, 31.545822, 30.982330>,  <41.300102, 31.336813, 31.061199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.212383, 31.545822, 30.982330>,  <41.066185, 31.894171, 30.850883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212383, 31.545822, 30.982330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406616, -0.168196, -0.897983,
		0.837302, 0.461832, 0.292636,
		0.365497, -0.870874, 0.328619,
		41.322033, 31.284559, 31.080915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755081, 31.851767, 30.612057>,  <41.066185, 31.894171, 30.850883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755081, 31.851767, 30.612057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692627, 31.467243, 30.702841>,  <41.655155, 31.236530, 30.757311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692627, 31.467243, 30.702841>,  <41.755081, 31.851767, 30.612057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692627, 31.467243, 30.702841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438965, -0.273372, -0.855907,
		0.884834, -0.034009, 0.464663,
		-0.156134, -0.961307, 0.226960,
		41.645786, 31.178850, 30.770929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336796, 31.467249, 30.517902>,  <41.755081, 31.851767, 30.612057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336796, 31.467249, 30.517902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.048092, 31.193674, 30.475405>,  <41.874870, 31.029530, 30.449907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.048092, 31.193674, 30.475405>,  <42.336796, 31.467249, 30.517902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048092, 31.193674, 30.475405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371280, -0.253037, -0.893378,
		0.584131, -0.684253, 0.436565,
		-0.721763, -0.683937, -0.106243,
		41.831562, 30.988493, 30.443531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698948, 30.930740, 30.216221>,  <42.336796, 31.467249, 30.517902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698948, 30.930740, 30.216221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.314449, 30.833405, 30.164387>,  <42.083752, 30.775003, 30.133287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.314449, 30.833405, 30.164387>,  <42.698948, 30.930740, 30.216221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314449, 30.833405, 30.164387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239078, -0.501697, -0.831349,
		0.137289, -0.830112, 0.540431,
		-0.961246, -0.243340, -0.129584,
		42.026077, 30.760403, 30.125511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700203, 30.213758, 30.006720>,  <42.698948, 30.930740, 30.216221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700203, 30.213758, 30.006720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.341362, 30.344130, 29.887400>,  <42.126057, 30.422352, 29.815807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.341362, 30.344130, 29.887400>,  <42.700203, 30.213758, 30.006720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341362, 30.344130, 29.887400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017214, -0.700418, -0.713526,
		-0.441492, -0.634969, 0.633955,
		-0.897100, 0.325929, -0.298298,
		42.072231, 30.441908, 29.797911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343342, 29.622156, 29.813801>,  <42.700203, 30.213758, 30.006720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343342, 29.622156, 29.813801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.155121, 29.933266, 29.647118>,  <42.042187, 30.119932, 29.547108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.155121, 29.933266, 29.647118>,  <42.343342, 29.622156, 29.813801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155121, 29.933266, 29.647118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054811, -0.497113, -0.865953,
		-0.880667, -0.384638, 0.276549,
		-0.470555, 0.777774, -0.416709,
		42.013954, 30.166597, 29.522104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702576, 29.343983, 29.523886>,  <42.343342, 29.622156, 29.813801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702576, 29.343983, 29.523886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.802673, 29.687361, 29.344799>,  <41.862732, 29.893387, 29.237347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.802673, 29.687361, 29.344799>,  <41.702576, 29.343983, 29.523886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802673, 29.687361, 29.344799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076962, -0.478605, -0.874651,
		-0.965119, 0.184418, -0.185835,
		0.250243, 0.858445, -0.447718,
		41.877747, 29.944895, 29.210484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373230, 29.373325, 28.926168>,  <41.702576, 29.343983, 29.523886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373230, 29.373325, 28.926168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.690327, 29.607866, 28.859528>,  <41.880585, 29.748590, 28.819544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.690327, 29.607866, 28.859528>,  <41.373230, 29.373325, 28.926168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690327, 29.607866, 28.859528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131795, -0.431723, -0.892326,
		-0.595143, 0.685424, -0.419522,
		0.792739, 0.586352, -0.166602,
		41.928150, 29.783772, 28.809547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291752, 29.741245, 28.253305>,  <41.373230, 29.373325, 28.926168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291752, 29.741245, 28.253305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.684319, 29.781483, 28.318659>,  <41.919861, 29.805624, 28.357870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.684319, 29.781483, 28.318659>,  <41.291752, 29.741245, 28.253305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684319, 29.781483, 28.318659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184626, -0.263392, -0.946857,
		-0.052213, 0.959430, -0.277071,
		0.981421, 0.100592, 0.163383,
		41.978745, 29.811661, 28.367674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564140, 30.288824, 27.724871>,  <41.291752, 29.741245, 28.253305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564140, 30.288824, 27.724871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.898293, 30.092100, 27.823061>,  <42.098785, 29.974066, 27.881975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.898293, 30.092100, 27.823061>,  <41.564140, 30.288824, 27.724871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898293, 30.092100, 27.823061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270330, -0.021250, -0.962533,
		0.478600, 0.870443, 0.115199,
		0.835382, -0.491811, 0.245477,
		42.148907, 29.944557, 27.896704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206203, 30.685583, 27.437658>,  <41.564140, 30.288824, 27.724871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206203, 30.685583, 27.437658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.348015, 30.314056, 27.480751>,  <42.433102, 30.091141, 27.506607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.348015, 30.314056, 27.480751>,  <42.206203, 30.685583, 27.437658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348015, 30.314056, 27.480751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485177, 0.084245, -0.870348,
		0.799319, 0.360834, 0.480508,
		0.354532, -0.928817, 0.107730,
		42.454376, 30.035412, 27.513069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965115, 30.758501, 27.262291>,  <42.206203, 30.685583, 27.437658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965115, 30.758501, 27.262291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.857777, 30.375202, 27.222780>,  <42.793373, 30.145224, 27.199074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.857777, 30.375202, 27.222780>,  <42.965115, 30.758501, 27.262291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857777, 30.375202, 27.222780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443334, -0.031809, -0.895792,
		0.855247, -0.284170, 0.433359,
		-0.268342, -0.958246, -0.098778,
		42.777275, 30.087729, 27.193148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581150, 30.500654, 27.038643>,  <42.965115, 30.758501, 27.262291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581150, 30.500654, 27.038643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.294437, 30.237650, 26.945774>,  <43.122410, 30.079847, 26.890053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.294437, 30.237650, 26.945774>,  <43.581150, 30.500654, 27.038643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294437, 30.237650, 26.945774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394984, -0.108459, -0.912263,
		0.574642, -0.745597, 0.337448,
		-0.716780, -0.657512, -0.232174,
		43.079403, 30.040396, 26.876122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990650, 29.899006, 26.781796>,  <43.581150, 30.500654, 27.038643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990650, 29.899006, 26.781796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.617058, 29.888435, 26.639257>,  <43.392902, 29.882093, 26.553736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.617058, 29.888435, 26.639257>,  <43.990650, 29.899006, 26.781796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617058, 29.888435, 26.639257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345821, -0.317835, -0.882830,
		-0.089927, -0.947778, 0.305991,
		-0.933981, -0.026428, -0.356344,
		43.336864, 29.880507, 26.532354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960068, 29.204525, 26.423624>,  <43.990650, 29.899006, 26.781796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960068, 29.204525, 26.423624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.642521, 29.414053, 26.300083>,  <43.451992, 29.539770, 26.225960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.642521, 29.414053, 26.300083>,  <43.960068, 29.204525, 26.423624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642521, 29.414053, 26.300083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099839, -0.388733, -0.915925,
		-0.599841, -0.757957, 0.256305,
		-0.793866, 0.523820, -0.308851,
		43.404362, 29.571199, 26.207428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643509, 28.773190, 25.962330>,  <43.960068, 29.204525, 26.423624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643509, 28.773190, 25.962330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.518620, 29.143396, 25.876595>,  <43.443687, 29.365520, 25.825153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.518620, 29.143396, 25.876595>,  <43.643509, 28.773190, 25.962330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518620, 29.143396, 25.876595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001660, -0.226147, -0.974092,
		-0.950009, -0.303774, 0.072144,
		-0.312219, 0.925515, -0.214338,
		43.424953, 29.421051, 25.812294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161884, 28.737141, 25.456804>,  <43.643509, 28.773190, 25.962330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161884, 28.737141, 25.456804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.234020, 29.128719, 25.418560>,  <43.277302, 29.363667, 25.395613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.234020, 29.128719, 25.418560>,  <43.161884, 28.737141, 25.456804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234020, 29.128719, 25.418560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003854, -0.096500, -0.995326,
		-0.983596, 0.179870, -0.013631,
		0.180344, 0.978946, -0.095610,
		43.288124, 29.422403, 25.389877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.774288, 29.017572, 24.938152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.044239, 29.312613, 24.946968>,  <43.206211, 29.489637, 24.952257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.044239, 29.312613, 24.946968>,  <42.774288, 29.017572, 24.938152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044239, 29.312613, 24.946968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189369, -0.144242, -0.971254,
		-0.713218, 0.659651, -0.237025,
		0.674877, 0.737601, 0.022041,
		43.246704, 29.533894, 24.953581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525562, 29.506516, 24.487877>,  <42.774288, 29.017572, 24.938152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525562, 29.506516, 24.487877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.920910, 29.567074, 24.493719>,  <43.158119, 29.603409, 24.497225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.920910, 29.567074, 24.493719>,  <42.525562, 29.506516, 24.487877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920910, 29.567074, 24.493719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014526, 0.001622, -0.999893,
		-0.151404, 0.988472, -0.000596,
		0.988365, 0.151396, 0.014604,
		43.217419, 29.612494, 24.498100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550941, 30.008238, 24.007824>,  <42.525562, 29.506516, 24.487877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550941, 30.008238, 24.007824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.916515, 29.852051, 24.052095>,  <43.135860, 29.758339, 24.078659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.916515, 29.852051, 24.052095>,  <42.550941, 30.008238, 24.007824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916515, 29.852051, 24.052095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070551, -0.115705, -0.990775,
		0.399673, 0.913316, -0.078199,
		0.913939, -0.390469, 0.110679,
		43.190697, 29.734909, 24.085299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000854, 30.322329, 23.533861>,  <42.550941, 30.008238, 24.007824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000854, 30.322329, 23.533861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.182720, 29.971836, 23.597734>,  <43.291840, 29.761539, 23.636059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.182720, 29.971836, 23.597734>,  <43.000854, 30.322329, 23.533861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182720, 29.971836, 23.597734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185791, -0.082036, -0.979159,
		0.871072, 0.474853, 0.125498,
		0.454661, -0.876233, 0.159683,
		43.319118, 29.708965, 23.645639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489979, 30.297571, 22.983196>,  <43.000854, 30.322329, 23.533861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489979, 30.297571, 22.983196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.471947, 29.923946, 23.124897>,  <43.461128, 29.699772, 23.209917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.471947, 29.923946, 23.124897>,  <43.489979, 30.297571, 22.983196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471947, 29.923946, 23.124897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132859, -0.357069, -0.924581,
		0.990109, 0.005381, 0.140197,
		-0.045085, -0.934062, 0.354252,
		43.458420, 29.643728, 23.231173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041237, 30.013670, 22.714558>,  <43.489979, 30.297571, 22.983196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041237, 30.013670, 22.714558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.771797, 29.729565, 22.796322>,  <43.610134, 29.559101, 22.845381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.771797, 29.729565, 22.796322>,  <44.041237, 30.013670, 22.714558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771797, 29.729565, 22.796322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039947, -0.311152, -0.949520,
		0.738014, -0.631433, 0.237965,
		-0.673602, -0.710265, 0.204410,
		43.569717, 29.516485, 22.857645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345322, 29.381731, 22.533140>,  <44.041237, 30.013670, 22.714558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345322, 29.381731, 22.533140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.953556, 29.301332, 22.525602>,  <43.718498, 29.253094, 22.521080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.953556, 29.301332, 22.525602>,  <44.345322, 29.381731, 22.533140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953556, 29.301332, 22.525602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094051, -0.371698, -0.923577,
		0.178634, -0.906333, 0.382949,
		-0.979410, -0.200999, -0.018843,
		43.659733, 29.241034, 22.519949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338451, 28.801191, 22.144299>,  <44.345322, 29.381731, 22.533140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338451, 28.801191, 22.144299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.958160, 28.920725, 22.177313>,  <43.729984, 28.992445, 22.197123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.958160, 28.920725, 22.177313>,  <44.338451, 28.801191, 22.144299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958160, 28.920725, 22.177313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225335, -0.483230, -0.845998,
		-0.212929, -0.822913, 0.526759,
		-0.950729, 0.298835, 0.082538,
		43.672943, 29.010376, 22.202074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919422, 28.170462, 22.228111>,  <44.338451, 28.801191, 22.144299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919422, 28.170462, 22.228111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.712845, 28.482811, 22.087528>,  <43.588898, 28.670221, 22.003178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.712845, 28.482811, 22.087528>,  <43.919422, 28.170462, 22.228111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712845, 28.482811, 22.087528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049332, -0.436877, -0.898168,
		-0.854901, -0.446512, 0.264143,
		-0.516440, 0.780875, -0.351459,
		43.557911, 28.717073, 21.982090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437298, 27.787733, 21.743191>,  <43.919422, 28.170462, 22.228111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437298, 27.787733, 21.743191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.432278, 28.168486, 21.620708>,  <43.429264, 28.396936, 21.547218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.432278, 28.168486, 21.620708>,  <43.437298, 27.787733, 21.743191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432278, 28.168486, 21.620708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197462, -0.302561, -0.932452,
		-0.980230, 0.048759, 0.191758,
		-0.012554, 0.951882, -0.306207,
		43.428513, 28.454050, 21.528847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844398, 27.877657, 21.307562>,  <43.437298, 27.787733, 21.743191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844398, 27.877657, 21.307562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117458, 28.157534, 21.223263>,  <43.281296, 28.325460, 21.172684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117458, 28.157534, 21.223263>,  <42.844398, 27.877657, 21.307562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117458, 28.157534, 21.223263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004624, -0.292534, -0.956244,
		-0.730728, 0.651809, -0.202935,
		0.682653, 0.699692, -0.210749,
		43.322254, 28.367441, 21.160038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704994, 28.066122, 20.682095>,  <42.844398, 27.877657, 21.307562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704994, 28.066122, 20.682095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049942, 28.267305, 20.705265>,  <43.256908, 28.388016, 20.719168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049942, 28.267305, 20.705265>,  <42.704994, 28.066122, 20.682095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049942, 28.267305, 20.705265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145550, -0.136705, -0.979861,
		-0.484912, 0.853430, -0.191096,
		0.862366, 0.502960, 0.057927,
		43.308651, 28.418194, 20.722643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630699, 28.517427, 20.031038>,  <42.704994, 28.066122, 20.682095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630699, 28.517427, 20.031038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.016094, 28.492311, 20.135155>,  <43.247330, 28.477242, 20.197624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.016094, 28.492311, 20.135155>,  <42.630699, 28.517427, 20.031038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016094, 28.492311, 20.135155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264323, 0.067882, -0.962042,
		0.042740, 0.995715, 0.082001,
		0.963487, -0.062792, 0.260289,
		43.305141, 28.473475, 20.213242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047005, 29.075369, 19.633518>,  <42.630699, 28.517427, 20.031038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047005, 29.075369, 19.633518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.338234, 28.829887, 19.755680>,  <43.512974, 28.682598, 19.828978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.338234, 28.829887, 19.755680>,  <43.047005, 29.075369, 19.633518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338234, 28.829887, 19.755680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461053, 0.108709, -0.880688,
		0.507281, 0.782017, 0.362099,
		0.728077, -0.613704, 0.305405,
		43.556656, 28.645777, 19.847301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778217, 29.421631, 19.717110>,  <43.047005, 29.075369, 19.633518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778217, 29.421631, 19.717110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.810375, 29.030972, 19.637419>,  <43.829670, 28.796576, 19.589603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.810375, 29.030972, 19.637419>,  <43.778217, 29.421631, 19.717110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810375, 29.030972, 19.637419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622164, 0.205324, -0.755483,
		0.778749, -0.063219, 0.624142,
		0.080390, -0.976650, -0.199228,
		43.834492, 28.737976, 19.577650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495285, 29.371408, 19.631929>,  <43.778217, 29.421631, 19.717110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495285, 29.371408, 19.631929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.338871, 29.041782, 19.467972>,  <44.245022, 28.844007, 19.369598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.338871, 29.041782, 19.467972>,  <44.495285, 29.371408, 19.631929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338871, 29.041782, 19.467972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619200, 0.093953, -0.779593,
		0.680945, -0.558650, 0.473523,
		-0.391031, -0.824065, -0.409893,
		44.221561, 28.794563, 19.345003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072742, 28.972677, 19.445446>,  <44.495285, 29.371408, 19.631929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072742, 28.972677, 19.445446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.766045, 28.860455, 19.214483>,  <44.582027, 28.793121, 19.075907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.766045, 28.860455, 19.214483>,  <45.072742, 28.972677, 19.445446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766045, 28.860455, 19.214483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573246, 0.105635, -0.812546,
		0.288960, -0.954007, 0.079833,
		-0.766741, -0.280557, -0.577405,
		44.536022, 28.776287, 19.041262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437675, 28.717833, 18.829943>,  <45.072742, 28.972677, 19.445446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437675, 28.717833, 18.829943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.065712, 28.737104, 18.684095>,  <44.842533, 28.748669, 18.596588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.065712, 28.737104, 18.684095>,  <45.437675, 28.717833, 18.829943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065712, 28.737104, 18.684095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354863, 0.378039, -0.855078,
		0.096640, -0.924535, -0.368640,
		-0.929911, 0.048182, -0.364617,
		44.786739, 28.751558, 18.574711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568119, 28.542484, 18.176420>,  <45.437675, 28.717833, 18.829943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568119, 28.542484, 18.176420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208706, 28.717974, 18.171320>,  <44.993057, 28.823267, 18.168261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208706, 28.717974, 18.171320>,  <45.568119, 28.542484, 18.176420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208706, 28.717974, 18.171320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254175, 0.496449, -0.830020,
		-0.357820, -0.749040, -0.557588,
		-0.898532, 0.438723, -0.012748,
		44.939148, 28.849590, 18.167496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372051, 28.596287, 17.497066>,  <45.568119, 28.542484, 18.176420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372051, 28.596287, 17.497066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.137817, 28.860287, 17.685316>,  <44.997276, 29.018686, 17.798265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.137817, 28.860287, 17.685316>,  <45.372051, 28.596287, 17.497066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137817, 28.860287, 17.685316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046642, 0.607054, -0.793291,
		-0.809265, -0.442591, -0.386268,
		-0.585589, 0.659999, 0.470624,
		44.962139, 29.058287, 17.826504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878647, 28.708607, 16.961281>,  <45.372051, 28.596287, 17.497066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878647, 28.708607, 16.961281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.906494, 29.014214, 17.217852>,  <44.923203, 29.197578, 17.371794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.906494, 29.014214, 17.217852>,  <44.878647, 28.708607, 16.961281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906494, 29.014214, 17.217852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094365, 0.635061, -0.766676,
		-0.993100, 0.113904, -0.027885,
		0.069619, 0.764018, 0.641428,
		44.927380, 29.243420, 17.410280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397526, 29.193840, 16.803427>,  <44.878647, 28.708607, 16.961281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397526, 29.193840, 16.803427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.704041, 29.374285, 16.986422>,  <44.887951, 29.482552, 17.096218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.704041, 29.374285, 16.986422>,  <44.397526, 29.193840, 16.803427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704041, 29.374285, 16.986422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125226, 0.593530, -0.795010,
		-0.630173, 0.666498, 0.398325,
		0.766290, 0.451113, 0.457489,
		44.933929, 29.509619, 17.123669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461960, 29.796604, 16.683155>,  <44.397526, 29.193840, 16.803427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461960, 29.796604, 16.683155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.404148, 30.149164, 16.503269>,  <44.369461, 30.360701, 16.395338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.404148, 30.149164, 16.503269>,  <44.461960, 29.796604, 16.683155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404148, 30.149164, 16.503269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485233, -0.459219, -0.744087,
		-0.862358, 0.110678, 0.494054,
		-0.144525, 0.881401, -0.449716,
		44.360790, 30.413584, 16.368355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680511, 29.921867, 16.555973>,  <44.461960, 29.796604, 16.683155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680511, 29.921867, 16.555973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.925903, 30.108368, 16.301020>,  <44.073139, 30.220268, 16.148048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.925903, 30.108368, 16.301020>,  <43.680511, 29.921867, 16.555973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925903, 30.108368, 16.301020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371829, -0.541505, -0.753999,
		-0.696700, 0.699558, -0.158834,
		0.613476, 0.466252, -0.637383,
		44.109947, 30.248243, 16.109804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631824, 30.651728, 16.110893>,  <43.680511, 29.921867, 16.555973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631824, 30.651728, 16.110893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.293854, 30.779119, 15.938997>,  <43.091072, 30.855555, 15.835860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.293854, 30.779119, 15.938997>,  <43.631824, 30.651728, 16.110893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293854, 30.779119, 15.938997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372422, 0.226409, 0.900023,
		0.383933, 0.920495, -0.072691,
		-0.844924, 0.318477, -0.429738,
		43.040375, 30.874662, 15.810076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513058, 31.215151, 16.476507>,  <43.631824, 30.651728, 16.110893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513058, 31.215151, 16.476507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.176228, 31.082626, 16.306269>,  <42.974129, 31.003111, 16.204124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.176228, 31.082626, 16.306269>,  <43.513058, 31.215151, 16.476507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176228, 31.082626, 16.306269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446409, -0.014710, 0.894708,
		-0.302689, 0.943406, -0.135514,
		-0.842080, -0.331313, -0.425597,
		42.923603, 30.983232, 16.178589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964279, 31.582687, 16.776026>,  <43.513058, 31.215151, 16.476507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964279, 31.582687, 16.776026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801929, 31.248476, 16.627888>,  <42.704517, 31.047949, 16.539005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801929, 31.248476, 16.627888>,  <42.964279, 31.582687, 16.776026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801929, 31.248476, 16.627888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359684, -0.226490, 0.905168,
		-0.840173, 0.500596, -0.208598,
		-0.405878, -0.835528, -0.370347,
		42.680164, 30.997818, 16.516783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213287, 31.632715, 16.880291>,  <42.964279, 31.582687, 16.776026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213287, 31.632715, 16.880291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.288532, 31.243893, 16.824114>,  <42.333679, 31.010599, 16.790407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.288532, 31.243893, 16.824114>,  <42.213287, 31.632715, 16.880291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288532, 31.243893, 16.824114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526255, -0.220493, 0.821242,
		-0.829259, -0.080572, -0.553026,
		0.188108, -0.972055, -0.140444,
		42.344963, 30.952276, 16.781981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552925, 31.289408, 16.877075>,  <42.213287, 31.632715, 16.880291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552925, 31.289408, 16.877075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.848118, 31.029982, 16.951630>,  <42.025234, 30.874325, 16.996363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.848118, 31.029982, 16.951630>,  <41.552925, 31.289408, 16.877075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848118, 31.029982, 16.951630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425188, -0.232418, 0.874755,
		-0.524019, -0.724804, -0.447285,
		0.737983, -0.648568, 0.186386,
		42.069511, 30.835411, 17.007545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205959, 30.749125, 17.127275>,  <41.552925, 31.289408, 16.877075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205959, 30.749125, 17.127275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.589630, 30.694618, 17.226406>,  <41.819832, 30.661915, 17.285885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.589630, 30.694618, 17.226406>,  <41.205959, 30.749125, 17.127275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589630, 30.694618, 17.226406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282580, -0.425706, 0.859606,
		-0.011631, -0.894543, -0.446831,
		0.959173, -0.136264, 0.247829,
		41.877380, 30.653740, 17.300755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237041, 30.118008, 17.439365>,  <41.205959, 30.749125, 17.127275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237041, 30.118008, 17.439365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.576134, 30.287880, 17.566483>,  <41.779591, 30.389803, 17.642754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.576134, 30.287880, 17.566483>,  <41.237041, 30.118008, 17.439365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576134, 30.287880, 17.566483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265174, -0.179571, 0.947332,
		0.459378, -0.887357, -0.039615,
		0.847735, 0.424679, 0.317795,
		41.830456, 30.415283, 17.661821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334816, 29.688986, 18.021334>,  <41.237041, 30.118008, 17.439365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334816, 29.688986, 18.021334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.582928, 29.995701, 18.087418>,  <41.731792, 30.179729, 18.127068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.582928, 29.995701, 18.087418>,  <41.334816, 29.688986, 18.021334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582928, 29.995701, 18.087418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032482, -0.185333, 0.982139,
		0.783712, -0.614562, -0.090051,
		0.620275, 0.766789, 0.165210,
		41.769009, 30.225737, 18.136980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927616, 29.426056, 18.466225>,  <41.334816, 29.688986, 18.021334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927616, 29.426056, 18.466225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910984, 29.823784, 18.505417>,  <41.901005, 30.062420, 18.528933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910984, 29.823784, 18.505417>,  <41.927616, 29.426056, 18.466225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910984, 29.823784, 18.505417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107769, -0.093028, 0.989814,
		0.993306, 0.051718, -0.103288,
		-0.041582, 0.994319, 0.097979,
		41.898510, 30.122080, 18.534811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255684, 29.539896, 19.056870>,  <41.927616, 29.426056, 18.466225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255684, 29.539896, 19.056870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063175, 29.888237, 19.016886>,  <41.947670, 30.097242, 18.992895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063175, 29.888237, 19.016886>,  <42.255684, 29.539896, 19.056870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063175, 29.888237, 19.016886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074893, 0.072768, 0.994533,
		0.873367, 0.486125, 0.030200,
		-0.481270, 0.870854, -0.099960,
		41.918793, 30.149494, 18.986898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430401, 29.911129, 19.570496>,  <42.255684, 29.539896, 19.056870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430401, 29.911129, 19.570496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.116676, 30.131556, 19.456530>,  <41.928440, 30.263811, 19.388151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.116676, 30.131556, 19.456530>,  <42.430401, 29.911129, 19.570496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116676, 30.131556, 19.456530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314919, 0.042018, 0.948188,
		0.534487, 0.833402, 0.140586,
		-0.784315, 0.551068, -0.284913,
		41.881382, 30.296875, 19.371056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389153, 30.269159, 20.115269>,  <42.430401, 29.911129, 19.570496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389153, 30.269159, 20.115269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.019882, 30.307482, 19.966370>,  <41.798321, 30.330475, 19.877029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.019882, 30.307482, 19.966370>,  <42.389153, 30.269159, 20.115269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019882, 30.307482, 19.966370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378796, -0.062302, 0.923381,
		0.065275, 0.993448, 0.093808,
		-0.923175, 0.095808, -0.372248,
		41.742931, 30.336224, 19.854696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168537, 30.786459, 20.477125>,  <42.389153, 30.269159, 20.115269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168537, 30.786459, 20.477125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.851856, 30.580256, 20.345997>,  <41.661850, 30.456533, 20.267319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.851856, 30.580256, 20.345997>,  <42.168537, 30.786459, 20.477125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851856, 30.580256, 20.345997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309749, -0.123799, 0.942725,
		-0.526565, 0.847896, -0.061666,
		-0.791698, -0.515506, -0.327823,
		41.614346, 30.425604, 20.247650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599331, 31.170759, 20.755892>,  <42.168537, 30.786459, 20.477125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599331, 31.170759, 20.755892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.491604, 30.794870, 20.671612>,  <41.426968, 30.569338, 20.621044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.491604, 30.794870, 20.671612>,  <41.599331, 31.170759, 20.755892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491604, 30.794870, 20.671612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290233, -0.129417, 0.948165,
		-0.918278, 0.316509, -0.237883,
		-0.269317, -0.939720, -0.210702,
		41.410809, 30.512955, 20.608402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985355, 31.111290, 21.098469>,  <41.599331, 31.170759, 20.755892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985355, 31.111290, 21.098469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.092289, 30.729149, 21.048132>,  <41.156448, 30.499865, 21.017931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.092289, 30.729149, 21.048132>,  <40.985355, 31.111290, 21.098469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092289, 30.729149, 21.048132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366932, -0.221681, 0.903448,
		-0.891007, -0.195347, -0.409812,
		0.267333, -0.955352, -0.125840,
		41.172489, 30.442543, 21.010380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464233, 30.708454, 21.399910>,  <40.985355, 31.111290, 21.098469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464233, 30.708454, 21.399910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783669, 30.468498, 21.380390>,  <40.975330, 30.324524, 21.368679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783669, 30.468498, 21.380390>,  <40.464233, 30.708454, 21.399910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783669, 30.468498, 21.380390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189570, -0.327653, 0.925584,
		-0.571240, -0.729913, -0.375383,
		0.798592, -0.599892, -0.048799,
		41.023247, 30.288530, 21.365751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174858, 30.067476, 21.659964>,  <40.464233, 30.708454, 21.399910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174858, 30.067476, 21.659964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.572998, 30.068840, 21.698460>,  <40.811882, 30.069658, 21.721558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.572998, 30.068840, 21.698460>,  <40.174858, 30.067476, 21.659964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572998, 30.068840, 21.698460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091485, -0.278616, 0.956036,
		0.030076, -0.960397, -0.277009,
		0.995352, 0.003411, 0.096241,
		40.871605, 30.069862, 21.727331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378002, 29.292372, 21.948694>,  <40.174858, 30.067476, 21.659964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378002, 29.292372, 21.948694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.644485, 29.584204, 22.010500>,  <40.804375, 29.759304, 22.047585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.644485, 29.584204, 22.010500>,  <40.378002, 29.292372, 21.948694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644485, 29.584204, 22.010500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028144, -0.231640, 0.972394,
		0.745234, -0.643469, -0.174854,
		0.666209, 0.729582, 0.154516,
		40.844349, 29.803078, 22.056854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941135, 28.983749, 22.337049>,  <40.378002, 29.292372, 21.948694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941135, 28.983749, 22.337049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.940495, 29.370129, 22.440540>,  <40.940109, 29.601957, 22.502634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.940495, 29.370129, 22.440540>,  <40.941135, 28.983749, 22.337049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940495, 29.370129, 22.440540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079261, -0.257789, 0.962945,
		0.996853, 0.022049, -0.076150,
		-0.001601, 0.965950, 0.258725,
		40.940014, 29.659914, 22.518158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078644, 28.894745, 23.096621>,  <40.941135, 28.983749, 22.337049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078644, 28.894745, 23.096621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.024742, 29.289791, 23.064478>,  <40.992401, 29.526819, 23.045193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.024742, 29.289791, 23.064478>,  <41.078644, 28.894745, 23.096621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024742, 29.289791, 23.064478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166188, 0.057423, 0.984421,
		0.976843, 0.146010, 0.156392,
		-0.134755, 0.987615, -0.080359,
		40.984314, 29.586075, 23.040371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.879913, 28.868187, 27.817022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.745903, 29.230787, 27.714249>,  <42.665497, 29.448347, 27.652584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.745903, 29.230787, 27.714249>,  <42.879913, 28.868187, 27.817022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745903, 29.230787, 27.714249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357533, 0.129987, 0.924810,
		0.871739, 0.401695, 0.280556,
		-0.335023, 0.906501, -0.256934,
		42.645397, 29.502737, 27.637169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237984, 29.341999, 28.231253>,  <42.879913, 28.868187, 27.817022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237984, 29.341999, 28.231253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882317, 29.504513, 28.147049>,  <42.668915, 29.602020, 28.096527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882317, 29.504513, 28.147049>,  <43.237984, 29.341999, 28.231253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882317, 29.504513, 28.147049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119619, 0.237663, 0.963954,
		0.441669, 0.882298, -0.162723,
		-0.889168, 0.406283, -0.210508,
		42.615566, 29.626398, 28.083897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217655, 29.985294, 28.563652>,  <43.237984, 29.341999, 28.231253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217655, 29.985294, 28.563652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831100, 29.931147, 28.476219>,  <42.599167, 29.898657, 28.423759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831100, 29.931147, 28.476219>,  <43.217655, 29.985294, 28.563652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831100, 29.931147, 28.476219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254920, 0.615124, 0.746082,
		0.033457, 0.776722, -0.628954,
		-0.966383, -0.135371, -0.218582,
		42.541187, 29.890535, 28.410645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789700, 30.681353, 28.496845>,  <43.217655, 29.985294, 28.563652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789700, 30.681353, 28.496845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506027, 30.417978, 28.597664>,  <42.335823, 30.259954, 28.658155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506027, 30.417978, 28.597664>,  <42.789700, 30.681353, 28.496845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506027, 30.417978, 28.597664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265477, 0.580578, 0.769709,
		-0.653137, 0.478948, -0.586533,
		-0.709178, -0.658437, 0.252047,
		42.293274, 30.220448, 28.673279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212563, 31.105566, 28.658594>,  <42.789700, 30.681353, 28.496845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212563, 31.105566, 28.658594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100380, 30.756556, 28.818615>,  <42.033070, 30.547150, 28.914627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100380, 30.756556, 28.818615>,  <42.212563, 31.105566, 28.658594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100380, 30.756556, 28.818615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457320, 0.487897, 0.743515,
		-0.843922, 0.025568, -0.535856,
		-0.280453, -0.872527, 0.400054,
		42.016243, 30.494797, 28.938631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383907, 31.089767, 28.843309>,  <42.212563, 31.105566, 28.658594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383907, 31.089767, 28.843309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586304, 30.818956, 29.057077>,  <41.707741, 30.656469, 29.185337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586304, 30.818956, 29.057077>,  <41.383907, 31.089767, 28.843309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586304, 30.818956, 29.057077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303125, 0.440488, 0.845036,
		-0.807520, -0.589576, 0.017659,
		0.505991, -0.677031, 0.534418,
		41.738102, 30.615847, 29.217403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979557, 31.030228, 29.413738>,  <41.383907, 31.089767, 28.843309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979557, 31.030228, 29.413738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.314678, 30.842329, 29.525034>,  <41.515751, 30.729589, 29.591812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.314678, 30.842329, 29.525034>,  <40.979557, 31.030228, 29.413738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314678, 30.842329, 29.525034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152544, 0.287929, 0.945424,
		-0.524225, -0.834526, 0.169572,
		0.837806, -0.469748, 0.278241,
		41.566021, 30.701405, 29.608507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717220, 30.608353, 29.966158>,  <40.979557, 31.030228, 29.413738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717220, 30.608353, 29.966158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.113632, 30.639744, 30.009409>,  <41.351479, 30.658579, 30.035360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.113632, 30.639744, 30.009409>,  <40.717220, 30.608353, 29.966158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113632, 30.639744, 30.009409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115054, 0.089853, 0.989287,
		0.067912, -0.992859, 0.098075,
		0.991035, 0.078468, 0.108130,
		41.410942, 30.663286, 30.041847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916138, 30.076124, 30.499056>,  <40.717220, 30.608353, 29.966158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916138, 30.076124, 30.499056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191334, 30.365513, 30.476221>,  <41.356453, 30.539146, 30.462521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191334, 30.365513, 30.476221>,  <40.916138, 30.076124, 30.499056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191334, 30.365513, 30.476221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123389, 0.194126, 0.973186,
		0.715155, -0.662497, 0.222825,
		0.687988, 0.723473, -0.057086,
		41.397732, 30.582554, 30.459095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351357, 29.919260, 31.033018>,  <40.916138, 30.076124, 30.499056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351357, 29.919260, 31.033018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.405197, 30.307814, 30.954741>,  <41.437500, 30.540945, 30.907774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.405197, 30.307814, 30.954741>,  <41.351357, 29.919260, 31.033018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405197, 30.307814, 30.954741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154726, 0.215670, 0.964130,
		0.978745, -0.099496, 0.179328,
		0.134603, 0.971384, -0.195692,
		41.445580, 30.599228, 30.896032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833302, 30.152086, 31.575514>,  <41.351357, 29.919260, 31.033018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833302, 30.152086, 31.575514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674061, 30.480541, 31.411930>,  <41.578514, 30.677614, 31.313780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674061, 30.480541, 31.411930>,  <41.833302, 30.152086, 31.575514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674061, 30.480541, 31.411930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003577, 0.444417, 0.895813,
		0.917333, 0.358091, -0.173988,
		-0.398105, 0.821136, -0.408959,
		41.554630, 30.726883, 31.289242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224552, 30.653791, 31.802088>,  <41.833302, 30.152086, 31.575514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224552, 30.653791, 31.802088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878708, 30.831909, 31.708992>,  <41.671204, 30.938780, 31.653135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878708, 30.831909, 31.708992>,  <42.224552, 30.653791, 31.802088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878708, 30.831909, 31.708992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053018, 0.379768, 0.923561,
		0.499642, 0.810858, -0.304742,
		-0.864608, 0.445293, -0.232738,
		41.619324, 30.965498, 31.639170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306007, 31.284740, 32.140961>,  <42.224552, 30.653791, 31.802088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306007, 31.284740, 32.140961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915207, 31.247412, 32.064274>,  <41.680725, 31.225014, 32.018261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915207, 31.247412, 32.064274>,  <42.306007, 31.284740, 32.140961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915207, 31.247412, 32.064274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211977, 0.327856, 0.920639,
		-0.023061, 0.940107, -0.340098,
		-0.977003, -0.093324, -0.191721,
		41.622105, 31.219414, 32.006756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053722, 31.740248, 32.561440>,  <42.306007, 31.284740, 32.140961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053722, 31.740248, 32.561440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.729256, 31.519060, 32.485306>,  <41.534576, 31.386347, 32.439625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.729256, 31.519060, 32.485306>,  <42.053722, 31.740248, 32.561440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729256, 31.519060, 32.485306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269708, 0.064952, 0.960749,
		-0.518902, 0.830666, -0.201827,
		-0.811171, -0.552969, -0.190334,
		41.485905, 31.353170, 32.428207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555401, 31.977057, 33.044407>,  <42.053722, 31.740248, 32.561440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555401, 31.977057, 33.044407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.742054, 32.329361, 33.076698>,  <41.854046, 32.540745, 33.096073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.742054, 32.329361, 33.076698>,  <41.555401, 31.977057, 33.044407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742054, 32.329361, 33.076698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339313, 0.262563, -0.903287,
		-0.816776, 0.394109, 0.421373,
		0.466631, 0.880760, 0.080729,
		41.882042, 32.593590, 33.100918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058289, 32.489231, 32.798706>,  <41.555401, 31.977057, 33.044407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058289, 32.489231, 32.798706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.385769, 32.714905, 32.755951>,  <41.582256, 32.850311, 32.730297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.385769, 32.714905, 32.755951>,  <41.058289, 32.489231, 32.798706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385769, 32.714905, 32.755951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346947, 0.337682, -0.874985,
		-0.457560, 0.753434, 0.472203,
		0.818698, 0.564187, -0.106892,
		41.631378, 32.884163, 32.723885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766254, 33.185341, 32.569939>,  <41.058289, 32.489231, 32.798706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766254, 33.185341, 32.569939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.151798, 33.155655, 32.467587>,  <41.383125, 33.137844, 32.406174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.151798, 33.155655, 32.467587>,  <40.766254, 33.185341, 32.569939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151798, 33.155655, 32.467587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210823, 0.374769, -0.902830,
		0.162895, 0.924143, 0.345578,
		0.963856, -0.074211, -0.255879,
		41.440956, 33.133392, 32.390823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899761, 33.859516, 32.205914>,  <40.766254, 33.185341, 32.569939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899761, 33.859516, 32.205914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183033, 33.595360, 32.106018>,  <41.352997, 33.436867, 32.046082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183033, 33.595360, 32.106018>,  <40.899761, 33.859516, 32.205914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183033, 33.595360, 32.106018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069308, 0.286983, -0.955425,
		0.702626, 0.693918, 0.157464,
		0.708176, -0.660393, -0.249736,
		41.395485, 33.397243, 32.031097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397076, 34.323696, 31.914520>,  <40.899761, 33.859516, 32.205914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397076, 34.323696, 31.914520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.441917, 33.948406, 31.783577>,  <41.468822, 33.723232, 31.705011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.441917, 33.948406, 31.783577>,  <41.397076, 34.323696, 31.914520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441917, 33.948406, 31.783577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055583, 0.334842, -0.940633,
		0.992141, 0.087255, 0.089687,
		0.112106, -0.938226, -0.327360,
		41.475548, 33.666939, 31.685369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859783, 34.337986, 31.392454>,  <41.397076, 34.323696, 31.914520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859783, 34.337986, 31.392454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700123, 33.978836, 31.318163>,  <41.604328, 33.763344, 31.273588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700123, 33.978836, 31.318163>,  <41.859783, 34.337986, 31.392454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700123, 33.978836, 31.318163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023664, 0.192407, -0.981030,
		0.916580, -0.395975, -0.055552,
		-0.399152, -0.897877, -0.185727,
		41.580376, 33.709473, 31.262445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171371, 34.097435, 30.851494>,  <41.859783, 34.337986, 31.392454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171371, 34.097435, 30.851494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.830673, 33.889790, 30.823065>,  <41.626255, 33.765202, 30.806007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.830673, 33.889790, 30.823065>,  <42.171371, 34.097435, 30.851494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830673, 33.889790, 30.823065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021356, 0.169930, -0.985225,
		0.523520, -0.837643, -0.155823,
		-0.851745, -0.519113, -0.071073,
		41.575150, 33.734055, 30.801743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314548, 33.656696, 30.255503>,  <42.171371, 34.097435, 30.851494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314548, 33.656696, 30.255503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.919277, 33.663834, 30.316399>,  <41.682114, 33.668118, 30.352936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.919277, 33.663834, 30.316399>,  <42.314548, 33.656696, 30.255503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919277, 33.663834, 30.316399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146566, 0.180773, -0.972543,
		-0.044875, -0.983363, -0.176021,
		-0.988182, 0.017844, 0.152240,
		41.622822, 33.669186, 30.362070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080166, 33.149544, 29.855701>,  <42.314548, 33.656696, 30.255503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080166, 33.149544, 29.855701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777164, 33.403427, 29.916805>,  <41.595364, 33.555756, 29.953468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777164, 33.403427, 29.916805>,  <42.080166, 33.149544, 29.855701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777164, 33.403427, 29.916805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117261, 0.097905, -0.988263,
		-0.642214, -0.766526, 0.000263,
		-0.757503, 0.634707, 0.152760,
		41.549915, 33.593838, 29.962633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632778, 32.928001, 29.523958>,  <42.080166, 33.149544, 29.855701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632778, 32.928001, 29.523958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508652, 33.306606, 29.559307>,  <41.434177, 33.533772, 29.580517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508652, 33.306606, 29.559307>,  <41.632778, 32.928001, 29.523958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508652, 33.306606, 29.559307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190911, 0.029020, -0.981178,
		-0.931266, -0.321346, 0.171695,
		-0.310315, 0.946517, 0.088374,
		41.415558, 33.590561, 29.585819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991245, 32.984993, 29.215475>,  <41.632778, 32.928001, 29.523958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991245, 32.984993, 29.215475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.162876, 33.345821, 29.196854>,  <41.265854, 33.562317, 29.185680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.162876, 33.345821, 29.196854>,  <40.991245, 32.984993, 29.215475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162876, 33.345821, 29.196854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204701, 0.046912, -0.977700,
		-0.879768, 0.429036, 0.204783,
		0.429075, 0.902068, -0.046552,
		41.291599, 33.616444, 29.182888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598186, 33.495235, 28.723379>,  <40.991245, 32.984993, 29.215475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598186, 33.495235, 28.723379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957230, 33.668575, 28.755665>,  <41.172653, 33.772579, 28.775036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957230, 33.668575, 28.755665>,  <40.598186, 33.495235, 28.723379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957230, 33.668575, 28.755665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009868, 0.163308, -0.986526,
		-0.440688, 0.886308, 0.142310,
		0.897606, 0.433346, 0.080714,
		41.226513, 33.798580, 28.779879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657452, 33.952263, 28.159122>,  <40.598186, 33.495235, 28.723379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657452, 33.952263, 28.159122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.047714, 33.959904, 28.246510>,  <41.281872, 33.964489, 28.298943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.047714, 33.959904, 28.246510>,  <40.657452, 33.952263, 28.159122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047714, 33.959904, 28.246510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219300, -0.081954, -0.972209,
		-0.000663, 0.996453, -0.084147,
		0.975657, 0.019098, 0.218468,
		41.340412, 33.965633, 28.312050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966755, 34.540424, 27.756599>,  <40.657452, 33.952263, 28.159122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966755, 34.540424, 27.756599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229179, 34.253044, 27.849041>,  <41.386635, 34.080616, 27.904507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229179, 34.253044, 27.849041>,  <40.966755, 34.540424, 27.756599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229179, 34.253044, 27.849041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107588, -0.214055, -0.970878,
		0.747001, 0.661818, -0.063136,
		0.656060, -0.718454, 0.231103,
		41.425999, 34.037506, 27.918371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738647, 35.249729, 27.705578>,  <40.966755, 34.540424, 27.756599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738647, 35.249729, 27.705578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.589619, 35.564110, 27.508207>,  <40.500202, 35.752739, 27.389786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.589619, 35.564110, 27.508207>,  <40.738647, 35.249729, 27.705578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589619, 35.564110, 27.508207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564770, 0.229867, 0.792588,
		0.736358, 0.573970, 0.358239,
		-0.372574, 0.785951, -0.493426,
		40.477848, 35.799896, 27.360180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655880, 35.761578, 28.182043>,  <40.738647, 35.249729, 27.705578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655880, 35.761578, 28.182043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412746, 35.866199, 27.882143>,  <40.266865, 35.928970, 27.702204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.412746, 35.866199, 27.882143>,  <40.655880, 35.761578, 28.182043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412746, 35.866199, 27.882143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684325, 0.306391, 0.661682,
		0.402781, 0.915267, -0.007249,
		-0.607837, 0.261553, -0.749749,
		40.230396, 35.944664, 27.657219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268024, 36.307705, 28.526272>,  <40.655880, 35.761578, 28.182043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268024, 36.307705, 28.526272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047421, 36.163422, 28.225412>,  <39.915058, 36.076851, 28.044897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047421, 36.163422, 28.225412>,  <40.268024, 36.307705, 28.526272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047421, 36.163422, 28.225412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833892, 0.215072, 0.508300,
		-0.021583, 0.907542, -0.419406,
		-0.551506, -0.360710, -0.752150,
		39.881969, 36.055210, 27.999767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856827, 36.817204, 28.372372>,  <40.268024, 36.307705, 28.526272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856827, 36.817204, 28.372372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.668877, 36.507393, 28.202982>,  <39.556107, 36.321507, 28.101347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.668877, 36.507393, 28.202982>,  <39.856827, 36.817204, 28.372372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668877, 36.507393, 28.202982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843272, 0.252013, 0.474745,
		-0.260979, 0.580177, -0.771547,
		-0.469876, -0.774522, -0.423477,
		39.527912, 36.275036, 28.075939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260403, 37.072601, 28.058329>,  <39.856827, 36.817204, 28.372372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260403, 37.072601, 28.058329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.172173, 36.687187, 28.118925>,  <39.119236, 36.455940, 28.155283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.172173, 36.687187, 28.118925>,  <39.260403, 37.072601, 28.058329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172173, 36.687187, 28.118925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891888, 0.262118, 0.368552,
		-0.394821, -0.053822, -0.917180,
		-0.220574, -0.963534, 0.151493,
		39.105999, 36.398129, 28.164373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657772, 36.830578, 27.739042>,  <39.260403, 37.072601, 28.058329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657772, 36.830578, 27.739042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.705364, 36.549168, 28.019297>,  <38.733921, 36.380322, 28.187450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.705364, 36.549168, 28.019297>,  <38.657772, 36.830578, 27.739042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705364, 36.549168, 28.019297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872029, 0.263376, 0.412552,
		-0.474772, -0.660063, -0.582158,
		0.118984, -0.703527, 0.700637,
		38.741058, 36.338108, 28.229488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994701, 36.712410, 27.924459>,  <38.657772, 36.830578, 27.739042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994701, 36.712410, 27.924459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218025, 36.558178, 28.218294>,  <38.352020, 36.465641, 28.394594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218025, 36.558178, 28.218294>,  <37.994701, 36.712410, 27.924459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218025, 36.558178, 28.218294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765722, 0.101297, 0.635145,
		-0.319309, -0.917098, -0.238689,
		0.558312, -0.385577, 0.734587,
		38.385517, 36.442505, 28.438671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665676, 36.229500, 28.246693>,  <37.994701, 36.712410, 27.924459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665676, 36.229500, 28.246693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.921093, 36.321476, 28.540464>,  <38.074345, 36.376659, 28.716728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.921093, 36.321476, 28.540464>,  <37.665676, 36.229500, 28.246693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921093, 36.321476, 28.540464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769515, 0.203482, 0.605344,
		-0.010252, -0.951695, 0.306873,
		0.638546, 0.229938, 0.734430,
		38.112656, 36.390457, 28.760794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386925, 35.876213, 28.860876>,  <37.665676, 36.229500, 28.246693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386925, 35.876213, 28.860876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.631248, 36.157169, 29.007059>,  <37.777843, 36.325745, 29.094769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.631248, 36.157169, 29.007059>,  <37.386925, 35.876213, 28.860876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631248, 36.157169, 29.007059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671842, 0.215532, 0.708643,
		0.418977, -0.678374, 0.603545,
		0.610808, 0.702392, 0.365457,
		37.814491, 36.367886, 29.116697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415073, 35.676327, 29.561790>,  <37.386925, 35.876213, 28.860876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415073, 35.676327, 29.561790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.546486, 36.054104, 29.557690>,  <37.625332, 36.280769, 29.555229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.546486, 36.054104, 29.557690>,  <37.415073, 35.676327, 29.561790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546486, 36.054104, 29.557690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748319, 0.266898, 0.607276,
		0.576271, -0.191836, 0.794425,
		0.328528, 0.944439, -0.010251,
		37.645042, 36.337437, 29.554615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539562, 35.875725, 30.273914>,  <37.415073, 35.676327, 29.561790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539562, 35.875725, 30.273914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.500347, 36.211014, 30.059336>,  <37.476818, 36.412186, 29.930588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.500347, 36.211014, 30.059336>,  <37.539562, 35.875725, 30.273914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500347, 36.211014, 30.059336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804405, 0.250628, 0.538626,
		0.585936, 0.484328, 0.649697,
		-0.098039, 0.838219, -0.536448,
		37.470936, 36.462479, 29.898401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722969, 36.456245, 30.752493>,  <37.539562, 35.875725, 30.273914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722969, 36.456245, 30.752493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489468, 36.563011, 30.445772>,  <37.349365, 36.627071, 30.261740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489468, 36.563011, 30.445772>,  <37.722969, 36.456245, 30.752493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489468, 36.563011, 30.445772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693452, 0.327332, 0.641855,
		0.422318, 0.906428, -0.005993,
		-0.583757, 0.266911, -0.766803,
		37.314342, 36.643085, 30.215731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.797813, 35.235966, 24.633718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468647, 35.286942, 24.412241>,  <42.271149, 35.317528, 24.279354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468647, 35.286942, 24.412241>,  <42.797813, 35.235966, 24.633718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468647, 35.286942, 24.412241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482713, 0.357188, 0.799628,
		0.299673, 0.925298, -0.232420,
		-0.822912, 0.127435, -0.553693,
		42.221775, 35.325172, 24.246134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615261, 35.971390, 24.748575>,  <42.797813, 35.235966, 24.633718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615261, 35.971390, 24.748575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289394, 35.771896, 24.630192>,  <42.093876, 35.652203, 24.559162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289394, 35.771896, 24.630192>,  <42.615261, 35.971390, 24.748575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289394, 35.771896, 24.630192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454369, 0.231774, 0.860133,
		-0.360379, 0.835193, -0.415426,
		-0.814662, -0.498731, -0.295960,
		42.044994, 35.622276, 24.541405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077690, 36.514538, 24.830130>,  <42.615261, 35.971390, 24.748575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077690, 36.514538, 24.830130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923157, 36.145660, 24.823223>,  <41.830437, 35.924332, 24.819080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923157, 36.145660, 24.823223>,  <42.077690, 36.514538, 24.830130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923157, 36.145660, 24.823223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544742, 0.213024, 0.811096,
		-0.744312, 0.322761, -0.584658,
		-0.386336, -0.922197, -0.017265,
		41.807255, 35.869003, 24.818043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331825, 36.523373, 24.874748>,  <42.077690, 36.514538, 24.830130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331825, 36.523373, 24.874748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410114, 36.150043, 24.995148>,  <41.457088, 35.926044, 25.067389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410114, 36.150043, 24.995148>,  <41.331825, 36.523373, 24.874748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410114, 36.150043, 24.995148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613431, 0.122949, 0.780119,
		-0.765110, -0.337332, -0.548465,
		0.195726, -0.933322, 0.301000,
		41.468834, 35.870049, 25.085447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658947, 36.275818, 25.077492>,  <41.331825, 36.523373, 24.874748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658947, 36.275818, 25.077492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933220, 36.037590, 25.244892>,  <41.097782, 35.894653, 25.345333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933220, 36.037590, 25.244892>,  <40.658947, 36.275818, 25.077492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933220, 36.037590, 25.244892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529133, -0.013001, 0.848439,
		-0.499862, -0.803200, -0.324049,
		0.685680, -0.595567, 0.418501,
		41.138924, 35.858921, 25.370443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278629, 35.835537, 25.436077>,  <40.658947, 36.275818, 25.077492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278629, 35.835537, 25.436077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641453, 35.801792, 25.601061>,  <40.859146, 35.781548, 25.700050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641453, 35.801792, 25.601061>,  <40.278629, 35.835537, 25.436077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641453, 35.801792, 25.601061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412047, 0.023038, 0.910871,
		-0.086346, -0.996169, -0.013865,
		0.907062, -0.084363, 0.412457,
		40.913570, 35.776485, 25.724798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236340, 35.155396, 25.883364>,  <40.278629, 35.835537, 25.436077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236340, 35.155396, 25.883364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540409, 35.378616, 26.016460>,  <40.722851, 35.512550, 26.096319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540409, 35.378616, 26.016460>,  <40.236340, 35.155396, 25.883364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540409, 35.378616, 26.016460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456798, 0.094854, 0.884499,
		0.462035, -0.824366, 0.327023,
		0.760170, 0.558053, 0.332743,
		40.768459, 35.546032, 26.116283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394512, 34.897449, 26.503857>,  <40.236340, 35.155396, 25.883364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394512, 34.897449, 26.503857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534435, 35.272118, 26.510527>,  <40.618389, 35.496918, 26.514528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534435, 35.272118, 26.510527>,  <40.394512, 34.897449, 26.503857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534435, 35.272118, 26.510527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409509, 0.136879, 0.901979,
		0.842576, -0.322351, 0.431457,
		0.349811, 0.936672, 0.016674,
		40.639378, 35.553120, 26.515530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831036, 34.955242, 27.063311>,  <40.394512, 34.897449, 26.503857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831036, 34.955242, 27.063311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692745, 35.321129, 26.979626>,  <40.609772, 35.540661, 26.929415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692745, 35.321129, 26.979626>,  <40.831036, 34.955242, 27.063311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692745, 35.321129, 26.979626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285261, 0.109949, 0.952122,
		0.893924, 0.388853, 0.222920,
		-0.345726, 0.914715, -0.209211,
		40.589027, 35.595543, 26.916862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504211, 34.693001, 27.300150>,  <40.831036, 34.955242, 27.063311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504211, 34.693001, 27.300150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610641, 34.318516, 27.391989>,  <41.674500, 34.093826, 27.447092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610641, 34.318516, 27.391989>,  <41.504211, 34.693001, 27.300150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610641, 34.318516, 27.391989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343158, -0.130586, -0.930156,
		0.900802, 0.326284, 0.286521,
		0.266080, -0.936208, 0.229599,
		41.690464, 34.037655, 27.460869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091698, 34.586533, 26.944782>,  <41.504211, 34.693001, 27.300150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091698, 34.586533, 26.944782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999668, 34.208572, 27.037933>,  <41.944450, 33.981796, 27.093824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999668, 34.208572, 27.037933>,  <42.091698, 34.586533, 26.944782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999668, 34.208572, 27.037933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528508, -0.322250, -0.785388,
		0.817157, -0.057619, 0.573527,
		-0.230072, -0.944899, 0.232877,
		41.930645, 33.925102, 27.107796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726875, 34.263435, 27.049368>,  <42.091698, 34.586533, 26.944782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726875, 34.263435, 27.049368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471153, 33.967941, 26.963991>,  <42.317719, 33.790646, 26.912766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471153, 33.967941, 26.963991>,  <42.726875, 34.263435, 27.049368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471153, 33.967941, 26.963991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588277, -0.291124, -0.754438,
		0.495190, -0.607882, 0.620698,
		-0.639310, -0.738732, -0.213442,
		42.279362, 33.746323, 26.899958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094261, 33.731258, 26.831274>,  <42.726875, 34.263435, 27.049368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094261, 33.731258, 26.831274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744030, 33.595207, 26.694063>,  <42.533890, 33.513577, 26.611736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744030, 33.595207, 26.694063>,  <43.094261, 33.731258, 26.831274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744030, 33.595207, 26.694063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474978, -0.476746, -0.739668,
		0.088047, -0.810570, 0.578985,
		-0.875582, -0.340131, -0.343028,
		42.481354, 33.493168, 26.591154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180840, 32.917049, 26.712109>,  <43.094261, 33.731258, 26.831274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180840, 32.917049, 26.712109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862335, 33.043285, 26.505663>,  <42.671234, 33.119026, 26.381796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862335, 33.043285, 26.505663>,  <43.180840, 32.917049, 26.712109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862335, 33.043285, 26.505663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272190, -0.575014, -0.771538,
		-0.540261, -0.754827, 0.371960,
		-0.796260, 0.315589, -0.516114,
		42.623459, 33.137962, 26.350828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775078, 32.257366, 26.373775>,  <43.180840, 32.917049, 26.712109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775078, 32.257366, 26.373775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740932, 32.601582, 26.172899>,  <42.720448, 32.808109, 26.052374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740932, 32.601582, 26.172899>,  <42.775078, 32.257366, 26.373775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740932, 32.601582, 26.172899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623434, -0.347036, -0.700639,
		-0.777202, -0.372889, -0.506863,
		-0.085361, 0.860534, -0.502189,
		42.715324, 32.859741, 26.022242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609184, 32.027588, 25.697777>,  <42.775078, 32.257366, 26.373775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609184, 32.027588, 25.697777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718220, 32.405308, 25.624029>,  <42.783642, 32.631939, 25.579781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718220, 32.405308, 25.624029>,  <42.609184, 32.027588, 25.697777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718220, 32.405308, 25.624029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514672, -0.305020, -0.801296,
		-0.812900, 0.123537, -0.569151,
		0.272592, 0.944300, -0.184370,
		42.799995, 32.688599, 25.568718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380451, 32.223156, 25.056757>,  <42.609184, 32.027588, 25.697777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380451, 32.223156, 25.056757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695644, 32.458679, 25.128744>,  <42.884762, 32.599995, 25.171936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695644, 32.458679, 25.128744>,  <42.380451, 32.223156, 25.056757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695644, 32.458679, 25.128744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387915, -0.247797, -0.887760,
		-0.478124, 0.769353, -0.423667,
		0.787984, 0.588807, 0.179966,
		42.932041, 32.635323, 25.182734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469643, 32.520115, 24.417664>,  <42.380451, 32.223156, 25.056757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469643, 32.520115, 24.417664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812611, 32.612492, 24.601620>,  <43.018391, 32.667919, 24.711992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812611, 32.612492, 24.601620>,  <42.469643, 32.520115, 24.417664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812611, 32.612492, 24.601620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460509, 0.054562, -0.885976,
		-0.229703, 0.971436, -0.059569,
		0.857419, 0.230944, 0.459888,
		43.069836, 32.681774, 24.739586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812973, 32.909920, 23.944962>,  <42.469643, 32.520115, 24.417664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812973, 32.909920, 23.944962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108437, 32.794910, 24.188833>,  <43.285717, 32.725903, 24.335155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108437, 32.794910, 24.188833>,  <42.812973, 32.909920, 23.944962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108437, 32.794910, 24.188833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617299, -0.074790, -0.783166,
		0.270778, 0.954848, 0.122244,
		0.738662, -0.287525, 0.609678,
		43.330036, 32.708652, 24.371737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384586, 33.258377, 23.832993>,  <42.812973, 32.909920, 23.944962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384586, 33.258377, 23.832993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499668, 32.917774, 24.008337>,  <43.568718, 32.713413, 24.113544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499668, 32.917774, 24.008337>,  <43.384586, 33.258377, 23.832993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499668, 32.917774, 24.008337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669847, -0.148225, -0.727554,
		0.684493, 0.502957, 0.527734,
		0.287705, -0.851506, 0.438363,
		43.585979, 32.662323, 24.139847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144642, 33.334465, 23.859266>,  <43.384586, 33.258377, 23.832993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144642, 33.334465, 23.859266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044674, 32.947544, 23.876560>,  <43.984692, 32.715393, 23.886936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044674, 32.947544, 23.876560>,  <44.144642, 33.334465, 23.859266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044674, 32.947544, 23.876560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644831, -0.199582, -0.737808,
		0.722311, -0.156512, 0.673625,
		-0.249920, -0.967301, 0.043236,
		43.969700, 32.657352, 23.889530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795265, 33.041481, 23.782310>,  <44.144642, 33.334465, 23.859266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795265, 33.041481, 23.782310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508526, 32.769199, 23.721939>,  <44.336483, 32.605831, 23.685717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508526, 32.769199, 23.721939>,  <44.795265, 33.041481, 23.782310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508526, 32.769199, 23.721939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548217, -0.416521, -0.725237,
		0.430805, -0.602623, 0.671753,
		-0.716844, -0.680702, -0.150928,
		44.293472, 32.564987, 23.676661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234238, 32.494892, 23.702162>,  <44.795265, 33.041481, 23.782310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234238, 32.494892, 23.702162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869888, 32.454334, 23.542147>,  <44.651279, 32.430000, 23.446136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869888, 32.454334, 23.542147>,  <45.234238, 32.494892, 23.702162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869888, 32.454334, 23.542147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411788, -0.287381, -0.864779,
		-0.027276, -0.952434, 0.303522,
		-0.910871, -0.101399, -0.400039,
		44.596626, 32.423916, 23.422134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.599686, 31.956469, 20.985716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.922962, 32.171055, 21.082903>,  <39.116928, 32.299805, 21.141214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.922962, 32.171055, 21.082903>,  <38.599686, 31.956469, 20.985716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922962, 32.171055, 21.082903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097049, -0.285605, 0.953421,
		0.580870, -0.794126, -0.178760,
		0.808191, 0.536465, 0.242968,
		39.165421, 32.331993, 21.155794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977036, 31.516541, 21.361650>,  <38.599686, 31.956469, 20.985716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977036, 31.516541, 21.361650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102879, 31.883734, 21.458256>,  <39.178387, 32.104050, 21.516218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102879, 31.883734, 21.458256>,  <38.977036, 31.516541, 21.361650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102879, 31.883734, 21.458256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091911, -0.223777, 0.970297,
		0.944761, -0.327463, 0.013970,
		0.314610, 0.917983, 0.241513,
		39.197262, 32.159130, 21.530710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372257, 31.405178, 21.944336>,  <38.977036, 31.516541, 21.361650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372257, 31.405178, 21.944336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271324, 31.790371, 21.982273>,  <39.210766, 32.021488, 22.005035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271324, 31.790371, 21.982273>,  <39.372257, 31.405178, 21.944336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271324, 31.790371, 21.982273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093375, -0.121791, 0.988154,
		0.963125, 0.240487, 0.120650,
		-0.252333, 0.962981, 0.094845,
		39.195625, 32.079266, 22.010727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816803, 31.659706, 22.476631>,  <39.372257, 31.405178, 21.944336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816803, 31.659706, 22.476631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509518, 31.915089, 22.457752>,  <39.325146, 32.068317, 22.446424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509518, 31.915089, 22.457752>,  <39.816803, 31.659706, 22.476631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509518, 31.915089, 22.457752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138272, -0.093484, 0.985972,
		0.625089, 0.763959, 0.160096,
		-0.768209, 0.638457, -0.047198,
		39.279057, 32.106625, 22.443592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937275, 31.991385, 23.034985>,  <39.816803, 31.659706, 22.476631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937275, 31.991385, 23.034985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571133, 32.133003, 22.958281>,  <39.351448, 32.217976, 22.912258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571133, 32.133003, 22.958281>,  <39.937275, 31.991385, 23.034985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571133, 32.133003, 22.958281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135347, 0.177985, 0.974681,
		0.379212, 0.918136, -0.115001,
		-0.915358, 0.354045, -0.191761,
		39.296524, 32.239216, 22.900753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871563, 32.642967, 23.416544>,  <39.937275, 31.991385, 23.034985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871563, 32.642967, 23.416544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.501724, 32.503502, 23.355158>,  <39.279819, 32.419823, 23.318325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.501724, 32.503502, 23.355158>,  <39.871563, 32.642967, 23.416544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501724, 32.503502, 23.355158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207490, 0.123073, 0.970464,
		-0.319474, 0.929134, -0.186136,
		-0.924599, -0.348660, -0.153467,
		39.224346, 32.398903, 23.309118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453064, 33.269993, 23.705944>,  <39.871563, 32.642967, 23.416544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453064, 33.269993, 23.705944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226860, 32.941940, 23.671104>,  <39.091137, 32.745110, 23.650202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226860, 32.941940, 23.671104>,  <39.453064, 33.269993, 23.705944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226860, 32.941940, 23.671104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294901, 0.102456, 0.950019,
		-0.770213, 0.562933, -0.299797,
		-0.565513, -0.820127, -0.087097,
		39.057205, 32.695904, 23.644976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860134, 33.404503, 24.007759>,  <39.453064, 33.269993, 23.705944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860134, 33.404503, 24.007759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860542, 33.005009, 23.987635>,  <38.860786, 32.765312, 23.975559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860542, 33.005009, 23.987635>,  <38.860134, 33.404503, 24.007759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860542, 33.005009, 23.987635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481867, -0.044577, 0.875110,
		-0.876244, 0.023351, -0.481302,
		0.001020, -0.998733, -0.050312,
		38.860847, 32.705387, 23.972542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240559, 33.230232, 24.393164>,  <38.860134, 33.404503, 24.007759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240559, 33.230232, 24.393164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440208, 32.884800, 24.364569>,  <38.559998, 32.677540, 24.347412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440208, 32.884800, 24.364569>,  <38.240559, 33.230232, 24.393164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440208, 32.884800, 24.364569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261309, -0.228658, 0.937781,
		-0.826194, -0.449385, -0.339789,
		0.499121, -0.863579, -0.071487,
		38.589943, 32.625725, 24.343122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739399, 32.860512, 24.632269>,  <38.240559, 33.230232, 24.393164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739399, 32.860512, 24.632269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095589, 32.681950, 24.667536>,  <38.309303, 32.574814, 24.688696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095589, 32.681950, 24.667536>,  <37.739399, 32.860512, 24.632269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095589, 32.681950, 24.667536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155091, -0.115594, 0.981114,
		-0.427782, -0.887333, -0.172167,
		0.890477, -0.446405, 0.088169,
		38.362732, 32.548027, 24.693987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625481, 32.204414, 24.924608>,  <37.739399, 32.860512, 24.632269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625481, 32.204414, 24.924608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001312, 32.303856, 25.018751>,  <38.226810, 32.363522, 25.075237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001312, 32.303856, 25.018751>,  <37.625481, 32.204414, 24.924608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001312, 32.303856, 25.018751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166353, -0.269308, 0.948578,
		0.299205, -0.930413, -0.211679,
		0.939576, 0.248606, 0.235356,
		38.283184, 32.378437, 25.089357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812992, 31.827272, 25.416529>,  <37.625481, 32.204414, 24.924608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812992, 31.827272, 25.416529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.124134, 32.074097, 25.464170>,  <38.310818, 32.222191, 25.492756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.124134, 32.074097, 25.464170>,  <37.812992, 31.827272, 25.416529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124134, 32.074097, 25.464170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029666, -0.153254, 0.987741,
		0.627748, -0.771849, -0.100903,
		0.777851, 0.617059, 0.119103,
		38.357491, 32.259216, 25.499901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244698, 31.480062, 25.866327>,  <37.812992, 31.827272, 25.416529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244698, 31.480062, 25.866327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354202, 31.863592, 25.896559>,  <38.419907, 32.093708, 25.914698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354202, 31.863592, 25.896559>,  <38.244698, 31.480062, 25.866327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354202, 31.863592, 25.896559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069550, -0.098109, 0.992742,
		0.959279, -0.266519, -0.093545,
		0.273762, 0.958823, 0.075578,
		38.436333, 32.151237, 25.919231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826447, 31.503033, 26.302246>,  <38.244698, 31.480062, 25.866327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826447, 31.503033, 26.302246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651798, 31.862890, 26.301647>,  <38.547009, 32.078804, 26.301289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651798, 31.862890, 26.301647>,  <38.826447, 31.503033, 26.302246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651798, 31.862890, 26.301647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025343, 0.013961, 0.999581,
		0.899289, 0.436400, -0.028895,
		-0.436621, 0.899644, -0.001496,
		38.520813, 32.132782, 26.301199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529343, 31.429340, 26.512560>,  <38.826447, 31.503033, 26.302246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529343, 31.429340, 26.512560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.695667, 31.103521, 26.674356>,  <39.795464, 30.908030, 26.771435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.695667, 31.103521, 26.674356>,  <39.529343, 31.429340, 26.512560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695667, 31.103521, 26.674356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527648, -0.146180, -0.836791,
		0.740732, 0.561380, 0.369009,
		0.415816, -0.814545, 0.404492,
		39.820412, 30.859158, 26.795704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190762, 31.484413, 26.427097>,  <39.529343, 31.429340, 26.512560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190762, 31.484413, 26.427097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107140, 31.093830, 26.448370>,  <40.056965, 30.859480, 26.461134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107140, 31.093830, 26.448370>,  <40.190762, 31.484413, 26.427097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107140, 31.093830, 26.448370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621553, -0.174667, -0.763652,
		0.754961, -0.126591, 0.643434,
		-0.209059, -0.976456, 0.053184,
		40.044422, 30.800894, 26.464325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827442, 31.106646, 26.411709>,  <40.190762, 31.484413, 26.427097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827442, 31.106646, 26.411709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570721, 30.826517, 26.286718>,  <40.416687, 30.658440, 26.211723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570721, 30.826517, 26.286718>,  <40.827442, 31.106646, 26.411709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570721, 30.826517, 26.286718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599573, -0.204194, -0.773833,
		0.478126, -0.683999, 0.550946,
		-0.641800, -0.700322, -0.312477,
		40.378181, 30.616421, 26.192976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243896, 30.783663, 25.876631>,  <40.827442, 31.106646, 26.411709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243896, 30.783663, 25.876631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.874878, 30.634476, 25.837027>,  <40.653465, 30.544964, 25.813263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.874878, 30.634476, 25.837027>,  <41.243896, 30.783663, 25.876631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874878, 30.634476, 25.837027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231399, -0.329360, -0.915411,
		0.308807, -0.867420, 0.390154,
		-0.922547, -0.372967, -0.099011,
		40.598114, 30.522585, 25.807323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261951, 30.079334, 25.701513>,  <41.243896, 30.783663, 25.876631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261951, 30.079334, 25.701513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.928242, 30.214579, 25.527308>,  <40.728016, 30.295725, 25.422785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.928242, 30.214579, 25.527308>,  <41.261951, 30.079334, 25.701513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928242, 30.214579, 25.527308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232994, -0.499705, -0.834271,
		-0.499705, -0.797480, 0.338112,
		0.834271, -0.338112, 0.435514,
		40.677959, 30.316011, 25.396654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160164, 29.606346, 25.127205>,  <41.261951, 30.079334, 25.701513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160164, 29.606346, 25.127205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891056, 29.893599, 25.056015>,  <40.729591, 30.065950, 25.013302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891056, 29.893599, 25.056015>,  <41.160164, 29.606346, 25.127205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891056, 29.893599, 25.056015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024900, -0.218441, -0.975532,
		-0.739435, -0.660737, 0.129079,
		-0.672767, 0.718129, -0.177975,
		40.689224, 30.109037, 25.002623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596874, 29.176170, 24.671984>,  <41.160164, 29.606346, 25.127205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596874, 29.176170, 24.671984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.583614, 29.571783, 24.614412>,  <40.575657, 29.809151, 24.579870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.583614, 29.571783, 24.614412>,  <40.596874, 29.176170, 24.671984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583614, 29.571783, 24.614412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116426, -0.146849, -0.982283,
		-0.992646, -0.015808, 0.120017,
		-0.033152, 0.989033, -0.143929,
		40.573669, 29.868492, 24.571234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221230, 29.237301, 24.213697>,  <40.596874, 29.176170, 24.671984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221230, 29.237301, 24.213697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.398949, 29.594194, 24.181393>,  <40.505581, 29.808331, 24.162010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.398949, 29.594194, 24.181393>,  <40.221230, 29.237301, 24.213697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398949, 29.594194, 24.181393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141834, -0.159064, -0.977027,
		-0.884582, 0.422634, -0.197220,
		0.444295, 0.892233, -0.080761,
		40.532238, 29.861864, 24.157164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958164, 29.598614, 23.562771>,  <40.221230, 29.237301, 24.213697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958164, 29.598614, 23.562771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307293, 29.760632, 23.671669>,  <40.516769, 29.857841, 23.737009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307293, 29.760632, 23.671669>,  <39.958164, 29.598614, 23.562771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307293, 29.760632, 23.671669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201840, 0.208308, -0.957010,
		-0.444342, 0.890252, 0.100062,
		0.872824, 0.405043, 0.272248,
		40.569141, 29.882145, 23.753344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032490, 30.272762, 23.260637>,  <39.958164, 29.598614, 23.562771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032490, 30.272762, 23.260637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.402088, 30.136950, 23.331009>,  <40.623848, 30.055462, 23.373232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.402088, 30.136950, 23.331009>,  <40.032490, 30.272762, 23.260637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402088, 30.136950, 23.331009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241922, 0.162724, -0.956554,
		0.296155, 0.926411, 0.232497,
		0.923995, -0.339534, 0.175928,
		40.679287, 30.035089, 23.383787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522057, 30.832146, 23.049904>,  <40.032490, 30.272762, 23.260637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522057, 30.832146, 23.049904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.681908, 30.466343, 23.024708>,  <40.777821, 30.246861, 23.009590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.681908, 30.466343, 23.024708>,  <40.522057, 30.832146, 23.049904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681908, 30.466343, 23.024708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318682, 0.203033, -0.925862,
		0.859498, 0.349931, 0.372576,
		0.399632, -0.914509, -0.062990,
		40.801796, 30.191990, 23.005812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190193, 30.892179, 22.710285>,  <40.522057, 30.832146, 23.049904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190193, 30.892179, 22.710285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.115314, 30.502846, 22.657259>,  <41.070385, 30.269245, 22.625443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.115314, 30.502846, 22.657259>,  <41.190193, 30.892179, 22.710285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115314, 30.502846, 22.657259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221155, 0.089727, -0.971102,
		0.957103, -0.211109, 0.198461,
		-0.187201, -0.973336, -0.132566,
		41.059155, 30.210846, 22.617489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815018, 30.620094, 22.285814>,  <41.190193, 30.892179, 22.710285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815018, 30.620094, 22.285814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501183, 30.382032, 22.216291>,  <41.312881, 30.239195, 22.174578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501183, 30.382032, 22.216291>,  <41.815018, 30.620094, 22.285814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501183, 30.382032, 22.216291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197206, 0.026226, -0.980011,
		0.587817, -0.803183, 0.096791,
		-0.784590, -0.595155, -0.173808,
		41.265804, 30.203485, 22.164148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104431, 30.104256, 21.946795>,  <41.815018, 30.620094, 22.285814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104431, 30.104256, 21.946795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.710339, 30.084675, 21.881163>,  <41.473885, 30.072927, 21.841784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.710339, 30.084675, 21.881163>,  <42.104431, 30.104256, 21.946795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710339, 30.084675, 21.881163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166439, -0.048762, -0.984845,
		0.040211, -0.997610, 0.056189,
		-0.985231, -0.048954, -0.164080,
		41.414768, 30.069990, 21.831938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464703, 29.459259, 22.120251>,  <42.104431, 30.104256, 21.946795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464703, 29.459259, 22.120251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.829441, 29.295971, 22.137665>,  <43.048283, 29.197998, 22.148113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.829441, 29.295971, 22.137665>,  <42.464703, 29.459259, 22.120251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829441, 29.295971, 22.137665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017283, 0.067777, 0.997551,
		-0.410172, -0.910363, 0.054746,
		0.911844, -0.408222, 0.043534,
		43.102993, 29.173504, 22.150724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419144, 28.810514, 22.558559>,  <42.464703, 29.459259, 22.120251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419144, 28.810514, 22.558559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.797405, 28.940376, 22.551300>,  <43.024364, 29.018293, 22.546944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.797405, 28.940376, 22.551300>,  <42.419144, 28.810514, 22.558559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797405, 28.940376, 22.551300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003425, 0.065762, 0.997829,
		0.325146, -0.943543, 0.063300,
		0.945657, 0.324657, -0.018151,
		43.081104, 29.037773, 22.545855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727180, 28.571016, 23.135138>,  <42.419144, 28.810514, 22.558559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727180, 28.571016, 23.135138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.990818, 28.857567, 23.043570>,  <43.148998, 29.029497, 22.988628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.990818, 28.857567, 23.043570>,  <42.727180, 28.571016, 23.135138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990818, 28.857567, 23.043570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184195, 0.141356, 0.972672,
		0.729158, -0.683245, -0.038787,
		0.659091, 0.716376, -0.228921,
		43.188545, 29.072479, 22.974894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421944, 28.365145, 23.379158>,  <42.727180, 28.571016, 23.135138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421944, 28.365145, 23.379158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.441303, 28.764545, 23.389341>,  <43.452919, 29.004187, 23.395451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.441303, 28.764545, 23.389341>,  <43.421944, 28.365145, 23.379158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441303, 28.764545, 23.389341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210296, -0.035101, 0.977007,
		0.976439, -0.041929, -0.211680,
		0.048395, 0.998504, 0.025456,
		43.455822, 29.064096, 23.396978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078930, 28.704847, 23.839483>,  <43.421944, 28.365145, 23.379158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078930, 28.704847, 23.839483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.828579, 29.013372, 23.793262>,  <43.678368, 29.198488, 23.765530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.828579, 29.013372, 23.793262>,  <44.078930, 28.704847, 23.839483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828579, 29.013372, 23.793262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230563, 0.324518, 0.917349,
		0.745060, 0.547508, -0.380946,
		-0.625880, 0.771312, -0.115550,
		43.640816, 29.244766, 23.758596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371983, 29.321499, 24.272104>,  <44.078930, 28.704847, 23.839483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371983, 29.321499, 24.272104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.000782, 29.453964, 24.203819>,  <43.778061, 29.533443, 24.162848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.000782, 29.453964, 24.203819>,  <44.371983, 29.321499, 24.272104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000782, 29.453964, 24.203819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004757, 0.468688, 0.883351,
		0.372546, 0.818939, -0.436519,
		-0.928002, 0.331165, -0.170712,
		43.722382, 29.553314, 24.152605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416283, 29.965351, 24.562326>,  <44.371983, 29.321499, 24.272104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416283, 29.965351, 24.562326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.027294, 29.875483, 24.537584>,  <43.793900, 29.821562, 24.522739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.027294, 29.875483, 24.537584>,  <44.416283, 29.965351, 24.562326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027294, 29.875483, 24.537584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154147, 0.421143, 0.893799,
		-0.174760, 0.878727, -0.444181,
		-0.972470, -0.224670, -0.061854,
		43.735554, 29.808081, 24.519028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302914, 30.278078, 25.145952>,  <44.416283, 29.965351, 24.562326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302914, 30.278078, 25.145952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.970295, 30.074820, 25.056231>,  <43.770721, 29.952864, 25.002398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.970295, 30.074820, 25.056231>,  <44.302914, 30.278078, 25.145952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970295, 30.074820, 25.056231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345065, 0.156144, 0.925500,
		-0.435266, 0.846998, -0.305185,
		-0.831549, -0.508147, -0.224305,
		43.720829, 29.922375, 24.988939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682564, 30.676104, 25.230764>,  <44.302914, 30.278078, 25.145952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682564, 30.676104, 25.230764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.571789, 30.295206, 25.282206>,  <43.505325, 30.066668, 25.313070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.571789, 30.295206, 25.282206>,  <43.682564, 30.676104, 25.230764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571789, 30.295206, 25.282206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376379, 0.230641, 0.897298,
		-0.884108, 0.200088, -0.422277,
		-0.276933, -0.952244, 0.128602,
		43.488708, 30.009533, 25.320786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003235, 30.632256, 25.513319>,  <43.682564, 30.676104, 25.230764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003235, 30.632256, 25.513319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.129818, 30.266729, 25.615137>,  <43.205769, 30.047413, 25.676228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.129818, 30.266729, 25.615137>,  <43.003235, 30.632256, 25.513319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129818, 30.266729, 25.615137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266695, 0.171805, 0.948344,
		-0.910345, -0.367997, -0.189341,
		0.316459, -0.913817, 0.254545,
		43.224754, 29.992584, 25.691500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454426, 30.347212, 25.804018>,  <43.003235, 30.632256, 25.513319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454426, 30.347212, 25.804018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.741386, 30.091093, 25.913826>,  <42.913563, 29.937422, 25.979710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.741386, 30.091093, 25.913826>,  <42.454426, 30.347212, 25.804018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741386, 30.091093, 25.913826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398025, -0.053306, 0.915824,
		-0.571765, -0.766276, -0.293096,
		0.717398, -0.640296, 0.274519,
		42.956608, 29.899004, 25.996181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088734, 29.827108, 26.216682>,  <42.454426, 30.347212, 25.804018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088734, 29.827108, 26.216682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.476559, 29.839706, 26.313808>,  <42.709251, 29.847265, 26.372084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.476559, 29.839706, 26.313808>,  <42.088734, 29.827108, 26.216682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476559, 29.839706, 26.313808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240847, -0.055941, 0.968950,
		0.044103, -0.997937, -0.046653,
		0.969560, 0.031498, 0.242817,
		42.767426, 29.849155, 26.386654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316010, 29.089359, 26.479843>,  <42.088734, 29.827108, 26.216682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316010, 29.089359, 26.479843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.555473, 29.380341, 26.613960>,  <42.699150, 29.554930, 26.694431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.555473, 29.380341, 26.613960>,  <42.316010, 29.089359, 26.479843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555473, 29.380341, 26.613960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222899, -0.250763, 0.942037,
		0.769368, -0.638692, 0.012029,
		0.598655, 0.727455, 0.335293,
		42.735069, 29.598577, 26.714548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628048, 28.791220, 26.941641>,  <42.316010, 29.089359, 26.479843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628048, 28.791220, 26.941641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.618156, 29.184097, 27.016132>,  <42.612221, 29.419825, 27.060827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.618156, 29.184097, 27.016132>,  <42.628048, 28.791220, 26.941641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618156, 29.184097, 27.016132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256028, -0.186295, 0.948548,
		0.966353, -0.024222, 0.256077,
		-0.024730, 0.982195, 0.186228,
		42.610737, 29.478756, 27.072001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.245041, 31.769394, 23.217550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.921822, 31.971897, 23.097040>,  <44.727890, 32.093399, 23.024734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.921822, 31.971897, 23.097040>,  <45.245041, 31.769394, 23.217550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921822, 31.971897, 23.097040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210580, -0.229407, -0.950278,
		-0.550201, -0.831309, 0.078763,
		-0.808044, 0.506258, -0.301277,
		44.679409, 32.123775, 23.006657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921906, 31.359779, 22.748518>,  <45.245041, 31.769394, 23.217550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921906, 31.359779, 22.748518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.767872, 31.719152, 22.664108>,  <44.675453, 31.934776, 22.613462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.767872, 31.719152, 22.664108>,  <44.921906, 31.359779, 22.748518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767872, 31.719152, 22.664108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130016, -0.173563, -0.976203,
		-0.913679, -0.403353, -0.049975,
		-0.385080, 0.898433, -0.211023,
		44.652348, 31.988682, 22.600801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549706, 31.232132, 22.099463>,  <44.921906, 31.359779, 22.748518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549706, 31.232132, 22.099463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.583019, 31.630554, 22.111689>,  <44.603008, 31.869608, 22.119024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.583019, 31.630554, 22.111689>,  <44.549706, 31.232132, 22.099463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583019, 31.630554, 22.111689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123833, 0.020091, -0.992100,
		-0.988802, 0.086408, -0.121672,
		0.083280, 0.996057, 0.030567,
		44.608002, 31.929371, 22.120859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094696, 31.495808, 21.564331>,  <44.549706, 31.232132, 22.099463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094696, 31.495808, 21.564331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.346565, 31.794813, 21.648937>,  <44.497684, 31.974216, 21.699701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.346565, 31.794813, 21.648937>,  <44.094696, 31.495808, 21.564331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346565, 31.794813, 21.648937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366503, -0.045776, -0.929290,
		-0.684975, 0.662668, -0.302789,
		0.629671, 0.747513, 0.211514,
		44.535465, 32.019066, 21.712391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058365, 31.988853, 20.983046>,  <44.094696, 31.495808, 21.564331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058365, 31.988853, 20.983046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.414738, 32.012417, 21.163162>,  <44.628563, 32.026554, 21.271233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.414738, 32.012417, 21.163162>,  <44.058365, 31.988853, 20.983046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414738, 32.012417, 21.163162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453532, -0.166220, -0.875602,
		0.023265, 0.984327, -0.174809,
		0.890936, 0.058911, 0.450291,
		44.682018, 32.030090, 21.298250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525806, 32.474922, 20.552494>,  <44.058365, 31.988853, 20.983046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525806, 32.474922, 20.552494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.774799, 32.234127, 20.752544>,  <44.924194, 32.089649, 20.872576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.774799, 32.234127, 20.752544>,  <44.525806, 32.474922, 20.552494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774799, 32.234127, 20.752544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424463, -0.277203, -0.861968,
		0.657531, 0.748845, 0.082968,
		0.622482, -0.601988, 0.500127,
		44.961544, 32.053532, 20.902582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170784, 32.675362, 20.273705>,  <44.525806, 32.474922, 20.552494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170784, 32.675362, 20.273705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.198727, 32.311749, 20.438034>,  <45.215492, 32.093578, 20.536631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.198727, 32.311749, 20.438034>,  <45.170784, 32.675362, 20.273705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198727, 32.311749, 20.438034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569317, -0.301844, -0.764702,
		0.819145, 0.287308, 0.496443,
		0.069857, -0.909035, 0.410823,
		45.219685, 32.039040, 20.561281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.851177, 32.585964, 20.436028>,  <45.170784, 32.675362, 20.273705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.851177, 32.585964, 20.436028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.685951, 32.223824, 20.396589>,  <45.586815, 32.006538, 20.372927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.685951, 32.223824, 20.396589>,  <45.851177, 32.585964, 20.436028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685951, 32.223824, 20.396589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720106, -0.258422, -0.643945,
		0.557515, -0.336991, 0.758693,
		-0.413067, -0.905348, -0.098595,
		45.562031, 31.952219, 20.367010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513512, 32.120914, 20.386250>,  <45.851177, 32.585964, 20.436028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513512, 32.120914, 20.386250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.213821, 31.886616, 20.262600>,  <46.034008, 31.746037, 20.188410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.213821, 31.886616, 20.262600>,  <46.513512, 32.120914, 20.386250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213821, 31.886616, 20.262600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608164, -0.423602, -0.671340,
		0.262292, -0.690984, 0.673605,
		-0.749226, -0.585750, -0.309124,
		45.989052, 31.710892, 20.169863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808182, 31.490231, 20.220413>,  <46.513512, 32.120914, 20.386250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808182, 31.490231, 20.220413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.456738, 31.493689, 20.029432>,  <46.245869, 31.495764, 19.914843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.456738, 31.493689, 20.029432>,  <46.808182, 31.490231, 20.220413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456738, 31.493689, 20.029432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423259, -0.448846, -0.787012,
		-0.221106, -0.893568, 0.390704,
		-0.878615, 0.008644, -0.477453,
		46.193153, 31.496283, 19.886196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754841, 30.833838, 19.960159>,  <46.808182, 31.490231, 20.220413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754841, 30.833838, 19.960159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.506001, 31.057585, 19.741035>,  <46.356697, 31.191833, 19.609560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.506001, 31.057585, 19.741035>,  <46.754841, 30.833838, 19.960159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506001, 31.057585, 19.741035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449878, -0.317259, -0.834839,
		-0.640782, -0.765802, -0.054282,
		-0.622100, 0.559370, -0.547811,
		46.319370, 31.225395, 19.576693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534187, 30.418531, 19.449986>,  <46.754841, 30.833838, 19.960159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534187, 30.418531, 19.449986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.452492, 30.789705, 19.325260>,  <46.403477, 31.012409, 19.250425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.452492, 30.789705, 19.325260>,  <46.534187, 30.418531, 19.449986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452492, 30.789705, 19.325260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544515, -0.157016, -0.823923,
		-0.813506, -0.338059, -0.473206,
		-0.204234, 0.927934, -0.311811,
		46.391220, 31.068085, 19.231716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253914, 30.429031, 18.785971>,  <46.534187, 30.418531, 19.449986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253914, 30.429031, 18.785971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.469887, 30.759804, 18.848780>,  <46.599472, 30.958267, 18.886465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.469887, 30.759804, 18.848780>,  <46.253914, 30.429031, 18.785971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.469887, 30.759804, 18.848780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570188, -0.222110, -0.790919,
		-0.619161, 0.516575, -0.591431,
		0.539931, 0.826933, 0.157023,
		46.631866, 31.007883, 18.895887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316040, 30.706402, 18.159279>,  <46.253914, 30.429031, 18.785971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316040, 30.706402, 18.159279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.618649, 30.866308, 18.366299>,  <46.800213, 30.962252, 18.490511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.618649, 30.866308, 18.366299>,  <46.316040, 30.706402, 18.159279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618649, 30.866308, 18.366299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617340, -0.175435, -0.766885,
		-0.215777, 0.899673, -0.379512,
		0.756526, 0.399764, 0.517550,
		46.845608, 30.986237, 18.521564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786221, 30.209946, 17.845186>,  <46.316040, 30.706402, 18.159279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786221, 30.209946, 17.845186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.506374, 30.023098, 17.628916>,  <45.338467, 29.910990, 17.499153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.506374, 30.023098, 17.628916>,  <45.786221, 30.209946, 17.845186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506374, 30.023098, 17.628916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334024, -0.455110, 0.825411,
		-0.631634, 0.758072, 0.162373,
		-0.699619, -0.467121, -0.540677,
		45.296490, 29.882961, 17.466713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152676, 30.241285, 18.211525>,  <45.786221, 30.209946, 17.845186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152676, 30.241285, 18.211525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.054169, 29.934477, 17.974533>,  <44.995064, 29.750391, 17.832338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.054169, 29.934477, 17.974533>,  <45.152676, 30.241285, 18.211525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054169, 29.934477, 17.974533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333126, -0.507074, 0.794923,
		-0.910154, 0.393133, -0.130640,
		-0.246267, -0.767022, -0.592478,
		44.980289, 29.704370, 17.796789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373901, 30.082230, 18.309662>,  <45.152676, 30.241285, 18.211525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373901, 30.082230, 18.309662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.578045, 29.757923, 18.194981>,  <44.700531, 29.563339, 18.126171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.578045, 29.757923, 18.194981>,  <44.373901, 30.082230, 18.309662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578045, 29.757923, 18.194981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514401, -0.554981, 0.653749,
		-0.689152, -0.186163, -0.700295,
		0.510354, -0.810765, -0.286703,
		44.731152, 29.514694, 18.108971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849888, 29.627426, 18.326103>,  <44.373901, 30.082230, 18.309662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849888, 29.627426, 18.326103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.161888, 29.381191, 18.281113>,  <44.349087, 29.233450, 18.254118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.161888, 29.381191, 18.281113>,  <43.849888, 29.627426, 18.326103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161888, 29.381191, 18.281113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440718, -0.667988, 0.599632,
		-0.444259, -0.418143, -0.792332,
		0.780001, -0.615587, -0.112477,
		44.395889, 29.196514, 18.247370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598003, 28.958294, 18.218018>,  <43.849888, 29.627426, 18.326103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598003, 28.958294, 18.218018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.976315, 28.882401, 18.323467>,  <44.203300, 28.836864, 18.386738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.976315, 28.882401, 18.323467>,  <43.598003, 28.958294, 18.218018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976315, 28.882401, 18.323467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324571, -0.582747, 0.745023,
		0.012272, -0.790195, -0.612733,
		0.945782, -0.189732, 0.263625,
		44.260048, 28.825481, 18.402555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582462, 28.256962, 18.365606>,  <43.598003, 28.958294, 18.218018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582462, 28.256962, 18.365606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.882290, 28.427061, 18.568508>,  <44.062187, 28.529121, 18.690250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.882290, 28.427061, 18.568508>,  <43.582462, 28.256962, 18.365606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882290, 28.427061, 18.568508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336491, -0.415129, 0.845247,
		0.570019, -0.804257, -0.168075,
		0.749568, 0.425251, 0.507256,
		44.107159, 28.554636, 18.720686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841011, 27.717489, 18.808939>,  <43.582462, 28.256962, 18.365606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841011, 27.717489, 18.808939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.938610, 28.073097, 18.963913>,  <43.997169, 28.286463, 19.056898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.938610, 28.073097, 18.963913>,  <43.841011, 27.717489, 18.808939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938610, 28.073097, 18.963913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299104, -0.311046, 0.902102,
		0.922497, -0.335997, 0.190014,
		0.244000, 0.889020, 0.387437,
		44.011810, 28.339804, 19.080145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963387, 27.465748, 19.536888>,  <43.841011, 27.717489, 18.808939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963387, 27.465748, 19.536888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.968121, 27.865446, 19.551668>,  <43.970963, 28.105265, 19.560537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.968121, 27.865446, 19.551668>,  <43.963387, 27.465748, 19.536888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968121, 27.865446, 19.551668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372905, -0.029878, 0.927388,
		0.927794, -0.024754, 0.372271,
		0.011834, 0.999247, 0.036952,
		43.971672, 28.165220, 19.562754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419296, 27.719460, 20.059374>,  <43.963387, 27.465748, 19.536888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419296, 27.719460, 20.059374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.159622, 28.017263, 19.997066>,  <44.003819, 28.195946, 19.959682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.159622, 28.017263, 19.997066>,  <44.419296, 27.719460, 20.059374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159622, 28.017263, 19.997066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122879, 0.099444, 0.987427,
		0.750641, 0.660161, 0.026927,
		-0.649183, 0.744511, -0.155767,
		43.964867, 28.240618, 19.950336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585476, 28.228905, 20.508791>,  <44.419296, 27.719460, 20.059374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585476, 28.228905, 20.508791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.202579, 28.311670, 20.427925>,  <43.972839, 28.361330, 20.379406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.202579, 28.311670, 20.427925>,  <44.585476, 28.228905, 20.508791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202579, 28.311670, 20.427925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135402, 0.297100, 0.945197,
		0.255638, 0.932158, -0.256380,
		-0.957244, 0.206914, -0.202166,
		43.915405, 28.373745, 20.367275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483658, 28.923346, 20.899076>,  <44.585476, 28.228905, 20.508791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483658, 28.923346, 20.899076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.119850, 28.775469, 20.823069>,  <43.901566, 28.686743, 20.777464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.119850, 28.775469, 20.823069>,  <44.483658, 28.923346, 20.899076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119850, 28.775469, 20.823069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389966, 0.600654, 0.697955,
		-0.143891, 0.708903, -0.690472,
		-0.909518, -0.369690, -0.190019,
		43.846996, 28.664562, 20.766064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096123, 29.502871, 20.945469>,  <44.483658, 28.923346, 20.899076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096123, 29.502871, 20.945469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.863609, 29.185181, 21.016254>,  <43.724102, 28.994566, 21.058725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.863609, 29.185181, 21.016254>,  <44.096123, 29.502871, 20.945469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863609, 29.185181, 21.016254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428190, 0.483495, 0.763469,
		-0.691927, 0.368019, -0.621127,
		-0.581283, -0.794226, 0.176962,
		43.689224, 28.946913, 21.069344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495651, 29.729929, 21.227230>,  <44.096123, 29.502871, 20.945469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495651, 29.729929, 21.227230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.470280, 29.340828, 21.316435>,  <43.455055, 29.107368, 21.369957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.470280, 29.340828, 21.316435>,  <43.495651, 29.729929, 21.227230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470280, 29.340828, 21.316435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261991, 0.231853, 0.936806,
		-0.962984, 0.000995, -0.269558,
		-0.063430, -0.972750, 0.223010,
		43.451252, 29.049004, 21.383337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792446, 29.621164, 21.513159>,  <43.495651, 29.729929, 21.227230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792446, 29.621164, 21.513159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.041710, 29.347099, 21.664007>,  <43.191269, 29.182661, 21.754517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.041710, 29.347099, 21.664007>,  <42.792446, 29.621164, 21.513159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041710, 29.347099, 21.664007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438355, 0.093348, 0.893941,
		-0.647697, -0.722385, -0.242173,
		0.623164, -0.685161, 0.377122,
		43.228661, 29.141550, 21.777143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117359, 29.636091, 21.305220>,  <42.792446, 29.621164, 21.513159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117359, 29.636091, 21.305220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.758713, 29.808992, 21.343655>,  <41.543526, 29.912733, 21.366716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.758713, 29.808992, 21.343655>,  <42.117359, 29.636091, 21.305220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758713, 29.808992, 21.343655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162356, -0.119030, -0.979527,
		-0.411967, -0.893862, 0.176903,
		-0.896618, 0.432254, 0.096088,
		41.489727, 29.938667, 21.372480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596073, 29.217209, 20.913494>,  <42.117359, 29.636091, 21.305220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596073, 29.217209, 20.913494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462372, 29.594021, 20.925224>,  <41.382153, 29.820108, 20.932262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462372, 29.594021, 20.925224>,  <41.596073, 29.217209, 20.913494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462372, 29.594021, 20.925224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164140, 0.088823, -0.982430,
		-0.928081, -0.323564, -0.184314,
		-0.334250, 0.942028, 0.029326,
		41.362095, 29.876629, 20.934023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023140, 29.282417, 20.412165>,  <41.596073, 29.217209, 20.913494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023140, 29.282417, 20.412165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.119080, 29.668493, 20.453896>,  <41.176643, 29.900139, 20.478933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.119080, 29.668493, 20.453896>,  <41.023140, 29.282417, 20.412165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119080, 29.668493, 20.453896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180340, 0.061296, -0.981693,
		-0.953913, 0.254273, -0.159360,
		0.239850, 0.965188, 0.104327,
		41.191036, 29.958050, 20.485193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605629, 29.711691, 19.926525>,  <41.023140, 29.282417, 20.412165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605629, 29.711691, 19.926525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.934544, 29.920351, 20.017492>,  <41.131893, 30.045547, 20.072073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.934544, 29.920351, 20.017492>,  <40.605629, 29.711691, 19.926525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934544, 29.920351, 20.017492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193570, 0.119403, -0.973794,
		-0.535135, 0.844762, -0.002792,
		0.822290, 0.521652, 0.227417,
		41.181232, 30.076847, 20.085718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478611, 30.361736, 19.547503>,  <40.605629, 29.711691, 19.926525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478611, 30.361736, 19.547503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.869358, 30.328833, 19.626465>,  <41.103806, 30.309092, 19.673843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.869358, 30.328833, 19.626465>,  <40.478611, 30.361736, 19.547503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869358, 30.328833, 19.626465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207106, 0.133704, -0.969139,
		0.053325, 0.987602, 0.147647,
		0.976864, -0.082258, 0.197408,
		41.162418, 30.304155, 19.685688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759197, 30.849632, 19.156227>,  <40.478611, 30.361736, 19.547503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759197, 30.849632, 19.156227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.116344, 30.679394, 19.215086>,  <41.330631, 30.577251, 19.250401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.116344, 30.679394, 19.215086>,  <40.759197, 30.849632, 19.156227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116344, 30.679394, 19.215086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270255, 0.245059, -0.931079,
		0.360205, 0.871099, 0.333826,
		0.892869, -0.425597, 0.147147,
		41.384205, 30.551714, 19.259230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187931, 31.249649, 18.837780>,  <40.759197, 30.849632, 19.156227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187931, 31.249649, 18.837780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.430061, 30.933796, 18.877892>,  <41.575340, 30.744284, 18.901958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.430061, 30.933796, 18.877892>,  <41.187931, 31.249649, 18.837780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430061, 30.933796, 18.877892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322072, 0.127771, -0.938053,
		0.727907, 0.600126, 0.331662,
		0.605327, -0.789635, 0.100278,
		41.611660, 30.696905, 18.907974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072376, 31.976980, 19.129171>,  <41.187931, 31.249649, 18.837780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072376, 31.976980, 19.129171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.924194, 32.316380, 18.978012>,  <40.835285, 32.520020, 18.887316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.924194, 32.316380, 18.978012>,  <41.072376, 31.976980, 19.129171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924194, 32.316380, 18.978012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639721, 0.061903, 0.766110,
		0.673438, 0.525561, 0.519871,
		-0.370457, 0.848500, -0.377900,
		40.813057, 32.570930, 18.864641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110115, 32.575508, 19.652313>,  <41.072376, 31.976980, 19.129171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110115, 32.575508, 19.652313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813320, 32.653641, 19.395781>,  <40.635242, 32.700520, 19.241861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813320, 32.653641, 19.395781>,  <41.110115, 32.575508, 19.652313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813320, 32.653641, 19.395781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659066, -0.037242, 0.751162,
		0.122842, 0.980030, 0.156370,
		-0.741985, 0.195332, -0.641329,
		40.590725, 32.712242, 19.203382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882641, 33.272099, 19.611427>,  <41.110115, 32.575508, 19.652313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882641, 33.272099, 19.611427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573647, 33.037941, 19.512970>,  <40.388248, 32.897446, 19.453896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573647, 33.037941, 19.512970>,  <40.882641, 33.272099, 19.611427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573647, 33.037941, 19.512970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411645, 0.166457, 0.896014,
		-0.483546, 0.793480, -0.369558,
		-0.772484, -0.585390, -0.246142,
		40.341900, 32.862324, 19.439127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286690, 33.532494, 19.972771>,  <40.882641, 33.272099, 19.611427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286690, 33.532494, 19.972771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124294, 33.184151, 19.861937>,  <40.026855, 32.975143, 19.795437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124294, 33.184151, 19.861937>,  <40.286690, 33.532494, 19.972771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124294, 33.184151, 19.861937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604081, 0.028220, 0.796423,
		-0.685753, 0.490721, -0.537527,
		-0.405990, -0.870860, -0.277084,
		40.002499, 32.922894, 19.778811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547871, 33.639797, 20.052355>,  <40.286690, 33.532494, 19.972771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547871, 33.639797, 20.052355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668861, 33.259079, 20.072746>,  <39.741455, 33.030647, 20.084982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668861, 33.259079, 20.072746>,  <39.547871, 33.639797, 20.052355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668861, 33.259079, 20.072746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507558, -0.115570, 0.853831,
		-0.806777, -0.284143, -0.518047,
		0.302481, -0.951791, 0.050980,
		39.759605, 32.973541, 20.088041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957657, 33.284164, 20.411077>,  <39.547871, 33.639797, 20.052355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957657, 33.284164, 20.411077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.232800, 32.993832, 20.413101>,  <39.397884, 32.819633, 20.414316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.232800, 32.993832, 20.413101>,  <38.957657, 33.284164, 20.411077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232800, 32.993832, 20.413101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485876, -0.455255, 0.746101,
		-0.539240, -0.515668, -0.665813,
		0.687855, -0.725831, 0.005059,
		39.439156, 32.776081, 20.414619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556156, 32.725651, 20.481220>,  <38.957657, 33.284164, 20.411077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556156, 32.725651, 20.481220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.918510, 32.626629, 20.618675>,  <39.135921, 32.567215, 20.701149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.918510, 32.626629, 20.618675>,  <38.556156, 32.725651, 20.481220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918510, 32.626629, 20.618675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421648, -0.450899, 0.786704,
		-0.039808, -0.857558, -0.512844,
		0.905886, -0.247557, 0.343639,
		39.190277, 32.552361, 20.721767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.654697, 33.816311, 18.134579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.869946, 33.533005, 18.317352>,  <44.999096, 33.363022, 18.427015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.869946, 33.533005, 18.317352>,  <44.654697, 33.816311, 18.134579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869946, 33.533005, 18.317352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696179, -0.067885, 0.714652,
		-0.475145, -0.702674, -0.529610,
		0.538120, -0.708266, 0.456932,
		45.031380, 33.320526, 18.454432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095325, 33.243305, 18.143518>,  <44.654697, 33.816311, 18.134579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095325, 33.243305, 18.143518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.388565, 33.248955, 18.415508>,  <44.564510, 33.252346, 18.578703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.388565, 33.248955, 18.415508>,  <44.095325, 33.243305, 18.143518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388565, 33.248955, 18.415508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680119, 0.018302, 0.732873,
		-0.002105, -0.999733, 0.023012,
		0.733099, 0.014108, 0.679976,
		44.608494, 33.253193, 18.619501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886398, 32.836899, 18.624224>,  <44.095325, 33.243305, 18.143518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886398, 32.836899, 18.624224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.157986, 33.059265, 18.816042>,  <44.320938, 33.192684, 18.931133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.157986, 33.059265, 18.816042>,  <43.886398, 32.836899, 18.624224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157986, 33.059265, 18.816042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680427, 0.231169, 0.695399,
		0.275725, -0.798449, 0.535214,
		0.678965, 0.555914, 0.479548,
		44.361675, 33.226040, 18.959906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711674, 32.682423, 19.222601>,  <43.886398, 32.836899, 18.624224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711674, 32.682423, 19.222601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.946106, 32.999699, 19.288755>,  <44.086765, 33.190063, 19.328447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.946106, 32.999699, 19.288755>,  <43.711674, 32.682423, 19.222601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946106, 32.999699, 19.288755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541260, 0.231376, 0.808395,
		0.602949, -0.563300, 0.564929,
		0.586080, 0.793195, 0.165383,
		44.121929, 33.237656, 19.338371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881470, 32.691956, 19.931967>,  <43.711674, 32.682423, 19.222601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881470, 32.691956, 19.931967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.937347, 33.070782, 19.816351>,  <43.970875, 33.298080, 19.746983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.937347, 33.070782, 19.816351>,  <43.881470, 32.691956, 19.931967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937347, 33.070782, 19.816351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516870, 0.318721, 0.794520,
		0.844589, 0.038404, 0.534036,
		0.139696, 0.947070, -0.289038,
		43.979256, 33.354904, 19.729639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070744, 33.015137, 20.487976>,  <43.881470, 32.691956, 19.931967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070744, 33.015137, 20.487976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.952984, 33.309250, 20.243782>,  <43.882328, 33.485718, 20.097265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.952984, 33.309250, 20.243782>,  <44.070744, 33.015137, 20.487976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952984, 33.309250, 20.243782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461738, 0.449852, 0.764481,
		0.836735, 0.506948, 0.207069,
		-0.294402, 0.735280, -0.610484,
		43.864662, 33.529835, 20.060637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238232, 33.551201, 20.770948>,  <44.070744, 33.015137, 20.487976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238232, 33.551201, 20.770948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.943207, 33.680435, 20.533758>,  <43.766193, 33.757977, 20.391445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.943207, 33.680435, 20.533758>,  <44.238232, 33.551201, 20.770948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943207, 33.680435, 20.533758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409132, 0.484795, 0.773036,
		0.537227, 0.812767, -0.225382,
		-0.737562, 0.323085, -0.592974,
		43.721939, 33.777359, 20.355865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024200, 34.049259, 21.119003>,  <44.238232, 33.551201, 20.770948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024200, 34.049259, 21.119003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.708469, 34.059528, 20.873627>,  <43.519032, 34.065689, 20.726400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.708469, 34.059528, 20.873627>,  <44.024200, 34.049259, 21.119003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708469, 34.059528, 20.873627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491118, 0.573217, 0.655916,
		0.368472, 0.819002, -0.439846,
		-0.789323, 0.025670, -0.613441,
		43.471672, 34.067230, 20.689594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811161, 34.739346, 21.015541>,  <44.024200, 34.049259, 21.119003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811161, 34.739346, 21.015541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.487225, 34.522915, 20.924864>,  <43.292862, 34.393059, 20.870457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.487225, 34.522915, 20.924864>,  <43.811161, 34.739346, 21.015541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487225, 34.522915, 20.924864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574204, 0.651939, 0.495243,
		-0.120173, 0.531238, -0.838656,
		-0.809845, -0.541074, -0.226694,
		43.244270, 34.360592, 20.856855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332623, 35.182392, 21.053207>,  <43.811161, 34.739346, 21.015541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332623, 35.182392, 21.053207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.122795, 34.841934, 21.060972>,  <42.996899, 34.637661, 21.065630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.122795, 34.841934, 21.060972>,  <43.332623, 35.182392, 21.053207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122795, 34.841934, 21.060972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623007, 0.399305, 0.672619,
		-0.580248, 0.340744, -0.739734,
		-0.524571, -0.851146, 0.019410,
		42.965424, 34.586590, 21.066795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661930, 35.422363, 20.951084>,  <43.332623, 35.182392, 21.053207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661930, 35.422363, 20.951084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.660034, 35.068901, 21.138330>,  <42.658897, 34.856823, 21.250679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.660034, 35.068901, 21.138330>,  <42.661930, 35.422363, 20.951084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660034, 35.068901, 21.138330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511488, 0.404391, 0.758188,
		-0.859277, -0.235845, -0.453894,
		-0.004736, -0.883655, 0.468115,
		42.658615, 34.803806, 21.278765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028877, 35.359970, 21.389235>,  <42.661930, 35.422363, 20.951084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028877, 35.359970, 21.389235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.267033, 35.093132, 21.568340>,  <42.409927, 34.933029, 21.675804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.267033, 35.093132, 21.568340>,  <42.028877, 35.359970, 21.389235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267033, 35.093132, 21.568340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259094, 0.368114, 0.892951,
		-0.760513, -0.647667, 0.046330,
		0.595390, -0.667098, 0.447763,
		42.445648, 34.893002, 21.702669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738178, 34.746983, 21.175655>,  <42.028877, 35.359970, 21.389235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738178, 34.746983, 21.175655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418449, 34.915562, 21.004328>,  <41.226612, 35.016708, 20.901531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418449, 34.915562, 21.004328>,  <41.738178, 34.746983, 21.175655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418449, 34.915562, 21.004328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471069, -0.003035, -0.882091,
		-0.373058, -0.906846, -0.196107,
		-0.799326, 0.421451, -0.428319,
		41.178650, 35.041996, 20.875832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664551, 34.453556, 20.571445>,  <41.738178, 34.746983, 21.175655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664551, 34.453556, 20.571445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.440582, 34.769310, 20.470764>,  <41.306202, 34.958763, 20.410355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.440582, 34.769310, 20.470764>,  <41.664551, 34.453556, 20.571445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440582, 34.769310, 20.470764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347898, -0.051717, -0.936105,
		-0.751964, -0.611717, -0.245668,
		-0.559926, 0.789384, -0.251704,
		41.272606, 35.006126, 20.395252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253094, 34.181286, 19.961658>,  <41.664551, 34.453556, 20.571445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253094, 34.181286, 19.961658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.296978, 34.578800, 19.969109>,  <41.323307, 34.817310, 19.973579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.296978, 34.578800, 19.969109>,  <41.253094, 34.181286, 19.961658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296978, 34.578800, 19.969109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091840, 0.008525, -0.995737,
		-0.989712, 0.110953, -0.090335,
		0.109710, 0.993789, 0.018627,
		41.329891, 34.876938, 19.974697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126232, 34.387825, 19.265432>,  <41.253094, 34.181286, 19.961658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126232, 34.387825, 19.265432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.255051, 34.732307, 19.422716>,  <41.332340, 34.938995, 19.517086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.255051, 34.732307, 19.422716>,  <41.126232, 34.387825, 19.265432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255051, 34.732307, 19.422716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185678, 0.349814, -0.918234,
		-0.928337, 0.368725, -0.047250,
		0.322047, 0.861204, 0.393209,
		41.351665, 34.990669, 19.540678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794617, 34.956268, 18.894976>,  <41.126232, 34.387825, 19.265432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794617, 34.956268, 18.894976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.123581, 35.112465, 19.060463>,  <41.320957, 35.206181, 19.159756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.123581, 35.112465, 19.060463>,  <40.794617, 34.956268, 18.894976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123581, 35.112465, 19.060463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305843, 0.309721, -0.900296,
		-0.479691, 0.866945, 0.135289,
		0.822409, 0.390487, 0.413719,
		41.370304, 35.229610, 19.184578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905647, 35.643131, 18.674805>,  <40.794617, 34.956268, 18.894976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905647, 35.643131, 18.674805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.275047, 35.533520, 18.782179>,  <41.496689, 35.467754, 18.846603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.275047, 35.533520, 18.782179>,  <40.905647, 35.643131, 18.674805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275047, 35.533520, 18.782179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364760, 0.410701, -0.835629,
		0.118737, 0.869617, 0.479236,
		0.923500, -0.274026, 0.268436,
		41.552097, 35.451313, 18.862709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210068, 36.174500, 18.496153>,  <40.905647, 35.643131, 18.674805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210068, 36.174500, 18.496153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.486916, 35.885933, 18.505344>,  <41.653023, 35.712791, 18.510859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.486916, 35.885933, 18.505344>,  <41.210068, 36.174500, 18.496153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486916, 35.885933, 18.505344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308761, 0.267144, -0.912853,
		0.652412, 0.638895, 0.407641,
		0.692116, -0.721420, 0.022978,
		41.694550, 35.669506, 18.512238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953236, 36.450932, 18.329111>,  <41.210068, 36.174500, 18.496153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953236, 36.450932, 18.329111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.992668, 36.057613, 18.267908>,  <42.016327, 35.821621, 18.231186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.992668, 36.057613, 18.267908>,  <41.953236, 36.450932, 18.329111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992668, 36.057613, 18.267908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462336, 0.181409, -0.867950,
		0.881208, 0.014821, 0.472496,
		0.098579, -0.983296, -0.153007,
		42.022243, 35.762623, 18.222006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690323, 36.422089, 18.040619>,  <41.953236, 36.450932, 18.329111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690323, 36.422089, 18.040619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.547573, 36.053825, 17.977325>,  <42.461922, 35.832867, 17.939350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.547573, 36.053825, 17.977325>,  <42.690323, 36.422089, 18.040619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547573, 36.053825, 17.977325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548277, -0.069291, -0.833421,
		0.756329, -0.384181, 0.529502,
		-0.356874, -0.920654, -0.158231,
		42.440510, 35.777630, 17.929855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307545, 35.917847, 17.903639>,  <42.690323, 36.422089, 18.040619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307545, 35.917847, 17.903639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.966820, 35.784939, 17.741642>,  <42.762386, 35.705196, 17.644444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.966820, 35.784939, 17.741642>,  <43.307545, 35.917847, 17.903639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966820, 35.784939, 17.741642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480237, -0.186472, -0.857088,
		0.209262, -0.924568, 0.318405,
		-0.851810, -0.332266, -0.404991,
		42.711277, 35.685261, 17.620144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436447, 35.160660, 17.589373>,  <43.307545, 35.917847, 17.903639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436447, 35.160660, 17.589373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.150333, 35.370579, 17.404785>,  <42.978664, 35.496529, 17.294033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.150333, 35.370579, 17.404785>,  <43.436447, 35.160660, 17.589373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150333, 35.370579, 17.404785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410082, -0.219491, -0.885244,
		-0.565863, -0.822442, -0.058212,
		-0.715284, 0.524799, -0.461470,
		42.935749, 35.528019, 17.266344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402813, 34.799530, 16.976383>,  <43.436447, 35.160660, 17.589373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402813, 34.799530, 16.976383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.164661, 35.109318, 16.890852>,  <43.021770, 35.295189, 16.839533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.164661, 35.109318, 16.890852>,  <43.402813, 34.799530, 16.976383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164661, 35.109318, 16.890852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181645, -0.129497, -0.974800,
		-0.782639, -0.619220, -0.063578,
		-0.595383, 0.774466, -0.213828,
		42.986046, 35.341656, 16.826704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997219, 34.618839, 16.390182>,  <43.402813, 34.799530, 16.976383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997219, 34.618839, 16.390182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.964634, 35.016514, 16.362005>,  <42.945084, 35.255119, 16.345098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.964634, 35.016514, 16.362005>,  <42.997219, 34.618839, 16.390182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964634, 35.016514, 16.362005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088176, -0.063214, -0.994097,
		-0.992768, -0.087194, -0.082513,
		-0.081463, 0.994184, -0.070445,
		42.940193, 35.314770, 16.340872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983532, 34.104919, 16.870066>,  <42.997219, 34.618839, 16.390182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983532, 34.104919, 16.870066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.775017, 33.950867, 16.565451>,  <42.649910, 33.858437, 16.382683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.775017, 33.950867, 16.565451>,  <42.983532, 34.104919, 16.870066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775017, 33.950867, 16.565451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768551, -0.176015, 0.615101,
		-0.370936, 0.905921, -0.204239,
		-0.521284, -0.385131, -0.761536,
		42.618633, 33.835327, 16.336990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253571, 34.535690, 16.809160>,  <42.983532, 34.104919, 16.870066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253571, 34.535690, 16.809160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.228516, 34.168777, 16.651844>,  <42.213482, 33.948631, 16.557453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.228516, 34.168777, 16.651844>,  <42.253571, 34.535690, 16.809160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228516, 34.168777, 16.651844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772431, -0.204985, 0.601108,
		-0.632002, 0.341443, -0.695694,
		-0.062638, -0.917278, -0.393292,
		42.209724, 33.893593, 16.533857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549118, 34.376186, 16.728109>,  <42.253571, 34.535690, 16.809160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549118, 34.376186, 16.728109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709965, 34.010330, 16.744789>,  <41.806473, 33.790817, 16.754797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709965, 34.010330, 16.744789>,  <41.549118, 34.376186, 16.728109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709965, 34.010330, 16.744789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604264, -0.230897, 0.762595,
		-0.687871, -0.331849, -0.645531,
		0.402117, -0.914638, 0.041697,
		41.830601, 33.735939, 16.757298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957321, 33.910915, 16.810444>,  <41.549118, 34.376186, 16.728109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957321, 33.910915, 16.810444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.269104, 33.679008, 16.905363>,  <41.456173, 33.539864, 16.962315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.269104, 33.679008, 16.905363>,  <40.957321, 33.910915, 16.810444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269104, 33.679008, 16.905363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524583, -0.397020, 0.753119,
		-0.342425, -0.711506, -0.613599,
		0.779460, -0.579770, 0.237294,
		41.502941, 33.505077, 16.976551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681503, 33.318989, 17.000071>,  <40.957321, 33.910915, 16.810444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681503, 33.318989, 17.000071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.035118, 33.317406, 17.187029>,  <41.247288, 33.316456, 17.299204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.035118, 33.317406, 17.187029>,  <40.681503, 33.318989, 17.000071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035118, 33.317406, 17.187029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413782, -0.471697, 0.778644,
		0.217390, -0.881752, -0.418636,
		0.884039, -0.003955, 0.467395,
		41.300331, 33.316219, 17.327248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798702, 32.670250, 17.244085>,  <40.681503, 33.318989, 17.000071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798702, 32.670250, 17.244085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.028942, 32.894997, 17.481739>,  <41.167088, 33.029842, 17.624331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.028942, 32.894997, 17.481739>,  <40.798702, 32.670250, 17.244085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028942, 32.894997, 17.481739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355105, -0.482734, 0.800543,
		0.736603, -0.671772, -0.078341,
		0.575600, 0.561863, 0.594133,
		41.201622, 33.063557, 17.659979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288074, 32.232719, 17.585850>,  <40.798702, 32.670250, 17.244085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288074, 32.232719, 17.585850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.231628, 32.562775, 17.804659>,  <41.197762, 32.760807, 17.935946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.231628, 32.562775, 17.804659>,  <41.288074, 32.232719, 17.585850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231628, 32.562775, 17.804659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399743, -0.552997, 0.731026,
		0.905700, -0.115512, 0.407878,
		-0.141113, 0.825137, 0.547025,
		41.189293, 32.810314, 17.968767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196316, 31.911692, 18.288578>,  <41.288074, 32.232719, 17.585850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196316, 31.911692, 18.288578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.072956, 32.290207, 18.327421>,  <40.998940, 32.517315, 18.350727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.072956, 32.290207, 18.327421>,  <41.196316, 31.911692, 18.288578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072956, 32.290207, 18.327421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641023, -0.282163, 0.713775,
		0.702835, 0.157881, 0.693611,
		-0.308403, 0.946286, 0.097109,
		40.980434, 32.574093, 18.356554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836575, 31.470732, 18.619724>,  <41.196316, 31.911692, 18.288578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836575, 31.470732, 18.619724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.828770, 31.071972, 18.589243>,  <41.824085, 30.832716, 18.570953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.828770, 31.071972, 18.589243>,  <41.836575, 31.470732, 18.619724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828770, 31.071972, 18.589243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178595, 0.071517, -0.981320,
		0.983729, -0.032758, 0.176646,
		-0.019513, -0.996901, -0.076204,
		41.822914, 30.772902, 18.566381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425301, 31.398647, 18.282619>,  <41.836575, 31.470732, 18.619724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425301, 31.398647, 18.282619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257019, 31.037970, 18.242706>,  <42.156048, 30.821564, 18.218758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257019, 31.037970, 18.242706>,  <42.425301, 31.398647, 18.282619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257019, 31.037970, 18.242706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288710, -0.028802, -0.956983,
		0.860031, -0.431417, 0.272445,
		-0.420705, -0.901693, -0.099784,
		42.130806, 30.767462, 18.212770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903408, 31.103275, 17.931351>,  <42.425301, 31.398647, 18.282619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903408, 31.103275, 17.931351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.571152, 30.890982, 17.864000>,  <42.371796, 30.763605, 17.823591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.571152, 30.890982, 17.864000>,  <42.903408, 31.103275, 17.931351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571152, 30.890982, 17.864000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276424, -0.130565, -0.952125,
		0.483343, -0.837420, 0.255161,
		-0.830644, -0.530736, -0.168375,
		42.321960, 30.731760, 17.813488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075943, 30.456423, 17.725775>,  <42.903408, 31.103275, 17.931351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075943, 30.456423, 17.725775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.703514, 30.506207, 17.588596>,  <42.480057, 30.536077, 17.506290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.703514, 30.506207, 17.588596>,  <43.075943, 30.456423, 17.725775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703514, 30.506207, 17.588596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358815, 0.142411, -0.922481,
		-0.065975, -0.981951, -0.177254,
		-0.931074, 0.124462, -0.342944,
		42.424191, 30.543545, 17.485714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976547, 29.927443, 17.192600>,  <43.075943, 30.456423, 17.725775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976547, 29.927443, 17.192600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686424, 30.192471, 17.117844>,  <42.512348, 30.351486, 17.072990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686424, 30.192471, 17.117844>,  <42.976547, 29.927443, 17.192600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686424, 30.192471, 17.117844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227964, -0.025000, -0.973349,
		-0.649582, -0.748585, -0.132909,
		-0.725311, 0.662568, -0.186890,
		42.468830, 30.391241, 17.061777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489449, 29.703915, 16.579580>,  <42.976547, 29.927443, 17.192600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489449, 29.703915, 16.579580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.436531, 30.095341, 16.642708>,  <42.404781, 30.330196, 16.680584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.436531, 30.095341, 16.642708>,  <42.489449, 29.703915, 16.579580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436531, 30.095341, 16.642708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299848, 0.191268, -0.934616,
		-0.944770, -0.076320, -0.318725,
		-0.132292, 0.978566, 0.157820,
		42.396843, 30.388910, 16.690054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063450, 29.953173, 15.979327>,  <42.489449, 29.703915, 16.579580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063450, 29.953173, 15.979327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256287, 30.261339, 16.146204>,  <42.371986, 30.446239, 16.246330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256287, 30.261339, 16.146204>,  <42.063450, 29.953173, 15.979327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256287, 30.261339, 16.146204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265587, 0.325266, -0.907560,
		-0.834897, 0.548327, -0.047805,
		0.482090, 0.770415, 0.417192,
		42.400913, 30.492464, 16.271362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724514, 30.650734, 15.767001>,  <42.063450, 29.953173, 15.979327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724514, 30.650734, 15.767001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.108406, 30.711988, 15.861214>,  <42.338741, 30.748741, 15.917741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.108406, 30.711988, 15.861214>,  <41.724514, 30.650734, 15.767001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108406, 30.711988, 15.861214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177832, 0.317886, -0.931303,
		-0.217488, 0.935681, 0.277850,
		0.959726, 0.153136, 0.235531,
		42.396324, 30.757929, 15.931873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913445, 31.319733, 15.494436>,  <41.724514, 30.650734, 15.767001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913445, 31.319733, 15.494436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.258041, 31.122681, 15.543674>,  <42.464798, 31.004450, 15.573216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.258041, 31.122681, 15.543674>,  <41.913445, 31.319733, 15.494436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258041, 31.122681, 15.543674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245348, 0.191597, -0.950313,
		0.444569, 0.848885, 0.285925,
		0.861489, -0.492631, 0.123094,
		42.516487, 30.974892, 15.580602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.149216, 31.139078, 31.354910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536663, 31.222759, 31.408596>,  <38.769131, 31.272968, 31.440807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536663, 31.222759, 31.408596>,  <38.149216, 31.139078, 31.354910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536663, 31.222759, 31.408596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050173, 0.364309, -0.929926,
		-0.243439, 0.907476, 0.342380,
		0.968618, 0.209202, 0.134218,
		38.827248, 31.285521, 31.448862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240021, 31.797222, 31.049562>,  <38.149216, 31.139078, 31.354910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240021, 31.797222, 31.049562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571136, 31.575865, 31.086464>,  <38.769806, 31.443050, 31.108604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571136, 31.575865, 31.086464>,  <38.240021, 31.797222, 31.049562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571136, 31.575865, 31.086464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168566, 0.088497, -0.981710,
		0.535110, 0.828204, 0.166541,
		0.827794, -0.553396, 0.092252,
		38.819473, 31.409845, 31.114140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661129, 32.014153, 30.529003>,  <38.240021, 31.797222, 31.049562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661129, 32.014153, 30.529003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.849579, 31.673727, 30.621721>,  <38.962650, 31.469471, 30.677353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.849579, 31.673727, 30.621721>,  <38.661129, 32.014153, 30.529003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849579, 31.673727, 30.621721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311920, -0.085061, -0.946293,
		0.825073, 0.518125, 0.225389,
		0.471126, -0.851065, 0.231795,
		38.990917, 31.418407, 30.691259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288551, 32.176903, 30.234232>,  <38.661129, 32.014153, 30.529003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288551, 32.176903, 30.234232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.235577, 31.781124, 30.257757>,  <39.203793, 31.543657, 30.271872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.235577, 31.781124, 30.257757>,  <39.288551, 32.176903, 30.234232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235577, 31.781124, 30.257757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227602, -0.088105, -0.969760,
		0.964706, -0.115044, 0.236868,
		-0.132435, -0.989445, 0.058811,
		39.195847, 31.484291, 30.275400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876827, 31.863073, 29.844336>,  <39.288551, 32.176903, 30.234232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876827, 31.863073, 29.844336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.601189, 31.573761, 29.862282>,  <39.435806, 31.400173, 29.873049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.601189, 31.573761, 29.862282>,  <39.876827, 31.863073, 29.844336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601189, 31.573761, 29.862282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172785, -0.224112, -0.959124,
		0.703770, -0.653177, 0.279407,
		-0.689096, -0.723280, 0.044864,
		39.394459, 31.356777, 29.875742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229027, 31.274183, 29.631285>,  <39.876827, 31.863073, 29.844336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229027, 31.274183, 29.631285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.837540, 31.198919, 29.598539>,  <39.602646, 31.153761, 29.578892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.837540, 31.198919, 29.598539>,  <40.229027, 31.274183, 29.631285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837540, 31.198919, 29.598539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158574, -0.440340, -0.883717,
		0.130231, -0.877893, 0.460807,
		-0.978721, -0.188159, -0.081865,
		39.543922, 31.142471, 29.573980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186798, 30.541084, 29.331434>,  <40.229027, 31.274183, 29.631285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186798, 30.541084, 29.331434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.833569, 30.714170, 29.258831>,  <39.621632, 30.818022, 29.215269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.833569, 30.714170, 29.258831>,  <40.186798, 30.541084, 29.331434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833569, 30.714170, 29.258831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003172, -0.381295, -0.924448,
		-0.469234, -0.816926, 0.335337,
		-0.883068, 0.432719, -0.181507,
		39.568649, 30.843987, 29.204378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800621, 29.978376, 29.040167>,  <40.186798, 30.541084, 29.331434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800621, 29.978376, 29.040167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.649197, 30.331226, 28.928057>,  <39.558342, 30.542936, 28.860790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.649197, 30.331226, 28.928057>,  <39.800621, 29.978376, 29.040167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649197, 30.331226, 28.928057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148114, -0.241174, -0.959113,
		-0.913650, -0.404592, -0.039356,
		-0.378557, 0.882123, -0.280274,
		39.535629, 30.595863, 28.843975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244503, 29.852304, 28.593340>,  <39.800621, 29.978376, 29.040167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244503, 29.852304, 28.593340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.353210, 30.229521, 28.516592>,  <39.418434, 30.455851, 28.470543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.353210, 30.229521, 28.516592>,  <39.244503, 29.852304, 28.593340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353210, 30.229521, 28.516592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212266, -0.253203, -0.943839,
		-0.938661, 0.215779, -0.268988,
		0.271770, 0.943042, -0.191869,
		39.434742, 30.512434, 28.459032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828354, 30.044994, 27.956844>,  <39.244503, 29.852304, 28.593340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828354, 30.044994, 27.956844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.102932, 30.335579, 27.969740>,  <39.267681, 30.509930, 27.977478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.102932, 30.335579, 27.969740>,  <38.828354, 30.044994, 27.956844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102932, 30.335579, 27.969740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145566, -0.093840, -0.984888,
		-0.712459, 0.680769, -0.170164,
		0.686450, 0.726462, 0.032240,
		39.308868, 30.553518, 27.979412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683537, 30.550858, 27.473366>,  <38.828354, 30.044994, 27.956844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683537, 30.550858, 27.473366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.076923, 30.593660, 27.531807>,  <39.312954, 30.619343, 27.566872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.076923, 30.593660, 27.531807>,  <38.683537, 30.550858, 27.473366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076923, 30.593660, 27.531807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159215, -0.126461, -0.979111,
		-0.086295, 0.986183, -0.141407,
		0.983465, 0.107007, 0.146102,
		39.371964, 30.625763, 27.575638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887966, 31.026951, 26.911940>,  <38.683537, 30.550858, 27.473366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887966, 31.026951, 26.911940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.222118, 30.837212, 27.023027>,  <39.422611, 30.723368, 27.089680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.222118, 30.837212, 27.023027>,  <38.887966, 31.026951, 26.911940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222118, 30.837212, 27.023027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247961, -0.125712, -0.960579,
		0.490561, 0.871316, 0.012602,
		0.835384, -0.474347, 0.277721,
		39.472733, 30.694908, 27.106344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035530, 31.807358, 26.899426>,  <38.887966, 31.026951, 26.911940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035530, 31.807358, 26.899426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715103, 32.018311, 26.786179>,  <38.522846, 32.144882, 26.718231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715103, 32.018311, 26.786179>,  <39.035530, 31.807358, 26.899426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715103, 32.018311, 26.786179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231111, 0.163796, 0.959041,
		0.552153, 0.833691, -0.009329,
		-0.801071, 0.527381, -0.283115,
		38.474781, 32.176525, 26.701244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954884, 32.345085, 27.444908>,  <39.035530, 31.807358, 26.899426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954884, 32.345085, 27.444908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611237, 32.350945, 27.240284>,  <38.405048, 32.354462, 27.117510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611237, 32.350945, 27.240284>,  <38.954884, 32.345085, 27.444908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611237, 32.350945, 27.240284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497469, 0.210763, 0.841489,
		0.120148, 0.977428, -0.173782,
		-0.859121, 0.014652, -0.511563,
		38.353500, 32.355339, 27.086815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682739, 32.983372, 27.592085>,  <38.954884, 32.345085, 27.444908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682739, 32.983372, 27.592085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.393608, 32.727875, 27.486616>,  <38.220127, 32.574577, 27.423334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.393608, 32.727875, 27.486616>,  <38.682739, 32.983372, 27.592085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393608, 32.727875, 27.486616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522877, 0.256093, 0.813029,
		-0.451793, 0.725549, -0.519097,
		-0.722830, -0.638744, -0.263672,
		38.176758, 32.536251, 27.407515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063229, 33.333267, 27.536308>,  <38.682739, 32.983372, 27.592085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063229, 33.333267, 27.536308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905483, 32.967468, 27.572475>,  <37.810837, 32.747990, 27.594175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905483, 32.967468, 27.572475>,  <38.063229, 33.333267, 27.536308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905483, 32.967468, 27.572475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818622, 0.394308, 0.417587,
		-0.417535, 0.090662, -0.904127,
		-0.394363, -0.914496, 0.090419,
		37.787174, 32.693119, 27.599602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338051, 33.389332, 27.478441>,  <38.063229, 33.333267, 27.536308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338051, 33.389332, 27.478441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.378563, 33.036716, 27.662886>,  <37.402870, 32.825146, 27.773552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.378563, 33.036716, 27.662886>,  <37.338051, 33.389332, 27.478441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378563, 33.036716, 27.662886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868632, 0.147601, 0.472961,
		-0.484996, -0.448437, -0.750788,
		0.101277, -0.881543, 0.461113,
		37.408947, 32.772255, 27.801220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765415, 33.080677, 27.370682>,  <37.338051, 33.389332, 27.478441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765415, 33.080677, 27.370682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925201, 32.927521, 27.703867>,  <37.021072, 32.835629, 27.903778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925201, 32.927521, 27.703867>,  <36.765415, 33.080677, 27.370682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925201, 32.927521, 27.703867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857317, 0.165802, 0.487357,
		-0.324711, -0.908793, -0.262028,
		0.399462, -0.382891, 0.832961,
		37.045040, 32.812653, 27.953754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258499, 32.634674, 27.662872>,  <36.765415, 33.080677, 27.370682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258499, 32.634674, 27.662872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512512, 32.679558, 27.968590>,  <36.664921, 32.706486, 28.152020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512512, 32.679558, 27.968590>,  <36.258499, 32.634674, 27.662872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512512, 32.679558, 27.968590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772386, 0.108011, 0.625902,
		-0.012324, -0.987798, 0.155254,
		0.635034, 0.112202, 0.764292,
		36.703022, 32.713219, 28.197878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075550, 32.089714, 28.214554>,  <36.258499, 32.634674, 27.662872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075550, 32.089714, 28.214554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273949, 32.401150, 28.368330>,  <36.392986, 32.588009, 28.460596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273949, 32.401150, 28.368330>,  <36.075550, 32.089714, 28.214554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273949, 32.401150, 28.368330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768945, 0.188160, 0.610999,
		0.403379, -0.598665, 0.692016,
		0.495993, 0.778586, 0.384440,
		36.422745, 32.634727, 28.483662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812798, 32.094116, 28.856899>,  <36.075550, 32.089714, 28.214554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812798, 32.094116, 28.856899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980583, 32.457214, 28.853956>,  <36.081253, 32.675072, 28.852190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980583, 32.457214, 28.853956>,  <35.812798, 32.094116, 28.856899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980583, 32.457214, 28.853956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684315, 0.321524, 0.654474,
		0.596460, -0.269491, 0.756049,
		0.419463, 0.907742, -0.007359,
		36.106422, 32.729538, 28.851749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764782, 32.285336, 29.483650>,  <35.812798, 32.094116, 28.856899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764782, 32.285336, 29.483650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848606, 32.639771, 29.318274>,  <35.898899, 32.852432, 29.219048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848606, 32.639771, 29.318274>,  <35.764782, 32.285336, 29.483650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848606, 32.639771, 29.318274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739690, 0.420192, 0.525641,
		0.639488, 0.195666, 0.743485,
		0.209557, 0.886089, -0.413440,
		35.911472, 32.905598, 29.194242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734264, 32.774696, 29.990740>,  <35.764782, 32.285336, 29.483650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734264, 32.774696, 29.990740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698719, 33.014194, 29.672342>,  <35.677391, 33.157894, 29.481304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698719, 33.014194, 29.672342>,  <35.734264, 32.774696, 29.990740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698719, 33.014194, 29.672342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716172, 0.516999, 0.468839,
		0.692243, 0.611734, 0.382859,
		-0.088867, 0.598744, -0.795995,
		35.672058, 33.193817, 29.433544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842140, 33.542767, 30.138594>,  <35.734264, 32.774696, 29.990740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842140, 33.542767, 30.138594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643482, 33.534290, 29.791515>,  <35.524288, 33.529205, 29.583269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643482, 33.534290, 29.791515>,  <35.842140, 33.542767, 30.138594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643482, 33.534290, 29.791515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622943, 0.704832, 0.339344,
		0.604389, 0.709058, -0.363251,
		-0.496646, -0.021189, -0.867695,
		35.494488, 33.527935, 29.531206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696629, 34.135685, 29.794041>,  <35.842140, 33.542767, 30.138594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696629, 34.135685, 29.794041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380379, 33.935425, 29.653044>,  <35.190628, 33.815269, 29.568445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380379, 33.935425, 29.653044>,  <35.696629, 34.135685, 29.794041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380379, 33.935425, 29.653044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595386, 0.762981, 0.251745,
		0.142909, 0.408907, -0.901317,
		-0.790628, -0.500654, -0.352494,
		35.143188, 33.785229, 29.547295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293354, 34.635693, 29.567020>,  <35.696629, 34.135685, 29.794041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293354, 34.635693, 29.567020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047211, 34.321499, 29.593380>,  <34.899525, 34.132980, 29.609196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047211, 34.321499, 29.593380>,  <35.293354, 34.635693, 29.567020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047211, 34.321499, 29.593380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715803, 0.591858, 0.370581,
		-0.330090, 0.180870, -0.926459,
		-0.615359, -0.785487, 0.065899,
		34.862602, 34.085854, 29.613150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614132, 34.772293, 29.219938>,  <35.293354, 34.635693, 29.567020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614132, 34.772293, 29.219938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564587, 34.504574, 29.512976>,  <34.534859, 34.343941, 29.688799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564587, 34.504574, 29.512976>,  <34.614132, 34.772293, 29.219938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564587, 34.504574, 29.512976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701919, 0.580949, 0.412077,
		-0.701403, -0.463180, -0.541754,
		-0.123866, -0.669300, 0.732595,
		34.527428, 34.303783, 29.732754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508636, 35.438675, 28.930513>,  <34.614132, 34.772293, 29.219938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508636, 35.438675, 28.930513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668549, 35.767365, 29.092968>,  <34.764496, 35.964577, 29.190441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668549, 35.767365, 29.092968>,  <34.508636, 35.438675, 28.930513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668549, 35.767365, 29.092968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158124, 0.374616, -0.913597,
		-0.902871, 0.429454, 0.019828,
		0.399776, 0.821725, 0.406137,
		34.788483, 36.013882, 29.214809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301022, 36.032295, 28.516407>,  <34.508636, 35.438675, 28.930513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301022, 36.032295, 28.516407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643864, 36.143864, 28.689648>,  <34.849567, 36.210804, 28.793592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643864, 36.143864, 28.689648>,  <34.301022, 36.032295, 28.516407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643864, 36.143864, 28.689648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310103, 0.391988, -0.866130,
		-0.411357, 0.876668, 0.249478,
		0.857101, 0.278925, 0.433104,
		34.900993, 36.227543, 28.819578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421589, 36.678436, 28.399845>,  <34.301022, 36.032295, 28.516407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421589, 36.678436, 28.399845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788219, 36.530827, 28.461445>,  <35.008198, 36.442261, 28.498404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788219, 36.530827, 28.461445>,  <34.421589, 36.678436, 28.399845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788219, 36.530827, 28.461445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283593, 0.328406, -0.900958,
		0.281899, 0.869467, 0.405660,
		0.916574, -0.369021, 0.153997,
		35.063190, 36.420120, 28.507645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874485, 37.116505, 28.007410>,  <34.421589, 36.678436, 28.399845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874485, 37.116505, 28.007410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098385, 36.798092, 28.099508>,  <35.232723, 36.607044, 28.154768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098385, 36.798092, 28.099508>,  <34.874485, 37.116505, 28.007410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098385, 36.798092, 28.099508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544472, 0.143842, -0.826353,
		0.624685, 0.587913, 0.513933,
		0.559749, -0.796033, 0.230246,
		35.266308, 36.559280, 28.168583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505474, 37.432873, 28.163651>,  <34.874485, 37.116505, 28.007410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505474, 37.432873, 28.163651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534088, 37.052902, 28.041977>,  <35.551258, 36.824921, 27.968973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534088, 37.052902, 28.041977>,  <35.505474, 37.432873, 28.163651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534088, 37.052902, 28.041977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662321, 0.273267, -0.697607,
		0.745797, -0.151563, 0.648703,
		0.071538, -0.949923, -0.304185,
		35.555550, 36.767925, 27.950722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194157, 37.308266, 28.028158>,  <35.505474, 37.432873, 28.163651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194157, 37.308266, 28.028158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030159, 37.000580, 27.832109>,  <35.931759, 36.815968, 27.714481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030159, 37.000580, 27.832109>,  <36.194157, 37.308266, 28.028158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030159, 37.000580, 27.832109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529602, 0.236723, -0.814545,
		0.742579, -0.593530, 0.310320,
		-0.409997, -0.769211, -0.490120,
		35.907162, 36.769817, 27.685074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747856, 36.850475, 27.779490>,  <36.194157, 37.308266, 28.028158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747856, 36.850475, 27.779490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423454, 36.749676, 27.568298>,  <36.228813, 36.689194, 27.441584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423454, 36.749676, 27.568298>,  <36.747856, 36.850475, 27.779490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423454, 36.749676, 27.568298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569757, -0.135315, -0.810597,
		0.132830, -0.958219, 0.253322,
		-0.811008, -0.252003, -0.527978,
		36.180153, 36.674076, 27.409904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007122, 36.275787, 27.389965>,  <36.747856, 36.850475, 27.779490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007122, 36.275787, 27.389965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675735, 36.390816, 27.197735>,  <36.476906, 36.459831, 27.082396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675735, 36.390816, 27.197735>,  <37.007122, 36.275787, 27.389965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675735, 36.390816, 27.197735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479650, -0.078652, -0.873927,
		-0.289111, -0.954525, -0.072771,
		-0.828463, 0.287567, -0.480578,
		36.427197, 36.477085, 27.053562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904190, 35.782585, 26.826296>,  <37.007122, 36.275787, 27.389965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904190, 35.782585, 26.826296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722126, 36.117519, 26.705172>,  <36.612888, 36.318481, 26.632498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722126, 36.117519, 26.705172>,  <36.904190, 35.782585, 26.826296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722126, 36.117519, 26.705172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456368, -0.072633, -0.886822,
		-0.764565, -0.541836, -0.349075,
		-0.455157, 0.837340, -0.302809,
		36.585579, 36.368721, 26.614328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664940, 35.601810, 26.201506>,  <36.904190, 35.782585, 26.826296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664940, 35.601810, 26.201506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663074, 36.001629, 26.213409>,  <36.661957, 36.241520, 26.220551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663074, 36.001629, 26.213409>,  <36.664940, 35.601810, 26.201506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663074, 36.001629, 26.213409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394193, 0.029184, -0.918564,
		-0.919016, 0.007450, -0.394150,
		-0.004659, 0.999546, 0.029757,
		36.661678, 36.301495, 26.222336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336563, 35.749962, 25.634047>,  <36.664940, 35.601810, 26.201506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336563, 35.749962, 25.634047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541290, 36.077492, 25.738022>,  <36.664127, 36.274010, 25.800407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541290, 36.077492, 25.738022>,  <36.336563, 35.749962, 25.634047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541290, 36.077492, 25.738022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372705, 0.060981, -0.925944,
		-0.774038, 0.570794, -0.273969,
		0.511817, 0.818825, 0.259940,
		36.694836, 36.323139, 25.816004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159176, 36.352684, 25.115528>,  <36.336563, 35.749962, 25.634047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159176, 36.352684, 25.115528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514839, 36.423450, 25.284338>,  <36.728237, 36.465912, 25.385624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514839, 36.423450, 25.284338>,  <36.159176, 36.352684, 25.115528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514839, 36.423450, 25.284338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445889, -0.127598, -0.885947,
		-0.102888, 0.975920, -0.192339,
		0.889155, 0.176915, 0.422023,
		36.781586, 36.476524, 25.410946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556385, 36.845795, 24.691271>,  <36.159176, 36.352684, 25.115528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556385, 36.845795, 24.691271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837719, 36.651886, 24.899240>,  <37.006519, 36.535542, 25.024023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837719, 36.651886, 24.899240>,  <36.556385, 36.845795, 24.691271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837719, 36.651886, 24.899240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531730, -0.126655, -0.837390,
		0.471792, 0.865423, 0.168686,
		0.703332, -0.484770, 0.519926,
		37.048717, 36.506454, 25.055218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058769, 37.130047, 24.266088>,  <36.556385, 36.845795, 24.691271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058769, 37.130047, 24.266088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212418, 36.835159, 24.488422>,  <37.304607, 36.658226, 24.621822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212418, 36.835159, 24.488422>,  <37.058769, 37.130047, 24.266088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212418, 36.835159, 24.488422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635857, -0.225262, -0.738202,
		0.669428, 0.636993, 0.382240,
		0.384125, -0.737223, 0.555833,
		37.327656, 36.613991, 24.655172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729042, 37.173996, 24.069582>,  <37.058769, 37.130047, 24.266088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729042, 37.173996, 24.069582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.711468, 36.808765, 24.231745>,  <37.700924, 36.589626, 24.329042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.711468, 36.808765, 24.231745>,  <37.729042, 37.173996, 24.069582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711468, 36.808765, 24.231745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489370, -0.373451, -0.788068,
		0.870969, 0.163767, 0.463242,
		-0.043938, -0.913080, 0.405407,
		37.698288, 36.534840, 24.353367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417564, 36.848282, 24.034863>,  <37.729042, 37.173996, 24.069582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417564, 36.848282, 24.034863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151627, 36.549980, 24.051979>,  <37.992062, 36.370998, 24.062250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151627, 36.549980, 24.051979>,  <38.417564, 36.848282, 24.034863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151627, 36.549980, 24.051979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483375, -0.473198, -0.736500,
		0.569497, -0.468975, 0.675083,
		-0.664848, -0.745753, 0.042794,
		37.952171, 36.326256, 24.064817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844025, 36.277832, 24.125147>,  <38.417564, 36.848282, 24.034863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844025, 36.277832, 24.125147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.495857, 36.131386, 23.993492>,  <38.286957, 36.043518, 23.914499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.495857, 36.131386, 23.993492>,  <38.844025, 36.277832, 24.125147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495857, 36.131386, 23.993492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476437, -0.458018, -0.750485,
		0.124012, -0.810050, 0.573098,
		-0.870419, -0.366114, -0.329138,
		38.234730, 36.021553, 23.894751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923115, 35.486691, 23.997406>,  <38.844025, 36.277832, 24.125147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923115, 35.486691, 23.997406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611370, 35.575638, 23.763092>,  <38.424324, 35.629005, 23.622503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611370, 35.575638, 23.763092>,  <38.923115, 35.486691, 23.997406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611370, 35.575638, 23.763092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530234, -0.264045, -0.805687,
		-0.333831, -0.938527, 0.087882,
		-0.779364, 0.222365, -0.585786,
		38.377560, 35.642345, 23.587357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729958, 34.862244, 23.642988>,  <38.923115, 35.486691, 23.997406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729958, 34.862244, 23.642988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.597427, 35.155914, 23.405937>,  <38.517910, 35.332119, 23.263706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.597427, 35.155914, 23.405937>,  <38.729958, 34.862244, 23.642988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597427, 35.155914, 23.405937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526490, -0.377361, -0.761844,
		-0.782964, -0.564428, -0.261510,
		-0.331323, 0.734180, -0.592626,
		38.498032, 35.376167, 23.228149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957115, 34.646244, 23.055994>,  <38.729958, 34.862244, 23.642988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957115, 34.646244, 23.055994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.833015, 35.016964, 22.971348>,  <38.758556, 35.239395, 22.920561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.833015, 35.016964, 22.971348>,  <38.957115, 34.646244, 23.055994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833015, 35.016964, 22.971348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596236, 0.016324, -0.802643,
		-0.740439, -0.375190, -0.557658,
		-0.310247, 0.926804, -0.211615,
		38.739941, 35.295006, 22.907864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713753, 34.638832, 22.356522>,  <38.957115, 34.646244, 23.055994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713753, 34.638832, 22.356522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842133, 35.005558, 22.451555>,  <38.919159, 35.225594, 22.508575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842133, 35.005558, 22.451555>,  <38.713753, 34.638832, 22.356522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842133, 35.005558, 22.451555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649468, -0.030470, -0.759778,
		-0.689336, 0.398151, -0.605221,
		0.320947, 0.916814, 0.237582,
		38.938416, 35.280602, 22.522829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767216, 35.090603, 21.711193>,  <38.713753, 34.638832, 22.356522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767216, 35.090603, 21.711193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996975, 35.275501, 21.981422>,  <39.134830, 35.386440, 22.143560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996975, 35.275501, 21.981422>,  <38.767216, 35.090603, 21.711193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996975, 35.275501, 21.981422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700354, 0.149727, -0.697915,
		-0.423760, 0.874019, -0.237734,
		0.574396, 0.462247, 0.675571,
		39.169292, 35.414177, 22.184093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895443, 35.725151, 21.309080>,  <38.767216, 35.090603, 21.711193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895443, 35.725151, 21.309080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.178432, 35.705074, 21.591064>,  <39.348225, 35.693027, 21.760254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.178432, 35.705074, 21.591064>,  <38.895443, 35.725151, 21.309080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178432, 35.705074, 21.591064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699966, 0.187577, -0.689102,
		-0.097644, 0.980967, 0.167840,
		0.707469, -0.050196, 0.704959,
		39.390675, 35.690014, 21.802553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515995, 36.212864, 21.086040>,  <38.895443, 35.725151, 21.309080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515995, 36.212864, 21.086040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.661888, 35.936836, 21.336088>,  <39.749424, 35.771221, 21.486116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.661888, 35.936836, 21.336088>,  <39.515995, 36.212864, 21.086040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661888, 35.936836, 21.336088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906650, 0.110339, -0.407199,
		0.212020, 0.715284, 0.665895,
		0.364737, -0.690068, 0.625118,
		39.771309, 35.729816, 21.523624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142597, 36.489063, 21.349646>,  <39.515995, 36.212864, 21.086040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142597, 36.489063, 21.349646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196663, 36.102352, 21.436430>,  <40.229103, 35.870327, 21.488501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196663, 36.102352, 21.436430>,  <40.142597, 36.489063, 21.349646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196663, 36.102352, 21.436430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854574, 0.002935, -0.519321,
		0.501431, 0.255602, 0.826580,
		0.135166, -0.966778, 0.216959,
		40.237213, 35.812321, 21.501518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841480, 36.293266, 21.384359>,  <40.142597, 36.489063, 21.349646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841480, 36.293266, 21.384359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.695740, 35.924522, 21.331564>,  <40.608295, 35.703278, 21.299887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.695740, 35.924522, 21.331564>,  <40.841480, 36.293266, 21.384359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695740, 35.924522, 21.331564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791413, -0.231814, -0.565622,
		0.490827, -0.310543, 0.814034,
		-0.364355, -0.921860, -0.131987,
		40.586433, 35.647964, 21.291967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364418, 35.810383, 21.543755>,  <40.841480, 36.293266, 21.384359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364418, 35.810383, 21.543755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.127361, 35.588287, 21.310352>,  <40.985126, 35.455029, 21.170311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.127361, 35.588287, 21.310352>,  <41.364418, 35.810383, 21.543755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127361, 35.588287, 21.310352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776379, -0.200873, -0.597399,
		0.214492, -0.807066, 0.550125,
		-0.592646, -0.555243, -0.583503,
		40.949566, 35.421715, 21.135302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611526, 35.092121, 21.916735>,  <41.364418, 35.810383, 21.543755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611526, 35.092121, 21.916735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.973213, 34.963646, 22.029333>,  <42.190224, 34.886562, 22.096891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.973213, 34.963646, 22.029333>,  <41.611526, 35.092121, 21.916735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973213, 34.963646, 22.029333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185495, 0.298348, 0.936259,
		-0.384695, -0.898793, 0.210192,
		0.904213, -0.321184, 0.281495,
		42.244476, 34.867290, 22.113781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323181, 34.748215, 22.485558>,  <41.611526, 35.092121, 21.916735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323181, 34.748215, 22.485558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.717941, 34.787193, 22.536993>,  <41.954796, 34.810581, 22.567854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.717941, 34.787193, 22.536993>,  <41.323181, 34.748215, 22.485558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717941, 34.787193, 22.536993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129790, 0.006087, 0.991523,
		0.095838, -0.995222, 0.018655,
		0.986899, 0.097447, 0.128587,
		42.014011, 34.816425, 22.575569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579773, 34.179169, 22.956787>,  <41.323181, 34.748215, 22.485558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579773, 34.179169, 22.956787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.804100, 34.509903, 22.973848>,  <41.938698, 34.708344, 22.984085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.804100, 34.509903, 22.973848>,  <41.579773, 34.179169, 22.956787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804100, 34.509903, 22.973848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111501, 0.024381, 0.993465,
		0.820394, -0.561912, 0.105867,
		0.560821, 0.826838, 0.042652,
		41.972347, 34.757954, 22.986645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986748, 34.036346, 23.545725>,  <41.579773, 34.179169, 22.956787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986748, 34.036346, 23.545725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.068161, 34.421890, 23.476961>,  <42.117008, 34.653217, 23.435703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.068161, 34.421890, 23.476961>,  <41.986748, 34.036346, 23.545725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068161, 34.421890, 23.476961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293233, 0.227539, 0.928569,
		0.934124, -0.138588, 0.328947,
		0.203536, 0.963857, -0.171911,
		42.129223, 34.711048, 23.425388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503380, 34.366150, 24.065863>,  <41.986748, 34.036346, 23.545725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503380, 34.366150, 24.065863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.282406, 34.663429, 23.914883>,  <42.149822, 34.841797, 23.824295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.282406, 34.663429, 23.914883>,  <42.503380, 34.366150, 24.065863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282406, 34.663429, 23.914883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187563, 0.330374, 0.925026,
		0.812177, 0.581815, -0.043115,
		-0.552438, 0.743199, -0.377449,
		42.116673, 34.886391, 23.801647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
