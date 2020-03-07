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
	<4.424294, 0.342130, -1.456944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451231, 0.677605, -1.240770>,  <4.467393, 0.878890, -1.111066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451231, 0.677605, -1.240770>,  <4.424294, 0.342130, -1.456944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.451231, 0.677605, -1.240770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819360, -0.262589, 0.509604,
		0.569310, -0.477128, 0.669503,
		0.067342, 0.838687, 0.540434,
		4.471434, 0.929211, -1.078640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.306715, 0.243311, -0.735577>,  <4.424294, 0.342130, -1.456944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.306715, 0.243311, -0.735577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.239752, 0.635136, -0.780182>,  <4.199574, 0.870230, -0.806945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.239752, 0.635136, -0.780182>,  <4.306715, 0.243311, -0.735577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.239752, 0.635136, -0.780182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737457, -0.049353, 0.673589,
		0.654318, 0.195000, 0.730646,
		-0.167409, 0.979561, -0.111512,
		4.189529, 0.929004, -0.813635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.154891, 0.499205, -0.058407>,  <4.306715, 0.243311, -0.735577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.154891, 0.499205, -0.058407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.002057, 0.774372, -0.305237>,  <3.910357, 0.939472, -0.453335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.002057, 0.774372, -0.305237>,  <4.154891, 0.499205, -0.058407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.002057, 0.774372, -0.305237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525991, 0.387138, 0.757270,
		0.759832, 0.613917, 0.213919,
		-0.382085, 0.687917, -0.617074,
		3.887432, 0.980747, -0.490359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.365146, 1.123892, 0.312778>,  <4.154891, 0.499205, -0.058407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.365146, 1.123892, 0.312778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.026584, 1.157421, 0.102417>,  <3.823447, 1.177539, -0.023799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.026584, 1.157421, 0.102417>,  <4.365146, 1.123892, 0.312778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.026584, 1.157421, 0.102417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511081, 0.149650, 0.846405,
		0.149650, 0.985180, -0.083824,
		-0.846405, 0.083824, -0.525902,
		3.772662, 1.182568, -0.055354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.049467, 1.770891, 0.491151>,  <4.365146, 1.123892, 0.312778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.049467, 1.770891, 0.491151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.770401, 1.521591, 0.349831>,  <3.602961, 1.372011, 0.265038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.770401, 1.521591, 0.349831>,  <4.049467, 1.770891, 0.491151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.770401, 1.521591, 0.349831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623108, 0.284511, 0.728553,
		-0.353553, 0.728431, -0.586846,
		-0.697665, -0.623250, -0.353302,
		3.561101, 1.334616, 0.243840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.352550, 2.146372, 0.619610>,  <4.049467, 1.770891, 0.491151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.352550, 2.146372, 0.619610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.274413, 1.759117, 0.556932>,  <3.227531, 1.526764, 0.519326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.274413, 1.759117, 0.556932>,  <3.352550, 2.146372, 0.619610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.274413, 1.759117, 0.556932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779798, 0.056429, 0.623482,
		-0.594774, 0.243981, -0.765975,
		-0.195341, -0.968137, -0.156693,
		3.215811, 1.468676, 0.509925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.666851, 2.102099, 0.567775>,  <3.352550, 2.146372, 0.619610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.666851, 2.102099, 0.567775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811260, 1.744469, 0.673824>,  <2.897906, 1.529890, 0.737454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811260, 1.744469, 0.673824>,  <2.666851, 2.102099, 0.567775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.811260, 1.744469, 0.673824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655213, -0.040884, 0.754337,
		-0.663596, -0.446045, -0.600570,
		0.361022, -0.894076, 0.265124,
		2.919567, 1.476246, 0.753361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.114106, 1.469967, 0.612031>,  <2.666851, 2.102099, 0.567775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.114106, 1.469967, 0.612031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.424772, 1.433998, 0.861416>,  <2.611172, 1.412417, 1.011047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.424772, 1.433998, 0.861416>,  <2.114106, 1.469967, 0.612031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.424772, 1.433998, 0.861416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629825, -0.094207, 0.771003,
		-0.010595, -0.991483, -0.129802,
		0.776665, -0.089922, 0.623462,
		2.657772, 1.407022, 1.048455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.552860, 1.287844, 2.481994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.904659, 1.148216, 2.611382>,  <2.115739, 1.064440, 2.689014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.904659, 1.148216, 2.611382>,  <1.552860, 1.287844, 2.481994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.904659, 1.148216, 2.611382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410334, 0.211947, -0.886964,
		0.241054, 0.912814, 0.329642,
		0.879499, -0.349070, 0.323468,
		2.168509, 1.043495, 2.708422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.046512, 1.777304, 2.245276>,  <1.552860, 1.287844, 2.481994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.046512, 1.777304, 2.245276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.219227, 1.422195, 2.309052>,  <2.322856, 1.209130, 2.347317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.219227, 1.422195, 2.309052>,  <2.046512, 1.777304, 2.245276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.219227, 1.422195, 2.309052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301203, -0.024699, -0.953240,
		0.850198, 0.459620, 0.256735,
		0.431787, -0.887772, 0.159438,
		2.348763, 1.155864, 2.356883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.688768, 1.808807, 2.001532>,  <2.046512, 1.777304, 2.245276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.688768, 1.808807, 2.001532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624550, 1.414085, 2.009943>,  <2.586019, 1.177252, 2.014990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624550, 1.414085, 2.009943>,  <2.688768, 1.808807, 2.001532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624550, 1.414085, 2.009943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356476, -0.077836, -0.931057,
		0.920407, -0.141982, 0.364268,
		-0.160547, -0.986804, 0.021027,
		2.576386, 1.118044, 2.016251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.313055, 1.555119, 1.692867>,  <2.688768, 1.808807, 2.001532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.313055, 1.555119, 1.692867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.010689, 1.298683, 1.639805>,  <2.829269, 1.144822, 1.607968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.010689, 1.298683, 1.639805>,  <3.313055, 1.555119, 1.692867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.010689, 1.298683, 1.639805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332035, -0.200798, -0.921647,
		0.564221, -0.740733, 0.364650,
		-0.755915, -0.641089, -0.132655,
		2.783914, 1.106357, 1.600008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.622178, 0.989704, 1.440516>,  <3.313055, 1.555119, 1.692867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.622178, 0.989704, 1.440516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.234524, 0.992233, 1.341936>,  <3.001931, 0.993751, 1.282788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.234524, 0.992233, 1.341936>,  <3.622178, 0.989704, 1.440516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.234524, 0.992233, 1.341936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246145, -0.031124, -0.968733,
		-0.013786, -0.999495, 0.028609,
		-0.969135, 0.006313, -0.246450,
		2.943783, 0.994130, 1.268001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.425130, 0.410383, 0.990485>,  <3.622178, 0.989704, 1.440516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.425130, 0.410383, 0.990485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.166557, 0.701073, 0.897535>,  <3.011414, 0.875486, 0.841765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.166557, 0.701073, 0.897535>,  <3.425130, 0.410383, 0.990485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.166557, 0.701073, 0.897535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282163, -0.055267, -0.957773,
		-0.708879, -0.684703, -0.169328,
		-0.646432, 0.726724, -0.232375,
		2.972628, 0.919090, 0.827823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.989349, 0.166100, 0.496452>,  <3.425130, 0.410383, 0.990485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.989349, 0.166100, 0.496452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.037140, 0.560219, 0.447599>,  <3.065814, 0.796690, 0.418288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.037140, 0.560219, 0.447599>,  <2.989349, 0.166100, 0.496452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.037140, 0.560219, 0.447599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221119, -0.146331, -0.964206,
		-0.967900, 0.088194, -0.235351,
		0.119477, 0.985296, -0.122132,
		3.072983, 0.855808, 0.410960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.556842, 0.497959, -0.081979>,  <2.989349, 0.166100, 0.496452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.556842, 0.497959, -0.081979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.876068, 0.726036, -0.004034>,  <3.067604, 0.862882, 0.042733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.876068, 0.726036, -0.004034>,  <2.556842, 0.497959, -0.081979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.876068, 0.726036, -0.004034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379568, -0.224541, -0.897502,
		-0.467995, 0.790229, -0.395625,
		0.798066, 0.570193, 0.194862,
		3.115488, 0.897094, 0.054424>
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
